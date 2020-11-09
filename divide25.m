combine_status=0;
div_i=1;
for div_a=0:syw_upgrade_no
    for div_b=div_a:syw_upgrade_no
        for div_c=div_b:syw_upgrade_no
            div_x(1)=div_a;
            div_x(2)=div_b-div_a;
            div_x(3)=div_c-div_b;
            div_x(4)=syw_upgrade_no-div_c;
            div_X(div_i,:)=[div_x(1),div_x(2),div_x(3),div_x(4)];
            div_i=div_i+1;
        end
    end
end
