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
static const char *ng0 = "C:/Users/152/cs64/lab4/lab4/four_digit_ssd.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {14U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {91U, 0U};
static unsigned int ng5[] = {79U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {59U, 0U};
static int ng8[] = {2, 0};
static int ng9[] = {3, 0};
static unsigned int ng10[] = {119U, 0U};
static unsigned int ng11[] = {62U, 0U};
static unsigned int ng12[] = {103U, 0U};
static unsigned int ng13[] = {126U, 0U};
static unsigned int ng14[] = {127U, 0U};
static unsigned int ng15[] = {118U, 0U};
static int ng16[] = {4, 0};
static unsigned int ng17[] = {55U, 0U};
static int ng18[] = {5, 0};
static unsigned int ng19[] = {78U, 0U};
static int ng20[] = {6, 0};
static unsigned int ng21[] = {200000U, 0U};



static void Initial_35_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    int t15;
    char *t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;
    int t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 7);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 18);
    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(44, ng0);
    t1 = ((char*)((ng7)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng3)));
    t16 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng10)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng11)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng6)));
    t16 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(55, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng10)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(57, ng0);
    t1 = ((char*)((ng12)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng8)));
    t12 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(60, ng0);
    t1 = ((char*)((ng13)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng9)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(61, ng0);
    t1 = ((char*)((ng10)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng9)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(62, ng0);
    t1 = ((char*)((ng14)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng9)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng9)));
    t16 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(66, ng0);
    t1 = ((char*)((ng15)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(67, ng0);
    t1 = ((char*)((ng5)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(68, ng0);
    t1 = ((char*)((ng12)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB39;

LAB40:    xsi_set_current_line(69, ng0);
    t1 = ((char*)((ng13)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng16)));
    t12 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(72, ng0);
    t1 = ((char*)((ng17)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng18)));
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB43;

LAB44:    xsi_set_current_line(73, ng0);
    t1 = ((char*)((ng19)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng18)));
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB45;

LAB46:    xsi_set_current_line(74, ng0);
    t1 = ((char*)((ng13)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng18)));
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB47;

LAB48:    xsi_set_current_line(75, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1928);
    t5 = (t0 + 1928);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1928);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng18)));
    t12 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 2, t11, 32, 1, t12, 32, 1);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (!(t14));
    t16 = (t4 + 4);
    t17 = *((unsigned int *)t16);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB49;

LAB50:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng20)));
    t16 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB51;

LAB52:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng20)));
    t16 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB53;

LAB54:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng20)));
    t16 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB55;

LAB56:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2088);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1928);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = ((char*)((ng20)));
    t16 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t9, t12, 2, 2, t13, 32, 1, t16, 32, 1);
    t24 = (t3 + 4);
    t14 = *((unsigned int *)t24);
    t15 = (!(t14));
    t25 = (t4 + 4);
    t17 = *((unsigned int *)t25);
    t18 = (!(t17));
    t19 = (t15 && t18);
    if (t19 == 1)
        goto LAB57;

LAB58:
LAB1:    return;
LAB3:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB4;

LAB5:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB6;

LAB7:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB8;

LAB9:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB10;

LAB11:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB12;

LAB13:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB14;

LAB15:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB16;

LAB17:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB18;

LAB19:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB20;

LAB21:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB22;

LAB23:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB24;

LAB25:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB26;

LAB27:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB28;

LAB29:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB30;

LAB31:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB32;

LAB33:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB34;

LAB35:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB36;

LAB37:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB38;

LAB39:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB40;

LAB41:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB42;

LAB43:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB44;

LAB45:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB46;

LAB47:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB48;

LAB49:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t23);
    goto LAB50;

LAB51:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB52;

LAB53:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB54;

LAB55:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB56;

LAB57:    t20 = *((unsigned int *)t3);
    t21 = *((unsigned int *)t4);
    t22 = (t20 - t21);
    t23 = (t22 + 1);
    xsi_vlogvar_assign_value(t6, t5, 0, *((unsigned int *)t4), t23);
    goto LAB58;

}

static void Always_84_1(char *t0)
{
    char t8[8];
    char t30[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);

LAB5:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 2408);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng21)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(91, ng0);

LAB16:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 18, t5, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 18, 0LL);

LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(85, ng0);

LAB13:    xsi_set_current_line(86, ng0);
    t31 = (t0 + 1928);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t35 = (t0 + 1928);
    t36 = (t35 + 72U);
    t37 = *((char **)t36);
    t38 = (t0 + 1928);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t0 + 1208U);
    t42 = *((char **)t41);
    t41 = (t0 + 2248);
    t43 = (t41 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_generic_get_array_select_value(t34, 7, t33, t37, t40, 2, 2, t42, 3, 2, t44, 2, 2);
    memset(t30, 0, 8);
    t45 = (t30 + 4);
    t46 = (t34 + 4);
    t47 = *((unsigned int *)t34);
    t48 = (~(t47));
    *((unsigned int *)t30) = t48;
    *((unsigned int *)t45) = 0;
    if (*((unsigned int *)t46) != 0)
        goto LAB15;

LAB14:    t53 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t53 & 127U);
    t54 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t54 & 127U);
    t55 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t55, t30, 0, 0, 7, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t5 = (t30 + 4);
    t6 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    *((unsigned int *)t30) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t15 & 7U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 7U);
    t7 = (t0 + 1768);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memset(t34, 0, 8);
    t23 = (t34 + 4);
    t24 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    t18 = (t17 >> 0);
    t19 = (t18 & 1);
    *((unsigned int *)t34) = t19;
    t20 = *((unsigned int *)t24);
    t21 = (t20 >> 0);
    t22 = (t21 & 1);
    *((unsigned int *)t23) = t22;
    xsi_vlogtype_concat(t8, 4, 4, 2U, t34, 1, t30, 3);
    t31 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t31, t8, 0, 0, 4, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 2, t5, 32);
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 2, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 18, 0LL);
    goto LAB12;

LAB15:    t49 = *((unsigned int *)t30);
    t50 = *((unsigned int *)t46);
    *((unsigned int *)t30) = (t49 | t50);
    t51 = *((unsigned int *)t45);
    t52 = *((unsigned int *)t46);
    *((unsigned int *)t45) = (t51 | t52);
    goto LAB14;

}


extern void work_m_00000000000698381005_3963099424_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_84_1};
	xsi_register_didat("work_m_00000000000698381005_3963099424", "isim/locker_tb_isim_beh.exe.sim/work/m_00000000000698381005_3963099424.didat");
	xsi_register_executes(pe);
}
