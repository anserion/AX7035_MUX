--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity MUX_RTL is
    Port (KEY1,                    -- selector
	       KEY2,KEY3: in STD_LOGIC; -- data inputs
			 LED1: out STD_LOGIC);    -- output
end MUX_RTL;

architecture RTL of MUX_RTL is
component AND2 PORT(I0,I1:in std_logic; O:out std_logic); end component;
component OR2 PORT(I0,I1:in std_logic; O:out std_logic); end component;
component INV PORT(I:in std_logic; O:out std_logic); end component;
signal p1,p2,p3,p4: std_logic;
begin
    D1: INV PORT MAP (KEY1,p1);
    D2: AND2 PORT MAP (p1,KEY2,p2);
    D3: AND2 PORT MAP (KEY1,KEY3,p3);
    D4: OR2 PORT MAP (p2,p3,p4);
    LED1<=p4;
end RTL;
