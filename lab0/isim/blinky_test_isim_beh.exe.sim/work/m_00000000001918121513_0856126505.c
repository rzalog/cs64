/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/152/Desktop/group rsj/lab0/blinky_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};



static void Initial_42_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB4:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB1;

}

static void Initial_51_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2584);
    xsi_process_wait(t2, 705032704000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(52, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void Always_55_2(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;

LAB0:    t1 = (t0 + 3024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);

LAB4:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2832);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 1, t5, 1, t6, 1);
    t8 = (t0 + 1448);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    goto LAB2;

}


extern void work_m_00000000001918121513_0856126505_init()
{
	static char *pe[] = {(void *)Initial_42_0,(void *)Initial_51_1,(void *)Always_55_2};
	xsi_register_didat("work_m_00000000001918121513_0856126505", "isim/blinky_test_isim_beh.exe.sim/work/m_00000000001918121513_0856126505.didat");
	xsi_register_executes(pe);
}
