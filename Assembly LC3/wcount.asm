.ORIG	x3000
AND R0,R0,#0  ; ����������� ��� R0 ��� ��� ������������� �� ������� ������
LEA R2,SYM ;���������� ���� R2 �� ��������� ������ ��� ������� � ������������
LDR R1,R2,#0 ;���������� ���� R1 �� ����� ������ ��� �������������
LOOP BRz FINISH ;��������� �� �� ������ ����� �� ����� ��� ������������� x0000
ADD R0,R0,#1 ;�� ��� ��������� �� ����� ���� ���
ADD R2,R2,#1 ;����������� ��� ���� R2 ���� �� ������� �� ��������� ��� �������� ��������� ��� ����� ��� ����� 
LDR R1,R2,#0 ;���������� �� ������ ���� ���� R1
BR LOOP ;��������������� �� ����������
FINISH ;� R0 ���� ��� ��������
HALT
SYM .STRINGZ "Counthis"
.END