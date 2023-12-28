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

#ifdef REORDER_YYX
ReorderBufferIndex::ReorderBufferIndex(){
  head = 0;
  tail = 0;
  full = false;
}

int ReorderBufferIndex::push(){
  if (full)
    return NONE;
  int ret = tail;
  tail = (tail+1)%kReorderBufferSize;
  if (tail == head) 
    full = true;
  return ret;
}

int ReorderBufferIndex::top(){
  if (!full && tail == head) // blank
    return -1;
  return head;
}

void ReorderBufferIndex::pop(){
  if (!full && tail == head) {
    // blank
    fprintf(stderr, "ROB blank but still pop\n");
    exit(-1);
  }
  head = (head+1)%kReorderBufferSize;
  full = false;
}

#endif

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
#ifdef REORDER_YYX
  jumpStall = false;
  commitStallTime = 0;
#endif
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
  memset(&this->eReg, 0, sizeof(this->eReg));
  memset(&this->eRegNew, 0, sizeof(this->eRegNew));
  memset(&this->mReg, 0, sizeof(this->mReg));
  memset(&this->mRegNew, 0, sizeof(this->mRegNew));

  // Insert Bubble to later pipeline stages
  fReg.bubble = true;
  dReg.bubble = true;
  eReg.bubble = true;
  mReg.bubble = true;

#ifdef REORDER_YYX
  // initial ROB, Register stat, RS
  for (size_t i = 0; i < kReorderBufferSize; i++)
  {
    cleanReorderBufferEntry(&reorderBuffer[i]);
  }
  
  for (size_t i = 0; i < REGNUM; i++)
  {
    registerStatus[i].busy = false;
    registerStatus[i].reorderEntryIndex = NONE;
  }
  
  for (size_t alu_t = 0; alu_t < number_of_component; alu_t++)
  {
    for (size_t alu_ind = 0; alu_ind < kFUNumberPerComponent; alu_ind++)
    {
      ReservationStationEntry *rsEntry_t = &reservationStations[alu_t][alu_ind];
      cleanReservationStationEntry(rsEntry_t);
    }
  }

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

    // THE EXECUTION ORDER of these functions are important!!!
    // Changing them will introduce strange bugs
#ifndef REORDER_YYX
    this->fetch();  
#endif    
    this->issue();
    this->excecute();
#ifdef REORDER_YYX
    this->writeBack();
    this->commit();
#else
    this->memoryAccess();
    this->writeBack();
#endif    


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
    if (!this->dReg.stall) this->dReg = this->dRegNew;
    else this->dReg.stall--;


    // yyx below
    // printf("after swap\n");
    // printf("this->dReg.stall?:%u\n",this->dReg.stall);
    // printf("this->dRegNew.stall?:%u\n",this->dRegNew.stall);
    // yyx above    
    this->eReg = this->eRegNew;
    this->mReg = this->mRegNew;
    memset(&this->fRegNew, 0, sizeof(this->fRegNew));
    memset(&this->dRegNew, 0, sizeof(this->dRegNew));
    memset(&this->eRegNew, 0, sizeof(this->eRegNew));
    memset(&this->mRegNew, 0, sizeof(this->mRegNew));

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
#ifndef REORDER_YYX
void Simulator::decode() {
#else
void Simulator::issue() {
  // fetch first
  if (this->pc % 2 != 0) {
    this->panic("Illegal PC 0x%x!\n", this->pc);
  }

  uint32_t inst = this->memory->getInt(this->pc);
  uint32_t len = 4;
  uint64_t pc_t = this->pc;
  if (this->verbose) {
    printf("Fetched instruction 0x%.8x at address 0x%lx\n", inst, this->pc);
  }
  this->pc = this->pc + len;

  // issue
  if (verbose) printReorderStructure();

#endif
#ifndef REORDER_YYX
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
#endif

  std::string instname = "";
  std::string inststr = "";
  std::string deststr, op1str, op2str, offsetstr;
  Inst insttype = Inst::UNKNOWN;
  // uint32_t inst = this->fReg.inst;
  int64_t op1 = 0, op2 = 0, offset = 0; // op1, op2 and offset are values
#ifdef REORDER_YYX
  RegId dest = NONE, reg1 = NONE, reg2 = NONE; // reg1 and reg2 are operands
#else
  RegId dest = 0, reg1 = -1, reg2 = -1; // reg1 and reg2 are operands
#endif
  // yyx below : float
  std::string floatop1str, floatop2str;
  double floatop1 = 0, floatop2 = 0;
  // yyx above

  // Reg for 32bit instructions
  if (len == 4) // 32 bit instruction
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
      #ifdef REORDER_YYX
      offset = imm_i;
      #endif
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
          this->panic("Unknown 32bit funct7 0x%x\n", temp);
        }
        break;
      case 0x1:
        if (temp == 0x0) {
          instname = "sllw";
          insttype = SLLW;
        } else {
          this->panic("Unknown 32bit funct7 0x%x\n", temp);
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
          this->panic("Unknown 32bit funct7 0x%x\n", temp);
        }
        break;
      default:
        this->panic("Unknown 32bit funct3 0x%x\n", funct3);
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
    sprintf(buf, "0x%lx: %s\n", pc, inststr.c_str());
    this->history.instRecord.push_back(buf);
#ifndef DEBUG_YYX
    if (verbose) {
      printf("Decoded instruction 0x%.8x as %s\n", inst, inststr.c_str());
    }
#endif

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

#ifdef REORDER_YYX
  // control hazard: stall
  if (jumpStall){
    this->pc -= 4;
    if (verbose) printf("issue: stall since control hazard\n");
    this->history.controlHazardCount++;
    return;
  }
  // find free RS
  int RS_index = findRSIndexForInsttype(insttype);
  if (NONE == RS_index){
    // no free RS
    this->pc -= 4;
    if (verbose) {
      printf("issue: no free RS for component:%d\n", getComponentUsed(insttype));
    }
    this->history.structureRSHazardCount++;
    return;
  }
  // have free RS, find free ROB
  int ROB_index = reorderBufferIndex.push();
  if (NONE == ROB_index){
    // no free ROB
    this->pc -= 4;
    if (verbose) printf("issue: no free ROB\n");
    this->history.structureROBHazardCount++;
    return;
  }
  // control hazard
  if (isBranch(insttype) || isJump(insttype)){
    jumpStall = true; // TODO; jumpstall = 0, recover pc
    this->pc -= 4;
    this->history.controlHazardCount++;
    if (verbose) printf("issue:incur control hazard\n");
  }
  // no structure hazard, mark ROB...
  if (verbose) {
    printf("issue: Decoded instruction 0x%.8x as %s at address 0x%lx\n", inst, inststr.c_str(), pc_t);
  }  

  ReservationStationEntry *rsEntry_t = &reservationStations[getComponentUsed(insttype)][RS_index];
  ReorderBufferEntry *robEntry_t = &reorderBuffer[ROB_index];
  rsEntry_t->busy = true;
  rsEntry_t->destination = ROB_index;
  robEntry_t->instType = insttype;
  robEntry_t->destination = dest;
  robEntry_t->ready = false;
  bool dataHazard = false;
  // mark reg1/ reg2
  if (NONE != reg1){
    if (registerStatus[reg1].busy){
      int track_ROB_index = registerStatus[reg1].reorderEntryIndex;
      if (track_ROB_index < 0)
        panic("track_ROB_index unvalid\n");
      if (reorderBuffer[track_ROB_index].ready){
        rsEntry_t->Vj = reorderBuffer[track_ROB_index].value;
        rsEntry_t->Qj = NONE;
      }else{
        rsEntry_t->Qj = track_ROB_index;
        dataHazard = true;
      }
    }else{
      rsEntry_t->Vj = this->reg[reg1];
      rsEntry_t->Qj = NONE;
    }
  }
  if (NONE != reg2){
    if (registerStatus[reg2].busy){
      int track_ROB_index = registerStatus[reg2].reorderEntryIndex;
      if (track_ROB_index < 0)
        panic("track_ROB_index unvalid\n");
      if (reorderBuffer[track_ROB_index].ready){
        rsEntry_t->Vk = reorderBuffer[track_ROB_index].value;
        rsEntry_t->Qk = NONE;
      }else{
        rsEntry_t->Qk = track_ROB_index;
        dataHazard = true;
      }
    }else{
      rsEntry_t->Vk = this->reg[reg2];
      rsEntry_t->Qk = NONE;
    }
  }
  if (NONE != dest){
    RegisterStatusEntry *regEntry_t = &registerStatus[dest];
    regEntry_t->reorderEntryIndex = ROB_index;
    regEntry_t->busy = true;
    // robEntry_t->destination = dest;
  }
  this->history.dataHazardCount += dataHazard; 
  uint32_t opcode = inst & 0x7F;
  // for I type directly using op2 as 
  if (OP_IMM == opcode || OP_IMM32 == opcode){
    rsEntry_t->Vk = op2;
  }
  rsEntry_t->address = offset;
  rsEntry_t->pc = pc_t;
  rsEntry_t->op = insttype;

  // // load/store add address record
  // if (isReadMem(insttype) || isWriteMem(insttype)){
  // }
#else
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
#endif 
}

void Simulator::excecute() {
#ifdef REORDER_YYX
  if (verbose) printReorderStructure();
  for (size_t alu_t = 0; alu_t < number_of_component; alu_t++)
  {
    for (size_t alu_ind = 0; alu_ind < kFUNumberPerComponent; alu_ind++)
    {
      ReservationStationEntry *rsEntry_t = &reservationStations[alu_t][alu_ind];
      // if execution start
      if (rsEntry_t->start){
        // load special judge
        if (isReadMem(rsEntry_t->op)){
          if (!rsEntry_t->addressDone){
            rsEntry_t->addressDone = true;
            if (rsEntry_t->exeLeftTime > 0) rsEntry_t->exeLeftTime--;
            if (verbose) printf("load step 1\n");
          }else if (!rsEntry_t->load2Start){
            // judge if can start load
            if (verbose) printf("load judge\n");
            bool ifCanLoad = true;
            int current_rob_ind = rsEntry_t->destination;
            for (size_t rob_ind_t = reorderBufferIndex.top(); rob_ind_t != current_rob_ind; rob_ind_t = (rob_ind_t+1)%kReorderBufferSize)
            {
              const ReorderBufferEntry rob_entry_t = reorderBuffer[rob_ind_t];
              if (isWriteMem(rob_entry_t.instType)){
                if (!rob_entry_t.ready || rob_entry_t.address == rsEntry_t->address){ // 没算出来或者地址一样都不能load
                  ifCanLoad = false;
                  break;
                }
              }
            }
            // Can load
            if (ifCanLoad){
              if (verbose) {
                printf("Execute load 2\n");
              }
              rsEntry_t->load2Start = true;

              int64_t out = rsEntry_t->address;
              uint32_t cycles = 0;
              uint32_t memLen = rsEntry_t->memLen;
              bool readSignExt = rsEntry_t->readSignExt;
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
              // take memory cyle into execution time
              // special judge for x0
              if (REG_ZERO == reorderBuffer[rsEntry_t->destination].destination) rsEntry_t->result = 0;
              else rsEntry_t->result = out;
              rsEntry_t->exeLeftTime += cycles;
            }
          } else{ // rsEntry_t->load2Start = 1
            if (verbose) printf("load - cycle\n");
            if (rsEntry_t->exeLeftTime > 0) rsEntry_t->exeLeftTime--;
          }
        }else{ // normal execution
          if (rsEntry_t->exeLeftTime > 0) rsEntry_t->exeLeftTime--;
        }
      }else if (rsEntry_t->busy && NONE == rsEntry_t->Qj && ( NONE == rsEntry_t->Qk || isWriteMem(rsEntry_t->op))) {  // if execution ready to start; store can delay getting Qk
        this->history.instCount++;

        // get essencial variables
        Inst inst = rsEntry_t->op;
        int64_t op1 = rsEntry_t->Vj;
        int64_t op2 = rsEntry_t->Vk;
        int64_t offset = rsEntry_t->address; // to deal

        uint64_t dRegPC = rsEntry_t->pc;
        bool writeReg = false;
        RegId destReg = rsEntry_t->destination;
        int64_t out = 0;

        bool writeMem = false;
        bool readMem = false;
        bool readSignExt = false;
        uint32_t memLen = 0;
        bool branch = false;

        if (verbose) {
          printf("Execute: %s, at address 0x%lx\n", INSTNAME[inst], rsEntry_t->pc);
        }

        switch (inst) {
        case LUI:
          writeReg = true;
          out = offset << 12;
          break;
        case AUIPC:
          writeReg = true;
          out = dRegPC + (offset << 12);
          break;
        case JAL:
          writeReg = true;
          out = dRegPC + 4;
        #ifdef REORDER_YYX
          dRegPC = dRegPC + offset; // may not using op1
        #else
          dRegPC = dRegPC + op1;
        #endif
          branch = true;
          break;
        case JALR:
          writeReg = true;
          out = dRegPC + 4;
        #ifdef REORDER_YYX
          dRegPC = (op1 + offset) & (~(uint64_t)1); // may not using op1
        #else
          dRegPC = (op1 + op2) & (~(uint64_t)1);
        #endif          
          branch = true;
          break;
        case BEQ:
          if (op1 == op2) {
            branch = true;
            dRegPC = dRegPC + offset;
          }
          break;
        case BNE:
          if (op1 != op2) {
            branch = true;
            dRegPC = dRegPC + offset;
          }
          break;
        case BLT:
          if (op1 < op2) {
            branch = true;
            dRegPC = dRegPC + offset;
          }
          break;
        case BGE:
          if (op1 >= op2) {
            branch = true;
            dRegPC = dRegPC + offset;
          }
          break;
        case BLTU:
          if ((uint64_t)op1 < (uint64_t)op2) {
            branch = true;
            dRegPC = dRegPC + offset;
          }
          break;
        case BGEU:
          if ((uint64_t)op1 >= (uint64_t)op2) {
            branch = true;
            dRegPC = dRegPC + offset;
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
        default:
          this->panic("Unknown instruction type %d\n", inst);
        }

        // Pipeline Related Code
        // control hazard
        if (isBranch(inst)) {
          // Control Hazard Here same as isJump
          this->pc = branch?dRegPC:rsEntry_t->pc+4;
          this->history.controlHazardCount++;
          if (verbose)
            printf("in exe, branch 1, need to jump to %p\n", this->pc);
          this->jumpStall = false;
        }
        if (isJump(inst)) {
          // Control hazard here
          this->pc = dRegPC;
          this->history.controlHazardCount++;
          this->jumpStall = false;
          if (verbose)
            printf("in exe, jump, need to jump to %p\n", this->pc);          
        }

        // mark ROB and rs
        uint32_t lat = this->latency[getComponentUsed(inst)];

        rsEntry_t->start = true;
        rsEntry_t->addressDone = false; // for load
        rsEntry_t->load2Start = false; // for load
        // +  // kEmulateLatency to simulate the 3 stage transfer latency since it don't really have middle registers
        rsEntry_t->exeLeftTime = (isWriteMem(inst) || isReadMem(inst)) ? kEmulateLatency+this->latency[ALU] : kEmulateLatency+lat; // if readmem or writemem, then just add ALU's latency and later decide
        // special judge for x0
        if (REG_ZERO == reorderBuffer[rsEntry_t->destination].destination) rsEntry_t->result = 0;
        else rsEntry_t->result = out; // for general
        rsEntry_t->address = out; // for load
        rsEntry_t->memLen = memLen; // for load
        rsEntry_t->readSignExt = readSignExt; // for load
        reorderBuffer[rsEntry_t->destination].address = out; // for store
        reorderBuffer[rsEntry_t->destination].memLen = memLen; // for store
      }
    }
  }
#else
  if (this->dReg.stall) {
    if (verbose) {
      printf("Execute: Stall\n");
      printf("Execute: Stall : %d\n", this->dReg.stall);
      printf("Execute: bubble : %d\n", this->dReg.bubble);
    }
    this->eRegNew.bubble = true;
    return;
  }
  if (this->dReg.bubble) {
    if (verbose) {
      printf("Execute: Bubble\n");
      printf("Execute: Stall : %d\n", this->dReg.stall);
      printf("Execute: bubble : %d\n", this->dReg.bubble);      
    }
    this->eRegNew.bubble = true;
    return;
  }

  if (verbose) {
    printf("Execute: %s\n", INSTNAME[this->dReg.inst]);
  }

  this->history.instCount++;

  Inst inst = this->dReg.inst;
  int64_t op1 = this->dReg.op1;
  int64_t op2 = this->dReg.op2;
  int64_t offset = this->dReg.offset;
  bool predictedBranch = this->dReg.predictedBranch;

  uint64_t dRegPC = this->dReg.pc;
  bool writeReg = false;
  RegId destReg = this->dReg.dest;
  int64_t out = 0;
  // yyx below: float
  bool writeFloatReg = false;
  double floatop1 = this->dReg.floatop1;
  double floatop2 = this->dReg.floatop2;
  // printf("excecute() initial:this->dReg.floatop2:%lf\n", this->dReg.floatop2);
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

  switch (inst) {
  case LUI:
    writeReg = true;
    out = offset << 12;
    break;
  case AUIPC:
    writeReg = true;
    out = dRegPC + (offset << 12);
    break;
  case JAL:
    writeReg = true;
    out = dRegPC + 4;
    dRegPC = dRegPC + op1;
    branch = true;
    break;
  case JALR:
    writeReg = true;
    out = dRegPC + 4;
    dRegPC = (op1 + op2) & (~(uint64_t)1);
    branch = true;
    break;
  case BEQ:
    if (op1 == op2) {
      branch = true;
      dRegPC = dRegPC + offset;
    }
    break;
  case BNE:
    if (op1 != op2) {
      branch = true;
      dRegPC = dRegPC + offset;
    }
    break;
  case BLT:
    if (op1 < op2) {
      branch = true;
      dRegPC = dRegPC + offset;
    }
    break;
  case BGE:
    if (op1 >= op2) {
      branch = true;
      dRegPC = dRegPC + offset;
    }
    break;
  case BLTU:
    if ((uint64_t)op1 < (uint64_t)op2) {
      branch = true;
      dRegPC = dRegPC + offset;
    }
    break;
  case BGEU:
    if ((uint64_t)op1 >= (uint64_t)op2) {
      branch = true;
      dRegPC = dRegPC + offset;
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

  // Pipeline Related Code
  if (isBranch(inst)) {
    #ifndef ALL_STALL_YYX
    if (predictedBranch == branch) {
      this->history.predictedBranch++;
    } else {
      // Control Hazard Here
      // BUG FIX START
      // this->pc = this->anotherPC;
      if (branch)
        this->pc = dRegPC;
      else
        this->pc = this->dReg.pc + 4;
      // BUG FIX END         
      this->fRegNew.bubble = true;
      this->dRegNew.bubble = true;
      this->history.unpredictedBranch++;
      this->history.controlHazardCount++;
    }
    // this->dReg.pc: fetch original inst addr, not the modified one
    this->branchPredictor->update(this->dReg.pc, branch);
    #else
    if (branch){
      // Control Hazard Here same as isJump
      this->pc = dRegPC;
      this->fRegNew.bubble = true;
      this->dRegNew.bubble = true;
      this->history.controlHazardCount++;
      this->ifHazardBefore = true;
      if (verbose)
        printf("in exe, branch 1, need to jump to %p\n", this->pc);
    }
    #endif    
  }
  if (isJump(inst)) {
    // Control hazard here
    this->pc = dRegPC;
    this->fRegNew.bubble = true;
    this->dRegNew.bubble = true;
    this->history.controlHazardCount++;
    #ifdef ALL_STALL_YYX
    this->ifHazardBefore = true;
    #endif
  }
  if (isReadMem(inst)) {
    if (this->dRegNew.rs1 == destReg || this->dRegNew.rs2 == destReg) {
      // yyx below
      // printf("excecute have memoryHazardCount\n");
      // yyx above      
      #ifndef ALL_STALL_YYX
      this->fRegNew.stall = 2;
      this->dRegNew.stall = 2;
      this->eRegNew.bubble = true;
      this->history.cycleCount--;
      this->history.memoryHazardCount++;      
      #else
      if (verbose)
        printf("in data hazard of memory yyx\n");
      this->history.memoryHazardCount++;
      this->dRegNew.bubble = true;
      // this->dRegNew.stall = 3;
      ifMemHazard = true;
      this->fReg.stall = 1;
      this->pc -= 4;
      #ifdef ALL_STALL_YYX
      this->ifHazardBefore = true;
      #endif      
      if (verbose){
        if (this->dRegNew.rs1 == destReg) 
          printf(" stall 1 times and let mem phase to add stall because incurs exe_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", REGNAME[this->dRegNew.rs1], REGNAME[destReg]);
        if (this->dRegNew.rs2 == destReg) 
          printf(" stall 1 times and let mem phase to add stall because incurs exe_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", REGNAME[this->dRegNew.rs2], REGNAME[destReg]);
      }
      #endif
    }

  }
  #ifndef ALL_STALL_YYX
  // inside the execute stage, there's ALU and other components
  // latency analysis of each instruction inside execute stage
  uint32_t lat = this->latency[getComponentUsed(inst)];
  // stall the fetch & decode stage to reflect the latency
  this->fRegNew.stall = std::max<uint32_t>(lat, this->fRegNew.stall);
  this->dRegNew.stall = std::max<uint32_t>(lat, this->dRegNew.stall);
  #endif
      // yyx below
      // printf("excecute have memoryHazardCount,  this->dRegNew.stall:%u\n",  this->dRegNew.stall);
      // printf("excecute have memoryHazardCount,  lat:%u\n",  lat);
      // printf("excecute have memoryHazardCount,  inst:%u\n",  inst);
      // printf("excecute have memoryHazardCount,  getComponentUsed(inst):%u\n",  getComponentUsed(inst));
      // printf("excecute have memoryHazardCount,  this->latency[getComponentUsed(inst)]:%u\n",  this->latency[getComponentUsed(inst)]);
      // yyx above 
  // Check for data hazard and forward data
  if ((writeReg && destReg != 0 && !isReadMem(inst)) || \
  (writeFloatReg && !isReadMem(inst)) ) {   // Check for data hazard and forward data: float, yyx
    if (verbose)
      printf("excecute need writereg\n");
    #ifndef ALL_STALL_YYX
    if (this->dRegNew.rs1 == destReg) {
      this->dRegNew.op1 = out;
      this->executeWBReg = destReg;
      this->executeWriteBack = true;
      this->history.dataHazardCount++;
      if (verbose)
        printf("  Forward Data %s to Decode op1\n", REGNAME[destReg]);
    }
    if (this->dRegNew.rs2 == destReg) {
      this->dRegNew.op2 = out;
      this->executeWBReg = destReg;
      this->executeWriteBack = true;
      this->history.dataHazardCount++;
      if (verbose)
        printf("  Forward Data %s to Decode op2\n", REGNAME[destReg]);
    }
    #else
    if (this->dRegNew.rs1 == destReg || this->dRegNew.rs2 == destReg) {
      if (verbose)
        printf("in data hazard of data in exe yyx\n");
      this->history.dataHazardCount+=1;
      this->dRegNew.bubble = true;
      // this->dRegNew.stall = 3;
      this->fReg.stall = 1;
      ifExeHazard = true;
      #ifdef ALL_STALL_YYX
      this->ifHazardBefore = true;
      #endif         
      this->pc -= 4;
      if (verbose){
        if (this->dRegNew.rs1 == destReg) 
          printf(" stall %u times because incurs exe_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[destReg]);
        if (this->dRegNew.rs2 == destReg) 
          printf(" stall %u times because incurs exe_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[destReg]);
      }
    }
    #endif
    if (verbose)
      printf("excecute need writereg2\n");
  }
  #ifdef ALL_STALL_YYX
  // inside the execute stage, there's ALU and other components
  // latency analysis of each instruction inside execute stage
  uint32_t lat = this->latency[getComponentUsed(inst)];
  // stall the fetch & decode stage to reflect the latency
  if (ifExeHazard){
    // RAW hazard
    // special judge on readmem
    // full logic implemented before
    if (verbose)
      printf(" stall %u+%u latency of ALU\n", this->fReg.stall, lat);
    this->fReg.stall += lat;
  }else if (ifMemHazard){
    this->fReg.stall = datamem_stall_lock;
    if (verbose)
      printf(" stall %u latency of readmem, and later let mem phase decide specifical stall number \n", datamem_stall_lock);    
  }else{
    //modify below
    // this->fRegNew.stall = std::max<uint32_t>(lat, this->fRegNew.stall);
    // this->dRegNew.stall = std::max<uint32_t>(lat, this->dRegNew.stall);
    // to 
    if (lat){
      this->ifExeAddComponentLatency = true;
      // printf("adding component latency : %u\n", lat);
      this->fReg.stall = lat; // TODO check if += or =
      this->dRegNew.bubble = true;
      this->pc -= 4;
    }
  }
  #endif

  this->eRegNew.bubble = false;
  this->eRegNew.stall = false;
  this->eRegNew.pc = dRegPC;
  this->eRegNew.inst = inst;
  this->eRegNew.op1 = op1; // for jalr
  this->eRegNew.op2 = op2; // for store
  this->eRegNew.writeReg = writeReg;
  this->eRegNew.destReg = destReg;
  this->eRegNew.out = out;
  // yyx below: float
  this->eRegNew.writeFloatReg = writeFloatReg;
  this->eRegNew.floatop1 = floatop1;
  this->eRegNew.floatop2 = floatop2;
  this->eRegNew.floatout = floatout;
  this->eRegNew.writeFloat = writeFloat;
  this->eRegNew.readFloat = readFloat;
  // yyx above    
  this->eRegNew.writeMem = writeMem;
  this->eRegNew.readMem = readMem;
  this->eRegNew.readSignExt = readSignExt;
  this->eRegNew.memLen = memLen;
  this->eRegNew.branch = branch;
#endif

}

#ifdef REORDER_YYX
void Simulator::writeBack() {
  if (verbose) printReorderStructure();  
  for (size_t alu_t = 0; alu_t < number_of_component; alu_t++)
  {
    for (size_t alu_ind = 0; alu_ind < kFUNumberPerComponent; alu_ind++)
    {
      ReservationStationEntry *rsEntry_t = &reservationStations[alu_t][alu_ind];
      // if execution done
      if (rsEntry_t->start && 0 == rsEntry_t->exeLeftTime) {
        // if store's source still not prepared
        if (isWriteMem(rsEntry_t->op) && rsEntry_t->Qk != NONE)
          continue;
        // mark rs
        const int rob_index = rsEntry_t->destination;
        if (verbose) printf("writeback: %s, rob:%d, rsalu:%d, rsind:%d\n", INSTNAME[rsEntry_t->op], rob_index, alu_t, alu_ind);

        // update RS's pending source value
        for (size_t alu_t2 = 0; alu_t2 < number_of_component; alu_t2++)
        {
          for (size_t alu_ind2 = 0; alu_ind2 < kFUNumberPerComponent; alu_ind2++)
          {
            ReservationStationEntry *rsEntry_t2 = &reservationStations[alu_t2][alu_ind2];
            if (rob_index == rsEntry_t2->Qj){
              rsEntry_t2->Vj = rsEntry_t->result;
              rsEntry_t2->Qj = NONE;
            }
            if (rob_index == rsEntry_t2->Qk){
              rsEntry_t2->Vk = rsEntry_t->result;
              rsEntry_t2->Qk = NONE;
            }            
          }
        }
        // mark ROB
        // value need to specially judge store
        reorderBuffer[rob_index].value = isWriteMem(rsEntry_t->op)?rsEntry_t->Vk:rsEntry_t->result;
        reorderBuffer[rob_index].ready = true;
        // clean rs entry
        rsEntry_t->busy = false;
        cleanReservationStationEntry(rsEntry_t);        
      }
    }
  }
}

void Simulator::commit() {
  if (verbose) printReorderStructure();
  const int rob_index = reorderBufferIndex.top();
  // wait for store stall or other reason
  if (this->commitStallTime > 0){
    if (verbose) {
      printf("commit stall left: %d\n", this->commitStallTime);
    }    
    this->commitStallTime--;
    return;
  }

  // no entry or not ready
  if (NONE == rob_index || !reorderBuffer[rob_index].ready){
    if (verbose) {
      printf("commit: NO\n");
    }    
    return;
  }

  // OK to commit
  // do commit : store or register
  ReorderBufferEntry * rob_entry = &reorderBuffer[rob_index];
  if (verbose) {
    printf("commit: %s, ROB:%d\n", INSTNAME[rob_entry->instType], rob_index);
  }

  int rd = rob_entry->destination;
  if (isWriteMem(rob_entry->instType)){
    uint32_t memLen = rob_entry->memLen;
    int out = rob_entry->address;
    int op2 =  rob_entry->value;
    bool good = true;
    uint32_t cycles = 0;

    // real store
    switch (memLen) {
    case 1:
      good = this->memory->setByte(out, op2, &cycles);
      break;
    case 2:
      good = this->memory->setShort(out, op2, &cycles);
      break;
    case 4:
      good = this->memory->setInt(out, op2, &cycles);
      break;
    case 8:
      good = this->memory->setLong(out, op2, &cycles);
      break;
    default:
      this->panic("Unknown memLen %u\n", memLen);
    }
  
    if (!good) {
      this->panic("Invalid Mem Access!\n");
    }
    // stall since store need more cycles
    this->commitStallTime = cycles;
  }else{
    if (REG_ZERO == rd) this->reg[rd] = 0; //special judge for rd=zero
    else this->reg[rd] = rob_entry->value;
  }
  // free ROB entry
  reorderBufferIndex.pop();
  rob_entry->busy = false;
  // TODO: clean rob_entry
  cleanReorderBufferEntry(rob_entry);
  // free register Status if correspond
  if (rob_index == registerStatus[rd].reorderEntryIndex){
    registerStatus[rd].busy = false;
    registerStatus[rd].reorderEntryIndex = NONE;
  }
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

#ifndef REORDER_YYX
void Simulator::writeBack() {
  if (this->mReg.stall) {
    if (verbose) {
      printf("WriteBack: stall\n");
    }
    return;
  }
  if (this->mReg.bubble) {
    if (verbose) {
      printf("WriteBack: Bubble\n");
    }
    return;
  }

  if (verbose) {
    printf("WriteBack: %s\n", INSTNAME[this->mReg.inst]);
  }

  if (this->mReg.writeReg && this->mReg.destReg != 0) {
    #ifndef ALL_STALL_YYX
    // Check for data hazard and forward data
    if (this->dRegNew.rs1 == this->mReg.destReg) {
      // Avoid overwriting recent data
      if (!this->executeWriteBack ||
          (this->executeWriteBack &&
           this->executeWBReg != this->mReg.destReg)) {
        if (!this->memoryWriteBack ||
            (this->memoryWriteBack &&
             this->memoryWBReg != this->mReg.destReg)) {
          this->dRegNew.op1 = this->mReg.out;
          this->history.dataHazardCount++;
          if (verbose)
            printf("  Forward Data %s to Decode op1\n",
                   REGNAME[this->mReg.destReg]);
        }
      }
    }
    if (this->dRegNew.rs2 == this->mReg.destReg) {
      // Avoid overwriting recent data
      if (!this->executeWriteBack ||
          (this->executeWriteBack &&
           this->executeWBReg != this->mReg.destReg)) {
        if (!this->memoryWriteBack ||
            (this->memoryWriteBack &&
             this->memoryWBReg != this->mReg.destReg)) {
          this->dRegNew.op2 = this->mReg.out;
          this->history.dataHazardCount++;
          if (verbose)
            printf("  Forward Data %s to Decode op2\n",
                   REGNAME[this->mReg.destReg]);
        }
      }
    }
    #else
    if (!this->ifHazardBefore && !this->ifExeAddComponentLatency){
      if (this->dRegNew.rs1 == this->mReg.destReg || this->dRegNew.rs2 == this->mReg.destReg) {
        if (verbose)
          printf("in data hazard of data in writeback phase yyx\n");
        this->history.dataHazardCount++;
        this->dRegNew.bubble = true;
        // this->dRegNew.stall = 3;
        this->fReg.stall = 1;
        this->pc -= 4;
        if (verbose){
          if (this->dRegNew.rs1 == this->mReg.destReg) 
            printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[this->mReg.destReg]);
          if (this->dRegNew.rs2 == this->mReg.destReg) 
            printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[this->mReg.destReg]);
        }
      }
    }
    #endif

    // Real Write Back
    this->reg[this->mReg.destReg] = this->mReg.out;
  }

  // yyx below : float
  // seems need to distinguish if integer regitser or float register
  if (this->mReg.writeFloatReg) {
    #ifndef ALL_STALL_YYX    
    // Check for data hazard and forward data
    if (this->dRegNew.rs1 == this->mReg.destReg) {
      // Avoid overwriting recent data
      if (!this->executeWriteBack ||
          (this->executeWriteBack &&
           this->executeWBReg != this->mReg.destReg)) {
        if (!this->memoryWriteBack ||
            (this->memoryWriteBack &&
             this->memoryWBReg != this->mReg.destReg)) {
          this->dRegNew.floatop1 = this->mReg.floatout;
          this->history.dataHazardCount++;
          if (verbose)
            printf("  Forward Data %s to Decode floatop1\n",
                   FLOATREGNAME[this->mReg.destReg]);
        }
      }
    }
    if (this->dRegNew.rs2 == this->mReg.destReg) {
      // Avoid overwriting recent data
      if (!this->executeWriteBack ||
          (this->executeWriteBack &&
           this->executeWBReg != this->mReg.destReg)) {
        if (!this->memoryWriteBack ||
            (this->memoryWriteBack &&
             this->memoryWBReg != this->mReg.destReg)) {
          this->dRegNew.floatop2 = this->mReg.floatout;
          this->history.dataHazardCount++;
          if (verbose)
            printf("  Forward Data %s to Decode floatop2\n",
                   FLOATREGNAME[this->mReg.destReg]);
        }
      }
    }
    #else
    // no before hazard || need to wait component latency
    if (!this->ifHazardBefore && !this->ifExeAddComponentLatency){
      // hazard here
      if (this->dRegNew.rs1 == this->mReg.destReg || this->dRegNew.rs2 == this->mReg.destReg) {
        printf("in data hazard of data in writeback phase yyx\n");
        this->history.dataHazardCount++;
        this->dRegNew.bubble = true;
        // this->dRegNew.stall = 3;
        this->fReg.stall = 1;
        this->pc -= 4;
        if (verbose){
          if (this->dRegNew.rs1 == this->mReg.destReg) 
            printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs1:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs1], REGNAME[this->mReg.destReg]);
          if (this->dRegNew.rs2 == this->mReg.destReg) 
            printf(" stall %d times because incurs writeback_decode RAW hazard, dRegNew.rs2:%s, destReg:%s\n", this->fReg.stall, REGNAME[this->dRegNew.rs2], REGNAME[this->mReg.destReg]);
        }
      }
    }    
    #endif


    // Real Write Back
    // printf("Real Write Back:%u, %lf \n", this->mReg.destReg, this->mReg.floatout);
    this->floatreg[this->mReg.destReg] = this->mReg.floatout;
  }
  // yyx above    

  // this->pc = this->mReg.pc;
}

#endif

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
  // // yyx below
  // printf("float registers below:\n"); // yyx
  // for (uint32_t i = 0; i < 32; ++i) {
  //   // this->floatreg[i] = 1.25+i;
  //   uint64_t tmp_uint64 = *(uint64_t *)(&(this->floatreg[i]));
  //   // printf("%s: 0x%.16lx(%lf) ", FLOATREGNAME[i], tmp_uint64, this->floatreg[i]);
  //   printf("%s: 0x%.16lx(%lf) ", FLOATREGNAME[i], tmp_uint64, cutDoubleReg2low32bit2Float(this->floatreg[i]));
  //   if (i % 4 == 3)
  //     printf("\n");
  // }
  // // yyx above
  printf("-----------------------------------\n");
}
#ifdef REORDER_YYX

void Simulator::printROB(){
  printf("ROB below, full:%d, head:%d, tail:%d\n", reorderBufferIndex.full, reorderBufferIndex.head, reorderBufferIndex.tail);
  printf("index\tready\tbusy\tinstType\tdestination\tvalue\taddress\tmemLen\n");
  for (size_t i = 0; i < kReorderBufferSize; i++)
  {
    const ReorderBufferEntry& rt = reorderBuffer[i];
    printf("%2d\t\t%d\t\t\t%d\t\t\t%6s\t\t%d\t\t\t\t\t%d\t\t\t%d\t\t\t\t%u\n", i,rt.ready,rt.busy,INSTNAME[rt.instType],rt.destination,rt.value,rt.address,rt.memLen);
  }
}

void Simulator::printRS(){
  printf("RS below\n");
  printf("FU\tindex\tbusy\top\t\t\tVj\tVk\tQj\tQk\tdestination\taddress\tstart\taddressDone\tload2Start\texeLeftTime\tpc\tresult\tmemLen\treadSignExt\n");
  printf("FU\tin\tbu\top\t\t\tVj\tVk\tQj\tQk\tde\tad\tst\taD\tl2\tLT\tpc\tre\tmL\trS\n");
  for (size_t ALU = 0; ALU < number_of_component; ALU++)
  {
    for (size_t i = 0; i < kFUNumberPerComponent; i++)
    {
      const ReservationStationEntry &rt = reservationStations[ALU][i];
      printf("%2d\t%2d\t%2d\t%6s\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\t%2d\n", ALU, i, rt.busy, INSTNAME[rt.op], rt.Vj, rt.Vk, rt.Qj, rt.Qk, rt.destination, rt.address, rt.start, rt.addressDone, rt.load2Start, rt.exeLeftTime, rt.pc, rt.result, rt.memLen, rt.readSignExt);
    }
  }
}

void Simulator::printRegStat(){
  printf("Register status below\n");
  printf("reg\trob_i\tbusy\t\t\n");
  for (size_t i = 0; i < RISCV::REGNUM; i++)
  {
    printf("%2d\t%d\t\t%d\n", i, registerStatus[i].reorderEntryIndex, registerStatus[i].busy);
  }
  
}

#endif
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
#ifdef REORDER_YYX
  printf("Number of Structure Hazards: %u\n", this->history.structureRSHazardCount);
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

#ifdef REORDER_YYX
int Simulator::findRSIndexForInsttype(RISCV::Inst instType){
  for (size_t i = 0; i < kFUNumberPerComponent; i++)
  {
    if (!reservationStations[getComponentUsed(instType)][i].busy){
      return i;
    }
  }
  return NONE;
}

void Simulator::cleanReorderBufferEntry(ReorderBufferEntry* ReorderBufferEntry){
  ReorderBufferEntry->address = 0;
  ReorderBufferEntry->busy = false;
  ReorderBufferEntry->destination = NONE;
  ReorderBufferEntry->instType = UNKNOWN;
  ReorderBufferEntry->memLen = 0;
  ReorderBufferEntry->ready = false;
  ReorderBufferEntry->value = NONE;
}

void Simulator::cleanReservationStationEntry(ReservationStationEntry* ReservationStationEntry){
  ReservationStationEntry->address = 0;
  ReservationStationEntry->addressDone = false;
  ReservationStationEntry->busy = false;
  ReservationStationEntry->destination = NONE;
  ReservationStationEntry->exeLeftTime = NONE;
  ReservationStationEntry->load2Start = false;
  ReservationStationEntry->memLen = 0;
  ReservationStationEntry->op = UNKNOWN;
  ReservationStationEntry->pc = 0;
  ReservationStationEntry->Qj = NONE;
  ReservationStationEntry->Qk = NONE;
  ReservationStationEntry->readSignExt = false;
  ReservationStationEntry->result = NONE;
  ReservationStationEntry->start = false;
  ReservationStationEntry->Vj = NONE;
  ReservationStationEntry->Vk = NONE;
}

#endif