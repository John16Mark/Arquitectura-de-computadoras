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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica2/ALU/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2332);
    t5 = (t0 + 6068U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 4U);
    t7 = (5U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 3232);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 3140);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t6, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2332);
    t5 = (t0 + 6084U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 4U);
    t7 = (5U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 3268);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 3148);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t6, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 6182);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB11:    t5 = (t0 + 6185);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 6188);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 6191);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 6194);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 6197);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 6200);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t30 = (4 - 3);
    t31 = (t30 * 1U);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t3 = (t0 + 3304);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t3, 2U, 3U, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3304);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t4 = (0 - 4);
    t30 = (t4 * -1);
    t31 = (1U * t30);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t32 = *((unsigned char *)t1);
    t3 = (t0 + 3304);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t32;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);

LAB2:    t1 = (t0 + 3156);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t24 = (t0 + 1328U);
    t25 = *((char **)t24);
    t24 = (t0 + 6132U);
    t26 = (t0 + 1420U);
    t27 = *((char **)t26);
    t26 = (t0 + 6132U);
    t28 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t23, t25, t24, t27, t26);
    t29 = (t23 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    t33 = (t0 + 3304);
    t34 = (t33 + 32U);
    t35 = *((char **)t34);
    t36 = (t35 + 40U);
    t37 = *((char **)t36);
    memcpy(t37, t28, 5U);
    xsi_driver_first_trans_fast(t33);
    goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6132U);
    t3 = (t0 + 1420U);
    t5 = *((char **)t3);
    t3 = (t0 + 6132U);
    t6 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3304);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6132U);
    t3 = (t0 + 1420U);
    t5 = *((char **)t3);
    t3 = (t0 + 6132U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3304);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6132U);
    t3 = (t0 + 1420U);
    t5 = *((char **)t3);
    t3 = (t0 + 6132U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3304);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6132U);
    t3 = (t0 + 1420U);
    t5 = *((char **)t3);
    t3 = (t0 + 6132U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3304);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t1 = (t0 + 6132U);
    t3 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t23, t2, t1);
    t5 = (t23 + 12U);
    t30 = *((unsigned int *)t5);
    t31 = (1U * t30);
    t32 = (5U != t31);
    if (t32 == 1)
        goto LAB29;

LAB30:    t6 = (t0 + 3304);
    t8 = (t6 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB9:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t30 = (4 - 3);
    t31 = (t30 * 1U);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t3 = (t0 + 3304);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_delta(t3, 0U, 4U, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3304);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);
    goto LAB2;

LAB18:;
LAB19:    xsi_size_not_matching(5U, t31, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(5U, t31, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(5U, t31, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(5U, t31, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(5U, t31, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(5U, t31, 0);
    goto LAB30;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (3 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3340);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3164);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (3 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1236U);
    t9 = *((char **)t8);
    t10 = (2 - 4);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 1236U);
    t17 = *((char **)t16);
    t18 = (1 - 4);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t15, t22);
    t24 = (t0 + 1236U);
    t25 = *((char **)t24);
    t26 = (0 - 4);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t23, t30);
    t32 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t31);
    t33 = (t0 + 3376);
    t34 = (t33 + 32U);
    t35 = *((char **)t34);
    t36 = (t35 + 40U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = t32;
    xsi_driver_first_trans_fast_port(t33);

LAB2:    t38 = (t0 + 3172);
    *((int *)t38) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3412);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3180);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3448);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3188);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3,(void *)work_a_0832606739_3212880686_p_4,(void *)work_a_0832606739_3212880686_p_5,(void *)work_a_0832606739_3212880686_p_6};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/ruta_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
