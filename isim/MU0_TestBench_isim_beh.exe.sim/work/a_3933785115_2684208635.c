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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/nahrawene/Downloads/ProjectUAL-20210315T163734Z-001/ProjectUAL/AUL.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3933785115_2684208635_p_0(char *t0)
{
    char t26[16];
    char t27[16];
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
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5028);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB10:    t5 = (t0 + 5032);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB11:    t8 = (t0 + 5036);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB12:    t11 = (t0 + 5040);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB13:    t14 = (t0 + 5044);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB14:    t17 = (t0 + 5048);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4936U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t1 = (t0 + 2984);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 3064);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 16U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4936U);
    t6 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t27, t5, t3);
    t8 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t26, t2, t1, t6, t27);
    t9 = (t26 + 12U);
    t28 = *((unsigned int *)t9);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB17;

LAB18:    t11 = (t0 + 3064);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 16U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4936U);
    t6 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4936U);
    t3 = (t0 + 5052);
    t6 = (t27 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 15;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (15 - 0);
    t28 = (t4 * 1);
    t28 = (t28 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t28;
    t8 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t26, t2, t1, t3, t27);
    t9 = (t26 + 12U);
    t28 = *((unsigned int *)t9);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB21;

LAB22:    t11 = (t0 + 3064);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 16U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4936U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 4936U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t26, t2, t1, t5, t3);
    t8 = (t26 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t30 = (16U != t29);
    if (t30 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3064);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB16:;
LAB17:    xsi_size_not_matching(16U, t29, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t29, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(16U, t29, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(16U, t29, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(16U, t29, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(16U, t29, 0);
    goto LAB28;

}


extern void work_a_3933785115_2684208635_init()
{
	static char *pe[] = {(void *)work_a_3933785115_2684208635_p_0};
	xsi_register_didat("work_a_3933785115_2684208635", "isim/MU0_TestBench_isim_beh.exe.sim/work/a_3933785115_2684208635.didat");
	xsi_register_executes(pe);
}
