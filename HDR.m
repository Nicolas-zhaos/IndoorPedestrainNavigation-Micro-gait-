% 2.HDR(����ʽƫ����У��)������⵽������ֱ�ߵ�ʱ�����������ƫ��У��
function ret_yaw = HDR(yaw, yawArray,t)
    if(t <= 2)
        ret_yaw = yaw - yawArray(t-1);
    else
        ret_yaw = yaw - (yawArray(t-1) + yawArray(t-2))/2;
    end
end