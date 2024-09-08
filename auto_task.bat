@echo off

:: Step 1: ���� service.py ����
echo Activating Conda environment "changdi"...
call conda activate changdi
echo Starting service...
start python service.py

:: Step 2: ִ�� main.py�����ݲ������в���Ԥ��
:: ���ñ���
set username=xxxxxxxx
set password=xxxxxxxx
set arena=xxxxxxxx
::set date=<YYYY-MM-DD>
:: Step 2: �������������ڣ�ʹ�� PowerShell ��ȡ
for /f %%i in ('powershell -Command "(Get-Date).AddDays(2).ToString(\"yyyy-MM-dd\")"') do set date=%%i

:: ��ʾԤ������
echo the reservation date is %date%

:: ������ҪԤ����ʱ��Σ��Կո�ָ�������ж��ʱ�䣬���Բ���ִ��
set times=09:00 10:00 11:00
:: ʾ����set times=08:00 10:00 14:00

:: ��������Ԥ��ʱ�䣬��ʹ�� start ����ʵ�ֲ���ִ��
for %%t in (%times%) do (
    echo Making reservation for %%t...
    start python main.py --username %username% --password %password% --reservation-arena %arena% --reservation-date %date% --reservation-time %%t
)

:: ��������������
echo All reservation tasks started.
exit
