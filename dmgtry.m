syw_basic_atk_growth_value=[14,16,18,19];
syw_percent_atk_growth_value=[0.041,0.047,0.053,0.058];
syw_crit_growth_value=[0.027,0.031,0.035,0.039];
syw_critdmg_growth_value=[0.054,0.062,0.07,0.078];

for k=1:6
for i=1:(div_i-1)
    basic_atk(i,1,k)=role_basic_atk+weapon_basic_atk;
    percent_atk(i,1,k)=1+0.466+0.466*c2m_combine(i,1,k)+syw_percent_atk_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,6,k))+role_percent_atk+weapon_percent_atk+syw_suit_percent_atk;
    element_dmg(i,1,k)=1+0.466*c2m_combine(i,2,k)+role_element_dmg+weapon_element_dmg+syw_suit_element_dmg;
    crit_unjudged(i,1,k)=0.311*c2m_combine(i,3,k)+syw_crit_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,7,k))+role_basic_crit+weapon_basic_crit;
    if crit_unjudged(i,1,k)>1
       crit_unjudged(i,1,k)=1;
       crit(i,1,k)=crit_unjudged(i,1,k);
    else
       crit(i,1,k)=crit_unjudged(i,1,k);
    end
    critdmg(i,1,k)=0.622*c2m_combine(i,4,k)+syw_critdmg_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,8,k))+role_basic_critdmg+weapon_basic_critdmg;
    
    total_dmg(i,1,k)=basic_atk(i,1,k)*((311+syw_basic_atk_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,5,k)))/basic_atk(i,1,k)+percent_atk(i,1,k))*element_dmg(i,1,k)*(1+crit(i,1,k)*critdmg(i,1,k));
    
    syw_basic_atk(i,1,k)=311+syw_basic_atk_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,5,k));
    syw_percent_atk(i,1,k)=0.466+0.466*c2m_combine(i,1,k)+syw_percent_atk_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,6,k));
    syw_total_atk(i,1,k)=syw_basic_atk(i,1,k)+basic_atk(i,1,k)*syw_percent_atk(i,1,k);
    syw_element_dmg(i,1,k)=0.466*c2m_combine(i,2,k);
    syw_crit(i,1,k)=0.311*c2m_combine(i,3,k)+syw_crit_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,7,k));
    syw_critdmg(i,1,k)=0.622*c2m_combine(i,4,k)+syw_critdmg_growth_value(syw_growth_level)*(syw_initial_level+c2m_combine(i,8,k));
    
    total_atk(i,1,k)=basic_atk(i,1,k)*percent_atk(i,1,k)+syw_basic_atk(i,1,k);
end
end


