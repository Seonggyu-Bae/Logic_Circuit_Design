library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vend_mod is
	port(ret,rst,clk,
		  in_50,in_100,in_500,in_1000,
		  cof_but,yulm_but: in std_logic;
		  
			out_50,out_100,out_500,out_1000,
			cof_out,yulm_out: out std_logic);
end vend_mod;

architecture Behavioral of vend_mod is
	type state_t is (s0,s50,s100,s150,s200,s250,s300,s350,
							s400,s450,s500,s550,s600,s650,s700,
							s750,s800,s850,s900,s950,s1000,
							r_state);

	signal state : state_t;


begin

	process(ret,rst,clk,
			  in_50,in_100,in_500,in_1000,
				cof_but,yulm_but)
				
	variable countr_50,countr_100,
				countr_500,countr_1000 : integer:=0;
	
		begin
		
			if(rst = '1') then
				state <= s0;
				
			elsif(clk'event and clk='1') then	
			
				case state is
					when s0 =>out_50 <= '0';
								out_100 <= '0';
								out_500 <= '0';
								out_1000 <= '0'; 
								cof_out <='0';
								yulm_out <='0';
								countr_50 := 0;
								countr_100 := 0;
								countr_500 := 0;
								countr_1000 := 0;
								if(in_50 = '1') then
									state <= s50;
								elsif(in_100 = '1') then
									state <= s100;
								elsif(in_500 = '1') then
									state <= s500;
								elsif(in_1000 = '1') then
									state <= s1000;	
								else 
									state <= s0;
								end if;
					
					when s50 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 0;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s100;
									elsif(in_100 = '1') then
										state <= s150;
									elsif(in_500 = '1') then
										state <= s550;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									else 
										state <= s50;
									end if;
					
					when s100 => cof_out <='0';
									yulm_out <='0';
									countr_50 :=0;
									countr_100 := 1;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s150;
									elsif(in_100 = '1') then
										state <= s200;
									elsif(in_500 = '1') then
										state <= s600;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									else 
										state <= s100;
									end if;
					
					when s150 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 1;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s200;
									elsif(in_100 = '1') then
										state <= s250;
									elsif(in_500 = '1') then
										state <= s650;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s0;
									else 
										state <= s150;
									end if;
					
					when s200 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 2;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s250;
									elsif(in_100 = '1') then
										state <= s300;
									elsif(in_500 = '1') then
										state <= s700;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s50;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s0;
									else 
										state <= s200;
									end if;
					
					when s250 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 2;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s300;
									elsif(in_100 = '1') then
										state <= s350;
									elsif(in_500 = '1') then
										state <= s750;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s100;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s50;
									else 
										state <= s250;
									end if;
					
					when s300 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 3;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s350;
									elsif(in_100 = '1') then
										state <= s400;
									elsif(in_500 = '1') then
										state <= s800;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s150;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s100;
									else 
										state <= s300;
									end if;
					
					when s350 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 3;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s400;
									elsif(in_100 = '1') then
										state <= s450;
									elsif(in_500 = '1') then
										state <= s850;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s200;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s150;
									else 
										state <= s350;
									end if;
					
					when s400 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 4;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s450;
									elsif(in_100 = '1') then
										state <= s500;
									elsif(in_500 = '1') then
										state <= s900;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s250;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s200;
									else 
										state <= s400;
									end if;
					
					when s450 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 4;
									countr_500 := 0;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s500;
									elsif(in_100 = '1') then
										state <= s550;
									elsif(in_500 = '1') then
										state <= s950;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s150;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s100;
									else 
										state <= s450;
									end if;
				
				when s500 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 0;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s550;
									elsif(in_100 = '1') then
										state <= s600;
									elsif(in_500 = '1') then
										state <= s1000;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s350;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s300;
									else 
										state <= s500;
									end if;
					
					when s550 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 0;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s600;
									elsif(in_100 = '1') then
										state <= s650;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s400;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s350;
									else 
										state <= s550;
									end if;
					
					when s600 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 1;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s650;
									elsif(in_100 = '1') then
										state <= s700;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s450;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s400;
									else 
										state <= s600;
									end if;
					
					when s650 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 1;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s700;
									elsif(in_100 = '1') then
										state <= s750;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s500;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s450;
									else 
										state <= s650;
									end if;
					
					when s700 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 2;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s750;
									elsif(in_100 = '1') then
										state <= s800;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s550;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s500;
									else 
										state <= s700;
									end if;
					
					when s750 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 2;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s800;
									elsif(in_100 = '1') then
										state <= s850;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s600;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s550;
									else 
										state <= s750;
									end if;
					
					when s800 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 3;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s850;
									elsif(in_100 = '1') then
										state <= s900;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s650;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s600;
									else 
										state <= s800;
									end if;
					
					when s850 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 3;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s900;
									elsif(in_100 = '1') then
										state <= s950;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s700;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s650;
									else 
										state <= s850;
									end if;
					
					when s900 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 4;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s950;
									elsif(in_100 = '1') then
										state <= s1000;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s750;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s700;
									else 
										state <= s900;
									end if;
					
					when s950 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 1;
									countr_100 := 4;
									countr_500 := 1;
									countr_1000 := 0;
									if(in_50 = '1') then
										state <= s1000;
									elsif(in_100 = '1') then
										countr_100 := 5;
										state <= r_state;
									elsif(in_500 = '1') then
										countr_500 := 2;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 1;
										state <= r_state;
									elsif(ret = '1') then
										state <= r_state;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s800;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s750;
									else 
										state <= s950;
									end if;
					
					when s1000 => cof_out <='0';
									yulm_out <='0';
									countr_50 := 0;
									countr_100 := 0;
									countr_500 := 0;
									countr_1000 := 1;
									if(in_50 = '1') then
										countr_50 := 1;
										state <= r_state;
									elsif(in_100 = '1') then
										countr_100 := 1;
										state <= r_state;
									elsif(in_500 = '1') then
										countr_500 := 1;
										state <= r_state;
									elsif(in_1000 = '1') then
										countr_1000 := 2;
										state <= r_state;
									elsif(ret = '1') then
										out_1000 <= '1';
										state <= s0;
									elsif(yulm_but = '1') then
										yulm_out <= '1';
										state <= s850;
									elsif(cof_but = '1') then
										cof_out <= '1';
										state <= s800;
									else 
										state <= s1000;
									end if;
					
					
					when r_state => out_50 <= '0';
										 out_100 <= '0';
										 out_500 <= '0';
										 out_1000 <= '0';
										 cof_out <= '0';
										 yulm_out <= '0';
										 if(countr_50>0) then
											countr_50 := countr_50 - 1;
											out_50 <= '1';
											state <= r_state;
										 elsif(countr_100>0) then
											countr_100 := countr_100 - 1;
											out_100 <= '1';
											state <= r_state;
										 elsif(countr_500>0) then
											countr_500 := countr_500 - 1;
											out_500 <= '1';
											state <= r_state;
										 elsif(countr_1000>0) then
											countr_1000 := countr_1000 - 1;
											out_1000 <= '1';
											state <= r_state;	
										 else
											state <= s0;
										 end if;
				 
					
						
					end case;		
			end if;
		end process;		
end Behavioral;