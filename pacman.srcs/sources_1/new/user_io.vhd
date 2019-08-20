----------------------------------------------------------------------------------
-- Engineer: Atahan Yorganci
-- Create Date: 19.12.2018
-- Module Name: user input - Behavioral
-- Project Name: Pacman
-- Target Devices: BASYS 3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity user_io is
	Port ( 
			LEFT : in STD_LOGIC;
			UP : in STD_LOGIC;
			DOWN : in STD_LOGIC;
			RIGHT : in STD_LOGIC;
			CLK : in std_logic;
			RST : in std_logic;
			PLAYER_H, PLAYER_V: out integer);
end user_io;

architecture Behavioral of user_io is
signal playerH : integer := 281;
signal playerV : integer := 91;
begin
user_input : process (LEFT, UP, DOWN, RIGHT, CLK, RST) 
begin
	if ( rising_edge(CLK) ) then
		if (RST = '0') then
			if (LEFT = '1') then
				if (playerV < 80 and playerV > 40) then 
					if ( playerH - 1 > 120) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 140 and playerV > 80) then 
					if (playerH - 1 > 120 and playerH < 160) then
						playerH <= playerH - 1;
					elsif(playerH - 1 > 280 and playerH < 320) then
						playerH <= playerH - 1;
					elsif (playerH - 1 > 440 and playerH < 480) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 180) then 
					if (playerH - 1 > 120) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 220 and playerV > 180) then
					if ((playerH < 160 and playerH - 1 > 120) or (playerH < 240 and playerH - 1 > 200) or (playerH < 400 and playerH - 1 > 360) or (playerH < 480 and playerH - 1 > 440)) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 260 and playerV > 220) then
					if (playerH < 160 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 280 and playerH - 1 > 200) then
						playerH <= playerH - 1;
					elsif (playerH < 400 and playerH - 1 > 320) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 440) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 300) then
					if (playerH < 160 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 240 and playerH - 1 > 200) then
						playerH <= playerH - 1;
					elsif (playerH < 400 and playerH - 1 > 360) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 440) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 340) then
					if (playerH < 240 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 360) then
						playerH <= playerH - 1;
					end if;
				elsif ( playerV < 380 ) then
					if (playerH < 160 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 400 and playerH - 1 > 200) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 440) then
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 390) then
					if (playerH < 160 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 240 and playerH - 1 > 200) then
						playerH <= playerH - 1;
					elsif (playerH < 400 and playerH - 1 > 320) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 440) then
						playerH <= playerH - 1;
					else
						playerH <= playerH - 1;
					end if;
				elsif (playerV < 430) then
					if (playerH < 240 and playerH - 1 > 120) then
						playerH <= playerH - 1;
					elsif (playerH < 480 and playerH - 1 > 360) then
						playerH <= playerH - 1;
					end if;
				else
					playerH <= playerH - 1;
				end if;
			elsif (RIGHT = '1') then
				if (playerV < 80 and playerV > 40) then 
					if (playerH + 31 < 480) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 140 and playerV > 80) then 
					if (playerH + 31 < 160 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 320 and playerH > 280) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 440) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 180 and playerV > 140) then 
					if (playerH + 31 < 480) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 220 and playerV > 180) then
					if ((playerH + 31 < 160 and playerH > 120) or (playerH + 31 < 240 and playerH > 200) or (playerH + 31 < 400 and playerH > 360) or (playerH + 31 < 480 and playerH > 440)) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 260 and playerV > 220) then
					if (playerH  + 31 < 160 and playerH  > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 280 and playerH > 200) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 400 and playerH > 320) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 440) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 300) then
					if (playerH + 31 < 160 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 240 and playerH > 200) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 400 and playerH > 360) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 440) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 340) then
					if (playerH + 31 < 240 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 360) then
						playerH <= playerH + 1;
					end if;
				elsif ( playerV < 380 ) then
					if (playerH + 31 < 160 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 400 and playerH > 200) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 440) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 390) then
					if (playerH + 31< 160 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 240 and playerH > 200) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 400 and playerH > 320) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 440) then
						playerH <= playerH + 1;
					end if;
				elsif (playerV < 430) then
					if (playerH + 31 < 240 and playerH > 120) then
						playerH <= playerH + 1;
					elsif (playerH + 31 < 480 and playerH > 360) then
						playerH <= playerH + 1;
					end if;
				else
					playerH <= playerH + 1;
				end if;
			elsif (DOWN = '1') then
					if ( playerH < 240 and playerV > 200) or (playerV < 400 and playerV > 360) then
						if(playerV + 31 < 440) then 
							playerV <= playerV + 1;
						end if;
					elsif ( playerH < 160 and playerH > 120) then
						if (playerV + 31 < 440) then
							playerV <= playerV + 1;
						end if;
					elsif (playerH < 200 and playerH > 160) then
						if (playerV + 31 < 80) then 
							playerV <= playerV + 1;
						elsif (playerV + 31 < 180 and playerV > 140) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 340 and playerV > 300) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 440 and playerV > 400) then
							playerV <= playerV + 1;
						end if;
					elsif (playerH < 280 and playerH > 240) then
						if (playerV + 31 < 80) then 
							playerV <= playerV + 1;
						elsif (playerV + 31 < 180 and playerV > 140) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 260 and playerV > 220) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 380 and playerV > 340) then
							playerV <= playerV + 1;
						end if;
					elsif ( playerH < 320 and playerH > 280) then -- Middle
						if (playerV + 31 < 180) then 
							playerV <= playerV + 1;
						elsif (playerV + 31 < 380 and playerV > 340) then
							playerV <= playerV + 1;
						end if;
					elsif (playerH < 360 and playerH > 320) then
						if (playerV + 31 < 80) then 
							playerV <= playerV + 1;
						elsif (playerV + 31 < 180 and playerV > 140) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 260 and playerV > 220) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 380 and playerV > 340) then
							playerV <= playerV + 1;
						end if;
					elsif (playerH < 440 and playerH > 400) then
						if (playerV + 31 < 80) then 
							playerV <= playerV + 1;
						elsif (playerV + 31 < 180 and playerV > 140) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 340 and playerV > 300) then
							playerV <= playerV + 1;
						elsif (playerV + 31 < 440 and playerV > 400) then
							playerV <= playerV + 1;
						end if;
					elsif ( playerH < 480 and playerH > 400) then
						if (playerV + 31 < 440) then
							playerV <= playerV + 1;
						end if;
					else
						playerV <= playerV + 1;
					end if;
			elsif (UP = '1') then 
				if ( playerH < 240 and playerV > 200) or (playerV < 400 and playerV > 360) then
					if(playerV - 1 > 40) then 
						playerV <= playerV - 1;
					end if;
				elsif ( playerH < 160 and playerH > 120) then
					if (playerV - 1 > 40) then
						playerV <= playerV - 1;
					end if;
				elsif (playerH < 200 and playerH > 160) then
					if (playerV - 1 > 40) then 
						playerV <= playerV - 1;
					elsif (playerV - 1 > 140 and playerV < 180) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 300 and playerV < 340) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 400 and playerV < 440) then
						playerV <= playerV - 1;
					end if;
				elsif (playerH < 280 and playerH > 240) then
					if (playerV - 1 < 40) then 
						playerV <= playerV - 1;
					elsif (playerV - 1 > 140 and playerV < 180) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 260 and playerV < 220) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 380 and playerV < 340) then
						playerV <= playerV - 1;
					end if;
				elsif ( playerH < 320 and playerH > 280) then -- Middle
					if (playerV - 1 > 40) then 
						playerV <= playerV - 1;
					elsif (playerV - 1 > 340 and playerV > 380) then
						playerV <= playerV - 1;
					end if;
				elsif (playerH < 360 and playerH > 320) then
					if (playerV - 1 > 40) then 
						playerV <= playerV - 1;
					elsif (playerV - 1 > 140 and playerV < 180) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 220 and playerV < 260) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 340 and playerV < 380) then
						playerV <= playerV - 1;
					end if;
				elsif (playerH < 440 and playerH > 400) then
					if (playerV - 1 > 40) then 
						playerV <= playerV - 1;
					elsif (playerV - 1 > 180 and playerV < 140) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 340 and playerV < 300) then
						playerV <= playerV - 1;
					elsif (playerV - 1 > 440 and playerV < 400) then
						playerV <= playerV - 1;
					end if;
				elsif ( playerH < 480 and playerH > 400) then
					if (playerV - 1 > 40) then
						playerV <= playerV - 1;
					end if;
				else
					playerV <= playerV - 1;
				end if;
			end if;
		else
			playerH <= 281;
			playerV <= 91;
		end if;
	end if;
	
end process;

PLAYER_H <= playerH;
PLAYER_V <= playerV;

end Behavioral;