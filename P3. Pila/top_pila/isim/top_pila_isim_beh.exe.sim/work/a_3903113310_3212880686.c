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
static const char *ng0 = "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica3/top_pila/top_pila.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_3903113310_3212880686_p_0(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 8582);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 2332);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 9;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (9 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 8404U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (10U + 6U);
    t12 = (16U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 3936);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 16U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 3836);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t11, 0);
    goto LAB6;

}

static void work_a_3903113310_3212880686_p_1(char *t0)
{
    char t5[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 8388U);
    t3 = (t0 + 8592);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 8388U);
    t18 = (t0 + 8594);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:
LAB7:    t30 = (t0 + 1328U);
    t31 = *((char **)t30);
    t30 = (t0 + 3972);
    t32 = (t30 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memcpy(t35, t31, 16U);
    xsi_driver_first_trans_fast(t30);

LAB2:    t36 = (t0 + 3844);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1236U);
    t11 = *((char **)t7);
    t7 = (t0 + 3972);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 16U);
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1420U);
    t25 = *((char **)t22);
    t22 = (t0 + 3972);
    t26 = (t22 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 16U);
    xsi_driver_first_trans_fast(t22);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3903113310_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t2 = (t0 + 8436U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (16U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4008);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 3852);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t7, 0);
    goto LAB6;

}

static void work_a_3903113310_3212880686_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(100, ng0);

LAB3:    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t2 = (t0 + 8452U);
    t4 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t1, t3, t2, 2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (3U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4044);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 3U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 3860);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t7, 0);
    goto LAB6;

}

static void work_a_3903113310_3212880686_p_4(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t2 = (t0 + 8452U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t1, t3, t2, 2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (3U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4080);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 3U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 3868);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t7, 0);
    goto LAB6;

}

static void work_a_3903113310_3212880686_p_5(char *t0)
{
    char t5[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 8388U);
    t3 = (t0 + 8596);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 8388U);
    t18 = (t0 + 8598);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t9 = (t23 * 1);
    t9 = (t9 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t9;
    t24 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t24 != 0)
        goto LAB5;

LAB6:
LAB7:    t30 = (t0 + 1788U);
    t31 = *((char **)t30);
    t30 = (t0 + 4116);
    t32 = (t30 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memcpy(t35, t31, 3U);
    xsi_driver_first_trans_fast(t30);

LAB2:    t36 = (t0 + 3876);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1604U);
    t11 = *((char **)t7);
    t7 = (t0 + 4116);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB5:    t22 = (t0 + 1696U);
    t25 = *((char **)t22);
    t22 = (t0 + 4116);
    t26 = (t22 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 3U);
    xsi_driver_first_trans_fast(t22);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_3903113310_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 1788U);
    t16 = *((char **)t15);
    t15 = (t0 + 4152);
    t17 = (t15 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 3U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t21 = (t0 + 3884);
    *((int *)t21) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1604U);
    t10 = *((char **)t9);
    t9 = (t0 + 4152);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 3U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3903113310_3212880686_p_7(char *t0)
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

LAB0:    xsi_set_current_line(123, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = (15 - 5);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4188);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3892);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3903113310_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3903113310_3212880686_p_0,(void *)work_a_3903113310_3212880686_p_1,(void *)work_a_3903113310_3212880686_p_2,(void *)work_a_3903113310_3212880686_p_3,(void *)work_a_3903113310_3212880686_p_4,(void *)work_a_3903113310_3212880686_p_5,(void *)work_a_3903113310_3212880686_p_6,(void *)work_a_3903113310_3212880686_p_7};
	xsi_register_didat("work_a_3903113310_3212880686", "isim/top_pila_isim_beh.exe.sim/work/a_3903113310_3212880686.didat");
	xsi_register_executes(pe);
}
