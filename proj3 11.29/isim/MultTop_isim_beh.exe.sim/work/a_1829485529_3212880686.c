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
static const char *ng0 = "/home/ise/ECE3561Proj3/AdderN.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1829485529_3212880686_p_0(char *t0)
{
    char t3[16];
    char t5[16];
    char *t1;
    char *t2;
    char *t4;
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
    int t16;
    unsigned int t17;
    unsigned char t18;

LAB0:    t1 = (t0 + 2904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t6 = ((IEEE_P_1242562249) + 2976);
    t7 = (t0 + 4920U);
    t2 = xsi_base_array_concat(t2, t5, t6, (char)99, (unsigned char)2, (char)97, t4, t7, (char)101);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 4936U);
    t10 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t3, t2, t5, t9, t8);
    t11 = (t0 + 1928U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t3 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    memcpy(t11, t10, t15);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t16 = (4 - 1);
    t14 = (4 - t16);
    t15 = (t14 * 1U);
    t17 = (0 + t15);
    t2 = (t4 + t17);
    t6 = (t0 + 3288);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t16 = (4 - 4);
    t14 = (t16 * -1);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t2 = (t4 + t17);
    t18 = *((unsigned char *)t2);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB1:    return;
}


extern void work_a_1829485529_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1829485529_3212880686_p_0};
	xsi_register_didat("work_a_1829485529_3212880686", "isim/MultTop_isim_beh.exe.sim/work/a_1829485529_3212880686.didat");
	xsi_register_executes(pe);
}
