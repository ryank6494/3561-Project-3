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
static const char *ng0 = "/home/ise/ECE3561Proj3/tester.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1949178628_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(39, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3648);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 3648);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 3552);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1949178628_2372691052_p_1(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int64 t16;
    char *t17;
    int64 t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    int t26;
    int t27;
    int t28;
    int t29;

LAB0:    t1 = (t0 + 3232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5691);
    *((int *)t2) = 15;
    t3 = (t0 + 5695);
    *((int *)t3) = 0;
    t4 = 15;
    t5 = 0;

LAB4:    if (t4 >= t5)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 5691);
    t8 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 4);
    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5699);
    *((int *)t2) = 15;
    t3 = (t0 + 5703);
    *((int *)t3) = 0;
    t14 = 15;
    t15 = 0;

LAB8:    if (t14 >= t15)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 5691);
    t4 = *((int *)t2);
    t3 = (t0 + 5695);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB27:    t14 = (t4 + -1);
    t4 = t14;
    t7 = (t0 + 5691);
    *((int *)t7) = t4;
    goto LAB4;

LAB9:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 5699);
    t8 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 4);
    t9 = (t0 + 3776);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 4U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t16 = (5 * 1000LL);
    t10 = (t0 + 3840);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t17 = *((char **)t13);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t10, 0U, 1, t16);
    t18 = (40 * 1000LL);
    t19 = (t0 + 3840);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t19, 0U, 1, t18);
    xsi_set_current_line(48, ng0);
    t16 = (50 * 1000LL);
    t2 = (t0 + 3040);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB10:    t2 = (t0 + 5699);
    t14 = *((int *)t2);
    t3 = (t0 + 5703);
    t15 = *((int *)t3);
    if (t14 == t15)
        goto LAB11;

LAB26:    t26 = (t14 + -1);
    t14 = t26;
    t7 = (t0 + 5699);
    *((int *)t7) = t14;
    goto LAB8;

LAB12:    xsi_set_current_line(49, ng0);

LAB18:    t2 = (t0 + 3568);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t3 = (t0 + 3568);
    *((int *)t3) = 0;
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5648U);
    t26 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t3, t2);
    t7 = (t0 + 5691);
    t8 = (t0 + 5699);
    t27 = *((int *)t7);
    t28 = *((int *)t8);
    t29 = (t27 * t28);
    t24 = (t26 == t29);
    if (t24 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(52, ng0);
    t16 = (50 * 1000LL);
    t2 = (t0 + 3040);
    xsi_process_wait(t2, t16);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t24 = *((unsigned char *)t7);
    t25 = (t24 == (unsigned char)3);
    if (t25 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t9 = (t0 + 5707);
    xsi_report(t9, 17U, (unsigned char)0);
    goto LAB21;

LAB22:    goto LAB10;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_1949178628_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1949178628_2372691052_p_0,(void *)work_a_1949178628_2372691052_p_1};
	xsi_register_didat("work_a_1949178628_2372691052", "isim/testbench_isim_beh.exe.sim/work/a_1949178628_2372691052.didat");
	xsi_register_executes(pe);
}
