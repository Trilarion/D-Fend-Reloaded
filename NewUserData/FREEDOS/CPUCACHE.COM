�BCPUCACHE 1.00, (C) 2002 Bret Johnson.

CPUCACHE will ENABLE, DISABLE, TOGGLE, or simply show you the status
  of your CPU's Cache.

If the Cache is ENABLED, your computer will run MANY TIMES faster than
  it will if the Cache is DISABLED.
By default, most computers boot up with the Cache ENABLED.
DISABLING the Cache will slow the computer way down, and may allow you to run
  older programs that can sometimes crash a computer that is too fast.

To use CPUCACHE, type one of the following from DOS:

  CPUCACHE On      ENABLEs the CPU Cache
  CPUCACHE Off     DISABLEs the CPU Cache
  CPUCACHE Toggle  TOGGLEs the state of the CPU Cache
  CPUCACHE         Simply shows the current state of the CPU Cache

CPUCACHE returns the following ErrorLevels:
  ErrorLevel 0     If the Cache is ENABLED
  ErrorLevel 1     If the Cache is DISABLED
  ErrorLevel 2     If the CPU does not have a Cache, or it cannot be changed
  Attempted to change the status of the CPU Cache.
 The CPU Cache is currently  Enabled. Disabled. This computer is not compatible with CPUCACHE.

Either this CPU does not have a Cache, or your are running underneath an
  Operating Environment (like Windows) that will not let DOS change the Cache.  TOGGLE  T YES Y  E TRUE  E ON  E OFF  D NO N  D FALSE  D ENABLE  E DISABLE  D CHANGE  T +  E -  D  D�E�T� ��� �: �� �� �>�u���>�u�/�
�>�u	�7����� ���ôL�!PSR�A r)N���F s���;�7
�t8�t�����W���Z[X���������ì< t�<t����SR�Ѐ? t22�V��^:t��C�? u�C
�t^�? u݃���XK�C�u�C������Z[À>�u�2��R��fP��� ���  �f�   @t��fX�� r� ��S  �f9�t�H ������ ����	�fP�� �f   `"�� �f�   @t	��fX�fP�� �f%����"��fX�fP�� �f5   `"�� �f�   @t	��fX��: r6fPfSQ��f����f�fXf��f5   fPf�f�fXf9�uf���f����Yf[fX���PS�� s� �X	�P��X��u�����[X�PS�� �X%�P��X!�9�t�����[X�<ar<zw, �S� �S� PQW��� t�@�!_YX[�PWW2������X+�I_X�