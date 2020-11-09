c2m_Major(1,:)=[2,0,0,0];
c2m_Major(2,:)=[1,0,0,1];
c2m_Major(3,:)=[1,0,1,0];
c2m_Major(4,:)=[1,1,0,0];
c2m_Major(5,:)=[0,1,0,1];
c2m_Major(6,:)=[0,1,1,0];

for c2m_k=1:6
    for c2m_i=1:(div_i-1)
        %c2m_name=['c2m_combine',num2str(c2m_j)];
        %runstr=[c2m_name '(c2m_i,:)=[c2m_Major(c2m_j,:),div_X(c2m_i,:)]'];
        %runstr=[c2m_name '(c2m_i,:)=cat(2,c2m_Major(c2m_j,:),div_X(c2m_i,:))'];
        c2m_combine(c2m_i,:,c2m_k)=cat(2,c2m_Major(c2m_k,:),div_X(c2m_i,:));
    end
end

combine_status=1;