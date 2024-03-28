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
static const char *ng0 = "C:/Documents and Settings/Juan Molina/Mis documentos/Arquitectura/Practica2/registro/registro.vhd";



static void work_a_0827584957_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    int t14;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2052);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4060);
    t6 = (t0 + 2104);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t2 = (t0 + 4064);
    t13 = xsi_mem_cmp(t2, t6, 2U);
    if (t13 == 1)
        goto LAB11;

LAB15:    t8 = (t0 + 4066);
    t14 = xsi_mem_cmp(t8, t6, 2U);
    if (t14 == 1)
        goto LAB12;

LAB16:    t10 = (t0 + 4068);
    t16 = xsi_mem_cmp(t10, t6, 2U);
    if (t16 == 1)
        goto LAB13;

LAB17:
LAB14:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2104);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB11:    xsi_set_current_line(51, ng0);
    t17 = (t0 + 868U);
    t18 = *((char **)t17);
    t17 = (t0 + 2104);
    t19 = (t17 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB10;

LAB12:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t23 = (3 - 2);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t5 = (t0 + 2104);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t5, 0U, 3U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB10;

LAB13:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t23 = (3 - 3);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t5 = (t0 + 2104);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_delta(t5, 1U, 3U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2104);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB10;

LAB18:;
}

static void work_a_0827584957_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2140);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2060);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0827584957_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0827584957_3212880686_p_0,(void *)work_a_0827584957_3212880686_p_1};
	xsi_register_didat("work_a_0827584957_3212880686", "isim/top_instruccion_isim_beh.exe.sim/work/a_0827584957_3212880686.didat");
	xsi_register_executes(pe);
}
