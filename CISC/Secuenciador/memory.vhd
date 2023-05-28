library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
Port ( 
	dir : in STD_LOGIC_VECTOR (11 downto 0);
	data : out STD_LOGIC_VECTOR (97 downto 0));
end memory;

architecture Behavioral of memory is

begin
	process(dir)
	begin
	
		-- DATA FORMAT
		-- |    PRUEBA    |VF| Ins |                LIGA                 |
		--  P4 P3 P2 P1 P0 VF I1 I0 L11 L10 L9 L8 L7 L6 L5 L4 L3 L2 L1 L0 nCRI EB1 EB0 nWB EA1 EA0 nWA selbus UPA9 UPA8 UPA7 UPA6 UPA5 UPA4 UPA3 UPA2 UPA1 UPA0 nOEUPA nDUPA selmux nEX2 nEX1 nEX0 X2 X1 X0 EnaY nERA2 nERA1 nERA0 RA2 RA1 RA0 nEAP2 nEAP1 nEAP0 AP2 AP1 AP0 nEPC2 nEPC1 nEPC0 PC2 PC1 PC0 nCBD nAS nRW BD DINT HINT SET_IRQ SET_XIRQ B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 CC CN CV CZ CI CH CX CS nHB ACCSEC

		-- Cadena por default: "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010"
		
		--if(dir=    X"000") then data <= "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010";
		--elsif(dir= X"001") then data <= "00000" & "0" & "00" & "000000000000" & "00000000000000000000000000000000000000000000000000000000000000000000000000"; 
												  
												  
		if(dir=    X"000") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"001") then data <= "00000000000000000000000100100000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"002") then data <= "00000010000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";

		
		elsif(dir= X"860") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"861") then data <= "00000000000000000000100101000000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"862") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000010011000111000010";
		elsif(dir= X"863") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";

		elsif(dir= X"C60") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"C61") then data <= "00000000000000000000101000100000000000110111000011100011100011100111111010000000000000000000000010";
		elsif(dir= X"C62") then data <= "01111111000000000000100100100000000000110111000011100011100011100011111110000000100101000111000010";
		elsif(dir= X"C63") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";

		elsif(dir= X"1B0") then data <= "00000000000000000000111111100000000001111111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"1B1") then data <= "01111111000000000000100101000000000000000111000011100011100011100011111110000000000000001111010010";
		elsif(dir= X"1B2") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";

		elsif(dir= X"7E0") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"7E1") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111011000000000000000000000010";
		elsif(dir= X"7E2") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"7E3") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"7E4") then data <= "01111111000000000000100100100000000000110111000010000011100010010111111110000000000000000000000010";
		elsif(dir= X"7E5") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		elsif(dir= X"1A0") then data <= "00000000000000000000111111100000100001111111000011100011100011100011111110000000000000000000000011";
		elsif(dir= X"1A1") then data <= "01111111000000000000100100100000000000000111000011100011100011100011111110000000000000001111010010";
		elsif(dir= X"1A2") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		elsif(dir= X"080") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"081") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111011000000000000000000000010";
		elsif(dir= X"082") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"083") then data <= "10011001000010000101100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"084") then data <= "01111100000000000000100100100000000000110111000010000011100010010111111110000000000000000000000010";
		elsif(dir= X"085") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		
		--STAA (EXT)
		elsif(dir= X"A70") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"A71") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111010000000000000000000000010";
		elsif(dir= X"A72") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"A73") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"A74") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"A75") then data <= "00000000000000000000100101100000000000110111000011100011100011100011111000000000000000000000000010";
		elsif(dir= X"A76") then data <= "01111000000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"A77") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";

		
		--LDAA (EXT)
		elsif(dir= X"760") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"761") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111010000000000000000000000010";
		elsif(dir= X"762") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"763") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"764") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"765") then data <= "00000000000000000000100101000000000000110111000011100011100011100011111010000000000000000000000010";
		elsif(dir= X"766") then data <= "01111000000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"767") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		
				--LDAB (EXT)
		elsif(dir= X"B60") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"B61") then data <= "00000000000000000000100100100000000000110111000010110011100011100111111010000000000000000000000010";
		elsif(dir= X"B62") then data <= "00000000000000000000100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir= X"B63") then data <= "00000000000000000000100100100000000000110111000011001111100011100111111010000000000000000000000010";
		elsif(dir= X"B64") then data <= "00000000000000000000100100100000000000110111000001100011100011100001111110000000000000000000000010";
		elsif(dir= X"B65") then data <= "00000000000000000000101000100000000000110111000011100011100011100011111010000000000000000000000010";
		elsif(dir= X"B66") then data <= "01111000000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir= X"B67") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		
		
		--MUL
		elsif(dir = X"7B0") then data <= "00000000000000000000100111100000110000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B1") then data <= "00000000000000000000100111100011000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B2") then data <= "00000000000000000000100101000000001010000111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B3") then data <= "00001001011110111011100100100000000000100111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B4") then data <= "00000000000000000000111111100010000001110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B5") then data <= "00000000000000000000100100101010000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B6") then data <= "00000000000000000000100100101000000000110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B7") then data <= "01110001011110110011100101000000001011000111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B8") then data <= "00000000000000000000100100100010110010110111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7B9") then data <= "01111000000000000000101000100000000000000111000011100011100011100011111110000000000000000000000010";
		elsif(dir = X"7BA") then data <= "11000001000000000001100100100000000000110111000011100011100001100001111110000000000000000000000010";
		elsif(dir = X"7BB") then data <= "11000001011110110101100111100010000000110111000011100011100011100011111110000000000000000000000010";





	
		elsif(dir= X"200") then data <= "11000001000000000000100100100000000000110111000011100011100010010111011110000000000000000000000010";
		
		--else data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010"; -- Default
		else data <= "00000000000000000000100100100000000000110111000011100011100011100011111110000000000000000000000010";

		end if;
	end process;
end Behavioral;