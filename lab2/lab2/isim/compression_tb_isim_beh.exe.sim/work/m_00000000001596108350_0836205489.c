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
static const char *ng0 = "C:/Users/152/cs64/lab2/lab2/count_leading_zeros.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};
static int ng10[] = {8, 0};



static void Cont_29_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 2047U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 2047U);
    t13 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 12, 12, 2U, t13, 1, t4, 11);
    t14 = (t0 + 4040);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 4095U;
    t20 = t19;
    t21 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 11);
    t27 = (t0 + 3912);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_32_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t7[8];
    char t31[8];
    char t32[8];
    char t35[8];
    char t59[8];
    char t60[8];
    char t63[8];
    char t87[8];
    char t88[8];
    char t91[8];
    char t115[8];
    char t116[8];
    char t119[8];
    char t143[8];
    char t144[8];
    char t147[8];
    char t171[8];
    char t172[8];
    char t175[8];
    char t199[8];
    char t200[8];
    char t203[8];
    char *t1;
    char *t2;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t61;
    char *t62;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t89;
    char *t90;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t117;
    char *t118;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t145;
    char *t146;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t173;
    char *t174;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    char *t201;
    char *t202;
    char *t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    char *t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    char *t217;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    char *t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    char *t227;
    char *t228;
    char *t229;
    char *t230;
    char *t231;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    char *t235;
    unsigned int t236;
    unsigned int t237;
    char *t238;
    unsigned int t239;
    unsigned int t240;
    char *t241;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1688U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 11);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 11);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    memset(t5, 0, 8);
    t15 = (t7 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 1U);
    if (t20 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t15) != 0)
        goto LAB6;

LAB7:    t22 = (t5 + 4);
    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t22);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB8;

LAB9:    t27 = *((unsigned int *)t5);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (t28 || t29);
    if (t30 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t22) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t5) > 0)
        goto LAB14;

LAB15:    memcpy(t4, t31, 8);

LAB16:    memset(t3, 0, 8);
    xsi_vlog_signed_unary_minus(t3, 32, t4, 32);
    t228 = (t0 + 4104);
    t229 = (t228 + 56U);
    t230 = *((char **)t229);
    t231 = (t230 + 56U);
    t232 = *((char **)t231);
    memset(t232, 0, 8);
    t233 = 7U;
    t234 = t233;
    t235 = (t3 + 4);
    t236 = *((unsigned int *)t3);
    t233 = (t233 & t236);
    t237 = *((unsigned int *)t235);
    t234 = (t234 & t237);
    t238 = (t232 + 4);
    t239 = *((unsigned int *)t232);
    *((unsigned int *)t232) = (t239 | t233);
    t240 = *((unsigned int *)t238);
    *((unsigned int *)t238) = (t240 | t234);
    xsi_driver_vfirst_trans(t228, 0, 2);
    t241 = (t0 + 3928);
    *((int *)t241) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB6:    t21 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    t26 = ((char*)((ng2)));
    goto LAB9;

LAB10:    t33 = (t0 + 1688U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    t33 = (t35 + 4);
    t36 = (t34 + 4);
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 10);
    t39 = (t38 & 1);
    *((unsigned int *)t35) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 >> 10);
    t42 = (t41 & 1);
    *((unsigned int *)t33) = t42;
    memset(t32, 0, 8);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (~(t44));
    t46 = *((unsigned int *)t35);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t43) != 0)
        goto LAB19;

LAB20:    t50 = (t32 + 4);
    t51 = *((unsigned int *)t32);
    t52 = *((unsigned int *)t50);
    t53 = (t51 || t52);
    if (t53 > 0)
        goto LAB21;

LAB22:    t55 = *((unsigned int *)t32);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t50) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t32) > 0)
        goto LAB27;

LAB28:    memcpy(t31, t59, 8);

LAB29:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t4, 32, t26, 32, t31, 32);
    goto LAB16;

LAB14:    memcpy(t4, t26, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t32) = 1;
    goto LAB20;

LAB19:    t49 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB20;

LAB21:    t54 = ((char*)((ng3)));
    goto LAB22;

LAB23:    t61 = (t0 + 1688U);
    t62 = *((char **)t61);
    memset(t63, 0, 8);
    t61 = (t63 + 4);
    t64 = (t62 + 4);
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 9);
    t67 = (t66 & 1);
    *((unsigned int *)t63) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 >> 9);
    t70 = (t69 & 1);
    *((unsigned int *)t61) = t70;
    memset(t60, 0, 8);
    t71 = (t63 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t63);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t71) != 0)
        goto LAB32;

LAB33:    t78 = (t60 + 4);
    t79 = *((unsigned int *)t60);
    t80 = *((unsigned int *)t78);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB34;

LAB35:    t83 = *((unsigned int *)t60);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (t84 || t85);
    if (t86 > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t78) > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t60) > 0)
        goto LAB40;

LAB41:    memcpy(t59, t87, 8);

LAB42:    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t31, 32, t54, 32, t59, 32);
    goto LAB29;

LAB27:    memcpy(t31, t54, 8);
    goto LAB29;

LAB30:    *((unsigned int *)t60) = 1;
    goto LAB33;

LAB32:    t77 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB33;

LAB34:    t82 = ((char*)((ng4)));
    goto LAB35;

LAB36:    t89 = (t0 + 1688U);
    t90 = *((char **)t89);
    memset(t91, 0, 8);
    t89 = (t91 + 4);
    t92 = (t90 + 4);
    t93 = *((unsigned int *)t90);
    t94 = (t93 >> 8);
    t95 = (t94 & 1);
    *((unsigned int *)t91) = t95;
    t96 = *((unsigned int *)t92);
    t97 = (t96 >> 8);
    t98 = (t97 & 1);
    *((unsigned int *)t89) = t98;
    memset(t88, 0, 8);
    t99 = (t91 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t91);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t99) != 0)
        goto LAB45;

LAB46:    t106 = (t88 + 4);
    t107 = *((unsigned int *)t88);
    t108 = *((unsigned int *)t106);
    t109 = (t107 || t108);
    if (t109 > 0)
        goto LAB47;

LAB48:    t111 = *((unsigned int *)t88);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (t112 || t113);
    if (t114 > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t106) > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t88) > 0)
        goto LAB53;

LAB54:    memcpy(t87, t115, 8);

LAB55:    goto LAB37;

LAB38:    xsi_vlog_unsigned_bit_combine(t59, 32, t82, 32, t87, 32);
    goto LAB42;

LAB40:    memcpy(t59, t82, 8);
    goto LAB42;

LAB43:    *((unsigned int *)t88) = 1;
    goto LAB46;

LAB45:    t105 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB46;

LAB47:    t110 = ((char*)((ng5)));
    goto LAB48;

LAB49:    t117 = (t0 + 1688U);
    t118 = *((char **)t117);
    memset(t119, 0, 8);
    t117 = (t119 + 4);
    t120 = (t118 + 4);
    t121 = *((unsigned int *)t118);
    t122 = (t121 >> 7);
    t123 = (t122 & 1);
    *((unsigned int *)t119) = t123;
    t124 = *((unsigned int *)t120);
    t125 = (t124 >> 7);
    t126 = (t125 & 1);
    *((unsigned int *)t117) = t126;
    memset(t116, 0, 8);
    t127 = (t119 + 4);
    t128 = *((unsigned int *)t127);
    t129 = (~(t128));
    t130 = *((unsigned int *)t119);
    t131 = (t130 & t129);
    t132 = (t131 & 1U);
    if (t132 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t127) != 0)
        goto LAB58;

LAB59:    t134 = (t116 + 4);
    t135 = *((unsigned int *)t116);
    t136 = *((unsigned int *)t134);
    t137 = (t135 || t136);
    if (t137 > 0)
        goto LAB60;

LAB61:    t139 = *((unsigned int *)t116);
    t140 = (~(t139));
    t141 = *((unsigned int *)t134);
    t142 = (t140 || t141);
    if (t142 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t134) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t116) > 0)
        goto LAB66;

LAB67:    memcpy(t115, t143, 8);

LAB68:    goto LAB50;

LAB51:    xsi_vlog_unsigned_bit_combine(t87, 32, t110, 32, t115, 32);
    goto LAB55;

LAB53:    memcpy(t87, t110, 8);
    goto LAB55;

LAB56:    *((unsigned int *)t116) = 1;
    goto LAB59;

LAB58:    t133 = (t116 + 4);
    *((unsigned int *)t116) = 1;
    *((unsigned int *)t133) = 1;
    goto LAB59;

LAB60:    t138 = ((char*)((ng6)));
    goto LAB61;

LAB62:    t145 = (t0 + 1688U);
    t146 = *((char **)t145);
    memset(t147, 0, 8);
    t145 = (t147 + 4);
    t148 = (t146 + 4);
    t149 = *((unsigned int *)t146);
    t150 = (t149 >> 6);
    t151 = (t150 & 1);
    *((unsigned int *)t147) = t151;
    t152 = *((unsigned int *)t148);
    t153 = (t152 >> 6);
    t154 = (t153 & 1);
    *((unsigned int *)t145) = t154;
    memset(t144, 0, 8);
    t155 = (t147 + 4);
    t156 = *((unsigned int *)t155);
    t157 = (~(t156));
    t158 = *((unsigned int *)t147);
    t159 = (t158 & t157);
    t160 = (t159 & 1U);
    if (t160 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t155) != 0)
        goto LAB71;

LAB72:    t162 = (t144 + 4);
    t163 = *((unsigned int *)t144);
    t164 = *((unsigned int *)t162);
    t165 = (t163 || t164);
    if (t165 > 0)
        goto LAB73;

LAB74:    t167 = *((unsigned int *)t144);
    t168 = (~(t167));
    t169 = *((unsigned int *)t162);
    t170 = (t168 || t169);
    if (t170 > 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t162) > 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t144) > 0)
        goto LAB79;

LAB80:    memcpy(t143, t171, 8);

LAB81:    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t115, 32, t138, 32, t143, 32);
    goto LAB68;

LAB66:    memcpy(t115, t138, 8);
    goto LAB68;

LAB69:    *((unsigned int *)t144) = 1;
    goto LAB72;

LAB71:    t161 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t161) = 1;
    goto LAB72;

LAB73:    t166 = ((char*)((ng7)));
    goto LAB74;

LAB75:    t173 = (t0 + 1688U);
    t174 = *((char **)t173);
    memset(t175, 0, 8);
    t173 = (t175 + 4);
    t176 = (t174 + 4);
    t177 = *((unsigned int *)t174);
    t178 = (t177 >> 5);
    t179 = (t178 & 1);
    *((unsigned int *)t175) = t179;
    t180 = *((unsigned int *)t176);
    t181 = (t180 >> 5);
    t182 = (t181 & 1);
    *((unsigned int *)t173) = t182;
    memset(t172, 0, 8);
    t183 = (t175 + 4);
    t184 = *((unsigned int *)t183);
    t185 = (~(t184));
    t186 = *((unsigned int *)t175);
    t187 = (t186 & t185);
    t188 = (t187 & 1U);
    if (t188 != 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t183) != 0)
        goto LAB84;

LAB85:    t190 = (t172 + 4);
    t191 = *((unsigned int *)t172);
    t192 = *((unsigned int *)t190);
    t193 = (t191 || t192);
    if (t193 > 0)
        goto LAB86;

LAB87:    t195 = *((unsigned int *)t172);
    t196 = (~(t195));
    t197 = *((unsigned int *)t190);
    t198 = (t196 || t197);
    if (t198 > 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t190) > 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t172) > 0)
        goto LAB92;

LAB93:    memcpy(t171, t199, 8);

LAB94:    goto LAB76;

LAB77:    xsi_vlog_unsigned_bit_combine(t143, 32, t166, 32, t171, 32);
    goto LAB81;

LAB79:    memcpy(t143, t166, 8);
    goto LAB81;

LAB82:    *((unsigned int *)t172) = 1;
    goto LAB85;

LAB84:    t189 = (t172 + 4);
    *((unsigned int *)t172) = 1;
    *((unsigned int *)t189) = 1;
    goto LAB85;

LAB86:    t194 = ((char*)((ng8)));
    goto LAB87;

LAB88:    t201 = (t0 + 1688U);
    t202 = *((char **)t201);
    memset(t203, 0, 8);
    t201 = (t203 + 4);
    t204 = (t202 + 4);
    t205 = *((unsigned int *)t202);
    t206 = (t205 >> 4);
    t207 = (t206 & 1);
    *((unsigned int *)t203) = t207;
    t208 = *((unsigned int *)t204);
    t209 = (t208 >> 4);
    t210 = (t209 & 1);
    *((unsigned int *)t201) = t210;
    memset(t200, 0, 8);
    t211 = (t203 + 4);
    t212 = *((unsigned int *)t211);
    t213 = (~(t212));
    t214 = *((unsigned int *)t203);
    t215 = (t214 & t213);
    t216 = (t215 & 1U);
    if (t216 != 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t211) != 0)
        goto LAB97;

LAB98:    t218 = (t200 + 4);
    t219 = *((unsigned int *)t200);
    t220 = *((unsigned int *)t218);
    t221 = (t219 || t220);
    if (t221 > 0)
        goto LAB99;

LAB100:    t223 = *((unsigned int *)t200);
    t224 = (~(t223));
    t225 = *((unsigned int *)t218);
    t226 = (t224 || t225);
    if (t226 > 0)
        goto LAB101;

LAB102:    if (*((unsigned int *)t218) > 0)
        goto LAB103;

LAB104:    if (*((unsigned int *)t200) > 0)
        goto LAB105;

LAB106:    memcpy(t199, t227, 8);

LAB107:    goto LAB89;

LAB90:    xsi_vlog_unsigned_bit_combine(t171, 32, t194, 32, t199, 32);
    goto LAB94;

LAB92:    memcpy(t171, t194, 8);
    goto LAB94;

LAB95:    *((unsigned int *)t200) = 1;
    goto LAB98;

LAB97:    t217 = (t200 + 4);
    *((unsigned int *)t200) = 1;
    *((unsigned int *)t217) = 1;
    goto LAB98;

LAB99:    t222 = ((char*)((ng9)));
    goto LAB100;

LAB101:    t227 = ((char*)((ng10)));
    goto LAB102;

LAB103:    xsi_vlog_unsigned_bit_combine(t199, 32, t222, 32, t227, 32);
    goto LAB107;

LAB105:    memcpy(t199, t222, 8);
    goto LAB107;

}

static void Cont_41_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
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
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 3344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    t2 = (t0 + 1648U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng6)));
    xsi_vlog_get_indexed_partselect(t3, 4, t4, ((int*)(t6)), 2, t8, 3, 2, t7, 32, 1, 1);
    t9 = (t0 + 4168);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 15U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 3);
    t22 = (t0 + 3944);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Cont_42_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t35[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB5;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t41 = *((unsigned int *)t4);
    t42 = (~(t41));
    t43 = *((unsigned int *)t29);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t45, 8);

LAB20:    t46 = (t0 + 4232);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    memset(t50, 0, 8);
    t51 = 1U;
    t52 = t51;
    t53 = (t3 + 4);
    t54 = *((unsigned int *)t3);
    t51 = (t51 & t54);
    t55 = *((unsigned int *)t53);
    t52 = (t52 & t55);
    t56 = (t50 + 4);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t57 | t51);
    t58 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t58 | t52);
    xsi_driver_vfirst_trans(t46, 0, 0);
    t59 = (t0 + 3960);
    *((int *)t59) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t6) = 1;
    goto LAB7;

LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1688U);
    t34 = *((char **)t33);
    t33 = (t0 + 1648U);
    t36 = (t33 + 72U);
    t37 = *((char **)t36);
    t38 = (t0 + 1208U);
    t39 = *((char **)t38);
    t38 = ((char*)((ng3)));
    memset(t40, 0, 8);
    xsi_vlog_unsigned_minus(t40, 32, t39, 3, t38, 32);
    xsi_vlog_generic_get_index_select_value(t35, 32, t34, t37, 2, t40, 32, 2);
    goto LAB13;

LAB14:    t45 = ((char*)((ng2)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t45, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000001596108350_0836205489_init()
{
	static char *pe[] = {(void *)Cont_29_0,(void *)Cont_32_1,(void *)Cont_41_2,(void *)Cont_42_3};
	xsi_register_didat("work_m_00000000001596108350_0836205489", "isim/compression_tb_isim_beh.exe.sim/work/m_00000000001596108350_0836205489.didat");
	xsi_register_executes(pe);
}
