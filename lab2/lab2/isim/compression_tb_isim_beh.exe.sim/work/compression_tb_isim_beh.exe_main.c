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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002098796980_1969729202_init();
    work_m_00000000001596108350_0836205489_init();
    work_m_00000000000307291689_1147552130_init();
    work_m_00000000001762040049_0551083773_init();
    work_m_00000000002921581777_0553904562_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002921581777_0553904562");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
