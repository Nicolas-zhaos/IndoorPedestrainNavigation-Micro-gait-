%%�ú��������жϴ�ʱ�Ƿ��ھ�ֹ״̬

function retArray = StanceDetection(acc_s, gyro_s, datasize_acc)
    retTemp = zeros(1,datasize_acc);
    for i = 1:datasize_acc
        if(C1(acc_s(:,i)) == 1 && C2(acc_s, i, datasize_acc) == 1 && C3(gyro_s(:,i)) == 1)
            retTemp(i) = 1;
        end
    end
   
    %����������������Ľ��������ֵ�˲�,���ڴ�СΪ11
    retArray = medfilt1(retTemp,11);
end