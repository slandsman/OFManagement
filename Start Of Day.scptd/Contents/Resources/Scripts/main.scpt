FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Seth's start of day log script.  
	
	Capture and log the following:
	
	1. Number of items that are due "today", with today currently defined as items that have a note that contains @today or items that have today as their due date
	2. Number of items currently set to "next week", with nextweek currently defined as items that have a note that contains @nextweek
	3. Number of overdue items
     � 	 	 
 	 S e t h ' s   s t a r t   o f   d a y   l o g   s c r i p t .     
 	 
 	 C a p t u r e   a n d   l o g   t h e   f o l l o w i n g : 
 	 
 	 1 .   N u m b e r   o f   i t e m s   t h a t   a r e   d u e   " t o d a y " ,   w i t h   t o d a y   c u r r e n t l y   d e f i n e d   a s   i t e m s   t h a t   h a v e   a   n o t e   t h a t   c o n t a i n s   @ t o d a y   o r   i t e m s   t h a t   h a v e   t o d a y   a s   t h e i r   d u e   d a t e 
 	 2 .   N u m b e r   o f   i t e m s   c u r r e n t l y   s e t   t o   " n e x t   w e e k " ,   w i t h   n e x t w e e k   c u r r e n t l y   d e f i n e d   a s   i t e m s   t h a t   h a v e   a   n o t e   t h a t   c o n t a i n s   @ n e x t w e e k 
 	 3 .   N u m b e r   o f   o v e r d u e   i t e m s 
   
  
 l     ��������  ��  ��        j     �� �� 0 nl    l     ����  I    �� ��
�� .sysontocTEXT       shor  m     ���� 
��  ��  ��        j    	�� �� 	0 debug    m    ��
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  R !���� ! O   R " # " k   Q $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 20 filterforactiveprojects filterForActiveProjects ;  <�� < o   ' (���� 0 projectlist projectList��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� 0 projectlist projectList >  A B A l  2 2��������  ��  ��   B  C D C O  2 > E F E I   6 =�� G���� 0 gettasks getTasks G  H I H o   7 8���� 0 thedocument theDocument I  J�� J o   8 9���� 0 projectlist projectList��  ��   F o   2 3���� 	0 oflib   D  K L K r   ? B M N M 1   ? @��
�� 
rslt N o      ���� 0 tasklist taskList L  O P O l  C C��������  ��  ��   P  Q R Q O  C N S T S I   G M�� U���� 40 filterforincompletetasks filterForIncompleteTasks U  V�� V o   H I���� 0 tasklist taskList��  ��   T o   C D���� 	0 oflib   R  W X W r   O R Y Z Y 1   O P��
�� 
rslt Z o      ���� 0 tasklist taskList X  [ \ [ l  S S��������  ��  ��   \  ] ^ ] O  S e _ ` _ I   W d�� a���� 20 filterfortasksdueondate filterForTasksDueOnDate a  b c b o   X Y���� 0 tasklist taskList c  d�� d n   Y ` e f e 1   ^ `��
�� 
dstr f l  Y ^ g���� g I  Y ^������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   ` o   S T���� 	0 oflib   ^  h i h r   f i j k j 1   f g��
�� 
rslt k o      ���� 0 duetodaytasks dueTodayTasks i  l m l l  j j��������  ��  ��   m  n o n O  j x p q p I   n w�� r���� .0 filterfortaskswithtag filterForTasksWithTag r  s t s o   o p���� 0 tasklist taskList t  u�� u m   p s v v � w w  @ t o d a y��  ��   q o   j k���� 	0 oflib   o  x y x r   y ~ z { z 1   y z��
�� 
rslt { o      ���� $0 markedtodaytasks markedTodayTasks y  | } | l   ��������  ��  ��   }  ~  ~ O   � � � � I   � ��� ����� .0 filterfortaskswithtag filterForTasksWithTag �  � � � o   � ����� 0 tasklist taskList �  ��� � m   � � � � � � �  @ n e x t w e e k��  ��   � o    ����� 	0 oflib     � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� *0 markednextweektasks markedNextWeekTasks �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate �  � � � o   � ����� 0 tasklist taskList �  ��� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� 0 overduetasks overdueTasks �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� $0 filterforflagged filterForFlagged �  ��� � o   � ����� 0 tasklist taskList��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      �� 0 flaggedtasks flaggedTasks �  � � � l  � ��~�}�|�~  �}  �|   �  � � � I  � ��{ ��z
�{ .ascrcmnt****      � **** � n   � � � � � 1   � ��y
�y 
leng � o   � ��x�x 0 duetodaytasks dueTodayTasks�z   �  � � � I  � ��w ��v
�w .ascrcmnt****      � **** � n   � � � � � 1   � ��u
�u 
leng � o   � ��t�t $0 markedtodaytasks markedTodayTasks�v   �  � � � I  � ��s ��r
�s .ascrcmnt****      � **** � n   � � � � � 1   � ��q
�q 
leng � o   � ��p�p *0 markednextweektasks markedNextWeekTasks�r   �  � � � I  � ��o ��n
�o .ascrcmnt****      � **** � n   � � � � � 1   � ��m
�m 
leng � o   � ��l�l 0 overduetasks overdueTasks�n   �  � � � I  � ��k ��j
�k .ascrcmnt****      � **** � n   � � � � � 1   � ��i
�i 
leng � o   � ��h�h 0 flaggedtasks flaggedTasks�j   �  � � � l  � ��g�f�e�g  �f  �e   �  � � � r   � � � � n  � � � � I   ��d ��c�d  0 generatestatus generateStatus �  � � � o   � ��b�b 0 flaggedtasks flaggedTasks �  � � � o   � ��a�a 0 duetodaytasks dueTodayTasks �  � � � o   � ��`�` $0 markedtodaytasks markedTodayTasks �  � � � o   ��_�_ *0 markednextweektasks markedNextWeekTasks �  ��^ � o  �]�] 0 overduetasks overdueTasks�^  �c   �  f   � � � o      �\�\ 
0 svalue   �  � � � l �[�Z�Y�[  �Z  �Y   �  � � � r  , � � � I (�X � �
�X .sysodlogaskr        TEXT � m   � � � � � ( T w e e t   m o r n i n g   s t a t u s � �W � �
�W 
btns � J   � �  � � � m   � � � � �  Y e s �  ��V � m   � � � � �  C a n c e l�V   � �U ��T
�U 
dflt � m  !"�S�S �T   � o      �R�R 0 question   �  � � � r  -8 � � � n  -4 � � � 1  04�Q
�Q 
bhit � o  -0�P�P 0 question   � o      �O�O 
0 answer   �  � � � l 99�N�M�L�N  �M  �L   �  � � � Z  9O � ��K�J � = 9@ � � � o  9<�I�I 
0 answer   � m  <? � � � � �  Y e s � n CK � � � I  DK�H ��G�H 0 tweetstatus tweetStatus �  ��F � o  DG�E�E 
0 svalue  �F  �G   �  f  CD�K  �J   �  ��D � l PP�C�B�A�C  �B  �A  �D   # m    	 � ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �@�?�>�@  �?  �>   �    i   
  I      �=�<�;�= 0 	pathtolib 	pathToLib�<  �;   k       r     	 l    	�:�9	 I    �8

�8 .earsffdralis        afdr
  f      �7�6
�7 
from m    �5
�5 fldmfldu�6  �:  �9   o      �4�4 0 apppath appPath  l   
 
�3�3   y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g  l  
 
�2�1�0�2  �1  �0    L   
  c   
  l  
 �/�. b   
  o   
 �-�- 0 apppath appPath m     � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�/  �.   m    �,
�, 
ctxt �+ L     n     !  1    �*
�* 
strq! o    �)�) 0 myfolderpath myFolderPath�+   "#" l     �(�'�&�(  �'  �&  # $%$ i    &'& I      �%�$�#�% 0 getoflib getOFLib�$  �#  ' k     (( )*) r     +,+ I    �"-�!
�" .sysoloadscpt        file- 4     
� .
�  
file. l   	/��/ b    	010 n   232 I    ���� 0 	pathtolib 	pathToLib�  �  3  f    1 m    44 �55  O F L i b . s c p t�  �  �!  , o      �� 0 thelib theLib* 6�6 L    77 o    �� 0 thelib theLib�  % 898 l     ����  �  �  9 :;: i    <=< I      �>��  0 generatestatus generateStatus> ?@? o      �� 0 lflaggedtasks lFlaggedTasks@ ABA o      ��  0 lduetodaytasks lDueTodayTasksB CDC o      �� &0 lmarkedtodaytasks lMarkedTodayTasksD EFE o      �� ,0 lmarkednextweektasks lMarkedNextWeekTasksF G�G o      �� 0 loverduetasks lOverdueTasks�  �  = w     DHIH k    DJJ KLK r    MNM [    	OPO l   Q��Q n    RSR 1    �

�
 
lengS o    �	�	  0 lduetodaytasks lDueTodayTasks�  �  P l   T��T n    UVU 1    �
� 
lengV o    �� &0 lmarkedtodaytasks lMarkedTodayTasks�  �  N o      �� 0 
totaltoday 
totalTodayL WXW r    YZY [    [\[ l   ]��] n    ^_^ 1    �
� 
leng_ o    � �  0 lflaggedtasks lFlaggedTasks�  �  \ o    ���� 0 
totaltoday 
totalTodayZ o      ���� 0 totalthisweek totalThisWeekX `a` r    bcb m    dd �ee < S e t h ' s   s t a r t   o f   d a y   s t a t u s   i s  c o      ���� 0 thetext theTexta fgf r    hih b    jkj b    lml o    ���� 0 thetext theTextm o    ���� 0 
totaltoday 
totalTodayk m    nn �oo $   t a s k s   f o r   t o d a y ,  i o      ���� 0 thetext theTextg pqp r     'rsr b     %tut b     #vwv o     !���� 0 thetext theTextw o   ! "���� 0 totalthisweek totalThisWeeku m   # $xx �yy ,   t a s k s   f o r   t h i s   w e e k ,  s o      ���� 0 thetext theTextq z{z r   ( 1|}| b   ( /~~ b   ( -��� o   ( )���� 0 thetext theText� n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� ,0 lmarkednextweektasks lMarkedNextWeekTasks m   - .�� ��� 4   t a s k s   f o r   n e x t   w e e k ,   a n d  } o      ���� 0 thetext theText{ ��� r   2 ;��� b   2 9��� b   2 7��� o   2 3���� 0 thetext theText� n   3 6��� 1   4 6��
�� 
leng� o   3 4���� 0 loverduetasks lOverdueTasks� m   7 8�� ���    o v e r d u e   t a s k s .� o      ���� 0 thetext theText� ��� l  < <��������  ��  ��  � ��� I  < A�����
�� .ascrcmnt****      � ****� o   < =���� 0 thetext theText��  � ��� l  B B��������  ��  ��  � ���� L   B D�� o   B C���� 0 thetext theText��  I�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ; ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � O     
��� I   	�����
�� .chTwpsTwnull���    obj � o    ���� 0 v  ��  � m     ���                                                                                  chTW  alis    d  Macintosh HD               �!�[H+     vTwitterrific.app                                                ,��Ǎ�/        ����  	                Applications    �!��      ǎ       v  *Macintosh HD:Applications:Twitterrific.app  "  T w i t t e r r i f i c . a p p    M a c i n t o s h   H D  Applications/Twitterrific.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & T a s k s   a d d e d   t o d a y :  � n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList� o   - 2���� 0 nl  � o      ���� 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7���� 0 thetext theText� m   7 8�� ��� , N o n - w a i t   a d d e d   t o d a y :  � n   9 <��� 1   : <��
�� 
leng� o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� o   = B���� 0 nl  � o      ���� 0 thetext theText� ��� r   F U��� b   F S��� b   F M   b   F I o   F G���� 0 thetext theText m   G H � 2 A c t i v e   i n c o m p l e t e   t a s k s :   n   I L 1   J L��
�� 
leng o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� o   M R���� 0 nl  � o      ���� 0 thetext theText� 	 r   V e

 b   V c b   V ] b   V Y o   V W���� 0 thetext theText m   W X � L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :   n   Y \ 1   Z \��
�� 
leng o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList o   ] b���� 0 nl   o      ���� 0 thetext theText	  l  f f��������  ��  ��    l  f f��������  ��  ��    I  f k����
�� .ascrcmnt****      � **** o   f g���� 0 thetext theText��    l  l l��������  ��  ��     r   l y!"! c   l w#$# b   l u%&% l  l s'����' I  l s��()
�� .earsffdralis        afdr( m   l m��
�� afdrdesk) ��*��
�� 
rtyp* m   n o��
�� 
TEXT��  ��  ��  & m   s t++ �,,  o f   t o d a y . t x t$ m   u v��
�� 
TEXT" o      ���� 0 thefilepath theFilePath  -.- r   z �/0/ I  z ���12
�� .rdwropenshor       file1 o   z {���� 0 thefilepath theFilePath2 ��3��
�� 
perm3 m   | }��
�� boovtrue��  0 o      ���� 0 thefile theFile. 454 I  � ���67
�� .rdwrwritnull���     ****6 o   � ����� 0 thetext theText7 ��89
�� 
refn8 o   � ����� 0 thefile theFile9 ��:��
�� 
wrat: m   � ���
�� rdwreof ��  5 ;��; I  � ���<��
�� .rdwrclosnull���     ****< o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � =>= l     ��������  ��  ��  > ?@? i    !ABA I      ��C���� 0 
writestats 
writeStatsC DED o      ���� 0 lfolderlist lFolderListE FGF o      ���� 0 lprojectlist lProjectListG HIH o      ���� (0 lactiveprojectlist lActiveProjectListI JKJ o      ���� 0 	ltasklist 	lTaskListK LML o      �� "0 lactivetasklist lActiveTaskListM NON o      �~�~ (0 lcompletedtasklist lCompletedTaskListO PQP o      �}�} *0 lincompletetasklist lIncompleteTaskListQ RSR o      �|�| 40 ltodayscompletedtasklist lTodaysCompletedTaskListS TUT o      �{�{ &0 lnonrepincomplete lNonRepIncompleteU V�zV o      �y�y *0 laddedtodaytasklist lAddedTodayTaskList�z  ��  B w     �WXW k    �YY Z[Z l    �x\]�x  \ b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   ] �^^ � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t[ _`_ r    aba m    cc �dd  b o      �w�w 0 thetext theText` efe l    �vgh�v  g J D		set theText to theText & "folders: " & length of lFolderList & nl    h �ii � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  f jkj r    lml b    non b    pqp b    	rsr o    �u�u 0 thetext theTexts m    tt �uu  p r o j e c t s :  q n   	 vwv 1   
 �t
�t 
lengw o   	 
�s�s 0 lprojectlist lProjectListo o    �r�r 0 nl  m o      �q�q 0 thetext theTextk xyx r    %z{z b    #|}| b    ~~ b    ��� o    �p�p 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :   n    ��� 1    �o
�o 
leng� o    �n�n (0 lactiveprojectlist lActiveProjectList} o    "�m�m 0 nl  { o      �l�l 0 thetext theTexty ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�k�k 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�j
�j 
leng� o   ) *�i�i 0 	ltasklist 	lTaskList� o   - 2�h�h 0 nl  � o      �g�g 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�f�f 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�e
�e 
leng� o   9 :�d�d "0 lactivetasklist lActiveTaskList� o   = B�c�c 0 nl  � o      �b�b 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�a�a 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�`
�` 
leng� o   I J�_�_ (0 lcompletedtasklist lCompletedTaskList� o   M R�^�^ 0 nl  � o      �]�] 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�\�\ 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�[
�[ 
leng� o   Y Z�Z�Z *0 lincompletetasklist lIncompleteTaskList� o   ] b�Y�Y 0 nl  � o      �X�X 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�W�W 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�V
�V 
leng� o   i j�U�U 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�T�T 0 nl  � o      �S�S 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�R�R 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�Q
�Q 
leng� o   y z�P�P &0 lnonrepincomplete lNonRepIncomplete� o   } ��O�O 0 nl  � o      �N�N 0 thetext theText� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��M�M 0 thetext theText� m   � ��� ��� & T a s k s   a d d e d   t o d a y :  � n   � ���� 1   � ��L
�L 
leng� o   � ��K�K *0 laddedtodaytasklist lAddedTodayTaskList� o   � ��J�J 0 nl  � o      �I�I 0 thetext theText� ��� l  � ��H�G�F�H  �G  �F  � ��� I  � ��E��D
�E .ascrcmnt****      � ****� o   � ��C�C 0 thetext theText�D  � ��� l  � ��B�A�@�B  �A  �@  � ��� r   � ���� c   � ���� b   � ���� l  � ���?�>� I  � ��=��
�= .earsffdralis        afdr� m   � ��<
�< afdrdesk� �;��:
�; 
rtyp� m   � ��9
�9 
TEXT�:  �?  �>  � m   � ��� ���  o f . t x t� m   � ��8
�8 
TEXT� o      �7�7 0 thefilepath theFilePath� ��� r   � �� � I  � ��6
�6 .rdwropenshor       file o   � ��5�5 0 thefilepath theFilePath �4�3
�4 
perm m   � ��2
�2 boovtrue�3    o      �1�1 0 thefile theFile�  I  � ��0
�0 .rdwrwritnull���     **** o   � ��/�/ 0 thetext theText �.	
�. 
refn o   � ��-�- 0 thefile theFile	 �,
�+
�, 
wrat
 m   � ��*
�* rdwreof �+   �) I  � ��(�'
�( .rdwrclosnull���     **** o   � ��&�& 0 thefile theFile�'  �)  X�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  @  l     �%�$�#�%  �$  �#    i   " % I      �"�!�" 0 
writedebug 
writeDebug �  o      �� 0 ltask lTask�   �!   Z     ��� o     �� 	0 debug   w     k   
   r   
  b   
  b   
  !  m   
 "" �##  T a s k   n a m e   i s  ! n   $%$ 1    �
� 
pnam% o    �� 0 ltask lTask o    �� 0 nl   o      �� 0 thetext theText &'& r    %()( b    #*+* b    ,-, m    .. �//  T a s k   i d   i s  - n   010 1    �
� 
ID  1 o    �� 0 ltask lTask+ o    "�� 0 nl  ) o      �� 0 thetext theText' 232 r   & 5454 b   & 3676 b   & -898 b   & ):;: o   & '�� 0 thetext theText; m   ' (<< �== & C o m p l e t i o n   d a t e   i s  9 n  ) ,>?> 1   * ,�
� 
FCdc? o   ) *�� 0 ltask lTask7 o   - 2�� 0 nl  5 o      �� 0 thetext theText3 @A@ r   6 ;BCB n  6 9DED 1   7 9�
� 
FCdcE o   6 7�� 0 ltask lTaskC o      �� 0 thedate theDateA FGF r   < AHIH n   < ?JKJ 1   = ?�
� 
dstrK o   < =�
�
 0 thedate theDateI o      �	�	 0 thedateonly theDateOnlyG LML r   B ONON b   B MPQP b   B GRSR b   B ETUT o   B C�� 0 thetext theTextU m   C DVV �WW 4 C o m p l e t i o n   d a t e   i s   r e a l l y  S o   E F�� 0 thedateonly theDateOnlyQ o   G L�� 0 nl  O o      �� 0 thetext theTextM XYX r   P ]Z[Z c   P [\]\ b   P Y^_^ l  P W`��` I  P W�ab
� .earsffdralis        afdra m   P Q�
� afdrdeskb � c��
�  
rtypc m   R S��
�� 
TEXT��  �  �  _ m   W Xdd �ee  o f D e b u g . t x t] m   Y Z��
�� 
TEXT[ o      ���� 0 thefilepath theFilePathY fgf r   ^ ghih I  ^ e��jk
�� .rdwropenshor       filej o   ^ _���� 0 thefilepath theFilePathk ��l��
�� 
perml m   ` a��
�� boovtrue��  i o      ���� 0 thefile theFileg mnm I  h y��op
�� .rdwrwritnull���     ****o o   h i���� 0 thetext theTextp ��qr
�� 
refnq o   l m���� 0 thefile theFiler ��s��
�� 
wrats m   p s��
�� rdwreof ��  n t��t I  z ��u��
�� .rdwrclosnull���     ****u o   z {���� 0 thefile theFile��  ��  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  �   vwv l     ��������  ��  ��  w xyx l     ��������  ��  ��  y z��z l     ��������  ��  ��  ��       *��{|��}~�������������������������������������������������������  { (���������������������������������������������������������������������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****�� 	0 oflib  �� 0 thedocument theDocument�� 0 projectlist projectList�� 0 tasklist taskList�� 0 duetodaytasks dueTodayTasks�� $0 markedtodaytasks markedTodayTasks�� *0 markednextweektasks markedNextWeekTasks�� 0 overduetasks overdueTasks�� 0 flaggedtasks flaggedTasks�� 
0 svalue  �� 0 question  �� 
0 answer  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  | ���  

�� boovfals} ������������ 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ����������
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E~ ��'���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����4��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O� ��=����������  0 generatestatus generateStatus�� ����� �  ������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks��  � ������������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks�� 0 
totaltoday 
totalToday�� 0 totalthisweek totalThisWeek�� 0 thetext theText� I�dnx���~
� 
leng
�~ .ascrcmnt****      � ****�� E�Z��,��,E�O��,�E�O�E�O��%�%E�O��%�%E�O���,%�%E�O���,%�%E�O�j O�� �}��|�{���z�} 0 tweetstatus tweetStatus�| �y��y �  �x�x 0 v  �{  � �w�w 0 v  � ��v
�v .chTwpsTwnull���    obj �z � �j U� �u��t�s���r�u $0 writedailystatus writeDailyStatus�t �q��q �  �p�o�n�m�l�k�p (0 lactiveprojectlist lActiveProjectList�o 40 ltodayscompletedtasklist lTodaysCompletedTaskList�n *0 laddedtodaytasklist lAddedTodayTaskList�m 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�l 60 lactiveincompletetasklist lActiveIncompleteTaskList�k $0 lnotwaittasklist lNotWaitTaskList�s  � 	�j�i�h�g�f�e�d�c�b�j (0 lactiveprojectlist lActiveProjectList�i 40 ltodayscompletedtasklist lTodaysCompletedTaskList�h *0 laddedtodaytasklist lAddedTodayTaskList�g 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�f 60 lactiveincompletetasklist lActiveIncompleteTaskList�e $0 lnotwaittasklist lNotWaitTaskList�d 0 thetext theText�c 0 thefilepath theFilePath�b 0 thefile theFile� ����a����`�_�^�]�\+�[�Z�Y�X�W�V�U�T
�a 
leng
�` .ascrcmnt****      � ****
�_ afdrdesk
�^ 
rtyp
�] 
TEXT
�\ .earsffdralis        afdr
�[ 
perm
�Z .rdwropenshor       file
�Y 
refn
�X 
wrat
�W rdwreof �V 
�U .rdwrwritnull���     ****
�T .rdwrclosnull���     ****�r ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �SB�R�Q���P�S 0 
writestats 
writeStats�R �O��O 
� 
 �N�M�L�K�J�I�H�G�F�E�N 0 lfolderlist lFolderList�M 0 lprojectlist lProjectList�L (0 lactiveprojectlist lActiveProjectList�K 0 	ltasklist 	lTaskList�J "0 lactivetasklist lActiveTaskList�I (0 lcompletedtasklist lCompletedTaskList�H *0 lincompletetasklist lIncompleteTaskList�G 40 ltodayscompletedtasklist lTodaysCompletedTaskList�F &0 lnonrepincomplete lNonRepIncomplete�E *0 laddedtodaytasklist lAddedTodayTaskList�Q  � �D�C�B�A�@�?�>�=�<�;�:�9�8�D 0 lfolderlist lFolderList�C 0 lprojectlist lProjectList�B (0 lactiveprojectlist lActiveProjectList�A 0 	ltasklist 	lTaskList�@ "0 lactivetasklist lActiveTaskList�? (0 lcompletedtasklist lCompletedTaskList�> *0 lincompletetasklist lIncompleteTaskList�= 40 ltodayscompletedtasklist lTodaysCompletedTaskList�< &0 lnonrepincomplete lNonRepIncomplete�; *0 laddedtodaytasklist lAddedTodayTaskList�: 0 thetext theText�9 0 thefilepath theFilePath�8 0 thefile theFile� Xct�7���������6�5�4�3�2��1�0�/�.�-�,�+�*
�7 
leng
�6 .ascrcmnt****      � ****
�5 afdrdesk
�4 
rtyp
�3 
TEXT
�2 .earsffdralis        afdr
�1 
perm
�0 .rdwropenshor       file
�/ 
refn
�. 
wrat
�- rdwreof �, 
�+ .rdwrwritnull���     ****
�* .rdwrclosnull���     ****�P ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �)�(�'���&�) 0 
writedebug 
writeDebug�( �%��% �  �$�$ 0 ltask lTask�'  � �#�"�!� ���# 0 ltask lTask�" 0 thetext theText�! 0 thedate theDate�  0 thedateonly theDateOnly� 0 thefilepath theFilePath� 0 thefile theFile� "�.�<��V����d��������
� 
pnam
� 
ID  
� 
FCdc
� 
dstr
� afdrdesk
� 
rtyp
� 
TEXT
� .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�& �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �������

� .aevtoappnull  �   � ****� k    R��  ��  �	�	  �  �  �  � *�� �������� ������������ v���� ��������������������� ��� � ������������� ���� 0 getoflib getOFLib� 	0 oflib  
� 
FCDo� 0 thedocument theDocument� 0 getprojects getProjects
� 
rslt� 0 projectlist projectList� 20 filterforactiveprojects filterForActiveProjects�  0 gettasks getTasks�� 0 tasklist taskList�� 40 filterforincompletetasks filterForIncompleteTasks
�� .misccurdldt    ��� null
�� 
dstr�� 20 filterfortasksdueondate filterForTasksDueOnDate�� 0 duetodaytasks dueTodayTasks�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 markedtodaytasks markedTodayTasks�� *0 markednextweektasks markedNextWeekTasks�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� 0 overduetasks overdueTasks�� $0 filterforflagged filterForFlagged�� 0 flaggedtasks flaggedTasks
�� 
leng
�� .ascrcmnt****      � ****�� ��  0 generatestatus generateStatus�� 
0 svalue  
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 question  
�� 
bhit�� 
0 answer  �� 0 tweetstatus tweetStatus�
S)j+  E�O�G*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 	UO�E�O� *�k+ UO�E�O� *�*j �,l+ UO�E�O� *�a l+ UO�E` O� *�a l+ UO�E` O� *�*j l+ UO�E` O� *�k+ UO�E` O�a ,j O_ a ,j O_ a ,j O_ a ,j O_ a ,j O)_ �_ _ _ a + E` Oa a a  a !lva "la # $E` %O_ %a &,E` 'O_ 'a (  )_ k+ )Y hOPU� ��� ���  � k      �� ��� l      ������  ���
	Script library for the manipulation of OmniFocus.

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released JAN2010
   � ���. 
 	 S c r i p t   l i b r a r y   f o r   t h e   m a n i p u l a t i o n   o f   O m n i F o c u s . 
 
 	 b y   S e t h   L a n d s m a n ,   P h . D . 
 	 
 	 C o p y r i g h t   ( C )   2 0 0 9 ,   2 0 1 0 ,   S e t h   L a n d s m a n ,   P h . D . 
 	 
 	 	 A l l   r i g h t s   r e s e r v e d . 
 	 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 	 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 
 	 v e r s i o n   0 . 1 ,   r e l e a s e d   J A N 2 0 1 0 
� ��� l     ��������  ��  ��  � ��� l      ������  � l f SECTION 1: Get a list of all first class objects.
 - Folders
 - Projects
 - Tasks
 - TasksInAProject
   � ��� �   S E C T I O N   1 :   G e t   a   l i s t   o f   a l l   f i r s t   c l a s s   o b j e c t s . 
   -   F o l d e r s 
   -   P r o j e c t s 
   -   T a s k s 
   -   T a s k s I n A P r o j e c t 
� ��� l     ��������  ��  ��  � ��� l      ������  � 7 1 1a: folders and utility associated with folders    � ��� b   1 a :   f o l d e r s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   f o l d e r s  � ��� l      ������  � F @ Get all folders of a document. Return a list of folder objects    � ��� �   G e t   a l l   f o l d e r s   o f   a   d o c u m e n t .   R e t u r n   a   l i s t   o f   f o l d e r   o b j e c t s  � ��� i     ��� I      ������� 0 
getfolders 
getFolders� ���� o      ���� 0 	ldocument 	lDocument��  ��  � w     ,��� k    ,�� ��� r    ��� n    ��� 2   ��
�� 
FCAr� o    ���� 0 	ldocument 	lDocument� o      ���� 0 
folderlist 
folderList� ��� X    )����� r    $��� b    "��� o    ���� 0 
folderlist 
folderList� I    !������� *0 getfoldersoffolders getFoldersOfFolders� ���� n    ��� 2   ��
�� 
FCAr� o    ���� 0 
thisfolder 
thisFolder��  ��  � o      ���� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder� o    ���� 0 
folderlist 
folderList� ��� l  * *��������  ��  ��  � ���� L   * ,�� o   * +���� 0 
folderlist 
folderList��  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 getfoldersoffolders getFoldersOfFolders� ���� o      ���� 0 lfolders lFolders��  ��  � w     &��� k    &�� ��� X    #����� r    ��� b    ��� o    ���� 0 lfolders lFolders� I    ������� *0 getfoldersoffolders getFoldersOfFolders� ���� n    ��� 2   ��
�� 
FCAr� o    ���� 0 
thisfolder 
thisFolder��  ��  � o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder� o    ���� 0 lfolders lFolders� ��� l  $ $��������  ��  ��  � ���� L   $ &�� o   $ %���� 0 lfolders lFolders��  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � � � l     ��������  ��  ��     l      ����   9 3 1b: projects and utility associated with projects     � f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s    i    	 I      ��
���� 0 getprojects getProjects
 �� o      ���� 0 	ldocument 	lDocument��  ��  	 w     3 k    3  r    
 n    I    ������ 0 
getfolders 
getFolders �� o    ���� 0 	ldocument 	lDocument��  ��    f     o      ���� 0 lfolderlist lFolderList  r     l   ���� n     2   ��
�� 
FCpr o    ���� 0 	ldocument 	lDocument��  ��   o      ���� 0 projectlist projectList  X    0 ��!  r   ! +"#" b   ! )$%$ o   ! "���� 0 projectlist projectList% n  " (&'& I   # (��(���� .0 getprojectsfromfolder getProjectsFromFolder( )��) o   # $���� 0 
thisfolder 
thisFolder��  ��  '  f   " ## o      ���� 0 projectlist projectList�� 0 
thisfolder 
thisFolder! o    ���� 0 lfolderlist lFolderList *��* L   1 3++ o   1 2���� 0 projectlist projectList��  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ,-, l     ��������  ��  ��  - ./. i    010 I      ��2���� .0 getprojectsfromfolder getProjectsFromFolder2 3��3 o      ���� 0 lfolder lFolder��  ��  1 w     454 L    66 n    787 2   ��
�� 
FCpr8 o    ���� 0 lfolder lFolder5�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  / 9:9 l     ��������  ��  ��  : ;<; l      ��=>��  = 3 - 1a: tasks and utility associated with tasks    > �?? Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s  < @A@ l     ��������  ��  ��  A BCB l      ��DE��  D � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document    E �FF�   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t  C GHG i    IJI I      ��K���� 0 gettasks getTasksK LML o      ���� 0 	ldocument 	lDocumentM N��N o      �� 0 lprojectlist lProjectList��  ��  J w     *OPO k    *QQ RSR r    TUT n    VWV 2   �~
�~ 
FCacW o    �}�} 0 	ldocument 	lDocumentU o      �|�| 0 tasklist taskListS XYX X    'Z�{[Z r    "\]\ b     ^_^ o    �z�z 0 tasklist taskList_ I    �y`�x�y *0 gettasksfromproject getTasksFromProject` a�wa o    �v�v 0 thisproject thisProject�w  �x  ] o      �u�u 0 tasklist taskList�{ 0 thisproject thisProject[ o    �t�t 0 lprojectlist lProjectListY b�sb L   ( *cc o   ( )�r�r 0 tasklist taskList�s  P�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  H ded l     �q�p�o�q  �p  �o  e fgf i    hih I      �nj�m�n ,0 gettasksfromdocument getTasksFromDocumentj k�lk o      �k�k 0 	ldocument 	lDocument�l  �m  i w     3lml k    3nn opo r    
qrq I    �js�i�j 0 getprojects getProjectss t�ht o    �g�g 0 	ldocument 	lDocument�h  �i  r o      �f�f 0 lprojectlist lProjectListp uvu r    wxw n    yzy 2   �e
�e 
FCacz o    �d�d 0 	ldocument 	lDocumentx o      �c�c 0 tasklist taskListv {|{ X    0}�b~} r   ! +� b   ! )��� o   ! "�a�a 0 tasklist taskList� I   " (�`��_�` 0 gettasks getTasks� ��^� o   # $�]�] 0 thisproject thisProject�^  �_  � o      �\�\ 0 tasklist taskList�b 0 thisproject thisProject~ o    �[�[ 0 lprojectlist lProjectList| ��Z� L   1 3�� o   1 2�Y�Y 0 tasklist taskList�Z  m�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  g ��� l     �X�W�V�X  �W  �V  � ��� i    ��� I      �U��T�U *0 gettasksfromproject getTasksFromProject� ��S� o      �R�R 0 lproject lProject�S  �T  � w     ��� L    �� n    ��� 2   �Q
�Q 
FCac� o    �P�P 0 lproject lProject��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �O�N�M�O  �N  �M  � ��� l      �L���L  � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
   � ���.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
� ��� l     �K�J�I�K  �J  �I  � ��� i    ��� I      �H��G�H 20 filterforactiveprojects filterForActiveProjects� ��F� o      �E�E 0 lprojectlist lProjectList�F  �G  � w     >��� k    >�� ��� r    ��� J    �D�D  � o      �C�C 0 projectlist projectList� ��� X    ;��B�� k    6�� ��� r    ��� n    ��� 1    �A
�A 
pnam� o    �@�@ 0 thisproject thisProject� o      �?�? 0 n  � ��� I   "�>��=
�> .ascrcmnt****      � ****� o    �<�< 0 n  �=  � ��;� Z   # 6���:�9� =  # (��� n  # &��� 1   $ &�8
�8 
FCPs� o   # $�7�7 0 thisproject thisProject� m   & '�6
�6 FCPsFCPa� r   + 2��� b   + 0��� o   + ,�5�5 0 projectlist projectList� J   , /�� ��4� o   , -�3�3 0 thisproject thisProject�4  � o      �2�2 0 projectlist projectList�:  �9  �;  �B 0 thisproject thisProject� o   
 �1�1 0 lprojectlist lProjectList� ��0� L   < >�� o   < =�/�/ 0 projectlist projectList�0  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �.�-�,�.  �-  �,  � ��� i     #��� I      �+��*�+ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists� ��)� o      �(�( 0 lprojectlist lProjectList�)  �*  � w     2��� k    2�� ��� r    ��� J    �'�'  � o      �&�& 0 projectlist projectList� ��� X    /��%�� Z    *���$�#� =   ��� n   ��� 1    �"
�" 
FC.A� o    �!�! 0 thisproject thisProject� m    � 
�  boovtrue� r    &��� b    $��� o     �� 0 projectlist projectList� J     #�� ��� o     !�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�$  �#  �% 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� ��� L   0 2�� o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� i   $ '��� I      ���� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists� ��� o      �� 0 lprojectlist lProjectList�  �  � w     2��� k    2�� ��� r    ��� J    ��  � o      �� 0 projectlist projectList� ��� X    /���� Z    *����� =   ��� n   � � 1    �
� 
FC.A  o    �� 0 thisproject thisProject� m    �

�
 boovfals� r    & b    $ o     �	�	 0 projectlist projectList J     # � o     !�� 0 thisproject thisProject�   o      �� 0 projectlist projectList�  �  � 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� � L   0 2 o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � 	
	 l     ��� �  �  �   
  l      ����   � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
    �   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
  i   ( + I      ������ @0 filterprojectsforchangedondate filterProjectsForChangedOnDate  o      ���� 0 lprojectlist lProjectList �� o      ���� 0 ldate lDate��  ��   w     � k    �  r     J    ����   o      ���� 0 projectlist projectList   r    !"! n    
#$# 1    
��
�� 
dstr$ o    ���� 0 ldate lDate" o      ���� 	0 cdate    %&% X    �'��(' k    �)) *+* r    %,-, I    #��.���� *0 gettasksfromproject getTasksFromProject. /��/ o    ���� 0 thisproject thisProject��  ��  - o      ���� 0 tasklist taskList+ 010 r   & )232 m   & '��
�� boovfals3 o      ���� 0 flag  1 454 X   * r6��76 k   : m88 9:9 r   : ?;<; n  : ==>= 1   ; =��
�� 
FCDa> o   : ;���� 0 thistask thisTask< o      ���� 
0 tcdate  : ?@? r   @ EABA n  @ CCDC 1   A C��
�� 
FCDmD o   @ A���� 0 thistask thisTaskB o      ���� 
0 tmdate  @ EFE r   F KGHG n   F IIJI 1   G I��
�� 
dstrJ o   F G���� 
0 tcdate  H o      ���� 0 tcds  F KLK r   L QMNM n   L OOPO 1   M O��
�� 
dstrP o   L M���� 
0 tmdate  N o      ���� 0 tmds  L QRQ Z   R _ST����S =  R UUVU o   R S���� 0 tcds  V o   S T���� 	0 cdate  T r   X [WXW m   X Y��
�� boovtrueX o      ���� 0 flag  ��  ��  R Y��Y Z   ` mZ[����Z =  ` c\]\ o   ` a���� 0 tmds  ] o   a b���� 	0 cdate  [ r   f i^_^ m   f g��
�� boovtrue_ o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask7 o   - .���� 0 tasklist taskList5 `��` Z   s �ab����a o   s t���� 0 flag  b r   w ~cdc b   w |efe o   w x���� 0 projectlist projectListf J   x {gg h��h o   x y���� 0 thisproject thisProject��  d o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject( o    ���� 0 lprojectlist lProjectList& i��i L   � �jj o   � ����� 0 projectlist projectList��  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   klk l     ��������  ��  ��  l mnm l      ��op��  o � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
   p �qqZ   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
n rsr i   , /tut I      ��v���� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDatev wxw o      ���� 0 lprojectlist lProjectListx y��y o      ���� 0 ldate lDate��  ��  u w     xz{z k    x|| }~} r    � J    ����  � o      ���� 0 projectlist projectList~ ��� X    u����� k    p�� ��� r    ��� I    ������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r     #��� m     !��
�� boovfals� o      ���� 0 flag  � ��� X   $ `����� k   4 [�� ��� r   4 9��� n  4 7��� 1   5 7��
�� 
FCDa� o   4 5���� 0 thistask thisTask� o      ���� 
0 tcdate  � ��� r   : ?��� n  : =��� 1   ; =��
�� 
FCDm� o   : ;���� 0 thistask thisTask� o      ���� 
0 tmdate  � ��� l  @ @��������  ��  ��  � ��� Z   @ M������� A   @ C��� o   @ A���� 
0 tcdate  � o   A B���� 0 ldate lDate� r   F I��� m   F G��
�� boovtrue� o      ���� 0 flag  ��  ��  � ��� l  N N��������  ��  ��  � ���� Z   N [������� A   N Q��� o   N O���� 
0 tmdate  � o   O P���� 0 ldate lDate� r   T W��� m   T U��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� ���� Z   a p������� o   a b���� 0 flag  � r   e l��� b   e j��� o   e f���� 0 projectlist projectList� J   f i�� ���� o   f g���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� ���� L   v x�� o   v w���� 0 projectlist projectList��  {�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  s ��� l     ��������  ��  ��  � ��� l      ������  � � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   � ��� �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
� ��� i   0 3��� I      ������� 20 filterforcompletedtasks filterForCompletedTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n    ��� 1    ��
�� 
FCcd� o    �� 0 thistask thisTask� m    �~
�~ boovtrue� r    &��� b    $��� o     �}�} 0 tasklist taskList� J     #�� ��|� o     !�{�{ 0 thistask thisTask�|  � o      �z�z 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 �y�y 0 	ltasklist 	lTaskList� ��x� L   0 2�� o   0 1�w�w 0 tasklist taskList�x  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �v�u�t�v  �u  �t  � ��� i   4 7��� I      �s��r�s >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      �q�q 0 	ltasklist 	lTaskList� ��p� o      �o�o 0 ldate lDate�p  �r  � w     <��� k    <�� ��� r    ��� J    �n�n  � o      �m�m 0 tasklist taskList� ��� X    9��l�� k    4�� ��� r    ��� n   � � 1    �k
�k 
FCdc  o    �j�j 0 thistask thisTask� o      �i�i 0 
thistaskcd 
thisTaskCD�  r    " n      1     �h
�h 
dstr o    �g�g 0 
thistaskcd 
thisTaskCD o      �f�f (0 thistaskdatestring thisTaskDateString �e Z   # 4	�d�c =  # &

 o   # $�b�b (0 thistaskdatestring thisTaskDateString o   $ %�a�a 0 ldate lDate	 r   ) 0 b   ) . o   ) *�`�` 0 tasklist taskList J   * - �_ o   * +�^�^ 0 thistask thisTask�_   o      �]�] 0 tasklist taskList�d  �c  �e  �l 0 thistask thisTask� o   
 �\�\ 0 	ltasklist 	lTaskList� �[ L   : < o   : ;�Z�Z 0 tasklist taskList�[  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �Y�X�W�Y  �X  �W    i   8 ; I      �V�U�V 40 filterforincompletetasks filterForIncompleteTasks �T o      �S�S 0 	ltasklist 	lTaskList�T  �U   w     2 k    2   r    !"! J    �R�R  " o      �Q�Q 0 tasklist taskList  #$# X    /%�P&% Z    *'(�O�N' >   )*) n    +,+ 1    �M
�M 
FCcd, o    �L�L 0 thistask thisTask* m    �K
�K boovtrue( r    &-.- b    $/0/ o     �J�J 0 tasklist taskList0 J     #11 2�I2 o     !�H�H 0 thistask thisTask�I  . o      �G�G 0 tasklist taskList�O  �N  �P 0 thistask thisTask& o   
 �F�F 0 	ltasklist 	lTaskList$ 3�E3 L   0 244 o   0 1�D�D 0 tasklist taskList�E  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   565 l     �C�B�A�C  �B  �A  6 787 i   < ?9:9 I      �@;�?�@ 80 filterfornonrepeatingtasks filterForNonRepeatingTasks; <�>< o      �=�= 0 	ltasklist 	lTaskList�>  �?  : w     2=>= k    2?? @A@ r    BCB J    �<�<  C o      �;�; 0 tasklist taskListA DED X    /F�:GF Z    *HI�9�8H =   JKJ n   LML 1    �7
�7 
FCRpM o    �6�6 0 thistask thisTaskK m    �5
�5 
msngI r    &NON b    $PQP o     �4�4 0 tasklist taskListQ J     #RR S�3S o     !�2�2 0 thistask thisTask�3  O o      �1�1 0 tasklist taskList�9  �8  �: 0 thistask thisTaskG o   
 �0�0 0 	ltasklist 	lTaskListE T�/T L   0 2UU o   0 1�.�. 0 tasklist taskList�/  >�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  8 VWV l     �-�,�+�-  �,  �+  W XYX i   @ CZ[Z I      �*\�)�* 60 filterfortasksaddedondate filterForTasksAddedOnDate\ ]^] o      �(�( 0 	ltasklist 	lTaskList^ _�'_ o      �&�& 0 ldate lDate�'  �)  [ w     <`a` k    <bb cdc r    efe J    �%�%  f o      �$�$ 0 tasklist taskListd ghg X    9i�#ji k    4kk lml r    non n   pqp 1    �"
�" 
FCDaq o    �!�! 0 thistask thisTasko o      � �  0 
thistaskcd 
thisTaskCDm rsr r    "tut n     vwv 1     �
� 
dstrw o    �� 0 
thistaskcd 
thisTaskCDu o      �� (0 thistaskdatestring thisTaskDateStrings x�x Z   # 4yz��y =  # &{|{ o   # $�� (0 thistaskdatestring thisTaskDateString| o   $ %�� 0 ldate lDatez r   ) 0}~} b   ) .� o   ) *�� 0 tasklist taskList� J   * -�� ��� o   * +�� 0 thistask thisTask�  ~ o      �� 0 tasklist taskList�  �  �  �# 0 thistask thisTaskj o   
 �� 0 	ltasklist 	lTaskListh ��� L   : <�� o   : ;�� 0 tasklist taskList�  a�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  Y ��� l     ����  �  �  � ��� i   D G��� I      ���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��� o      �
�
 0 	ltasklist 	lTaskList�  �  � w     ���� k    ��� ��� r    ��� J    �	�	  � o      �� 0 tasklist taskList� ��� X    ����� k    ��� ��� r    ��� n    ��� 1    �
� 
pnam� o    �� 0 thistask thisTask� o      �� 0 foo  � ��� r    "��� n     ��� m     �
� 
FCct� o    �� 0 thistask thisTask� o      �� 0 con  � ��� r   # (��� n   # &��� 1   $ &� 
�  
pnam� o   # $���� 0 con  � o      ���� 0 foo  � ���� Z   ) ������� >  ) ,��� o   ) *���� 0 con  � m   * +��
�� 
msng� k   / �� ��� T   / f�� Z   4 a������ >  4 9��� n  4 7��� 1   5 7��
�� 
ctnr� o   4 5���� 0 con  � m   7 8��
�� 
msng� k   < ]�� ��� r   < A��� n  < ?��� 1   = ?��
�� 
ctnr� o   < =���� 0 con  � o      ���� 0 ccon  � ��� r   B G��� n   B E��� 1   C E��
�� 
pnam� o   B C���� 0 ccon  � o      ���� 
0 ccname  � ���� Z   H ]������ >  H K��� o   H I���� 
0 ccname  � m   I J�� ���  O m n i F o c u s� k   N Y�� ��� r   N S��� n  N Q��� 1   O Q��
�� 
ctnr� o   N O���� 0 con  � o      ���� 0 con  � ���� r   T Y��� n   T W��� 1   U W��
�� 
pnam� o   T U���� 0 con  � o      ���� 0 foo  ��  ��  �  S   \ ]��  ��  �  S   ` a� ��� r   g l��� n   g j��� 1   h j��
�� 
pnam� o   g h���� 0 con  � o      ���� 0 conname  � ���� Z   m ������� H   m q�� E   m p��� o   m n���� 0 conname  � m   n o�� ���  W a i t i n g� r   t {��� b   t y��� o   t u���� 0 tasklist taskList� J   u x�� ���� o   u v���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  � r   � ���� b   � ���� o   � ����� 0 tasklist taskList� J   � ��� ���� o   � ����� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  � 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   � ��� o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   H K��� I      ������� 20 filterfortasksdueondate filterForTasksDueOnDate�    o      ���� 0 	ltasklist 	lTaskList �� o      ���� 0 ldate lDate��  ��  � w     F k    F  r    	 J    ����  	 o      ���� 0 tasklist taskList 

 X    C�� k    >  r     n    1    ��
�� 
FCDd o    ���� 0 thistask thisTask o      ���� 0 
thistaskdd 
thisTaskDD �� Z    >���� >     o    ���� 0 
thistaskdd 
thisTaskDD m    ��
�� 
msng k   # :  r   # ( n   # &  1   $ &��
�� 
dstr  o   # $���� 0 
thistaskdd 
thisTaskDD o      ���� (0 thistaskdatestring thisTaskDateString !��! Z   ) :"#����" =  ) ,$%$ o   ) *���� (0 thistaskdatestring thisTaskDateString% o   * +���� 0 ldate lDate# r   / 6&'& b   / 4()( o   / 0���� 0 tasklist taskList) J   0 3** +��+ o   0 1���� 0 thistask thisTask��  ' o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask o   
 ���� 0 	ltasklist 	lTaskList ,��, L   D F-- o   D E���� 0 tasklist taskList��  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ./. l     ��������  ��  ��  / 010 i   L O232 I      ��4���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate4 565 o      ���� 0 	ltasklist 	lTaskList6 7��7 o      ���� 0 ldate lDate��  ��  3 w     J898 k    J:: ;<; r    =>= J    ����  > o      ���� 0 tasklist taskList< ?@? X    GA��BA k    BCC DED r    FGF n   HIH 1    ��
�� 
FCDdI o    ���� 0 thistask thisTaskG o      ���� 0 
thistaskdd 
thisTaskDDE J��J Z    BKL����K >    MNM o    ���� 0 
thistaskdd 
thisTaskDDN m    ��
�� 
msngL Z   # >OP����O A   # &QRQ o   # $���� 0 
thistaskdd 
thisTaskDDR o   $ %���� 0 ldate lDateP k   ) :SS TUT I  ) 2��V��
�� .ascrcmnt****      � ****V b   ) .WXW m   ) *YY �ZZ , F o u n d   a n   o v e r d u e   t a s k  X n  * -[\[ 1   + -��
�� 
pnam\ o   * +���� 0 thistask thisTask��  U ]��] r   3 :^_^ b   3 8`a` o   3 4���� 0 tasklist taskLista J   4 7bb c��c o   4 5���� 0 thistask thisTask��  _ o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTaskB o   
 ���� 0 	ltasklist 	lTaskList@ d��d L   H Jee o   H I���� 0 tasklist taskList��  9�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  1 fgf l     ��������  ��  ��  g hih i   P Sjkj I      ��l���� .0 filterfortaskswithtag filterForTasksWithTagl mnm o      ���� 0 	ltasklist 	lTaskListn o��o o      ���� 0 tag  ��  ��  k w     @pqp k    @rr sts r    uvu J    ����  v o      ���� 0 tasklist taskListt wxw X    =y��zy k    8{{ |}| I    ��~��
�� .ascrcmnt****      � ****~ b    � m    �� ���   G e t t i n g   n o t e   o f  � n   ��� 1    ��
�� 
pnam� o    ���� 0 thistask thisTask��  } ��� r   ! &��� n   ! $��� 1   " $�
� 
FCno� o   ! "�~�~ 0 thistask thisTask� o      �}�} 0 itemnote itemNote� ��|� Z   ' 8���{�z� l  ' *��y�x� E   ' *��� o   ' (�w�w 0 itemnote itemNote� o   ( )�v�v 0 tag  �y  �x  � r   - 4��� b   - 2��� o   - .�u�u 0 tasklist taskList� J   . 1�� ��t� o   . /�s�s 0 thistask thisTask�t  � o      �r�r 0 tasklist taskList�{  �z  �|  �� 0 thistask thisTaskz o   
 �q�q 0 	ltasklist 	lTaskListx ��p� L   > @�� o   > ?�o�o 0 tasklist taskList�p  q�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  i ��� l     �n�m�l�n  �m  �l  � ��� i   T W��� I      �k��j�k $0 filterforflagged filterForFlagged� ��i� o      �h�h 0 	ltasklist 	lTaskList�i  �j  � w     2��� k    2�� ��� r    ��� J    �g�g  � o      �f�f 0 tasklist taskList� ��� X    /��e�� Z    *���d�c� =   ��� n    ��� 1    �b
�b 
FCfl� o    �a�a 0 thistask thisTask� m    �`
�` boovtrue� r    &��� b    $��� o     �_�_ 0 tasklist taskList� J     #�� ��^� o     !�]�] 0 thistask thisTask�^  � o      �\�\ 0 tasklist taskList�d  �c  �e 0 thistask thisTask� o   
 �[�[ 0 	ltasklist 	lTaskList� ��Z� L   0 2�� o   0 1�Y�Y 0 tasklist taskList�Z  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �X�W�V�X  �W  �V  � ��� l      �U���U  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     �T�S�R�T  �S  �R  � ��� l      �Q���Q  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   X [��� I      �P��O�P 0 tagtask tagTask� ��� o      �N�N 0 ltask lTask� ��M� o      �L�L 0 ltag lTag�M  �O  � w     $��� k    $�� ��� r    ��� n    ��� 1    �K
�K 
FCno� o    �J�J 0 ltask lTask� o      �I�I 0 itemnote itemNote� ��H� Z    $���G�F� l   ��E�D� H    �� E    ��� o    	�C�C 0 itemnote itemNote� o   	 
�B�B 0 ltag lTag�E  �D  � k     �� ��� r    ��� n    ��� 1    �A
�A 
FCno� o    �@�@ 0 ltask lTask� o      �?�? 0 itemnote itemNote� ��� r    ��� b    ��� o    �>�> 0 itemnote itemNote� o    �=�= 0 ltag lTag� o      �<�< 0 itemnote itemNote� ��;� r     ��� o    �:�: 0 itemnote itemNote� l     ��9�8� n      ��� 1    �7
�7 
FCno� o    �6�6 0 ltask lTask�9  �8  �;  �G  �F  �H  ��                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �5�4�3�5  �4  �3  � ��� l      �2���2  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   \ _��� I      �1��0�1 0 	untagtask 	untagTask� � � o      �/�/ 0 ltask lTask  �. o      �-�- 0 ltag lTag�.  �0  � w     A k    A  r     n    	
	 1    �,
�, 
FCno
 o    �+�+ 0 ltask lTask o      �*�* 0 itemnote itemNote  I   �)�(
�) .ascrcmnt****      � **** o    	�'�' 0 itemnote itemNote�(   �& Z    A�%�$ l   �#�" E     o    �!�! 0 itemnote itemNote o    � �  0 ltag lTag�#  �"   k    =  r     o    �� 0 ltag lTag n      1    �
� 
txdl 1    �
� 
ascr  r    1 J       !  n    "#" 2   �
� 
citm# o    �� 0 itemnote itemNote! $�$ m    %% �&&  �   J      '' ()( o      �� 0 itemnode itemNode) *�* n     +,+ 1   - /�
� 
txdl, 1   , -�
� 
ascr�   -.- r   2 7/0/ c   2 5121 o   2 3�� 0 itemnode itemNode2 m   3 4�
� 
TEXT0 o      �� 0 itemnote itemNote. 3�3 r   8 =454 o   8 9�� 0 itemnote itemNote5 l     6��6 n      787 1   : <�
� 
FCno8 o   9 :�� 0 ltask lTask�  �  �  �%  �$  �&  �                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � 9:9 l     ���
�  �  �
  : ;<; l      �	=>�	  = 0 * remove any tags in the provided tag list    > �?? T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  < @A@ i   ` cBCB I      �D�� 0 	cleartask 	clearTaskD EFE o      �� 0 ltask lTaskF G�G o      �� 0 ltaglist lTagList�  �  C w     $HIH X    $J�KJ k    LL MNM I   �O�
� .ascrcmnt****      � ****O o    � �  0 atag aTag�  N P��P I    ��Q���� 0 	untagtask 	untagTaskQ RSR o    ���� 0 ltask lTaskS T��T o    ���� 0 atag aTag��  ��  ��  � 0 atag aTagK o    ���� 0 ltaglist lTagListI�                                                                                  OFOC  alis    X  Macintosh HD               �!�[H+     vOmniFocus.app                                                   ։��mN        ����  	                Applications    �!��      �m>�       v  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  A UVU l     ��������  ��  ��  V WXW l      ��YZ��  Y    SECTION 5: other utility    Z �[[ 4   S E C T I O N   5 :   o t h e r   u t i l i t y  X \��\ l     ��������  ��  ��  ��  � ��]^_`abcdefghijklmnopqrstuv��  ] ���������������������������������������������������� 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask^ �������wx���� 0 
getfolders 
getFolders�� ��y�� y  ���� 0 	ldocument 	lDocument��  w �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolderx �����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�_ �������z{���� *0 getfoldersoffolders getFoldersOfFolders�� ��|�� |  ���� 0 lfolders lFolders��  z ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder{ �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�` ��	����}~���� 0 getprojects getProjects�� ����   ���� 0 	ldocument 	lDocument��  } ���������� 0 	ldocument 	lDocument�� 0 lfolderlist lFolderList�� 0 projectlist projectList�� 0 
thisfolder 
thisFolder~ �������������� 0 
getfolders 
getFolders
�� 
FCpr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� .0 getprojectsfromfolder getProjectsFromFolder�� 4�Z)�k+ E�O��-E�O �[��l kh �)�k+ %E�[OY��O�a ��1���������� .0 getprojectsfromfolder getProjectsFromFolder�� ����� �  ���� 0 lfolder lFolder��  � ���� 0 lfolder lFolder� 5��
�� 
FCpr�� �Z��-Eb ��J���������� 0 gettasks getTasks�� ����� �  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject� P����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�c ��i���������� ,0 gettasksfromdocument getTasksFromDocument�� ����� �  ���� 0 	ldocument 	lDocument��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject� m�������������� 0 getprojects getProjects
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 gettasks getTasks�� 4�Z*�k+ E�O��-E�O �[��l kh �*�k+ %E�[OY��O�d ������������� *0 gettasksfromproject getTasksFromProject�� ��� �  �~�~ 0 lproject lProject��  � �}�} 0 lproject lProject� ��|
�| 
FCac�� �Z��-Ee �{��z�y���x�{ 20 filterforactiveprojects filterForActiveProjects�z �w��w �  �v�v 0 lprojectlist lProjectList�y  � �u�t�s�r�u 0 lprojectlist lProjectList�t 0 projectlist projectList�s 0 thisproject thisProject�r 0 n  � ��q�p�o�n�m�l�k
�q 
kocl
�p 
cobj
�o .corecnte****       ****
�n 
pnam
�m .ascrcmnt****      � ****
�l 
FCPs
�k FCPsFCPa�x ?�ZjvE�O 3�[��l kh ��,E�O�j O��,�  ��kv%E�Y h[OY��O�f �j��i�h���g�j B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�i �f��f �  �e�e 0 lprojectlist lProjectList�h  � �d�c�b�d 0 lprojectlist lProjectList�c 0 projectlist projectList�b 0 thisproject thisProject� ��a�`�_�^
�a 
kocl
�` 
cobj
�_ .corecnte****       ****
�^ 
FC.A�g 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�g �]��\�[���Z�] H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�\ �Y��Y �  �X�X 0 lprojectlist lProjectList�[  � �W�V�U�W 0 lprojectlist lProjectList�V 0 projectlist projectList�U 0 thisproject thisProject� ��T�S�R�Q
�T 
kocl
�S 
cobj
�R .corecnte****       ****
�Q 
FC.A�Z 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�h �P�O�N���M�P @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�O �L��L �  �K�J�K 0 lprojectlist lProjectList�J 0 ldate lDate�N  � �I�H�G�F�E�D�C�B�A�@�?�>�I 0 lprojectlist lProjectList�H 0 ldate lDate�G 0 projectlist projectList�F 	0 cdate  �E 0 thisproject thisProject�D 0 tasklist taskList�C 0 flag  �B 0 thistask thisTask�A 
0 tcdate  �@ 
0 tmdate  �? 0 tcds  �> 0 tmds  � �=�<�;�:�9�8�7
�= 
dstr
�< 
kocl
�; 
cobj
�: .corecnte****       ****�9 *0 gettasksfromproject getTasksFromProject
�8 
FCDa
�7 
FCDm�M ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�i �6u�5�4���3�6 Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�5 �2��2 �  �1�0�1 0 lprojectlist lProjectList�0 0 ldate lDate�4  � 	�/�.�-�,�+�*�)�(�'�/ 0 lprojectlist lProjectList�. 0 ldate lDate�- 0 projectlist projectList�, 0 thisproject thisProject�+ 0 tasklist taskList�* 0 flag  �) 0 thistask thisTask�( 
0 tcdate  �' 
0 tmdate  � {�&�%�$�#�"�!
�& 
kocl
�% 
cobj
�$ .corecnte****       ****�# *0 gettasksfromproject getTasksFromProject
�" 
FCDa
�! 
FCDm�3 y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�j � �������  20 filterforcompletedtasks filterForCompletedTasks� ��� �  �� 0 	ltasklist 	lTaskList�  � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� �����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�k �������� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� �  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  � ���
�	��� 0 	ltasklist 	lTaskList� 0 ldate lDate�
 0 tasklist taskList�	 0 thistask thisTask� 0 
thistaskcd 
thisTaskCD� (0 thistaskdatestring thisTaskDateString� ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCdc
� 
dstr� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�l �� ������� 40 filterforincompletetasks filterForIncompleteTasks�  ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�m ��:���������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� >����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�n ��[���������� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� a����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�o ������������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  � 
�����������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
FCct
�� 
msng
�� 
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�p ������������� 20 filterfortasksdueondate filterForTasksDueOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString� ������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDd
�� 
msng
�� 
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�q ��3���������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD� 	9����������Y����
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDd
�� 
msng
�� 
pnam
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�r ��k���������� .0 filterfortaskswithtag filterForTasksWithTag�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� q�������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FCno�� A�ZjvE�O 5�[��l kh ��,%j O��,E�O�� ��kv%E�Y h[OY��O�s ������������� $0 filterforflagged filterForFlagged�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList� 0 thistask thisTask� ��~�}�|�{
�~ 
kocl
�} 
cobj
�| .corecnte****       ****
�{ 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�t �z��y�x���w�z 0 tagtask tagTask�y �v��v �  �u�t�u 0 ltask lTask�t 0 ltag lTag�x  � �s�r�q�s 0 ltask lTask�r 0 ltag lTag�q 0 itemnote itemNote� ��p
�p 
FCno�w %�Z��,E�O�� ��,E�O��%E�O���,FY hu �o��n�m���l�o 0 	untagtask 	untagTask�n �k��k �  �j�i�j 0 ltask lTask�i 0 ltag lTag�m  � �h�g�f�e�h 0 ltask lTask�g 0 ltag lTag�f 0 itemnote itemNote�e 0 itemnode itemNode� 	�d�c�b�a�`%�_�^
�d 
FCno
�c .ascrcmnt****      � ****
�b 
ascr
�a 
txdl
�` 
citm
�_ 
cobj
�^ 
TEXT�l B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY hv �]C�\�[���Z�] 0 	cleartask 	clearTask�\ �Y��Y �  �X�W�X 0 ltask lTask�W 0 ltaglist lTagList�[  � �V�U�T�V 0 ltask lTask�U 0 ltaglist lTagList�T 0 atag aTag� I�S�R�Q�P�O
�S 
kocl
�R 
cobj
�Q .corecnte****       ****
�P .ascrcmnt****      � ****�O 0 	untagtask 	untagTask�Z %�Z !�[��l kh �j O*��l+ [OY��� ��  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  � �L��L Y� Y ����������������������������������������������������������	 											
																				� 		 	 �K�J	  �I	!�I �	! � 	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_	`	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
 








	










	" 

 
�H
�G
  ��F
�E
�F 
docu
 �

  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCpr
 �

  h s y l k k z 3 a U D
�G kfrmID  	# 

 
�D
�C
  ��B
�A
�B 
docu
 �

  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCpr
 �

  c l V q h Z M e n r g
�C kfrmID  	$ 
 
  
!�@
"�?
!  ��>
#�=
�> 
docu
# �
$
$  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCpr
" �
%
%  j E 2 D Z F R K h O Z
�? kfrmID  	% 
&
& 
'�<
(�;
'  ��:
)�9
�: 
docu
) �
*
*  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCpr
( �
+
+  b 9 X x J k 8 Y J e n
�; kfrmID  	& 
,
, 
-�8
.�7
-  ��6
/�5
�6 
docu
/ �
0
0  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCpr
. �
1
1  p U F D 6 I U F P s K
�7 kfrmID  	' 
2
2 
3�4
4�3
3  ��2
5�1
�2 
docu
5 �
6
6  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCpr
4 �
7
7  o j T j - 0 T t 0 6 I
�3 kfrmID  	( 
8
8 
9�0
:�/
9  ��.
;�-
�. 
docu
; �
<
<  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCpr
: �
=
=  d l r i S F O v n _ 3
�/ kfrmID  	) 
>
> 
?�,
@�+
?  ��*
A�)
�* 
docu
A �
B
B  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCpr
@ �
C
C  b U 1 c 5 T v l u K 9
�+ kfrmID  	* 
D
D 
E�(
F�'
E  ��&
G�%
�& 
docu
G �
H
H  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCpr
F �
I
I  i F l Q 0 9 R 3 l t p
�' kfrmID  	+ 
J
J 
K�$
L�#
K  ��"
M�!
�" 
docu
M �
N
N  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCpr
L �
O
O  f f E C g E O T e x b
�# kfrmID  	, 
P
P 
Q� 
R�
Q  ��
S�
� 
docu
S �
T
T  j C K o k D m L 7 - 3
� kfrmID  
�  
FCpr
R �
U
U  e W Q U G 7 Y z H I u
� kfrmID  	- 
V
V 
W�
X�
W  ��
Y�
� 
docu
Y �
Z
Z  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
X �
[
[  h J B 8 f J w 3 z b X
� kfrmID  	. 
\
\ 
]�
^�
]  ��
_�
� 
docu
_ �
`
`  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
^ �
a
a  o 8 R r o 6 y x W W W
� kfrmID  	/ 
b
b 
c�
d�
c  ��
e�
� 
docu
e �
f
f  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
d �
g
g  f P X a U F - R d w y
� kfrmID  	0 
h
h 
i�
j�
i  ��
k�
� 
docu
k �
l
l  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
j �
m
m  n k B Y C q h e r Q e
� kfrmID  	1 
n
n 
o�
p�
o  ��

q�	
�
 
docu
q �
r
r  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCpr
p �
s
s  j o 9 W _ P Y P d H 9
� kfrmID  	2 
t
t 
u�
v�
u  ��
w�
� 
docu
w �
x
x  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
v �
y
y  n W s D n l B 6 o V X
� kfrmID  	3 
z
z 
{�
|�
{  ��
}�
� 
docu
} �
~
~  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr
| �

  j u 1 Q r J 1 m q s f
� kfrmID  	4 
�
� 
�� 
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCpr
� �
�
�  b T s 3 4 L r n s d h
�� kfrmID  	5 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  o r n B w 2 m K _ y o
�� kfrmID  	6 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  k 6 l - N 8 j 5 5 r B
�� kfrmID  	7 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  b 3 n e X i x 9 Q I c
�� kfrmID  	8 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  k H c i J w 8 W X g 6
�� kfrmID  	9 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  n 2 S 8 4 g M 6 5 c V
�� kfrmID  	: 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  a s r E J a Q j t r V
�� kfrmID  	; 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  o t x Q K v 8 K y Z J
�� kfrmID  	< 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  o v u M i 0 7 l i P O
�� kfrmID  	= 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  k H o s s B U s Y 3 R
�� kfrmID  	> 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  g _ d Q C F - n R 7 O
�� kfrmID  	? 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  p n 9 I 7 v G F S z X
�� kfrmID  	@ 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  o d 5 G J W o s c c Y
�� kfrmID  	A 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  c 1 X i E - R 1 v S v
�� kfrmID  	B 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  j E a 1 B F A J J 9 H
�� kfrmID  	C 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  b _ q h u D y 7 Y C b
�� kfrmID  	D 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  n P W F n 8 f - B Q x
�� kfrmID  	E 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  o f b K F r H z g Q 9
�� kfrmID  	F 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  e C 6 - f Z B W G N v
�� kfrmID  	G 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  j - I w o A 7 H J q b
�� kfrmID  	H 
�
� 
���
���
�  ���
���
�� 
docu
� �
�
�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr
� �
�
�  b a w x U S J G D c A
�� kfrmID  	I 
�
� 
��� ��
�  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr  �  o 6 h I G X W h a f k
�� kfrmID  	J  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �		  d u 8 x A H M l o z Q
�� kfrmID  	K 

 ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  g B F S F T N p r H x
�� kfrmID  	L  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  b N u u w 0 b j x - Y
�� kfrmID  	M  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  o t X H f d R Z t s R
�� kfrmID  	N  ����  �����
�� 
docu �    j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �!!  k Y I B C a a j N v V
�� kfrmID  	O "" #��$��#  ���%��
�� 
docu% �&&  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr$ �''  c i f 3 D N 9 Y E F _
�� kfrmID  	P (( )��*��)  ���+��
�� 
docu+ �,,  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr* �--  d V Y Q - 2 E m W T H
�� kfrmID  	Q .. /��0��/  ���1��
�� 
docu1 �22  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr0 �33  h f O z L L u S b q 2
�� kfrmID  	R 44 5��6��5  ���7��
�� 
docu7 �88  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr6 �99  i E F E s r P t r n N
�� kfrmID  	S :: ;��<��;  ���=��
�� 
docu= �>>  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr< �??  b J p n 0 A B Y 3 Q z
�� kfrmID  	T @@ A��B�A  ��~C�}
�~ 
docuC �DD  j C K o k D m L 7 - 3
�} kfrmID  
�� 
FCprB �EE  d - Y G 1 h N Y v 3 E
� kfrmID  	U FF G�|H�{G  ��zI�y
�z 
docuI �JJ  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCprH �KK  l h y K R m L t e m Y
�{ kfrmID  	V LL M�xN�wM  ��vO�u
�v 
docuO �PP  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCprN �QQ  d C T w _ K s J 5 5 9
�w kfrmID  	W RR S�tT�sS  ��rU�q
�r 
docuU �VV  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCprT �WW  e - t 3 4 I R E K n 5
�s kfrmID  	X XX Y�pZ�oY  ��n[�m
�n 
docu[ �\\  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCprZ �]]  p s D s d Y N H s _ n
�o kfrmID  	Y ^^ _�l`�k_  ��ja�i
�j 
docua �bb  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCpr` �cc  l _ p - - k F m p B 3
�k kfrmID  	Z dd e�hf�ge  ��fg�e
�f 
docug �hh  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCprf �ii  n - f - j l r i m A j
�g kfrmID  	[ jj k�dl�ck  ��bm�a
�b 
docum �nn  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCprl �oo  f _ D v X T Q e U H n
�c kfrmID  	\ pp q�`r�_q  ��^s�]
�^ 
docus �tt  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCprr �uu  a c F i D a - W S E -
�_ kfrmID  	] vv w�\x�[w  ��Zy�Y
�Z 
docuy �zz  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCprx �{{  l 3 t t W d 1 B f e U
�[ kfrmID  	^ || }�X~�W}  ��V�U
�V 
docu ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCpr~ ���  l 7 t W J E V R L i u
�W kfrmID  	_ �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCpr� ���  a z j R Q N b h M - L
�S kfrmID  	` �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCpr� ���  h V E u u 5 I n 8 L O
�O kfrmID  	a �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCpr� ���  f G w 8 3 c G G f u i
�K kfrmID  	b �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCpr� ���  f - K a E i e F w d 4
�G kfrmID  	c �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCpr� ���  l c M M a e c 5 b A I
�C kfrmID  	d �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCpr� ���  e 6 X r G U W G 5 w V
�? kfrmID  	e �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCpr� ���  k N E _ n A f f X T q
�; kfrmID  	f �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCpr� ���  h H 0 h H E G N T R l
�7 kfrmID  	g �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCpr� ���  o x A g n T h o k T t
�3 kfrmID  	h �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCpr� ���  m R n i r f o F J N B
�/ kfrmID  	i �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCpr� ���  b R V w j V 0 K D s Z
�+ kfrmID  	j �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCpr� ���  n g p 3 0 m V L f g a
�' kfrmID  	k �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCpr� ���  l q L K E Q H Z 3 w B
�# kfrmID  	l �� �� ���  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�  
FCpr� ���  j 1 K A 2 - g 6 G Z S
� kfrmID  	m �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  m Q _ h e K Y e R F e
� kfrmID  	n �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  a r O A n 2 H A Y M s
� kfrmID  	o �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  b P 7 _ q o w A O P f
� kfrmID  	p �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  b A t S I h B l w 1 6
� kfrmID  	q �� �����  ��
��	
�
 
docu� ���  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCpr� ���  f O D m _ q Q a n 8 8
� kfrmID  	r �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  h u e n j g a z 8 o c
� kfrmID  	s �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  k F m k v 6 F 1 d R o
� kfrmID  	t    � ��  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCpr �  h 2 H g O j R c p x 6
�� kfrmID  	u  ����  ���	��
�� 
docu	 �

  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  i D a Q N c u O E G W
�� kfrmID  	v  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  c S K v j G J C u G p
�� kfrmID  	w  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  l d r q T f 1 f 5 3 w
�� kfrmID  	x  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  f 2 s s D i 4 9 g o D
�� kfrmID  	y  �� ��  ���!��
�� 
docu! �""  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr  �##  l J G b X C a K p 0 l
�� kfrmID  	z $$ %��&��%  ���'��
�� 
docu' �((  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr& �))  f a M 6 x - z e u A n
�� kfrmID  	{ ** +��,��+  ���-��
�� 
docu- �..  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr, �//  k N w 8 g T q M a 1 a
�� kfrmID  	| 00 1��2��1  ���3��
�� 
docu3 �44  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr2 �55  k t f F n D 8 T m t z
�� kfrmID  	} 66 7��8��7  ���9��
�� 
docu9 �::  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr8 �;;  e C y 5 h T P q C 9 K
�� kfrmID  	~ << =��>��=  ���?��
�� 
docu? �@@  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr> �AA  i 9 q I 7 z o b b k Y
�� kfrmID  	 BB C��D��C  ���E��
�� 
docuE �FF  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprD �GG  o U q E 0 Y Y e x f 1
�� kfrmID  	� HH I��J��I  ���K��
�� 
docuK �LL  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprJ �MM  e 5 b F D v K E 4 1 R
�� kfrmID  	� NN O��P��O  ���Q��
�� 
docuQ �RR  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprP �SS  a O C I 7 8 4 w X R Z
�� kfrmID  	� TT U��V��U  ���W��
�� 
docuW �XX  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprV �YY  j g C x J F c s B a K
�� kfrmID  	� ZZ [��\��[  ���]��
�� 
docu] �^^  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr\ �__  m 0 2 z X _ 0 1 i C 3
�� kfrmID  	� `` a��b��a  ���c��
�� 
docuc �dd  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprb �ee  i c H G p k v L t J -
�� kfrmID  	� ff g��h��g  ���i��
�� 
docui �jj  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprh �kk  k 3 x 7 y g B b B E P
�� kfrmID  	� ll m��n��m  ���o��
�� 
docuo �pp  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprn �qq  d C y H 9 j g S h v I
�� kfrmID  	� rr s��t��s  ���u��
�� 
docuu �vv  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprt �ww  k J V Y 3 w Q B 2 G q
�� kfrmID  	� xx y��z��y  ���{��
�� 
docu{ �||  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprz �}}  a S s 3 2 F n b w T V
�� kfrmID  	� ~~ �����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k U J f u i l 6 _ 0 u
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h N t l h H K c i X r
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  d 3 f l q T V J g 8 u
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  g b x b V j z c O y 2
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  f g G A U Q 1 3 2 4 Z
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k W P 7 b 0 7 y x P u
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h H A 5 z A l h V p n
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  l a - N s d 2 u A Z G
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  g G j S o e d v y 7 m
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  m P m E a B T 5 D j r
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h c b g I P N _ 2 g g
�� kfrmID  	� �� ������  ��~��}
�~ 
docu� ���  j C K o k D m L 7 - 3
�} kfrmID  
�� 
FCpr� ���  l w e 9 2 K R H T r t
� kfrmID  	� �� ��|��{�  ��z��y
�z 
docu� ���  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCpr� ���  c k r S c Y Z A R 7 m
�{ kfrmID  	� �� ��x��w�  ��v��u
�v 
docu� ���  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCpr� ���  k d y b S E D _ r g V
�w kfrmID  	� �� ��t��s�  ��r��q
�r 
docu� ���  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCpr� ���  p q j G J 7 s A u V H
�s kfrmID  	� �� ��p��o�  ��n��m
�n 
docu� ���  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCpr� ���  m X D F B I f D _ Z T
�o kfrmID  	� �� ��l��k�  ��j��i
�j 
docu� ���  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCpr� ���  c A a i i 5 g L - y Q
�k kfrmID  	� �� ��h��g�  ��f��e
�f 
docu� ���  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCpr� ���  e 5 3 v R D 6 q X o A
�g kfrmID  	� �� ��d��c�  ��b��a
�b 
docu� ���  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCpr� ���  d z 6 b g 2 r k Q m u
�c kfrmID  	� �� ��`��_�  ��^��]
�^ 
docu� ���  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCpr� ���  a m E g b O S E 5 V 2
�_ kfrmID  	� �� ��\��[�  ��Z��Y
�Z 
docu� ���  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCpr� ���  j x Y P R U s m B e m
�[ kfrmID  	� �� ��X��W�  ��V��U
�V 
docu� �    j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCpr� �  k d g M 1 H Z P X j l
�W kfrmID  	�  �T�S  ��R�Q
�R 
docu �  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCpr �  f v E a B D I A y b B
�S kfrmID  	�  	�P
�O	  ��N�M
�N 
docu �  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCpr
 �  i U g e A 4 - b g Y o
�O kfrmID  	�  �L�K  ��J�I
�J 
docu �  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCpr �  f e M y 2 y y i P o f
�K kfrmID  	�  �H�G  ��F�E
�F 
docu �  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCpr �  b O c s w m 8 Z b L N
�G kfrmID  	�  �D�C  ��B�A
�B 
docu �  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCpr �  d i Z U w h O q B k -
�C kfrmID  	�    !�@"�?!  ��>#�=
�> 
docu# �$$  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCpr" �%%  e c 8 E g z q C a K 5
�? kfrmID  	� && '�<(�;'  ��:)�9
�: 
docu) �**  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCpr( �++  c X o 0 x G 6 K o G 4
�; kfrmID  	� ,, -�8.�7-  ��6/�5
�6 
docu/ �00  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCpr. �11  m G Q h a k _ w T c s
�7 kfrmID  	� 22 3�44�33  ��25�1
�2 
docu5 �66  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCpr4 �77  j - C O i o p j I D J
�3 kfrmID  	� 88 9�0:�/9  ��.;�-
�. 
docu; �<<  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCpr: �==  j 8 w 9 u x y w t p w
�/ kfrmID  	� >> ?�,@�+?  ��*A�)
�* 
docuA �BB  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCpr@ �CC  i g V g e 6 _ 1 s 4 D
�+ kfrmID  	� DD E�(F�'E  ��&G�%
�& 
docuG �HH  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCprF �II  d i z 4 Z I q j q N _
�' kfrmID  	� JJ K�$L�#K  ��"M�!
�" 
docuM �NN  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCprL �OO  n Q K O i A q I g l i
�# kfrmID  	� PP Q� R�Q  ��S�
� 
docuS �TT  j C K o k D m L 7 - 3
� kfrmID  
�  
FCprR �UU  f P I n O e b Y c f S
� kfrmID  	� VV W�X�W  ��Y�
� 
docuY �ZZ  j C K o k D m L 7 - 3
� kfrmID  
� 
FCprX �[[  b P k W V _ V 1 R 1 O
� kfrmID  	� \\ ]�^�]  ��_�
� 
docu_ �``  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr^ �aa  n G l v I N U l P j Q
� kfrmID  	� bb c�d�c  ��e�
� 
docue �ff  j C K o k D m L 7 - 3
� kfrmID  
� 
FCprd �gg  c c K G g j R z Z q 2
� kfrmID  	� hh i�j�i  ��k�
� 
docuk �ll  j C K o k D m L 7 - 3
� kfrmID  
� 
FCprj �mm  e - 4 J 1 b 1 q l v M
� kfrmID  	� nn o�p�o  ��
q�	
�
 
docuq �rr  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCprp �ss  k V X r D x t f m R h
� kfrmID  	� tt u�v�u  ��w�
� 
docuw �xx  j C K o k D m L 7 - 3
� kfrmID  
� 
FCprv �yy  h j o r 6 U J N N D 2
� kfrmID  	� zz {�|�{  ��}�
� 
docu} �~~  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr| �  f c R M h K N 7 3 R 4
� kfrmID  	� �� �� ����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCpr� ���  k 9 3 M X d 2 F 2 Q _
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  o q g e 7 M 5 v Q j W
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h 1 w q o 3 u T M u X
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k e 6 B U v 4 0 S D K
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h 4 K p J B x U q Q i
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  n d Q 0 3 l b i 1 _ O
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  d I E _ S T w U S 9 9
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  i P a - E u 7 - v - F
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  n Y r F v V K g 6 a X
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  o k E i j h Y a 7 p X
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  g k K e 8 B S J s v x
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h M W t p 8 _ C A x O
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  g 5 M c e m A N R 4 V
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  m U Y _ b M F 1 - V 7
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  e l Y t h b A 8 q I f
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  j 0 g S D x K G U H 6
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  m Q 0 e r - o Z b w j
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k i w O i 0 i F f 6 G
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  a t A r 5 r t N 8 P U
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  i h R 1 t 3 z F a E i
�� kfrmID  	� �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  p w 1 r U e C C V Y M
�� kfrmID  	� �� ��� ���  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr  �  p 6 D L X G s m Q y S
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �		  i V z N a T q m 0 i I
�� kfrmID  	� 

 ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  d _ n k E r X n 6 s T
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  l I w R I i c _ 8 B v
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  f r j R s S N a _ h M
�� kfrmID  	�  ����  �����
�� 
docu �    j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �!!  m z g S e x d R i D x
�� kfrmID  	� "" #��$��#  ���%��
�� 
docu% �&&  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr$ �''  l h t 0 J p B 5 m y b
�� kfrmID  	� (( )��*��)  ���+��
�� 
docu+ �,,  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr* �--  f j 6 B 9 q c g E j A
�� kfrmID  	� .. /��0��/  ���1��
�� 
docu1 �22  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr0 �33  g k Y r H U l t 2 Z 0
�� kfrmID  	� 44 5��6��5  ���7��
�� 
docu7 �88  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr6 �99  a H g i 4 T p M H e k
�� kfrmID  	� :: ;��<��;  ���=��
�� 
docu= �>>  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr< �??  i 1 D X _ S A R S f f
�� kfrmID  	� @@ A��B�A  ��~C�}
�~ 
docuC �DD  j C K o k D m L 7 - 3
�} kfrmID  
�� 
FCprB �EE  d d s h C q Y H k L t
� kfrmID  	� FF G�|H�{G  ��zI�y
�z 
docuI �JJ  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCprH �KK  f f U H T M W 6 - a S
�{ kfrmID  	� LL M�xN�wM  ��vO�u
�v 
docuO �PP  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCprN �QQ  n x O m T _ k m q V e
�w kfrmID  	� RR S�tT�sS  ��rU�q
�r 
docuU �VV  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCprT �WW  c 3 x X n V j C b R W
�s kfrmID  	� XX Y�pZ�oY  ��n[�m
�n 
docu[ �\\  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCprZ �]]  n z l p Y - k 0 i 1 Z
�o kfrmID  	� ^^ _�l`�k_  ��ja�i
�j 
docua �bb  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCpr` �cc  k W O D M k e M 6 P 9
�k kfrmID  	� dd e�hf�ge  ��fg�e
�f 
docug �hh  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCprf �ii  k 3 o A X F L D U J 7
�g kfrmID  	� jj k�dl�ck  ��bm�a
�b 
docum �nn  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCprl �oo  k R V I k o T v D A X
�c kfrmID  	� pp q�`r�_q  ��^s�]
�^ 
docus �tt  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCprr �uu  a q A - Z 0 F P v S X
�_ kfrmID  	� vv w�\x�[w  ��Zy�Y
�Z 
docuy �zz  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCprx �{{  p e J h s g h 4 f _ t
�[ kfrmID  	� || }�X~�W}  ��V�U
�V 
docu ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCpr~ ���  a P n z S K L s A Y 0
�W kfrmID  	� �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCpr� ���  o X H e p e V j J e d
�S kfrmID  	� �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCpr� ���  b _ 6 P U X t s v F L
�O kfrmID  	� �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCpr� ���  b p m I 6 c o c f P j
�K kfrmID  	� �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCpr� ���  e 9 P 2 w l 2 v h U -
�G kfrmID  	� �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCpr� ���  o w r g M F f S _ L v
�C kfrmID  	� �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCpr� ���  i g M P o G N 7 n A a
�? kfrmID  	� �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCpr� ���  c B s T E 0 k B i _ a
�; kfrmID  	� �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCpr� ���  l h p x G Z k U 1 E V
�7 kfrmID  	� �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCpr� ���  h d M T u x i f Q N 8
�3 kfrmID  	� �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCpr� ���  c W 5 8 c A L O d Y y
�/ kfrmID  	� �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCpr� ���  d p d n 6 O J H a 4 4
�+ kfrmID  	� �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCpr� ���  a S j 8 Z R l u l j 7
�' kfrmID  	� �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCpr� ���  n D G 4 t u r u 3 B m
�# kfrmID  	� �� �� ���  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�  
FCpr� ���  o 8 G g H z d W H M X
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  d W Y 9 Y n 4 Q j x S
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  o N E W v t P T - s v
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  d k q f d x s 8 W 8 i
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  p 4 n H U X 1 E d r _
� kfrmID  	� �� �����  ��
��	
�
 
docu� ���  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCpr� ���  e v - _ o Z g L t Z V
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  b J g h C p t - i Y I
� kfrmID  	� �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  n 4 Z L 8 b I F i k D
� kfrmID  	�    � ��  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCpr �  h v N M Y I J c p A S
�� kfrmID  	�  ����  ���	��
�� 
docu	 �

  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  g n p J r D L 3 A K Z
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  c E C 4 y k c 1 t b a
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  d y 1 T r 1 Z A C m n
�� kfrmID  	�  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr �  e V H o A Y f v Y U O
�� kfrmID  	�  �� ��  ���!��
�� 
docu! �""  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr  �##  j N 8 - x j Z b b M i
�� kfrmID  	� $$ %��&��%  ���'��
�� 
docu' �((  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr& �))  d l T z I 4 O 0 d z m
�� kfrmID  	� ** +��,��+  ���-��
�� 
docu- �..  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr, �//  j l E r r q N g N d s
�� kfrmID  	� 00 1��2��1  ���3��
�� 
docu3 �44  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr2 �55  d s 2 t H c J 3 f 1 z
�� kfrmID  	� 66 7��8��7  ���9��
�� 
docu9 �::  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr8 �;;  f 6 O a 5 j m M U M C
�� kfrmID  	� << =��>��=  ���?��
�� 
docu? �@@  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr> �AA  g e K 6 L I Q e j b C
�� kfrmID  	� BB C��D��C  ���E��
�� 
docuE �FF  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprD �GG  o E J Y O I V r W 7 S
�� kfrmID  
  HH I��J��I  ���K��
�� 
docuK �LL  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprJ �MM  g L E 6 W S _ d v 1 Z
�� kfrmID  
 NN O��P��O  ���Q��
�� 
docuQ �RR  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprP �SS  b d n z - K Q Z t t 7
�� kfrmID  
 TT U��V��U  ���W��
�� 
docuW �XX  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprV �YY  h L u O C b 8 z r z 9
�� kfrmID  
 ZZ [��\��[  ���]��
�� 
docu] �^^  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr\ �__  c f z p 5 g Y y R t m
�� kfrmID  
 `` a��b��a  ���c��
�� 
docuc �dd  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprb �ee  m X v M U f w N v 9 E
�� kfrmID  
 ff g��h��g  ���i��
�� 
docui �jj  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprh �kk  a v c 0 3 l 0 C b I F
�� kfrmID  
 ll m��n��m  ���o��
�� 
docuo �pp  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprn �qq  g 3 P Z c 2 p k K u z
�� kfrmID  
 rr s��t��s  ���u��
�� 
docuu �vv  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprt �ww  n G 6 o 6 z s 4 Y B L
�� kfrmID  
 xx y��z��y  ���{��
�� 
docu{ �||  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCprz �}}  f 3 9 z W j g B r Z j
�� kfrmID  
	 ~~ �����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  c Q Z i s o v J s - v
�� kfrmID  

 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k r X i e P c 3 A U B
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  j 3 X _ p 5 D - k N E
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  h y j 3 w i d 8 b W r
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  l R j i 6 h u m p t G
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k v u d 4 o R i r q n
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCpr� ���  k C n i s T 0 1 Q c O
�� kfrmID  
 �� ������  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCpr� ���  l W q R M q N 5 _ u q
� kfrmID  
 �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  e 0 u C I M 9 j A P 1
� kfrmID  
 �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  f z R M W d R T N n 1
� kfrmID  
 �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCpr� ���  d c T O G P h g S 0 r
� kfrmID  
�K 
cobj�J � �� 	 ��
� 
cobj� � �� 	 �~�}
�~ 
cobj�} � �� 	 �|�{
�| 
cobj�{ � �� 	 �z�y
�z 
cobj�y � �� 	 �x�w
�x 
cobj�w � �� 	 �v�u
�v 
cobj�u � �� 	 �t�s
�t 
cobj�s � �� 	 �r�q
�r 
cobj�q � �� 	 �p�o
�p 
cobj�o � �� 	 �n�m
�n 
cobj�m � �� 	 �l�k
�l 
cobj�k � �� 	 �j�i
�j 
cobj�i � �� 	 �h�g
�h 
cobj�g � �� 	 �f�e
�f 
cobj�e � �� 	 �d�c
�d 
cobj�c /� �� 	 �b�a
�b 
cobj�a 0� �� 	 �`�_
�` 
cobj�_ 2� �� 	 �^�]
�^ 
cobj�] 8� �� 	 �\�[
�\ 
cobj�[ 9� �� 	 �Z�Y
�Z 
cobj�Y <� �� 	 �X�W
�X 
cobj�W =� �� 	 �V�U
�V 
cobj�U >� �� 	 �T�S
�T 
cobj�S @� �� 	 �R�Q
�R 
cobj�Q A� �� 	 �P�O
�P 
cobj�O B� �� 	 �N�M
�N 
cobj�M C� �� 	 �L�K
�L 
cobj�K E� �� 	 �J�I
�J 
cobj�I F� �� 	 �H�G
�H 
cobj�G G� �� 	 �F�E
�F 
cobj�E H� �� 	 �D�C
�D 
cobj�C I� �� 	 �B�A
�B 
cobj�A J� �� 	 �@�?
�@ 
cobj�? K� �� 	 �>�=
�> 
cobj�= M� �� 	 �<�;
�< 
cobj�; N� �� 	 �:�9
�: 
cobj�9 O� �� 	 �8�7
�8 
cobj�7 Q� �� 	 �6�5
�6 
cobj�5 S� �� 	 �4�3
�4 
cobj�3 T� �� 	 �2�1
�2 
cobj�1 U� �� 	 �0�/
�0 
cobj�/ V� �� 	 �.�-
�. 
cobj�- W� �� 	 �,�+
�, 
cobj�+ X� �� 	 �*�)
�* 
cobj�) Y� �� 	 �(�'
�( 
cobj�' Z� �� 	 �&�%
�& 
cobj�% [� �� 	 �$�#
�$ 
cobj�# \� �� 	 �"�!
�" 
cobj�! ]� �� 	 � �
�  
cobj� ^� �� 	 ��
� 
cobj� _� �� 	 ��
� 
cobj� b� �� 	 ��
� 
cobj� f� �� 	 ��
� 
cobj� h� �� 	 ��
� 
cobj� i� �� 	 ��
� 
cobj� j� �� 	 ��
� 
cobj� k� �� 	 ��
� 
cobj� m	  �� 	 ��
� 
cobj� n	 �� 	 ��
� 
cobj� o	 �� 	 �
�	
�
 
cobj�	 p	 �� 	 ��
� 
cobj� q	 �� 	 ��
� 
cobj� r	 �� 	 ��
� 
cobj� t	 �� 	 ��
� 
cobj� u	    	 � ��
�  
cobj�� v	  	 ����
�� 
cobj�� {		  	 ����
�� 
cobj�� 	
  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	 		 	 ����
�� 
cobj�� �	 

 	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �	  	 ����
�� 
cobj�� �� ����  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./01234 55 6����6 ��7���7� 89:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�����������������������������������������������������������������������������������������������������������������������������8 �� �������  ��� ��
�� 
docu  �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� �  o U f _ s i E Z b r i
�� kfrmID  9  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  m l a V v M S J B v b
�� kfrmID  : 		 
����
  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  k 6 _ O J G 3 c b v q
�� kfrmID  ;  ���  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac �  k B M A T _ C g C O 7
� kfrmID  <  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  c g u b _ Y V c v I S
� kfrmID  =  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �    j S m I h x J O e n T
� kfrmID  > !! "�#�"  ��$�
� 
docu$ �%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �&&  c S H H L c i m m d 4
� kfrmID  ? '' (�)�(  ��*�
� 
docu* �++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �,,  i K 4 y 1 L n r N Q l
� kfrmID  @ -- .�/�.  ��0�
� 
docu0 �11  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �22  c C V l d q i Q Q E R
� kfrmID  A 33 4�5�4  ��6�
� 
docu6 �77  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac5 �88  c 7 F A M r D K p Z v
� kfrmID  B 99 :�;�:  ��<�
� 
docu< �==  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac; �>>  e w 0 1 L A X q H G A
� kfrmID  C ?? @�A�@  ��B�
� 
docuB �CC  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacA �DD  j M e 4 Q g E f f f M
� kfrmID  D EE F�G�F  ��H�
� 
docuH �II  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacG �JJ  o q 0 9 u 4 r 6 F n 2
� kfrmID  E KK L�M�L  ��N�
� 
docuN �OO  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacM �PP  n g r E z F B w D 1 T
� kfrmID  F QQ R�S�R  ��T�
� 
docuT �UU  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacS �VV  g F U o 4 i q m Q - g
� kfrmID  G WW X�Y�X  ��Z�
� 
docuZ �[[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacY �\\  o f - h p o C J B c B
� kfrmID  H ]] ^�_�^  ��`�
� 
docu` �aa  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac_ �bb  f S j I 7 s Z c 9 d 3
� kfrmID  I cc d�e�d  ��f�
� 
docuf �gg  j C K o k D m L 7 - 3
� kfrmID  
� 
FCace �hh  m v S u o D 0 e F X A
� kfrmID  J ii j�k�j  ��l�
� 
docul �mm  j C K o k D m L 7 - 3
� kfrmID  
� 
FCack �nn  k p z D y l D q 1 B 5
� kfrmID  K oo p�q�p  ��~r�}
�~ 
docur �ss  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCacq �tt  p F V 5 m V 1 p 4 I 3
� kfrmID  L uu v�|w�{v  ��zx�y
�z 
docux �yy  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCacw �zz  c - s n p 3 d x J 9 R
�{ kfrmID  M {{ |�x}�w|  ��v~�u
�v 
docu~ �  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac} ���  b Q W 7 t W z L - 0 a
�w kfrmID  N �� ��t��s�  ��r��q
�r 
docu� ���  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac� ���  i q Z I v P U T R O Y
�s kfrmID  O �� ��p��o�  ��n��m
�n 
docu� ���  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac� ���  b k Q y L o r L 0 a x
�o kfrmID  P �� ��l��k�  ��j��i
�j 
docu� ���  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac� ���  e 3 x s f N Z u n k 6
�k kfrmID  Q �� ��h��g�  ��f��e
�f 
docu� ���  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac� ���  d 6 3 i t y q a e K H
�g kfrmID  R �� ��d��c�  ��b��a
�b 
docu� ���  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac� ���  j U I 5 _ R k f i j r
�c kfrmID  S �� ��`��_�  ��^��]
�^ 
docu� ���  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac� ���  k L G L t W W R M c r
�_ kfrmID  T �� ��\��[�  ��Z��Y
�Z 
docu� ���  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac� ���  h O J 6 Y i t _ _ e r
�[ kfrmID  U �� ��X��W�  ��V��U
�V 
docu� ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac� ���  d O 4 R H d a U M o H
�W kfrmID  V �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac� ���  i x h 4 z R C J x d X
�S kfrmID  W �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac� ���  g R I G h p f N u b 7
�O kfrmID  X �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac� ���  b Z Y 6 3 1 L j q 4 s
�K kfrmID  Y �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac� ���  l R a r Q z 0 T d z T
�G kfrmID  Z �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac� ���  m b f q 0 Q 2 i Y 7 V
�C kfrmID  [ �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac� ���  f 4 t C d U L b P q G
�? kfrmID  \ �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac� ���  p B 3 X 9 t 3 E r h k
�; kfrmID  ] �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac� ���  i W s n e 3 v a B k j
�7 kfrmID  ^ �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac� ���  o C z n x 2 D j V k g
�3 kfrmID  _ �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac� ���  d 5 s 4 3 X y U O F _
�/ kfrmID  ` �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac� ���  h 2 t G Q O 4 x g z p
�+ kfrmID  a �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac� ���  j 5 M e Y P t e X e r
�' kfrmID  b �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac� ���  n i n l L V M S 9 5 i
�# kfrmID  c ��  � �   ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac �  o w o 7 V D 9 E i g K
� kfrmID  d  ��  ���
� 
docu �		  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �

  a S f d R o O 1 M v K
� kfrmID  e  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  m L G Z p l z f T V 5
� kfrmID  f  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  f f 7 x 8 N O Q 0 S a
� kfrmID  g  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  g 3 Q z _ D Z w 1 e S
� kfrmID  h  ��  ��
 �	
�
 
docu  �!!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac �""  m C p a j 1 8 K r z x
� kfrmID  i ## $�%�$  ��&�
� 
docu& �''  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac% �((  j 0 p R G h n j J 7 C
� kfrmID  j )) *�+�*  ��,�
� 
docu, �--  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+ �..  l M 7 8 _ 2 7 _ v 3 p
� kfrmID  k // 0� 1��0  ���2��
�� 
docu2 �33  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac1 �44  f 9 r 9 y b w f K q 8
�� kfrmID  l 55 6��7��6  ���8��
�� 
docu8 �99  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac7 �::  l T T 3 5 a f Y Y A F
�� kfrmID  m ;; <��=��<  ���>��
�� 
docu> �??  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac= �@@  k x n I t L t X 2 _ P
�� kfrmID  n AA B��C��B  ���D��
�� 
docuD �EE  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacC �FF  k h I 2 l A P K j Y H
�� kfrmID  o GG H��I��H  ���J��
�� 
docuJ �KK  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacI �LL  f f e G P S F K N b o
�� kfrmID  p MM N��O��N  ���P��
�� 
docuP �QQ  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacO �RR  i y s 8 4 R K l l x V
�� kfrmID  q SS T��U��T  ���V��
�� 
docuV �WW  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacU �XX  b L f 3 t y 6 c a L 8
�� kfrmID  r YY Z��[��Z  ���\��
�� 
docu\ �]]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac[ �^^  e j 4 G c 9 V 3 B C l
�� kfrmID  s __ `��a��`  ���b��
�� 
docub �cc  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCaca �dd  f a p Q f 7 I d R 4 s
�� kfrmID  t ee f��g��f  ���h��
�� 
docuh �ii  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacg �jj  p 9 f Q Y K D 5 5 s A
�� kfrmID  u kk l��m��l  ���n��
�� 
docun �oo  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacm �pp  e Z i I d z a h x L L
�� kfrmID  v qq r��s��r  ���t��
�� 
docut �uu  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacs �vv  c A 8 5 T D H S v j x
�� kfrmID  w ww x��y��x  ���z��
�� 
docuz �{{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacy �||  g f Z e E g V E u C J
�� kfrmID  x }} ~����~  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac ���  m f J i n B V y R h n
�� kfrmID  y �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  o t C F M l P F Z F 9
�� kfrmID  z �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  n V y _ M P j 8 a u e
�� kfrmID  { �� ������  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac� ���  p w 5 O y X P B B N M
� kfrmID  | �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p R 6 D 5 6 c o c o l
� kfrmID  } �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  c D g c e E C d 0 S r
� kfrmID  ~ �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  h s G 9 x H m A d e J
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  h R t Z 0 U z T d U B
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  d K P 0 O 3 L c 8 C 9
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  d J U 7 o h Y e G O v
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p S F - l 2 m 7 n M l
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  k x B f i p j T b U o
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g N I r n q h M B 9 r
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p E 0 N L S i U 9 T Y
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  h 3 X S o 8 l m _ R 8
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  m F - U 5 m M - N F d
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  b 7 Z i h C K M t 3 I
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  k z p R K N F c N N 3
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g _ C a D - v m 1 q f
� kfrmID  � �� �����  ��~��}
�~ 
docu� ���  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac� ���  d h l W C 5 l X 0 s 6
� kfrmID  � �� ��|��{�  ��z��y
�z 
docu� ���  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac� ���  i l W k Y g h x 8 2 a
�{ kfrmID  � �� ��x��w�  ��v��u
�v 
docu� ���  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac� �    e z c B q G C S x p c
�w kfrmID  �  �t�s  ��r�q
�r 
docu �  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac �  i 8 l t A m g B p G 8
�s kfrmID  �  �p	�o  ��n
�m
�n 
docu
 �  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac	 �  l V G 3 0 8 D 3 k d 9
�o kfrmID  �  �l�k  ��j�i
�j 
docu �  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac �  i V J Q Q 7 b Q C p r
�k kfrmID  �  �h�g  ��f�e
�f 
docu �  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac �  a i k s b M 5 4 c 1 h
�g kfrmID  �  �d�c  ��b�a
�b 
docu �  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac �  m Y j G k o b s X l j
�c kfrmID  �   �`!�_   ��^"�]
�^ 
docu" �##  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac! �$$  k G z R t 9 4 O _ l q
�_ kfrmID  � %% &�\'�[&  ��Z(�Y
�Z 
docu( �))  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac' �**  m c s m w i s C k b 0
�[ kfrmID  � ++ ,�X-�W,  ��V.�U
�V 
docu. �//  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac- �00  e z 3 i F p G a k c Z
�W kfrmID  � 11 2�T3�S2  ��R4�Q
�R 
docu4 �55  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac3 �66  p h L c e d Q l R G C
�S kfrmID  � 77 8�P9�O8  ��N:�M
�N 
docu: �;;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac9 �<<  l I f Z 0 b O v P P 8
�O kfrmID  � == >�L?�K>  ��J@�I
�J 
docu@ �AA  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac? �BB  g S - 3 k 5 q T H R D
�K kfrmID  � CC D�HE�GD  ��FF�E
�F 
docuF �GG  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCacE �HH  c X f 1 V Y a E p f X
�G kfrmID  � II J�DK�CJ  ��BL�A
�B 
docuL �MM  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCacK �NN  n k k L 2 e v s g a d
�C kfrmID  � OO P�@Q�?P  ��>R�=
�> 
docuR �SS  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCacQ �TT  h u x p E N D h R a O
�? kfrmID  � UU V�<W�;V  ��:X�9
�: 
docuX �YY  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCacW �ZZ  k B K - X _ i G f v l
�; kfrmID  � [[ \�8]�7\  ��6^�5
�6 
docu^ �__  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac] �``  m B 5 M v K 5 - A y Z
�7 kfrmID  � aa b�4c�3b  ��2d�1
�2 
docud �ee  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCacc �ff  i V b 2 Q a Z l C B f
�3 kfrmID  � gg h�0i�/h  ��.j�-
�. 
docuj �kk  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCaci �ll  f c b u _ I L l g n k
�/ kfrmID  � mm n�,o�+n  ��*p�)
�* 
docup �qq  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCaco �rr  b s q C V P j j 6 R E
�+ kfrmID  � ss t�(u�'t  ��&v�%
�& 
docuv �ww  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCacu �xx  b v Z v 0 D Q j I 0 6
�' kfrmID  � yy z�${�#z  ��"|�!
�" 
docu| �}}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac{ �~~  f O B x d L s j A 2 P
�# kfrmID  �  �� ���  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac� ���  p e 5 M e V j T a y o
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p 3 B z T z N g N q h
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g x C m m v x x Z G _
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p v 5 y L 1 5 l b E R
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  l K w w s 3 n 8 x _ L
� kfrmID  � �� �����  ��
��	
�
 
docu� ���  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac� ���  c m p x W I F q i 7 r
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g j K l O d W j I q F
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  l e 5 1 f M S U C X 8
� kfrmID  � �� �� ����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac� ���  k G b y C f b F Q B p
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  g L 1 i 3 b C w O P N
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  o G n z u w U G 9 A E
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  n w p v n u r k 0 h H
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  o c f T h t K P c d A
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  i T R C c _ Y U o E h
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  h V P a W I r i c k w
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  o u H W b q I _ z h S
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  c Q c P E 3 z Q P X E
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  l Y w J C Z m b J 6 5
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  h x _ k q B H 7 L L -
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  j b U Y u 2 Y c E i y
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  n p 6 i E p o A 3 Y X
�� kfrmID  � �� �������  ��� ��
�� 
docu  �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� �  j y r 6 h Q 9 A r F M
�� kfrmID  �  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  f I g S U I w N O a B
�� kfrmID  � 		 
����
  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  a 3 d 9 a j p 0 H X t
�� kfrmID  �  ���  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac �  b e l s z Y v E u y d
� kfrmID  �  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  c 6 8 G u M S 1 D l B
� kfrmID  �  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �    j - D a F R R a 6 8 2
� kfrmID  � !! "�#�"  ��$�
� 
docu$ �%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �&&  a R e o 6 h I I Y J 6
� kfrmID  � '' (�)�(  ��*�
� 
docu* �++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �,,  d Z E m Q 5 0 6 k a s
� kfrmID  � -- .�/�.  ��0�
� 
docu0 �11  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �22  o Z z q Q V H Q m a I
� kfrmID  � 33 4�5�4  ��6�
� 
docu6 �77  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac5 �88  h z 1 8 m C a 0 K k X
� kfrmID  � 99 :�;�:  ��<�
� 
docu< �==  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac; �>>  c l E A j 1 I j a m j
� kfrmID  � ?? @�A�@  ��B�
� 
docuB �CC  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacA �DD  o x Z n D c w u O P U
� kfrmID  � EE F�G�F  ��H�
� 
docuH �II  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacG �JJ  k x b M z L d 7 _ R z
� kfrmID  � KK L�M�L  ��N�
� 
docuN �OO  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacM �PP  c M T 7 Z B Y J E - 3
� kfrmID  � QQ R�S�R  ��T�
� 
docuT �UU  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacS �VV  o k I 3 H m - 8 b J a
� kfrmID  � WW X�Y�X  ��Z�
� 
docuZ �[[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacY �\\  h Y w 6 1 h 7 S C - 5
� kfrmID  � ]] ^�_�^  ��`�
� 
docu` �aa  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac_ �bb  p k e R Z h f R d g U
� kfrmID  � cc d�e�d  ��f�
� 
docuf �gg  j C K o k D m L 7 - 3
� kfrmID  
� 
FCace �hh  c d q u e S r b O r 3
� kfrmID  � ii j�k�j  ��l�
� 
docul �mm  j C K o k D m L 7 - 3
� kfrmID  
� 
FCack �nn  n o H _ T X 9 Y E V 7
� kfrmID  � oo p�q�p  ��~r�}
�~ 
docur �ss  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCacq �tt  c T i I 9 9 e 6 0 a 3
� kfrmID  � uu v�|w�{v  ��zx�y
�z 
docux �yy  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCacw �zz  l N - f 7 X q G j d T
�{ kfrmID  � {{ |�x}�w|  ��v~�u
�v 
docu~ �  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac} ���  i D 5 q i N I t q d P
�w kfrmID  � �� ��t��s�  ��r��q
�r 
docu� ���  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac� ���  i F r r Q r K J 1 x f
�s kfrmID  � �� ��p��o�  ��n��m
�n 
docu� ���  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac� ���  n p 1 N 9 F v - C u f
�o kfrmID  � �� ��l��k�  ��j��i
�j 
docu� ���  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac� ���  n a 5 B g L X 9 9 s -
�k kfrmID  � �� ��h��g�  ��f��e
�f 
docu� ���  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac� ���  d 7 R o B L 7 d Z a I
�g kfrmID  � �� ��d��c�  ��b��a
�b 
docu� ���  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac� ���  f L p y m 9 9 3 N 2 X
�c kfrmID  � �� ��`��_�  ��^��]
�^ 
docu� ���  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac� ���  b B 5 W W C V Q 3 _ I
�_ kfrmID  � �� ��\��[�  ��Z��Y
�Z 
docu� ���  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac� ���  i N p 6 k Y x j z C F
�[ kfrmID  � �� ��X��W�  ��V��U
�V 
docu� ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac� ���  e b q K Q B S E K K o
�W kfrmID  � �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac� ���  f k l x C h 9 p Z C w
�S kfrmID  � �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac� ���  d g U J - o v Z w O n
�O kfrmID  � �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac� ���  o O N t e 4 S 5 a 9 P
�K kfrmID  � �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac� ���  j y f 7 m H J 4 t r U
�G kfrmID  � �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac� ���  b o M A n r l T 9 u O
�C kfrmID  � �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac� ���  o N f P d P k z H o x
�? kfrmID  � �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac� ���  a q Z T a m K H c I 0
�; kfrmID  � �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac� ���  i C Q 8 l l s S H W E
�7 kfrmID  � �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac� ���  d 6 V o 5 0 B C q h O
�3 kfrmID  � �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac� ���  i p h I g R M 5 f x h
�/ kfrmID  � �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac� ���  k M - M h w W G C 1 B
�+ kfrmID  � �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac� ���  c T m s t 4 W x 3 y X
�' kfrmID  � �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac� ���  c 7 3 K E A a L g 4 R
�# kfrmID  � ��  � �   ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac �  g 0 0 d W t p W k J X
� kfrmID  �  ��  ���
� 
docu �		  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �

  o o x _ 7 _ m j Q h G
� kfrmID  �  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  d E L D Y Z u p q 9 6
� kfrmID  �  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  k O V u V q b v F E G
� kfrmID  �  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  b 3 X W P B O y 5 M t
� kfrmID  �  ��  ��
 �	
�
 
docu  �!!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac �""  k - 3 J g 7 i h M B w
� kfrmID  � ## $�%�$  ��&�
� 
docu& �''  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac% �((  o I j X x 3 w L z Z i
� kfrmID  � )) *�+�*  ��,�
� 
docu, �--  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+ �..  a f O p 6 W l D e Y H
� kfrmID  � // 0� 1��0  ���2��
�� 
docu2 �33  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac1 �44  j r q y g V E m t b k
�� kfrmID  � 55 6��7��6  ���8��
�� 
docu8 �99  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac7 �::  g A 9 D z O X P b 2 T
�� kfrmID  � ;; <��=��<  ���>��
�� 
docu> �??  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac= �@@  f V 4 i I c p e 2 I d
�� kfrmID  � AA B��C��B  ���D��
�� 
docuD �EE  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacC �FF  i C 9 3 g A A 2 W F Z
�� kfrmID  � GG H��I��H  ���J��
�� 
docuJ �KK  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacI �LL  m X s 9 k Y C x R l g
�� kfrmID  � MM N��O��N  ���P��
�� 
docuP �QQ  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacO �RR  l 2 L a Q t P c v K O
�� kfrmID  � SS T��U��T  ���V��
�� 
docuV �WW  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacU �XX  e F V F l u H h d E K
�� kfrmID  � YY Z��[��Z  ���\��
�� 
docu\ �]]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac[ �^^  a q S k b Q i 8 S n j
�� kfrmID  � __ `��a��`  ���b��
�� 
docub �cc  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCaca �dd  h - b 5 x 4 1 j H N b
�� kfrmID  � ee f��g��f  ���h��
�� 
docuh �ii  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacg �jj  d e g n t W p N 7 N I
�� kfrmID  � kk l��m��l  ���n��
�� 
docun �oo  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacm �pp  o B z a f 7 S M O r K
�� kfrmID  � qq r��s��r  ���t��
�� 
docut �uu  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacs �vv  j p T 0 i t T 5 3 W o
�� kfrmID  � ww x��y��x  ���z��
�� 
docuz �{{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacy �||  b B 0 N j E i w q n u
�� kfrmID  � }} ~����~  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac ���  l B O n R r Y O 3 v m
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  m p X 8 o k J a d n h
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  i T s E l H 0 X p O _
�� kfrmID  � �� ������  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac� ���  i I d - 2 c w u M e L
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a x 5 G - x D 0 E E M
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  m B D K _ J 1 V G P 1
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  f k L x e n g _ c 7 -
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  b 4 L o y c Z m 8 v L
� kfrmID    �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  m V p 3 a V E 5 3 U P
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g I l 6 R P N N s d h
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  j v A f z 3 2 d _ G i
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  d v G v D g u E L z T
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  n Y t M s b Y 5 Z V e
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  l 1 Q Z c 8 G o x F k
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  o 7 i D F c e O _ U 6
� kfrmID   �� ������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
� 
FCac� ���  l M H s a r O s 9 F i
�� kfrmID   �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  p R 4 - f 5 D 5 t k -
�� kfrmID  	 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  a O i e n 9 S 4 g 4 n
�� kfrmID  
 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  a 9 y c Y o e R d W Z
�� kfrmID   �� ������  ��~��}
�~ 
docu� ���  j C K o k D m L 7 - 3
�} kfrmID  
�� 
FCac� ���  k A D v K b M I S G E
� kfrmID   �� ��|��{�  ��z��y
�z 
docu� ���  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac� ���  p n - 8 Y 0 W - D Q l
�{ kfrmID   �� ��x��w�  ��v��u
�v 
docu� ���  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac� �    h W C Y a V 1 S 0 g X
�w kfrmID    �t�s  ��r�q
�r 
docu �  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac �  m Z H W h g c d 7 3 l
�s kfrmID    �p	�o  ��n
�m
�n 
docu
 �  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac	 �  e s f D 0 H J d g 5 u
�o kfrmID    �l�k  ��j�i
�j 
docu �  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac �  l y V f k 3 A A t 7 R
�k kfrmID    �h�g  ��f�e
�f 
docu �  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac �  o y q J k H c Q h K E
�g kfrmID    �d�c  ��b�a
�b 
docu �  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac �  j t h i P 8 x Q S _ B
�c kfrmID     �`!�_   ��^"�]
�^ 
docu" �##  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac! �$$  n N w k i W 4 z X H C
�_ kfrmID   %% &�\'�[&  ��Z(�Y
�Z 
docu( �))  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac' �**  k E 3 U e 8 L F q q D
�[ kfrmID   ++ ,�X-�W,  ��V.�U
�V 
docu. �//  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac- �00  o u 4 H K z 8 F f 7 S
�W kfrmID   11 2�T3�S2  ��R4�Q
�R 
docu4 �55  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac3 �66  j y Z 9 9 i m 7 Q l A
�S kfrmID   77 8�P9�O8  ��N:�M
�N 
docu: �;;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac9 �<<  p s H 5 s L X v X _ C
�O kfrmID   == >�L?�K>  ��J@�I
�J 
docu@ �AA  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac? �BB  b T 8 R H l A a - v q
�K kfrmID   CC D�HE�GD  ��FF�E
�F 
docuF �GG  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCacE �HH  a W s u t C k k F E R
�G kfrmID   II J�DK�CJ  ��BL�A
�B 
docuL �MM  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCacK �NN  a S H w 7 Q 9 O c B U
�C kfrmID   OO P�@Q�?P  ��>R�=
�> 
docuR �SS  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCacQ �TT  p n M L y g Z B m m p
�? kfrmID   UU V�<W�;V  ��:X�9
�: 
docuX �YY  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCacW �ZZ  i 0 d D h g o F c n P
�; kfrmID   [[ \�8]�7\  ��6^�5
�6 
docu^ �__  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac] �``  k y O Q 2 v I 7 u _ m
�7 kfrmID   aa b�4c�3b  ��2d�1
�2 
docud �ee  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCacc �ff  k I z H p y 4 v m q m
�3 kfrmID   gg h�0i�/h  ��.j�-
�. 
docuj �kk  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCaci �ll  b 3 o _ L q 3 y T g Z
�/ kfrmID    mm n�,o�+n  ��*p�)
�* 
docup �qq  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCaco �rr  e B I i B 4 7 z y N W
�+ kfrmID  ! ss t�(u�'t  ��&v�%
�& 
docuv �ww  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCacu �xx  f g T o _ T 3 D l D o
�' kfrmID  " yy z�${�#z  ��"|�!
�" 
docu| �}}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac{ �~~  k E r t v p O l R H H
�# kfrmID  #  �� ���  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac� ���  n c Q 2 B f o m n w e
� kfrmID  $ �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  o l G F j W X 3 0 _ s
� kfrmID  % �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  h S W b D 6 J P 6 5 T
� kfrmID  & �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a R A Q m S z A 6 5 9
� kfrmID  ' �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  i B A 5 S 9 T h e D D
� kfrmID  ( �� �����  ��
��	
�
 
docu� ���  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac� ���  b U g O K 8 w w R n 2
� kfrmID  ) �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a 8 A J i S N N R m T
� kfrmID  * �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  n g Q 6 Y 4 a K 2 6 f
� kfrmID  + �� �� ����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac� ���  e R i c e O X l 0 6 q
�� kfrmID  , �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  c g m 8 C _ f y i a l
�� kfrmID  - �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  k M c r c d 8 u R W Q
�� kfrmID  . �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  k V p Z b R x E p a 6
�� kfrmID  / �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  l c a 7 C d g C S n U
�� kfrmID  0 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  i g F R A D w 3 6 i X
�� kfrmID  1 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  h P z n S Y F R s t Z
�� kfrmID  2 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  h i i h L R V B H w 3
�� kfrmID  3 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  j w 2 F 3 5 q 9 K m B
�� kfrmID  4 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  n m k t x H 2 S I n v
�� kfrmID  5 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  f r 1 7 h J L V N D v
�� kfrmID  6 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  i a W w 4 4 j 2 - D d
�� kfrmID  7 �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  f D x F X C - d 8 _ 4
�� kfrmID  8 �� �������  ��� ��
�� 
docu  �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� �  j v a W P G w Z V 5 k
�� kfrmID  9  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  h 0 k 0 e g C _ x y s
�� kfrmID  : 		 
����
  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  f m 0 y g G Y 0 J w Q
�� kfrmID  ;  ���  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac �  g q 5 q V A i E l T 6
� kfrmID  <  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  g Y i p m w 0 S B G i
� kfrmID  =  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �    e _ T s W m U a o l f
� kfrmID  > !! "�#�"  ��$�
� 
docu$ �%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �&&  l n k V 8 _ 1 n 3 B r
� kfrmID  ? '' (�)�(  ��*�
� 
docu* �++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �,,  g F Y O f j z k 3 D y
� kfrmID  @ -- .�/�.  ��0�
� 
docu0 �11  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �22  c J 0 H f I f j J m 6
� kfrmID  A 33 4�5�4  ��6�
� 
docu6 �77  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac5 �88  m T S I W b a M e r K
� kfrmID  B 99 :�;�:  ��<�
� 
docu< �==  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac; �>>  e b p 8 v _ n J z w K
� kfrmID  C ?? @�A�@  ��B�
� 
docuB �CC  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacA �DD  p b A Z V K 1 Q y 4 j
� kfrmID  D EE F�G�F  ��H�
� 
docuH �II  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacG �JJ  a m p d Z o P f T f 9
� kfrmID  E KK L�M�L  ��N�
� 
docuN �OO  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacM �PP  d n 9 r h r 5 U B M M
� kfrmID  F QQ R�S�R  ��T�
� 
docuT �UU  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacS �VV  f _ N G B v E 3 9 v b
� kfrmID  G WW X�Y�X  ��Z�
� 
docuZ �[[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacY �\\  d X c v l O l X l x e
� kfrmID  H ]] ^�_�^  ��`�
� 
docu` �aa  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac_ �bb  e Z 4 J D 6 d H r v m
� kfrmID  I cc d�e�d  ��f�
� 
docuf �gg  j C K o k D m L 7 - 3
� kfrmID  
� 
FCace �hh  d R 6 B C m w f - U n
� kfrmID  J ii j�k�j  ��l�
� 
docul �mm  j C K o k D m L 7 - 3
� kfrmID  
� 
FCack �nn  m G b V g f A 6 3 a j
� kfrmID  K oo p�q�p  ��~r�}
�~ 
docur �ss  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCacq �tt  e r a m t j s J x S J
� kfrmID  L uu v�|w�{v  ��zx�y
�z 
docux �yy  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCacw �zz  j B I Z P 8 3 L i L J
�{ kfrmID  M {{ |�x}�w|  ��v~�u
�v 
docu~ �  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac} ���  n D Q T N G F o H B A
�w kfrmID  N �� ��t��s�  ��r��q
�r 
docu� ���  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac� ���  m 5 x E S F y f I L r
�s kfrmID  O �� ��p��o�  ��n��m
�n 
docu� ���  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac� ���  k l 4 g h k N 1 U 2 Y
�o kfrmID  P �� ��l��k�  ��j��i
�j 
docu� ���  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac� ���  b m q e c Y g 3 I d K
�k kfrmID  Q �� ��h��g�  ��f��e
�f 
docu� ���  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac� ���  i k 2 e M K X 3 o N x
�g kfrmID  R �� ��d��c�  ��b��a
�b 
docu� ���  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac� ���  b C 3 Z 4 Y a 4 F p o
�c kfrmID  S �� ��`��_�  ��^��]
�^ 
docu� ���  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac� ���  p t g m Y N d V 7 _ R
�_ kfrmID  T �� ��\��[�  ��Z��Y
�Z 
docu� ���  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac� ���  j c W 9 t M k - S Y Q
�[ kfrmID  U �� ��X��W�  ��V��U
�V 
docu� ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac� ���  j j 4 p t 6 1 H T z R
�W kfrmID  V �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac� ���  d L M 7 D 3 T f 1 G C
�S kfrmID  W �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac� ���  f 3 Y v f F R O E s C
�O kfrmID  X �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac� ���  j 8 9 8 a S r O I K W
�K kfrmID  Y �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac� ���  c P I r 7 B 4 5 l 8 r
�G kfrmID  Z �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac� ���  k J N L c c o E Z X t
�C kfrmID  [ �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac� ���  a _ l 5 9 h 1 O F e z
�? kfrmID  \ �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac� ���  j l L L 3 A H N X 0 i
�; kfrmID  ] �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac� ���  b p U s x C 3 e R o I
�7 kfrmID  ^ �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac� ���  b B S X K C R R l p A
�3 kfrmID  _ �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac� ���  l e I _ 0 i z M t g 5
�/ kfrmID  ` �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac� ���  o 1 A N Y N H 5 y 0 A
�+ kfrmID  a �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac� ���  c z W i W x 7 b - J D
�' kfrmID  b �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac� ���  i v 4 - C U w Z - D z
�# kfrmID  c ��  � �   ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac �  c N s h 3 5 - 8 t B e
� kfrmID  d  ��  ���
� 
docu �		  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �

  b L g 6 m c Z 5 m s _
� kfrmID  e  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  j U c X N i 6 b D T B
� kfrmID  f  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  m C s S F 8 d L 0 l U
� kfrmID  g  ��  ���
� 
docu �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac �  b q q i 4 x d p v A c
� kfrmID  h  ��  ��
 �	
�
 
docu  �!!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac �""  a - L f I A D 3 N 7 1
� kfrmID  i ## $�%�$  ��&�
� 
docu& �''  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac% �((  f S - D M 6 u N g 8 m
� kfrmID  j )) *�+�*  ��,�
� 
docu, �--  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+ �..  m f R D 8 C 4 V P W 5
� kfrmID  k // 0� 1��0  ���2��
�� 
docu2 �33  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac1 �44  n 2 Z R i 4 H 4 7 V C
�� kfrmID  l 55 6��7��6  ���8��
�� 
docu8 �99  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac7 �::  e z k e I u R H C l S
�� kfrmID  m ;; <��=��<  ���>��
�� 
docu> �??  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac= �@@  f m 1 i N d 6 B Q 3 u
�� kfrmID  n AA B��C��B  ���D��
�� 
docuD �EE  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacC �FF  n s i g Y x b H E f a
�� kfrmID  o GG H��I��H  ���J��
�� 
docuJ �KK  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacI �LL  b a 6 b d U i w 8 5 S
�� kfrmID  p MM N��O��N  ���P��
�� 
docuP �QQ  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacO �RR  d n R b x 5 1 J T u x
�� kfrmID  q SS T��U��T  ���V��
�� 
docuV �WW  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacU �XX  d B Q _ 9 y j v S n L
�� kfrmID  r YY Z��[��Z  ���\��
�� 
docu\ �]]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac[ �^^  k E b - N b j Z V p d
�� kfrmID  s __ `��a��`  ���b��
�� 
docub �cc  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCaca �dd  h a b O j s q X e G Q
�� kfrmID  t ee f��g��f  ���h��
�� 
docuh �ii  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacg �jj  i h R i a - G W Q B S
�� kfrmID  u kk l��m��l  ���n��
�� 
docun �oo  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacm �pp  j _ W j k F I 2 2 7 0
�� kfrmID  v qq r��s��r  ���t��
�� 
docut �uu  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacs �vv  l U H G p 1 C V N 0 _
�� kfrmID  w ww x��y��x  ���z��
�� 
docuz �{{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCacy �||  k 8 S d W i U C I G -
�� kfrmID  x }} ~����~  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac ���  d l o E 3 h 4 m S p E
�� kfrmID  y �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  k Q v p j 5 M e N o i
�� kfrmID  z �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  o E 2 P t j m q e J l
�� kfrmID  { �� ������  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac� ���  o 8 Z C w f q a X p p
� kfrmID  | �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  f o 6 i 6 D P q Q 7 l
� kfrmID  } �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g e t B W 1 i F 3 z y
� kfrmID  ~ �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  m U Z B 2 t J D X 6 Q
� kfrmID   �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  i X e K f 6 V B b o O
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  k E q R U 8 T R j F K
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a g v D U L P _ p J X
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  n a X h b O A M r 3 2
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  e u E g N 7 P 9 J r M
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  n v I h Q a a j 3 w Q
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a U h X Q r z b q a u
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  d l A K 7 V F j D O n
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  e 4 S 8 V g d 2 i f w
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  e y X T y C g 5 A u -
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p o g H 9 m W P 7 a A
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  p j R 6 t x M 0 R n K
� kfrmID  � �� �����  ��~��}
�~ 
docu� ���  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac� ���  g L x 3 G K z F j G l
� kfrmID  � �� ��|��{�  ��z��y
�z 
docu� ���  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac� ���  a 7 p W Q a P a Y S A
�{ kfrmID  � �� ��x��w�  ��v��u
�v 
docu� ���  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac� �    e n m V - z 6 y x l I
�w kfrmID  �  �t�s  ��r�q
�r 
docu �  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac �  p D E K J M u S O Z p
�s kfrmID  �  �p	�o  ��n
�m
�n 
docu
 �  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac	 �  m q h P E O m u 9 _ x
�o kfrmID  �  �l�k  ��j�i
�j 
docu �  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac �  d U l C m Q z y H j I
�k kfrmID  �  �h�g  ��f�e
�f 
docu �  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac �  k 2 a p B 6 v U G J Y
�g kfrmID  �  �d�c  ��b�a
�b 
docu �  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac �  j E c b S p Z U v y 0
�c kfrmID  �   �`!�_   ��^"�]
�^ 
docu" �##  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac! �$$  o K f n M h a d d v Z
�_ kfrmID  � %% &�\'�[&  ��Z(�Y
�Z 
docu( �))  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac' �**  o W a 0 z 8 Y 5 X T R
�[ kfrmID  � ++ ,�X-�W,  ��V.�U
�V 
docu. �//  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac- �00  f S B 6 k C T r h d z
�W kfrmID  � 11 2�T3�S2  ��R4�Q
�R 
docu4 �55  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac3 �66  f g u 6 u W L h h p 9
�S kfrmID  � 77 8�P9�O8  ��N:�M
�N 
docu: �;;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac9 �<<  l Y r x z Z 4 i N O Y
�O kfrmID  � == >�L?�K>  ��J@�I
�J 
docu@ �AA  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac? �BB  i T T b - y l p y f B
�K kfrmID  � CC D�HE�GD  ��FF�E
�F 
docuF �GG  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCacE �HH  b x F 1 c b U O _ w x
�G kfrmID  � II J�DK�CJ  ��BL�A
�B 
docuL �MM  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCacK �NN  i g S t r r 5 o s f M
�C kfrmID  � OO P�@Q�?P  ��>R�=
�> 
docuR �SS  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCacQ �TT  p h H T f 4 F W o S K
�? kfrmID  � UU V�<W�;V  ��:X�9
�: 
docuX �YY  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCacW �ZZ  o j F K X c Y T S l s
�; kfrmID  � [[ \�8]�7\  ��6^�5
�6 
docu^ �__  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac] �``  b W 4 O 4 A i h 7 O V
�7 kfrmID  � aa b�4c�3b  ��2d�1
�2 
docud �ee  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCacc �ff  f N E I B 4 G a K _ K
�3 kfrmID  � gg h�0i�/h  ��.j�-
�. 
docuj �kk  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCaci �ll  h U B D K K h 1 0 L O
�/ kfrmID  � mm n�,o�+n  ��*p�)
�* 
docup �qq  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCaco �rr  p Z z x I m G S j 7 a
�+ kfrmID  � ss t�(u�'t  ��&v�%
�& 
docuv �ww  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCacu �xx  h y h 4 d R 4 K N o u
�' kfrmID  � yy z�${�#z  ��"|�!
�" 
docu| �}}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac{ �~~  b D p h 4 9 f X f Q a
�# kfrmID  �  �� ���  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac� ���  b c i s X c 9 E q r Z
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  i c H H J t c S c x U
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  g 9 l 8 W 2 D 0 c O B
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  i Z X T z 2 P g N H G
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  b K Y G J j S U g c y
� kfrmID  � �� �����  ��
��	
�
 
docu� ���  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac� ���  b 3 e T n q P E u c B
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  a V _ O z J M m I 1 b
� kfrmID  � �� �����  ����
� 
docu� ���  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac� ���  b i k i f V e w j s a
� kfrmID  � �� �� ����  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac� ���  e i S 5 z m g c T G M
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  e j s c O z B P D l 4
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  p q X C B i A c R E H
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  b t t 8 f u n m h v r
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  c H Y 3 L 7 7 q m M w
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  h 1 z 0 P l 3 k p r q
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  k 0 C l k i 2 H C d N
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  l U d L Q 2 Q D n I J
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  j b r w a U 2 C u E K
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  c e Z d 5 _ V 5 2 _ a
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  k y k i 2 C v I - Z O
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  b u q 6 t R Y 2 G 6 q
�� kfrmID  � �� �������  ������
�� 
docu� ���  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� ���  j n A D d 5 w y 6 H f
�� kfrmID  � �� �������  ��� ��
�� 
docu  �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac� �  n r K Y R I i V k k 7
�� kfrmID  �  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  a l e 5 7 W 0 q K t n
�� kfrmID  � 		 
����
  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  f 7 j y x g v _ m X 3
�� kfrmID  �  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  e 1 p Q p t D C b b g
�� kfrmID  �  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �  l J i l i a l J B 6 h
�� kfrmID  �  ����  �����
�� 
docu �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac �    g _ o c b i 6 V j i 8
�� kfrmID  � !! "��#��"  ���$��
�� 
docu$ �%%  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac# �&&  i 3 a - 4 s z n w a 0
�� kfrmID  � '' (��)��(  ���*��
�� 
docu* �++  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac) �,,  o 2 A R P y c T g V C
�� kfrmID  � -- .��/��.  ���0��
�� 
docu0 �11  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/ �22  i b o 1 - V 0 Y u f e
�� kfrmID  � 33 4��5��4  ���6��
�� 
docu6 �77  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac5 �88  n x m A g X - b l T 4
�� kfrmID  � 99 :��;��:  ���<��
�� 
docu< �==  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac; �>>  j j V L b X 0 b g a v
�� kfrmID  � ?? @��A�@  ��B�
� 
docuB �CC  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCacA �DD  p l n D h q 8 d x 9 d
� kfrmID  � EE F�G�F  ��H�
� 
docuH �II  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacG �JJ  l g r l 2 z M C 2 x x
� kfrmID  � KK L�M�L  ��N�
� 
docuN �OO  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacM �PP  c b Y 9 q - v z G G 2
� kfrmID  � QQ R�S�R  ��T�
� 
docuT �UU  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacS �VV  f _ G b u S x L z F k
� kfrmID  � WW X�Y�X  ��Z�
� 
docuZ �[[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCacY �\\  k 0 S r F _ F b X i H
� kfrmID  � ]] ^�_�^  ��`�
� 
docu` �aa  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac_ �bb  c Q 3 r M _ L m 5 1 K
� kfrmID  � cc d�e�d  ��f�
� 
docuf �gg  j C K o k D m L 7 - 3
� kfrmID  
� 
FCace �hh  e J - Y K 5 A E H 3 R
� kfrmID  � ii j�k�j  ��l�
� 
docul �mm  j C K o k D m L 7 - 3
� kfrmID  
� 
FCack �nn  m 0 _ h n 0 1 m R 0 5
� kfrmID  � oo p�q�p  ��~r�}
�~ 
docur �ss  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCacq �tt  n E 1 i w W _ h T g e
� kfrmID  � uu v�|w�{v  ��zx�y
�z 
docux �yy  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCacw �zz  m c g e h H 3 e v q A
�{ kfrmID  � {{ |�x}�w|  ��v~�u
�v 
docu~ �  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac} ���  m E p c 0 d I 0 d 9 5
�w kfrmID  � �� ��t��s�  ��r��q
�r 
docu� ���  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac� ���  l 8 k s j o L o 3 w y
�s kfrmID  � �� ��p��o�  ��n��m
�n 
docu� ���  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac� ���  e E 8 B 6 Q n e M v M
�o kfrmID  � �� ��l��k�  ��j��i
�j 
docu� ���  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac� ���  d T Z n 7 h D q F 4 z
�k kfrmID  � �� ��h��g�  ��f��e
�f 
docu� ���  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac� ���  h Z r d W 7 l K i 2 l
�g kfrmID  � �� ��d��c�  ��b��a
�b 
docu� ���  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac� ���  a 6 Z q I B d 2 j z b
�c kfrmID  � �� ��`��_�  ��^��]
�^ 
docu� ���  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac� ���  o G 1 O 6 O S h 2 1 N
�_ kfrmID  � �� ��\��[�  ��Z��Y
�Z 
docu� ���  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac� ���  g S M Q B K 1 d S u 0
�[ kfrmID  � �� ��X��W�  ��V��U
�V 
docu� ���  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac� ���  d G 6 4 J G c h O p a
�W kfrmID  � �� ��T��S�  ��R��Q
�R 
docu� ���  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac� ���  p p 4 n C C D x N s W
�S kfrmID  � �� ��P��O�  ��N��M
�N 
docu� ���  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac� ���  h X p o J 7 Z s _ H D
�O kfrmID  � �� ��L��K�  ��J��I
�J 
docu� ���  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac� ���  f e o N J 1 q y - H x
�K kfrmID  � �� ��H��G�  ��F��E
�F 
docu� ���  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac� ���  d z q I H - k v T C d
�G kfrmID  � �� ��D��C�  ��B��A
�B 
docu� ���  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac� ���  i B o 0 E S x m z n A
�C kfrmID  � �� ��@��?�  ��>��=
�> 
docu� ���  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac� ���  b A d b l _ Q X X V -
�? kfrmID  � �� ��<��;�  ��:��9
�: 
docu� ���  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac� ���  h W z A D J C p T P t
�; kfrmID  � �� ��8��7�  ��6��5
�6 
docu� ���  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac� ���  n N g 5 z n t K x X X
�7 kfrmID  � �� ��4��3�  ��2��1
�2 
docu� ���  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac� ���  o 0 K w P 6 _ M Z B C
�3 kfrmID  � �� ��0��/�  ��.��-
�. 
docu� ���  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac� ���  m T l l k e a c y Z D
�/ kfrmID  � �� ��,��+�  ��*��)
�* 
docu� ���  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac� ���  h o 1 g P T 2 R U i o
�+ kfrmID  � �� ��(��'�  ��&��%
�& 
docu� ���  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac� ���  m 1 O r _ z b m q B Z
�' kfrmID  � �� ��$��#�  ��"��!
�" 
docu� ���  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac� ���  e A Z t 5 5 Z - I f E
�# kfrmID  � ��   �  �    �� �
� 
docu  �    j C K o k D m L 7 - 3
� kfrmID  
�  
FCac  �    o e 7 7 a T O t 7 n o
� kfrmID  �     � �   �� �
� 
docu  � 	 	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac  � 
 
  j O 0 2 J P e N U W t
� kfrmID  �     � �   �� �
� 
docu  �    j C K o k D m L 7 - 3
� kfrmID  
� 
FCac  �    m o P e U R x 4 Y J I
� kfrmID  �     � �   �� �
� 
docu  �    j C K o k D m L 7 - 3
� kfrmID  
� 
FCac  �    j r 6 S G V P W y 1 v
� kfrmID  �     � �   �� �
� 
docu  �    j C K o k D m L 7 - 3
� kfrmID  
� 
FCac  �    d Q p W n C U n c h z
� kfrmID  �     � �   ��
  �	
�
 
docu   � ! !  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac  � " "  h e n w H B d f M k F
� kfrmID  �  # #  $� %� $  �� &�
� 
docu & � ' '  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac % � ( (  m l y C f Z c u z J e
� kfrmID  �  ) )  *� +� *  �� ,�
� 
docu , � - -  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac + � . .  m X 1 2 c b 4 9 L E G
� kfrmID  �  / /  0�  1�� 0  ��� 2��
�� 
docu 2 � 3 3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac 1 � 4 4  o s U G i 8 w Z c g f
�� kfrmID  �  5 5  6�� 7�� 6  ��� 8��
�� 
docu 8 � 9 9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac 7 � : :  n 8 i 1 s M D w E u Y
�� kfrmID  �  ; ;  <�� =�� <  ��� >��
�� 
docu > � ? ?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac = � @ @  c t E 6 E t K L Z e t
�� kfrmID  �  A A  B�� C�� B  ��� D��
�� 
docu D � E E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac C � F F  g q P w F D e m L J g
�� kfrmID  �  G G  H�� I�� H  ��� J��
�� 
docu J � K K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac I � L L  a k G V E W C k b 4 y
�� kfrmID  �  M M  N�� O�� N  ��� P��
�� 
docu P � Q Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac O � R R  d j T l H 6 R v I E p
�� kfrmID  �  S S  T�� U�� T  ��� V��
�� 
docu V � W W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac U � X X  i Y A 7 h i v q h R n
�� kfrmID  �  Y Y  Z�� [�� Z  ��� \��
�� 
docu \ � ] ]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac [ � ^ ^  k S q K z t n W Q p 3
�� kfrmID  �  _ _  `�� a�� `  ��� b��
�� 
docu b � c c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac a � d d  h T - T c 1 b z 4 B w
�� kfrmID  �  e e  f�� g�� f  ��� h��
�� 
docu h � i i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac g � j j  g 9 E U f X E R i S S
�� kfrmID  �  k k  l�� m�� l  ��� n��
�� 
docu n � o o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac m � p p  a g F k b 2 O G _ P z
�� kfrmID  �  q q  r�� s�� r  ��� t��
�� 
docu t � u u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac s � v v  m T w N Z n V 3 n e u
�� kfrmID  �  w w  x�� y�� x  ��� z��
�� 
docu z � { {  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac y � | |  m B 0 r - R 4 c - 6 L
�� kfrmID  �  } }  ~�� �� ~  ��� ���
�� 
docu � � � �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac  � � �  a v m k N B n e q r 0
�� kfrmID  �  � �  ��� ��� �  ��� ���
�� 
docu � � � �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac � � � �  a y H e I 0 P a Q 6 c
�� kfrmID  �  � �  ��� ��� �  ��� ���
�� 
docu � � � �  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac � � � �  k M o 2 J B J E s a N
�� kfrmID  �  � �  ��� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac � � � �  h h z 9 c O O m C I 7
� kfrmID  �  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  n 4 u H K v v R 6 r E
� kfrmID  �  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  j - j I X 2 l O z M 2
� kfrmID  �  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  k S 2 E m e u y E 1 l
� kfrmID  �  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  k M 6 U B 6 F d 3 i e
� kfrmID     � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  g 5 g E k r o X J f j
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  o G 8 u Q Z u 4 w L A
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  n B y k k C u T T a 2
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  c R 5 C Y A r K z _ p
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  l v 9 k - M 1 v 4 2 E
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  a c W h _ M j n B q 5
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  f 0 p i g y 0 2 X R 4
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  k R w G p r M 3 J 5 r
� kfrmID    � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  e l J 2 V k o C J 4 Y
� kfrmID  	  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  h v _ B j A X p M 9 -
� kfrmID  
  � �  �� �� �  �� ��
� 
docu � � � �  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac � � � �  l q _ B f L l K b Z U
� kfrmID    � �  �� �� �  ��~ ��}
�~ 
docu � � � �  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac � � � �  p P R a a v 5 z _ G 4
� kfrmID    � �  ��| ��{ �  ��z ��y
�z 
docu � � � �  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac � � � �  f - - P t 5 V b r y w
�{ kfrmID    � �  ��x ��w �  ��v ��u
�v 
docu � � � �  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac � �! !   d l k n t 1 J y y Q D
�w kfrmID   !! !�t!�s!  ��r!�q
�r 
docu! �!!  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac! �!!  p O k J o A h H H r C
�s kfrmID   !! !�p!	�o!  ��n!
�m
�n 
docu!
 �!!  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac!	 �!!  a k Z 0 B z b 1 d U O
�o kfrmID   !! !�l!�k!  ��j!�i
�j 
docu! �!!  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac! �!!  g h y 2 3 l i y 9 y X
�k kfrmID   !! !�h!�g!  ��f!�e
�f 
docu! �!!  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac! �!!  f g a 7 Q C V u t i z
�g kfrmID   !! !�d!�c!  ��b!�a
�b 
docu! �!!  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac! �!!  h s O q N e h q O j Z
�c kfrmID   !! ! �`!!�_!   ��^!"�]
�^ 
docu!" �!#!#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac!! �!$!$  a u 9 B k _ L 4 k T G
�_ kfrmID   !%!% !&�\!'�[!&  ��Z!(�Y
�Z 
docu!( �!)!)  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac!' �!*!*  l W f g z t B B z G 0
�[ kfrmID   !+!+ !,�X!-�W!,  ��V!.�U
�V 
docu!. �!/!/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac!- �!0!0  i g b e U x o s e 9 R
�W kfrmID   !1!1 !2�T!3�S!2  ��R!4�Q
�R 
docu!4 �!5!5  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac!3 �!6!6  i 5 A K z T J V p e d
�S kfrmID   !7!7 !8�P!9�O!8  ��N!:�M
�N 
docu!: �!;!;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac!9 �!<!<  e z C s N b E B _ H C
�O kfrmID   !=!= !>�L!?�K!>  ��J!@�I
�J 
docu!@ �!A!A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac!? �!B!B  i I C W K A V 2 Q h 2
�K kfrmID   !C!C !D�H!E�G!D  ��F!F�E
�F 
docu!F �!G!G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac!E �!H!H  m G g A Q C B J P R X
�G kfrmID   !I!I !J�D!K�C!J  ��B!L�A
�B 
docu!L �!M!M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac!K �!N!N  f d l v D 5 5 g a x j
�C kfrmID   !O!O !P�@!Q�?!P  ��>!R�=
�> 
docu!R �!S!S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac!Q �!T!T  f R X 0 B i s n H e V
�? kfrmID   !U!U !V�<!W�;!V  ��:!X�9
�: 
docu!X �!Y!Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac!W �!Z!Z  n B 7 D V t b t P 5 m
�; kfrmID   ![![ !\�8!]�7!\  ��6!^�5
�6 
docu!^ �!_!_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac!] �!`!`  k R 9 w 8 F K r C A n
�7 kfrmID   !a!a !b�4!c�3!b  ��2!d�1
�2 
docu!d �!e!e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac!c �!f!f  a W 2 k z L e 1 3 f 5
�3 kfrmID   !g!g !h�0!i�/!h  ��.!j�-
�. 
docu!j �!k!k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac!i �!l!l  c - 6 N W j 7 0 e V i
�/ kfrmID    !m!m !n�,!o�+!n  ��*!p�)
�* 
docu!p �!q!q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac!o �!r!r  b r r v r b j b M c 9
�+ kfrmID  ! !s!s !t�(!u�'!t  ��&!v�%
�& 
docu!v �!w!w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac!u �!x!x  i t 5 q G O v - 0 T n
�' kfrmID  " !y!y !z�$!{�#!z  ��"!|�!
�" 
docu!| �!}!}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac!{ �!~!~  l q Y W y M 2 j _ t w
�# kfrmID  # !! !�� !��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac!� �!�!�  l K O G S k T c W D W
� kfrmID  $ !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  j z 0 b p j I 1 W C 5
� kfrmID  % !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  c q r t W x V m d S b
� kfrmID  & !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  p M t u Q L 8 E 0 J K
� kfrmID  ' !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  b x B - I d m o y M D
� kfrmID  ( !�!� !��!��!�  ��
!��	
�
 
docu!� �!�!�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac!� �!�!�  c 3 n 4 B R P 7 U 5 F
� kfrmID  ) !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  g M H q U a 4 O 8 f L
� kfrmID  * !�!� !��!��!�  ��!��
� 
docu!� �!�!�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac!� �!�!�  k G b 7 I O e h v 7 v
� kfrmID  + !�!� !�� !���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac!� �!�!�  e s C F T d A x 0 V f
�� kfrmID  , !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  d f K o K Z z H 5 L _
�� kfrmID  - !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  g v 3 l 2 C w 0 l M b
�� kfrmID  . !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  d 4 3 P m r O D G O a
�� kfrmID  / !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  e d O h p 3 T x O n u
�� kfrmID  0 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  c p r x E 5 W 9 T O P
�� kfrmID  1 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  d _ G x K w R p - 1 4
�� kfrmID  2 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  l 5 x l d V s e D C T
�� kfrmID  3 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  m - 4 d j u S W m h 4
�� kfrmID  4 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  n r q O F q 1 h 9 u X
�� kfrmID  5 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  g h j 6 x j 0 5 K p -
�� kfrmID  6 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  p T w H - y 6 b 7 m L
�� kfrmID  7 !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �!�!�  a 0 Q n I y 6 s V 6 7
�� kfrmID  8 !�!� !���!���!�  ���" ��
�� 
docu"  �""  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac!� �""  c x d U l T h 9 x B o
�� kfrmID  9 "" "��"��"  ���"��
�� 
docu" �""  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac" �""  l T 9 W F Z I t K a r
�� kfrmID  : "	"	 "
��"��"
  ���"��
�� 
docu" �""  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac" �""  l S V f A 9 w H T 9 Q
�� kfrmID  ; "" "��"�"  ��"�
� 
docu" �""  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac" �""  i r d C p r E g N _ 9
� kfrmID  < "" "�"�"  ��"�
� 
docu" �""  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac" �""  k i Y - v F S 7 t F S
� kfrmID  = "" "�"�"  ��"�
� 
docu" �""  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac" �" "   b W F R R m f 2 e J P
� kfrmID  > "!"! ""�"#�""  ��"$�
� 
docu"$ �"%"%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"# �"&"&  c t i X B w x M o l g
� kfrmID  ? "'"' "(�")�"(  ��"*�
� 
docu"* �"+"+  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac") �",",  l 1 I 7 o 9 5 A p W I
� kfrmID  @ "-"- ".�"/�".  ��"0�
� 
docu"0 �"1"1  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"/ �"2"2  f n l z p V z y E O h
� kfrmID  A "3"3 "4�"5�"4  ��"6�
� 
docu"6 �"7"7  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"5 �"8"8  c G d s M w G Q 7 6 8
� kfrmID  B "9"9 ":�";�":  ��"<�
� 
docu"< �"="=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"; �">">  f y t q K x D b W h x
� kfrmID  C "?"? "@�"A�"@  ��"B�
� 
docu"B �"C"C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"A �"D"D  b 0 f j 3 R X T 1 d x
� kfrmID  D "E"E "F�"G�"F  ��"H�
� 
docu"H �"I"I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"G �"J"J  m F m O H o N H w s 4
� kfrmID  E "K"K "L�"M�"L  ��"N�
� 
docu"N �"O"O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"M �"P"P  b 2 m q 0 S _ 1 a O x
� kfrmID  F "Q"Q "R�"S�"R  ��"T�
� 
docu"T �"U"U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"S �"V"V  g p 5 Q L T N W I m 1
� kfrmID  G "W"W "X�"Y�"X  ��"Z�
� 
docu"Z �"["[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"Y �"\"\  a F J o V K C 1 5 d u
� kfrmID  H "]"] "^�"_�"^  ��"`�
� 
docu"` �"a"a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"_ �"b"b  j g M Y k j W d W h V
� kfrmID  I "c"c "d�"e�"d  ��"f�
� 
docu"f �"g"g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"e �"h"h  f Q 4 - P 9 - S D D O
� kfrmID  J "i"i "j�"k�"j  ��"l�
� 
docu"l �"m"m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac"k �"n"n  j Q W s 0 c t i W b R
� kfrmID  K "o"o "p�"q�"p  ��~"r�}
�~ 
docu"r �"s"s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac"q �"t"t  l B A 9 k c S 8 w D i
� kfrmID  L "u"u "v�|"w�{"v  ��z"x�y
�z 
docu"x �"y"y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac"w �"z"z  g H a K k F E L r Y 2
�{ kfrmID  M "{"{ "|�x"}�w"|  ��v"~�u
�v 
docu"~ �""  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac"} �"�"�  i j K R o X l 6 w Q P
�w kfrmID  N "�"� "��t"��s"�  ��r"��q
�r 
docu"� �"�"�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac"� �"�"�  h p M S M 1 9 0 a 7 7
�s kfrmID  O "�"� "��p"��o"�  ��n"��m
�n 
docu"� �"�"�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac"� �"�"�  b n 5 4 Q O i X c 9 t
�o kfrmID  P "�"� "��l"��k"�  ��j"��i
�j 
docu"� �"�"�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac"� �"�"�  i E v Y 7 j C a w Y 1
�k kfrmID  Q "�"� "��h"��g"�  ��f"��e
�f 
docu"� �"�"�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac"� �"�"�  c 1 A d q 4 P c E x Q
�g kfrmID  R "�"� "��d"��c"�  ��b"��a
�b 
docu"� �"�"�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac"� �"�"�  i 5 u V a t N a V P I
�c kfrmID  S "�"� "��`"��_"�  ��^"��]
�^ 
docu"� �"�"�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac"� �"�"�  k G 2 C e D - 7 8 M E
�_ kfrmID  T "�"� "��\"��["�  ��Z"��Y
�Z 
docu"� �"�"�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac"� �"�"�  j l w f b N J C I X w
�[ kfrmID  U "�"� "��X"��W"�  ��V"��U
�V 
docu"� �"�"�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac"� �"�"�  c s X F 9 O L R v E K
�W kfrmID  V "�"� "��T"��S"�  ��R"��Q
�R 
docu"� �"�"�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac"� �"�"�  h 5 p I F 2 M I O E d
�S kfrmID  W "�"� "��P"��O"�  ��N"��M
�N 
docu"� �"�"�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac"� �"�"�  l B x C v _ u K s w A
�O kfrmID  X "�"� "��L"��K"�  ��J"��I
�J 
docu"� �"�"�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac"� �"�"�  d g 3 M i 8 X 0 r U R
�K kfrmID  Y "�"� "��H"��G"�  ��F"��E
�F 
docu"� �"�"�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac"� �"�"�  b H n U N Y y d C l n
�G kfrmID  Z "�"� "��D"��C"�  ��B"��A
�B 
docu"� �"�"�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac"� �"�"�  f q y g J v 8 v o h y
�C kfrmID  [ "�"� "��@"��?"�  ��>"��=
�> 
docu"� �"�"�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac"� �"�"�  b z x O P k 3 2 A N J
�? kfrmID  \ "�"� "��<"��;"�  ��:"��9
�: 
docu"� �"�"�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac"� �"�"�  k Z i 3 7 V _ g I 5 C
�; kfrmID  ] "�"� "��8"��7"�  ��6"��5
�6 
docu"� �"�"�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac"� �"�"�  b I 3 C G I u 1 w - 9
�7 kfrmID  ^ "�"� "��4"��3"�  ��2"��1
�2 
docu"� �"�"�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac"� �"�"�  k N j M v C R j D n Z
�3 kfrmID  _ "�"� "��0"��/"�  ��."��-
�. 
docu"� �"�"�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac"� �"�"�  e w O 2 N m r r 5 B q
�/ kfrmID  ` "�"� "��,"��+"�  ��*"��)
�* 
docu"� �"�"�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac"� �"�"�  m l g P B H I a c 0 _
�+ kfrmID  a "�"� "��("��'"�  ��&"��%
�& 
docu"� �"�"�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac"� �"�"�  f h Q G K G h H 6 s W
�' kfrmID  b "�"� "��$"��#"�  ��""��!
�" 
docu"� �"�"�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac"� �"�"�  m d c Y P p B c x 1 n
�# kfrmID  c "�"� # � #�#   ��#�
� 
docu# �##  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac# �##  i S 3 H f G n z z k H
� kfrmID  d ## #�#�#  ��#�
� 
docu# �#	#	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �#
#
  e o M q w 9 v 4 d S u
� kfrmID  e ## #�#�#  ��#�
� 
docu# �##  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �##  l t C b J J q 7 H K _
� kfrmID  f ## #�#�#  ��#�
� 
docu# �##  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �##  m V A M _ h a j X c z
� kfrmID  g ## #�#�#  ��#�
� 
docu# �##  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac# �##  n V h A T N o F x 7 4
� kfrmID  h ## #�#�#  ��
# �	
�
 
docu#  �#!#!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac# �#"#"  g I o P d P 5 H N J c
� kfrmID  i #### #$�#%�#$  ��#&�
� 
docu#& �#'#'  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#% �#(#(  g K L 4 6 A R h S e d
� kfrmID  j #)#) #*�#+�#*  ��#,�
� 
docu#, �#-#-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#+ �#.#.  m n 8 U _ x F 9 r Q 7
� kfrmID  k #/#/ #0� #1��#0  ���#2��
�� 
docu#2 �#3#3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac#1 �#4#4  e 8 T m u G Z n 9 q R
�� kfrmID  l #5#5 #6��#7��#6  ���#8��
�� 
docu#8 �#9#9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#7 �#:#:  i 1 H 2 G g S m S Z W
�� kfrmID  m #;#; #<��#=��#<  ���#>��
�� 
docu#> �#?#?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#= �#@#@  d v 9 2 s v H E T o Y
�� kfrmID  n #A#A #B��#C��#B  ���#D��
�� 
docu#D �#E#E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#C �#F#F  k n h 4 z E C 1 v m A
�� kfrmID  o #G#G #H��#I��#H  ���#J��
�� 
docu#J �#K#K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#I �#L#L  d W h C T B P w i x H
�� kfrmID  p #M#M #N��#O��#N  ���#P��
�� 
docu#P �#Q#Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#O �#R#R  o N N 9 H M k 9 A s A
�� kfrmID  q #S#S #T��#U��#T  ���#V��
�� 
docu#V �#W#W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#U �#X#X  l i n y A Y R r 7 b 2
�� kfrmID  r #Y#Y #Z��#[��#Z  ���#\��
�� 
docu#\ �#]#]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#[ �#^#^  n z h r 6 a g i P Z W
�� kfrmID  s #_#_ #`��#a��#`  ���#b��
�� 
docu#b �#c#c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#a �#d#d  g 3 S d g J X c L B P
�� kfrmID  t #e#e #f��#g��#f  ���#h��
�� 
docu#h �#i#i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#g �#j#j  j y - g 3 W 3 b Q Z 4
�� kfrmID  u #k#k #l��#m��#l  ���#n��
�� 
docu#n �#o#o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#m �#p#p  j n i y K 3 9 Z z 3 W
�� kfrmID  v #q#q #r��#s��#r  ���#t��
�� 
docu#t �#u#u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#s �#v#v  p g N E N e Z t q f k
�� kfrmID  w #w#w #x��#y��#x  ���#z��
�� 
docu#z �#{#{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#y �#|#|  a 1 c q l s F B n M b
�� kfrmID  x #}#} #~��#��#~  ���#���
�� 
docu#� �#�#�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac# �#�#�  f 5 z K B x j F H A e
�� kfrmID  y #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#� �#�#�  b u a D 2 h o F I w S
�� kfrmID  z #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac#� �#�#�  m G M O U H f n M 2 C
�� kfrmID  { #�#� #���#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac#� �#�#�  p x G q t 4 d A _ E 4
� kfrmID  | #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  n v j y V Q z y p e 3
� kfrmID  } #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  f x j H N J 0 t 5 N 8
� kfrmID  ~ #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  p x x 9 k O j e R l Z
� kfrmID   #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  j j 5 2 H t - Q j f i
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  f V I I S 3 Q g d c 2
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  j 5 F H m W O v 9 v N
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  o f p U Z q F 1 w Z C
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  f g Y 3 Y - 3 L z X r
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  m K z 4 A f h w i s O
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  a G b S v m u 3 w q X
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  f K 8 4 h v 0 Z a W 0
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  h N Q F O 1 D v H _ b
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  m F A f G y W V J G R
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  d 8 3 G T A P Q O N 2
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac#� �#�#�  f g I L E b 5 o W V I
� kfrmID  � #�#� #��#��#�  ��~#��}
�~ 
docu#� �#�#�  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac#� �#�#�  k a F b e E 6 j M d 6
� kfrmID  � #�#� #��|#��{#�  ��z#��y
�z 
docu#� �#�#�  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac#� �#�#�  o I n y u A d _ a a 9
�{ kfrmID  � #�#� #��x#��w#�  ��v#��u
�v 
docu#� �#�#�  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac#� �$ $   n 9 7 U n H a Z c - A
�w kfrmID  � $$ $�t$�s$  ��r$�q
�r 
docu$ �$$  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac$ �$$  p b m v u e I - f O 8
�s kfrmID  � $$ $�p$	�o$  ��n$
�m
�n 
docu$
 �$$  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac$	 �$$  d k Y 0 b Y W 5 V 1 F
�o kfrmID  � $$ $�l$�k$  ��j$�i
�j 
docu$ �$$  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac$ �$$  f 2 g B M n M z V j I
�k kfrmID  � $$ $�h$�g$  ��f$�e
�f 
docu$ �$$  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac$ �$$  n k L s l V O I m - y
�g kfrmID  � $$ $�d$�c$  ��b$�a
�b 
docu$ �$$  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac$ �$$  e Z p M j l i l C K p
�c kfrmID  � $$ $ �`$!�_$   ��^$"�]
�^ 
docu$" �$#$#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac$! �$$$$  i d 7 l c B B M I H T
�_ kfrmID  � $%$% $&�\$'�[$&  ��Z$(�Y
�Z 
docu$( �$)$)  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac$' �$*$*  e T Q k - T l W A c Z
�[ kfrmID  � $+$+ $,�X$-�W$,  ��V$.�U
�V 
docu$. �$/$/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac$- �$0$0  j 1 A r L G - c l 5 -
�W kfrmID  � $1$1 $2�T$3�S$2  ��R$4�Q
�R 
docu$4 �$5$5  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac$3 �$6$6  d a i c h F m Y x S F
�S kfrmID  � $7$7 $8�P$9�O$8  ��N$:�M
�N 
docu$: �$;$;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac$9 �$<$<  h Y E e U M D _ D p A
�O kfrmID  � $=$= $>�L$?�K$>  ��J$@�I
�J 
docu$@ �$A$A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac$? �$B$B  o 2 Z M y X F l 6 n l
�K kfrmID  � $C$C $D�H$E�G$D  ��F$F�E
�F 
docu$F �$G$G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac$E �$H$H  h G x 4 K i S U v b d
�G kfrmID  � $I$I $J�D$K�C$J  ��B$L�A
�B 
docu$L �$M$M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac$K �$N$N  h g o z v j g N z L t
�C kfrmID  � $O$O $P�@$Q�?$P  ��>$R�=
�> 
docu$R �$S$S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac$Q �$T$T  l G R u 3 w c e b Q t
�? kfrmID  � $U$U $V�<$W�;$V  ��:$X�9
�: 
docu$X �$Y$Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac$W �$Z$Z  g T S V O X z 2 E y v
�; kfrmID  � $[$[ $\�8$]�7$\  ��6$^�5
�6 
docu$^ �$_$_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac$] �$`$`  f K E 7 m 3 P U J Q Z
�7 kfrmID  � $a$a $b�4$c�3$b  ��2$d�1
�2 
docu$d �$e$e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac$c �$f$f  p g e w j J N 5 A r g
�3 kfrmID  � $g$g $h�0$i�/$h  ��.$j�-
�. 
docu$j �$k$k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac$i �$l$l  m i g w _ z i R p 4 R
�/ kfrmID  � $m$m $n�,$o�+$n  ��*$p�)
�* 
docu$p �$q$q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac$o �$r$r  l X S u o G e 9 R 7 p
�+ kfrmID  � $s$s $t�($u�'$t  ��&$v�%
�& 
docu$v �$w$w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac$u �$x$x  e L f X 2 h F S 1 R I
�' kfrmID  � $y$y $z�$${�#$z  ��"$|�!
�" 
docu$| �$}$}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac${ �$~$~  f w - f h P v g A c Q
�# kfrmID  � $$ $�� $��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac$� �$�$�  i n 2 5 s I D 7 D 4 B
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  i S a _ H H n f m Y w
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  f n Y f v v 3 o E T V
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  c M u u 2 _ d V 7 j X
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  a 3 x n n e 1 L Y C e
� kfrmID  � $�$� $��$��$�  ��
$��	
�
 
docu$� �$�$�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac$� �$�$�  m 7 C 5 d z k X Y 7 W
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  k U C U q d L Y r g p
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac$� �$�$�  o b R Y M l j Y r H 5
� kfrmID  � $�$� $�� $���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac$� �$�$�  m s 1 G u W f 6 6 7 O
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  j k 7 G _ F Y _ _ f a
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  n A k c h L W C 6 z B
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  c k s Y v J t u N 3 I
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  j S I i q a 6 g G r e
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  j D 4 Z R q d E H B 2
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  i P Z E O p r b v X 9
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  k U M J u 9 l B n o D
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  o A Q 4 c Y A 7 6 t z
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  h d w B k l J t n - b
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  a t u m 5 R Q o Q 8 O
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  a v w A l 1 f Y g v E
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �$�$�  a L h S c 0 n r 2 P J
�� kfrmID  � $�$� $���$���$�  ���% ��
�� 
docu%  �%%  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac$� �%%  p g v u D t 5 p W - 3
�� kfrmID  � %% %��%��%  ���%��
�� 
docu% �%%  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac% �%%  f w N u l 8 R Z V 2 8
�� kfrmID  � %	%	 %
��%��%
  ���%��
�� 
docu% �%%  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac% �%%  i Z u u b 5 o A - n e
�� kfrmID  � %% %��%�%  ��%�
� 
docu% �%%  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac% �%%  m X F e J I f B B 5 J
� kfrmID  � %% %�%�%  ��%�
� 
docu% �%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac% �%%  i c d Z i O - 0 t E N
� kfrmID  � %% %�%�%  ��%�
� 
docu% �%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac% �% %   p G n e l K V f c N T
� kfrmID  � %!%! %"�%#�%"  ��%$�
� 
docu%$ �%%%%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%# �%&%&  n h o 3 9 Z e c 3 Q -
� kfrmID  � %'%' %(�%)�%(  ��%*�
� 
docu%* �%+%+  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%) �%,%,  a o W 6 f w D N m c O
� kfrmID  � %-%- %.�%/�%.  ��%0�
� 
docu%0 �%1%1  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%/ �%2%2  g x x F P q j g V 2 V
� kfrmID  � %3%3 %4�%5�%4  ��%6�
� 
docu%6 �%7%7  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%5 �%8%8  a q Z u c s s E T M g
� kfrmID  � %9%9 %:�%;�%:  ��%<�
� 
docu%< �%=%=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%; �%>%>  k G 3 R A f x w R - Y
� kfrmID  � %?%? %@�%A�%@  ��%B�
� 
docu%B �%C%C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%A �%D%D  m i 2 x K N 9 r 4 F 8
� kfrmID  � %E%E %F�%G�%F  ��%H�
� 
docu%H �%I%I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%G �%J%J  j - y t F Y U u y f _
� kfrmID  � %K%K %L�%M�%L  ��%N�
� 
docu%N �%O%O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%M �%P%P  n - e a 2 u p 0 z S T
� kfrmID  � %Q%Q %R�%S�%R  ��%T�
� 
docu%T �%U%U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%S �%V%V  e r E a t Z f Z g O T
� kfrmID  � %W%W %X�%Y�%X  ��%Z�
� 
docu%Z �%[%[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%Y �%\%\  n d 0 2 P K P U A M S
� kfrmID  � %]%] %^�%_�%^  ��%`�
� 
docu%` �%a%a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%_ �%b%b  e 4 b f F A x D s X t
� kfrmID  � %c%c %d�%e�%d  ��%f�
� 
docu%f �%g%g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%e �%h%h  e 5 g 2 A M b D I X b
� kfrmID  � %i%i %j�%k�%j  ��%l�
� 
docu%l �%m%m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac%k �%n%n  n z C J R V i H K o v
� kfrmID  � %o%o %p�%q�%p  ��~%r�}
�~ 
docu%r �%s%s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac%q �%t%t  i o p t V p C o V i j
� kfrmID  � %u%u %v�|%w�{%v  ��z%x�y
�z 
docu%x �%y%y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac%w �%z%z  c 9 j 5 i Z 5 g C s C
�{ kfrmID  � %{%{ %|�x%}�w%|  ��v%~�u
�v 
docu%~ �%%  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac%} �%�%�  k s h i H - v M G 3 y
�w kfrmID  � %�%� %��t%��s%�  ��r%��q
�r 
docu%� �%�%�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac%� �%�%�  b - u w B O G 2 j B o
�s kfrmID  � %�%� %��p%��o%�  ��n%��m
�n 
docu%� �%�%�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac%� �%�%�  f k z 4 F c M A l x l
�o kfrmID  � %�%� %��l%��k%�  ��j%��i
�j 
docu%� �%�%�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac%� �%�%�  j m 8 u O _ 4 _ F K b
�k kfrmID  � %�%� %��h%��g%�  ��f%��e
�f 
docu%� �%�%�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac%� �%�%�  d 9 x z f L T U F O 8
�g kfrmID  � %�%� %��d%��c%�  ��b%��a
�b 
docu%� �%�%�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac%� �%�%�  m v g O h w A y 5 4 G
�c kfrmID  � %�%� %��`%��_%�  ��^%��]
�^ 
docu%� �%�%�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac%� �%�%�  g C t t X 5 y I Y 2 P
�_ kfrmID  � %�%� %��\%��[%�  ��Z%��Y
�Z 
docu%� �%�%�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac%� �%�%�  m h p c T P 5 C - u I
�[ kfrmID  � %�%� %��X%��W%�  ��V%��U
�V 
docu%� �%�%�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac%� �%�%�  a U r o t t E f m v I
�W kfrmID  � %�%� %��T%��S%�  ��R%��Q
�R 
docu%� �%�%�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac%� �%�%�  g c - _ 5 i o W B i V
�S kfrmID  � %�%� %��P%��O%�  ��N%��M
�N 
docu%� �%�%�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac%� �%�%�  m C W 5 f R 9 r k 5 D
�O kfrmID  � %�%� %��L%��K%�  ��J%��I
�J 
docu%� �%�%�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac%� �%�%�  n f M D O a y s N q N
�K kfrmID  � %�%� %��H%��G%�  ��F%��E
�F 
docu%� �%�%�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac%� �%�%�  a n r b v 1 2 8 Y W 8
�G kfrmID  � %�%� %��D%��C%�  ��B%��A
�B 
docu%� �%�%�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac%� �%�%�  l c 0 5 O - 7 L 3 Y t
�C kfrmID  � %�%� %��@%��?%�  ��>%��=
�> 
docu%� �%�%�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac%� �%�%�  n 4 i n w c 8 a Y D I
�? kfrmID  � %�%� %��<%��;%�  ��:%��9
�: 
docu%� �%�%�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac%� �%�%�  e m m W E v g 6 x n l
�; kfrmID  � %�%� %��8%��7%�  ��6%��5
�6 
docu%� �%�%�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac%� �%�%�  e 6 Q 0 Y B 3 b g l 1
�7 kfrmID  � %�%� %��4%��3%�  ��2%��1
�2 
docu%� �%�%�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac%� �%�%�  j Z d W l P 7 Q P S q
�3 kfrmID  � %�%� %��0%��/%�  ��.%��-
�. 
docu%� �%�%�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac%� �%�%�  p V l 5 R J P f K t M
�/ kfrmID  � %�%� %��,%��+%�  ��*%��)
�* 
docu%� �%�%�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac%� �%�%�  e E s Q U z 2 e A 5 R
�+ kfrmID  � %�%� %��(%��'%�  ��&%��%
�& 
docu%� �%�%�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac%� �%�%�  i M W o e p a d M j m
�' kfrmID  � %�%� %��$%��#%�  ��"%��!
�" 
docu%� �%�%�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac%� �%�%�  i O f d 4 Y a K S l m
�# kfrmID  � %�%� & � &�&   ��&�
� 
docu& �&&  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac& �&&  l o M m o q 9 L Y q V
� kfrmID  � && &�&�&  ��&�
� 
docu& �&	&	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac& �&
&
  d 3 S s u E P X S s 1
� kfrmID  � && &�&�&  ��&�
� 
docu& �&&  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac& �&&  f j U b h 2 b Q m 7 W
� kfrmID  � && &�&�&  ��&�
� 
docu& �&&  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac& �&&  n g q 4 o _ b 9 t s q
� kfrmID  � && &�&�&  ��&�
� 
docu& �&&  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac& �&&  l X D 5 4 p 5 M v U z
� kfrmID  � && &�&�&  ��
& �	
�
 
docu&  �&!&!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac& �&"&"  n r r J q N _ 1 Q l r
� kfrmID  � &#&# &$�&%�&$  ��&&�
� 
docu&& �&'&'  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&% �&(&(  m j b 4 r H V i T g _
� kfrmID  � &)&) &*�&+�&*  ��&,�
� 
docu&, �&-&-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&+ �&.&.  o c d 9 r W w G f X b
� kfrmID  � &/&/ &0� &1��&0  ���&2��
�� 
docu&2 �&3&3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac&1 �&4&4  f X 4 7 F t _ C _ 4 T
�� kfrmID  � &5&5 &6��&7��&6  ���&8��
�� 
docu&8 �&9&9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&7 �&:&:  h j X c x E i w o X P
�� kfrmID  � &;&; &<��&=��&<  ���&>��
�� 
docu&> �&?&?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&= �&@&@  i E q X h H P C T b i
�� kfrmID  � &A&A &B��&C��&B  ���&D��
�� 
docu&D �&E&E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&C �&F&F  f k v p t J K u 1 B s
�� kfrmID  � &G&G &H��&I��&H  ���&J��
�� 
docu&J �&K&K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&I �&L&L  m 9 5 o 0 F Y X Y E 6
�� kfrmID  � &M&M &N��&O��&N  ���&P��
�� 
docu&P �&Q&Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&O �&R&R  e K W N 4 E k x J j D
�� kfrmID  � &S&S &T��&U��&T  ���&V��
�� 
docu&V �&W&W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&U �&X&X  j c u p V b u s b F T
�� kfrmID  � &Y&Y &Z��&[��&Z  ���&\��
�� 
docu&\ �&]&]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&[ �&^&^  i 4 1 N T E 6 t u W Y
�� kfrmID  � &_&_ &`��&a��&`  ���&b��
�� 
docu&b �&c&c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&a �&d&d  c E X N Y a g O s G 3
�� kfrmID  � &e&e &f��&g��&f  ���&h��
�� 
docu&h �&i&i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&g �&j&j  m N b Q H j V j 0 b m
�� kfrmID  � &k&k &l��&m��&l  ���&n��
�� 
docu&n �&o&o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&m �&p&p  c K V G M o f 5 f L O
�� kfrmID  � &q&q &r��&s��&r  ���&t��
�� 
docu&t �&u&u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&s �&v&v  k M e S P o N M 5 q P
�� kfrmID  � &w&w &x��&y��&x  ���&z��
�� 
docu&z �&{&{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&y �&|&|  b h b B g 5 W p k - p
�� kfrmID  � &}&} &~��&��&~  ���&���
�� 
docu&� �&�&�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac& �&�&�  k C Z B k d A v J u Q
�� kfrmID  � &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&� �&�&�  j s Z I w F Y f B x o
�� kfrmID  � &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac&� �&�&�  b 7 z E I 1 d J 5 C 9
�� kfrmID  � &�&� &���&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac&� �&�&�  l 7 0 N h m v o K k N
� kfrmID  � &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  j n M Q 5 I d L t D s
� kfrmID  � &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  f h Y z _ g i S L J w
� kfrmID  � &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  b y J Z M y 8 v I n q
� kfrmID  � &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  d J A v H D G m w 8 p
� kfrmID    &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  c l k W n r k u q A 5
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  m r 7 D 1 0 q H 7 _ W
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  d G 1 p K P b s s y m
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  g j g q L 6 X 7 s y a
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  e z R d h u 3 4 d y d
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  g m Q r N A T F D j v
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  m L T j 6 U 3 5 f _ Y
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  m e D Y C n z Q F 8 s
� kfrmID   &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  b E C i h u y 8 L Y 2
� kfrmID  	 &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  h k s I M d P 1 q M h
� kfrmID  
 &�&� &��&��&�  ��&��
� 
docu&� �&�&�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac&� �&�&�  g - W I n a y L 1 T _
� kfrmID   &�&� &��&��&�  ��~&��}
�~ 
docu&� �&�&�  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac&� �&�&�  m m i _ C - C 4 o u I
� kfrmID   &�&� &��|&��{&�  ��z&��y
�z 
docu&� �&�&�  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac&� �&�&�  g 7 6 V F W 5 _ c F B
�{ kfrmID   &�&� &��x&��w&�  ��v&��u
�v 
docu&� �&�&�  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac&� �' '   c c v s S v V z G y 6
�w kfrmID   '' '�t'�s'  ��r'�q
�r 
docu' �''  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac' �''  a Q y Q p E f D U v Y
�s kfrmID   '' '�p'	�o'  ��n'
�m
�n 
docu'
 �''  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac'	 �''  e 7 U w J 9 y 4 3 w j
�o kfrmID   '' '�l'�k'  ��j'�i
�j 
docu' �''  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac' �''  g 6 j 2 s L i C C a M
�k kfrmID   '' '�h'�g'  ��f'�e
�f 
docu' �''  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac' �''  a Y z W f B G j m _ Z
�g kfrmID   '' '�d'�c'  ��b'�a
�b 
docu' �''  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac' �''  m W 0 K Z _ 0 x A l t
�c kfrmID   '' ' �`'!�_'   ��^'"�]
�^ 
docu'" �'#'#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac'! �'$'$  k B p 5 C u h p x l 6
�_ kfrmID   '%'% '&�\''�['&  ��Z'(�Y
�Z 
docu'( �')')  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac'' �'*'*  m H L N d k 1 O a p c
�[ kfrmID   '+'+ ',�X'-�W',  ��V'.�U
�V 
docu'. �'/'/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac'- �'0'0  p S K o Q j F P P B u
�W kfrmID   '1'1 '2�T'3�S'2  ��R'4�Q
�R 
docu'4 �'5'5  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac'3 �'6'6  b s Z c O u X J I c s
�S kfrmID   '7'7 '8�P'9�O'8  ��N':�M
�N 
docu': �';';  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac'9 �'<'<  c w W Q L n i 3 o - T
�O kfrmID   '='= '>�L'?�K'>  ��J'@�I
�J 
docu'@ �'A'A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac'? �'B'B  j P 0 z 7 5 m c _ G 1
�K kfrmID   'C'C 'D�H'E�G'D  ��F'F�E
�F 
docu'F �'G'G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac'E �'H'H  m Y U 1 M i 7 F Q S E
�G kfrmID   'I'I 'J�D'K�C'J  ��B'L�A
�B 
docu'L �'M'M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac'K �'N'N  b 4 r 3 p 0 K B n v i
�C kfrmID   'O'O 'P�@'Q�?'P  ��>'R�=
�> 
docu'R �'S'S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac'Q �'T'T  g _ d F Z q h f _ T C
�? kfrmID   'U'U 'V�<'W�;'V  ��:'X�9
�: 
docu'X �'Y'Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac'W �'Z'Z  k Y I M l A H u a i t
�; kfrmID   '['[ '\�8']�7'\  ��6'^�5
�6 
docu'^ �'_'_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac'] �'`'`  k W 0 h l 5 A K F H I
�7 kfrmID   'a'a 'b�4'c�3'b  ��2'd�1
�2 
docu'd �'e'e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac'c �'f'f  n P Y J 3 D I - e 0 Q
�3 kfrmID   'g'g 'h�0'i�/'h  ��.'j�-
�. 
docu'j �'k'k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac'i �'l'l  k C d r - d s K e 6 I
�/ kfrmID    'm'm 'n�,'o�+'n  ��*'p�)
�* 
docu'p �'q'q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac'o �'r'r  p Q Z F O _ l C u f n
�+ kfrmID  ! 's's 't�('u�''t  ��&'v�%
�& 
docu'v �'w'w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac'u �'x'x  g N j p j S c I n Y M
�' kfrmID  " 'y'y 'z�$'{�#'z  ��"'|�!
�" 
docu'| �'}'}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac'{ �'~'~  m X L i B w B R X 8 3
�# kfrmID  # '' '�� '��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac'� �'�'�  k s H o B Z W a e C Y
� kfrmID  $ '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  p m h - H 2 E z I W D
� kfrmID  % '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  g D D u 0 x 1 Y 5 4 j
� kfrmID  & '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  n x T A b 6 r x L A x
� kfrmID  ' '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  a A O 7 5 D 4 x J U Y
� kfrmID  ( '�'� '��'��'�  ��
'��	
�
 
docu'� �'�'�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac'� �'�'�  l I U S 9 V l t 6 q 9
� kfrmID  ) '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  a C 3 Z f O V o 8 2 A
� kfrmID  * '�'� '��'��'�  ��'��
� 
docu'� �'�'�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac'� �'�'�  b X - R _ 9 x g N h w
� kfrmID  + '�'� '�� '���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac'� �'�'�  f I b G X l R Z - 3 1
�� kfrmID  , '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  n s z P w G p L J e K
�� kfrmID  - '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  b U y z N D 9 j s x q
�� kfrmID  . '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  e j d _ K e f c 3 P q
�� kfrmID  / '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  g 9 s N 7 F l j T 0 O
�� kfrmID  0 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  o 5 t u S 0 q 5 0 w B
�� kfrmID  1 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  e X p M I v T F J - 8
�� kfrmID  2 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  i h d l P P O _ g g x
�� kfrmID  3 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  m k U 7 n X R b o z o
�� kfrmID  4 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  g z z 6 K z m J c 7 J
�� kfrmID  5 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  g B X G 1 j Q 3 F f R
�� kfrmID  6 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  b V M i 4 C v 0 g D A
�� kfrmID  7 '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �'�'�  k O c _ X p E T m 2 o
�� kfrmID  8 '�'� '���'���'�  ���( ��
�� 
docu(  �((  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac'� �((  o K O 7 5 T k m Y S 5
�� kfrmID  9 (( (��(��(  ���(��
�� 
docu( �((  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac( �((  j z L d q S T H E A G
�� kfrmID  : (	(	 (
��(��(
  ���(��
�� 
docu( �((  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac( �((  p o F S X g 4 f P v S
�� kfrmID  ; (( (��(�(  ��(�
� 
docu( �((  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac( �((  b G z u e p 7 u k P y
� kfrmID  < (( (�(�(  ��(�
� 
docu( �((  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac( �((  e G m P n a y 5 P B E
� kfrmID  = (( (�(�(  ��(�
� 
docu( �((  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac( �( (   m p g Y 7 c m p J G A
� kfrmID  > (!(! ("�(#�("  ��($�
� 
docu($ �(%(%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(# �(&(&  e S z o G o C f n V r
� kfrmID  ? ('(' ((�()�((  ��(*�
� 
docu(* �(+(+  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac() �(,(,  a a h b Z x Y 3 I b 1
� kfrmID  @ (-(- (.�(/�(.  ��(0�
� 
docu(0 �(1(1  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(/ �(2(2  l H T d U v O V y 1 j
� kfrmID  A (3(3 (4�(5�(4  ��(6�
� 
docu(6 �(7(7  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(5 �(8(8  o L U k S - Q u g 7 L
� kfrmID  B (9(9 (:�(;�(:  ��(<�
� 
docu(< �(=(=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(; �(>(>  k p l X 0 6 u p 5 _ C
� kfrmID  C (?(? (@�(A�(@  ��(B�
� 
docu(B �(C(C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(A �(D(D  k o 0 m 9 Y Q - e s J
� kfrmID  D (E(E (F�(G�(F  ��(H�
� 
docu(H �(I(I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(G �(J(J  a y x e V U m o D P J
� kfrmID  E (K(K (L�(M�(L  ��(N�
� 
docu(N �(O(O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(M �(P(P  a c g 3 8 o N B k K I
� kfrmID  F (Q(Q (R�(S�(R  ��(T�
� 
docu(T �(U(U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(S �(V(V  i d 9 P U w b p b v U
� kfrmID  G (W(W (X�(Y�(X  ��(Z�
� 
docu(Z �([([  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(Y �(\(\  l d j q W C J N c q j
� kfrmID  H (](] (^�(_�(^  ��(`�
� 
docu(` �(a(a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(_ �(b(b  b X X j 9 4 v Z a A N
� kfrmID  I (c(c (d�(e�(d  ��(f�
� 
docu(f �(g(g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(e �(h(h  i U m 1 O 8 7 T r b Q
� kfrmID  J (i(i (j�(k�(j  ��(l�
� 
docu(l �(m(m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac(k �(n(n  c e a 0 Z I A m V V M
� kfrmID  K (o(o (p�(q�(p  ��~(r�}
�~ 
docu(r �(s(s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac(q �(t(t  h 3 q - S 3 x b p 2 z
� kfrmID  L (u(u (v�|(w�{(v  ��z(x�y
�z 
docu(x �(y(y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac(w �(z(z  l Y t W Z x O Y Q m p
�{ kfrmID  M ({({ (|�x(}�w(|  ��v(~�u
�v 
docu(~ �((  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac(} �(�(�  e E 3 i H O _ Y q b L
�w kfrmID  N (�(� (��t(��s(�  ��r(��q
�r 
docu(� �(�(�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac(� �(�(�  k B 9 s 8 B p P u S G
�s kfrmID  O (�(� (��p(��o(�  ��n(��m
�n 
docu(� �(�(�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac(� �(�(�  n J 3 p J 2 m r 2 J o
�o kfrmID  P (�(� (��l(��k(�  ��j(��i
�j 
docu(� �(�(�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac(� �(�(�  j G d d r v Y l i Z i
�k kfrmID  Q (�(� (��h(��g(�  ��f(��e
�f 
docu(� �(�(�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac(� �(�(�  d y e r o T j - y F 8
�g kfrmID  R (�(� (��d(��c(�  ��b(��a
�b 
docu(� �(�(�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac(� �(�(�  b K 8 n h D J t S q V
�c kfrmID  S (�(� (��`(��_(�  ��^(��]
�^ 
docu(� �(�(�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac(� �(�(�  i 3 t N X w Z P I G i
�_ kfrmID  T (�(� (��\(��[(�  ��Z(��Y
�Z 
docu(� �(�(�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac(� �(�(�  n r R g B 2 u s G C k
�[ kfrmID  U (�(� (��X(��W(�  ��V(��U
�V 
docu(� �(�(�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac(� �(�(�  g q k A 2 Y o _ Y 2 s
�W kfrmID  V (�(� (��T(��S(�  ��R(��Q
�R 
docu(� �(�(�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac(� �(�(�  g K k U n q 0 0 w Y 7
�S kfrmID  W (�(� (��P(��O(�  ��N(��M
�N 
docu(� �(�(�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac(� �(�(�  g f c o b j j g t I E
�O kfrmID  X (�(� (��L(��K(�  ��J(��I
�J 
docu(� �(�(�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac(� �(�(�  h N d C P B I L w P z
�K kfrmID  Y (�(� (��H(��G(�  ��F(��E
�F 
docu(� �(�(�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac(� �(�(�  e B D D i a 0 g n j 4
�G kfrmID  Z (�(� (��D(��C(�  ��B(��A
�B 
docu(� �(�(�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac(� �(�(�  m E w w x _ r W B N z
�C kfrmID  [ (�(� (��@(��?(�  ��>(��=
�> 
docu(� �(�(�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac(� �(�(�  d V A v k d t a X 5 2
�? kfrmID  \ (�(� (��<(��;(�  ��:(��9
�: 
docu(� �(�(�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac(� �(�(�  l g 9 n o n N t u r -
�; kfrmID  ] (�(� (��8(��7(�  ��6(��5
�6 
docu(� �(�(�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac(� �(�(�  h 3 i R g d Q 4 L q o
�7 kfrmID  ^ (�(� (��4(��3(�  ��2(��1
�2 
docu(� �(�(�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac(� �(�(�  g t z d x X - G j R L
�3 kfrmID  _ (�(� (��0(��/(�  ��.(��-
�. 
docu(� �(�(�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac(� �(�(�  g 6 A o L A n Q Z 6 1
�/ kfrmID  ` (�(� (��,(��+(�  ��*(��)
�* 
docu(� �(�(�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac(� �(�(�  k k o Y _ O H h w a k
�+ kfrmID  a (�(� (��((��'(�  ��&(��%
�& 
docu(� �(�(�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac(� �(�(�  l O b O c c N N 5 p W
�' kfrmID  b (�(� (��$(��#(�  ��"(��!
�" 
docu(� �(�(�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac(� �(�(�  b W d s k c t K L k N
�# kfrmID  c (�(� ) � )�)   ��)�
� 
docu) �))  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac) �))  e v 0 i I a A n c Q s
� kfrmID  d )) )�)�)  ��)�
� 
docu) �)	)	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �)
)
  b P y F 0 y u l w 1 U
� kfrmID  e )) )�)�)  ��)�
� 
docu) �))  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �))  c e W T q 9 Z e G V q
� kfrmID  f )) )�)�)  ��)�
� 
docu) �))  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �))  b 7 u K g 5 h - i 4 T
� kfrmID  g )) )�)�)  ��)�
� 
docu) �))  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac) �))  n m k 6 m N m A 8 z 6
� kfrmID  h )) )�)�)  ��
) �	
�
 
docu)  �)!)!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac) �)")"  p T s _ x I y r C K t
� kfrmID  i )#)# )$�)%�)$  ��)&�
� 
docu)& �)')'  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)% �)()(  i q f r H h I H 4 R C
� kfrmID  j )))) )*�)+�)*  ��),�
� 
docu), �)-)-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)+ �).).  p o L b P p x 5 9 1 M
� kfrmID  k )/)/ )0� )1��)0  ���)2��
�� 
docu)2 �)3)3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac)1 �)4)4  c C N 6 3 e M M l b 5
�� kfrmID  l )5)5 )6��)7��)6  ���)8��
�� 
docu)8 �)9)9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)7 �):):  e c Q - M r H X T r d
�� kfrmID  m );); )<��)=��)<  ���)>��
�� 
docu)> �)?)?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)= �)@)@  o y B 9 a S F y 7 T W
�� kfrmID  n )A)A )B��)C��)B  ���)D��
�� 
docu)D �)E)E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)C �)F)F  c R E e z H h k X X n
�� kfrmID  o )G)G )H��)I��)H  ���)J��
�� 
docu)J �)K)K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)I �)L)L  f x 0 - U v J 4 p w S
�� kfrmID  p )M)M )N��)O��)N  ���)P��
�� 
docu)P �)Q)Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)O �)R)R  n A L 0 K a 9 g S 7 W
�� kfrmID  q )S)S )T��)U��)T  ���)V��
�� 
docu)V �)W)W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)U �)X)X  f Q - X R - h b M X V
�� kfrmID  r )Y)Y )Z��)[��)Z  ���)\��
�� 
docu)\ �)])]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)[ �)^)^  m e s D V P h l 5 W g
�� kfrmID  s )_)_ )`��)a��)`  ���)b��
�� 
docu)b �)c)c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)a �)d)d  p L f i y N t y Y D H
�� kfrmID  t )e)e )f��)g��)f  ���)h��
�� 
docu)h �)i)i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)g �)j)j  i w p L f t O S s S n
�� kfrmID  u )k)k )l��)m��)l  ���)n��
�� 
docu)n �)o)o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)m �)p)p  n 9 z Z A k 6 H k 6 Q
�� kfrmID  v )q)q )r��)s��)r  ���)t��
�� 
docu)t �)u)u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)s �)v)v  c B 8 G b x 9 n G t n
�� kfrmID  w )w)w )x��)y��)x  ���)z��
�� 
docu)z �){){  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)y �)|)|  o K k a 0 7 s D Q L p
�� kfrmID  x )})} )~��)��)~  ���)���
�� 
docu)� �)�)�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac) �)�)�  e F G a C 9 9 - T g x
�� kfrmID  y )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)� �)�)�  j X c E 6 z t 8 6 q z
�� kfrmID  z )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac)� �)�)�  b T d D o j c G q I J
�� kfrmID  { )�)� )���)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac)� �)�)�  g c o L k E B 0 l P 8
� kfrmID  | )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  h 5 o D t i - n L D h
� kfrmID  } )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  h Y R _ v k u l d f m
� kfrmID  ~ )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  i 1 E I r B K 5 e R r
� kfrmID   )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  i 3 1 x D p U Y D S q
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  m 9 n - T B l J 6 x g
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  l b K t T n y N B j h
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  l R P - V z g S v Q c
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  f 7 D V 4 R 3 a m h C
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  n k s A h e M z Q r a
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  k 5 Z c r X R A 6 8 F
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  a R N 5 _ G 3 w m g 7
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  a z S 5 _ x Z C U m w
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  h d X Y t e l s I w F
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  o B N T 7 d k W A G b
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac)� �)�)�  e 0 8 L C n l E P l H
� kfrmID  � )�)� )��)��)�  ��~)��}
�~ 
docu)� �)�)�  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac)� �)�)�  n w M V 5 s 9 a O s L
� kfrmID  � )�)� )��|)��{)�  ��z)��y
�z 
docu)� �)�)�  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac)� �)�)�  m T Z 1 3 E n u i 1 c
�{ kfrmID  � )�)� )��x)��w)�  ��v)��u
�v 
docu)� �)�)�  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac)� �* *   n F 7 i o J O U D e b
�w kfrmID  � ** *�t*�s*  ��r*�q
�r 
docu* �**  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac* �**  h m D Q F e C b d 2 K
�s kfrmID  � ** *�p*	�o*  ��n*
�m
�n 
docu*
 �**  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac*	 �**  p Y x P L A v K M b D
�o kfrmID  � ** *�l*�k*  ��j*�i
�j 
docu* �**  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac* �**  d 3 Q y d Y 7 P I F S
�k kfrmID  � ** *�h*�g*  ��f*�e
�f 
docu* �**  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac* �**  e I H O D e T l V T J
�g kfrmID  � ** *�d*�c*  ��b*�a
�b 
docu* �**  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac* �**  d W 8 5 O E 9 j Y S D
�c kfrmID  � ** * �`*!�_*   ��^*"�]
�^ 
docu*" �*#*#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac*! �*$*$  j Y M i c h M T 4 w i
�_ kfrmID  � *%*% *&�\*'�[*&  ��Z*(�Y
�Z 
docu*( �*)*)  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac*' �****  j N T B 8 U C 8 C 2 b
�[ kfrmID  � *+*+ *,�X*-�W*,  ��V*.�U
�V 
docu*. �*/*/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac*- �*0*0  d e R T a y 4 b s y T
�W kfrmID  � *1*1 *2�T*3�S*2  ��R*4�Q
�R 
docu*4 �*5*5  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac*3 �*6*6  a 3 w d v J J 6 5 V e
�S kfrmID  � *7*7 *8�P*9�O*8  ��N*:�M
�N 
docu*: �*;*;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac*9 �*<*<  e F T U E G C P p l Z
�O kfrmID  � *=*= *>�L*?�K*>  ��J*@�I
�J 
docu*@ �*A*A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac*? �*B*B  g N T S L P u M K l f
�K kfrmID  � *C*C *D�H*E�G*D  ��F*F�E
�F 
docu*F �*G*G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac*E �*H*H  p j B u 1 u h x M c g
�G kfrmID  � *I*I *J�D*K�C*J  ��B*L�A
�B 
docu*L �*M*M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac*K �*N*N  a Q J n 0 k A L U 3 L
�C kfrmID  � *O*O *P�@*Q�?*P  ��>*R�=
�> 
docu*R �*S*S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac*Q �*T*T  j y 7 Q l k n D I Q 5
�? kfrmID  � *U*U *V�<*W�;*V  ��:*X�9
�: 
docu*X �*Y*Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac*W �*Z*Z  l I X J y V w p A O R
�; kfrmID  � *[*[ *\�8*]�7*\  ��6*^�5
�6 
docu*^ �*_*_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac*] �*`*`  c M - c 5 o 7 1 A S x
�7 kfrmID  � *a*a *b�4*c�3*b  ��2*d�1
�2 
docu*d �*e*e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac*c �*f*f  o I Q C j u n 4 K k a
�3 kfrmID  � *g*g *h�0*i�/*h  ��.*j�-
�. 
docu*j �*k*k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac*i �*l*l  j v S Q y e t 5 E 5 _
�/ kfrmID  � *m*m *n�,*o�+*n  ��**p�)
�* 
docu*p �*q*q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac*o �*r*r  o E o H l V f t z 1 7
�+ kfrmID  � *s*s *t�(*u�'*t  ��&*v�%
�& 
docu*v �*w*w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac*u �*x*x  g k v v 6 J h b a k C
�' kfrmID  � *y*y *z�$*{�#*z  ��"*|�!
�" 
docu*| �*}*}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac*{ �*~*~  o f T q K J l E y F t
�# kfrmID  � ** *�� *��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac*� �*�*�  n z Q L W Q C v K v l
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  i k U O C z N H T o Y
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  p 5 x G z w G v s q V
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  g d N K D F 9 T 0 S X
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  h p q d I 9 m 1 S T 1
� kfrmID  � *�*� *��*��*�  ��
*��	
�
 
docu*� �*�*�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac*� �*�*�  p 6 O R z 5 a h c E y
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  g j j P h 4 z A y 0 l
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac*� �*�*�  j j g C 2 Z 0 a f u j
� kfrmID  � *�*� *�� *���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac*� �*�*�  l d 1 _ 3 - w Q q G 3
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  c Q 6 1 C J M 3 r j J
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  c A u a 6 Z 7 z l g -
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  l J J P l j R Y k y W
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  k 7 x G 9 Z N C 9 8 k
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  b j b a A O s F a P T
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  d T y 5 t l U 0 g U y
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  g u V T r M u 4 U I p
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  j a U O g A 6 - M U P
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  o - n j U o u J D 9 s
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  a Z Y P f s _ d 6 j f
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  j d v e q R H 8 G l j
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �*�*�  o m b 7 F k 1 e H M a
�� kfrmID  � *�*� *���*���*�  ���+ ��
�� 
docu+  �++  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac*� �++  g a 2 b L M 1 S r C a
�� kfrmID  � ++ +��+��+  ���+��
�� 
docu+ �++  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac+ �++  h A 7 8 c X 6 o h z C
�� kfrmID  � +	+	 +
��+��+
  ���+��
�� 
docu+ �++  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac+ �++  b H U T V k h i o E H
�� kfrmID  � ++ +��+�+  ��+�
� 
docu+ �++  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac+ �++  o 0 l j 3 z s T V S X
� kfrmID  � ++ +�+�+  ��+�
� 
docu+ �++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+ �++  e e P J 4 r n Y R B L
� kfrmID  � ++ +�+�+  ��+�
� 
docu+ �++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+ �+ +   e U t z 4 d s G s E j
� kfrmID  � +!+! +"�+#�+"  ��+$�
� 
docu+$ �+%+%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+# �+&+&  a T B O 1 d Y 2 G y K
� kfrmID  � +'+' +(�+)�+(  ��+*�
� 
docu+* �++++  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+) �+,+,  d Z M e k D 1 i M a f
� kfrmID  � +-+- +.�+/�+.  ��+0�
� 
docu+0 �+1+1  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+/ �+2+2  h Q J k d 0 q y n e 7
� kfrmID  � +3+3 +4�+5�+4  ��+6�
� 
docu+6 �+7+7  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+5 �+8+8  j 9 i Y 4 q E p Z 6 1
� kfrmID  � +9+9 +:�+;�+:  ��+<�
� 
docu+< �+=+=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+; �+>+>  m d O a t M 8 o A I A
� kfrmID  � +?+? +@�+A�+@  ��+B�
� 
docu+B �+C+C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+A �+D+D  h X i A L V b v i d 2
� kfrmID  � +E+E +F�+G�+F  ��+H�
� 
docu+H �+I+I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+G �+J+J  f y u a S 0 w u A l z
� kfrmID  � +K+K +L�+M�+L  ��+N�
� 
docu+N �+O+O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+M �+P+P  l _ a X 5 o 3 k W k v
� kfrmID  � +Q+Q +R�+S�+R  ��+T�
� 
docu+T �+U+U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+S �+V+V  m 5 h B d g P Y s b i
� kfrmID  � +W+W +X�+Y�+X  ��+Z�
� 
docu+Z �+[+[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+Y �+\+\  e K 2 N 7 C R 4 3 Y c
� kfrmID  � +]+] +^�+_�+^  ��+`�
� 
docu+` �+a+a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+_ �+b+b  f F F g Y i J t - e a
� kfrmID  � +c+c +d�+e�+d  ��+f�
� 
docu+f �+g+g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+e �+h+h  a K a F U L 4 m D z T
� kfrmID  � +i+i +j�+k�+j  ��+l�
� 
docu+l �+m+m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac+k �+n+n  c G S x X y 6 d _ x v
� kfrmID  � +o+o +p�+q�+p  ��~+r�}
�~ 
docu+r �+s+s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac+q �+t+t  h T N j v Y L R X H 9
� kfrmID  � +u+u +v�|+w�{+v  ��z+x�y
�z 
docu+x �+y+y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac+w �+z+z  c w x P w z f 8 z A 5
�{ kfrmID  � +{+{ +|�x+}�w+|  ��v+~�u
�v 
docu+~ �++  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac+} �+�+�  e 6 j A f k L 6 k f B
�w kfrmID  � +�+� +��t+��s+�  ��r+��q
�r 
docu+� �+�+�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac+� �+�+�  d 2 Y e 0 7 a 2 w 8 -
�s kfrmID  � +�+� +��p+��o+�  ��n+��m
�n 
docu+� �+�+�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac+� �+�+�  b f c 3 t l Y T I p G
�o kfrmID  � +�+� +��l+��k+�  ��j+��i
�j 
docu+� �+�+�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac+� �+�+�  h v g z Q i i D X k 7
�k kfrmID  � +�+� +��h+��g+�  ��f+��e
�f 
docu+� �+�+�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac+� �+�+�  p Z m B v m S Z v Z q
�g kfrmID  � +�+� +��d+��c+�  ��b+��a
�b 
docu+� �+�+�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac+� �+�+�  d L t T R Y X g c y -
�c kfrmID  � +�+� +��`+��_+�  ��^+��]
�^ 
docu+� �+�+�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac+� �+�+�  j 4 i a N o v J s 4 n
�_ kfrmID  � +�+� +��\+��[+�  ��Z+��Y
�Z 
docu+� �+�+�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac+� �+�+�  b l 0 h r S M Y M a 0
�[ kfrmID  � +�+� +��X+��W+�  ��V+��U
�V 
docu+� �+�+�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac+� �+�+�  b r p e X j n F 7 I x
�W kfrmID  � +�+� +��T+��S+�  ��R+��Q
�R 
docu+� �+�+�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac+� �+�+�  j 2 c l Q D p U 0 m k
�S kfrmID  � +�+� +��P+��O+�  ��N+��M
�N 
docu+� �+�+�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac+� �+�+�  p 6 T w 2 H M p 7 Q q
�O kfrmID  � +�+� +��L+��K+�  ��J+��I
�J 
docu+� �+�+�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac+� �+�+�  o S b X H 6 O V j X _
�K kfrmID  � +�+� +��H+��G+�  ��F+��E
�F 
docu+� �+�+�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac+� �+�+�  d l 0 q 7 4 Q U P Y b
�G kfrmID  � +�+� +��D+��C+�  ��B+��A
�B 
docu+� �+�+�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac+� �+�+�  l l Y G x 8 S 4 Y Z D
�C kfrmID  � +�+� +��@+��?+�  ��>+��=
�> 
docu+� �+�+�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac+� �+�+�  f D v 1 8 U A j a T K
�? kfrmID  � +�+� +��<+��;+�  ��:+��9
�: 
docu+� �+�+�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac+� �+�+�  a D N b Z a Q B q P a
�; kfrmID  � +�+� +��8+��7+�  ��6+��5
�6 
docu+� �+�+�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac+� �+�+�  o p J _ R 3 R _ r Q N
�7 kfrmID  � +�+� +��4+��3+�  ��2+��1
�2 
docu+� �+�+�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac+� �+�+�  b c t p F W g m x C l
�3 kfrmID  � +�+� +��0+��/+�  ��.+��-
�. 
docu+� �+�+�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac+� �+�+�  a g q C _ i l L c M f
�/ kfrmID  � +�+� +��,+��++�  ��*+��)
�* 
docu+� �+�+�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac+� �+�+�  k - h P 7 M 5 - Z A T
�+ kfrmID  � +�+� +��(+��'+�  ��&+��%
�& 
docu+� �+�+�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac+� �+�+�  j y W P y V P A 0 H n
�' kfrmID  � +�+� +��$+��#+�  ��"+��!
�" 
docu+� �+�+�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac+� �+�+�  f O r j 7 - Y U L Y d
�# kfrmID  � +�+� , � ,�,   ��,�
� 
docu, �,,  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac, �,,  m m S f - E I H Q S e
� kfrmID  � ,, ,�,�,  ��,�
� 
docu, �,	,	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac, �,
,
  d W h B G Y R q F w 1
� kfrmID  � ,, ,�,�,  ��,�
� 
docu, �,,  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac, �,,  d p D x t U F f d C U
� kfrmID  � ,, ,�,�,  ��,�
� 
docu, �,,  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac, �,,  g o G T G U 4 d W D Q
� kfrmID  � ,, ,�,�,  ��,�
� 
docu, �,,  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac, �,,  a I k j X A h m 3 a b
� kfrmID  � ,, ,�,�,  ��
, �	
�
 
docu,  �,!,!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac, �,","  c p 6 0 x c W d p - M
� kfrmID  � ,#,# ,$�,%�,$  ��,&�
� 
docu,& �,','  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,% �,(,(  j g m O y l 4 H D Q 7
� kfrmID  � ,),) ,*�,+�,*  ��,,�
� 
docu,, �,-,-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,+ �,.,.  h D o O 3 e o i z 6 b
� kfrmID  � ,/,/ ,0� ,1��,0  ���,2��
�� 
docu,2 �,3,3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac,1 �,4,4  e J x 4 n j X u B Y W
�� kfrmID  � ,5,5 ,6��,7��,6  ���,8��
�� 
docu,8 �,9,9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,7 �,:,:  l P q 5 Y m F B m D W
�� kfrmID  � ,;,; ,<��,=��,<  ���,>��
�� 
docu,> �,?,?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,= �,@,@  i G U c n g 5 C X 2 O
�� kfrmID  � ,A,A ,B��,C��,B  ���,D��
�� 
docu,D �,E,E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,C �,F,F  p 9 V - z X _ e K j 6
�� kfrmID  � ,G,G ,H��,I��,H  ���,J��
�� 
docu,J �,K,K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,I �,L,L  b H v 0 t A K t i h g
�� kfrmID  � ,M,M ,N��,O��,N  ���,P��
�� 
docu,P �,Q,Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,O �,R,R  k 4 e u 9 i y w 6 Y W
�� kfrmID  � ,S,S ,T��,U��,T  ���,V��
�� 
docu,V �,W,W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,U �,X,X  g x z g b 3 Q I d s q
�� kfrmID  � ,Y,Y ,Z��,[��,Z  ���,\��
�� 
docu,\ �,],]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,[ �,^,^  o - N 2 d 5 p c C 3 7
�� kfrmID  � ,_,_ ,`��,a��,`  ���,b��
�� 
docu,b �,c,c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,a �,d,d  h N o X h b 0 A Q g b
�� kfrmID  � ,e,e ,f��,g��,f  ���,h��
�� 
docu,h �,i,i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,g �,j,j  h G i H M u Q x G k 8
�� kfrmID  � ,k,k ,l��,m��,l  ���,n��
�� 
docu,n �,o,o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,m �,p,p  h 2 C Y 9 t G i Z _ T
�� kfrmID  � ,q,q ,r��,s��,r  ���,t��
�� 
docu,t �,u,u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,s �,v,v  f T v e I h 4 n X T u
�� kfrmID  � ,w,w ,x��,y��,x  ���,z��
�� 
docu,z �,{,{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,y �,|,|  l 7 t Z c 3 l r c K 5
�� kfrmID  � ,},} ,~��,��,~  ���,���
�� 
docu,� �,�,�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac, �,�,�  d 7 q g 0 g E o x F W
�� kfrmID  � ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,� �,�,�  i j q j a 0 g O L e j
�� kfrmID  � ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac,� �,�,�  e o x g b 8 n Q b E g
�� kfrmID  � ,�,� ,���,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac,� �,�,�  e 0 w - - 8 l Q c h J
� kfrmID  � ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  m M N A o x A T 0 9 4
� kfrmID  � ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  j R Q c M a c A h 4 G
� kfrmID  � ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  c T v 6 w d b V K 2 k
� kfrmID  � ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  l h I 9 N C w S L g M
� kfrmID    ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  o W l Z T - H Z N Y W
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  n C T Z m t m L 5 0 _
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  i c 6 2 z B f K 6 p E
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  j 8 T y R x 7 k O j x
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  f S x 7 8 o V F c F a
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  g b M Y 1 i x X Z r P
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  l b o A w A y W b 2 M
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  e a v x L z M N 6 5 v
� kfrmID   ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  h b n X H U T _ g 4 y
� kfrmID  	 ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  c m a 3 0 2 Z W A K Y
� kfrmID  
 ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac,� �,�,�  h 7 K r x 5 - I 6 a 3
� kfrmID   ,�,� ,��,��,�  ��~,��}
�~ 
docu,� �,�,�  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac,� �,�,�  a F m M B y Z V c n Z
� kfrmID   ,�,� ,��|,��{,�  ��z,��y
�z 
docu,� �,�,�  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac,� �,�,�  o N X f _ K D e B - t
�{ kfrmID   ,�,� ,��x,��w,�  ��v,��u
�v 
docu,� �,�,�  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac,� �- -   a B b Q S z V E X e _
�w kfrmID   -- -�t-�s-  ��r-�q
�r 
docu- �--  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac- �--  a K A V X F u V a e a
�s kfrmID   -- -�p-	�o-  ��n-
�m
�n 
docu-
 �--  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac-	 �--  c q U n 0 x N u 1 s 5
�o kfrmID   -- -�l-�k-  ��j-�i
�j 
docu- �--  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac- �--  m 9 D Y z - p r n z C
�k kfrmID   -- -�h-�g-  ��f-�e
�f 
docu- �--  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac- �--  n x 4 S m 2 0 W T f M
�g kfrmID   -- -�d-�c-  ��b-�a
�b 
docu- �--  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac- �--  p 6 9 A - D V 0 U q D
�c kfrmID   -- - �`-!�_-   ��^-"�]
�^ 
docu-" �-#-#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac-! �-$-$  l 1 T P K d V v J g I
�_ kfrmID   -%-% -&�\-'�[-&  ��Z-(�Y
�Z 
docu-( �-)-)  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac-' �-*-*  g I B Z _ s e l o A X
�[ kfrmID   -+-+ -,�X--�W-,  ��V-.�U
�V 
docu-. �-/-/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac-- �-0-0  h x b 0 B v l l d i u
�W kfrmID   -1-1 -2�T-3�S-2  ��R-4�Q
�R 
docu-4 �-5-5  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac-3 �-6-6  j u H A d Y N U _ c D
�S kfrmID   -7-7 -8�P-9�O-8  ��N-:�M
�N 
docu-: �-;-;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac-9 �-<-<  e D I T F C C 9 6 b c
�O kfrmID   -=-= ->�L-?�K->  ��J-@�I
�J 
docu-@ �-A-A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac-? �-B-B  e m L b 2 E B I M X u
�K kfrmID   -C-C -D�H-E�G-D  ��F-F�E
�F 
docu-F �-G-G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac-E �-H-H  b q d X h q D X 9 S 3
�G kfrmID   -I-I -J�D-K�C-J  ��B-L�A
�B 
docu-L �-M-M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac-K �-N-N  h I g G M D d 2 7 N R
�C kfrmID   -O-O -P�@-Q�?-P  ��>-R�=
�> 
docu-R �-S-S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac-Q �-T-T  o - Q A 9 h C n K h m
�? kfrmID   -U-U -V�<-W�;-V  ��:-X�9
�: 
docu-X �-Y-Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac-W �-Z-Z  d I e 5 d L e 0 Y e L
�; kfrmID   -[-[ -\�8-]�7-\  ��6-^�5
�6 
docu-^ �-_-_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac-] �-`-`  i Z q r G - u X X q v
�7 kfrmID   -a-a -b�4-c�3-b  ��2-d�1
�2 
docu-d �-e-e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac-c �-f-f  m o I 6 j 3 y 6 7 S 5
�3 kfrmID   -g-g -h�0-i�/-h  ��.-j�-
�. 
docu-j �-k-k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac-i �-l-l  n E V I E k Z 9 V 7 N
�/ kfrmID    -m-m -n�,-o�+-n  ��*-p�)
�* 
docu-p �-q-q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac-o �-r-r  k e J _ k P - J K a U
�+ kfrmID  ! -s-s -t�(-u�'-t  ��&-v�%
�& 
docu-v �-w-w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac-u �-x-x  i l b O 8 9 5 p 3 6 M
�' kfrmID  " -y-y -z�$-{�#-z  ��"-|�!
�" 
docu-| �-}-}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac-{ �-~-~  l L U R Q j Q h v J Z
�# kfrmID  # -- -�� -��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac-� �-�-�  k N 7 x r r M 1 9 a z
� kfrmID  $ -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  d j l y h D _ L s e z
� kfrmID  % -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  h 4 5 R E N E c m x j
� kfrmID  & -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  d u Y - 6 n 9 w h p 8
� kfrmID  ' -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  n o l k 2 Q 9 z 3 z A
� kfrmID  ( -�-� -��-��-�  ��
-��	
�
 
docu-� �-�-�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac-� �-�-�  e 9 Z X m L i N 8 W 5
� kfrmID  ) -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  p a f L O X H R d V L
� kfrmID  * -�-� -��-��-�  ��-��
� 
docu-� �-�-�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac-� �-�-�  k A X G l b Z _ 1 G d
� kfrmID  + -�-� -�� -���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac-� �-�-�  m T t 3 C z P s R K P
�� kfrmID  , -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  c r 1 X l n 9 O f J T
�� kfrmID  - -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  d k x b j Q x 2 p - n
�� kfrmID  . -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  j 5 D a T H S X G W M
�� kfrmID  / -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  k 9 T S b U i m 8 G d
�� kfrmID  0 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  l b T _ s T y g o i v
�� kfrmID  1 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  j c W A 6 b m 6 u 4 p
�� kfrmID  2 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  k y P t E E E e K D V
�� kfrmID  3 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  j a s c o K s P U A y
�� kfrmID  4 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  k z S l y l A U 4 p v
�� kfrmID  5 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  b N f l x o 8 2 Y 4 d
�� kfrmID  6 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  c h u M 5 N i 9 C M _
�� kfrmID  7 -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �-�-�  m q R O J T V R a 7 6
�� kfrmID  8 -�-� -���-���-�  ���. ��
�� 
docu.  �..  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac-� �..  g G 5 q r e b S O 3 h
�� kfrmID  9 .. .��.��.  ���.��
�� 
docu. �..  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac. �..  m y o L 0 y l w o o e
�� kfrmID  : .	.	 .
��.��.
  ���.��
�� 
docu. �..  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac. �..  i o n k k w D N I b 3
�� kfrmID  ; .. .��.�.  ��.�
� 
docu. �..  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac. �..  d q n J U W 4 r _ P I
� kfrmID  < .. .�.�.  ��.�
� 
docu. �..  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac. �..  g Z Y 7 7 9 S 1 3 9 E
� kfrmID  = .. .�.�.  ��.�
� 
docu. �..  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac. �. .   m K 4 d g d a J z R -
� kfrmID  > .!.! ."�.#�."  ��.$�
� 
docu.$ �.%.%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.# �.&.&  n 2 g b a 3 v u P k t
� kfrmID  ? .'.' .(�.)�.(  ��.*�
� 
docu.* �.+.+  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.) �.,.,  p t F 6 p A 0 6 s u y
� kfrmID  @ .-.- ..�./�..  ��.0�
� 
docu.0 �.1.1  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac./ �.2.2  p 3 0 T X a 8 D O C m
� kfrmID  A .3.3 .4�.5�.4  ��.6�
� 
docu.6 �.7.7  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.5 �.8.8  g E X B k S U i o F 4
� kfrmID  B .9.9 .:�.;�.:  ��.<�
� 
docu.< �.=.=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.; �.>.>  i 4 - S o Q A K s U j
� kfrmID  C .?.? .@�.A�.@  ��.B�
� 
docu.B �.C.C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.A �.D.D  g D 9 d 8 u d 0 b 3 5
� kfrmID  D .E.E .F�.G�.F  ��.H�
� 
docu.H �.I.I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.G �.J.J  m x Y S C N S s a E _
� kfrmID  E .K.K .L�.M�.L  ��.N�
� 
docu.N �.O.O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.M �.P.P  g A Z C R Y f y L 3 J
� kfrmID  F .Q.Q .R�.S�.R  ��.T�
� 
docu.T �.U.U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.S �.V.V  k D x H g h V C G l T
� kfrmID  G .W.W .X�.Y�.X  ��.Z�
� 
docu.Z �.[.[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.Y �.\.\  n I P J O E s w 2 j i
� kfrmID  H .].] .^�._�.^  ��.`�
� 
docu.` �.a.a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac._ �.b.b  b b I j 6 - C V Z a r
� kfrmID  I .c.c .d�.e�.d  ��.f�
� 
docu.f �.g.g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.e �.h.h  h 6 0 u g z u i c R k
� kfrmID  J .i.i .j�.k�.j  ��.l�
� 
docu.l �.m.m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac.k �.n.n  a z 1 0 e Q M 4 I 0 Z
� kfrmID  K .o.o .p�.q�.p  ��~.r�}
�~ 
docu.r �.s.s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac.q �.t.t  n _ x f 5 w U 0 - x 4
� kfrmID  L .u.u .v�|.w�{.v  ��z.x�y
�z 
docu.x �.y.y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac.w �.z.z  j P 5 3 E _ 3 E q 3 t
�{ kfrmID  M .{.{ .|�x.}�w.|  ��v.~�u
�v 
docu.~ �..  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac.} �.�.�  a 2 M 9 E u J S i f 1
�w kfrmID  N .�.� .��t.��s.�  ��r.��q
�r 
docu.� �.�.�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac.� �.�.�  a M a a 0 9 b u 5 S q
�s kfrmID  O .�.� .��p.��o.�  ��n.��m
�n 
docu.� �.�.�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac.� �.�.�  j y F C c N S - n y l
�o kfrmID  P .�.� .��l.��k.�  ��j.��i
�j 
docu.� �.�.�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac.� �.�.�  i t f q l 7 Z j L 9 t
�k kfrmID  Q .�.� .��h.��g.�  ��f.��e
�f 
docu.� �.�.�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac.� �.�.�  e T j 9 d b l K w f 0
�g kfrmID  R .�.� .��d.��c.�  ��b.��a
�b 
docu.� �.�.�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac.� �.�.�  i g 5 B X 9 X m x k d
�c kfrmID  S .�.� .��`.��_.�  ��^.��]
�^ 
docu.� �.�.�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac.� �.�.�  h x C 3 4 s E f Z 4 K
�_ kfrmID  T .�.� .��\.��[.�  ��Z.��Y
�Z 
docu.� �.�.�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac.� �.�.�  j s a 4 h B U S 4 P Q
�[ kfrmID  U .�.� .��X.��W.�  ��V.��U
�V 
docu.� �.�.�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac.� �.�.�  i e S k F s e 2 C t d
�W kfrmID  V .�.� .��T.��S.�  ��R.��Q
�R 
docu.� �.�.�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac.� �.�.�  c g m H M 3 v s z r h
�S kfrmID  W .�.� .��P.��O.�  ��N.��M
�N 
docu.� �.�.�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac.� �.�.�  e n g Z b L L V 0 Q l
�O kfrmID  X .�.� .��L.��K.�  ��J.��I
�J 
docu.� �.�.�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac.� �.�.�  b j N S 7 C L 1 H _ q
�K kfrmID  Y .�.� .��H.��G.�  ��F.��E
�F 
docu.� �.�.�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac.� �.�.�  b _ U 9 B b u a i C h
�G kfrmID  Z .�.� .��D.��C.�  ��B.��A
�B 
docu.� �.�.�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac.� �.�.�  n 2 J 0 P z T G m d 5
�C kfrmID  [ .�.� .��@.��?.�  ��>.��=
�> 
docu.� �.�.�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac.� �.�.�  i c 9 y a e r _ C c N
�? kfrmID  \ .�.� .��<.��;.�  ��:.��9
�: 
docu.� �.�.�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac.� �.�.�  h y V J z X a m v Y T
�; kfrmID  ] .�.� .��8.��7.�  ��6.��5
�6 
docu.� �.�.�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac.� �.�.�  h 2 8 Q I h m W k I W
�7 kfrmID  ^ .�.� .��4.��3.�  ��2.��1
�2 
docu.� �.�.�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac.� �.�.�  h O k b m D G 3 o f z
�3 kfrmID  _ .�.� .��0.��/.�  ��..��-
�. 
docu.� �.�.�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac.� �.�.�  k h N u N X C B d f R
�/ kfrmID  ` .�.� .��,.��+.�  ��*.��)
�* 
docu.� �.�.�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac.� �.�.�  h c H w s Y j U O F s
�+ kfrmID  a .�.� .��(.��'.�  ��&.��%
�& 
docu.� �.�.�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac.� �.�.�  e i u r G O - O g 2 D
�' kfrmID  b .�.� .��$.��#.�  ��".��!
�" 
docu.� �.�.�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac.� �.�.�  d e C _ p e u q Z D 6
�# kfrmID  c .�.� / � /�/   ��/�
� 
docu/ �//  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac/ �//  b R w w L F q o - O D
� kfrmID  d // /�/�/  ��/�
� 
docu/ �/	/	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �/
/
  h z F P E O P w E d g
� kfrmID  e // /�/�/  ��/�
� 
docu/ �//  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �//  p m p n 0 Z i e T 6 w
� kfrmID  f // /�/�/  ��/�
� 
docu/ �//  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �//  n r O Q 2 3 Q O h 3 T
� kfrmID  g // /�/�/  ��/�
� 
docu/ �//  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/ �//  d d 3 - r V D f 9 S Y
� kfrmID  h // /�/�/  ��
/ �	
�
 
docu/  �/!/!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac/ �/"/"  o y H 9 D A 1 x 3 h r
� kfrmID  i /#/# /$�/%�/$  ��/&�
� 
docu/& �/'/'  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/% �/(/(  o H S z C H F 3 l l 0
� kfrmID  j /)/) /*�/+�/*  ��/,�
� 
docu/, �/-/-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/+ �/./.  n K x m y L _ P p R 0
� kfrmID  k //// /0� /1��/0  ���/2��
�� 
docu/2 �/3/3  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac/1 �/4/4  g s c V f r W 4 8 _ _
�� kfrmID  l /5/5 /6��/7��/6  ���/8��
�� 
docu/8 �/9/9  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/7 �/:/:  c X 8 T S R 3 t E y 7
�� kfrmID  m /;/; /<��/=��/<  ���/>��
�� 
docu/> �/?/?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/= �/@/@  o W y d j 0 T b y u C
�� kfrmID  n /A/A /B��/C��/B  ���/D��
�� 
docu/D �/E/E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/C �/F/F  p W y N 4 l F V e O _
�� kfrmID  o /G/G /H��/I��/H  ���/J��
�� 
docu/J �/K/K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/I �/L/L  i 6 E 3 y - G f i 4 N
�� kfrmID  p /M/M /N��/O��/N  ���/P��
�� 
docu/P �/Q/Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/O �/R/R  e B a j u h R u h h N
�� kfrmID  q /S/S /T��/U��/T  ���/V��
�� 
docu/V �/W/W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/U �/X/X  n C v 6 I D A G c n Z
�� kfrmID  r /Y/Y /Z��/[��/Z  ���/\��
�� 
docu/\ �/]/]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/[ �/^/^  l Z W c y P r r m H -
�� kfrmID  s /_/_ /`��/a��/`  ���/b��
�� 
docu/b �/c/c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/a �/d/d  p P X W S 0 i s V G p
�� kfrmID  t /e/e /f��/g��/f  ���/h��
�� 
docu/h �/i/i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/g �/j/j  o X B q L N R a D l 3
�� kfrmID  u /k/k /l��/m��/l  ���/n��
�� 
docu/n �/o/o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/m �/p/p  h t L a R T 0 4 S r g
�� kfrmID  v /q/q /r��/s��/r  ���/t��
�� 
docu/t �/u/u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/s �/v/v  d D 1 U i 5 9 o B E W
�� kfrmID  w /w/w /x��/y��/x  ���/z��
�� 
docu/z �/{/{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/y �/|/|  a G A Z S P l e J n 9
�� kfrmID  x /}/} /~��/��/~  ���/���
�� 
docu/� �/�/�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/ �/�/�  c S k - G T a v Q Q d
�� kfrmID  y /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/� �/�/�  o z c r X H G s A z 4
�� kfrmID  z /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac/� �/�/�  a v c n 2 l N Z E Z A
�� kfrmID  { /�/� /���/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac/� �/�/�  o o Z s j S N y Y U q
� kfrmID  | /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  i C P M 1 d 0 U h 7 L
� kfrmID  } /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  h v 1 0 y f j 7 l A B
� kfrmID  ~ /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  l t d v D k d g A a z
� kfrmID   /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  d Z D X 3 G W z c F 2
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  b Z T j F u - l 0 x e
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  p G 5 G g 2 Y O 7 _ g
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  b D C 1 U U E w c r 8
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  i E p 5 u j b Q 1 F q
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  m H F z Y G U U 6 w 9
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  c e o 3 K 2 j X K J i
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  h 9 A L - 0 b u f R 9
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  l 5 S j S J h U d i D
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  c N k 9 1 A p z N a V
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  h S o b D O J K u X 2
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac/� �/�/�  g 3 q x 6 Y D N 2 R 6
� kfrmID  � /�/� /��/��/�  ��~/��}
�~ 
docu/� �/�/�  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac/� �/�/�  h u L N n I Q V R W g
� kfrmID  � /�/� /��|/��{/�  ��z/��y
�z 
docu/� �/�/�  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac/� �/�/�  b a O D j D _ H K q r
�{ kfrmID  � /�/� /��x/��w/�  ��v/��u
�v 
docu/� �/�/�  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac/� �0 0   e c U b U p w c 7 r T
�w kfrmID  � 00 0�t0�s0  ��r0�q
�r 
docu0 �00  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac0 �00  i 7 q i s p h J A v P
�s kfrmID  � 00 0�p0	�o0  ��n0
�m
�n 
docu0
 �00  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac0	 �00  l 8 _ p c 7 a 3 Y C p
�o kfrmID  � 00 0�l0�k0  ��j0�i
�j 
docu0 �00  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac0 �00  i u a p A 8 y 2 8 w h
�k kfrmID  � 00 0�h0�g0  ��f0�e
�f 
docu0 �00  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac0 �00  p S B C x h 8 Z 4 f 4
�g kfrmID  � 00 0�d0�c0  ��b0�a
�b 
docu0 �00  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac0 �00  i p I z M k 6 E y m w
�c kfrmID  � 00 0 �`0!�_0   ��^0"�]
�^ 
docu0" �0#0#  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac0! �0$0$  i J J - R 6 y d t s d
�_ kfrmID  � 0%0% 0&�\0'�[0&  ��Z0(�Y
�Z 
docu0( �0)0)  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac0' �0*0*  h T l x J 2 l U 7 Y Z
�[ kfrmID  � 0+0+ 0,�X0-�W0,  ��V0.�U
�V 
docu0. �0/0/  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac0- �0000  n E E 1 G H G i C 2 7
�W kfrmID  � 0101 02�T03�S02  ��R04�Q
�R 
docu04 �0505  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac03 �0606  l c B V V 4 k 7 M L M
�S kfrmID  � 0707 08�P09�O08  ��N0:�M
�N 
docu0: �0;0;  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac09 �0<0<  a K Y 8 8 k M e b J B
�O kfrmID  � 0=0= 0>�L0?�K0>  ��J0@�I
�J 
docu0@ �0A0A  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac0? �0B0B  e i z l p O O 4 D 9 p
�K kfrmID  � 0C0C 0D�H0E�G0D  ��F0F�E
�F 
docu0F �0G0G  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac0E �0H0H  f O i m e C A 5 B U S
�G kfrmID  � 0I0I 0J�D0K�C0J  ��B0L�A
�B 
docu0L �0M0M  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac0K �0N0N  d 4 M u U u w G m p m
�C kfrmID  � 0O0O 0P�@0Q�?0P  ��>0R�=
�> 
docu0R �0S0S  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac0Q �0T0T  g 5 D 6 3 y 5 N s W D
�? kfrmID  � 0U0U 0V�<0W�;0V  ��:0X�9
�: 
docu0X �0Y0Y  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac0W �0Z0Z  b Z h q c 6 S c C Y M
�; kfrmID  � 0[0[ 0\�80]�70\  ��60^�5
�6 
docu0^ �0_0_  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac0] �0`0`  h Y Z 7 P U k j E 2 m
�7 kfrmID  � 0a0a 0b�40c�30b  ��20d�1
�2 
docu0d �0e0e  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac0c �0f0f  c X a 1 V X D Y 1 a U
�3 kfrmID  � 0g0g 0h�00i�/0h  ��.0j�-
�. 
docu0j �0k0k  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac0i �0l0l  p J j m K F Q i I Z U
�/ kfrmID  � 0m0m 0n�,0o�+0n  ��*0p�)
�* 
docu0p �0q0q  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac0o �0r0r  o H n K Q 8 6 G z d V
�+ kfrmID  � 0s0s 0t�(0u�'0t  ��&0v�%
�& 
docu0v �0w0w  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac0u �0x0x  m m q I I i B r 2 8 w
�' kfrmID  � 0y0y 0z�$0{�#0z  ��"0|�!
�" 
docu0| �0}0}  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac0{ �0~0~  l r i 1 j N n W o K Q
�# kfrmID  � 00 0�� 0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac0� �0�0�  m H I L C k 4 - f t s
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  e h n L T 2 k J V A u
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  h v p k k n h Z Y T _
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  p v 5 n g l D 9 i 4 4
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  f n o x Z 5 Q - n t X
� kfrmID  � 0�0� 0��0��0�  ��
0��	
�
 
docu0� �0�0�  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac0� �0�0�  i s I C b F F 9 y M P
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  b v L i U 2 X T g c r
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac0� �0�0�  g F Z E J o s D z h O
� kfrmID  � 0�0� 0�� 0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac0� �0�0�  n m O V B u e H h P F
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  d J x K f _ J I T Y 4
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  g Q S m p O 9 n 6 v q
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  h a 5 P k E p Z M 5 d
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  d E X z i E H p R 2 D
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  k H z F K r G a - K 0
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  p V j - V m J P c x 9
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  k D E I 1 p R N H w 9
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  k O s i _ I D P e 2 x
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  n J f 1 s g j z M 2 A
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  n t K 0 i x w h s 2 t
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  b J b e 3 K 3 o f d K
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �0�0�  f - 3 4 J 5 q a M F i
�� kfrmID  � 0�0� 0���0���0�  ���1 ��
�� 
docu1  �11  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac0� �11  f s X i s e L m e x m
�� kfrmID  � 11 1��1��1  ���1��
�� 
docu1 �11  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac1 �11  f 6 F x i Q R F i w S
�� kfrmID  � 1	1	 1
��1��1
  ���1��
�� 
docu1 �11  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac1 �11  o e l Y 2 S z N R d j
�� kfrmID  � 11 1��1�1  ��1�
� 
docu1 �11  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac1 �11  h B V - j k 8 4 T c V
� kfrmID  � 11 1�1�1  ��1�
� 
docu1 �11  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1 �11  a s T k M D i L S i d
� kfrmID  � 11 1�1�1  ��1�
� 
docu1 �11  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1 �1 1   l I B J u M C p B C G
� kfrmID  � 1!1! 1"�1#�1"  ��1$�
� 
docu1$ �1%1%  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1# �1&1&  k 3 L 9 D N k p 6 M E
� kfrmID  � 1'1' 1(�1)�1(  ��1*�
� 
docu1* �1+1+  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1) �1,1,  c j w b 1 q M K I B 8
� kfrmID  � 1-1- 1.�1/�1.  ��10�
� 
docu10 �1111  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1/ �1212  h H y q X G k l x 2 Y
� kfrmID  � 1313 14�15�14  ��16�
� 
docu16 �1717  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac15 �1818  p G 4 U x W W K N z d
� kfrmID  � 1919 1:�1;�1:  ��1<�
� 
docu1< �1=1=  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1; �1>1>  n t - d T b W U o s V
� kfrmID  � 1?1? 1@�1A�1@  ��1B�
� 
docu1B �1C1C  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1A �1D1D  g a S W f Y R 9 f - v
� kfrmID  � 1E1E 1F�1G�1F  ��1H�
� 
docu1H �1I1I  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1G �1J1J  g G G f i O R 2 v 4 5
� kfrmID  � 1K1K 1L�1M�1L  ��1N�
� 
docu1N �1O1O  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1M �1P1P  l - r v e Q B X Q 5 Q
� kfrmID  � 1Q1Q 1R�1S�1R  ��1T�
� 
docu1T �1U1U  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1S �1V1V  e E m W a t Q J P y M
� kfrmID  � 1W1W 1X�1Y�1X  ��1Z�
� 
docu1Z �1[1[  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1Y �1\1\  i 8 7 u S K o F K E T
� kfrmID  � 1]1] 1^�1_�1^  ��1`�
� 
docu1` �1a1a  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1_ �1b1b  e 2 t O q N A v M W 2
� kfrmID  � 1c1c 1d�1e�1d  ��1f�
� 
docu1f �1g1g  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1e �1h1h  o G Z 3 t H R 9 3 P F
� kfrmID  � 1i1i 1j�1k�1j  ��1l�
� 
docu1l �1m1m  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac1k �1n1n  l U 1 S U 5 M d 8 - I
� kfrmID  � 1o1o 1p�1q�1p  ��~1r�}
�~ 
docu1r �1s1s  j C K o k D m L 7 - 3
�} kfrmID  
� 
FCac1q �1t1t  j 3 I _ K F q s n 5 n
� kfrmID  � 1u1u 1v�|1w�{1v  ��z1x�y
�z 
docu1x �1y1y  j C K o k D m L 7 - 3
�y kfrmID  
�| 
FCac1w �1z1z  b v u t F O R s s u d
�{ kfrmID  � 1{1{ 1|�x1}�w1|  ��v1~�u
�v 
docu1~ �11  j C K o k D m L 7 - 3
�u kfrmID  
�x 
FCac1} �1�1�  a w - s h e M p H j o
�w kfrmID  � 1�1� 1��t1��s1�  ��r1��q
�r 
docu1� �1�1�  j C K o k D m L 7 - 3
�q kfrmID  
�t 
FCac1� �1�1�  f 3 7 t a p w 7 C P t
�s kfrmID  � 1�1� 1��p1��o1�  ��n1��m
�n 
docu1� �1�1�  j C K o k D m L 7 - 3
�m kfrmID  
�p 
FCac1� �1�1�  h T b w F Z h g S C 8
�o kfrmID  � 1�1� 1��l1��k1�  ��j1��i
�j 
docu1� �1�1�  j C K o k D m L 7 - 3
�i kfrmID  
�l 
FCac1� �1�1�  a e w m k f m Y e 6 K
�k kfrmID  � 1�1� 1��h1��g1�  ��f1��e
�f 
docu1� �1�1�  j C K o k D m L 7 - 3
�e kfrmID  
�h 
FCac1� �1�1�  e H 4 m 9 L m h c z v
�g kfrmID  � 1�1� 1��d1��c1�  ��b1��a
�b 
docu1� �1�1�  j C K o k D m L 7 - 3
�a kfrmID  
�d 
FCac1� �1�1�  b v W c b Z c f K 1 L
�c kfrmID  � 1�1� 1��`1��_1�  ��^1��]
�^ 
docu1� �1�1�  j C K o k D m L 7 - 3
�] kfrmID  
�` 
FCac1� �1�1�  k j 0 W H 1 B y 9 p G
�_ kfrmID  � 1�1� 1��\1��[1�  ��Z1��Y
�Z 
docu1� �1�1�  j C K o k D m L 7 - 3
�Y kfrmID  
�\ 
FCac1� �1�1�  f E z f t 6 g S 5 a j
�[ kfrmID  � 1�1� 1��X1��W1�  ��V1��U
�V 
docu1� �1�1�  j C K o k D m L 7 - 3
�U kfrmID  
�X 
FCac1� �1�1�  p 7 J S M s 4 6 N p s
�W kfrmID  � 1�1� 1��T1��S1�  ��R1��Q
�R 
docu1� �1�1�  j C K o k D m L 7 - 3
�Q kfrmID  
�T 
FCac1� �1�1�  g - u r 0 a m G S c A
�S kfrmID  � 1�1� 1��P1��O1�  ��N1��M
�N 
docu1� �1�1�  j C K o k D m L 7 - 3
�M kfrmID  
�P 
FCac1� �1�1�  k Q 7 T b A l 1 e l R
�O kfrmID  � 1�1� 1��L1��K1�  ��J1��I
�J 
docu1� �1�1�  j C K o k D m L 7 - 3
�I kfrmID  
�L 
FCac1� �1�1�  j x K a 1 5 e i 1 O F
�K kfrmID  � 1�1� 1��H1��G1�  ��F1��E
�F 
docu1� �1�1�  j C K o k D m L 7 - 3
�E kfrmID  
�H 
FCac1� �1�1�  l A M n a a Y - z 8 F
�G kfrmID  � 1�1� 1��D1��C1�  ��B1��A
�B 
docu1� �1�1�  j C K o k D m L 7 - 3
�A kfrmID  
�D 
FCac1� �1�1�  n f h d E 8 s R Y 9 g
�C kfrmID  � 1�1� 1��@1��?1�  ��>1��=
�> 
docu1� �1�1�  j C K o k D m L 7 - 3
�= kfrmID  
�@ 
FCac1� �1�1�  p Q V Q Z p 7 q x i 4
�? kfrmID  � 1�1� 1��<1��;1�  ��:1��9
�: 
docu1� �1�1�  j C K o k D m L 7 - 3
�9 kfrmID  
�< 
FCac1� �1�1�  m 3 F v w R q T Q U A
�; kfrmID  � 1�1� 1��81��71�  ��61��5
�6 
docu1� �1�1�  j C K o k D m L 7 - 3
�5 kfrmID  
�8 
FCac1� �1�1�  f O p L g 9 p 7 X g E
�7 kfrmID  � 1�1� 1��41��31�  ��21��1
�2 
docu1� �1�1�  j C K o k D m L 7 - 3
�1 kfrmID  
�4 
FCac1� �1�1�  k h N o 0 k 5 n x x R
�3 kfrmID  � 1�1� 1��01��/1�  ��.1��-
�. 
docu1� �1�1�  j C K o k D m L 7 - 3
�- kfrmID  
�0 
FCac1� �1�1�  c S S q C R g A O B y
�/ kfrmID  � 1�1� 1��,1��+1�  ��*1��)
�* 
docu1� �1�1�  j C K o k D m L 7 - 3
�) kfrmID  
�, 
FCac1� �1�1�  k 8 B 8 C y 5 b y q c
�+ kfrmID  � 1�1� 1��(1��'1�  ��&1��%
�& 
docu1� �1�1�  j C K o k D m L 7 - 3
�% kfrmID  
�( 
FCac1� �1�1�  o Y g k v b 0 6 p S R
�' kfrmID  � 1�1� 1��$1��#1�  ��"1��!
�" 
docu1� �1�1�  j C K o k D m L 7 - 3
�! kfrmID  
�$ 
FCac1� �1�1�  l B h w 3 8 y w O L G
�# kfrmID  � 1�1� 2 � 2�2   ��2�
� 
docu2 �22  j C K o k D m L 7 - 3
� kfrmID  
�  
FCac2 �22  g u k - - 5 w b d i z
� kfrmID  � 22 2�2�2  ��2�
� 
docu2 �2	2	  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2 �2
2
  p 2 F X C e 1 r S d L
� kfrmID  � 22 2�2�2  ��2�
� 
docu2 �22  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2 �22  i k M N s j h Y w L 2
� kfrmID  � 22 2�2�2  ��2�
� 
docu2 �22  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2 �22  i w b e p g D 6 X 8 _
� kfrmID  � 22 2�2�2  ��2�
� 
docu2 �22  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2 �22  l i U q n t o 1 k w X
� kfrmID  � 22 2�2�2  ��
2 �	
�
 
docu2  �2!2!  j C K o k D m L 7 - 3
�	 kfrmID  
� 
FCac2 �2"2"  m O 4 P u g i A O s b
� kfrmID  � 2#2# 2$�2%�2$  ��2&�
� 
docu2& �2'2'  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2% �2(2(  m g d T O v J G M C E
� kfrmID  � 2)2) 2*�2+�2*  ��2,�
� 
docu2, �2-2-  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2+ �2.2.  b v h M W 5 j t v k B
� kfrmID  � 2/2/ 20� 21��20  ���22��
�� 
docu22 �2323  j C K o k D m L 7 - 3
�� kfrmID  
�  
FCac21 �2424  d 4 S L 4 - p 2 c c J
�� kfrmID  � 2525 26��27��26  ���28��
�� 
docu28 �2929  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac27 �2:2:  j m _ g K Q - 7 7 k o
�� kfrmID  � 2;2; 2<��2=��2<  ���2>��
�� 
docu2> �2?2?  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2= �2@2@  f A 4 8 R 0 k s f Z x
�� kfrmID  � 2A2A 2B��2C��2B  ���2D��
�� 
docu2D �2E2E  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2C �2F2F  k K a s g H r a V T C
�� kfrmID  � 2G2G 2H��2I��2H  ���2J��
�� 
docu2J �2K2K  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2I �2L2L  a p x q 0 R z e W y K
�� kfrmID  � 2M2M 2N��2O��2N  ���2P��
�� 
docu2P �2Q2Q  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2O �2R2R  g U 8 1 Q m x u w G x
�� kfrmID  � 2S2S 2T��2U��2T  ���2V��
�� 
docu2V �2W2W  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2U �2X2X  c m r W F q q h u A b
�� kfrmID  � 2Y2Y 2Z��2[��2Z  ���2\��
�� 
docu2\ �2]2]  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2[ �2^2^  f Y d y V p s v u r T
�� kfrmID  � 2_2_ 2`��2a��2`  ���2b��
�� 
docu2b �2c2c  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2a �2d2d  o E l 0 c _ e A j K n
�� kfrmID  � 2e2e 2f��2g��2f  ���2h��
�� 
docu2h �2i2i  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2g �2j2j  m 8 P G Y 3 l I 4 w b
�� kfrmID  � 2k2k 2l��2m��2l  ���2n��
�� 
docu2n �2o2o  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2m �2p2p  i q y g S y c H s k z
�� kfrmID  � 2q2q 2r��2s��2r  ���2t��
�� 
docu2t �2u2u  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2s �2v2v  e I r 0 Z c n f S U X
�� kfrmID  � 2w2w 2x��2y��2x  ���2z��
�� 
docu2z �2{2{  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2y �2|2|  p 9 z u 1 b - L c K I
�� kfrmID  � 2}2} 2~��2��2~  ���2���
�� 
docu2� �2�2�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2 �2�2�  o G o n 2 r J O f 9 9
�� kfrmID  � 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2� �2�2�  b 2 B 5 3 y Q A B M 5
�� kfrmID  � 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  j C K o k D m L 7 - 3
�� kfrmID  
�� 
FCac2� �2�2�  j P m i w b T z v c 0
�� kfrmID  � 2�2� 2���2��2�  ��2��
� 
docu2� �2�2�  j C K o k D m L 7 - 3
� kfrmID  
�� 
FCac2� �2�2�  m o D F B J l f Q l A
� kfrmID  � 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  j C K o k D m L 7 - 3
� kfrmID  
� 
FCac2� �2�2�  b w S 8 0 g e b c A 8
� kfrmID  
�� 
cobj��  2�2� 6��
� 
cobj� 	 2�2� 6��
� 
cobj� 
 2�2� 6��
� 
cobj�  2�2� 6��
� 
cobj�  2�2� 6��
� 
cobj�  2�2� 6��
� 
cobj�   2�2� 6��
� 
cobj� ! 2�2� 6��
� 
cobj� " 2�2� 6��
� 
cobj� # 2�2� 6��
� 
cobj� $ 2�2� 6��
� 
cobj� % 2�2� 6��
� 
cobj� & 2�2� 6���
� 
cobj�� ' 2�2� 6����
�� 
cobj�� ( 2�2� 6����
�� 
cobj�� ) 2�2� 6����
�� 
cobj�� * 2�2� 6����
�� 
cobj�� + 2�2� 6����
�� 
cobj�� , 2�2� 6����
�� 
cobj�� - 2�2� 6����
�� 
cobj�� . 2�2� 6����
�� 
cobj�� / 2�2� 6����
�� 
cobj�� 0 2�2� 6����
�� 
cobj��  1 2�2� 6����
�� 
cobj�� !2 2�2� 6����
�� 
cobj�� "3 2�2� 6����
�� 
cobj�� #4 2�2� 6����
�� 
cobj�� $5 2�2� 6����
�� 
cobj�� -6 2�2� 6���
�� 
cobj� c7 2�2� 6�~�}
�~ 
cobj�} l8 2�2� 6�|�{
�| 
cobj�{ �9 2�2� 6�z�y
�z 
cobj�y �: 2�2� 6�x�w
�x 
cobj�w �; 2�2� 6�v�u
�v 
cobj�u �< 2�2� 6�t�s
�t 
cobj�s �= 2�2� 6�r�q
�r 
cobj�q �> 2�2� 6�p�o
�p 
cobj�o ? 2�2� 6�n�m
�n 
cobj�m@ 2�2� 6�l�k
�l 
cobj�kA 2�2� 6�j�i
�j 
cobj�iB 2�2� 6�h�g
�h 
cobj�g C 2�2� 6�f�e
�f 
cobj�e(D 2�2� 6�d�c
�d 
cobj�c^E 2�2� 6�b�a
�b 
cobj�a�F 2�2� 6�`�_
�` 
cobj�_�G 2�2� 6�^�]
�^ 
cobj�]�H 2�2� 6�\�[
�\ 
cobj�[)I 2�2� 6�Z�Y
�Z 
cobj�Y^J 2�2� 6�X�W
�X 
cobj�W�K 2�2� 6�V�U
�V 
cobj�U�L 2�2� 6�T�S
�T 
cobj�S�M 2�2� 6�R�Q
�R 
cobj�Q�N 2�2� 6�P�O
�P 
cobj�O�O 2�2� 6�N�M
�N 
cobj�M�P 2�2� 6�L�K
�L 
cobj�K�Q 2�2� 6�J�I
�J 
cobj�I�R 2�2� 6�H�G
�H 
cobj�G�S 2�2� 6�F�E
�F 
cobj�E�T 2�2� 6�D�C
�D 
cobj�C�U 2�2� 6�B�A
�B 
cobj�A�V 2�2� 6�@�?
�@ 
cobj�?�W 2�2� 6�>�=
�> 
cobj�=�X 2�2� 6�<�;
�< 
cobj�;�Y 2�2� 6�:�9
�: 
cobj�9�Z 2�2� 6�8�7
�8 
cobj�7�[ 2�2� 6�6�5
�6 
cobj�5�\ 2�2� 6�4�3
�4 
cobj�3�] 2�2� 6�2�1
�2 
cobj�1�^ 2�2� 6�0�/
�0 
cobj�/�_ 2�2� 6�.�-
�. 
cobj�-�` 2�2� 6�,�+
�, 
cobj�+�a 2�2� 6�*�)
�* 
cobj�)�b 2�2� 6�(�'
�( 
cobj�'�c 2�2� 6�&�%
�& 
cobj�%d 2�2� 6�$�#
�$ 
cobj�#e 2�2� 6�"�!
�" 
cobj�!f 2�2� 6� �
�  
cobj�g 2�2� 6��
� 
cobj�h 2�2� 6��
� 
cobj�i 2�2� 6��
� 
cobj�j 2�2� 6��
� 
cobj�k 2�2� 6��
� 
cobj�l 2�2� 6��
� 
cobj�m 2�2� 6��
� 
cobj�n 2�2� 6��
� 
cobj�o 2�2� 6��
� 
cobj�p 2�2� 6��
� 
cobj�q 2�2� 6�
�	
�
 
cobj�	r 2�2� 6��
� 
cobj�s 2�2� 6��
� 
cobj� t 2�2� 6��
� 
cobj�!u 2�2� 6��
� 
cobj�"v 2�2� 6� ��
�  
cobj��%w 2�2� 6����
�� 
cobj��7x 2�2� 6����
�� 
cobj��9y 2�2� 6����
�� 
cobj��;z 2�2� 6����
�� 
cobj��>{ 2�2� 6����
�� 
cobj��@| 2�2� 6����
�� 
cobj��H} 2�2� 6����
�� 
cobj��J~ 2�2� 6����
�� 
cobj��K 3 3  6����
�� 
cobj��T� 33 6����
�� 
cobj��`� 33 6����
�� 
cobj��c� 33 6����
�� 
cobj��k� 33 6����
�� 
cobj��l� 33 6����
�� 
cobj��o� 33 6����
�� 
cobj��r� 33 6����
�� 
cobj��u� 33 6����
�� 
cobj��x� 3	3	 6����
�� 
cobj��{� 3
3
 6����
�� 
cobj��|� 33 6����
�� 
cobj��}� 33 6����
�� 
cobj��~� 33 6����
�� 
cobj��� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6����
�� 
cobj���� 33 6��߿
�� 
cobj߿�� 33 6߾߽
߾ 
cobj߽�� 33 6߼߻
߼ 
cobj߻�� 33 6ߺ߹
ߺ 
cobj߹�� 33 6߸߷
߸ 
cobj߷�� 33 6߶ߵ
߶ 
cobjߵ�� 33 6ߴ߳
ߴ 
cobj߳�� 33 6߲߱
߲ 
cobj߱�� 33 6߰߯
߰ 
cobj߯�� 3 3  6߮߭
߮ 
cobj߭�� 3!3! 6߬߫
߬ 
cobj߫�� 3"3" 6ߪߩ
ߪ 
cobjߩ�� 3#3# 6ߨߧ
ߨ 
cobjߧ�� 3$3$ 6ߦߥ
ߦ 
cobjߥ�� 3%3% 6ߤߣ
ߤ 
cobjߣ�� 3&3& 6ߢߡ
ߢ 
cobjߡ�� 3'3' 6ߠߟ
ߠ 
cobjߟ�� 3(3( 6ߞߝ
ߞ 
cobjߝ�� 3)3) 6ߜߛ
ߜ 
cobjߛ�� 3*3* 6ߚߙ
ߚ 
cobjߙ�� 3+3+ 6ߘߗ
ߘ 
cobjߗ�� 3,3, 6ߖߕ
ߖ 
cobjߕ�� 3-3- 6ߔߓ
ߔ 
cobjߓ�� 3.3. 6ߒߑ
ߒ 
cobjߑ�� 3/3/ 6ߐߏ
ߐ 
cobjߏ�� 3030 6ߎߍ
ߎ 
cobjߍ�� 3131 6ߌߋ
ߌ 
cobjߋ�� 3232 6ߊ߉
ߊ 
cobj߉�� 3333 6߈߇
߈ 
cobj߇�� 3434 6߆߅
߆ 
cobj߅�� 3535 6߄߃
߄ 
cobj߃�� 3636 6߂߁
߂ 
cobj߁�� 3737 6߀�
߀ 
cobj��� 3838 6�~�}
�~ 
cobj�}�� 3939 6�|�{
�| 
cobj�{�� 3:3: 6�z�y
�z 
cobj�y�� 3;3; 6�x�w
�x 
cobj�w�� 3<3< 6�v�u
�v 
cobj�u�� 3=3= 6�t�s
�t 
cobj�s�� 3>3> 6�r�q
�r 
cobj�q�� 3?3? 6�p�o
�p 
cobj�o�� 3@3@ 6�n�m
�n 
cobj�m�� 3A3A 6�l�k
�l 
cobj�k�� 3B3B 6�j�i
�j 
cobj�i�� 3C3C 6�h�g
�h 
cobj�g�� 3D3D 6�f�e
�f 
cobj�e�� 3E3E 6�d�c
�d 
cobj�c�� 3F3F 6�b�a
�b 
cobj�a�� 3G3G 6�`�_
�` 
cobj�_�� 3H3H 6�^�]
�^ 
cobj�]�� 3I3I 6�\�[
�\ 
cobj�[�� 3J3J 6�Z�Y
�Z 
cobj�Y�� 3K3K 6�X�W
�X 
cobj�W�� 3L3L 6�V�U
�V 
cobj�U�� 3M3M 6�T�S
�T 
cobj�S�� 3N3N 6�R�Q
�R 
cobj�Q�� 3O3O 6�P�O
�P 
cobj�O�� 3P3P 6�N�M
�N 
cobj�M�� 3Q3Q 6�L�K
�L 
cobj�K�� 3R3R 6�J�I
�J 
cobj�I�� 3S3S 6�H�G
�H 
cobj�G�� 3T3T 6�F�E
�F 
cobj�E�� 3U3U 6�D�C
�D 
cobj�C�� 3V3V 6�B�A
�B 
cobj�A� 3W3W 6�@�?
�@ 
cobj�?� 3X3X 6�>�=
�> 
cobj�=� 3Y3Y 6�<�;
�< 
cobj�;
� 3Z3Z 6�:�9
�: 
cobj�9� 3[3[ 6�8�7
�8 
cobj�7� 3\3\ 6�6�5
�6 
cobj�5� 3]3] 6�4�3
�4 
cobj�3� 3^3^ 6�2�1
�2 
cobj�1'� 3_3_ 6�0�/
�0 
cobj�/.� 3`3` 6�.�-
�. 
cobj�-6� 3a3a 6�,�+
�, 
cobj�+7� 3b3b 6�*�)
�* 
cobj�)9� 3c3c 6�(�'
�( 
cobj�':� 3d3d 6�&�%
�& 
cobj�%?� 3e3e 6�$�#
�$ 
cobj�#A� 3f3f 6�"�!
�" 
cobj�!B� 3g3g 6� �
�  
cobj�H� 3h3h 6��
� 
cobj�M� 3i3i 6��
� 
cobj�N� 3j3j 6��
� 
cobj�P� 3k3k 6��
� 
cobj�R� 3l3l 6��
� 
cobj�S� 3m3m 6��
� 
cobj�T� 3n3n 6��
� 
cobj�V� 3o3o 6��
� 
cobj�W� 3p3p 6��
� 
cobj�X� 3q3q 6��
� 
cobj�^� 3r3r 6�
�	
�
 
cobj�	_� 3s3s 6��
� 
cobj�`� 3t3t 6��
� 
cobj�e� 3u3u 6��
� 
cobj�f� 3v3v 6��
� 
cobj�g� 3w3w 6� ��
�  
cobj��j� 3x3x 6����
�� 
cobj��l� 3y3y 6����
�� 
cobj��m� 3z3z 6����
�� 
cobj��n� 3{3{ 6����
�� 
cobj��o� 3|3| 6����
�� 
cobj��p� 3}3} 6����
�� 
cobj��t� 3~3~ 6����
�� 
cobj��v� 33 6����
�� 
cobj��y� 3�3� 6����
�� 
cobj��z  3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj���	 3�3� 6����
�� 
cobj���
 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6����
�� 
cobj��� 3�3� 6��޿
�� 
cobj޿� 3�3� 6޾޽
޾ 
cobj޽� 3�3� 6޼޻
޼ 
cobj޻� 3�3� 6޺޹
޺ 
cobj޹� 3�3� 6޸޷
޸ 
cobj޷� 3�3� 6޶޵
޶ 
cobj޵� 3�3� 6޴޳
޴ 
cobj޳� 3�3� 6޲ޱ
޲ 
cobjޱ� 3�3� 6ްޯ
ް 
cobjޯ� 3�3� 6ޮޭ
ޮ 
cobjޭ�  3�3� 6ެޫ
ެ 
cobjޫ�! 3�3� 6ުީ
ު 
cobjީ�" 3�3� 6ިާ
ި 
cobjާ�# 3�3� 6ަޥ
ަ 
cobjޥ�$ 3�3� 6ޤޣ
ޤ 
cobjޣ�% 3�3� 6ޢޡ
ޢ 
cobjޡ�& 3�3� 6ޠޟ
ޠ 
cobjޟ�' 3�3� 6ޞޝ
ޞ 
cobjޝ�( 3�3� 6ޜޛ
ޜ 
cobjޛ�) 3�3� 6ޚޙ
ޚ 
cobjޙ�* 3�3� 6ޘޗ
ޘ 
cobjޗ�+ 3�3� 6ޖޕ
ޖ 
cobjޕ�, 3�3� 6ޔޓ
ޔ 
cobjޓ�- 3�3� 6ޒޑ
ޒ 
cobjޑ�. 3�3� 6ސޏ
ސ 
cobjޏ�/ 3�3� 6ގލ
ގ 
cobjލ�0 3�3� 6ތދ
ތ 
cobjދ�1 3�3� 6ފމ
ފ 
cobjމ�2 3�3� 6ވއ
ވ 
cobjއ�3 3�3� 6ކޅ
ކ 
cobjޅ�4 3�3� 6ބރ
ބ 
cobjރ�� ނ3�ނ 	3� 	 3�3�3�3�3�3�3�3�3�3� 3�3� �ށހ
ށ 
cobjހ !3� 3�3� ���~
� 
cobj�~ .3� 3�3� ��}�|
�} 
cobj�| /3� 3�3� ��{�z
�{ 
cobj�z 03� 3�3� ��y�x
�y 
cobj�x 13� 3�3� ��w�v
�w 
cobj�v 23� 3�3� ��u�t
�u 
cobj�t 33� 3�3� ��s�r
�s 
cobj�r 43� 3�3� ��q�p
�q 
cobj�p _� �o3��o 3�  3�3�3�3�3�3�3� 3�3� ��n�m
�n 
cobj�m A3� 3�3� ��l�k
�l 
cobj�k C3� 3�3� ��j�i
�j 
cobj�i �3� 3�3� ��h�g
�h 
cobj�g �3� 3�3� ��f�e
�f 
cobj�e �3� 3�3� ��d�c
�d 
cobj�c �� �b3��b 3�  3�3�3�3�3�3�3�3�3�3�3�3� 3�3� ��a�`
�a 
cobj�` 
3� 3�3� ��_�^
�_ 
cobj�^ ?3� 3�3� ��]�\
�] 
cobj�\ B3� 3�3� ��[�Z
�[ 
cobj�Z ^3� 3�3� ��Y�X
�Y 
cobj�X }3� 3�3� ��W�V
�W 
cobj�V �3� 3�3� ��U�T
�U 
cobj�T �3� 3�3� ��S�R
�S 
cobj�R �3� 3�3� ��Q�P
�Q 
cobj�P �3� 3�3� ��O�N
�O 
cobj�N �3� 3�3� ��M�L
�M 
cobj�L� �K�J�K  �J  � �I3��I 3�  3�3�3�3�3�3�3�3�3�3�3�3�3�3�3�3�3� 3�3� ��H�G
�H 
cobj�G 43� 3�3� ��F�E
�F 
cobj�E A3� 4 4  ��D�C
�D 
cobj�C C3� 44 ��B�A
�B 
cobj�A N3� 44 ��@�?
�@ 
cobj�? k3� 44 ��>�=
�> 
cobj�= y3� 44 ��<�;
�< 
cobj�; �3� 44 ��:�9
�: 
cobj�9 �3� 44 ��8�7
�8 
cobj�7 �3� 44 ��6�5
�6 
cobj�5 �3� 44 ��4�3
�4 
cobj�3 �3� 4	4	 ��2�1
�2 
cobj�1 �3� 4
4
 ��0�/
�0 
cobj�/ �3� 44 ��.�-
�. 
cobj�- �3� 44 ��,�+
�, 
cobj�+ �3� 44 ��*�)
�* 
cobj�)� �44 � S e t h ' s   s t a r t   o f   d a y   s t a t u s   i s   1 5   t a s k s   f o r   t o d a y ,   3 1   t a s k s   f o r   t h i s   w e e k ,   1 1   t a s k s   f o r   n e x t   w e e k ,   a n d   0   o v e r d u e   t a s k s .� �(��'
�( 
bhit� �44  Y e s�'  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ