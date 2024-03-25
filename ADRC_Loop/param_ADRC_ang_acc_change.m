%% simulation parameters for ADRC Control of acceleration autopilot in Simulink%
%�Կ��ſ��ƻ�·��PI�Ǽ��ٶȿ��ƻ�·�Ա�
%���ġ��������Ƶ������ϵͳ�Ż���Ƽ��������桷P25����2
a1=-2.074
a2=-41.54%���ȶ�����41.54 �����ȶ�����-41.54 ����������0
a3=-60.64
a4=0.947
Km=-a3*a4/(a1*a4+a2)
Tc=1/sqrt(-(a1*a4+a2))
Ac=(a4-a1)/(2*sqrt(-(a1*a4+a2)))
T1c=1/a4;
V=300
g=9.81;
b=V*Km/(g*Tc^2*57.3)
g2=2*Ac/Tc
g1=1/Tc^2

b0=-30;%b0�ӽ�b��ֵ
wo=80;
wc=20;
kp=wc^2
kd=2*wc*V/(g*57.3)
%PI�Ǽ��ٶȿ��ƻ�·�Ŀ��Ʋ���
kd1=-1.3464
kp1=-9.3402
ki1=-12.2204
T1c=1.0560
x0=[0.5,1.0];
%simOut = sim('ADRC_ang_acc_change');%������m�ļ��д��ݸ�Simulinkģ��
%simOut = sim('ADRC_ESO_feedback_comparison');%������m�ļ��д��ݸ�Simulinkģ��