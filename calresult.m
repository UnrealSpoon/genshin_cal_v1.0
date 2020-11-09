
%wholetitle=['总评分','面板攻击','基础攻击', '总百分比攻击','元素加伤','暴击率','暴击伤害','圣遗物攻击总提升','圣遗物数字攻击','圣遗物百分攻击','攻击杯/头','元素杯','暴击头','暴伤头','副面板攻','副百分攻','副暴击率','副暴伤'];
for result_row_no=1:6
    result_row(:,:,result_row_no)=[total_dmg(:,:,result_row_no),total_atk(:,:,result_row_no),basic_atk(:,:,result_row_no),percent_atk(:,:,result_row_no),element_dmg(:,:,result_row_no),crit(:,:,result_row_no),critdmg(:,:,result_row_no),syw_total_atk(:,:,result_row_no),syw_basic_atk(:,:,result_row_no),syw_percent_atk(:,:,result_row_no),syw_element_dmg(:,:,result_row_no),syw_crit(:,:,result_row_no),syw_critdmg(:,:,result_row_no),c2m_combine(:,:,result_row_no)];
end
result1=result_row(:,:,1);
wholeresult=[result_row(:,:,1);result_row(:,:,2);result_row(:,:,3);result_row(:,:,4);result_row(:,:,5);result_row(:,:,6)];
dmgtry_final_result=max(wholeresult(:,1));
xlswrite(strcat(file_name,'.xls'), wholeresult, sheetno);
