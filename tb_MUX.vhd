LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MUX IS
END tb_MUX;
 
ARCHITECTURE behavior OF tb_MUX IS 
    COMPONENT MUX_RTL
        PORT(KEY1,KEY2,KEY3: IN std_logic; LED1: OUT std_logic);
    END COMPONENT;
   --Inputs
   signal tb_KEY1 : std_logic := '1';
   signal tb_KEY2 : std_logic := '0';
   signal tb_KEY3 : std_logic := '1';
 	--Outputs
   signal tb_LED1 : std_logic;
BEGIN
   uut: MUX_RTL PORT MAP (tb_KEY1,tb_KEY2,tb_KEY3,tb_LED1);
END;