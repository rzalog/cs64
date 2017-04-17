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
static const char *ng0 = "C:/Users/152/Desktop/cs64/lab1/src/tb/model_uart.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {10, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {0U, 0U, 0U, 0U};
static int ng7[] = {8, 0};
static int ng8[] = {7, 0};
static unsigned int ng9[] = {13U, 0U};
static int ng10[] = {15, 0};
static int ng11[] = {23, 0};
static int ng12[] = {16, 0};
static int ng13[] = {31, 0};
static int ng14[] = {24, 0};
static const char *ng15 = "%d %s Received data %08x (%s)";
static int ng16[] = {1095914544, 0, 85, 0};
static unsigned int ng17[] = {8U, 0U};



static int sp_tskRxData(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1256);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t5 = (t2 + 88U);
    t6 = *((char **)t5);
    t7 = (t6 + 0U);
    xsi_wp_set_status(t7, 1);
    *((char **)t3) = &&LAB6;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(69, ng0);
    t4 = (t1 + 2880);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 3520);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 8);
    goto LAB4;

}

static int sp_tskTxData(char *t1, char *t2)
{
    char t5[8];
    char t7[8];
    int t0;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1688);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t6 = ((char*)((ng1)));
    t8 = (t1 + 3680);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t7, 0, 8);
    t11 = (t7 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 0);
    *((unsigned int *)t7) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t17 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t5, 10, 10, 3U, t19, 1, t7, 8, t6, 1);
    t20 = (t1 + 3840);
    xsi_vlogvar_assign_value(t20, t5, 0, 0, 10);
    xsi_set_current_line(79, ng0);
    xsi_set_current_line(79, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t1 + 4000);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);

LAB6:    t4 = (t1 + 4000);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t8, 32, t9, 32);
    t10 = (t5 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (~(t13));
    t15 = *((unsigned int *)t5);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(85, ng0);
    t4 = (t1 + 7192);
    xsi_trigger(t4, -1, -1);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(80, ng0);

LAB9:    xsi_set_current_line(81, ng0);
    t11 = (t1 + 3840);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);
    t20 = (t1 + 3840);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t1 + 4000);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_index_select_value(t7, 1, t19, t22, 2, t25, 32, 1);
    t26 = (t1 + 2720);
    xsi_vlogvar_assign_value(t26, t7, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    xsi_process_wait(t6, 1000000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(83, ng0);
    t4 = (t1 + 7024);
    xsi_trigger(t4, -1, -1);
    xsi_set_current_line(79, ng0);
    t4 = (t1 + 4000);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng5)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t8, 32, t9, 32);
    t10 = (t1 + 4000);
    xsi_vlogvar_assign_value(t10, t5, 0, 0, 32);
    goto LAB6;

}

static void Initial_29_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2720);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng6)));
    t2 = (t0 + 3040);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 48);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3200);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t12[8];
    char t13[8];
    char t18[8];
    char t59[8];
    char t60[8];
    char t61[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    int t9;
    char *t10;
    char *t11;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    char *t69;
    unsigned int t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;

LAB0:    t1 = (t0 + 5168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 5488);
    *((int *)t2) = 1;
    t3 = (t0 + 5200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2880);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4976);
    xsi_process_wait(t2, 500000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t2);
    t9 = (t8 & t7);
    t4 = (t0 + 7976);
    *((int *)t4) = t9;

LAB7:    t5 = (t0 + 7976);
    if (*((int *)t5) > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 6856);
    xsi_trigger(t2, -1, -1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3040);
    t10 = (t0 + 3040);
    t11 = (t10 + 72U);
    t17 = *((char **)t11);
    t19 = (t0 + 3200);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng8)));
    xsi_vlog_convert_indexed_partindices(t12, t13, t18, ((int*)(t17)), 2, t21, 8, 2, t22, 32, 1, 1);
    t23 = (t12 + 4);
    t6 = *((unsigned int *)t23);
    t9 = (!(t6));
    t24 = (t13 + 4);
    t7 = *((unsigned int *)t24);
    t25 = (!(t7));
    t26 = (t9 && t25);
    t27 = (t18 + 4);
    t8 = *((unsigned int *)t27);
    t28 = (!(t8));
    t29 = (t26 && t28);
    if (t29 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t10 = (t4 + 8);
    t11 = (t4 + 12);
    t6 = *((unsigned int *)t10);
    t7 = (t6 >> 8);
    *((unsigned int *)t12) = t7;
    t8 = *((unsigned int *)t11);
    t14 = (t8 >> 8);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t15 & 255U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 255U);
    t17 = ((char*)((ng9)));
    memset(t13, 0, 8);
    t19 = (t12 + 4);
    t20 = (t17 + 4);
    t33 = *((unsigned int *)t12);
    t34 = *((unsigned int *)t17);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t19);
    t37 = *((unsigned int *)t20);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t19);
    t41 = *((unsigned int *)t20);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB17;

LAB14:    if (t42 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t13) = 1;

LAB17:    t22 = (t13 + 4);
    t45 = *((unsigned int *)t22);
    t46 = (~(t45));
    t47 = *((unsigned int *)t13);
    t48 = (t47 & t46);
    t49 = (t48 != 0);
    if (t49 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(60, ng0);

LAB30:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3200);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng17)));
    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 8, t4, 8, t5, 8);
    t10 = (t0 + 3200);
    xsi_vlogvar_assign_value(t10, t12, 0, 0, 8);

LAB20:    goto LAB2;

LAB8:    xsi_set_current_line(41, ng0);

LAB10:    xsi_set_current_line(42, ng0);
    t10 = (t0 + 4976);
    xsi_process_wait(t10, 1000000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 6688);
    xsi_trigger(t11, -1, -1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 1);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 1);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 & 127U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 127U);
    t11 = (t0 + 2320U);
    t17 = *((char **)t11);
    xsi_vlogtype_concat(t12, 8, 8, 2U, t17, 1, t13, 7);
    t11 = (t0 + 2880);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 8);
    t2 = (t0 + 7976);
    t9 = *((int *)t2);
    *((int *)t2) = (t9 - 1);
    goto LAB7;

LAB12:    t14 = *((unsigned int *)t18);
    t30 = (t14 + 0);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t31 = (t15 - t16);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t5, t4, t30, *((unsigned int *)t13), t32);
    goto LAB13;

LAB16:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(49, ng0);

LAB21:    xsi_set_current_line(51, ng0);
    t23 = (t0 + 3040);
    t24 = (t23 + 56U);
    t27 = *((char **)t24);
    memset(t18, 0, 8);
    t50 = (t18 + 4);
    t51 = (t27 + 4);
    t52 = *((unsigned int *)t27);
    t53 = (t52 >> 24);
    *((unsigned int *)t18) = t53;
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 24);
    *((unsigned int *)t50) = t55;
    t56 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t56 & 255U);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t57 & 255U);
    t58 = (t0 + 3360);
    t62 = (t0 + 3360);
    t63 = (t62 + 72U);
    t64 = *((char **)t63);
    t65 = ((char*)((ng8)));
    t66 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t59, t60, t61, ((int*)(t64)), 2, t65, 32, 1, t66, 32, 1);
    t67 = (t59 + 4);
    t68 = *((unsigned int *)t67);
    t9 = (!(t68));
    t69 = (t60 + 4);
    t70 = *((unsigned int *)t69);
    t25 = (!(t70));
    t26 = (t9 && t25);
    t71 = (t61 + 4);
    t72 = *((unsigned int *)t71);
    t28 = (!(t72));
    t29 = (t26 && t28);
    if (t29 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 16);
    *((unsigned int *)t12) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 16);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t15 & 255U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 255U);
    t11 = (t0 + 3360);
    t17 = (t0 + 3360);
    t19 = (t17 + 72U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng10)));
    t22 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t13, t18, t59, ((int*)(t20)), 2, t21, 32, 1, t22, 32, 1);
    t23 = (t13 + 4);
    t33 = *((unsigned int *)t23);
    t9 = (!(t33));
    t24 = (t18 + 4);
    t34 = *((unsigned int *)t24);
    t25 = (!(t34));
    t26 = (t9 && t25);
    t27 = (t59 + 4);
    t35 = *((unsigned int *)t27);
    t28 = (!(t35));
    t29 = (t26 && t28);
    if (t29 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 8);
    *((unsigned int *)t12) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 8);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t15 & 255U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 255U);
    t11 = (t0 + 3360);
    t17 = (t0 + 3360);
    t19 = (t17 + 72U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng11)));
    t22 = ((char*)((ng12)));
    xsi_vlog_convert_partindices(t13, t18, t59, ((int*)(t20)), 2, t21, 32, 1, t22, 32, 1);
    t23 = (t13 + 4);
    t33 = *((unsigned int *)t23);
    t9 = (!(t33));
    t24 = (t18 + 4);
    t34 = *((unsigned int *)t24);
    t25 = (!(t34));
    t26 = (t9 && t25);
    t27 = (t59 + 4);
    t35 = *((unsigned int *)t27);
    t28 = (!(t35));
    t29 = (t26 && t28);
    if (t29 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t12, 0, 8);
    t5 = (t12 + 4);
    t10 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t12) = t7;
    t8 = *((unsigned int *)t10);
    t14 = (t8 >> 0);
    *((unsigned int *)t5) = t14;
    t15 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t15 & 255U);
    t16 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t16 & 255U);
    t11 = (t0 + 3360);
    t17 = (t0 + 3360);
    t19 = (t17 + 72U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng13)));
    t22 = ((char*)((ng14)));
    xsi_vlog_convert_partindices(t13, t18, t59, ((int*)(t20)), 2, t21, 32, 1, t22, 32, 1);
    t23 = (t13 + 4);
    t33 = *((unsigned int *)t23);
    t9 = (!(t33));
    t24 = (t18 + 4);
    t34 = *((unsigned int *)t24);
    t25 = (!(t34));
    t26 = (t9 && t25);
    t27 = (t59 + 4);
    t35 = *((unsigned int *)t27);
    t28 = (!(t35));
    t29 = (t26 && t28);
    if (t29 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(56, ng0);
    *((int *)t12) = xsi_vlog_stime(1000.0000000000000, 1000.0000000000000);
    t2 = (t12 + 4);
    *((int *)t2) = 0;
    t3 = ((char*)((ng16)));
    t4 = (t0 + 3360);
    t5 = (t4 + 56U);
    t10 = *((char **)t5);
    t11 = (t0 + 3360);
    t17 = (t11 + 56U);
    t19 = *((char **)t17);
    xsi_vlogfile_write(1, 0, 0, ng15, 5, t0, (char)118, t12, 32, (char)118, t3, 40, (char)119, t10, 32, (char)119, t19, 32);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 48);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3200);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    goto LAB20;

LAB22:    t73 = *((unsigned int *)t61);
    t30 = (t73 + 0);
    t74 = *((unsigned int *)t59);
    t75 = *((unsigned int *)t60);
    t31 = (t74 - t75);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t58, t18, t30, *((unsigned int *)t60), t32);
    goto LAB23;

LAB24:    t36 = *((unsigned int *)t59);
    t30 = (t36 + 0);
    t37 = *((unsigned int *)t13);
    t38 = *((unsigned int *)t18);
    t31 = (t37 - t38);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t11, t12, t30, *((unsigned int *)t18), t32);
    goto LAB25;

LAB26:    t36 = *((unsigned int *)t59);
    t30 = (t36 + 0);
    t37 = *((unsigned int *)t13);
    t38 = *((unsigned int *)t18);
    t31 = (t37 - t38);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t11, t12, t30, *((unsigned int *)t18), t32);
    goto LAB27;

LAB28:    t36 = *((unsigned int *)t59);
    t30 = (t36 + 0);
    t37 = *((unsigned int *)t13);
    t38 = *((unsigned int *)t18);
    t31 = (t37 - t38);
    t32 = (t31 + 1);
    xsi_vlogvar_assign_value(t11, t12, t30, *((unsigned int *)t18), t32);
    goto LAB29;

}


extern void work_m_00000000000178567839_1746683258_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Always_36_1};
	static char *se[] = {(void *)sp_tskRxData,(void *)sp_tskTxData};
	xsi_register_didat("work_m_00000000000178567839_1746683258", "isim/tb_isim_beh.exe.sim/work/m_00000000000178567839_1746683258.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
