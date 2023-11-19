/*
 * Created by He, Hao at 2019-3-11
 */

/*
yyx comment:
on my ubuntu, little-endian
*/
#include <cstring>
#include <fstream>
#include <sstream>
#include <string>
#include <math.h>

#include "Debug.h"
#include "Simulator.h"

namespace RISCV {

const char *REGNAME[32] = {
    "zero", // x0
    "ra",   // x1
    "sp",   // x2
    "gp",   // x3
    "tp",   // x4
    "t0",   // x5
    "t1",   // x6
    "t2",   // x7
    "s0",   // x8
    "s1",   // x9
    "a0",   // x10
    "a1",   // x11
    "a2",   // x12
    "a3",   // x13
    "a4",   // x14
    "a5",   // x15
    "a6",   // x16
    "a7",   // x17
    "s2",   // x18
    "s3",   // x19
    "s4",   // x20
    "s5",   // x21
    "s6",   // x22
    "s7",   // x23
    "s8",   // x24
    "s9",   // x25
    "s10",  // x26
    "s11",  // x27
    "t3",   // x28
    "t4",   // x29
    "t5",   // x30
    "t6",   // x31
};

// yyx below
const char *FLOATREGNAME[32] = {
    "ft0",    // x0
    "ft1",    // x1
    "ft2",    // x2
    "ft3",    // x3
    "ft4",    // x4
    "ft5",    // x5
    "ft6",    // x6
    "ft7",    // x7
    "fs0",    // x8
    "fs1",    // x9
    "fa0",    // x10
    "fa1",    // x11
    "fa2",    // x12
    "fa3",    // x13
    "fa4",    // x14
    "fa5",    // x15
    "fa6",    // x16
    "fa7",    // x17
    "fs2",    // x18
    "fs3",    // x19
    "fs4",    // x20
    "fs5",    // x21
    "fs6",    // x22
    "fs7",    // x23
    "fs8",    // x24
    "fs9",    // x25
    "fs10",   // x26
    "fs11",   // x27
    "ft8",    // x28
    "ft9",    // x29
    "ft10",   // x30
    "ft11",   // x31
};
// yyx above 

const char *INSTNAME[]{
    "lui",    "auipc",  "jal",      "jalr",     "beq",    "bne",  "blt",  "bge",  "bltu",
    "bgeu",   "lb",     "lh",       "lw",       "ld",     "lbu",  "lhu",  "sb",   "sh",
    "sw",     "sd",     "addi",     "slti",     "sltiu",  "xori", "ori",  "andi", "slli",
    "srli",   "srai",   "add",      "sub",      "sll",    "slt",  "sltu", "xor",  "srl",
    "sra",    "or",     "and",      "ecall",    "addiw",  "mul",  "mulh", "div",  "rem",
    "lwu",    "slliw",  "srliw",    "sraiw",    "addw",   "subw", "sllw", "srlw", "sraw",
    // yyx below
    "fmv.w.x","fmv.x.w","fcvt.s.w", "fcvt.w.s", "flw",    "fsw",  "fadd.s", 
    "fsub.s", "fmul.s", "fdiv.s",   "fsqrt.s",
    // yyx above
};

} // namespace RISCV

using namespace RISCV;

Simulator::Simulator(MemoryManager *memory, BranchPredictor *predictor) {
  this->memory = memory;
  this->branchPredictor = predictor;
  this->pc = 0;
  for (int i = 0; i < REGNUM; ++i) {
    this->reg[i] = 0;
    // yyx below 
    this->floatreg[i] = 0;
    // yyx above 
  }
}

Simulator::~Simulator() {}

void Simulator::initStack(uint32_t baseaddr, uint32_t maxSize) {
  this->reg[REG_SP] = baseaddr;
  this->stackBase = baseaddr;
  this->maximumStackSize = maxSize;
  for (uint32_t addr = baseaddr; addr > baseaddr - maxSize; addr--) {
    if (!this->memory->isPageExist(addr)) {
      this->memory->addPage(addr);
    }
    this->memory->setByte(addr, 0);
  }
}

void Simulator::simulate() {
  // Initialize pipeline registers
  memset(&this->fReg, 0, sizeof(this->fReg));
  memset(&this->fRegNew, 0, sizeof(this->fRegNew));
  memset(&this->dReg, 0, sizeof(this->dReg));
  memset(&this->dRegNew, 0, sizeof(this->dReg));
  #ifdef SCOREBOARD_YYX
  // progress registers
  memset(&this->iReg, 0, sizeof(this->iReg));
  memset(&this->iRegNew, 0, sizeof(this->iReg));  
  memset(&this->rReg, 0, sizeof(this->rReg));
  memset(&this->rRegNew, 0, sizeof(this->rReg));  
  #endif
  memset(&this->eReg, 0, sizeof(this->eReg));
  memset(&this->eRegNew, 0, sizeof(this->eRegNew));
  memset(&this->mReg, 0, sizeof(this->mReg));
  memset(&this->mRegNew, 0, sizeof(this->mRegNew));

  #ifdef SCOREBOARD_YYX
  memset(&this->busyFU, 0, sizeof(this->busyFU));
  memset(&this->OpFU, NONE, sizeof(this->OpFU));
  memset(&this->FiFU, NONE, sizeof(this->FiFU));
  memset(&this->FjFU, NONE, sizeof(this->FjFU));
  memset(&this->FkFU, NONE, sizeof(this->FkFU));
  memset(&this->QjFU, NONE, sizeof(this->QjFU));
  memset(&this->QkFU, NONE, sizeof(this->QkFU));
  memset(&this->RjFU, 0, sizeof(this->RjFU));
  memset(&this->RkFU, 0, sizeof(this->RkFU));
  memset(&this->eRegFU, NULL, sizeof(this->eRegFU));
  memset(&this->exeLeftTime, 0, sizeof(this->exeLeftTime));

  memset(&this->regFU, NONE, sizeof(this->regFU));
  #endif


  // Insert Bubble to later pipeline stages
  #ifdef SCOREBOARD_YYX
  fReg.bubble = true;
  iReg.bubble = true;
  rReg.bubble = true;
  // eReg.bubble = true;   
  #else
  fReg.bubble = true;
  dReg.bubble = true;
  eReg.bubble = true;
  mReg.bubble = true;  
  #endif

  // Main Simulation Loop
  while (true) {
    if (this->reg[0] != 0) {
      // Some instruction might set this register to zero
      this->reg[0] = 0;
      // this->panic("Register 0's value is not zero!\n");
    }

    if (this->reg[REG_SP] < this->stackBase - this->maximumStackSize) {
      this->panic("Stack Overflow!\n");
    }

    this->executeWriteBack = false;
    this->executeWBReg = -1;
    this->memoryWriteBack = false;
    this->memoryWBReg = -1;
    #ifdef ALL_STALL_YYX
    this->ifHazardBefore = false;
    this->ifExeAddComponentLatency = false;
    #endif
    #ifdef SCOREBOARD_YYX
    this->ifStructureHazardBefore = false;
    this->ifWAWHazardBefore = false;
    #endif
    // THE EXECUTION ORDER of these functions are important!!!
    // Changing them will introduce strange bugs
    this->fetch();
    #ifdef SCOREBOARD_YYX
    this->issue();
    this->readOperand();
    this->excecute();
    #else
    this->decode();
    this->excecute();
    this->memoryAccess();
    #endif
    this->writeBack();

    // yyx below
    // printf("this->dReg.stall?:%u\n",this->dReg.stall);
    // printf("this->dRegNew.stall?:%u\n",this->dRegNew.stall);
    // if (this->fReg.stall) printf("this->fReg.stall:%u\n", this->fReg.stall);
    // if (this->dReg.stall) printf("this->dReg.stall:%u\n", this->dReg.stall);    
    // if (this->fRegNew.stall) printf("this->fRegNew.stall:%u\n", this->fRegNew.stall);
    // if (this->dRegNew.stall) printf("this->dRegNew.stall:%u\n", this->dRegNew.stall);    
    // yyx above
    if (!this->fReg.stall) this->fReg = this->fRegNew;
    else this->fReg.stall--;
  #ifdef SCOREBOARD_YYX
    if (!this->iReg.stall) this->iReg = this->iRegNew;
    else this->iReg.stall--;
    if (this->rReg.stall) {
      panic("exe should not stall");
    }
    this->rReg = this->rRegNew;
  #else
    if (!this->dReg.stall) this->dReg = this->dRegNew;
    else this->dReg.stall--;
  #endif

    // yyx below
    // printf("after swap\n");
    // printf("this->dReg.stall?:%u\n",this->dReg.stall);
    // printf("this->dRegNew.stall?:%u\n",this->dRegNew.stall);
    // yyx above    
    this->eReg = this->eRegNew;
    this->mReg = this->mRegNew; // in scoreboard actually not used
    memset(&this->fRegNew, 0, sizeof(this->fRegNew));
    memset(&this->dRegNew, 0, sizeof(this->dRegNew));
    memset(&this->eRegNew, 0, sizeof(this->eRegNew));
    memset(&this->mRegNew, 0, sizeof(this->mRegNew));
  #ifdef SCOREBOARD_YYX
    memset(&this->iRegNew, 0, sizeof(this->iRegNew));
    memset(&this->rRegNew, 0, sizeof(this->rRegNew));
  #endif

    // The Branch perdiction happens here to avoid strange bugs in branch prediction
    if (!this->dReg.bubble && !this->dReg.stall && !this->fReg.stall && this->dReg.predictedBranch) {
      this->pc = this->predictedPC;
    }

    this->history.cycleCount++;
    this->history.regRecord.push_back(this->getRegInfoStr());
    if (this->history.regRecord.size() >= 100000) { // Avoid using up memory
      this->history.regRecord.clear();
      this->history.instRecord.clear();
    }

    if (verbose) {
      this->printInfo();
    }

    if (this->isSingleStep) {
      printf("Type d to dump memory in dump.txt, press ENTER to continue: ");
      char ch;
      while ((ch = getchar()) != '\n') {
        if (ch == 'd') {
          this->dumpHistory();
        }
      }
    }
  }
}

void Simulator::fetch() {
  if (this->pc % 2 != 0) {
    this->panic("Illegal PC 0x%x!\n", this->pc);
  }

  uint32_t inst = this->memory->getInt(this->pc);
  uint32_t len = 4;

  if (this->verbose) {
    printf("Fetched instruction 0x%.8x at address 0x%lx\n", inst, this->pc);
  }

  this->fRegNew.bubble = false;
  this->fRegNew.stall = false;
  this->fRegNew.inst = inst;
  this->fRegNew.len = len;
  this->fRegNew.pc = this->pc;
  this->pc = this->pc + len;
}

/*
yyxc:
first deal with the process as 32bit instructions and get the 32 bit
valuable, and transform it into 64 bit valueble at last
*/

void Simulator::decode() {
  if (this->fReg.stall) {
    if (verbose) {
      printf("Decode: Stall\n");
    }
    this->pc = this->pc - 4;
    #ifdef ALL_STALL_YYX
    this->dRegNew.bubble = true;
    #endif
    // yyx above
    return;
  }
  if (this->fReg.bubble || this->fReg.inst == 0) {
    if (verbose) {
      printf("Decode: Bubble\n");
    }
    this->dRegNew.bubble = true;
    return;
  }

  std::string instname = "";
  std::string inststr = "";
  std::string deststr, op1str, op2str, offsetstr;
  Inst insttype = Inst::UNKNOWN;
  uint32_t inst = this->fReg.inst;
  int64_t op1 = 0, op2 = 0, offset = 0; // op1, op2 and offset are values
  RegId dest = 0, reg1 = -1, reg2 = -1; // reg1 and reg2 are operands
  // yyx below : float
  std::string floatop1str, floatop2str;
  double floatop1 = 0, floatop2 = 0;
  // yyx above

  // Reg for 32bit instructions
  if (this->fReg.len == 4) // 32 bit instruction
  {
    uint32_t opcode = inst & 0x7F;
    uint32_t funct3 = (inst >> 12) & 0x7;
    uint32_t funct7 = (inst >> 25) & 0x7F;
    RegId rd = (inst >> 7) & 0x1F;
    RegId rs1 = (inst >> 15) & 0x1F;
    RegId rs2 = (inst >> 20) & 0x1F;
    int32_t imm_i = int32_t(inst) >> 20;
    int32_t imm_s =
        int32_t(((inst >> 7) & 0x1F) | ((inst >> 20) & 0xFE0)) << 20 >> 20;
    int32_t imm_sb = int32_t(((inst >> 7) & 0x1E) | ((inst >> 20) & 0x7E0) |
                             ((inst << 4) & 0x800) | ((inst >> 19) & 0x1000))
                         << 19 >>
                     19;
    int32_t imm_u = int32_t(inst) >> 12;
    int32_t imm_uj = int32_t(((inst >> 21) & 0x3FF) | ((inst >> 10) & 0x400) |
                             ((inst >> 1) & 0x7F800) | ((inst >> 12) & 0x80000))
                         << 12 >>
                     11;
    // yyx below : float
    uint32_t rm = funct3; //TODO?? not sure, to see opt = -1 deal
    // yyx above
    switch (opcode) {
    case OP_REG:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      dest = rd;
      switch (funct3) {
      case 0x0: // add, mul, sub
        if (funct7 == 0x00) {
          instname = "add";
          insttype = ADD;
        } else if (funct7 == 0x01) {
          instname = "mul";
          insttype = MUL;
        } else if (funct7 == 0x20) {
          instname = "sub";
          insttype = SUB;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x1: // sll, mulh
        if (funct7 == 0x00) {
          instname = "sll";
          insttype = SLL;
        } else if (funct7 == 0x01) {
          instname = "mulh";
          insttype = MULH;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x2: // slt
        if (funct7 == 0x00) {
          instname = "slt";
          insttype = SLT;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x3: // sltu
        if (funct7 == 0x00)
        {
          instname = "sltu";
          insttype = SLTU;
        }
        else
        {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x4: // xor div
        if (funct7 == 0x00) {
          instname = "xor";
          insttype = XOR;
        } else if (funct7 == 0x01) {
          instname = "div";
          insttype = DIV;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x5: // srl, sra
        if (funct7 == 0x00) {
          instname = "srl";
          insttype = SRL;
        } else if (funct7 == 0x20) {
          instname = "sra";
          insttype = SRA;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x6: // or, rem
        if (funct7 == 0x00) {
          instname = "or";
          insttype = OR;
        } else if (funct7 == 0x01) {
          instname = "rem";
          insttype = REM;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x7: // and
        if (funct7 == 0x00) {
          instname = "and";
          insttype = AND;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      default:
        this->panic("Unknown Funct3 field %x\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_IMM:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "addi";
        insttype = ADDI;
        break;
      case 0x2:
        instname = "slti";
        insttype = SLTI;
        break;
      case 0x3:
        instname = "sltiu";
        insttype = SLTIU;
        break;
      case 0x4:
        instname = "xori";
        insttype = XORI;
        break;
      case 0x6:
        instname = "ori";
        insttype = ORI;
        break;
      case 0x7:
        instname = "andi";
        insttype = ANDI;
        break;
      case 0x1:
        instname = "slli";
        insttype = SLLI;
        op2 = op2 & 0x3F;
        break;
      case 0x5:
        if (((inst >> 26) & 0x3F) == 0x0) {
          instname = "srli";
          insttype = SRLI;
          op2 = op2 & 0x3F;
        } else if (((inst >> 26) & 0x3F) == 0x10) {
          instname = "srai";
          insttype = SRAI;
          op2 = op2 & 0x3F;
        } else {
          this->panic("Unknown funct7 0x%x for OP_IMM\n", (inst >> 26) & 0x3F);
        }
        break;
      default:
        this->panic("Unknown Funct3 field %x\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_LUI:
      op1 = imm_u;
      op2 = 0;
      offset = imm_u;
      dest = rd;
      instname = "lui";
      insttype = LUI;
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_AUIPC:
      op1 = imm_u;
      op2 = 0;
      offset = imm_u;
      dest = rd;
      instname = "auipc";
      insttype = AUIPC;
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JAL:
      op1 = imm_uj;
      op2 = 0;
      offset = imm_uj;
      dest = rd;
      instname = "jal";
      insttype = JAL;
      op1str = std::to_string(imm_uj);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JALR:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      instname = "jalr";
      insttype = JALR;
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_BRANCH:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_sb;
      switch (funct3) {
      case 0x0:
        instname = "beq";
        insttype = BEQ;
        break;
      case 0x1:
        instname = "bne";
        insttype = BNE;
        break;
      case 0x4:
        instname = "blt";
        insttype = BLT;
        break;
      case 0x5:
        instname = "bge";
        insttype = BGE;
        break;
      case 0x6:
        instname = "bltu";
        insttype = BLTU;
        break;
      case 0x7:
        instname = "bgeu";
        insttype = BGEU;
        break;
      default:
        this->panic("Unknown funct3 0x%x at OP_BRANCH\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op1str + "," + op2str + "," + offsetstr;
      break;
    case OP_STORE:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_s;
      switch (funct3) {
      case 0x0:
        instname = "sb";
        insttype = SB;
        break;
      case 0x1:
        instname = "sh";
        insttype = SH;
        break;
      case 0x2:
        instname = "sw";
        insttype = SW;
        break;
      case 0x3:
        instname = "sd";
        insttype = SD;
        break;
      default:
        this->panic("Unknown funct3 0x%x for OP_STORE\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op2str + "," + offsetstr + "(" + op1str + ")";
      break;
    case OP_LOAD:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      offset = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "lb";
        insttype = LB;
        break;
      case 0x1:
        instname = "lh";
        insttype = LH;
        break;
      case 0x2:
        instname = "lw";
        insttype = LW;
        break;
      case 0x3:
        instname = "ld";
        insttype = LD;
        break;
      case 0x4:
        instname = "lbu";
        insttype = LBU;
        break;
      case 0x5:
        instname = "lhu";
        insttype = LHU;
        break;
      case 0x6:
        instname = "lwu";
        insttype = LWU;
      default:
        this->panic("Unknown funct3 0x%x for OP_LOAD\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op2str + "(" + op1str + ")";
      break;
    case OP_SYSTEM:
      if (funct3 == 0x0 && funct7 == 0x000) {
        instname = "ecall";
        op1 = this->reg[REG_A0];
        op2 = this->reg[REG_A7];
        reg1 = REG_A0;
        reg2 = REG_A7;
        dest = REG_A0;
        insttype = ECALL;
      } else {
        this->panic("Unknown OP_SYSTEM inst with funct3 0x%x and funct7 0x%x\n",
                    funct3, funct7);
      }
      inststr = instname;
      break;
    case OP_IMM32:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "addiw";
        insttype = ADDIW;
        break;
      case 0x1:
        instname = "slliw";
        insttype = SLLIW;
        break;
      case 0x5:
        if (((inst >> 25) & 0x7F) == 0x0) {
          instname = "srliw";
          insttype = SRLIW;
        } else if (((inst >> 25) & 0x7F) == 0x20) {
          instname = "sraiw";
          insttype = SRAIW;
        } else {
          this->panic("Unknown shift inst type 0x%x\n", ((inst >> 25) & 0x7F));
        }
        break;
      default:
        this->panic("Unknown funct3 0x%x for OP_ADDIW\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_32: {
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      dest = rd;

      uint32_t temp = (inst >> 25) & 0x7F; // 32bit funct7 field
      switch (funct3) {
      case 0x0:
        if (temp == 0x0) {
          instname = "addw";
          insttype = ADDW;
        } else if (temp == 0x20) {
          instname = "subw";
          insttype = SUBW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      case 0x1:
        if (temp == 0x0) {
          instname = "sllw";
          insttype = SLLW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      case 0x5:
        if (temp == 0x0) {
          instname = "srlw";
          insttype = SRLW;
        } else if (temp == 0x20) {
          instname = "sraw";
          insttype = SRAW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      default:
        this->panic("Unknown 32bit funct3 0x%x, inst:%p\n", funct3, inst);
      }
    } break;
    // yyx below    
    // check:
    // 1. opcode    
    case OP_FP: {
    // rd+rs1 must have
    // 2. funct7
    // 3. reg2 and funct3 (option, need to recheck)      
      reg1 = rs1;
      dest = rd;
      // (op2,reg2,op2str) and funct3 depends on instruction
      // op1 and op2 or floatop1 floatop1 depends on instruction
      // reg2 = rs2;      
      // op2str = FLOATREGNAME[rs2];
      switch (funct7) {
      case 0b1111000: // fmv.w.x
        if (0 == rs2 && 0 == funct3){ // FMV.W.X rd(float), rs1(int) 
          op1 = this->reg[rs1];
          instname = "fmv.w.x";
          insttype = FMV_W_X;         
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }      
        break;
      case 0b1110000: // fmv.x.w
        if (0 == rs2 && 0 == funct3){ // fmv.x.w rd(x),rs1(float)  (64位int高32位保持sign)
          floatop1 = this->floatreg[rs1];
          instname = "fmv.x.w";
          insttype = FMV_X_W;         
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }      
        break;
      case 0b1101000: // fcvt.s.w
        if (0 == rs2){ // fcvt.s.w
          // fcvt.s.w rd(float), rs1(int)
          // converts a 32-bit or 64-bit signed integer, respectively, in integer register rs1 into a floatingpoint number
          op1 = this->reg[rs1];
          instname = "fcvt.s.w";
          insttype = FCVT_S_W;          
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }
        break;
       case 0b1100000: // fcvt.w.s
        if (0 == rs2){ // fcvt.w.s
          // fcvt.w.s rd(int), rs1(float)
          // converts float to signed int
          floatop1 = this->floatreg[rs1];
          instname = "fcvt.w.s";
          insttype = FCVT_W_S; 
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }
        break;
       case 0b0000000: // fadd.s
        // fadd.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];
        instname = "fadd.s";
        insttype = FADD_S; 
        break;
       case 0b0000100: // fsub.s
        // fsub.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fsub.s";
        insttype = FSUB_S; 
        break;
       case 0b0001000: // fmul.s
        // fmul.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fmul.s";
        insttype = FMUL_S; 
        break;        
       case 0b0001100: // fdiv.s
        // fdiv.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fdiv.s";
        insttype = FDIV_S; 
        break;        
       case 0b0101100: // fsqrt.s
        // fsqrt.s rd(float), rs1(float)
       if (0 == rs2){ 
          floatop1 = this->floatreg[rs1];
          instname = "fsqrt.s";
          insttype = FSQRT_S; 
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }        
        break;                
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      floatop1str = FLOATREGNAME[rs1];
      // floatop2str = FLOATREGNAME[rs2];
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + floatop1str + "," + floatop2str;     
    } break;
    case OP_LOAD_FP: {
    // FLW rd(float), imme(rs1(int)) 
    // The FLW instruction loads a single-precision floating-point value from memory into floating-point register rd. 
    // rd+rs1 must have
    // check:
    // 1. funct3      
      op1 = this->reg[rs1];
      op2 = imm_i;
      offset = imm_i;      
      reg1 = rs1;
      dest = rd;
      switch (funct3) {
      case 0b010: // FLW
        instname = "flw";
        insttype = FLW;
        break;
      default:
        this->panic("Unknown funct3 0x%x for opcode 0x%x\n", funct3, OP_LOAD_FP);
        break;
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = FLOATREGNAME[rd];
      inststr = instname + " " + deststr + "," + op2str + "(" + op1str + ")";
    } break;  
    case OP_STORE_FP: {
    // fsw rs2(float),offset(rs1(int))
    // imm[11:5]|rs2|rs1|010|imm[4:0]|01001|11
    // The fsw instruction loads a single-precision floating-point value from memory into floating-point register rd. 
    // rs2+rs1 must have
    // check:
    // 1. funct3      
      op1 = this->reg[rs1];
      floatop2 = this->floatreg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_s;      
      switch (funct3) {
      case 0b010: // fsw
        instname = "fsw";
        insttype = FSW;
        break;
      default:
        this->panic("Unknown funct3 0x%x for opcode 0x%x\n", funct3, OP_LOAD_FP);
        break;
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      op1str = REGNAME[rs1];
      op2str = FLOATREGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op2str + "," + offsetstr + "(" + op1str + ")";
    } break;  
    // yyx above    
    default:
      this->panic("Unsupported opcode 0x%x!\n", opcode);
    }

    char buf[4096];
    sprintf(buf, "0x%lx: %s\n", this->fReg.pc, inststr.c_str());
    this->history.instRecord.push_back(buf);

    if (verbose) {
      printf("issue : Decoded instruction 0x%.8x as %s\n", inst, inststr.c_str());
    }
  } else { // 16 bit instruction
    this->panic(
        "Current implementation does not support 16bit RV64C instructions!\n");
  }

  if (instname != INSTNAME[insttype]) {
    this->panic("Unmatch instname %s with insttype %d\n", instname.c_str(),
                insttype);
  }

  bool predictedBranch = false;

  #ifndef ALL_STALL_YYX
  if (isBranch(insttype)) {
    predictedBranch = this->branchPredictor->predict(this->fReg.pc, insttype,
                                                     op1, op2, offset);
    if (predictedBranch) {
      this->predictedPC = this->fReg.pc + offset;
      this->anotherPC = this->fReg.pc + 4;
      this->fRegNew.bubble = true;
    } else {
      this->anotherPC = this->fReg.pc + offset;
    }
  }
  #endif

  this->dRegNew.stall = false;
  this->dRegNew.bubble = false;
  this->dRegNew.rs1 = reg1;
  this->dRegNew.rs2 = reg2;
  this->dRegNew.pc = this->fReg.pc;
  this->dRegNew.inst = insttype;
  this->dRegNew.predictedBranch = predictedBranch;
  this->dRegNew.dest = dest;
  this->dRegNew.op1 = op1;
  this->dRegNew.op2 = op2;
  // yyx below: float
  this->dRegNew.floatop1 = floatop1;
  this->dRegNew.floatop2 = floatop2;
  // yyx above  
  this->dRegNew.offset = offset;
}

#ifdef SCOREBOARD_YYX

// issue inherited from original decode but fake read operand
void Simulator::issue() {
  if (this->fReg.stall) {
    if (verbose) {
      printf("issue: Stall\n");
    }
    this->pc = this->pc - 4;
    #ifdef ALL_STALL_YYX
    this->iRegNew.bubble = true;
    #endif
    // yyx above
    return;
  }
  if (this->fReg.bubble || this->fReg.inst == 0) {
    if (verbose) {
      printf("issue: Bubble\n");
    }
    this->iRegNew.bubble = true;
    return;
  }

  std::string instname = "";
  std::string inststr = "";
  std::string deststr, op1str, op2str, offsetstr;
  Inst insttype = Inst::UNKNOWN;
  uint32_t inst = this->fReg.inst;
  int64_t op1 = 0, op2 = 0, offset = 0; // op1, op2 and offset are values
  #ifdef SCOREBOARD_YYX
  RegId dest = NONE, reg1 = NONE, reg2 = NONE; // reg1 and reg2 are operands
  #else
  RegId dest = 0, reg1 = -1, reg2 = -1; // reg1 and reg2 are operands
  #endif
  // yyx below : float
  std::string floatop1str, floatop2str;
  double floatop1 = 0, floatop2 = 0;
  // yyx above

  // Reg for 32bit instructions
  // decode below
  if (this->fReg.len == 4) // 32 bit instruction
  {
    uint32_t opcode = inst & 0x7F;
    uint32_t funct3 = (inst >> 12) & 0x7;
    uint32_t funct7 = (inst >> 25) & 0x7F;
    RegId rd = (inst >> 7) & 0x1F;
    RegId rs1 = (inst >> 15) & 0x1F;
    RegId rs2 = (inst >> 20) & 0x1F;
    int32_t imm_i = int32_t(inst) >> 20;
    int32_t imm_s =
        int32_t(((inst >> 7) & 0x1F) | ((inst >> 20) & 0xFE0)) << 20 >> 20;
    int32_t imm_sb = int32_t(((inst >> 7) & 0x1E) | ((inst >> 20) & 0x7E0) |
                             ((inst << 4) & 0x800) | ((inst >> 19) & 0x1000))
                         << 19 >>
                     19;
    int32_t imm_u = int32_t(inst) >> 12;
    int32_t imm_uj = int32_t(((inst >> 21) & 0x3FF) | ((inst >> 10) & 0x400) |
                             ((inst >> 1) & 0x7F800) | ((inst >> 12) & 0x80000))
                         << 12 >>
                     11;
    // yyx below : float
    uint32_t rm = funct3; //TODO?? not sure, to see opt = -1 deal
    // yyx above
    switch (opcode) {
    case OP_REG:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      dest = rd;
      switch (funct3) {
      case 0x0: // add, mul, sub
        if (funct7 == 0x00) {
          instname = "add";
          insttype = ADD;
        } else if (funct7 == 0x01) {
          instname = "mul";
          insttype = MUL;
        } else if (funct7 == 0x20) {
          instname = "sub";
          insttype = SUB;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x1: // sll, mulh
        if (funct7 == 0x00) {
          instname = "sll";
          insttype = SLL;
        } else if (funct7 == 0x01) {
          instname = "mulh";
          insttype = MULH;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x2: // slt
        if (funct7 == 0x00) {
          instname = "slt";
          insttype = SLT;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x3: // sltu
        if (funct7 == 0x00)
        {
          instname = "sltu";
          insttype = SLTU;
        }
        else
        {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x4: // xor div
        if (funct7 == 0x00) {
          instname = "xor";
          insttype = XOR;
        } else if (funct7 == 0x01) {
          instname = "div";
          insttype = DIV;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x5: // srl, sra
        if (funct7 == 0x00) {
          instname = "srl";
          insttype = SRL;
        } else if (funct7 == 0x20) {
          instname = "sra";
          insttype = SRA;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x6: // or, rem
        if (funct7 == 0x00) {
          instname = "or";
          insttype = OR;
        } else if (funct7 == 0x01) {
          instname = "rem";
          insttype = REM;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      case 0x7: // and
        if (funct7 == 0x00) {
          instname = "and";
          insttype = AND;
        } else {
          this->panic("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
        }
        break;
      default:
        this->panic("Unknown Funct3 field %x\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_IMM:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "addi";
        insttype = ADDI;
        break;
      case 0x2:
        instname = "slti";
        insttype = SLTI;
        break;
      case 0x3:
        instname = "sltiu";
        insttype = SLTIU;
        break;
      case 0x4:
        instname = "xori";
        insttype = XORI;
        break;
      case 0x6:
        instname = "ori";
        insttype = ORI;
        break;
      case 0x7:
        instname = "andi";
        insttype = ANDI;
        break;
      case 0x1:
        instname = "slli";
        insttype = SLLI;
        op2 = op2 & 0x3F;
        break;
      case 0x5:
        if (((inst >> 26) & 0x3F) == 0x0) {
          instname = "srli";
          insttype = SRLI;
          op2 = op2 & 0x3F;
        } else if (((inst >> 26) & 0x3F) == 0x10) {
          instname = "srai";
          insttype = SRAI;
          op2 = op2 & 0x3F;
        } else {
          this->panic("Unknown funct7 0x%x for OP_IMM\n", (inst >> 26) & 0x3F);
        }
        break;
      default:
        this->panic("Unknown Funct3 field %x\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_LUI:
      op1 = imm_u;
      op2 = 0;
      offset = imm_u;
      dest = rd;
      instname = "lui";
      insttype = LUI;
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_AUIPC:
      op1 = imm_u;
      op2 = 0;
      offset = imm_u;
      dest = rd;
      instname = "auipc";
      insttype = AUIPC;
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JAL:
      op1 = imm_uj;
      op2 = 0;
      offset = imm_uj;
      dest = rd;
      instname = "jal";
      insttype = JAL;
      op1str = std::to_string(imm_uj);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JALR:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      instname = "jalr";
      insttype = JALR;
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_BRANCH:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_sb;
      switch (funct3) {
      case 0x0:
        instname = "beq";
        insttype = BEQ;
        break;
      case 0x1:
        instname = "bne";
        insttype = BNE;
        break;
      case 0x4:
        instname = "blt";
        insttype = BLT;
        break;
      case 0x5:
        instname = "bge";
        insttype = BGE;
        break;
      case 0x6:
        instname = "bltu";
        insttype = BLTU;
        break;
      case 0x7:
        instname = "bgeu";
        insttype = BGEU;
        break;
      default:
        this->panic("Unknown funct3 0x%x at OP_BRANCH\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op1str + "," + op2str + "," + offsetstr;
      break;
    case OP_STORE:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_s;
      switch (funct3) {
      case 0x0:
        instname = "sb";
        insttype = SB;
        break;
      case 0x1:
        instname = "sh";
        insttype = SH;
        break;
      case 0x2:
        instname = "sw";
        insttype = SW;
        break;
      case 0x3:
        instname = "sd";
        insttype = SD;
        break;
      default:
        this->panic("Unknown funct3 0x%x for OP_STORE\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op2str + "," + offsetstr + "(" + op1str + ")";
      break;
    case OP_LOAD:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      offset = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "lb";
        insttype = LB;
        break;
      case 0x1:
        instname = "lh";
        insttype = LH;
        break;
      case 0x2:
        instname = "lw";
        insttype = LW;
        break;
      case 0x3:
        instname = "ld";
        insttype = LD;
        break;
      case 0x4:
        instname = "lbu";
        insttype = LBU;
        break;
      case 0x5:
        instname = "lhu";
        insttype = LHU;
        break;
      case 0x6:
        instname = "lwu";
        insttype = LWU;
      default:
        this->panic("Unknown funct3 0x%x for OP_LOAD\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op2str + "(" + op1str + ")";
      break;
    case OP_SYSTEM:
      if (funct3 == 0x0 && funct7 == 0x000) {
        instname = "ecall";
        op1 = this->reg[REG_A0];
        op2 = this->reg[REG_A7];
        reg1 = REG_A0;
        reg2 = REG_A7;
        dest = REG_A0;
        insttype = ECALL;
      } else {
        this->panic("Unknown OP_SYSTEM inst with funct3 0x%x and funct7 0x%x\n",
                    funct3, funct7);
      }
      inststr = instname;
      break;
    case OP_IMM32:
      op1 = this->reg[rs1];
      reg1 = rs1;
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "addiw";
        insttype = ADDIW;
        break;
      case 0x1:
        instname = "slliw";
        insttype = SLLIW;
        break;
      case 0x5:
        if (((inst >> 25) & 0x7F) == 0x0) {
          instname = "srliw";
          insttype = SRLIW;
        } else if (((inst >> 25) & 0x7F) == 0x20) {
          instname = "sraiw";
          insttype = SRAIW;
        } else {
          this->panic("Unknown shift inst type 0x%x\n", ((inst >> 25) & 0x7F));
        }
        break;
      default:
        this->panic("Unknown funct3 0x%x for OP_ADDIW\n", funct3);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_32: {
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      dest = rd;

      uint32_t temp = (inst >> 25) & 0x7F; // 32bit funct7 field
      switch (funct3) {
      case 0x0:
        if (temp == 0x0) {
          instname = "addw";
          insttype = ADDW;
        } else if (temp == 0x20) {
          instname = "subw";
          insttype = SUBW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      case 0x1:
        if (temp == 0x0) {
          instname = "sllw";
          insttype = SLLW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      case 0x5:
        if (temp == 0x0) {
          instname = "srlw";
          insttype = SRLW;
        } else if (temp == 0x20) {
          instname = "sraw";
          insttype = SRAW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x, inst:%p\n", temp, inst);
        }
        break;
      default:
        this->panic("Unknown 32bit funct3 0x%x, inst:%p\n", funct3, inst);
      }
    } break;
    // yyx below    
    // check:
    // 1. opcode    
    case OP_FP: {
    // rd+rs1 must have
    // 2. funct7
    // 3. reg2 and funct3 (option, need to recheck)      
      reg1 = rs1;
      dest = rd;
      // (op2,reg2,op2str) and funct3 depends on instruction
      // op1 and op2 or floatop1 floatop1 depends on instruction
      // reg2 = rs2;      
      // op2str = FLOATREGNAME[rs2];
      switch (funct7) {
      case 0b1111000: // fmv.w.x
        if (0 == rs2 && 0 == funct3){ // FMV.W.X rd(float), rs1(int) 
          op1 = this->reg[rs1];
          instname = "fmv.w.x";
          insttype = FMV_W_X;         
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }      
        break;
      case 0b1110000: // fmv.x.w
        if (0 == rs2 && 0 == funct3){ // fmv.x.w rd(x),rs1(float)  (64位int高32位保持sign)
          floatop1 = this->floatreg[rs1];
          instname = "fmv.x.w";
          insttype = FMV_X_W;         
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }      
        break;
      case 0b1101000: // fcvt.s.w
        if (0 == rs2){ // fcvt.s.w
          // fcvt.s.w rd(float), rs1(int)
          // converts a 32-bit or 64-bit signed integer, respectively, in integer register rs1 into a floatingpoint number
          op1 = this->reg[rs1];
          instname = "fcvt.s.w";
          insttype = FCVT_S_W;          
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }
        break;
       case 0b1100000: // fcvt.w.s
        if (0 == rs2){ // fcvt.w.s
          // fcvt.w.s rd(int), rs1(float)
          // converts float to signed int
          floatop1 = this->floatreg[rs1];
          instname = "fcvt.w.s";
          insttype = FCVT_W_S; 
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }
        break;
       case 0b0000000: // fadd.s
        // fadd.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];
        instname = "fadd.s";
        insttype = FADD_S; 
        break;
       case 0b0000100: // fsub.s
        // fsub.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fsub.s";
        insttype = FSUB_S; 
        break;
       case 0b0001000: // fmul.s
        // fmul.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fmul.s";
        insttype = FMUL_S; 
        break;        
       case 0b0001100: // fdiv.s
        // fdiv.s rd(float), rs1(float), rs2(float)
        floatop1 = this->floatreg[rs1];
        floatop2 = this->floatreg[rs2];
        reg2 = rs2;      
        floatop2str = FLOATREGNAME[rs2];        
        instname = "fdiv.s";
        insttype = FDIV_S; 
        break;        
       case 0b0101100: // fsqrt.s
        // fsqrt.s rd(float), rs1(float)
       if (0 == rs2){ 
          floatop1 = this->floatreg[rs1];
          instname = "fsqrt.s";
          insttype = FSQRT_S; 
        }else{
          this->panic("Unknown rs2 0x%x for funct7 0x%x\n", rs2, funct7);
        }        
        break;                
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      floatop1str = FLOATREGNAME[rs1];
      // floatop2str = FLOATREGNAME[rs2];
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + floatop1str + "," + floatop2str;     
    } break;
    case OP_LOAD_FP: {
    // FLW rd(float), imme(rs1(int)) 
    // The FLW instruction loads a single-precision floating-point value from memory into floating-point register rd. 
    // rd+rs1 must have
    // check:
    // 1. funct3      
      op1 = this->reg[rs1];
      op2 = imm_i;
      offset = imm_i;      
      reg1 = rs1;
      dest = rd;
      switch (funct3) {
      case 0b010: // FLW
        instname = "flw";
        insttype = FLW;
        break;
      default:
        this->panic("Unknown funct3 0x%x for opcode 0x%x\n", funct3, OP_LOAD_FP);
        break;
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = FLOATREGNAME[rd];
      inststr = instname + " " + deststr + "," + op2str + "(" + op1str + ")";
    } break;  
    case OP_STORE_FP: {
    // fsw rs2(float),offset(rs1(int))
    // imm[11:5]|rs2|rs1|010|imm[4:0]|01001|11
    // The fsw instruction loads a single-precision floating-point value from memory into floating-point register rd. 
    // rs2+rs1 must have
    // check:
    // 1. funct3      
      op1 = this->reg[rs1];
      floatop2 = this->floatreg[rs2];
      reg1 = rs1;
      reg2 = rs2;
      offset = imm_s;      
      switch (funct3) {
      case 0b010: // fsw
        instname = "fsw";
        insttype = FSW;
        break;
      default:
        this->panic("Unknown funct3 0x%x for opcode 0x%x\n", funct3, OP_LOAD_FP);
        break;
      // TODO: op2 and reg2 and op2str depends on instruction
      }
      op1str = REGNAME[rs1];
      op2str = FLOATREGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op2str + "," + offsetstr + "(" + op1str + ")";
    } break;  
    // yyx above    
    default:
      this->panic("Unsupported opcode 0x%x!\n", opcode);
    }

    char buf[4096];
    sprintf(buf, "0x%lx: %s\n", this->fReg.pc, inststr.c_str());
    this->history.instRecord.push_back(buf);

    if (verbose) {
      printf("issue Decoded instruction 0x%.8x as %s\n", inst, inststr.c_str());
    }
  } else { // 16 bit instruction
    this->panic(
        "Current implementation does not support 16bit RV64C instructions!\n");
  }

  if (instname != INSTNAME[insttype]) {
    this->panic("Unmatch instname %s with insttype %d\n", instname.c_str(),
                insttype);
  }

  bool predictedBranch = false;

  #ifndef ALL_STALL_YYX
  if (isBranch(insttype)) {
    predictedBranch = this->branchPredictor->predict(this->fReg.pc, insttype,
                                                     op1, op2, offset);
    if (predictedBranch) {
      this->predictedPC = this->fReg.pc + offset;
      this->anotherPC = this->fReg.pc + 4;
      this->fRegNew.bubble = true;
    } else {
      this->anotherPC = this->fReg.pc + offset;
    }
  }
  #endif

  this->iRegNew.stall = false;
  this->iRegNew.bubble = false;
  this->iRegNew.ifTakenFUSuccessfully = false;

  #ifdef SCOREBOARD_YYX
  int FUType = getComponentUsed(insttype);
  int FUNumber = -1;
  // no structure hazard: !busyFU[FUType]
  // no WAW: no dest || dest no busy in calculation :!regFU[dest]
  // printf("before judge at issue, FUType:%d\n", FUType);
  int FreeFUIntraNumber = getFreeFUIntraNumber(FUType);
  if (NONE != FreeFUIntraNumber && (NONE == dest || NONE == regFU[dest])){
    // go on
    // printf("judge at issue, FUType:%d\n", FUType);
    this->iRegNew.ifTakenFUSuccessfully = true;
    busyFU[FUType][FreeFUIntraNumber] = true;
    OpFU[FUType][FreeFUIntraNumber] = insttype;
    FiFU[FUType][FreeFUIntraNumber] = dest;
    FjFU[FUType][FreeFUIntraNumber] = reg1;
    FkFU[FUType][FreeFUIntraNumber] = reg2;
    QjFU[FUType][FreeFUIntraNumber] = (NONE != reg1) ? regFU[reg1] : NONE;
    QkFU[FUType][FreeFUIntraNumber] = (NONE != reg2) ? regFU[reg2] : NONE;

    RjFU[FUType][FreeFUIntraNumber] = (NONE == QjFU[FUType][FreeFUIntraNumber]);
    RkFU[FUType][FreeFUIntraNumber] = (NONE == QkFU[FUType][FreeFUIntraNumber]);

    exeLeftTime[FUType][FreeFUIntraNumber] = EXEMAXLEFTTIME;

    FUNumber = calFUNumber(FUType, FreeFUIntraNumber);
    if (NONE != dest) regFU[dest] = FUNumber;

    // printf("judge at issue done, FUType:%d\n", FUType);

    // deal with branch
    // Pipeline Related Code
    if (isBranch(insttype) || isJump(insttype)) {
      this->history.controlFlushPipelineCount++;
      // this->iRegNew.ifBranchFlush = 1;
      this->fRegNew.bubble = true;
      if (verbose)
        printf("incur branch, flush pipeline\n");      
    }
  }else{
    // wait

    if (NONE == FreeFUIntraNumber){
      if (verbose){
        printf("wait at issue because structure hazard, FUType:%d\n", FUType);
      }
      this->history.structureHazardCount++;
      this->ifStructureHazardBefore = true;
    }else{
      if (verbose){
        printf("wait at issue because WAW hazard, dest:%d, regFU[dest]:%d\n", dest, regFU[dest]);
      }
      this->history.WAWHazardCount++;
      this->ifWAWHazardBefore = true;
    }
    this->pc -= 4;
    this->fReg.stall = 1;
    this->iRegNew.bubble = true;
    // TODO: add infomation record wait
  }
  #endif    

  this->iRegNew.rs1 = reg1;
  this->iRegNew.rs2 = reg2;
  this->iRegNew.pc = this->fReg.pc;
  this->iRegNew.inst = insttype;
  this->iRegNew.predictedBranch = predictedBranch;
  this->iRegNew.dest = dest;
  this->iRegNew.op1 = op1;
  this->iRegNew.op2 = op2;
  // yyx below: float
  this->iRegNew.floatop1 = floatop1;
  this->iRegNew.floatop2 = floatop2;
  // yyx above  
  this->iRegNew.offset = offset;
#ifdef SCOREBOARD_YYX
  this->iRegNew.ifClearScoreboard = false;
  this->iRegNew.FUNumber = FUNumber;
#endif  
}

void Simulator::readOperand() {
  if (this->iReg.stall) {
    if (verbose) {
      printf("readOperand: Stall\n");
      // printf("readOperand: Stall : %d\n", this->iReg.stall);
      // printf("readOperand: bubble : %d\n", this->iReg.bubble);
    }
    this->rRegNew.bubble = true;
    return;
  }
  if (this->iReg.bubble) {
    if (verbose) {
      printf("readOperand: Bubble\n");
      // printf("readOperand: Stall : %d\n", this->iReg.stall);
      // printf("readOperand: bubble : %d\n", this->iReg.bubble);      
    }
    // clear scoreboard data
    #ifdef SCOREBOARD_YYX
    if (0 != this->iReg.pc && this->iReg.ifClearScoreboard && this->iReg.ifTakenFUSuccessfully){
      panic("invalid code segment in readOperand now");
    }
    #endif
    this->rRegNew.bubble = true;
    return;
  }

  if (verbose) {
    printf("readOperand: %s\n", INSTNAME[this->iReg.inst]);
  }

  // this->history.instCount++;

  Inst inst = this->iReg.inst;
  int64_t op1 = this->iReg.op1;
  int64_t op2 = this->iReg.op2;
  int64_t offset = this->iReg.offset;
  bool predictedBranch = this->iReg.predictedBranch;

  uint64_t iRegPC = this->iReg.pc;
  bool writrReg = false;
  RegId destReg = this->iReg.dest;
  int64_t out = 0;
  // yyx below: float
  bool writeFloatReg = false;
  double floatop1 = this->iReg.floatop1;
  double floatop2 = this->iReg.floatop2;
  // printf("excecute() initial:this->iReg.floatop2:%lf\n", this->iReg.floatop2);
  double floatout = 0;
  bool writeFloat = false;
  bool readFloat = false;
  float f_tmp = 0;
  #ifdef ALL_STALL_YYX
  bool ifMemHazard = false; // temp
  bool ifExeHazard = false; // temp
  #endif  
  // yyx above    
  bool writeMem = false;
  bool readMem = false;
  bool readSignExt = false;
  uint32_t memLen = 0;
  bool branch = false;
  // unchanged from last stage above


  this->rRegNew.stall = false;
  this->rRegNew.bubble = false;

#ifdef SCOREBOARD_YYX
  // need to decide this->rRegNew.bubble at now
  int FUNumber = this->iReg.FUNumber;
  if (NONE == FUNumber) panic("no FUNumber in read Operand\n");
  int FUType = NONE, FUIntraNumber = NONE;
  calFUTypeAndFreeFUIntraNumber(FUNumber, FUType, FUIntraNumber);
  if (true == RjFU[FUType][FUIntraNumber] && true == RkFU[FUType][FUIntraNumber]){
    // Read operend real
    // default read integer register now
    // TODO: add when to read float register
    if (NONE != this->iReg.rs1){
      op1 = this->reg[this->iReg.rs1];
    }
    if (NONE != this->iReg.rs2){
      op2 = this->reg[this->iReg.rs2];
    }
    RjFU[FUType][FUIntraNumber] = false;
    RkFU[FUType][FUIntraNumber] = false;

    // deal with branch
    // Pipeline Related Code
    if (isBranch(inst) || isJump(inst)) {
      this->history.controlFlushPipelineCount++;
      // this->iRegNew.ifBranchFlush = 1;
      this->fRegNew.bubble = true;
      this->fReg.bubble = true;
      this->iRegNew.bubble = true;
      if (verbose)
        printf("incur branch, flush pipeline\n");      
    }    
  }else{
    this->history.dataHazardCount++;
    if (verbose){
      printf("wait at issue because RAW hazard, FUType:%d, FUIntraNumber:%d\n", FUType, FUIntraNumber);
    }    
    // issue success, if repeat issue, need to reset issue scoreboard bookmark
    if (true == this->iRegNew.ifTakenFUSuccessfully){
      // indicates
      Inst inst_t = this->iRegNew.inst;
      if (Inst::UNKNOWN != inst_t){
        clearFUScoreboardStatus(this->iRegNew.FUNumber);
      }        
    }
    if (this->ifStructureHazardBefore || this->ifWAWHazardBefore){
      // indicates last stage also wait, should revoke its effect
      if (this->ifStructureHazardBefore) 
        this->history.structureHazardCount--;
      if (this->ifWAWHazardBefore) 
        this->history.WAWHazardCount--;
      this->pc += 4;
      // left effect overlapped by this stage
    }  
 
    this->pc -= 4; 
    this->fReg.stall = 1;
    this->iRegNew.bubble = true;
    this->iReg.stall = 1;
    this->rRegNew.bubble = true;
  }
#endif

  this->rRegNew.rs1 = this->iReg.rs1;
  this->rRegNew.rs2 = this->iReg.rs2;
  this->rRegNew.pc = this->iReg.pc;
  this->rRegNew.inst = this->iReg.inst;
  this->rRegNew.dest = this->iReg.dest;
  this->rRegNew.op1 = op1;
  this->rRegNew.op2 = op2;
  // yyx below: float
  this->rRegNew.floatop1 = floatop1;
  this->rRegNew.floatop2 = floatop2;
  // yyx above  
  this->rRegNew.offset = offset;
#ifdef SCOREBOARD_YYX
  this->rRegNew.ifClearScoreboard = false;
  this->rRegNew.FUNumber = FUNumber;
#endif    
}

void Simulator::excecute() {
  // reduce exeLeftTime of every busy FUNumber
#ifdef SCOREBOARD_YYX
  for (size_t i = 0; i < number_of_component_type; i++)
    for (size_t j = 0; j < number_component_per_type; j++)
      if (busyFU[i][j] && exeLeftTime[i][j] > 0) exeLeftTime[i][j]--;
#endif

  if (this->rReg.stall) {
    if (verbose) {
      printf("Execute: Stall\n");
      // printf("Execute: Stall : %d\n", this->rReg.stall);
      // printf("Execute: bubble : %d\n", this->rReg.bubble);
    }
    this->eRegNew.bubble = true;
    return;
  }
  if (this->rReg.bubble) {
    if (verbose) {
      printf("Execute: Bubble\n");
      // printf("Execute: Stall : %d\n", this->rReg.stall);
      // printf("Execute: bubble : %d\n", this->rReg.bubble);      
    }
    this->eRegNew.bubble = true;
    // clear scoreboard data
    #ifdef SCOREBOARD_YYX
    // TODO: decoded inst -> clear, otherwise 0000 inst will clear wrong
    if (0 != this->rReg.pc && this->rReg.ifClearScoreboard){
      panic("unvalid code segment in execute now\n");
    }

    #endif
    return;
  }

  if (verbose) {
    printf("Execute: %s\n", INSTNAME[this->rReg.inst]);
  }

  this->history.instCount++;

  Inst inst = this->rReg.inst;
  int64_t op1 = this->rReg.op1;
  int64_t op2 = this->rReg.op2;
  int64_t offset = this->rReg.offset;
  bool predictedBranch = this->rReg.predictedBranch;

  uint64_t rRegPC = this->rReg.pc;
  bool writeReg = false;
  RegId destReg = this->rReg.dest;
  int64_t out = 0;
  // yyx below: float
  bool writeFloatReg = false;
  double floatop1 = this->rReg.floatop1;
  double floatop2 = this->rReg.floatop2;
  // printf("excecute() initial:this->rReg.floatop2:%lf\n", this->rReg.floatop2);
  double floatout = 0;
  bool writeFloat = false;
  bool readFloat = false;
  float f_tmp = 0;
  #ifdef ALL_STALL_YYX
  bool ifMemHazard = false; // temp
  bool ifExeHazard = false; // temp
  #endif  
  // yyx above    
  bool writeMem = false;
  bool readMem = false;
  bool readSignExt = false;
  uint32_t memLen = 0;
  bool branch = false;
  #ifdef SCOREBOARD_YYX
  int FUNumber = this->rReg.FUNumber;
  int FUType = NONE, FUIntraNumber = NONE;
  calFUTypeAndFreeFUIntraNumber(FUNumber, FUType, FUIntraNumber);
  #endif

#ifdef DEBUG_YYX
  printf("execute instruction : %p\n", rRegPC);
#endif

  switch (inst) {
  case LUI:
    writeReg = true;
    out = offset << 12;
    break;
  case AUIPC:
    writeReg = true;
    out = rRegPC + (offset << 12);
    break;
  case JAL:
    writeReg = true;
    out = rRegPC + 4;
    rRegPC = rRegPC + op1;
    branch = true;
    break;
  case JALR:
    writeReg = true;
    out = rRegPC + 4;
    rRegPC = (op1 + op2) & (~(uint64_t)1);
    branch = true;
    break;
  case BEQ:
    if (op1 == op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case BNE:
    if (op1 != op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case BLT:
    if (op1 < op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case BGE:
    if (op1 >= op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case BLTU:
    if ((uint64_t)op1 < (uint64_t)op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case BGEU:
    if ((uint64_t)op1 >= (uint64_t)op2) {
      branch = true;
      rRegPC = rRegPC + offset;
    }
    break;
  case LB:
    readMem = true;
    writeReg = true;
    memLen = 1;
    out = op1 + offset;
    readSignExt = true;
    break;
  case LH:
    readMem = true;
    writeReg = true;
    memLen = 2;
    out = op1 + offset;
    readSignExt = true;
    break;
  case LW:
    readMem = true;
    writeReg = true;
    memLen = 4;
    out = op1 + offset;
    readSignExt = true;
    break;
  case LD:
    readMem = true;
    writeReg = true;
    memLen = 8;
    out = op1 + offset;
    readSignExt = true;
    break;
  case LBU:
    readMem = true;
    writeReg = true;
    memLen = 1;
    out = op1 + offset;
    break;
  case LHU:
    readMem = true;
    writeReg = true;
    memLen = 2;
    out = op1 + offset;
    break;
  case LWU:
    readMem = true;
    writeReg = true;
    memLen = 4;
    out = op1 + offset;
    break;
  case SB:
    writeMem = true;
    memLen = 1;
    out = op1 + offset;
    op2 = op2 & 0xFF;
    break;
  case SH:
    writeMem = true;
    memLen = 2;
    out = op1 + offset;
    op2 = op2 & 0xFFFF;
    break;
  case SW:
    writeMem = true;
    memLen = 4;
    out = op1 + offset;
    op2 = op2 & 0xFFFFFFFF;
    break;
  case SD:
    writeMem = true;
    memLen = 8;
    out = op1 + offset;
    break;
  case ADDI:
  case ADD:
    writeReg = true;
    out = op1 + op2;
    break;
  case ADDIW:
  case ADDW:
    writeReg = true;
    out = (int64_t)((int32_t)op1 + (int32_t)op2);
    break;
  case SUB:
    writeReg = true;
    out = op1 - op2;
    break;
  case SUBW:
    writeReg = true;
    out = (int64_t)((int32_t)op1 - (int32_t)op2);
    break;
  case MUL:
    writeReg = true;
    out = op1 * op2;
    break;
  case DIV:
    writeReg = true;
    out = op1 / op2;
    break;
  case SLTI:
  case SLT:
    writeReg = true;
    out = op1 < op2 ? 1 : 0;
    break;
  case SLTIU:
  case SLTU:
    writeReg = true;
    out = (uint64_t)op1 < (uint64_t)op2 ? 1 : 0;
    break;
  case XORI:
  case XOR:
    writeReg = true;
    out = op1 ^ op2;
    break;
  case ORI:
  case OR:
    writeReg = true;
    out = op1 | op2;
    break;
  case ANDI:
  case AND:
    writeReg = true;
    out = op1 & op2;
    break;
  case SLLI:
  case SLL:
    writeReg = true;
    out = op1 << op2;
    break;
  case SLLIW:
  case SLLW:
    writeReg = true;
    out = int64_t(int32_t(op1 << op2));
    break;
    break;
  case SRLI:
  case SRL:
    writeReg = true;
    out = (uint64_t)op1 >> (uint64_t)op2;
    break;
  case SRLIW:
  case SRLW:
    writeReg = true;
    out = uint64_t(uint32_t((uint32_t)op1 >> (uint32_t)op2));
    break;
  case SRAI:
  case SRA:
    writeReg = true;
    out = op1 >> op2;
    break;
  case SRAW:
  case SRAIW:
    writeReg = true;
    out = int64_t(int32_t((int32_t)op1 >> (int32_t)op2));
    break;
  case ECALL:
    out = handleSystemCall(op1, op2);
    writeReg = true;
    break;
  // yyx below
  // on my ubuntu, little-endian
  case FMV_W_X:
    writeFloatReg = true;
    uint32_t low_32_bits;
    low_32_bits = op1 & 0xFFFFFFFF; 
    // TODO: why can not together give value
    // uint32_t low_32_bits = op1 & 0xFFFFFFFF;
    uint32_t* place;
    place = (uint32_t*)(&floatout);
    *place = low_32_bits;
    break;
  case FMV_X_W:
    writeReg = true;
    // uint32_t low_32_bits;
    // low_32_bits = ;
    float real_floatop1;
    real_floatop1 = cutDoubleReg2low32bit2Float(floatop1);
    bool negative_sign;
    negative_sign = (real_floatop1 < 0);
    out = 0;
    *(uint32_t*)(&out) = *(uint32_t *)(&real_floatop1);
    if (negative_sign) *((uint32_t*)(&out)+1) = 0xFFFFFFFF;
    break;
  case FCVT_S_W:
    // fcvt.s.w rd(float), rs1(int)
    // converts a 32-bit or 64-bit signed integer, respectively, in integer register rs1 into a floatingpoint number  
    writeFloatReg = true;
    saveFloat2DoubleReg2low32bit((float)op1, floatout);
    break;
  case FCVT_W_S:
    // fcvt.w.s rd(int), rs1(float)
    // converts float to signed int
    writeReg = true;
    out = cutDoubleReg2low32bit2Float(floatop1);
    break;
  case FADD_S:
    // fadd.s rd(float), rs1(float), rs2(float)
    writeFloatReg = 1;
    f_tmp = cutDoubleReg2low32bit2Float(floatop1)+cutDoubleReg2low32bit2Float(floatop2);
    printf("FADD_S %f, %f, %f\n", f_tmp, cutDoubleReg2low32bit2Float(floatop1), cutDoubleReg2low32bit2Float(floatop2));
    saveFloat2DoubleReg2low32bit(f_tmp, floatout);
    break;
  case FSUB_S:
    // fsub.s rd(float), rs1(float), rs2(float)
    writeFloatReg = 1;
    f_tmp = cutDoubleReg2low32bit2Float(floatop1)-cutDoubleReg2low32bit2Float(floatop2);
    saveFloat2DoubleReg2low32bit(f_tmp, floatout);
    break;
  case FMUL_S:
    // fmul.s rd(float), rs1(float), rs2(float)
    writeFloatReg = 1;
    f_tmp = cutDoubleReg2low32bit2Float(floatop1)*cutDoubleReg2low32bit2Float(floatop2);
    saveFloat2DoubleReg2low32bit(f_tmp, floatout);
    break;    
  case FDIV_S:
    // fdiv.s rd(float), rs1(float), rs2(float)
    writeFloatReg = 1;
    f_tmp = cutDoubleReg2low32bit2Float(floatop1)/cutDoubleReg2low32bit2Float(floatop2);
    saveFloat2DoubleReg2low32bit(f_tmp, floatout);
    break;        
  case FSQRT_S:
    // fsqrt.s rd(float), rs1(float), rs2(float)
    writeFloatReg = 1;
    f_tmp = sqrt(cutDoubleReg2low32bit2Float(floatop1));
    saveFloat2DoubleReg2low32bit(f_tmp, floatout);
    break;            
  case FLW:
    readMem = true;
    writeFloatReg = true;
    memLen = 4; //float 4 byte
    out = op1 + offset;
    readFloat = true; //TODO
    break;
  case FSW:
    writeMem = true;
    memLen = 4;
    out = op1 + offset;
    writeFloat = true;
    break;
  // yyx above
  default:
    this->panic("Unknown instruction type %d\n", inst);
  }


  // deal with branch
  // Pipeline Related Code
  if (isBranch(inst) || isJump(inst)) {
    if (isBranch(inst)){
      if (branch){
        this->pc = rRegPC;
        if (verbose)
          printf("incur branch and jump, flush pipeline\n");     
      }
      else{
        this->pc = rReg.pc + 4;
        if (verbose)
          printf("incur branch and no jump, flush pipeline\n");   
      }
    }
    if (isJump(inst)){
      this->pc = rRegPC;
      if (verbose)
        printf("incur direct jump, flush pipeline\n");     
    }
    this->history.controlFlushPipelineCount++;
    // this->iRegNew.ifBranchFlush = 1;
    this->fRegNew.bubble = true;
    this->fReg.bubble = true;
    this->iRegNew.bubble = true;
    this->iReg.bubble = true;
    this->rRegNew.bubble = true;
  
  }    
  // if (isReadMem(inst)) {
  //   if (this->rRegNew.rs1 == destReg || this->rRegNew.rs2 == destReg) {
  //     // yyx below
  //     // printf("excecute have memoryHazardCount\n");
  //     // yyx above      
  //     #ifndef ALL_STALL_YYX
  //     this->fRegNew.stall = 2;
  //     this->rRegNew.stall = 2;
  //     this->eRegNew.bubble = true;
  //     this->history.cycleCount--;
  //     this->history.memoryHazardCount++;      
  //     #else
  //     if (verbose)
  //       printf("in data hazard of memory yyx\n");
  //     this->history.memoryHazardCount++;
  //     this->rRegNew.bubble = true;
  //     // this->rRegNew.stall = 3;
  //     ifMemHazard = true;
  //     this->fReg.stall = 1;
  //     this->pc -= 4;
  //     #ifdef ALL_STALL_YYX
  //     this->ifHazardBefore = true;
  //     #endif      
  //     if (verbose){
  //       if (this->rRegNew.rs1 == destReg) 
  //         printf(" stall 1 times and let mem phase to add stall because incurs exe_decode RAW hazard, rRegNew.rs1:%s, destReg:%s\n", REGNAME[this->rRegNew.rs1], REGNAME[destReg]);
  //       if (this->rRegNew.rs2 == destReg) 
  //         printf(" stall 1 times and let mem phase to add stall because incurs exe_decode RAW hazard, rRegNew.rs2:%s, destReg:%s\n", REGNAME[this->rRegNew.rs2], REGNAME[destReg]);
  //     }
  //     #endif
  //   }
  // }
  #ifndef ALL_STALL_YYX
  // inside the execute stage, there's ALU and other components
  // latency analysis of each instruction inside execute stage
  uint32_t lat = this->latency[getComponentUsed(inst)];
  // stall the fetch & decode stage to reflect the latency
  this->fRegNew.stall = std::max<uint32_t>(lat, this->fRegNew.stall);
  this->rRegNew.stall = std::max<uint32_t>(lat, this->rRegNew.stall);
  #endif
      // yyx below
      // printf("excecute have memoryHazardCount,  this->rRegNew.stall:%u\n",  this->rRegNew.stall);
      // printf("excecute have memoryHazardCount,  lat:%u\n",  lat);
      // printf("excecute have memoryHazardCount,  inst:%u\n",  inst);
      // printf("excecute have memoryHazardCount,  getComponentUsed(inst):%u\n",  getComponentUsed(inst));
      // printf("excecute have memoryHazardCount,  this->latency[getComponentUsed(inst)]:%u\n",  this->latency[getComponentUsed(inst)]);
      // yyx above 
  // Check for data hazard and forward data
  // if ((writeReg && destReg != 0 && !isReadMem(inst)) || \
  // (writeFloatReg && !isReadMem(inst)) ) {   // Check for data hazard and forward data: float, yyx
  //   if (verbose)
  //     printf("excecute need writereg\n");
  //   #ifndef ALL_STALL_YYX
  //   if (this->rRegNew.rs1 == destReg) {
  //     this->rRegNew.op1 = out;
  //     this->executeWBReg = destReg;
  //     this->executeWriteBack = true;
  //     this->history.dataHazardCount++;
  //     if (verbose)
  //       printf("  Forward Data %s to Decode op1\n", REGNAME[destReg]);
  //   }
  //   if (this->rRegNew.rs2 == destReg) {
  //     this->rRegNew.op2 = out;
  //     this->executeWBReg = destReg;
  //     this->executeWriteBack = true;
  //     this->history.dataHazardCount++;
  //     if (verbose)
  //       printf("  Forward Data %s to Decode op2\n", REGNAME[destReg]);
  //   }
  //   #else
  //   if (this->rRegNew.rs1 == destReg || this->rRegNew.rs2 == destReg) {
  //     if (verbose)
  //       printf("in data hazard of data in exe yyx\n");
  //     this->history.dataHazardCount+=1;
  //     this->rRegNew.bubble = true;
  //     // this->rRegNew.stall = 3;
  //     this->fReg.stall = 1;
  //     ifExeHazard = true;
  //     #ifdef ALL_STALL_YYX
  //     this->ifHazardBefore = true;
  //     #endif         
  //     this->pc -= 4;
  //     if (verbose){
  //       if (this->rRegNew.rs1 == destReg) 
  //         printf(" stall %u times because incurs exe_decode RAW hazard, rRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->rRegNew.rs1], REGNAME[destReg]);
  //       if (this->rRegNew.rs2 == destReg) 
  //         printf(" stall %u times because incurs exe_decode RAW hazard, rRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->rRegNew.rs2], REGNAME[destReg]);
  //     }
  //   }
  //   #endif
  //   if (verbose)
  //     printf("excecute need writereg2\n");
  // }

  // inside the execute stage, there's ALU and other components
  // latency analysis of each instruction inside execute stage 
  // memory latency to decide later
  uint32_t lat = this->latency[getComponentUsed(inst)];
  #ifdef ALL_STALL_YYX
  // stall the fetch & decode stage to reflect the latency
  // if (ifExeHazard){
  //   // RAW hazard
  //   // special judge on readmem
  //   // full logic implemented before
  //   if (verbose)
  //     printf(" stall %u+%u latency of ALU\n", this->fReg.stall, lat);
  //   this->fReg.stall += lat;
  // }else if (ifMemHazard){
  //   this->fReg.stall = datamem_stall_lock;
  //   if (verbose)
  //     printf(" stall %u latency of readmem, and later let mem phase decide specifical stall number \n", datamem_stall_lock);    
  // }else{
  //   //modify below
  //   // this->fRegNew.stall = std::max<uint32_t>(lat, this->fRegNew.stall);
  //   // this->rRegNew.stall = std::max<uint32_t>(lat, this->rRegNew.stall);
  //   // to 
  //   if (lat){
  //     this->ifExeAddComponentLatency = true;
  //     // printf("adding component latency : %u\n", lat);
  //     this->fReg.stall = lat; // TODO check if += or =
  //     this->rRegNew.bubble = true;
  //     this->pc -= 4;
  //   }
  // }
  #endif

  // Memory access below
#ifdef SCOREBOARD_YYX
  bool good = true;
  uint32_t cycles = 0;

  if (writeMem) {
    // yyx below : read float; currently memLen case 4
    if (writeFloat && 4 != memLen){
      this->panic("4 != memLen at processor code :%u at writeFloat\n", memLen);
    }
    // yyx above     
    switch (memLen) {
    case 1:
      good = this->memory->setByte(out, op2, &cycles);
      break;
    case 2:
      good = this->memory->setShort(out, op2, &cycles);
      break;
    case 4:
      // yyx below : read single float
      if (writeFloat){
        float tmp_float = cutDoubleReg2low32bit2Float(floatop2);
        *(uint32_t*)(&op2) = *(uint32_t*)(&tmp_float);
        // printf("writeFloat floatop2: %lf\n", floatop2);
        // printf("writeFloat tmp_float: %f\n", tmp_float);
        // printf("writeFloat *(uint32_t*)(&tmp_float): %x\n", *(uint32_t*)(&tmp_float));
      }
      // yyx above    
      good = this->memory->setInt(out, op2, &cycles);
      break;
    case 8:
      good = this->memory->setLong(out, op2, &cycles);
      break;
    default:
      this->panic("Unknown memLen %u\n", memLen);
    }
  }

  if (!good) {
    this->panic("Invalid Mem Access!\n");
  }

  if (readMem) {
    // yyx below : read float; currently memLen case 4
    if (readFloat && 4 != memLen){
      this->panic("4 != memLen at processor code :%u at readfloat\n", memLen);
    }
    // yyx above    
    switch (memLen) {
    case 1:
      if (readSignExt) {
        out = (int64_t)this->memory->getByte(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getByte(out, &cycles);
      }
      break;
    case 2:
      if (readSignExt) {
        out = (int64_t)this->memory->getShort(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getShort(out, &cycles);
      }
      break;
    case 4:
      // yyx below : read single float
      if (readFloat){
        uint32_t tmp_uint32 = this->memory->getInt(out, &cycles);
        float tmp_float = *(float*)(&tmp_uint32);
        saveFloat2DoubleReg2low32bit(tmp_float, floatout);
        // printf("readFloat : tmp_uint32:%u\n", tmp_uint32);        
        // printf("readFloat : tmp_float:%f\n", tmp_float);        
        // printf("readFloat : floatout:%lf\n", floatout);        
        break;
      }
      // yyx above
      if (readSignExt) {
        out = (int64_t)this->memory->getInt(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getInt(out, &cycles);
      }
      break;
    case 8:
      if (readSignExt) {
        out = (int64_t)this->memory->getLong(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getLong(out, &cycles);
      }
      break;
    default:
      this->panic("Unknown memLen %u\n", memLen);
    }
  }
  // TODO?
  // final latency decided here
  if (datamem_stall_lock == lat){
    lat = std::max<uint32_t>(datamem_lat_lower_bound, cycles);
  }
  // if (this->fReg.stall == datamem_stall_lock) {
  //   this->fReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles);
  //   if (verbose)
  //     printf("In mem phase, this->fReg.stall == datamem_stall_lock, this->fReg.stall:%d, cycles:%d\n", this->fReg.stall, cycles); //yyx
  // }
  // if (this->dReg.stall == datamem_stall_lock){
  //   this->dReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles);
  //   if (verbose)
  //     printf("In mem phase, this->dReg.stall == datamem_stall_lock, this->dReg.stall:%d, cycles:%d\n", this->dReg.stall, cycles); //yyx
  // }
  // #ifdef ALL_STALL_YYX
  // if (this->fReg.stall == datamem_stall_lock-1) {
  //   this->fReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles); 
  //   if (verbose)
  //     printf("In mem phase, this->fReg.stall == datamem_stall_lock-1, detected memhazard last phase, update new latency in mem phase, this->fReg.stall:%d, cycles:%d\n", this->fReg.stall, cycles); //yyx
  // }
  // if (this->dReg.stall == datamem_stall_lock-1){
  //   this->dReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles); 
  //   if (verbose)
  //     printf("In mem phase, this->dReg.stall == datamem_stall_lock-1, detected memhazard last phase, update new latency in mem phase, this->dReg.stall:%d, cycles:%d\n", this->dReg.stall, cycles); //yyx
  // }
  // #endif
  
  // if (verbose) {
  //   printf("Memory Access: %s\n", INSTNAME[inst]);
  // }
  
#endif  

  // latency to record exeLeftTime of components to decide writeback
#ifdef SCOREBOARD_YYX
  if (FUType < 0)
    this->panic("Unknown FUType in exe：%d\n", FUType);
  exeLeftTime[FUType][FUIntraNumber] = 1+lat; // since writeback takes traverse method to writeback, there should be 1 cycle to get to writeback stage
#endif

  // record eRegs of FUType to wait completion of exe
#ifdef SCOREBOARD_YYX
  if (nullptr != eRegFU[FUType][FUIntraNumber])
    panic("nullptr != eRegFU[FUType][FUIntraNumber] for FUType:%d\n", FUType);
  eRegFU[FUType][FUIntraNumber] = new EReg();
  if (verbose)
    printf("create EREG for FUType, FUIntraNumber:%d,%d\n", FUType, FUIntraNumber);
  // TODO: delete later
  eRegFU[FUType][FUIntraNumber]->bubble = false;
  eRegFU[FUType][FUIntraNumber]->stall = false;
  eRegFU[FUType][FUIntraNumber]->pc = rRegPC;
  eRegFU[FUType][FUIntraNumber]->inst = inst;
  eRegFU[FUType][FUIntraNumber]->op1 = op1; // for jalr
  eRegFU[FUType][FUIntraNumber]->op2 = op2; // for store
  eRegFU[FUType][FUIntraNumber]->writeReg = writeReg;
  eRegFU[FUType][FUIntraNumber]->destReg = destReg;
  eRegFU[FUType][FUIntraNumber]->out = out;
    // yyx below: float
  eRegFU[FUType][FUIntraNumber]->writeFloatReg = writeFloatReg;
  eRegFU[FUType][FUIntraNumber]->floatop1 = floatop1;
  eRegFU[FUType][FUIntraNumber]->floatop2 = floatop2;
  eRegFU[FUType][FUIntraNumber]->floatout = floatout;
  eRegFU[FUType][FUIntraNumber]->writeFloat = writeFloat;
  eRegFU[FUType][FUIntraNumber]->readFloat = readFloat;
    // yyx above    
  eRegFU[FUType][FUIntraNumber]->writeMem = writeMem;
  eRegFU[FUType][FUIntraNumber]->readMem = readMem;
  eRegFU[FUType][FUIntraNumber]->readSignExt = readSignExt;
  eRegFU[FUType][FUIntraNumber]->memLen = memLen;
  eRegFU[FUType][FUIntraNumber]->branch = branch;  
#endif
  // this->eRegNew.bubble = false;
  // this->eRegNew.stall = false;
  // this->eRegNew.pc = rRegPC;
  // this->eRegNew.inst = inst;
  // this->eRegNew.op1 = op1; // for jalr
  // this->eRegNew.op2 = op2; // for store
  // this->eRegNew.writeReg = writeReg;
  // this->eRegNew.destReg = destReg;
  // this->eRegNew.out = out;
  // // yyx below: float
  // this->eRegNew.writeFloatReg = writeFloatReg;
  // this->eRegNew.floatop1 = floatop1;
  // this->eRegNew.floatop2 = floatop2;
  // this->eRegNew.floatout = floatout;
  // this->eRegNew.writeFloat = writeFloat;
  // this->eRegNew.readFloat = readFloat;
  // // yyx above    
  // this->eRegNew.writeMem = writeMem;
  // this->eRegNew.readMem = readMem;
  // this->eRegNew.readSignExt = readSignExt;
  // this->eRegNew.memLen = memLen;
  // this->eRegNew.branch = branch;
}

void Simulator::writeBack() {
  // traverse to see which FUType to write back
#ifdef SCOREBOARD_YYX
  for (size_t FUType = 0; FUType < number_of_component_type; FUType++){
    for (size_t FUIntraNumber = 0; FUIntraNumber < number_component_per_type; FUIntraNumber++){
      int FUNumber = calFUNumber(FUType, FUIntraNumber);
      bool ifExeCompleted = busyFU[FUType][FUIntraNumber] && !exeLeftTime[FUType][FUIntraNumber];
      bool ifNoWARHazard = true;
      // check WAR hazard
      // otherFUType read ready but will be written by this FUType
      for (size_t otherFUType = 0; otherFUType < number_of_component_type; otherFUType++)
      {
        for (size_t otherFUIntraNumber = 0; otherFUIntraNumber < number_component_per_type; otherFUIntraNumber++){
          if (!busyFU[otherFUType][otherFUIntraNumber])
            continue;
          if (NONE != FiFU[FUType][FUIntraNumber] && FjFU[otherFUType][otherFUIntraNumber] == FiFU[FUType][FUIntraNumber] && true == RjFU[otherFUType][otherFUIntraNumber]){
            if (verbose)
              printf("WARHazard (FUType,FUIntraNumber):(%d,%d) vs (%d,%d)\n", FUType, FUIntraNumber, otherFUType, otherFUIntraNumber);
            ifNoWARHazard = false;
            break;
          }
          if (NONE != FiFU[FUType][FUIntraNumber] && FkFU[otherFUType][otherFUIntraNumber] == FiFU[FUType][FUIntraNumber] && true == RkFU[otherFUType][otherFUIntraNumber]){
            if (verbose)
              printf("WARHazard (FUType,FUIntraNumber):(%d,%d) vs (%d,%d)\n", FUType, FUIntraNumber, otherFUType, otherFUIntraNumber);
            ifNoWARHazard = false;
            break;
          }    
        }
      }
      if (ifExeCompleted && !ifNoWARHazard){
        this->history.WARHazardCount++;
        if (verbose)
          printf("incur WARHazard for FUType, FUIntraNumber:%d,%d in writeback\n", FUType, FUIntraNumber);
      }

      if (ifExeCompleted && ifNoWARHazard){
        // original write back logic below
        if (!eRegFU[FUType][FUIntraNumber]) 
          panic("eRegFU[%d] nullptr\n", FUType);
        this->eReg = *(eRegFU[FUType][FUIntraNumber]);
        if (this->eReg.stall) {
          if (verbose) {
            printf("WriteBack: stall\n");
          }
          return;
        }
        if (this->eReg.bubble) {
          if (verbose) {
            printf("WriteBack: Bubble\n");
          }
          return;
        }

        if (verbose) {
          printf("WriteBack: %s\n", INSTNAME[this->eReg.inst]);
        }

        if (this->eReg.writeReg && this->eReg.destReg != 0) {
          #ifndef ALL_STALL_YYX
          // Check for data hazard and forward data
          if (this->dRegNew.rs1 == this->eReg.destReg) {
            // Avoid overwriting recent data
            if (!this->executeWriteBack ||
                (this->executeWriteBack &&
                this->executeWBReg != this->eReg.destReg)) {
              if (!this->memoryWriteBack ||
                  (this->memoryWriteBack &&
                  this->memoryWBReg != this->eReg.destReg)) {
                this->dRegNew.op1 = this->eReg.out;
                this->history.dataHazardCount++;
                if (verbose)
                  printf("  Forward Data %s to Decode op1\n",
                        REGNAME[this->eReg.destReg]);
              }
            }
          }
          if (this->dRegNew.rs2 == this->eReg.destReg) {
            // Avoid overwriting recent data
            if (!this->executeWriteBack ||
                (this->executeWriteBack &&
                this->executeWBReg != this->eReg.destReg)) {
              if (!this->memoryWriteBack ||
                  (this->memoryWriteBack &&
                  this->memoryWBReg != this->eReg.destReg)) {
                this->dRegNew.op2 = this->eReg.out;
                this->history.dataHazardCount++;
                if (verbose)
                  printf("  Forward Data %s to Decode op2\n",
                        REGNAME[this->eReg.destReg]);
              }
            }
          }
          #else
          if (!this->ifHazardBefore && !this->ifExeAddComponentLatency){
            if (this->dRegNew.rs1 == this->eReg.destReg || this->dRegNew.rs2 == this->eReg.destReg) {
              if (verbose)
                printf("in data hazard of data in writeback phase yyx\n");
              this->history.dataHazardCount++;
              this->dRegNew.bubble = true;
              // this->dRegNew.stall = 3;
              this->fReg.stall = 1;
              this->pc -= 4;
              if (verbose){
                if (this->dRegNew.rs1 == this->eReg.destReg) 
                  printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[this->eReg.destReg]);
                if (this->dRegNew.rs2 == this->eReg.destReg) 
                  printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[this->eReg.destReg]);
              }
            }
          }
          #endif

          // Real Write Back
          this->reg[this->eReg.destReg] = this->eReg.out;
        }

        // yyx below : float
        // seems need to distinguish if integer regitser or float register
        if (this->eReg.writeFloatReg) {
          #ifndef ALL_STALL_YYX    
          // Check for data hazard and forward data
          if (this->dRegNew.rs1 == this->eReg.destReg) {
            // Avoid overwriting recent data
            if (!this->executeWriteBack ||
                (this->executeWriteBack &&
                this->executeWBReg != this->eReg.destReg)) {
              if (!this->memoryWriteBack ||
                  (this->memoryWriteBack &&
                  this->memoryWBReg != this->eReg.destReg)) {
                this->dRegNew.floatop1 = this->eReg.floatout;
                this->history.dataHazardCount++;
                if (verbose)
                  printf("  Forward Data %s to Decode floatop1\n",
                        FLOATREGNAME[this->eReg.destReg]);
              }
            }
          }
          if (this->dRegNew.rs2 == this->eReg.destReg) {
            // Avoid overwriting recent data
            if (!this->executeWriteBack ||
                (this->executeWriteBack &&
                this->executeWBReg != this->eReg.destReg)) {
              if (!this->memoryWriteBack ||
                  (this->memoryWriteBack &&
                  this->memoryWBReg != this->eReg.destReg)) {
                this->dRegNew.floatop2 = this->eReg.floatout;
                this->history.dataHazardCount++;
                if (verbose)
                  printf("  Forward Data %s to Decode floatop2\n",
                        FLOATREGNAME[this->eReg.destReg]);
              }
            }
          }
          #else
          // no before hazard || need to wait component latency
          if (!this->ifHazardBefore && !this->ifExeAddComponentLatency){
            // hazard here
            if (this->dRegNew.rs1 == this->eReg.destReg || this->dRegNew.rs2 == this->eReg.destReg) {
              printf("in data hazard of data in writeback phase yyx\n");
              this->history.dataHazardCount++;
              this->dRegNew.bubble = true;
              // this->dRegNew.stall = 3;
              this->fReg.stall = 1;
              this->pc -= 4;
              if (verbose){
                if (this->dRegNew.rs1 == this->eReg.destReg) 
                  printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[this->eReg.destReg]);
                if (this->dRegNew.rs2 == this->eReg.destReg) 
                  printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[this->eReg.destReg]);
              }
            }
          }    
          #endif


          // Real Write Back
          // printf("Real Write Back:%u, %lf \n", this->eReg.destReg, this->eReg.floatout);
          this->floatreg[this->eReg.destReg] = this->eReg.floatout;
        }
        // yyx above    
        // original write back logic above

        // post deal with writeback in scoreboard logic
      #ifdef SCOREBOARD_YYX
        // free eRegFU[FUType][FUIntraNumber]
        delete eRegFU[FUType][FUIntraNumber];
        eRegFU[FUType][FUIntraNumber] = nullptr;
        if (verbose)
          printf("delete EREG in writeback for FUType, FUIntraNumber:%d,%d\n", FUType, FUIntraNumber);
        // write bookmark
        for (size_t otherFUType = 0; otherFUType < number_of_component_type; otherFUType++)
        {
          for (size_t otherFUIntraNumber = 0; otherFUIntraNumber < number_component_per_type; otherFUIntraNumber++){
            if (FUNumber == QjFU[otherFUType][otherFUIntraNumber]) RjFU[otherFUType][otherFUIntraNumber] = true;
            if (FUNumber == QkFU[otherFUType][otherFUIntraNumber]) RkFU[otherFUType][otherFUIntraNumber] = true;
          }          
        }
        if (FiFU[FUType][FUIntraNumber] >= 0)
          regFU[FiFU[FUType][FUIntraNumber]] = NONE;
        busyFU[FUType][FUIntraNumber] = false;      
      #endif
      } 
    
    }
    // judge if can write back
}
#endif


}

#endif

void Simulator::memoryAccess() {
  if (this->eReg.stall) {
    if (verbose) {
      printf("Memory Access: Stall\n");
    }
    return;
  }
  if (this->eReg.bubble) {
    if (verbose) {
      printf("Memory Access: Bubble\n");
    }
    this->mRegNew.bubble = true;
    return;
  }

  uint64_t eRegPC = this->eReg.pc;
  Inst inst = this->eReg.inst;
  bool writeReg = this->eReg.writeReg;
  RegId destReg = this->eReg.destReg;
  int64_t op1 = this->eReg.op1; // for jalr
  int64_t op2 = this->eReg.op2; // for store
  int64_t out = this->eReg.out;
  // yyx below: float
  bool writeFloatReg = this->eReg.writeFloatReg;
  double floatop1 = this->eReg.floatop1; // for jalr
  double floatop2 = this->eReg.floatop2; // for store
  double floatout = this->eReg.floatout;  
  bool writeFloat = this->eReg.writeFloat;
  bool readFloat = this->eReg.readFloat;
  // yyx above     
  bool writeMem = this->eReg.writeMem;
  bool readMem = this->eReg.readMem;
  bool readSignExt = this->eReg.readSignExt;
  uint32_t memLen = this->eReg.memLen;

  bool good = true;
  uint32_t cycles = 0;

  if (writeMem) {
    // yyx below : read float; currently memLen case 4
    if (writeFloat && 4 != memLen){
      this->panic("4 != memLen at processor code :%u at writeFloat\n", memLen);
    }
    // yyx above     
    switch (memLen) {
    case 1:
      good = this->memory->setByte(out, op2, &cycles);
      break;
    case 2:
      good = this->memory->setShort(out, op2, &cycles);
      break;
    case 4:
      // yyx below : read single float
      if (writeFloat){
        float tmp_float = cutDoubleReg2low32bit2Float(floatop2);
        *(uint32_t*)(&op2) = *(uint32_t*)(&tmp_float);
        // printf("writeFloat floatop2: %lf\n", floatop2);
        // printf("writeFloat tmp_float: %f\n", tmp_float);
        // printf("writeFloat *(uint32_t*)(&tmp_float): %x\n", *(uint32_t*)(&tmp_float));
      }
      // yyx above    
      good = this->memory->setInt(out, op2, &cycles);
      break;
    case 8:
      good = this->memory->setLong(out, op2, &cycles);
      break;
    default:
      this->panic("Unknown memLen %u\n", memLen);
    }
  }

  if (!good) {
    this->panic("Invalid Mem Access!\n");
  }

  if (readMem) {
    // yyx below : read float; currently memLen case 4
    if (readFloat && 4 != memLen){
      this->panic("4 != memLen at processor code :%u at readfloat\n", memLen);
    }
    // yyx above    
    switch (memLen) {
    case 1:
      if (readSignExt) {
        out = (int64_t)this->memory->getByte(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getByte(out, &cycles);
      }
      break;
    case 2:
      if (readSignExt) {
        out = (int64_t)this->memory->getShort(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getShort(out, &cycles);
      }
      break;
    case 4:
      // yyx below : read single float
      if (readFloat){
        uint32_t tmp_uint32 = this->memory->getInt(out, &cycles);
        float tmp_float = *(float*)(&tmp_uint32);
        saveFloat2DoubleReg2low32bit(tmp_float, floatout);
        // printf("readFloat : tmp_uint32:%u\n", tmp_uint32);        
        // printf("readFloat : tmp_float:%f\n", tmp_float);        
        // printf("readFloat : floatout:%lf\n", floatout);        
        break;
      }
      // yyx above
      if (readSignExt) {
        out = (int64_t)this->memory->getInt(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getInt(out, &cycles);
      }
      break;
    case 8:
      if (readSignExt) {
        out = (int64_t)this->memory->getLong(out, &cycles);
      } else {
        out = (uint64_t)this->memory->getLong(out, &cycles);
      }
      break;
    default:
      this->panic("Unknown memLen %u\n", memLen);
    }
  }
  // TODO?
  // final latency decided here
  if (this->fReg.stall == datamem_stall_lock) {
    this->fReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles);
    if (verbose)
      printf("In mem phase, this->fReg.stall == datamem_stall_lock, this->fReg.stall:%d, cycles:%d\n", this->fReg.stall, cycles); //yyx
  }
  if (this->dReg.stall == datamem_stall_lock){
    this->dReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles);
    if (verbose)
      printf("In mem phase, this->dReg.stall == datamem_stall_lock, this->dReg.stall:%d, cycles:%d\n", this->dReg.stall, cycles); //yyx
  }
  #ifdef ALL_STALL_YYX
  if (this->fReg.stall == datamem_stall_lock-1) {
    this->fReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles); 
    if (verbose)
      printf("In mem phase, this->fReg.stall == datamem_stall_lock-1, detected memhazard last phase, update new latency in mem phase, this->fReg.stall:%d, cycles:%d\n", this->fReg.stall, cycles); //yyx
  }
  if (this->dReg.stall == datamem_stall_lock-1){
    this->dReg.stall = std::max<uint32_t>(datamem_lat_lower_bound, cycles); 
    if (verbose)
      printf("In mem phase, this->dReg.stall == datamem_stall_lock-1, detected memhazard last phase, update new latency in mem phase, this->dReg.stall:%d, cycles:%d\n", this->dReg.stall, cycles); //yyx
  }
  #endif
  
  if (verbose) {
    printf("Memory Access: %s\n", INSTNAME[inst]);
  }

  #ifndef ALL_STALL_YYX
  // Check for data hazard and forward data
  if (writeReg && destReg != 0) {
    if (this->dRegNew.rs1 == destReg) {
      // Avoid overwriting recent values
      if (this->executeWriteBack == false ||
          (this->executeWriteBack && this->executeWBReg != destReg)) {
        this->dRegNew.op1 = out;
        this->memoryWriteBack = true;
        this->memoryWBReg = destReg;
        this->history.dataHazardCount++;
        if (verbose)
          printf("  Forward Data %s to Decode op1\n", REGNAME[destReg]);
      }
    }
    if (this->dRegNew.rs2 == destReg) {
      // Avoid overwriting recent values
      if (this->executeWriteBack == false ||
          (this->executeWriteBack && this->executeWBReg != destReg)) {
        this->dRegNew.op2 = out;
        this->memoryWriteBack = true;
        this->memoryWBReg = destReg;
        this->history.dataHazardCount++;
        if (verbose)
          printf("  Forward Data %s to Decode op2\n", REGNAME[destReg]);
      }
    }
    // Corner case of forwarding mem load data to stalled decode reg
    if (this->dReg.stall) {
      if (this->dReg.rs1 == destReg) this->dReg.op1 = out;
      if (this->dReg.rs2 == destReg) this->dReg.op2 = out;
      this->memoryWriteBack = true;
      this->memoryWBReg = destReg;
      this->history.dataHazardCount++;
      if (verbose)
          printf("  Forward Data %s to Decode op2\n", REGNAME[destReg]);
    }
  }
    // yyx below: add float logic
  if (writeFloatReg) {
    if (this->dRegNew.rs1 == destReg) {
      // Avoid overwriting recent values
      if (this->executeWriteBack == false ||
          (this->executeWriteBack && this->executeWBReg != destReg)) {
        this->dRegNew.floatop1 = floatout;
        this->memoryWriteBack = true;
        this->memoryWBReg = destReg;
        this->history.dataHazardCount++;
        if (verbose)
          printf("  Forward Data %s to Decode floatop1\n", FLOATREGNAME[destReg]);
      }
    }
    if (this->dRegNew.rs2 == destReg) {
      // Avoid overwriting recent values
      if (this->executeWriteBack == false ||
          (this->executeWriteBack && this->executeWBReg != destReg)) {
        this->dRegNew.floatop2 = floatout;
        // printf("read bypass float mem, floatout:%lf, this->dRegNew.floatop2:%lf\n", floatout, this->dRegNew.floatop2);
        this->memoryWriteBack = true;
        this->memoryWBReg = destReg;
        this->history.dataHazardCount++;
        if (verbose)
          printf("  Forward Data %s to Decode floatop2\n", FLOATREGNAME[destReg]);
      }
    }
    // Corner case of forwarding mem load data to stalled decode reg
    if (this->dReg.stall) {
      if (this->dReg.rs1 == destReg) this->dReg.floatop1 = floatout;
      if (this->dReg.rs2 == destReg) this->dReg.floatop2 = floatout;
      this->memoryWriteBack = true;
      this->memoryWBReg = destReg;
      this->history.dataHazardCount++;
      if (verbose){
      // yyx below
        printf("Corner case of forwarding mem load data to stalled decode reg\n");
        printf("floatout:%lf\n", floatout);
        if (this->dReg.rs1 == destReg) printf("  Forward Data %s to Decode floatop1:%lf\n", FLOATREGNAME[destReg], this->dReg.floatop1);
        if (this->dReg.rs2 == destReg) printf("  Forward Data %s to Decode floatop2:%lf\n", FLOATREGNAME[destReg], this->dReg.floatop2);
      // yyx above
          // printf("  Forward Data %s to Decode floatop2\n", FLOATREGNAME[destReg]);        
      }
    }
  #else
  // Check for data hazard and forward data
  // Avoid overwriting recent values
  // no before hazard || need to wait component latency
  if (!this->ifHazardBefore && !this->ifExeAddComponentLatency){
    // if new hazard
    if ((writeFloatReg || writeReg) && (dRegNew.rs1 == destReg || this->dRegNew.rs2 == destReg)) {
      if (verbose)
        printf("in data hazard of data in mem phase yyx\n");
      // TODO: what is memoryHazardCount, it seems it just appears at exe_decode hazard, but no in other
      // if (readMem) this->history.memoryHazardCount++;
      // else this->history.dataHazardCount++;
      this->history.dataHazardCount++;
      this->dRegNew.bubble = true;
      // this->dRegNew.stall = 3;
      this->fReg.stall += 1; //latency calculated before
      this->pc -= 4;
  #ifdef ALL_STALL_YYX
      this->ifHazardBefore = true;
  #endif           
      if (verbose){
        if (this->dRegNew.rs1 == destReg) 
          printf(" stall %d times because incurs mem_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[destReg]);
        if (this->dRegNew.rs2 == destReg) 
          printf(" stall %d times because incurs mem_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[destReg]);
      }
    }
  }
  #endif

  // yyx above

  this->mRegNew.bubble = false;
  this->mRegNew.stall = false;
  this->mRegNew.pc = eRegPC;
  this->mRegNew.inst = inst;
  this->mRegNew.op1 = op1;
  this->mRegNew.op2 = op2;
  this->mRegNew.destReg = destReg;
  this->mRegNew.writeReg = writeReg;
  this->mRegNew.out = out;
  // yyx below: float
  this->mRegNew.writeFloatReg = writeFloatReg;
  this->mRegNew.floatop1 = floatop1;
  this->mRegNew.floatop2 = floatop2;
  this->mRegNew.floatout = floatout;
  // yyx above       
}
  
int64_t Simulator::handleSystemCall(int64_t op1, int64_t op2) {
  int64_t type = op2; // reg a7
  int64_t arg1 = op1; // reg a0
  switch (type) {
  case 0: { // print string
    uint32_t addr = arg1;
    char ch = this->memory->getByte(addr);
    while (ch != '\0') {
      printf("%c", ch);
      ch = this->memory->getByte(++addr);
    }
    break;
  }
  case 1: // print char
    printf("%c", (char)arg1);
    break;
  case 2: // print num
    printf("%d", (int32_t)arg1);
    break;
  case 3:
  case 93: // exit
    printf("Program exit from an exit() system call\n");
    if (shouldDumpHistory) {
      printf("Dumping history to dump.txt...");
      this->dumpHistory();
    }
    this->printStatistics();
    exit(0);
  case 4: // read char
    scanf(" %c", (char*)&op1);
    break;
  case 5: // read num
    scanf(" %ld", &op1);
    break;
  case 6: // print float
    // printf("%f", (float)arg1);
    // yyx below
    // bug here, parameter must be integer value, so we shoule enforce transformation
    printf("%f", *(float*)(&arg1));
    // yyx above
    break;
  default:
    this->panic("Unknown syscall type %d\n", type);
  }
  return op1;
}

void Simulator::printInfo() {
  printf("------------ CPU STATE ------------\n");
  printf("PC: 0x%lx\n", this->pc);
  printf("Integer registers below:\n"); // yyx
  for (uint32_t i = 0; i < 32; ++i) {
    printf("%s: 0x%.8lx(%ld) ", REGNAME[i], this->reg[i], this->reg[i]);
    if (i % 4 == 3)
      printf("\n");
  }
  // yyx below
  printf("float registers below:\n"); // yyx
  for (uint32_t i = 0; i < 32; ++i) {
    // this->floatreg[i] = 1.25+i;
    uint64_t tmp_uint64 = *(uint64_t *)(&(this->floatreg[i]));
    // printf("%s: 0x%.16lx(%lf) ", FLOATREGNAME[i], tmp_uint64, this->floatreg[i]);
    printf("%s: 0x%.16lx(%lf) ", FLOATREGNAME[i], tmp_uint64, cutDoubleReg2low32bit2Float(this->floatreg[i]));
    if (i % 4 == 3)
      printf("\n");
  }
  // yyx above
#ifdef SCOREBOARD_YYX
  printf("scoreboard information below:\n");
  printf("FU status:\n");
  printf("FUType\tIntraNumber\tBusy\tOp\t\tFi\tFj\tFk\tQj\tQk\tRj\tRk\teRegs\texeLeftTime\t\n");
  for (size_t FUType = 0; FUType < number_of_component_type; FUType++)
  {
    for (size_t FUIntraNumber = 0; FUIntraNumber < number_component_per_type; FUIntraNumber++) {
      printf("%d\t\t\t%d\t\t\t%d\t\t\t%d\t\t%s\t%s\t%s\t%d\t%d\t%d\t%d\t%d\t\t\t%u\t\n",\
      FUType, FUIntraNumber, busyFU[FUType][FUIntraNumber], OpFU[FUType][FUIntraNumber], \
      (FiFU[FUType][FUIntraNumber] >= 0) ? REGNAME[FiFU[FUType][FUIntraNumber]] : "", \
      (FjFU[FUType][FUIntraNumber] >= 0) ? REGNAME[FjFU[FUType][FUIntraNumber]] : "", \
      (FkFU[FUType][FUIntraNumber] >= 0) ? REGNAME[FkFU[FUType][FUIntraNumber]] : "", \
      QjFU[FUType][FUIntraNumber], QkFU[FUType][FUIntraNumber], RjFU[FUType][FUIntraNumber], RkFU[FUType][FUIntraNumber],\
      eRegFU[FUType][FUIntraNumber] != nullptr, exeLeftTime[FUType][FUIntraNumber]);
    }
  }
  printf("register result status:\n");
  for (size_t i = 0; i < RISCV::REGNUM; i++)
    printf("%s\t", REGNAME[i]);
  printf("\n");
  for (size_t i = 0; i < RISCV::REGNUM; i++){
    printf("%d\t", regFU[i]);
    if (0 == i) printf("\t");
  }
  printf("\n");
#endif
  printf("-----------------------------------\n");
}

void Simulator::printStatistics() {
  printf("------------ STATISTICS -----------\n");
  printf("Number of Instructions: %u\n", this->history.instCount);
  printf("Number of Cycles: %u\n", this->history.cycleCount);
  printf("Avg Cycles per Instrcution: %.4f\n",
         (float)this->history.cycleCount / this->history.instCount);
  printf("Branch Perdiction Accuacy: %.4f (Strategy: %s)\n",
         (float)this->history.predictedBranch /
             (this->history.predictedBranch + this->history.unpredictedBranch),
         this->branchPredictor->strategyName().c_str());
  printf("Number of Control Hazards: %u\n",
         this->history.controlHazardCount);
  printf("Number of Data Hazards: %u\n", this->history.dataHazardCount);
  printf("Number of Memory Hazards: %u\n",
         this->history.memoryHazardCount);
  #ifdef SCOREBOARD_YYX
  printf("Number of Structure Hazards: %u\n", this->history.structureHazardCount);
  printf("Number of WAW Hazards: %u\n", this->history.WAWHazardCount);
  printf("Number of WAR Hazards: %u\n", this->history.WARHazardCount);
  printf("Number of control flush counts: %u\n", this->history.controlFlushPipelineCount);
  #endif
  printf("-----------------------------------\n");
  //this->memory->printStatistics();
}

std::string Simulator::getRegInfoStr() {
  std::string str;
  char buf[65536];

  str += "------------ CPU STATE ------------\n";
  sprintf(buf, "PC: 0x%lx\n", this->pc);
  str += buf;
  for (uint32_t i = 0; i < 32; ++i) {
    sprintf(buf, "%s: 0x%.8lx(%ld) ", REGNAME[i], this->reg[i], this->reg[i]);
    str += buf;
    if (i % 4 == 3) {
      str += "\n";
    }
  }
  // yyx below 
  for (uint32_t i = 0; i < 32; ++i) {
    uint64_t tmp_uint64 = *(uint64_t *)(&(this->floatreg[i]));
    sprintf(buf, "%s: 0x%.16lx(%lf) ", FLOATREGNAME[i], tmp_uint64, cutDoubleReg2low32bit2Float(this->floatreg[i]));
    str += buf;
    if (i % 4 == 3) {
      str += "\n";
    }
  }
  // yyx above 
  str += "-----------------------------------\n";

  return str;
}

void Simulator::dumpHistory() {
  std::ofstream ofile("dump.txt");
  ofile << "================== Excecution History =================="
        << std::endl;
  for (uint32_t i = 0; i < this->history.instRecord.size(); ++i) {
    ofile << this->history.instRecord[i];
    ofile << this->history.regRecord[i];
  }
  ofile << "========================================================"
        << std::endl;
  ofile << std::endl;

  ofile << "====================== Memory Dump ======================"
        << std::endl;
  ofile << this->memory->dumpMemory();
  ofile << "========================================================="
        << std::endl;
  ofile << std::endl;

  ofile.close();
}

void Simulator::panic(const char *format, ...) {
  char buf[BUFSIZ];
  va_list args;
  va_start(args, format);
  vsprintf(buf, format, args);
  fprintf(stderr, "%s", buf);
  va_end(args);
  this->dumpHistory();
  fprintf(stderr, "Execution history and memory dump in dump.txt\n");
  exit(-1);
}


float Simulator::cutDoubleReg2low32bit2Float(double op1) {
  return (*(float *)(&op1));
}
void Simulator::saveFloat2DoubleReg2low32bit(float floatop, double &dop) {
  *(float *)(&dop) = floatop;
}

#ifdef SCOREBOARD_YYX
void Simulator::clearFUScoreboardStatus(int FUNumber){
  if (FUNumber < 0)
    panic("unvalid FUNumber in clearFUScoreboardStatus\n");
  int FUType = NONE, FUIntraNumber = NONE;
  calFUTypeAndFreeFUIntraNumber(FUNumber, FUType, FUIntraNumber);
  if (FUType < 0){
    panic("FUType not valid in clearFUScoreboardStatus\n");
  }
  if (true == busyFU[FUType][FUIntraNumber]){
    if (verbose)
      printf("clearFUScoreboardStatus clear FUType, FUIntraNumber:%d, %d\n", FUType, FUIntraNumber);
    if (NONE != FiFU[FUType][FUIntraNumber]) regFU[FiFU[FUType][FUIntraNumber]] = NONE;
    busyFU[FUType][FUIntraNumber] = false;
    OpFU[FUType][FUIntraNumber] = NONE;
    FiFU[FUType][FUIntraNumber] = NONE;
    FjFU[FUType][FUIntraNumber] = NONE;
    FkFU[FUType][FUIntraNumber] = NONE;
    QjFU[FUType][FUIntraNumber] = NONE;
    QkFU[FUType][FUIntraNumber] = NONE;
    RjFU[FUType][FUIntraNumber] = 0;
    RkFU[FUType][FUIntraNumber] = 0;
    if (nullptr != eRegFU[FUType][FUIntraNumber]){
      panic("clear eRegFU in clearFUScoreboardStatus\n");
      delete eRegFU[FUType][FUIntraNumber];
      eRegFU[FUType][FUIntraNumber] = nullptr;
    }
    exeLeftTime[FUType][FUIntraNumber] = 0;
  }
}

int Simulator::getFreeFUIntraNumber(int FUType){
  for(int i = 0; i < number_component_per_type; ++i){
    if (!busyFU[FUType][i]) return i;
  }
  return NONE;
}

int Simulator::calFUNumber(int FUType, int FUIntraNumber){
  if (FUType < 0 || FUIntraNumber < 0)
    panic("calFUNumber unvalid\n");
  return FUType*number_component_per_type+FUIntraNumber;
}

void Simulator::calFUTypeAndFreeFUIntraNumber(int FUNumber, int &FUType, int &FUIntraNumber){
  if (FUNumber < 0)
    panic("calFUTypeAndFreeFUIntraNumber invalid\n");
  FUType = FUNumber / number_component_per_type;
  FUIntraNumber = FUNumber % number_component_per_type;
  
}
#endif