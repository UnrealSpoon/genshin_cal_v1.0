greedy_percent_atk=linspace(0,0,syw_initial_level+syw_upgrade_no+11);
greedy_crit=linspace(0,0,syw_initial_level+syw_upgrade_no+11);
greedy_critdmg=linspace(0,0,syw_initial_level+syw_upgrade_no+11);

greedy_basic_atk=role_basic_atk+weapon_basic_atk;
greedy_total_atk=311+(role_basic_atk+weapon_basic_atk)*(1+0.466+role_percent_atk+weapon_percent_atk+syw_suit_percent_atk);

greedy_percent_atk(1)=greedy_total_atk/greedy_basic_atk;
greedy_crit(1)=role_basic_crit+weapon_basic_crit;
greedy_critdmg(1)=role_basic_critdmg+weapon_basic_critdmg;

greedy_percent_atk_num=0;
greedy_crit_num=0;
greedy_critdmg_num=0;

for greedy_i=1:(syw_initial_level+syw_upgrade_no+10)
    judge_atk=3*(1+greedy_crit(greedy_i)*greedy_critdmg(greedy_i));
    judge_crit=2*greedy_percent_atk(greedy_i)*greedy_critdmg(greedy_i);
    judge_critdmg=4*greedy_percent_atk(greedy_i)*greedy_crit(greedy_i);
    if judge_atk==max([judge_atk, judge_crit, judge_critdmg])
        greedy_percent_atk(greedy_i+1)=greedy_percent_atk(greedy_i)+syw_percent_atk_growth_value(syw_growth_level);
        greedy_crit(greedy_i+1)=greedy_crit(greedy_i);
        greedy_critdmg(greedy_i+1)=greedy_critdmg(greedy_i);
        greedy_percent_atk_num=greedy_percent_atk_num+1;
    elseif judge_crit==max([judge_atk, judge_crit, judge_critdmg]);
        greedy_percent_atk(greedy_i+1)=greedy_percent_atk(greedy_i);
        greedy_crit(greedy_i+1)=greedy_crit(greedy_i)+syw_crit_growth_value(syw_growth_level);
        greedy_critdmg(greedy_i+1)=greedy_critdmg(greedy_i);
        greedy_crit_num=greedy_crit_num+1;
        if greedy_crit(greedy_i+1)>1
            greedy_crit(greedy_i+1)=1;
        end
    elseif judge_critdmg==max([judge_atk, judge_crit, judge_critdmg])
        greedy_percent_atk(greedy_i+1)=greedy_percent_atk(greedy_i);
        greedy_crit(greedy_i+1)=greedy_crit(greedy_i);
        greedy_critdmg(greedy_i+1)=greedy_critdmg(greedy_i)+syw_critdmg_growth_value(syw_growth_level);
        greedy_critdmg_num=greedy_critdmg_num+1;
    end
end
damagefactor=greedy_percent_atk(syw_initial_level+syw_upgrade_no+11)*(1+greedy_crit(syw_initial_level+syw_upgrade_no+11)*greedy_critdmg(syw_initial_level+syw_upgrade_no+11));
damageC=greedy_basic_atk*(1.466+role_element_dmg+weapon_element_dmg+syw_suit_element_dmg);
greedy_final_result=damageC*damagefactor;