-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\combinedTxRx_AXIMM\CombinedT_ip_src_Measure_Phase_Ambiguity.vhd
-- Created: 2018-02-01 18:12:05
-- 
-- Generated by MATLAB 9.3 and HDL Coder 3.11
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: CombinedT_ip_src_Measure_Phase_Ambiguity
-- Source Path: combinedTxRx_AXIMM/Combined TX and RX/Receiver HDL/Frame Recover/Barker Locate/Measure Phase Ambiguity
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY CombinedT_ip_src_Measure_Phase_Ambiguity IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        data_re                           :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
        data_im                           :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
        trigger                           :   IN    std_logic;
        validIn                           :   IN    std_logic;
        PA_re                             :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        PA_im                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En13
        );
END CombinedT_ip_src_Measure_Phase_Ambiguity;


ARCHITECTURE rtl OF CombinedT_ip_src_Measure_Phase_Ambiguity IS

  -- Component Declarations
  COMPONENT CombinedT_ip_src_HDL_Opt_Complex_FIR4
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In1_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          validIn                         :   IN    std_logic;
          Out1_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          Out1_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT CombinedT_ip_src_HDL_Opt_Complex_FIR5
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In1_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          validIn                         :   IN    std_logic;
          Out1_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          Out1_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT CombinedT_ip_src_HDL_Opt_Complex_FIR6
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In1_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          validIn                         :   IN    std_logic;
          Out1_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          Out1_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT CombinedT_ip_src_HDL_Opt_Complex_FIR7
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In1_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          validIn                         :   IN    std_logic;
          Out1_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          Out1_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT CombinedT_ip_src_Find_Max_and_Set_Output_Shift
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In1_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In2_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In2_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In4_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In4_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In5_re                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          In5_im                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          Enable                          :   IN    std_logic;
          Out1_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
          Out1_im                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En13
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : CombinedT_ip_src_HDL_Opt_Complex_FIR4
    USE ENTITY work.CombinedT_ip_src_HDL_Opt_Complex_FIR4(rtl);

  FOR ALL : CombinedT_ip_src_HDL_Opt_Complex_FIR5
    USE ENTITY work.CombinedT_ip_src_HDL_Opt_Complex_FIR5(rtl);

  FOR ALL : CombinedT_ip_src_HDL_Opt_Complex_FIR6
    USE ENTITY work.CombinedT_ip_src_HDL_Opt_Complex_FIR6(rtl);

  FOR ALL : CombinedT_ip_src_HDL_Opt_Complex_FIR7
    USE ENTITY work.CombinedT_ip_src_HDL_Opt_Complex_FIR7(rtl);

  FOR ALL : CombinedT_ip_src_Find_Max_and_Set_Output_Shift
    USE ENTITY work.CombinedT_ip_src_Find_Max_and_Set_Output_Shift(rtl);

  -- Signals
  SIGNAL HDL_Opt_Complex_FIR4_out1_re     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR4_out1_im     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR4_out2        : std_logic;
  SIGNAL HDL_Opt_Complex_FIR5_out1_re     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR5_out1_im     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR5_out2        : std_logic;
  SIGNAL HDL_Opt_Complex_FIR6_out1_re     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR6_out1_im     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR6_out2        : std_logic;
  SIGNAL HDL_Opt_Complex_FIR7_out1_re     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR7_out1_im     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL HDL_Opt_Complex_FIR7_out2        : std_logic;
  SIGNAL delayMatch_reg                   : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL HDL_Opt_Complex_FIR4_out2_1      : std_logic;
  SIGNAL delayMatch1_reg                  : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL HDL_Opt_Complex_FIR5_out2_1      : std_logic;
  SIGNAL delayMatch2_reg                  : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL HDL_Opt_Complex_FIR6_out2_1      : std_logic;
  SIGNAL delayMatch3_reg                  : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL HDL_Opt_Complex_FIR7_out2_1      : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;
  SIGNAL Find_Max_and_Set_Output_Shift_out1_re : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Find_Max_and_Set_Output_Shift_out1_im : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_HDL_Opt_Complex_FIR4 : CombinedT_ip_src_HDL_Opt_Complex_FIR4
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1_re => data_re,  -- int16
              In1_im => data_im,  -- int16
              validIn => validIn,
              Out1_re => HDL_Opt_Complex_FIR4_out1_re,  -- int16
              Out1_im => HDL_Opt_Complex_FIR4_out1_im,  -- int16
              validOut => HDL_Opt_Complex_FIR4_out2
              );

  u_HDL_Opt_Complex_FIR5 : CombinedT_ip_src_HDL_Opt_Complex_FIR5
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1_re => data_re,  -- int16
              In1_im => data_im,  -- int16
              validIn => validIn,
              Out1_re => HDL_Opt_Complex_FIR5_out1_re,  -- int16
              Out1_im => HDL_Opt_Complex_FIR5_out1_im,  -- int16
              validOut => HDL_Opt_Complex_FIR5_out2
              );

  u_HDL_Opt_Complex_FIR6 : CombinedT_ip_src_HDL_Opt_Complex_FIR6
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1_re => data_re,  -- int16
              In1_im => data_im,  -- int16
              validIn => validIn,
              Out1_re => HDL_Opt_Complex_FIR6_out1_re,  -- int16
              Out1_im => HDL_Opt_Complex_FIR6_out1_im,  -- int16
              validOut => HDL_Opt_Complex_FIR6_out2
              );

  u_HDL_Opt_Complex_FIR7 : CombinedT_ip_src_HDL_Opt_Complex_FIR7
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1_re => data_re,  -- int16
              In1_im => data_im,  -- int16
              validIn => validIn,
              Out1_re => HDL_Opt_Complex_FIR7_out1_re,  -- int16
              Out1_im => HDL_Opt_Complex_FIR7_out1_im,  -- int16
              validOut => HDL_Opt_Complex_FIR7_out2
              );

  u_Find_Max_and_Set_Output_Shift : CombinedT_ip_src_Find_Max_and_Set_Output_Shift
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1_re => HDL_Opt_Complex_FIR4_out1_re,  -- int16
              In1_im => HDL_Opt_Complex_FIR4_out1_im,  -- int16
              In2_re => HDL_Opt_Complex_FIR5_out1_re,  -- int16
              In2_im => HDL_Opt_Complex_FIR5_out1_im,  -- int16
              In4_re => HDL_Opt_Complex_FIR6_out1_re,  -- int16
              In4_im => HDL_Opt_Complex_FIR6_out1_im,  -- int16
              In5_re => HDL_Opt_Complex_FIR7_out1_re,  -- int16
              In5_im => HDL_Opt_Complex_FIR7_out1_im,  -- int16
              Enable => Logical_Operator_out1,
              Out1_re => Find_Max_and_Set_Output_Shift_out1_re,  -- sfix16_En13
              Out1_im => Find_Max_and_Set_Output_Shift_out1_im  -- sfix16_En13
              );

  delayMatch_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch_reg(0) <= HDL_Opt_Complex_FIR4_out2;
        delayMatch_reg(1 TO 3) <= delayMatch_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS delayMatch_process;

  HDL_Opt_Complex_FIR4_out2_1 <= delayMatch_reg(3);

  delayMatch1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch1_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch1_reg(0) <= HDL_Opt_Complex_FIR5_out2;
        delayMatch1_reg(1 TO 3) <= delayMatch1_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS delayMatch1_process;

  HDL_Opt_Complex_FIR5_out2_1 <= delayMatch1_reg(3);

  delayMatch2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch2_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch2_reg(0) <= HDL_Opt_Complex_FIR6_out2;
        delayMatch2_reg(1 TO 3) <= delayMatch2_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS delayMatch2_process;

  HDL_Opt_Complex_FIR6_out2_1 <= delayMatch2_reg(3);

  delayMatch3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch3_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch3_reg(0) <= HDL_Opt_Complex_FIR7_out2;
        delayMatch3_reg(1 TO 3) <= delayMatch3_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS delayMatch3_process;

  HDL_Opt_Complex_FIR7_out2_1 <= delayMatch3_reg(3);

  Logical_Operator_out1 <= trigger AND (HDL_Opt_Complex_FIR7_out2_1 AND (HDL_Opt_Complex_FIR6_out2_1 AND (HDL_Opt_Complex_FIR4_out2_1 AND HDL_Opt_Complex_FIR5_out2_1)));

  PA_re <= Find_Max_and_Set_Output_Shift_out1_re;

  PA_im <= Find_Max_and_Set_Output_Shift_out1_im;

END rtl;

