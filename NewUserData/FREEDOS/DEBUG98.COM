��I?%L:�/0�0�152�23L:L:3�4v5j6{6]7�7<8�8�8L:!9l$                                       
    �I�I                                         \   l                                     AXBXCXDXSPBPSIDIDSESSSCSIPdescfg&.6>de�󬭪�������lmno�����蚂���������               BD-:FreeDOS Debug v 0.95f help screen
Altering memory:
compare      C range address		hex add/sub  H value1 value2
dump         D [range]			move         M range address
enter        E address [list]		search       S range list
fill         F range list

Assemble/Disassemble:
assemble     A [address]		unassemble   U [range]
80x86 mode   Mx (0..6, ? for query)	set FPU mode MC 387, MNC none, MC2 287

Program execution:
go           G [=address] [breakpts]	quit         Q
proceed      P [=address] [count]	trace        T [=address] [count]
register     R register [value]		all regs     R
input        I port			output       O port byte

Disk access:
set name     N [[drive:][path]progname [arglist]]
load program L [address]
load         L address drive sector number
write prog.  W [address]
write        W address drive sector number
The extended memory commands have not been installed yet.
$^ Error
$���Q"-@Q_kvWrite protect error Unknown unit error Drive not ready Unknown command Data error (CRC) Seek error Unknown media type Sector not found Unknown error Write fault Read fault General failure  read  writ ing drive x 8086/88 x86  without coprocessor  with coprocessor  with 287  (unused) [needs x86][needs math coprocessor][obsolete]Divide error.
$Unexpected single-step interrupt.
$Unexpected breakpoint interrupt.
$Program terminated normally.
$Program has terminated.
$EXE and HEX files cannot be written.
$Cannot write: no file name given.
$Writing $ bytes.
$Disk full.
$Error $ opening file.
$File not found.
$Path not found.
$Access denied.
$Insufficient memory.
$no�������ln��������@7��?���������D��o�5��C����  ��
���w����	�
?��������������1��~�O���I��6����������y���EԵ;�m._��-��J��K��K2��N��I���bc��a/��`���b��`���a|��d���d1��c���d~��b��`���a/��bc��a/��a���d~��c���d1��d���`���c���b���a���`H��cJ��cJ��c���b���a|��^���w�1���2;������<��}���.���#����������������<:�AE��AE����HA�BB��B��B��������������AE���A����A����A����A����A����A����A����A����A����A����A����A����A����A����A�����A�@����A���A����C/��C���K��A�@���B����AE��AE���A�������A�BB��B��B����"�W��� A�BB��B��B���������A���B��������������4�2�AE���A����ϡ��7�l���`���	A`��AE��AE��AE��AE��AE��AE��AE����n��
��{��A�BB��B��B�����O�AE��AE��AE���AE��AE��AE���>����AE����A����AE���AE��AE���0�eB������ͫ�B�����>������C1�r�����A�BB��B��B����R�����PA�BB��B��B��������AE���B���By���A���A����C/��C���B���By���A���.��AE��Aa�AE��AE��AE��AE��Id�����A�� N� O�����D�G �Q��X�� |��� ��=�=��=���Oh���P��>C�#��u��"��ts�"q�t&�#��uZ�"q�t&��Dn�#�t��&Z�x�%��wu�%s�w(�&�w��#��uZ�"q�t&�"��ts�#��u��"��ts�#X�u�&�w��%s�w(�%��wu�&Z�x�"$�s��%&�v��$��vA�#X�u�!��s��$��v��$��v��%&�v��$?�u��#�t��F�F!�նFo�/���M��;H���:���+��x�*p��<u��������D������3���4	�D"D!�C�C��C�C��C�C��C�C���M������0M0�(�)�*G*�57����V��W��W6�W��X�X��1T��1���W�����=��������+P���Z���������l���EaG���!���!c�Ņ�	�Q#�}�����-��/9�!�o� ��m�	?�}Z��������.��Ȑ����b����F�ͯ����_�����Cʬ����\
�������:�:��==��"�/���*˓������z�����v�N���&�.�6�>�d�e�*˓�����w����I�m��*����<��4V��4���z���yy��y,��z`��y,��y���}��|{��|.��|���z`��y,��yy��z���yy��z��|���|.��|{��}��x���{���{G��z��x���{���{���{���z���y���5����~��~�����M������v�J��L�K�3"��3o�����=�����+���2���'�'��������+�.���O���[p�����+�+��(R�(S�@��@�������x�t�� � �� �� �  � � � � � AAA AAD AAM AAS ADC ADD +AND 9ARPL =BOUND ABSF EBSR IBSWAP NBT UBTC ^BTR gBTS pCALL zCBW %CDQ }CLC �CLD �CLI �CLTS �CMC �CMOVA �CMOVAE �CMOVB �CMOVBE �CMOVC �CMOVE �CMOVG �CMOVGE �CMOVL �CMOVLE �CMOVNA �CMOVNAE �CMOVNB �CMOVNBE �CMOVNC �CMOVNE �CMOVNG �CMOVNGE �CMOVNL �CMOVNLE �CMOVNO �CMOVNP �CMOVNS �CMOVNZ �CMOVO �CMOVP �CMOVPE �CMOVPO �CMOVS CMOVZ CMP CMPSB CMPSD CMPSW CMPXCHG CMPXCHG8B !CPUID �CS &CWD yCWDE )DAA ,DAS /DB 1DD 3DEC 9DIV �DS <DW >ENTER �ES BF2XM1 FFABS JFADD UFADDP aFBLD dFBSTP gFCHS kFCLEX pFCMOVA uFCMOVAE zFCMOVB FCMOVBE �FCMOVE �FCMOVNA �FCMOVNAE �FCMOVNB �FCMOVNBE �FCMOVNE �FCMOVNU �FCMOVNZ �FCMOVU �FCMOVZ �FCOM �FCOMI �FCOMIP �FCOMP �FCOMPP �FCOS �FDECSTP �FDISI �FDIV �FDIVP FDIVR FDIVRP FENI $FFREE \FIADD (FICOM -FICOMP FIDIV FIDIVR 2FILD �FIMUL 9FINCSTP =FINIT BFIST GFISTP �FISUB FISUBR NFLD XFLD1 tFLDCW xFLDENV `FLDL2E \FLDL2T hFLDLG2 lFLDLN2 dFLDPI pFLDZ {FMUL �FMULP lFNCLEX �FNDISI  FNENI >FNINIT uFNLDCW �FNOP �FNSAVE �FNSETPM �FNSTCW �FNSTENV �FNSTSW �FPATAN �FPREM �FPREM1 �FPTAN �FRNDINT �FRSTOR �FS �FSAVE �FSCALE �FSETPM �FSIN �FSINCOS �FSQRT �FST �FSTCW �FSTENV �FSTP �FSTSW �FSUB �FSUBP FSUBR FSUBRP FTST FUCOM 'FUCOMI 0FUCOMIP 9FUCOMP BFUCOMPP GFWAIT JFXAM NFXCH UFXTRACT YFYL2X ]FYL2XP1 �GS aHLT dIDIV gIMUL yIN ~INC �INSB �INSD �INSW �INT �INTO �INVD �INVLPG �IRET �IRETD �JA �JAE �JB �JBE �JC �JCXZ �JE �JECXZ �JG �JGE �JL �JLE ZJMP �JNA �JNAE �JNB �JNBE �JNC �JNE JNG JNGE JNL JNLE JNO $JNP *JNS 0JNZ 6JO <JP BJPE HJPO NJS TJZ eLAHF hLAR lLDS ~LEA �LEAVE sLES vLFS �LGDT zLGS �LIDT �LLDT �LMSW �LOCK �LODSB �LODSD �LODSW �LOOP �LOOPE �LOOPNE �LOOPNZ �LOOPZ �LSL oLSS �LTR �MOV �MOVSB �MOVSD �MOVSW �MOVSX �MOVZX �MUL �NEG NOP NOT OR ORG OUT OUTSB !OUTSD "OUTSW &POP 8POPA 7POPAD =POPF <POPFD @PUSH ZPUSHA YPUSHAD _PUSHF ^PUSHFD bRCL jRCR �RDMSR �REP �REPE �REPNE �RET �RETF rROL zROR �RSM �SAHF �SAL �SAR �SBB �SCASB �SCASD �SCASW �SEG �SETA �SETAE �SETB �SETBE �SETC �SETE SETG SETGE SETL SETLE SETNA SETNAE SETNB  SETNBE $SETNC (SETNE ,SETNG 0SETNGE 4SETNL 8SETNLE <SETNO @SETNP DSETNS HSETNZ LSETO PSETP TSETPE XSETPO \SETS `SETZ dSGDT �SHL lSHLD �SHR sSHRD hSIDT zSLDT ~SMSW �SS �STC �STD �STI �STOSB �STOSD �STOSW �STR �SUB �TEST �VERR �VERW �WAIT �WBINVD �WRMSR �XADD �XCHG �XLAT �XLATB �XOR  
!#%')+-0247:>@BDFIKMQUY]`cegilnpsvy|���������������������������� N@ B@ R  BJ JB rz ZT ZR � RZ R"     B \ p"   0 0 0 � t    
 ~ ZR  VZ  ZRP VZP N" N, * "  $ R r r r NH HN l` \P Z&b Z&r "N ,N T 6 2 < 4 8 : &P &" B( B. B" p b RZ" RZ. ^\ \^ � � � � � � �������



77777777777777777777777777777777



�a�Yssssssssssssssss |�������/���������������������9�oqqq uuusii��--/sll��
 

������ ������� ������� � 55555555x1x1x xzzzzz  UUUUz zU<<<<<<<<@@RR@@@@< <<ULULPR JJJJJJJJ@@@@   J JJ N N@@@@RR >>>>>>>>CC  CCCC> >>U ULP PPRR  LLLLLLLLFF FFFFL LLN3N3    RR   ""������""""""""""""""""----------------������������������'����'��"'��'""��%%%%%%%%55****3�W            ��������      ��������& & & & & &  �





�U
U
U
U
U
U
 ������ �����������������3, 450 0����������	����C=H8    

?
?
uuuuu�u��?
?
?
?
?
?
?
m �f  
 �y�uuuu{���

�	�	"2��uuuuuuuuuuuuuuuu  ZZ��  �``����    M
HXhx����R[:$����f NNN����     �� ((y �	� �	 �	�0  � �& 
U
�  � �& 
U
�gm17�	�	  �gm17�	�	  �gm17��  �
  ����
��f f NN  �)�)'o'**    �)�)�&'�)  '�E6�,.=6�,.=�  ��Kwn��  ���]�em��v~vb�bb�b      �  ��  �  �b�b�b�b Le�b  6�,.=6    ,=.�  ��  [�U  �D5_5    ]�em��v~=   (4$E5�  ��E�L�        0Ue�b  ���
�  '�����4�����4���43  8@�&c'� �E'Ju7u7u7u7u7u70Z=XnaJa�`�`�aea�`�`�a\a~a�a�`�`�`�`�6�666�6�66	6�6�6�6�6C6=6H686n9N9�8�8�9f9�8�8�9^9|9�9�8�8�8�88�7�QO0�9�98�7sX`0�9�9�5�A�Ai7Z0�6 7�7�7�T0;0A0�7�78J8J�G@G@G@G@G@G@G@G@�O0`0Z0T0�Q�uTT/=zh5:1(Bd$�                         	
                                                                         !"#$%&'()*+,-./0123456789:;<=>?@ABCDE  FGHIJK LMNOPQRST  UVWXYZ[\     ]^_`abcde                                                fg          hijk l      m       n       o       pq  rs   t      uvwxy    z      {       "! #]�$_^0�[&N������ � � m � � � � o a � ` � � � ��s �0*��� (��	
        ! ���������1�0+*	 	   ( ) ��� � 0 1 ��Ȏ؎����5*$�&3�� ��<t�<;t�<?t ,a�<w"�t����J�����Ǵ	��!뾴	�j�!���                       ������$&   �&�&�&    a �Y,;,;,;,_,@,O,j,�,�,�,�,�,�,�,�,<-�-�-�-�-�-�-�-�-.".H.O.V.V.V.V.V.V.V.V.V.
�����5[%<t�������c�e�&3��J�e�$�:��c��#� ��<t�<;t��w$ �x$  ��JV<ar<zw$ߪ�<t< t<	u��NV� ��z������ެ< u�9�rN9�t�|� u�VFFW��J)χ��_^t	�< u������9�u�^^�W����ؓ�� Í���<�r�,�t,�HtHt<sAw$�� �� ��y$�w$^X�<t�<;t��P���x$< u�^X�<t<;t�9��x$��J��t�>x$ u�^,u��<t�e��������J����$��$�㋇�$��$��<t<<"t<'t�:�$ ���$���Kw���Ĭ<t8�t
����Kv��,���u<uľ�J��)��>c��>c�w�����ëêÉ6z$^�<t<;u��$��6z$^���J<t<;u�
W� 1��_N�%�߀} u[W�.@� �_uO	�u	�D$�<Rup���وM�	��$%��=FAu�D$�<Ru��E�w$�����$%��=PTu�����뙀>y$ u'W�@� �_uV���<:uX��S@)ˊ�y$�l�^W��?� �_rh��]��s������C�5���w&t��r2�w$ �+�<(u$��,0<w�E�<)t����,0<w��E���u� :Et�E< u�����xr6��M�]�U
�%��"<:u��n�M�M�]�U
� �� ��<[u����<]t�NW�@� ��_rC��s����} u��N<*uF�]�����Q�} u�]�	�} u�]��8�0�����<*tM]U
��H�NW�@1��^_rԀ} uΈ]�i<-t�<+u�h��h��} u(�} t�= u��� ��Et@@�w$�E������E
E�u �Eu�E8�w��W��$� �_uջ�j�w$�E
Eu�E�ĉE��} u�M��|�����u<�w$�m���E<t�< u�<|�$���A�E< u���8<|Y$�<t8�t� Q�E���Y�e	8�u;E
u� 
]t
�ǀ�@��ɀ�}�MN�`��<t<;t<,u���Js�H��������V1��|$� �6z$�,�r<tw��$����$����N���1һM ��$��$=� w<�r��$�Ĭ�~$��$��$�6z$�֊���� ��J�< t:�=�t�<@r� �����&�$������$�늇�$�t�с|�VZtɃ����[��=�u���$�t�u�t�6z$�<�t�
��x$< t!<�u	��$t����$$�=� w߿z� �u��w$t��$=� wƿq�	 �u���$	�t��$�����Gu��>c�w$t����x$< t��g�w$t�H�w$u��$ t��y$< t
�<dr�w$ ��$�Á�@s= r$��$$8~$�$�����$��~$�㋇^�� tP��X
�$��~$��$t
��w$tO��|$	�t
�O� �w��$	�t
��$���w��$	�t�w�����>c�>�$s�w$%u��$ t��$��$�����J��k� ��5�0�E$���~$�!�E$��$��>�$��uB�>|$��Eu6��$��$,|-t;���$�]�t	��$8�u:�$t��$< u���E<tr
��$��E< t<t	<uހ�$ ��$��$����.%룰�}
 t��$ ��E�>�$��$�>�$ð	�b�c@@�w$u��$ t@�1ɋE�U
)�ʈE���8�u
9�u�E���$�cCCC�>�$ rC�U
�E< t<
t<u�CCC��$ �	�uͰ�E�E1�)�ʉE�U�>�$�X�����]�9�E<w�u��$<u�}�u�� ��!��E<r�<s��$�"�]���~$��$:Et� �E,<s����~$ËE�����E� 8�ub;E
u]��] �e�E�>�$À}	t���$ ��8��$t��$t0�&�$��<"t��$��$ X�@��}��}���%�;EtX��À} t�8Et�X���u�t�E���w$t
H��E$�	~$��$�>|$�<-tP,0<
XrP$�,A<X��<-t�? � 	�u4�u2ì�/ ��	ѹ t!������� �ƀt:���u�ǀt���u�Àt�AAA�1�1��rì�r����u� �������������u��tB��tB��t	B��t���UË%��<Eu"P���d���W�@Q� ��Y_XuF�Ӏ�����u)�K��r��FF�����TAVW�b_^󦟊T�&�u�VW�U_^�tIQ����J����:��D���  �����  �����  �XP��:��G��S�_YA��<u�g�փ�s������ ������i�։ʡi�?�:���$�P�4�  �X�]2�G�  VW�`_^9�tP�  ��&�CX@����9�r��)�AVW�_^�i�PQ��Y� �X< r<~v�.&�C���� t�  ��F���6g�E�-V�P^��R��ZN9�sF��J���GG�]2�B�g��u	VW��
_^���b�W<t*R�����J)�_��H�r�W��
_�֎���>�
��
Çډ��R�:����J�  �W��
��&���
_�=�.�RS�f[��J1ɀ>Z t3V��I�6_;6ar�V�r�>Zu�<
uF�Z�ଢZ�6_^���!< t#<t<t��s���~r�A���IN���!���)�Q��GY�<
��>��	�9
CZ��J<t��t�у�� ��C��
��/��1ɋ��)�AQR�B�����J_�Ã�tX1���	�t
��JQ�YHu������J��Y��J�Ó���t�r��e��J�u���<t����u�N��<t�r���ۉӰ̆����R�-��J�u�N�<t�t��G<�t�ۉӈ���>vFu<���6�JN�<t(�t���3��u���������9�u����������R�Q���?[����s�  ���)��h�����"��a���0��	t�%����yt;�u�� t
��>y t҉މ׸ =�� �!s�3��B1�1��!�yulVS;6 ��ޝs6 � 1�������)��� r9�u9�s[^�	�Z�!�0[^����� B1�1��!� !������?� ����!9�u������>�!�P�>�![�yt�� �� ��1�� �����r� �>�����K�� ���!rv��+. =� r�� �9�=�6�&����6����6��6����Q�!��;�����P���!�"%��:�!�;�
 �:� �����c��������������V<,t<tK <lt���^N��9Q���ډ�����9�u��$����8�Y�VW�(_^�s������(�^N�<tW<?tS<0r<6w	,0�W�Y� <ct<nuk� <cud�� 
�X ��D
�&W��u<3t<2u��.
<u=�X�&Yþ��W< t��0�����>X t���Y:Wt�����0���� <t��	t:\t<ar<zw$ߪ��� ��>���� t8��� r0��}�.Hu�}�EXt"��}�.Eu�}�XEt��}�.Cu�}�OMt��yW��JN��<u���J�\ �  ���l � ����J_WG��<u�X�)�HH�ì<t�P	t�:[tN�)�!P�<t�9	t:\u�NX<uHì<t��!	t�� �N�<ar<zw$ߪ�  �����1�������vR�����Z���Q�6�� �� ��� �u �E��t	���u�� �@t$?�� ���=<�u� $�4�8ut<�s*��u<t<@r<�r�<t4�uF<@r<�rFFFF���̆��J���������J�������و1ҁ>vFu";�u��H9�u���F��� �h�"9vu
�{Y���,��v������z����ظ %�!����ظ%�!����ظ%�!�O�
 ��� �� <u�*�N�%�߿�� ����Ju4�� ����<uS�����L[<t��]�����u�x �<FuON�<t< t<	t<,u>�A<u��<t�N�%�߿GI� �u��WIw�E���!���E�	����N���1����QR�BZY)с�JO)�r�W�O_A��SW�_��J��u;��QW���V���^_u#R�����:��D����
��@� � �U��!Z��YA�X�R��Q�� ���>v"u��Y��ô	�v�!��it���K�<u�k��s�����  �����5�m�kAQR��? �O[Y�k��)�)�9�s����t8�&���ˎێӋ&3��s"<v����������J��������H���y�t���< u���� ��J���r�������V
�޴<1ɺ� �!rP�	���!����r1��F	�t�'@'����F����	���![�V
� �)Ѐ~ u;Fr�F��@���!9�u1ҁ��)N��^ uОu���	� �!�A�� �!�>�!Ã��%t-���7t%���It���ZtP�	��!X��J�.�c��	�!É��I]��w	A� ��!���	���!�&5�x �>= t�����:��P�&�X� ôJ1ۇU	�t�!ø L�!��P�;�!�$%�B�!�#%.�>�!�&7+&9�&. ���X[YZ]]^_.�&�.�6�.�6�.�6���.�vi.��.��  .�� .�= .�x�).�v�.�v"�.�vF�.��.��.��.��.�&��̎Լ�WVULLRQSP.�&7���#5�!�>�@�#%� �!�$5�!�B�D�$%� �!�P���!�ێÁ&���À>N u�F1��޾� �����PR�	��;�!ZX�Error in sequence of calls to hack.
$�N�>��N �F1��ǿ� ����ø  ��:���J��)щ]�\ ��@� �!�r=�a)�t�<t<
t����g s�
���JrNO�6_�Z���@� ����I)��!��
��I�!��
�!��I��À>Z u�ÿ�I�6_;6ar� r�>Zu�<
uF����PSQR���?1۹�J��)�t�!r		�t������aZY[X�V���^��1��)�SRQ�J���KY���r
�-�׎�^��<�           ��� <tQ��<tGRS�� ��t�	������R��A���q��RSV�J9�s�B�����>= u^[	�u�ZX[	��[�=�G��OX�G�G1�I�� �� <t�D����" ��o <=u���� �p�r�oÀ>o t�p���r���o �x À>x t��	���!�2�Q�K V�a<,t <lt(^Y�~I�s���N���D <lt�<R� ��Z9�w\��	R� ��Z�NI�rI��Ê$�� ��su"W ��� �u.����狝�_F�� <:u��m V�� <:t^N��X���� �X �����J<t�<'t<"t�] �G��Ĭ8�t<t۪���8�t�� <u���U rƘ�1۬�K r���u�� �����������3 r������) r���u�������� r��±�� r���u)������P,0<	vXP ,a<w
DD��X���+ <u����� <,uV� <u^�,Ã�ì$�,A<v�N�< t�<	t��< t<	t
<,t<;t<=ýC�C`EmEvE�E�E�E�E�E�E�E�E�EF4F:FlF|F�F�F�F�F�FG
GG1 3 DXCLSTCSDSESFSGSSS        !$          G�@�@�@AA
	ALCLDLBLAHCHDHBHAXCXDXBXSPBPSIDIESCSSSDSFSGSSTMMCRDRTRBYWOWODWQWFLDOTBSHLONEFA����&.6>de���� 
RK�&�?��?  ��?  ��?��?���$  ��<�u��?@����?� �ã�?=�r
��% � ������� �㋟M�Ήر��:�$r��$�����sW���?�����?� �����À�?��$�<�r���,��à~$$��Ä�?u�?��t�>�?X�j���V��z���u�t��d��?  ^���< tc��? �<@r7��? <`s<Ps	����?t��?�&�?����Ā����p�Ã���}?�����(r���?��� uO����?�< t�,�띠�?��"�?u�� � �]#� �@��u� ��#� ���t&�?W�ߡ�?�u׋5��z�_��'�t,��?�� u�W�	 �q�_u� �W��J�� �_��?녨t6$�?��?�� u�$�W�z� 򮾿t9AA�u�����?u)���$��t�W��?��#�. �u���?t侕��?_� V�^W�_����?�� t��?�u� t�ω�� �u�����)��W��J�m��:��k�� ���?��~� �����J��?������J���  ��J)����_��?t���}� uF�NW��?��_��K)�Q�]Y��c��?4�uZ�>�?wS��J�>�? |t��HH�4�T�:���?��=���?������F@���?&�&�W�>�? |t������������?�t�u��?��t
=� t=� u��? ��À� | ���?t������tP��X������<�r�����?��?t��:��~$$ǀ�? ��? t� ��?��?  <��[�t{�����?��u��t(�BP����?u��?��BX����?���t�+��SI����t�D���?��~$�t.�~$�u����?< �+}�-�؈%G����+����?��]��<u	�[��&� P$<u��$X��u�@t�< }���-G�����~$$<uZ�$$<u�~$�u����[EGG���]��$������$<tA�[EGG���&$���t�*��2�Āt	�4��@t�8��]���[EGG��]���#<�s����<�r���@���? u@�~$�m���$��?�?�� |t�EG�������?�à�?�ڰ �ָQ � �FL��O��AT��DO��UB��LE���+�T���<�s��&�?�����t�����FA��R ��&�?��<�s�����dP�t�[P�W�L�:��tX�@X�<��-��'�:�{tP���Z�*�k�?ڃ� ���k�?�X�~$$<t����/��~$$��ST��(��0)ثûCR�� <wu��$�>�?u$<u �n�� �DR����� <r\<s��$�TR���0��� <sB<t�&�?�<r��$���o< ��+}�۰-����]�l�t
�����?X�+��&�?��?  ��?  ��?���$  �&�?��$�N@�
 �t��?���q �����?�	 )����r
��L@� ����� ����� ���$���?�u��?��� �~$�~$ÿ�J��� ����Jr�à�?������@�È&�?�>�?�� }	�BY��TE�t�D��WO��RD�� P��TR�� ��� P� �}X�yØ���P��@�X�þ���$t�D	7�Y�>X u�W:�$r��� ��D	6�W:�$s��$0�D� þ�E�� �u��$)�1ɠY:~�
 �V�6k.6�?�^��?�V�6k.6�?�^��?��6k��� Ku��6kÃ>�? t�?��ω����JW�NO�_�À�?��?þ�����J� �0 S�� [��J��# � ��2 � ���k������?�b����kËCC��=��Q�] Y�  ���Ë��7I� �D�t�D �� �FF���   � @    NVUPDIPLNZNAPONCOVDNEINGZRACPECY���< u��P��� XP���� X$�'@'��P)�w� ��JY)�� ��O�= t�G�
��@� ����J)��!�� �P���J0SR�U�6 ��!�P���!Z[�d��L�ZZ ; );2;!$"DEBUG version 0.95f.  Debugger.

Usage:	DEBUG [[drive:][path]progname [arglist]]

  progname	(executable) file to debug or examine
  arglist	parameters given to program

For a list of debugging commands, run DEBUG and type ? at the prompt.
$Invalid switch - x
$�������� D1��!r�⁀��u�Z � 0�!��=r�=�X��%�P��X% �= �t|�� �Q��X� ��Wtj�W����f�fXf��f5   fPf�f�fXf9�tA�Wf��f5    fPf�f�fXf9�t'fQf���f1��f��|f1�f@���$<v��W�fQf��ܠW�Y����IZZ�>�I��I< u5�>�I��I%?��?u&�X�>Wu�����������ٛ�>�I��I�u�Y� 7�!�[��/u�\�� �< t�<	t�8�t"</u2�<?u,�D< t<	t<u�	��I�!� �<?t��J�	��J�!�L�!N��� �z� 5�!�z�|�5�!�~���5�!����� ��I���%��!���
 �O���D�!$�L�� ��L���M���PHH�3@@���U��ؿ������;���� � )�= v1����HH�����X���1���