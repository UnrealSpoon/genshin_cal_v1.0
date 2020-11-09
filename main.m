%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%choose your role
%   1:keqing, 2:diluke 3:keli
role=2;

%choose your weapon
%   1:tiankongzhiren, 2:fengyingjian, 3:heijian, 4:xialilongyin
%   5:langdemolu, 6:tiankongzhiao, 7:chigujian, 8:shizuoguhua
%   9:sifengyuandian, 10:tiankongzhijuan
weapon=7;

%choose your suit
%   1:rulei4, 2:rulei2_jiaodoushi2, 3:pinglei4, 4:monv4
%   5:monv2_juedoushi2
suit=4;

%choose the level of syw from 1:worst to 4:best
syw_initial_level=0;
syw_growth_level=2;
syw_upgrade_no=20;

%name of your file
file_name='1106';
sheetno=8;
%setting finished
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%combine_judge=exist('combine_status');
role_weapon_suit_data;

%if combine_judge==1
%    dmgtry;
%    calresult;
%else
    divide25;
    combine2matrix;
    dmgtry;
    greedy;
    calresult;
    comparison=greedy_final_result/dmgtry_final_result;
%end

screen='Calculation finished!';