static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_mulicycle___pipeline(const char*);
    HSim__s6 *blk = createworkM_mulicycle___pipeline(label); 
    return blk;
}


static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_x_o_r_gate(const char*);
    HSim__s6 *blk = createworkM_x_o_r_gate(label); 
    return blk;
}


static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_sign_extension(const char*);
    HSim__s6 *blk = createworkM_sign_extension(label); 
    return blk;
}


static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_shift_left2(const char*);
    HSim__s6 *blk = createworkM_shift_left2(label); 
    return blk;
}


static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_register_file(const char*);
    HSim__s6 *blk = createworkM_register_file(label); 
    return blk;
}


static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_one___cycle___delay__5by5(const char*);
    HSim__s6 *blk = createworkM_one___cycle___delay__5by5(label); 
    return blk;
}


static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_one___cycle___delay(const char*);
    HSim__s6 *blk = createworkM_one___cycle___delay(label); 
    return blk;
}


static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_mux32_bit2_to1(const char*);
    HSim__s6 *blk = createworkM_mux32_bit2_to1(label); 
    return blk;
}


static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_m_i_p_s_a_l_u(const char*);
    HSim__s6 *blk = createworkM_m_i_p_s_a_l_u(label); 
    return blk;
}


static HSim__s6* IF9(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_instruction_memory(const char*);
    HSim__s6 *blk = createworkM_instruction_memory(label); 
    return blk;
}


static HSim__s6* IF10(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_i_f___i_d___reg(const char*);
    HSim__s6 *blk = createworkM_i_f___i_d___reg(label); 
    return blk;
}


static HSim__s6* IF11(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_i_d___e_x___reg(const char*);
    HSim__s6 *blk = createworkM_i_d___e_x___reg(label); 
    return blk;
}


static HSim__s6* IF12(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_forwarding___unit(const char*);
    HSim__s6 *blk = createworkM_forwarding___unit(label); 
    return blk;
}


static HSim__s6* IF13(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_e_x___m_e_m___reg(const char*);
    HSim__s6 *blk = createworkM_e_x___m_e_m___reg(label); 
    return blk;
}


static HSim__s6* IF14(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_adder(const char*);
    HSim__s6 *blk = createworkM_adder(label); 
    return blk;
}


static HSim__s6* IF15(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkM_a_n_d_gate(const char*);
    HSim__s6 *blk = createworkM_a_n_d_gate(label); 
    return blk;
}


static HSim__s6* IF16(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMglbl(const char*);
    HSim__s6 *blk = createworkMglbl(label); 
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).registerFuseLibList("unisims_ver;xilinxcorelib_ver");

        (*cfgvh).addVlogModule("work","Mulicycle_Pipeline", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("work","XORGate", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("work","SignExtension", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("work","ShiftLeft2", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("work","RegisterFile", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("work","One_Cycle_Delay_5by5", (HSimInstFactoryPtr)IF5);
        (*cfgvh).addVlogModule("work","One_Cycle_Delay", (HSimInstFactoryPtr)IF6);
        (*cfgvh).addVlogModule("work","Mux32Bit2To1", (HSimInstFactoryPtr)IF7);
        (*cfgvh).addVlogModule("work","MIPSALU", (HSimInstFactoryPtr)IF8);
        (*cfgvh).addVlogModule("work","InstructionMemory", (HSimInstFactoryPtr)IF9);
        (*cfgvh).addVlogModule("work","IF_ID_Reg", (HSimInstFactoryPtr)IF10);
        (*cfgvh).addVlogModule("work","ID_EX_Reg", (HSimInstFactoryPtr)IF11);
        (*cfgvh).addVlogModule("work","Forwarding_Unit", (HSimInstFactoryPtr)IF12);
        (*cfgvh).addVlogModule("work","EX_MEM_Reg", (HSimInstFactoryPtr)IF13);
        (*cfgvh).addVlogModule("work","Adder", (HSimInstFactoryPtr)IF14);
        (*cfgvh).addVlogModule("work","ANDGate", (HSimInstFactoryPtr)IF15);
        (*cfgvh).addVlogModule("work","glbl", (HSimInstFactoryPtr)IF16);
        HSim__s5 * topvl = 0;
        extern HSim__s6 * createworkM_mulicycle___pipeline(const char*);
        topvl = (HSim__s5*)createworkM_mulicycle___pipeline("Mulicycle_Pipeline");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        extern HSim__s6 * createworkMglbl(const char*);
        topvl = (HSim__s5*)createworkMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
