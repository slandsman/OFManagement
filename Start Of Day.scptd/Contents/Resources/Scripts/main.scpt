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
0 svalue  �F  �G   �  f  CD�K  �J   �  ��D � l PP�C�B�A�C  �B  �A  �D   # m    	 � ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �@�?�>�@  �?  �>   �    i   
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
�� .ascrcmnt****      � ****� o   < =���� 0 thetext theText��  � ��� l  B B��������  ��  ��  � ���� L   B D�� o   B C���� 0 thetext theText��  I�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ; ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � O     
��� I   	�����
�� .chTwpsTwnull���    obj � o    ���� 0 v  ��  � m     ���                                                                                  chTW  alis    X  Ghost HD                   Ȭ��H+   	�Twitterrific.app                                                I�ȐU�        ����  	                Applications    ȭ      Ȑ��     	�  &Ghost HD:Applications:Twitterrific.app  "  T w i t t e r r i f i c . a p p    G h o s t   H D  Applications/Twitterrific.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
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
�� .rdwrclosnull���     ****< o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � =>= l     ��������  ��  ��  > ?@? i    !ABA I      ��C���� 0 
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
�( .rdwrclosnull���     **** o   � ��&�& 0 thefile theFile�'  �)  X�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  @  l     �%�$�#�%  �$  �#    i   " % I      �"�!�" 0 
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
�� .rdwrclosnull���     ****u o   z {���� 0 thefile theFile��  ��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  �   vwv l     ��������  ��  ��  w xyx l     ��������  ��  ��  y z��z l     ��������  ��  ��  ��       *��{|��}~�������������������������������������������������������  { (���������������������������������������������������������������������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
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
folderList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 getfoldersoffolders getFoldersOfFolders� ���� o      ���� 0 lfolders lFolders��  ��  � w     &��� k    &�� ��� X    #����� r    ��� b    ��� o    ���� 0 lfolders lFolders� I    ������� *0 getfoldersoffolders getFoldersOfFolders� ���� n    ��� 2   ��
�� 
FCAr� o    ���� 0 
thisfolder 
thisFolder��  ��  � o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder� o    ���� 0 lfolders lFolders� ��� l  $ $��������  ��  ��  � ���� L   $ &�� o   $ %���� 0 lfolders lFolders��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � � � l     ��������  ��  ��     l      ����   9 3 1b: projects and utility associated with projects     � f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s    i    	 I      ��
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
thisFolder! o    ���� 0 lfolderlist lFolderList *��* L   1 3++ o   1 2���� 0 projectlist projectList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ,-, l     ��������  ��  ��  - ./. i    010 I      ��2���� .0 getprojectsfromfolder getProjectsFromFolder2 3��3 o      ���� 0 lfolder lFolder��  ��  1 w     454 L    66 n    787 2   ��
�� 
FCpr8 o    ���� 0 lfolder lFolder5�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  / 9:9 l     ��������  ��  ��  : ;<; l      ��=>��  = 3 - 1a: tasks and utility associated with tasks    > �?? Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s  < @A@ l     ��������  ��  ��  A BCB l      ��DE��  D � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document    E �FF�   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t  C GHG i    IJI I      ��K���� 0 gettasks getTasksK LML o      ���� 0 	ldocument 	lDocumentM N��N o      �� 0 lprojectlist lProjectList��  ��  J w     *OPO k    *QQ RSR r    TUT n    VWV 2   �~
�~ 
FCacW o    �}�} 0 	ldocument 	lDocumentU o      �|�| 0 tasklist taskListS XYX X    'Z�{[Z r    "\]\ b     ^_^ o    �z�z 0 tasklist taskList_ I    �y`�x�y *0 gettasksfromproject getTasksFromProject` a�wa o    �v�v 0 thisproject thisProject�w  �x  ] o      �u�u 0 tasklist taskList�{ 0 thisproject thisProject[ o    �t�t 0 lprojectlist lProjectListY b�sb L   ( *cc o   ( )�r�r 0 tasklist taskList�s  P�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  H ded l     �q�p�o�q  �p  �o  e fgf i    hih I      �nj�m�n ,0 gettasksfromdocument getTasksFromDocumentj k�lk o      �k�k 0 	ldocument 	lDocument�l  �m  i w     3lml k    3nn opo r    
qrq I    �js�i�j 0 getprojects getProjectss t�ht o    �g�g 0 	ldocument 	lDocument�h  �i  r o      �f�f 0 lprojectlist lProjectListp uvu r    wxw n    yzy 2   �e
�e 
FCacz o    �d�d 0 	ldocument 	lDocumentx o      �c�c 0 tasklist taskListv {|{ X    0}�b~} r   ! +� b   ! )��� o   ! "�a�a 0 tasklist taskList� I   " (�`��_�` 0 gettasks getTasks� ��^� o   # $�]�] 0 thisproject thisProject�^  �_  � o      �\�\ 0 tasklist taskList�b 0 thisproject thisProject~ o    �[�[ 0 lprojectlist lProjectList| ��Z� L   1 3�� o   1 2�Y�Y 0 tasklist taskList�Z  m�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  g ��� l     �X�W�V�X  �W  �V  � ��� i    ��� I      �U��T�U *0 gettasksfromproject getTasksFromProject� ��S� o      �R�R 0 lproject lProject�S  �T  � w     ��� L    �� n    ��� 2   �Q
�Q 
FCac� o    �P�P 0 lproject lProject��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �O�N�M�O  �N  �M  � ��� l      �L���L  � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
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
 �1�1 0 lprojectlist lProjectList� ��0� L   < >�� o   < =�/�/ 0 projectlist projectList�0  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �.�-�,�.  �-  �,  � ��� i     #��� I      �+��*�+ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists� ��)� o      �(�( 0 lprojectlist lProjectList�)  �*  � w     2��� k    2�� ��� r    ��� J    �'�'  � o      �&�& 0 projectlist projectList� ��� X    /��%�� Z    *���$�#� =   ��� n   ��� 1    �"
�" 
FC.A� o    �!�! 0 thisproject thisProject� m    � 
�  boovtrue� r    &��� b    $��� o     �� 0 projectlist projectList� J     #�� ��� o     !�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�$  �#  �% 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� ��� L   0 2�� o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� i   $ '��� I      ���� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists� ��� o      �� 0 lprojectlist lProjectList�  �  � w     2��� k    2�� ��� r    ��� J    ��  � o      �� 0 projectlist projectList� ��� X    /���� Z    *����� =   ��� n   � � 1    �
� 
FC.A  o    �� 0 thisproject thisProject� m    �

�
 boovfals� r    & b    $ o     �	�	 0 projectlist projectList J     # � o     !�� 0 thisproject thisProject�   o      �� 0 projectlist projectList�  �  � 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� � L   0 2 o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � 	
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
�� boovtrue_ o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask7 o   - .���� 0 tasklist taskList5 `��` Z   s �ab����a o   s t���� 0 flag  b r   w ~cdc b   w |efe o   w x���� 0 projectlist projectListf J   x {gg h��h o   x y���� 0 thisproject thisProject��  d o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject( o    ���� 0 lprojectlist lProjectList& i��i L   � �jj o   � ����� 0 projectlist projectList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   klk l     ��������  ��  ��  l mnm l      ��op��  o � � 
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
 ���� 0 lprojectlist lProjectList� ���� L   v x�� o   v w���� 0 projectlist projectList��  {�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  s ��� l     ��������  ��  ��  � ��� l      ������  � � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   � ��� �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
� ��� i   0 3��� I      ������� 20 filterforcompletedtasks filterForCompletedTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n    ��� 1    ��
�� 
FCcd� o    �� 0 thistask thisTask� m    �~
�~ boovtrue� r    &��� b    $��� o     �}�} 0 tasklist taskList� J     #�� ��|� o     !�{�{ 0 thistask thisTask�|  � o      �z�z 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 �y�y 0 	ltasklist 	lTaskList� ��x� L   0 2�� o   0 1�w�w 0 tasklist taskList�x  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �v�u�t�v  �u  �t  � ��� i   4 7��� I      �s��r�s >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      �q�q 0 	ltasklist 	lTaskList� ��p� o      �o�o 0 ldate lDate�p  �r  � w     <��� k    <�� ��� r    ��� J    �n�n  � o      �m�m 0 tasklist taskList� ��� X    9��l�� k    4�� ��� r    ��� n   � � 1    �k
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
 �\�\ 0 	ltasklist 	lTaskList� �[ L   : < o   : ;�Z�Z 0 tasklist taskList�[  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     �Y�X�W�Y  �X  �W    i   8 ; I      �V�U�V 40 filterforincompletetasks filterForIncompleteTasks �T o      �S�S 0 	ltasklist 	lTaskList�T  �U   w     2 k    2   r    !"! J    �R�R  " o      �Q�Q 0 tasklist taskList  #$# X    /%�P&% Z    *'(�O�N' >   )*) n    +,+ 1    �M
�M 
FCcd, o    �L�L 0 thistask thisTask* m    �K
�K boovtrue( r    &-.- b    $/0/ o     �J�J 0 tasklist taskList0 J     #11 2�I2 o     !�H�H 0 thistask thisTask�I  . o      �G�G 0 tasklist taskList�O  �N  �P 0 thistask thisTask& o   
 �F�F 0 	ltasklist 	lTaskList$ 3�E3 L   0 244 o   0 1�D�D 0 tasklist taskList�E  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   565 l     �C�B�A�C  �B  �A  6 787 i   < ?9:9 I      �@;�?�@ 80 filterfornonrepeatingtasks filterForNonRepeatingTasks; <�>< o      �=�= 0 	ltasklist 	lTaskList�>  �?  : w     2=>= k    2?? @A@ r    BCB J    �<�<  C o      �;�; 0 tasklist taskListA DED X    /F�:GF Z    *HI�9�8H =   JKJ n   LML 1    �7
�7 
FCRpM o    �6�6 0 thistask thisTaskK m    �5
�5 
msngI r    &NON b    $PQP o     �4�4 0 tasklist taskListQ J     #RR S�3S o     !�2�2 0 thistask thisTask�3  O o      �1�1 0 tasklist taskList�9  �8  �: 0 thistask thisTaskG o   
 �0�0 0 	ltasklist 	lTaskListE T�/T L   0 2UU o   0 1�.�. 0 tasklist taskList�/  >�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  8 VWV l     �-�,�+�-  �,  �+  W XYX i   @ CZ[Z I      �*\�)�* 60 filterfortasksaddedondate filterForTasksAddedOnDate\ ]^] o      �(�( 0 	ltasklist 	lTaskList^ _�'_ o      �&�& 0 ldate lDate�'  �)  [ w     <`a` k    <bb cdc r    efe J    �%�%  f o      �$�$ 0 tasklist taskListd ghg X    9i�#ji k    4kk lml r    non n   pqp 1    �"
�" 
FCDaq o    �!�! 0 thistask thisTasko o      � �  0 
thistaskcd 
thisTaskCDm rsr r    "tut n     vwv 1     �
� 
dstrw o    �� 0 
thistaskcd 
thisTaskCDu o      �� (0 thistaskdatestring thisTaskDateStrings x�x Z   # 4yz��y =  # &{|{ o   # $�� (0 thistaskdatestring thisTaskDateString| o   $ %�� 0 ldate lDatez r   ) 0}~} b   ) .� o   ) *�� 0 tasklist taskList� J   * -�� ��� o   * +�� 0 thistask thisTask�  ~ o      �� 0 tasklist taskList�  �  �  �# 0 thistask thisTaskj o   
 �� 0 	ltasklist 	lTaskListh ��� L   : <�� o   : ;�� 0 tasklist taskList�  a�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  Y ��� l     ����  �  �  � ��� i   D G��� I      ���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��� o      �
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
 ���� 0 	ltasklist 	lTaskList� ���� L   � ��� o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   H K��� I      ������� 20 filterfortasksdueondate filterForTasksDueOnDate�    o      ���� 0 	ltasklist 	lTaskList �� o      ���� 0 ldate lDate��  ��  � w     F k    F  r    	 J    ����  	 o      ���� 0 tasklist taskList 
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
 ���� 0 	ltasklist 	lTaskList ,��, L   D F-- o   D E���� 0 tasklist taskList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ./. l     ��������  ��  ��  / 010 i   L O232 I      ��4���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate4 565 o      ���� 0 	ltasklist 	lTaskList6 7��7 o      ���� 0 ldate lDate��  ��  3 w     J898 k    J:: ;<; r    =>= J    ����  > o      ���� 0 tasklist taskList< ?@? X    GA��BA k    BCC DED r    FGF n   HIH 1    ��
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
 ���� 0 	ltasklist 	lTaskList@ d��d L   H Jee o   H I���� 0 tasklist taskList��  9�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  1 fgf l     ��������  ��  ��  g hih i   P Sjkj I      ��l���� .0 filterfortaskswithtag filterForTasksWithTagl mnm o      ���� 0 	ltasklist 	lTaskListn o��o o      ���� 0 tag  ��  ��  k w     @pqp k    @rr sts r    uvu J    ����  v o      ���� 0 tasklist taskListt wxw X    =y��zy k    8{{ |}| I    ��~��
�� .ascrcmnt****      � ****~ b    � m    �� ���   G e t t i n g   n o t e   o f  � n   ��� 1    ��
�� 
pnam� o    ���� 0 thistask thisTask��  } ��� r   ! &��� n   ! $��� 1   " $�
� 
FCno� o   ! "�~�~ 0 thistask thisTask� o      �}�} 0 itemnote itemNote� ��|� Z   ' 8���{�z� l  ' *��y�x� E   ' *��� o   ' (�w�w 0 itemnote itemNote� o   ( )�v�v 0 tag  �y  �x  � r   - 4��� b   - 2��� o   - .�u�u 0 tasklist taskList� J   . 1�� ��t� o   . /�s�s 0 thistask thisTask�t  � o      �r�r 0 tasklist taskList�{  �z  �|  �� 0 thistask thisTaskz o   
 �q�q 0 	ltasklist 	lTaskListx ��p� L   > @�� o   > ?�o�o 0 tasklist taskList�p  q�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  i ��� l     �n�m�l�n  �m  �l  � ��� i   T W��� I      �k��j�k $0 filterforflagged filterForFlagged� ��i� o      �h�h 0 	ltasklist 	lTaskList�i  �j  � w     2��� k    2�� ��� r    ��� J    �g�g  � o      �f�f 0 tasklist taskList� ��� X    /��e�� Z    *���d�c� =   ��� n    ��� 1    �b
�b 
FCfl� o    �a�a 0 thistask thisTask� m    �`
�` boovtrue� r    &��� b    $��� o     �_�_ 0 tasklist taskList� J     #�� ��^� o     !�]�] 0 thistask thisTask�^  � o      �\�\ 0 tasklist taskList�d  �c  �e 0 thistask thisTask� o   
 �[�[ 0 	ltasklist 	lTaskList� ��Z� L   0 2�� o   0 1�Y�Y 0 tasklist taskList�Z  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �X�W�V�X  �W  �V  � ��� l      �U���U  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     �T�S�R�T  �S  �R  � ��� l      �Q���Q  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   X [��� I      �P��O�P 0 tagtask tagTask� ��� o      �N�N 0 ltask lTask� ��M� o      �L�L 0 ltag lTag�M  �O  � w     $��� k    $�� ��� r    ��� n    ��� 1    �K
�K 
FCno� o    �J�J 0 ltask lTask� o      �I�I 0 itemnote itemNote� ��H� Z    $���G�F� l   ��E�D� H    �� E    ��� o    	�C�C 0 itemnote itemNote� o   	 
�B�B 0 ltag lTag�E  �D  � k     �� ��� r    ��� n    ��� 1    �A
�A 
FCno� o    �@�@ 0 ltask lTask� o      �?�? 0 itemnote itemNote� ��� r    ��� b    ��� o    �>�> 0 itemnote itemNote� o    �=�= 0 ltag lTag� o      �<�< 0 itemnote itemNote� ��;� r     ��� o    �:�: 0 itemnote itemNote� l     ��9�8� n      ��� 1    �7
�7 
FCno� o    �6�6 0 ltask lTask�9  �8  �;  �G  �F  �H  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �5�4�3�5  �4  �3  � ��� l      �2���2  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   \ _��� I      �1��0�1 0 	untagtask 	untagTask� � � o      �/�/ 0 ltask lTask  �. o      �-�- 0 ltag lTag�.  �0  � w     A k    A  r     n    	
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
FCno8 o   9 :�� 0 ltask lTask�  �  �  �%  �$  �&  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � 9:9 l     ���
�  �  �
  : ;<; l      �	=>�	  = 0 * remove any tags in the provided tag list    > �?? T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  < @A@ i   ` cBCB I      �D�� 0 	cleartask 	clearTaskD EFE o      �� 0 ltask lTaskF G�G o      �� 0 ltaglist lTagList�  �  C w     $HIH X    $J�KJ k    LL MNM I   �O�
� .ascrcmnt****      � ****O o    � �  0 atag aTag�  N P��P I    ��Q���� 0 	untagtask 	untagTaskQ RSR o    ���� 0 ltask lTaskS T��T o    ���� 0 atag aTag��  ��  ��  � 0 atag aTagK o    ���� 0 ltaglist lTagListI�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  A UVU l     ��������  ��  ��  V WXW l      ��YZ��  Y    SECTION 5: other utility    Z �[[ 4   S E C T I O N   5 :   o t h e r   u t i l i t y  X \��\ l     ��������  ��  ��  ��  � ��]^_`abcdefghijklmnopqrstuv��  ] ���������������������������������������������������� 0 
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
docu� ���  c E X g b J E s 3 1 n
�M kfrmID  � �L��L h� h ����������������������������������������������������������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-� 	.	. 	/�K�J	/ �I	0�I%	0% 	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_	`	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
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













 
!
"
#
$
%
&
'
(
)
*
+
,
-
.
/
0
1
2
3
4
5
6
7
8
9
:
;
<
=
>
?
@
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U	1 
V
V 
W�H
X�G
W  ��F
Y�E
�F 
docu
Y �
Z
Z  c E X g b J E s 3 1 n
�E kfrmID  
�H 
FCpr
X �
[
[  h s y l k k z 3 a U D
�G kfrmID  	2 
\
\ 
]�D
^�C
]  ��B
_�A
�B 
docu
_ �
`
`  c E X g b J E s 3 1 n
�A kfrmID  
�D 
FCpr
^ �
a
a  p D E - Q Y 9 q 2 _ u
�C kfrmID  	3 
b
b 
c�@
d�?
c  ��>
e�=
�> 
docu
e �
f
f  c E X g b J E s 3 1 n
�= kfrmID  
�@ 
FCpr
d �
g
g  k 6 l - N 8 j 5 5 r B
�? kfrmID  	4 
h
h 
i�<
j�;
i  ��:
k�9
�: 
docu
k �
l
l  c E X g b J E s 3 1 n
�9 kfrmID  
�< 
FCpr
j �
m
m  k H c i J w 8 W X g 6
�; kfrmID  	5 
n
n 
o�8
p�7
o  ��6
q�5
�6 
docu
q �
r
r  c E X g b J E s 3 1 n
�5 kfrmID  
�8 
FCpr
p �
s
s  p n 9 I 7 v G F S z X
�7 kfrmID  	6 
t
t 
u�4
v�3
u  ��2
w�1
�2 
docu
w �
x
x  c E X g b J E s 3 1 n
�1 kfrmID  
�4 
FCpr
v �
y
y  o d 5 G J W o s c c Y
�3 kfrmID  	7 
z
z 
{�0
|�/
{  ��.
}�-
�. 
docu
} �
~
~  c E X g b J E s 3 1 n
�- kfrmID  
�0 
FCpr
| �

  c 1 X i E - R 1 v S v
�/ kfrmID  	8 
�
� 
��,
��+
�  ��*
��)
�* 
docu
� �
�
�  c E X g b J E s 3 1 n
�) kfrmID  
�, 
FCpr
� �
�
�  j E a 1 B F A J J 9 H
�+ kfrmID  	9 
�
� 
��(
��'
�  ��&
��%
�& 
docu
� �
�
�  c E X g b J E s 3 1 n
�% kfrmID  
�( 
FCpr
� �
�
�  b _ q h u D y 7 Y C b
�' kfrmID  	: 
�
� 
��$
��#
�  ��"
��!
�" 
docu
� �
�
�  c E X g b J E s 3 1 n
�! kfrmID  
�$ 
FCpr
� �
�
�  n P W F n 8 f - B Q x
�# kfrmID  	; 
�
� 
�� 
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
�  
FCpr
� �
�
�  b T s 3 4 L r n s d h
� kfrmID  	< 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  o f b K F r H z g Q 9
� kfrmID  	= 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  e C 6 - f Z B W G N v
� kfrmID  	> 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  j - I w o A 7 H J q b
� kfrmID  	? 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  b a w x U S J G D c A
� kfrmID  	@ 
�
� 
��
��
�  ��

��	
�
 
docu
� �
�
�  c E X g b J E s 3 1 n
�	 kfrmID  
� 
FCpr
� �
�
�  o 6 h I G X W h a f k
� kfrmID  	A 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  d u 8 x A H M l o z Q
� kfrmID  	B 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr
� �
�
�  g B F S F T N p r H x
� kfrmID  	C 
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�  
FCpr
� �
�
�  b N u u w 0 b j x - Y
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  o t X H f d R Z t s R
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  k Y I B C a a j N v V
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  c i f 3 D N 9 Y E F _
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  h 4 m 7 J 2 5 K i Q S
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  d V Y Q - 2 E m W T H
�� kfrmID  	I 
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  h f O z L L u S b q 2
�� kfrmID  	J 
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  b J p n 0 A B Y 3 Q z
�� kfrmID  	K 
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  d - Y G 1 h N Y v 3 E
�� kfrmID  	L 
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
�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr
� �
�
�  g r N S M 7 s V z - W
�� kfrmID  	M 
�
� 
��� ��
�  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr  �  e A l C X R 6 V J 1 L
�� kfrmID  	N  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �		  m Y h M R O N h S U L
�� kfrmID  	O 

 ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  a - w o k N Y a A q E
�� kfrmID  	P  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  j H _ Y x j I J 0 C _
�� kfrmID  	Q  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  m c n R g g 4 4 w H x
�� kfrmID  	R  ����  �����
�� 
docu �    c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �!!  j 5 t y v o j P _ q _
�� kfrmID  	S "" #��$��#  ���%��
�� 
docu% �&&  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr$ �''  e - t 3 4 I R E K n 5
�� kfrmID  	T (( )��*��)  ���+��
�� 
docu+ �,,  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr* �--  p s D s d Y N H s _ n
�� kfrmID  	U .. /��0��/  ���1��
�� 
docu1 �22  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr0 �33  l _ p - - k F m p B 3
�� kfrmID  	V 44 5��6��5  ���7��
�� 
docu7 �88  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr6 �99  d l T z I 4 O 0 d z m
�� kfrmID  	W :: ;��<��;  ���=��
�� 
docu= �>>  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr< �??  j l E r r q N g N d s
�� kfrmID  	X @@ A��B��A  ���C��
�� 
docuC �DD  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprB �EE  b U _ f R j N v Y 6 M
�� kfrmID  	Y FF G��H��G  ���I��
�� 
docuI �JJ  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprH �KK  b 9 X x J k 8 Y J e n
�� kfrmID  	Z LL M��N��M  ���O��
�� 
docuO �PP  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprN �QQ  j E 2 D Z F R K h O Z
�� kfrmID  	[ RR S��T��S  ���U��
�� 
docuU �VV  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprT �WW  c l V q h Z M e n r g
�� kfrmID  	\ XX Y��Z��Y  ���[��
�� 
docu[ �\\  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprZ �]]  h 2 V 7 R C 3 P _ s a
�� kfrmID  	] ^^ _��`��_  ���a��
�� 
docua �bb  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr` �cc  o j T j - 0 T t 0 6 I
�� kfrmID  	^ dd e��f��e  ���g��
�� 
docug �hh  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprf �ii  m L - 4 q 2 G W e J Y
�� kfrmID  	_ jj k��l��k  ���m��
�� 
docum �nn  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprl �oo  o 1 F 6 S J K K o U y
�� kfrmID  	` pp q��r��q  ���s��
�� 
docus �tt  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprr �uu  o 8 R r o 6 y x W W W
�� kfrmID  	a vv w��x��w  ���y��
�� 
docuy �zz  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprx �{{  j H M u Y a - J N A A
�� kfrmID  	b || }��~��}  �����
�� 
docu ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr~ ���  c J _ h F t l T e x b
�� kfrmID  	c �� ������  ��~��}
�~ 
docu� ���  c E X g b J E s 3 1 n
�} kfrmID  
�� 
FCpr� ���  o w i j 0 D R T J R Q
� kfrmID  	d �� ��|��{�  ��z��y
�z 
docu� ���  c E X g b J E s 3 1 n
�y kfrmID  
�| 
FCpr� ���  l 4 4 8 g f E 6 W E J
�{ kfrmID  	e �� ��x��w�  ��v��u
�v 
docu� ���  c E X g b J E s 3 1 n
�u kfrmID  
�x 
FCpr� ���  b 1 P g p L p _ v c i
�w kfrmID  	f �� ��t��s�  ��r��q
�r 
docu� ���  c E X g b J E s 3 1 n
�q kfrmID  
�t 
FCpr� ���  n k B Y C q h e r Q e
�s kfrmID  	g �� ��p��o�  ��n��m
�n 
docu� ���  c E X g b J E s 3 1 n
�m kfrmID  
�p 
FCpr� ���  j o 9 W _ P Y P d H 9
�o kfrmID  	h �� ��l��k�  ��j��i
�j 
docu� ���  c E X g b J E s 3 1 n
�i kfrmID  
�l 
FCpr� ���  n W s D n l B 6 o V X
�k kfrmID  	i �� ��h��g�  ��f��e
�f 
docu� ���  c E X g b J E s 3 1 n
�e kfrmID  
�h 
FCpr� ���  j u 1 Q r J 1 m q s f
�g kfrmID  	j �� ��d��c�  ��b��a
�b 
docu� ���  c E X g b J E s 3 1 n
�a kfrmID  
�d 
FCpr� ���  n - f - j l r i m A j
�c kfrmID  	k �� ��`��_�  ��^��]
�^ 
docu� ���  c E X g b J E s 3 1 n
�] kfrmID  
�` 
FCpr� ���  f G w 8 3 c G G f u i
�_ kfrmID  	l �� ��\��[�  ��Z��Y
�Z 
docu� ���  c E X g b J E s 3 1 n
�Y kfrmID  
�\ 
FCpr� ���  p U F D 6 I U F P s K
�[ kfrmID  	m �� ��X��W�  ��V��U
�V 
docu� ���  c E X g b J E s 3 1 n
�U kfrmID  
�X 
FCpr� ���  d l r i S F O v n _ 3
�W kfrmID  	n �� ��T��S�  ��R��Q
�R 
docu� ���  c E X g b J E s 3 1 n
�Q kfrmID  
�T 
FCpr� ���  b U 1 c 5 T v l u K 9
�S kfrmID  	o �� ��P��O�  ��N��M
�N 
docu� ���  c E X g b J E s 3 1 n
�M kfrmID  
�P 
FCpr� ���  i F l Q 0 9 R 3 l t p
�O kfrmID  	p �� ��L��K�  ��J��I
�J 
docu� ���  c E X g b J E s 3 1 n
�I kfrmID  
�L 
FCpr� ���  f f E C g E O T e x b
�K kfrmID  	q �� ��H��G�  ��F��E
�F 
docu� ���  c E X g b J E s 3 1 n
�E kfrmID  
�H 
FCpr� ���  e W Q U G 7 Y z H I u
�G kfrmID  	r �� ��D��C�  ��B��A
�B 
docu� ���  c E X g b J E s 3 1 n
�A kfrmID  
�D 
FCpr� ���  h J B 8 f J w 3 z b X
�C kfrmID  	s �� ��@��?�  ��>��=
�> 
docu� ���  c E X g b J E s 3 1 n
�= kfrmID  
�@ 
FCpr� ���  f P X a U F - R d w y
�? kfrmID  	t �� ��<��;�  ��:��9
�: 
docu� ���  c E X g b J E s 3 1 n
�9 kfrmID  
�< 
FCpr� ���  f _ D v X T Q e U H n
�; kfrmID  	u �� ��8��7�  ��6��5
�6 
docu� ���  c E X g b J E s 3 1 n
�5 kfrmID  
�8 
FCpr� ���  f A 8 W D q L R r P e
�7 kfrmID  	v �� ��4��3�  ��2��1
�2 
docu� ���  c E X g b J E s 3 1 n
�1 kfrmID  
�4 
FCpr� ���  j p g c d f 0 o X k M
�3 kfrmID  	w �� ��0��/�  ��.��-
�. 
docu� ���  c E X g b J E s 3 1 n
�- kfrmID  
�0 
FCpr� ���  l W q R M q N 5 _ u q
�/ kfrmID  	x    �,�+  ��*�)
�* 
docu �  c E X g b J E s 3 1 n
�) kfrmID  
�, 
FCpr �  j Z i k u t X k U Z V
�+ kfrmID  	y  �(�'  ��&	�%
�& 
docu	 �

  c E X g b J E s 3 1 n
�% kfrmID  
�( 
FCpr �  l u o i t _ b x 1 z A
�' kfrmID  	z  �$�#  ��"�!
�" 
docu �  c E X g b J E s 3 1 n
�! kfrmID  
�$ 
FCpr �  l 3 t t W d 1 B f e U
�# kfrmID  	{  � �  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
�  
FCpr �  k C n i s T 0 1 Q c O
� kfrmID  	|  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr �  l 7 t W J E V R L i u
� kfrmID  	}  � �  ��!�
� 
docu! �""  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr  �##  a z j R Q N b h M - L
� kfrmID  	~ $$ %�&�%  ��'�
� 
docu' �((  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr& �))  h V E u u 5 I n 8 L O
� kfrmID  	 ** +�,�+  ��-�
� 
docu- �..  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr, �//  f - K a E i e F w d 4
� kfrmID  	� 00 1�2�1  ��
3�	
�
 
docu3 �44  c E X g b J E s 3 1 n
�	 kfrmID  
� 
FCpr2 �55  l c M M a e c 5 b A I
� kfrmID  	� 66 7�8�7  ��9�
� 
docu9 �::  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr8 �;;  j p S K f n P g 1 - P
� kfrmID  	� << =�>�=  ��?�
� 
docu? �@@  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr> �AA  o c U i j 7 A 3 V P F
� kfrmID  	� BB C� D��C  ���E��
�� 
docuE �FF  c E X g b J E s 3 1 n
�� kfrmID  
�  
FCprD �GG  o r n B w 2 m K _ y o
�� kfrmID  	� HH I��J��I  ���K��
�� 
docuK �LL  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprJ �MM  h Z p f l I D a - 7 o
�� kfrmID  	� NN O��P��O  ���Q��
�� 
docuQ �RR  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprP �SS  g L E 6 W S _ d v 1 Z
�� kfrmID  	� TT U��V��U  ���W��
�� 
docuW �XX  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprV �YY  b d n z - K Q Z t t 7
�� kfrmID  	� ZZ [��\��[  ���]��
�� 
docu] �^^  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr\ �__  h L u O C b 8 z r z 9
�� kfrmID  	� `` a��b��a  ���c��
�� 
docuc �dd  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprb �ee  c f z p 5 g Y y R t m
�� kfrmID  	� ff g��h��g  ���i��
�� 
docui �jj  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprh �kk  m X v M U f w N v 9 E
�� kfrmID  	� ll m��n��m  ���o��
�� 
docuo �pp  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprn �qq  a v c 0 3 l 0 C b I F
�� kfrmID  	� rr s��t��s  ���u��
�� 
docuu �vv  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprt �ww  l q L K E Q H Z 3 w B
�� kfrmID  	� xx y��z��y  ���{��
�� 
docu{ �||  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprz �}}  j 1 K A 2 - g 6 G Z S
�� kfrmID  	� ~~ �����  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n 4 k 4 x Z I I v c p
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  o Z 4 7 h W 1 q W O f
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  a 0 9 u V w 4 Y 8 N 9
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  h G Q L 8 c O b u 3 s
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  h H 0 h H E G N T R l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n g p 3 0 m V L f g a
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  c O y e W K T m Z z i
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  a r O A n 2 H A Y M s
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  h u e n j g a z 8 o c
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  g 7 S A 4 F 2 v p 6 p
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  b A t S I h B l w 1 6
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f O D m _ q Q a n 8 8
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k F m k v 6 F 1 d R o
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  l d r q T f 1 f 5 3 w
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f 2 s s D i 4 9 g o D
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  l J G b X C a K p 0 l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f a M 6 x - z e u A n
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k N w 8 g T q M a 1 a
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k t f F n D 8 T m t z
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  e C y 5 h T P q C 9 K
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  h 1 H - c 9 W N C R x
�� kfrmID  	� �� �������  ������
�� 
docu� �    c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� �  b 3 n e X i x 9 Q I c
�� kfrmID  	�  ���  ��~�}
�~ 
docu �  c E X g b J E s 3 1 n
�} kfrmID  
�� 
FCpr �  n 2 S 8 4 g M 6 5 c V
� kfrmID  	�  	�|
�{	  ��z�y
�z 
docu �  c E X g b J E s 3 1 n
�y kfrmID  
�| 
FCpr
 �  a s r E J a Q j t r V
�{ kfrmID  	�  �x�w  ��v�u
�v 
docu �  c E X g b J E s 3 1 n
�u kfrmID  
�x 
FCpr �  o t x Q K v 8 K y Z J
�w kfrmID  	�  �t�s  ��r�q
�r 
docu �  c E X g b J E s 3 1 n
�q kfrmID  
�t 
FCpr �  j P F S g R X E k w J
�s kfrmID  	�  �p�o  ��n�m
�n 
docu �  c E X g b J E s 3 1 n
�m kfrmID  
�p 
FCpr �  m a 4 K X 9 1 N G X s
�o kfrmID  	�    !�l"�k!  ��j#�i
�j 
docu# �$$  c E X g b J E s 3 1 n
�i kfrmID  
�l 
FCpr" �%%  f X B A h x G X u 9 T
�k kfrmID  	� && '�h(�g'  ��f)�e
�f 
docu) �**  c E X g b J E s 3 1 n
�e kfrmID  
�h 
FCpr( �++  i - Q S B Y f K L 9 m
�g kfrmID  	� ,, -�d.�c-  ��b/�a
�b 
docu/ �00  c E X g b J E s 3 1 n
�a kfrmID  
�d 
FCpr. �11  l 9 1 T N X g I M c C
�c kfrmID  	� 22 3�`4�_3  ��^5�]
�^ 
docu5 �66  c E X g b J E s 3 1 n
�] kfrmID  
�` 
FCpr4 �77  m R n i r f o F J N B
�_ kfrmID  	� 88 9�\:�[9  ��Z;�Y
�Z 
docu; �<<  c E X g b J E s 3 1 n
�Y kfrmID  
�\ 
FCpr: �==  b R V w j V 0 K D s Z
�[ kfrmID  	� >> ?�X@�W?  ��VA�U
�V 
docuA �BB  c E X g b J E s 3 1 n
�U kfrmID  
�X 
FCpr@ �CC  i D a Q N c u O E G W
�W kfrmID  	� DD E�TF�SE  ��RG�Q
�R 
docuG �HH  c E X g b J E s 3 1 n
�Q kfrmID  
�T 
FCprF �II  h 2 H g O j R c p x 6
�S kfrmID  	� JJ K�PL�OK  ��NM�M
�N 
docuM �NN  c E X g b J E s 3 1 n
�M kfrmID  
�P 
FCprL �OO  o U q E 0 Y Y e x f 1
�O kfrmID  	� PP Q�LR�KQ  ��JS�I
�J 
docuS �TT  c E X g b J E s 3 1 n
�I kfrmID  
�L 
FCprR �UU  e 5 b F D v K E 4 1 R
�K kfrmID  	� VV W�HX�GW  ��FY�E
�F 
docuY �ZZ  c E X g b J E s 3 1 n
�E kfrmID  
�H 
FCprX �[[  h N t l h H K c i X r
�G kfrmID  	� \\ ]�D^�C]  ��B_�A
�B 
docu_ �``  c E X g b J E s 3 1 n
�A kfrmID  
�D 
FCpr^ �aa  k J V Y 3 w Q B 2 G q
�C kfrmID  	� bb c�@d�?c  ��>e�=
�> 
docue �ff  c E X g b J E s 3 1 n
�= kfrmID  
�@ 
FCprd �gg  k U J f u i l 6 _ 0 u
�? kfrmID  	� hh i�<j�;i  ��:k�9
�: 
docuk �ll  c E X g b J E s 3 1 n
�9 kfrmID  
�< 
FCprj �mm  d 3 f l q T V J g 8 u
�; kfrmID  	� nn o�8p�7o  ��6q�5
�6 
docuq �rr  c E X g b J E s 3 1 n
�5 kfrmID  
�8 
FCprp �ss  a o Z R 5 P C V p M R
�7 kfrmID  	� tt u�4v�3u  ��2w�1
�2 
docuw �xx  c E X g b J E s 3 1 n
�1 kfrmID  
�4 
FCprv �yy  d C y H 9 j g S h v I
�3 kfrmID  	� zz {�0|�/{  ��.}�-
�. 
docu} �~~  c E X g b J E s 3 1 n
�- kfrmID  
�0 
FCpr| �  m P m E a B T 5 D j r
�/ kfrmID  	� �� ��,��+�  ��*��)
�* 
docu� ���  c E X g b J E s 3 1 n
�) kfrmID  
�, 
FCpr� ���  g b x b V j z c O y 2
�+ kfrmID  	� �� ��(��'�  ��&��%
�& 
docu� ���  c E X g b J E s 3 1 n
�% kfrmID  
�( 
FCpr� ���  f g G A U Q 1 3 2 4 Z
�' kfrmID  	� �� ��$��#�  ��"��!
�" 
docu� ���  c E X g b J E s 3 1 n
�! kfrmID  
�$ 
FCpr� ���  k W P 7 b 0 7 y x P u
�# kfrmID  	� �� �� ���  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�  
FCpr� ���  l a - N s d 2 u A Z G
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  g G j S o e d v y 7 m
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  h c b g I P N _ 2 g g
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  c k r S c Y Z A R 7 m
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  k d y b S E D _ r g V
� kfrmID  	� �� �����  ��
��	
�
 
docu� ���  c E X g b J E s 3 1 n
�	 kfrmID  
� 
FCpr� ���  b n 7 8 D t Q q K n D
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  l C D D - - 7 Q 5 - m
� kfrmID  	� �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  m X D F B I f D _ Z T
� kfrmID  	� �� �� ����  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�  
FCpr� ���  c A a i i 5 g L - y Q
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  e 5 3 v R D 6 q X o A
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  d z 6 b g 2 r k Q m u
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  d X w j 4 8 b g i a P
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  j x Y P R U s m B e m
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k d g M 1 H Z P X j l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f v E a B D I A y b B
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  b O c s w m 8 Z b L N
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  d i Z U w h O q B k -
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  e c 8 E g z q C a K 5
�� kfrmID  	� �� ��� ���  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr  �  c X o 0 x G 6 K o G 4
�� kfrmID  	�  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �		  m G Q h a k _ w T c s
�� kfrmID  	� 

 ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  j - C O i o p j I D J
�� kfrmID  	�  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  j 8 w 9 u x y w t p w
�� kfrmID  	�  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  i g V g e 6 _ 1 s 4 D
�� kfrmID  	�  ����  �����
�� 
docu �    c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �!!  d i z 4 Z I q j q N _
�� kfrmID  	� "" #��$��#  ���%��
�� 
docu% �&&  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr$ �''  j t 2 J I 2 n B - k a
�� kfrmID  	� (( )��*��)  ���+��
�� 
docu+ �,,  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr* �--  o N D c v N A r I 7 P
�� kfrmID  	� .. /��0��/  ���1��
�� 
docu1 �22  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr0 �33  f W 5 m n Z P H r P I
�� kfrmID  	� 44 5��6��5  ���7��
�� 
docu7 �88  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr6 �99  n Z J A e Y 1 F Y i e
�� kfrmID  	� :: ;��<��;  ���=��
�� 
docu= �>>  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr< �??  n Q K O i A q I g l i
�� kfrmID  	� @@ A��B��A  ���C��
�� 
docuC �DD  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprB �EE  f P I n O e b Y c f S
�� kfrmID  	� FF G��H��G  ���I��
�� 
docuI �JJ  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprH �KK  b P k W V _ V 1 R 1 O
�� kfrmID  	� LL M��N��M  ���O��
�� 
docuO �PP  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprN �QQ  n G l v I N U l P j Q
�� kfrmID  	� RR S��T��S  ���U��
�� 
docuU �VV  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprT �WW  c c K G g j R z Z q 2
�� kfrmID  	� XX Y��Z��Y  ���[��
�� 
docu[ �\\  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprZ �]]  e - 4 J 1 b 1 q l v M
�� kfrmID  	� ^^ _��`��_  ���a��
�� 
docua �bb  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr` �cc  k c Y 7 n M q T 9 i F
�� kfrmID  	� dd e��f��e  ���g��
�� 
docug �hh  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprf �ii  k V X r D x t f m R h
�� kfrmID  	� jj k��l��k  ���m��
�� 
docum �nn  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprl �oo  h j o r 6 U J N N D 2
�� kfrmID  	� pp q��r��q  ���s��
�� 
docus �tt  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprr �uu  f c R M h K N 7 3 R 4
�� kfrmID  	� vv w��x��w  ���y��
�� 
docuy �zz  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprx �{{  b x U G t s R D Z 2 -
�� kfrmID  	� || }��~��}  �����
�� 
docu ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr~ ���  n 2 Z w g w H q w N 6
�� kfrmID  	� �� ������  ��~��}
�~ 
docu� ���  c E X g b J E s 3 1 n
�} kfrmID  
�� 
FCpr� ���  j V E W f M 4 A 4 u c
� kfrmID  	� �� ��|��{�  ��z��y
�z 
docu� ���  c E X g b J E s 3 1 n
�y kfrmID  
�| 
FCpr� ���  a D f n 9 V 8 Z C U e
�{ kfrmID  	� �� ��x��w�  ��v��u
�v 
docu� ���  c E X g b J E s 3 1 n
�u kfrmID  
�x 
FCpr� ���  o q g e 7 M 5 v Q j W
�w kfrmID  	� �� ��t��s�  ��r��q
�r 
docu� ���  c E X g b J E s 3 1 n
�q kfrmID  
�t 
FCpr� ���  h 1 w q o 3 u T M u X
�s kfrmID  	� �� ��p��o�  ��n��m
�n 
docu� ���  c E X g b J E s 3 1 n
�m kfrmID  
�p 
FCpr� ���  p Y H - F j B y w y g
�o kfrmID  	� �� ��l��k�  ��j��i
�j 
docu� ���  c E X g b J E s 3 1 n
�i kfrmID  
�l 
FCpr� ���  g u M E n l 8 b N C C
�k kfrmID  	� �� ��h��g�  ��f��e
�f 
docu� ���  c E X g b J E s 3 1 n
�e kfrmID  
�h 
FCpr� ���  k 9 3 M X d 2 F 2 Q _
�g kfrmID  	� �� ��d��c�  ��b��a
�b 
docu� ���  c E X g b J E s 3 1 n
�a kfrmID  
�d 
FCpr� ���  b H 5 w e 4 m b I q 8
�c kfrmID  	� �� ��`��_�  ��^��]
�^ 
docu� ���  c E X g b J E s 3 1 n
�] kfrmID  
�` 
FCpr� ���  h 3 N v p X j 7 m H U
�_ kfrmID  	� �� ��\��[�  ��Z��Y
�Z 
docu� ���  c E X g b J E s 3 1 n
�Y kfrmID  
�\ 
FCpr� ���  h 4 K p J B x U q Q i
�[ kfrmID  	� �� ��X��W�  ��V��U
�V 
docu� ���  c E X g b J E s 3 1 n
�U kfrmID  
�X 
FCpr� ���  n d Q 0 3 l b i 1 _ O
�W kfrmID  	� �� ��T��S�  ��R��Q
�R 
docu� ���  c E X g b J E s 3 1 n
�Q kfrmID  
�T 
FCpr� ���  d I E _ S T w U S 9 9
�S kfrmID  	� �� ��P��O�  ��N��M
�N 
docu� ���  c E X g b J E s 3 1 n
�M kfrmID  
�P 
FCpr� ���  i P a - E u 7 - v - F
�O kfrmID  	� �� ��L��K�  ��J��I
�J 
docu� ���  c E X g b J E s 3 1 n
�I kfrmID  
�L 
FCpr� ���  n Y r F v V K g 6 a X
�K kfrmID  	� �� ��H��G�  ��F��E
�F 
docu� ���  c E X g b J E s 3 1 n
�E kfrmID  
�H 
FCpr� ���  h M W t p 8 _ C A x O
�G kfrmID  	� �� ��D��C�  ��B��A
�B 
docu� ���  c E X g b J E s 3 1 n
�A kfrmID  
�D 
FCpr� ���  g 5 M c e m A N R 4 V
�C kfrmID  	� �� ��@��?�  ��>��=
�> 
docu� ���  c E X g b J E s 3 1 n
�= kfrmID  
�@ 
FCpr� ���  m U Y _ b M F 1 - V 7
�? kfrmID  	� �� ��<��;�  ��:��9
�: 
docu� ���  c E X g b J E s 3 1 n
�9 kfrmID  
�< 
FCpr� ���  j Y D 9 g s 8 E P x A
�; kfrmID  	� �� ��8��7�  ��6��5
�6 
docu� ���  c E X g b J E s 3 1 n
�5 kfrmID  
�8 
FCpr� ���  a s s 3 g w 9 H a q S
�7 kfrmID  	� �� ��4��3�  ��2��1
�2 
docu� ���  c E X g b J E s 3 1 n
�1 kfrmID  
�4 
FCpr� ���  d L L Z V r 5 o i 1 u
�3 kfrmID  	� �� ��0��/�  ��.��-
�. 
docu� ���  c E X g b J E s 3 1 n
�- kfrmID  
�0 
FCpr� ���  k O v s 4 K 4 K z s 1
�/ kfrmID  	�    �,�+  ��*�)
�* 
docu �  c E X g b J E s 3 1 n
�) kfrmID  
�, 
FCpr �  g k K e 8 B S J s v x
�+ kfrmID  	�  �(�'  ��&	�%
�& 
docu	 �

  c E X g b J E s 3 1 n
�% kfrmID  
�( 
FCpr �  h s I X 4 u H p j 2 2
�' kfrmID  	�  �$�#  ��"�!
�" 
docu �  c E X g b J E s 3 1 n
�! kfrmID  
�$ 
FCpr �  f c T L m K i w y y 7
�# kfrmID  	�  � �  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
�  
FCpr �  i f J L a 5 d d 6 8 J
� kfrmID  	�  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr �  j 0 g S D x K G U H 6
� kfrmID  	�  � �  ��!�
� 
docu! �""  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr  �##  m Q 0 e r - o Z b w j
� kfrmID  	� $$ %�&�%  ��'�
� 
docu' �((  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr& �))  k i w O i 0 i F f 6 G
� kfrmID  	� ** +�,�+  ��-�
� 
docu- �..  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr, �//  a t A r 5 r t N 8 P U
� kfrmID  
  00 1�2�1  ��
3�	
�
 
docu3 �44  c E X g b J E s 3 1 n
�	 kfrmID  
� 
FCpr2 �55  i h R 1 t 3 z F a E i
� kfrmID  
 66 7�8�7  ��9�
� 
docu9 �::  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr8 �;;  p w 1 r U e C C V Y M
� kfrmID  
 << =�>�=  ��?�
� 
docu? �@@  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr> �AA  p 6 D L X G s m Q y S
� kfrmID  
 BB C� D��C  ���E��
�� 
docuE �FF  c E X g b J E s 3 1 n
�� kfrmID  
�  
FCprD �GG  i V z N a T q m 0 i I
�� kfrmID  
 HH I��J��I  ���K��
�� 
docuK �LL  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprJ �MM  d _ n k E r X n 6 s T
�� kfrmID  
 NN O��P��O  ���Q��
�� 
docuQ �RR  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprP �SS  l I w R I i c _ 8 B v
�� kfrmID  
 TT U��V��U  ���W��
�� 
docuW �XX  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprV �YY  f r j R s S N a _ h M
�� kfrmID  
 ZZ [��\��[  ���]��
�� 
docu] �^^  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr\ �__  m z g S e x d R i D x
�� kfrmID  
 `` a��b��a  ���c��
�� 
docuc �dd  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprb �ee  l h t 0 J p B 5 m y b
�� kfrmID  
	 ff g��h��g  ���i��
�� 
docui �jj  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprh �kk  f j 6 B 9 q c g E j A
�� kfrmID  

 ll m��n��m  ���o��
�� 
docuo �pp  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprn �qq  g k Y r H U l t 2 Z 0
�� kfrmID  
 rr s��t��s  ���u��
�� 
docuu �vv  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprt �ww  g 7 d d E - K W M L k
�� kfrmID  
 xx y��z��y  ���{��
�� 
docu{ �||  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCprz �}}  a H g i 4 T p M H e k
�� kfrmID  
 ~~ �����  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  i 1 D X _ S A R S f f
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  d d s h C q Y H k L t
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f f U H T M W 6 - a S
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n x O m T _ k m q V e
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  c 3 x X n V j C b R W
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n z l p Y - k 0 i 1 Z
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k W O D M k e M 6 P 9
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k 3 o A X F L D U J 7
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k R V I k o T v D A X
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  h O m 0 e I H H A l D
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n A U Q t M y w i 3 8
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f x 3 y B k d x Z t i
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  o x 0 s V Y L m 9 C T
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f Q r V H 2 b A 0 H b
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  j F k W b n l o j I L
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f P 3 J p l 6 u l z s
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  j _ g U T I h r 7 d C
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  g q H L g f l m K I C
�� kfrmID  
 �� ������  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCpr� ���  f Q D _ 8 Y v m 9 K X
� kfrmID  
  �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  p l J t x o h 0 F 5 p
� kfrmID  
! �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  f T Q x 4 x L V m J T
� kfrmID  
" �� �����  ����
� 
docu� �    c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� �  i h w t 6 Y 2 7 M Q K
� kfrmID  
#  ��  ��~�}
�~ 
docu �  c E X g b J E s 3 1 n
�} kfrmID  
� 
FCpr �  h b K C t G N A E A Q
� kfrmID  
$  	�|
�{	  ��z�y
�z 
docu �  c E X g b J E s 3 1 n
�y kfrmID  
�| 
FCpr
 �  k 9 - G P w V v M 7 5
�{ kfrmID  
%  �x�w  ��v�u
�v 
docu �  c E X g b J E s 3 1 n
�u kfrmID  
�x 
FCpr �  a q A - Z 0 F P v S X
�w kfrmID  
&  �t�s  ��r�q
�r 
docu �  c E X g b J E s 3 1 n
�q kfrmID  
�t 
FCpr �  a P n z S K L s A Y 0
�s kfrmID  
'  �p�o  ��n�m
�n 
docu �  c E X g b J E s 3 1 n
�m kfrmID  
�p 
FCpr �  o X H e p e V j J e d
�o kfrmID  
(    !�l"�k!  ��j#�i
�j 
docu# �$$  c E X g b J E s 3 1 n
�i kfrmID  
�l 
FCpr" �%%  b _ 6 P U X t s v F L
�k kfrmID  
) && '�h(�g'  ��f)�e
�f 
docu) �**  c E X g b J E s 3 1 n
�e kfrmID  
�h 
FCpr( �++  b p m I 6 c o c f P j
�g kfrmID  
* ,, -�d.�c-  ��b/�a
�b 
docu/ �00  c E X g b J E s 3 1 n
�a kfrmID  
�d 
FCpr. �11  e 9 P 2 w l 2 v h U -
�c kfrmID  
+ 22 3�`4�_3  ��^5�]
�^ 
docu5 �66  c E X g b J E s 3 1 n
�] kfrmID  
�` 
FCpr4 �77  o w r g M F f S _ L v
�_ kfrmID  
, 88 9�\:�[9  ��Z;�Y
�Z 
docu; �<<  c E X g b J E s 3 1 n
�Y kfrmID  
�\ 
FCpr: �==  i g M P o G N 7 n A a
�[ kfrmID  
- >> ?�X@�W?  ��VA�U
�V 
docuA �BB  c E X g b J E s 3 1 n
�U kfrmID  
�X 
FCpr@ �CC  c B s T E 0 k B i _ a
�W kfrmID  
. DD E�TF�SE  ��RG�Q
�R 
docuG �HH  c E X g b J E s 3 1 n
�Q kfrmID  
�T 
FCprF �II  l h p x G Z k U 1 E V
�S kfrmID  
/ JJ K�PL�OK  ��NM�M
�N 
docuM �NN  c E X g b J E s 3 1 n
�M kfrmID  
�P 
FCprL �OO  h d M T u x i f Q N 8
�O kfrmID  
0 PP Q�LR�KQ  ��JS�I
�J 
docuS �TT  c E X g b J E s 3 1 n
�I kfrmID  
�L 
FCprR �UU  c W 5 8 c A L O d Y y
�K kfrmID  
1 VV W�HX�GW  ��FY�E
�F 
docuY �ZZ  c E X g b J E s 3 1 n
�E kfrmID  
�H 
FCprX �[[  d p d n 6 O J H a 4 4
�G kfrmID  
2 \\ ]�D^�C]  ��B_�A
�B 
docu_ �``  c E X g b J E s 3 1 n
�A kfrmID  
�D 
FCpr^ �aa  a S j 8 Z R l u l j 7
�C kfrmID  
3 bb c�@d�?c  ��>e�=
�> 
docue �ff  c E X g b J E s 3 1 n
�= kfrmID  
�@ 
FCprd �gg  n D G 4 t u r u 3 B m
�? kfrmID  
4 hh i�<j�;i  ��:k�9
�: 
docuk �ll  c E X g b J E s 3 1 n
�9 kfrmID  
�< 
FCprj �mm  o 8 G g H z d W H M X
�; kfrmID  
5 nn o�8p�7o  ��6q�5
�6 
docuq �rr  c E X g b J E s 3 1 n
�5 kfrmID  
�8 
FCprp �ss  d k q f d x s 8 W 8 i
�7 kfrmID  
6 tt u�4v�3u  ��2w�1
�2 
docuw �xx  c E X g b J E s 3 1 n
�1 kfrmID  
�4 
FCprv �yy  p A 3 W T D y B O G i
�3 kfrmID  
7 zz {�0|�/{  ��.}�-
�. 
docu} �~~  c E X g b J E s 3 1 n
�- kfrmID  
�0 
FCpr| �  h u 6 w _ L L D g d -
�/ kfrmID  
8 �� ��,��+�  ��*��)
�* 
docu� ���  c E X g b J E s 3 1 n
�) kfrmID  
�, 
FCpr� ���  p 4 n H U X 1 E d r _
�+ kfrmID  
9 �� ��(��'�  ��&��%
�& 
docu� ���  c E X g b J E s 3 1 n
�% kfrmID  
�( 
FCpr� ���  e v - _ o Z g L t Z V
�' kfrmID  
: �� ��$��#�  ��"��!
�" 
docu� ���  c E X g b J E s 3 1 n
�! kfrmID  
�$ 
FCpr� ���  b J g h C p t - i Y I
�# kfrmID  
; �� �� ���  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�  
FCpr� ���  h v N M Y I J c p A S
� kfrmID  
< �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  g n p J r D L 3 A K Z
� kfrmID  
= �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  c E C 4 y k c 1 t b a
� kfrmID  
> �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  g J P t H g 0 q l F Z
� kfrmID  
? �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  d s 2 t H c J 3 f 1 z
� kfrmID  
@ �� �����  ��
��	
�
 
docu� ���  c E X g b J E s 3 1 n
�	 kfrmID  
� 
FCpr� ���  f 6 O a 5 j m M U M C
� kfrmID  
A �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  g e K 6 L I Q e j b C
� kfrmID  
B �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr� ���  o E J Y O I V r W 7 S
� kfrmID  
C �� �� ����  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�  
FCpr� ���  l W - R t I 8 8 3 1 5
�� kfrmID  
D �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  g 3 P Z c 2 p k K u z
�� kfrmID  
E �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  n G 6 o 6 z s 4 Y B L
�� kfrmID  
F �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  m S k D Z G Q X 6 3 R
�� kfrmID  
G �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  c v N 2 A 7 D D j M 3
�� kfrmID  
H �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  i c p u T r 2 K Z F W
�� kfrmID  
I �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  b C 2 A E U O P 4 p P
�� kfrmID  
J �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  f 3 9 z W j g B r Z j
�� kfrmID  
K �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  c Q Z i s o v J s - v
�� kfrmID  
L �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr� ���  k r X i e P c 3 A U B
�� kfrmID  
M �� ��� ���  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr  �  j 3 X _ p 5 D - k N E
�� kfrmID  
N  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �		  h y j 3 w i d 8 b W r
�� kfrmID  
O 

 ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  l R j i 6 h u m p t G
�� kfrmID  
P  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  k v u d 4 o R i r q n
�� kfrmID  
Q  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �  e U Z z 4 a v _ 0 l M
�� kfrmID  
R  ����  �����
�� 
docu �    c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCpr �!!  h i a 2 n g T F i w i
�� kfrmID  
S "" #��$�#  ��%�
� 
docu% �&&  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCpr$ �''  e 0 u C I M 9 j A P 1
� kfrmID  
T (( )�*�)  ��+�
� 
docu+ �,,  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr* �--  f z R M W d R T N n 1
� kfrmID  
U .. /�0�/  ��1�
� 
docu1 �22  c E X g b J E s 3 1 n
� kfrmID  
� 
FCpr0 �33  d c T O G P h g S 0 r
� kfrmID  
�K 
cobj�J � 44 	/��
� 
cobj� � 55 	/��
� 
cobj� � 66 	/��
� 
cobj� � 77 	/��
� 
cobj� � 88 	/��
� 
cobj� � 99 	/��
� 
cobj� � :: 	/��
� 
cobj� � ;; 	/��
� 
cobj�  � << 	/��
� 
cobj� "� == 	/��
� 
cobj� %� >> 	/��
� 
cobj� )� ?? 	/��
� 
cobj� +� @@ 	/��
� 
cobj� .� AA 	/��
� 
cobj� /� BB 	/��
� 
cobj� 2� CC 	/��
� 
cobj� 4� DD 	/��
� 
cobj� 5� EE 	/��
� 
cobj� 6� FF 	/��
� 
cobj� 7� GG 	/��
� 
cobj� 8� HH 	/��
� 
cobj� 9� II 	/��
� 
cobj� :� JJ 	/��
� 
cobj� ;� KK 	/��
� 
cobj� J� LL 	/��
� 
cobj� K� MM 	/��
� 
cobj� N� NN 	/��
� 
cobj� O� OO 	/�~�}
�~ 
cobj�} P� PP 	/�|�{
�| 
cobj�{ R� QQ 	/�z�y
�z 
cobj�y [� RR 	/�x�w
�x 
cobj�w \� SS 	/�v�u
�v 
cobj�u ]� TT 	/�t�s
�t 
cobj�s ^� UU 	/�r�q
�r 
cobj�q _� VV 	/�p�o
�p 
cobj�o `� WW 	/�n�m
�n 
cobj�m b� XX 	/�l�k
�l 
cobj�k d� YY 	/�j�i
�j 
cobj�i e� ZZ 	/�h�g
�h 
cobj�g f� [[ 	/�f�e
�f 
cobj�e j� \\ 	/�d�c
�d 
cobj�c k� ]] 	/�b�a
�b 
cobj�a l� ^^ 	/�`�_
�` 
cobj�_ m� __ 	/�^�]
�^ 
cobj�] n� `` 	/�\�[
�\ 
cobj�[ o� aa 	/�Z�Y
�Z 
cobj�Y p� bb 	/�X�W
�X 
cobj�W q� cc 	/�V�U
�V 
cobj�U r� dd 	/�T�S
�T 
cobj�S v� ee 	/�R�Q
�R 
cobj�Q w� ff 	/�P�O
�P 
cobj�O x� gg 	/�N�M
�N 
cobj�M y� hh 	/�L�K
�L 
cobj�K z� ii 	/�J�I
�J 
cobj�I {� jj 	/�H�G
�H 
cobj�G }� kk 	/�F�E
�F 
cobj�E �� ll 	/�D�C
�D 
cobj�C �	  mm 	/�B�A
�B 
cobj�A �	 nn 	/�@�?
�@ 
cobj�? �	 oo 	/�>�=
�> 
cobj�= �	 pp 	/�<�;
�< 
cobj�; �	 qq 	/�:�9
�: 
cobj�9 �	 rr 	/�8�7
�8 
cobj�7 �	 ss 	/�6�5
�6 
cobj�5 �	 tt 	/�4�3
�4 
cobj�3 �	 uu 	/�2�1
�2 
cobj�1 �		 vv 	/�0�/
�0 
cobj�/ �	
 ww 	/�.�-
�. 
cobj�- �	 xx 	/�,�+
�, 
cobj�+ �	 yy 	/�*�)
�* 
cobj�) �	 zz 	/�(�'
�( 
cobj�' �	 {{ 	/�&�%
�& 
cobj�% �	 || 	/�$�#
�$ 
cobj�# �	 }} 	/�"�!
�" 
cobj�! �	 ~~ 	/� �
�  
cobj� �	  	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/�
�	
�
 
cobj�	 �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	 �� 	/��
� 
cobj� �	  �� 	/��
� 
cobj� �	! �� 	/� ��
�  
cobj�� �	" �� 	/����
�� 
cobj�� �	# �� 	/����
�� 
cobj�� �	$ �� 	/����
�� 
cobj�� �	% �� 	/����
�� 
cobj�� �	& �� 	/����
�� 
cobj�� �	' �� 	/����
�� 
cobj�� �	( �� 	/����
�� 
cobj�� �	) �� 	/����
�� 
cobj�� �	* �� 	/����
�� 
cobj�� �	+ �� 	/����
�� 
cobj��	, �� 	/����
�� 
cobj��	- �� 	/����
�� 
cobj��� �����J�J ���������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~������������������������������������������������������������������������������������������������������� �� ������ �������� ����������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~���������� �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  n N b Q B f W l Y 9 H
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p v 4 S J p i o d x a
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  m 0 C l 3 z F Z C E A
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p 8 h W z 7 L m H t R
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p g J F p 4 1 q t V v
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  l j D L f Z Y h C T q
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p F _ z _ K H o X m U
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  n p - 7 y I e G H z q
�� kfrmID  � �� �������  �����
�� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac� ���  d I z v I d 6 6 g u P
�� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g T t p I P 9 g 8 y E
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  m 4 p T F m b A F v j
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g g n c U 9 Z s 4 o G
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b Z F 8 6 j q a s V M
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  f 8 S a i j N _ l T m
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e x B Z H B J s W p H
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  h O D J A G C o p Y 8
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d W k D O f f d z g n
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e t 1 j T C U S - O t
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  m u V B 2 _ _ _ h _ Y
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� �    n 2 9 c 4 R r r 4 k G
� kfrmID  �  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  d p 9 I 2 v j B M W 0
� kfrmID  �  �	�  ��
�
� 
docu
 �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac	 �  d p l j 6 4 X t d t 1
� kfrmID  �  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  i J e R z y T f 4 _ 3
� kfrmID     ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  c _ A u w K 8 I b y s
� kfrmID    ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  e 1 _ 8 n a - d Z y W
� kfrmID     �~!�}   ��|"�{
�| 
docu" �##  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac! �$$  i r d u t K o M k f R
�} kfrmID   %% &�z'�y&  ��x(�w
�x 
docu( �))  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac' �**  o L f X U x 9 6 Z m W
�y kfrmID   ++ ,�v-�u,  ��t.�s
�t 
docu. �//  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac- �00  e j I J J L z g E - R
�u kfrmID   11 2�r3�q2  ��p4�o
�p 
docu4 �55  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac3 �66  o 5 G u o F l W S s x
�q kfrmID   77 8�n9�m8  ��l:�k
�l 
docu: �;;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac9 �<<  h 9 s a 5 I o Q 5 q q
�m kfrmID   == >�j?�i>  ��h@�g
�h 
docu@ �AA  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac? �BB  i m a P j e j d 2 V e
�i kfrmID   CC D�fE�eD  ��dF�c
�d 
docuF �GG  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCacE �HH  g o c j 8 0 w H _ j 8
�e kfrmID  	 II J�bK�aJ  ��`L�_
�` 
docuL �MM  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCacK �NN  l y n S P p l Q - j Y
�a kfrmID  
 OO P�^Q�]P  ��\R�[
�\ 
docuR �SS  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCacQ �TT  f 5 K E K a C o f 0 X
�] kfrmID   UU V�ZW�YV  ��XX�W
�X 
docuX �YY  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCacW �ZZ  d A e Q 3 a 3 6 e d r
�Y kfrmID   [[ \�V]�U\  ��T^�S
�T 
docu^ �__  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac] �``  o w G N K T u B D j R
�U kfrmID   aa b�Rc�Qb  ��Pd�O
�P 
docud �ee  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCacc �ff  l t e S q Q 9 V 0 e 5
�Q kfrmID   gg h�Ni�Mh  ��Lj�K
�L 
docuj �kk  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCaci �ll  b j 9 v D l v q 8 P K
�M kfrmID   mm n�Jo�In  ��Hp�G
�H 
docup �qq  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCaco �rr  a K c R 5 x y q A w F
�I kfrmID   ss t�Fu�Et  ��Dv�C
�D 
docuv �ww  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCacu �xx  c g M F l J Q 2 C _ f
�E kfrmID   yy z�B{�Az  ��@|�?
�@ 
docu| �}}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac{ �~~  e 7 e E t E u 0 s 7 m
�A kfrmID    ��>��=�  ��<��;
�< 
docu� ���  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac� ���  j f J T I H p E 3 P p
�= kfrmID   �� ��:��9�  ��8��7
�8 
docu� ���  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac� ���  g Q 2 V O N 1 C A 3 X
�9 kfrmID   �� ��6��5�  ��4��3
�4 
docu� ���  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac� ���  c D z M u f 6 j p 5 _
�5 kfrmID   �� ��2��1�  ��0��/
�0 
docu� ���  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac� ���  g o 2 Y W 0 r n f W m
�1 kfrmID   �� ��.��-�  ��,��+
�, 
docu� ���  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac� ���  l b z H 5 5 3 D E M 6
�- kfrmID   �� ��*��)�  ��(��'
�( 
docu� ���  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac� ���  b U x _ C 4 V J O x B
�) kfrmID   �� ��&��%�  ��$��#
�$ 
docu� ���  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac� ���  n Y Y 2 j b J B F _ O
�% kfrmID   �� ��"��!�  �� ��
�  
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac� ���  c 1 u C w d y w D 2 P
�! kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d H y k - _ o 8 V 7 V
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  o W r J 1 L Q h G 3 z
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  m X 5 o 3 Z 4 x _ q b
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e S l J e - 1 0 9 2 W
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e p 7 N x t 3 - S T c
� kfrmID   �� ��
��	�  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac� ���  m T 2 F N c E J N V w
�	 kfrmID    �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d X h h S 5 x C - b e
� kfrmID  ! �� �����  �� ���
�  
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac� ���  n Q X 7 3 9 K H 6 0 R
� kfrmID  " �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  n W l G 8 R n X Y O 6
�� kfrmID  # �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  k j Y k 6 y T O - h R
�� kfrmID  $ �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  h n 1 d q f n g U a M
�� kfrmID  % �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  f p 5 o N _ c O C j c
�� kfrmID  & �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  l F r B t q _ q 0 W r
�� kfrmID  ' �� �������  ��� ��
�� 
docu  �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� �  o A 1 i o p K F F j P
�� kfrmID  (  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  a V L 9 W L o W L d X
�� kfrmID  ) 		 
����
  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  c E P M t D t h L 7 d
�� kfrmID  *  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  h E R f b i n 0 o J j
�� kfrmID  +  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  e J T f j 1 l R Y F v
�� kfrmID  ,  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �    l 9 Q s T G k t 8 b K
�� kfrmID  - !! "��#��"  ���$��
�� 
docu$ �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac# �&&  k W e _ R _ X P J 8 h
�� kfrmID  . '' (��)��(  ���*��
�� 
docu* �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac) �,,  h J B y v D L a S d a
�� kfrmID  / -- .��/��.  ���0��
�� 
docu0 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/ �22  j _ i m z 4 f n 8 1 G
�� kfrmID  0 33 4��5��4  ���6��
�� 
docu6 �77  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac5 �88  l D - 5 D L Q N a m G
�� kfrmID  1 99 :��;��:  ���<�
�� 
docu< �==  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac; �>>  e 2 S o 1 8 7 q k l 1
�� kfrmID  2 ?? @�A�@  ��B�
� 
docuB �CC  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacA �DD  l Q T S Z F 0 t R v V
� kfrmID  3 EE F�G�F  ��H�
� 
docuH �II  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacG �JJ  f S U M N V u M m p z
� kfrmID  4 KK L�M�L  ��N�
� 
docuN �OO  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacM �PP  k C d r - d s K e 6 I
� kfrmID  5 QQ R�S�R  ��T�
� 
docuT �UU  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacS �VV  g W 8 7 k N p K u 8 a
� kfrmID  6 WW X�Y�X  ��Z�
� 
docuZ �[[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacY �\\  o O M a o E 0 d Z s 9
� kfrmID  7 ]] ^�_�^  ��`�
� 
docu` �aa  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac_ �bb  o V h Z e 4 0 x 8 j E
� kfrmID  8 cc d�e�d  ��f�
� 
docuf �gg  c E X g b J E s 3 1 n
� kfrmID  
� 
FCace �hh  k n C V 7 V F v e g v
� kfrmID  9 ii j�k�j  ��l�
� 
docul �mm  c E X g b J E s 3 1 n
� kfrmID  
� 
FCack �nn  i 6 5 D X N Z 4 D p j
� kfrmID  : oo p�q�p  ��r�
� 
docur �ss  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacq �tt  i a 9 W Z Q N 9 3 V H
� kfrmID  ; uu v�w�v  ��x�
� 
docux �yy  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacw �zz  f 6 y g c n 0 f I 6 9
� kfrmID  < {{ |�}�|  ��~�
� 
docu~ �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac} ���  b O 8 q t S z S _ O C
� kfrmID  = �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  o B G a m 7 a b 5 - r
� kfrmID  > �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  j r 3 J 8 D t P i H E
� kfrmID  ? �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b t D c z 8 t b r w 5
� kfrmID  @ �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  h 4 t I y D l x c E j
� kfrmID  A �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e g 3 J L D M 9 Z N _
� kfrmID  B �� ��~��}�  ��|��{
�| 
docu� ���  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac� ���  j n b x q g 6 - R t e
�} kfrmID  C �� ��z��y�  ��x��w
�x 
docu� ���  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac� ���  a g d H H U b 3 N A l
�y kfrmID  D �� ��v��u�  ��t��s
�t 
docu� ���  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac� ���  c n z t 0 Y k 9 9 o t
�u kfrmID  E �� ��r��q�  ��p��o
�p 
docu� ���  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac� ���  l X T y E D w M 2 x C
�q kfrmID  F �� ��n��m�  ��l��k
�l 
docu� ���  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac� ���  f c _ n p y 5 r B C Y
�m kfrmID  G �� ��j��i�  ��h��g
�h 
docu� ���  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac� ���  b 4 C e r _ O 2 l U p
�i kfrmID  H �� ��f��e�  ��d��c
�d 
docu� ���  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac� ���  h Q 5 y C R n G M d 8
�e kfrmID  I �� ��b��a�  ��`��_
�` 
docu� ���  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac� ���  c H D 4 f E Z P - V 8
�a kfrmID  J �� ��^��]�  ��\��[
�\ 
docu� ���  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac� ���  m R Q J M g h F C a U
�] kfrmID  K �� ��Z��Y�  ��X��W
�X 
docu� ���  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac� ���  p f i V H K e m X s o
�Y kfrmID  L �� ��V��U�  ��T��S
�T 
docu� ���  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac� ���  i s a D A B 6 3 A A s
�U kfrmID  M �� ��R��Q�  ��P��O
�P 
docu� ���  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac� ���  p 9 R u R j p a f W s
�Q kfrmID  N �� ��N��M�  ��L��K
�L 
docu� ���  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac� ���  n N 4 H D 4 7 V L M y
�M kfrmID  O �� ��J��I�  ��H��G
�H 
docu� ���  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac� ���  o W I N b Y 3 j P P n
�I kfrmID  P �� ��F��E�  ��D��C
�D 
docu� ���  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac� ���  e V A h F g L F X L B
�E kfrmID  Q �� ��B��A�  ��@��?
�@ 
docu� ���  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac� ���  o Y w m v D g Y t r p
�A kfrmID  R ��  �>�=   ��<�;
�< 
docu �  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac �  i Y a Z T 3 P N b 7 Z
�= kfrmID  S  �:�9  ��8�7
�8 
docu �		  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac �

  b D g r i d D R 3 U a
�9 kfrmID  T  �6�5  ��4�3
�4 
docu �  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac �  b v m p 4 W I D M C 0
�5 kfrmID  U  �2�1  ��0�/
�0 
docu �  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac �  e C Z W y v W W z Y x
�1 kfrmID  V  �.�-  ��,�+
�, 
docu �  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac �  i - R x J s 1 O F I O
�- kfrmID  W  �*�)  ��( �'
�( 
docu  �!!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac �""  j G t X T m A G U I M
�) kfrmID  X ## $�&%�%$  ��$&�#
�$ 
docu& �''  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac% �((  e c R o f o q f d s J
�% kfrmID  Y )) *�"+�!*  �� ,�
�  
docu, �--  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac+ �..  p V F _ U D K l 9 a H
�! kfrmID  Z // 0�1�0  ��2�
� 
docu2 �33  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1 �44  l l 3 s 0 U V 6 y z e
� kfrmID  [ 55 6�7�6  ��8�
� 
docu8 �99  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac7 �::  f e B i G a X L W j 1
� kfrmID  \ ;; <�=�<  ��>�
� 
docu> �??  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac= �@@  a 5 X v K F S I a A d
� kfrmID  ] AA B�C�B  ��D�
� 
docuD �EE  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacC �FF  d J A v H D G m w 8 p
� kfrmID  ^ GG H�I�H  ��J�
� 
docuJ �KK  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacI �LL  c l k W n r k u q A 5
� kfrmID  _ MM N�
O�	N  ��P�
� 
docuP �QQ  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCacO �RR  m r 7 D 1 0 q H 7 _ W
�	 kfrmID  ` SS T�U�T  ��V�
� 
docuV �WW  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacU �XX  d G 1 p K P b s s y m
� kfrmID  a YY Z�[�Z  �� \��
�  
docu\ �]]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac[ �^^  g j g q L 6 X 7 s y a
� kfrmID  b __ `��a��`  ���b��
�� 
docub �cc  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCaca �dd  e z R d h u 3 4 d y d
�� kfrmID  c ee f��g��f  ���h��
�� 
docuh �ii  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacg �jj  g m Q r N A T F D j v
�� kfrmID  d kk l��m��l  ���n��
�� 
docun �oo  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacm �pp  n w a 1 M O g O I a e
�� kfrmID  e qq r��s��r  ���t��
�� 
docut �uu  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacs �vv  l A J Q g R V T M J O
�� kfrmID  f ww x��y��x  ���z��
�� 
docuz �{{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacy �||  c - r b a 8 V m W 1 T
�� kfrmID  g }} ~����~  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac ���  g Z Y e u n y h K m 5
�� kfrmID  h �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  g _ 2 s 3 l 2 3 T i y
�� kfrmID  i �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  n H F B 1 7 2 X M I H
�� kfrmID  j �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  d 5 Y 9 W 5 a n f E F
�� kfrmID  k �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  g 5 4 y F k L c R B f
�� kfrmID  l �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  d U I o s 3 A c c j v
�� kfrmID  m �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  a G J v N R z T U 7 P
�� kfrmID  n �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  h 3 q - S 3 x b p 2 z
�� kfrmID  o �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  l Y t W Z x O Y Q m p
�� kfrmID  p �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  e E 3 i H O _ Y q b L
�� kfrmID  q �� �������  �����
�� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac� ���  k B 9 s 8 B p P u S G
�� kfrmID  r �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  n J 3 p J 2 m r 2 J o
� kfrmID  s �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  j G d d r v Y l i Z i
� kfrmID  t �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d y e r o T j - y F 8
� kfrmID  u �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d Z d r U 0 T d T i 2
� kfrmID  v �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g q n 3 g m L v P Y h
� kfrmID  w �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  a S H W W B b D z a N
� kfrmID  x �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  h b O v T Y a S 2 B f
� kfrmID  y �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b - c X l x B f 1 W 3
� kfrmID  z �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b - b b O i p L - G t
� kfrmID  { �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  a a c M _ p E x O R w
� kfrmID  | �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� �    h l B E y W V n Z w N
� kfrmID  }  ��  ����
� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac �  i q Z I v P U T R O Y
� kfrmID  ~  ��	��  ���
��
�� 
docu
 �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac	 �  b k Q y L o r L 0 a x
�� kfrmID    ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  e 3 x s f N Z u n k 6
�� kfrmID  �  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  d 6 3 i t y q a e K H
�� kfrmID  �  ����  ����
�� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac �  j U I 5 _ R k f i j r
�� kfrmID  �   �~!�}   ��|"�{
�| 
docu" �##  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac! �$$  k L G L t W W R M c r
�} kfrmID  � %% &�z'�y&  ��x(�w
�x 
docu( �))  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac' �**  h O J 6 Y i t _ _ e r
�y kfrmID  � ++ ,�v-�u,  ��t.�s
�t 
docu. �//  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac- �00  d O 4 R H d a U M o H
�u kfrmID  � 11 2�r3�q2  ��p4�o
�p 
docu4 �55  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac3 �66  i x h 4 z R C J x d X
�q kfrmID  � 77 8�n9�m8  ��l:�k
�l 
docu: �;;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac9 �<<  g R I G h p f N u b 7
�m kfrmID  � == >�j?�i>  ��h@�g
�h 
docu@ �AA  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac? �BB  h p u N a q b - S h q
�i kfrmID  � CC D�fE�eD  ��dF�c
�d 
docuF �GG  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCacE �HH  p G _ 0 a O A s c B u
�e kfrmID  � II J�bK�aJ  ��`L�_
�` 
docuL �MM  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCacK �NN  k C c Z L T _ i o e o
�a kfrmID  � OO P�^Q�]P  ��\R�[
�\ 
docuR �SS  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCacQ �TT  f S q U - S 2 h 1 V C
�] kfrmID  � UU V�ZW�YV  ��XX�W
�X 
docuX �YY  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCacW �ZZ  b D d 7 B 9 5 V K c -
�Y kfrmID  � [[ \�V]�U\  ��T^�S
�T 
docu^ �__  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac] �``  m F 3 D 1 u D O D - R
�U kfrmID  � aa b�Rc�Qb  ��Pd�O
�P 
docud �ee  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCacc �ff  i K 4 y 1 L n r N Q l
�Q kfrmID  � gg h�Ni�Mh  ��Lj�K
�L 
docuj �kk  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCaci �ll  k 1 U 8 S E R R I - J
�M kfrmID  � mm n�Jo�In  ��Hp�G
�H 
docup �qq  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCaco �rr  c 7 F A M r D K p Z v
�I kfrmID  � ss t�Fu�Et  ��Dv�C
�D 
docuv �ww  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCacu �xx  c C V l d q i Q Q E R
�E kfrmID  � yy z�B{�Az  ��@|�?
�@ 
docu| �}}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac{ �~~  e w 0 1 L A X q H G A
�A kfrmID  �  ��>��=�  ��<��;
�< 
docu� ���  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac� ���  j M e 4 Q g E f f f M
�= kfrmID  � �� ��:��9�  ��8��7
�8 
docu� ���  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac� ���  o q 0 9 u 4 r 6 F n 2
�9 kfrmID  � �� ��6��5�  ��4��3
�4 
docu� ���  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac� ���  g F U o 4 i q m Q - g
�5 kfrmID  � �� ��2��1�  ��0��/
�0 
docu� ���  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac� ���  o f - h p o C J B c B
�1 kfrmID  � �� ��.��-�  ��,��+
�, 
docu� ���  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac� ���  f S j I 7 s Z c 9 d 3
�- kfrmID  � �� ��*��)�  ��(��'
�( 
docu� ���  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac� ���  p v x - 8 T p g j I F
�) kfrmID  � �� ��&��%�  ��$��#
�$ 
docu� ���  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac� ���  k v G Z 9 i k _ 7 g e
�% kfrmID  � �� ��"��!�  �� ��
�  
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac� ���  d y M G _ v 3 o 8 c L
�! kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  p G Y d w H F i V L F
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d x _ d r x M 7 k 0 A
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  o t m l a 4 K Y F Z i
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e q M X M s y D - w K
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  a i j 2 Y H w T I A q
� kfrmID  � �� ��
��	�  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac� ���  e X o r p 8 2 - B b -
�	 kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e y T k l l w q T 7 o
� kfrmID  � �� �����  �� ���
�  
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac� ���  f J Z B 9 G W n c j L
� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  o 7 J 9 9 A 0 - F k 9
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  h c N 3 s m T R h u X
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  a R V r d d E R 7 K F
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  f G K S X l - 5 j j 4
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  o F a F 6 L A J I d U
�� kfrmID  � �� �������  ��� ��
�� 
docu  �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� �  o O 1 v u m f V t g Z
�� kfrmID  �  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  d 3 N G Z H K E 2 r E
�� kfrmID  � 		 
����
  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  g y 9 I F R W 5 a e p
�� kfrmID  �  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  p G i w h 3 8 j f G W
�� kfrmID  �  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  l C D t Q 6 N z f Q r
�� kfrmID  �  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �    l G t 9 q k x u U O d
�� kfrmID  � !! "��#��"  ���$��
�� 
docu$ �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac# �&&  m T z - O q e 3 M G X
�� kfrmID  � '' (��)��(  ���*��
�� 
docu* �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac) �,,  b q _ k L 2 e L O S -
�� kfrmID  � -- .��/��.  ���0��
�� 
docu0 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/ �22  a Y F 9 S o g X y h 2
�� kfrmID  � 33 4��5��4  ���6��
�� 
docu6 �77  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac5 �88  h S T Q f h u G f p i
�� kfrmID  � 99 :��;��:  ���<�
�� 
docu< �==  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac; �>>  m g b d y e J q E T K
�� kfrmID  � ?? @�A�@  ��B�
� 
docuB �CC  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacA �DD  d t n 1 I m D Y e n O
� kfrmID  � EE F�G�F  ��H�
� 
docuH �II  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacG �JJ  a V 7 c D 4 G n 3 G 4
� kfrmID  � KK L�M�L  ��N�
� 
docuN �OO  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacM �PP  b g w Z m o 5 c t c l
� kfrmID  � QQ R�S�R  ��T�
� 
docuT �UU  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacS �VV  l d y H 2 o N s q R T
� kfrmID  � WW X�Y�X  ��Z�
� 
docuZ �[[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacY �\\  d D u l c h c D h 1 K
� kfrmID  � ]] ^�_�^  ��`�
� 
docu` �aa  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac_ �bb  n E E R c 6 V L L 1 U
� kfrmID  � cc d�e�d  ��f�
� 
docuf �gg  c E X g b J E s 3 1 n
� kfrmID  
� 
FCace �hh  m k D 6 K N 9 0 1 P p
� kfrmID  � ii j�k�j  ��l�
� 
docul �mm  c E X g b J E s 3 1 n
� kfrmID  
� 
FCack �nn  m 7 1 U T g a 1 _ G F
� kfrmID  � oo p�q�p  ��r�
� 
docur �ss  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacq �tt  h t D X U 1 Y n 5 q 2
� kfrmID  � uu v�w�v  ��x�
� 
docux �yy  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacw �zz  a W 0 c E z J 1 W e X
� kfrmID  � {{ |�}�|  ��~�
� 
docu~ �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac} ���  d R 9 k M q G l Y R s
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e w i Z 1 e J r W L x
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d G 0 T K 8 i M K S y
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  l 8 w o c A g e b i F
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e f E D l M 8 a y r 4
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  n T 0 E Y N 4 4 O M w
� kfrmID  � �� ��~��}�  ��|��{
�| 
docu� ���  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac� ���  m 8 1 e Q M 9 R 0 g U
�} kfrmID  � �� ��z��y�  ��x��w
�x 
docu� ���  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac� ���  o n s y u Y r x k t 5
�y kfrmID  � �� ��v��u�  ��t��s
�t 
docu� ���  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac� ���  p 3 h 3 l T Q G G 4 V
�u kfrmID  � �� ��r��q�  ��p��o
�p 
docu� ���  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac� ���  m A 3 Y F 7 I L c I g
�q kfrmID  � �� ��n��m�  ��l��k
�l 
docu� ���  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac� ���  k r 6 E 9 i z k 2 2 T
�m kfrmID  � �� ��j��i�  ��h��g
�h 
docu� ���  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac� ���  b X A T A 0 W a W P O
�i kfrmID  � �� ��f��e�  ��d��c
�d 
docu� ���  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac� ���  l Z - N 3 O L o I - I
�e kfrmID  � �� ��b��a�  ��`��_
�` 
docu� ���  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac� ���  a y b h 7 o n P S R W
�a kfrmID  � �� ��^��]�  ��\��[
�\ 
docu� ���  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac� ���  c c W S n s w l F l t
�] kfrmID  � �� ��Z��Y�  ��X��W
�X 
docu� ���  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac� ���  i w c S O 9 0 4 V O K
�Y kfrmID  � �� ��V��U�  ��T��S
�T 
docu� ���  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac� ���  h E p n 1 0 O L e n _
�U kfrmID  � �� ��R��Q�  ��P��O
�P 
docu� ���  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac� ���  o e N s 9 I C q J l d
�Q kfrmID  � �� ��N��M�  ��L��K
�L 
docu� ���  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac� ���  l b 4 U b d j 8 u 6 C
�M kfrmID  � �� ��J��I�  ��H��G
�H 
docu� ���  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac� ���  p 3 5 3 t b 8 A E i X
�I kfrmID  � �� ��F��E�  ��D��C
�D 
docu� ���  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac� ���  a q B S Z G f T c _ I
�E kfrmID  � �� ��B��A�  ��@��?
�@ 
docu� ���  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac� ���  f N f A g l E m T b 6
�A kfrmID  � ��  �>�=   ��<�;
�< 
docu �  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac �  f Q 1 n W n S 3 V 4 F
�= kfrmID  �  �:�9  ��8�7
�8 
docu �		  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac �

  k z J 6 z 9 W Q I 1 4
�9 kfrmID  �  �6�5  ��4�3
�4 
docu �  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac �  i i 0 2 W - s E a v y
�5 kfrmID  �  �2�1  ��0�/
�0 
docu �  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac �  e m E J r A e K V b q
�1 kfrmID  �  �.�-  ��,�+
�, 
docu �  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac �  c o F l D 7 h r Q j J
�- kfrmID  �  �*�)  ��( �'
�( 
docu  �!!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac �""  a 4 x v t l n 3 D a w
�) kfrmID  � ## $�&%�%$  ��$&�#
�$ 
docu& �''  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac% �((  b j j 6 x F y 2 1 x H
�% kfrmID  � )) *�"+�!*  �� ,�
�  
docu, �--  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac+ �..  e j 6 C 3 2 T k 3 v e
�! kfrmID  � // 0�1�0  ��2�
� 
docu2 �33  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1 �44  h _ t t M p Y m J a f
� kfrmID  � 55 6�7�6  ��8�
� 
docu8 �99  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac7 �::  g Q 2 s g _ S g f z x
� kfrmID  � ;; <�=�<  ��>�
� 
docu> �??  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac= �@@  n Z x o S 2 M U m d G
� kfrmID  � AA B�C�B  ��D�
� 
docuD �EE  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacC �FF  k b q a B I 6 i W 8 N
� kfrmID  � GG H�I�H  ��J�
� 
docuJ �KK  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacI �LL  o y l 4 U m U 3 F 8 v
� kfrmID  � MM N�
O�	N  ��P�
� 
docuP �QQ  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCacO �RR  g k g 5 f t w h l w m
�	 kfrmID  � SS T�U�T  ��V�
� 
docuV �WW  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacU �XX  p m u D U - z c 4 K C
� kfrmID  � YY Z�[�Z  �� \��
�  
docu\ �]]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac[ �^^  m Z - D W G E k a K P
� kfrmID  � __ `��a��`  ���b��
�� 
docub �cc  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCaca �dd  g r I J Y f R 5 C e P
�� kfrmID  � ee f��g��f  ���h��
�� 
docuh �ii  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacg �jj  i n V k 5 i m 5 r R N
�� kfrmID  � kk l��m��l  ���n��
�� 
docun �oo  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacm �pp  i U B z 5 e S P H R y
�� kfrmID  � qq r��s��r  ���t��
�� 
docut �uu  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacs �vv  a F U 0 4 4 9 8 s 4 I
�� kfrmID  � ww x��y��x  ���z��
�� 
docuz �{{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacy �||  b z s 8 3 B N I b K x
�� kfrmID  � }} ~����~  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac ���  b f 9 h i _ U C i w y
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  b E T k k w U 1 B K C
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  m l 6 i W 0 Z O O T N
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  h n 1 p _ S 3 4 w g 8
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  m m F L Z l C m U E F
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  k c v y x u m p 9 F Z
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  o B d Z E W k X Z 6 T
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  a s R 7 6 0 R 3 0 I a
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p N v 8 L 7 6 S 0 G L
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p c S R z i 2 u c 7 J
�� kfrmID  � �� �������  �����
�� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac� ���  f b l l c D W R i J Z
�� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e _ n 1 a Z a 7 2 e A
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  d E n r i Y a b x B 5
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e N S H f k 8 W w J y
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  j z l p g q J 4 _ j 2
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g k 0 o h y T W h x p
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  f c R Z 2 Y X P t u e
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  n r n _ C R H D Q i I
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  h - N O F u 7 4 - 8 4
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b I o P P j R w Q A D
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  k b F i h 4 k r O 3 r
� kfrmID  � �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� �    l p o R s X V V D H 0
� kfrmID  �  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  m R 5 G 5 O w x m D 5
� kfrmID  �  �	�  ��
�
� 
docu
 �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac	 �  o C H n C 9 m 6 9 _ J
� kfrmID  �  ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  c K b W C G J b R q I
� kfrmID     ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  g N h j U d _ S 2 t 9
� kfrmID    ��  ���
� 
docu �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac �  i F 9 p 4 k C A M Y q
� kfrmID     �~!�}   ��|"�{
�| 
docu" �##  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac! �$$  a r l 3 3 d o A n U F
�} kfrmID   %% &�z'�y&  ��x(�w
�x 
docu( �))  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac' �**  e I R L L x w q d C x
�y kfrmID   ++ ,�v-�u,  ��t.�s
�t 
docu. �//  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac- �00  j J l I f Y _ g 2 C M
�u kfrmID   11 2�r3�q2  ��p4�o
�p 
docu4 �55  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac3 �66  j L 7 Q G x 4 K 9 4 n
�q kfrmID   77 8�n9�m8  ��l:�k
�l 
docu: �;;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac9 �<<  e p C D M l A Z A V X
�m kfrmID   == >�j?�i>  ��h@�g
�h 
docu@ �AA  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac? �BB  j 2 V q N v 5 i U R G
�i kfrmID   CC D�fE�eD  ��dF�c
�d 
docuF �GG  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCacE �HH  p 2 B M 4 U h j W i o
�e kfrmID  	 II J�bK�aJ  ��`L�_
�` 
docuL �MM  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCacK �NN  d P Z M J M Z U x l g
�a kfrmID  
 OO P�^Q�]P  ��\R�[
�\ 
docuR �SS  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCacQ �TT  a c H y Y A f a P 0 M
�] kfrmID   UU V�ZW�YV  ��XX�W
�X 
docuX �YY  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCacW �ZZ  a 2 W O w 1 j b U j N
�Y kfrmID   [[ \�V]�U\  ��T^�S
�T 
docu^ �__  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac] �``  k K v k 5 I u V s B O
�U kfrmID   aa b�Rc�Qb  ��Pd�O
�P 
docud �ee  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCacc �ff  c v 8 A 3 R s l q 1 Z
�Q kfrmID   gg h�Ni�Mh  ��Lj�K
�L 
docuj �kk  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCaci �ll  g 5 7 s 5 q i i 3 N K
�M kfrmID   mm n�Jo�In  ��Hp�G
�H 
docup �qq  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCaco �rr  i s O - v r L m I 9 R
�I kfrmID   ss t�Fu�Et  ��Dv�C
�D 
docuv �ww  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCacu �xx  n k V K J r T J m 1 R
�E kfrmID   yy z�B{�Az  ��@|�?
�@ 
docu| �}}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac{ �~~  m - B T L J M z q 8 z
�A kfrmID    ��>��=�  ��<��;
�< 
docu� ���  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac� ���  m h f q d c B b y T Y
�= kfrmID   �� ��:��9�  ��8��7
�8 
docu� ���  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac� ���  b J H b A B C f Y 7 u
�9 kfrmID   �� ��6��5�  ��4��3
�4 
docu� ���  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac� ���  g W D 5 M N L k N M B
�5 kfrmID   �� ��2��1�  ��0��/
�0 
docu� ���  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac� ���  e G W s z h X N l j I
�1 kfrmID   �� ��.��-�  ��,��+
�, 
docu� ���  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac� ���  j 3 C C I 4 N H I d k
�- kfrmID   �� ��*��)�  ��(��'
�( 
docu� ���  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac� ���  h e 2 9 - 4 o - Q q t
�) kfrmID   �� ��&��%�  ��$��#
�$ 
docu� ���  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac� ���  l O 2 y h F 0 m 7 e O
�% kfrmID   �� ��"��!�  �� ��
�  
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac� ���  i s 0 Z k F m K g b Q
�! kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  k 9 8 Z _ B D Z G 7 Q
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  k j x b Z s o E O 0 C
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  b D A 8 i j l n j U D
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  m V 5 O C r 5 8 L 9 8
� kfrmID   �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  i 7 E a 1 I b H c u z
� kfrmID   �� ��
��	�  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac� ���  p t f m z i V Q y n i
�	 kfrmID    �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  c w e c n T v S y H k
� kfrmID  ! �� �����  �� ���
�  
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac� ���  p 1 w G f 9 t g b 9 -
� kfrmID  " �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  e I Z x r j A 2 - F J
�� kfrmID  # �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  e G S j o z F X 5 u l
�� kfrmID  $ �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  c d n J X Y C o 8 r v
�� kfrmID  % �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  b Z v F 8 i Z S C Z 3
�� kfrmID  & �� �������  ������
�� 
docu� ���  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� ���  p T _ q w H U d 2 d M
�� kfrmID  ' �� �������  ��� ��
�� 
docu  �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac� �  d Y 7 a G b 7 2 d C 5
�� kfrmID  (  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  j 9 X z f r 5 F p W i
�� kfrmID  ) 		 
����
  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  p L A l 2 H i 7 j h J
�� kfrmID  *  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  c C _ c J x R T B p 1
�� kfrmID  +  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �  n v U _ A C i C v Z O
�� kfrmID  ,  ����  �����
�� 
docu �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac �    c 7 g X W B Q e 6 7 E
�� kfrmID  - !! "��#��"  ���$��
�� 
docu$ �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac# �&&  c I r J U N l M a k -
�� kfrmID  . '' (��)��(  ���*��
�� 
docu* �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac) �,,  j _ u i m J L F b R m
�� kfrmID  / -- .��/��.  ���0��
�� 
docu0 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/ �22  a O T _ k l I s N S 6
�� kfrmID  0 33 4��5��4  ���6��
�� 
docu6 �77  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac5 �88  n k A 8 H - - O G 8 W
�� kfrmID  1 99 :��;��:  ���<��
�� 
docu< �==  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac; �>>  j O 2 s U W F y Q I 5
�� kfrmID  2 ?? @��A��@  ���B��
�� 
docuB �CC  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacA �DD  g L U h p D 5 j A i c
�� kfrmID  3 EE F��G��F  ���H��
�� 
docuH �II  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacG �JJ  p c U S D E q 1 u w a
�� kfrmID  4 KK L��M��L  ���N��
�� 
docuN �OO  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacM �PP  g Z y l i N S A 1 x U
�� kfrmID  5 QQ R��S��R  ���T��
�� 
docuT �UU  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacS �VV  a o 1 w 2 I k F p _ L
�� kfrmID  6 WW X��Y��X  ���Z��
�� 
docuZ �[[  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCacY �\\  g n E M Z D t B W q 2
�� kfrmID  7 ]] ^��_��^  ���`��
�� 
docu` �aa  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac_ �bb  i a 4 f d A d 5 z N 8
�� kfrmID  8 cc d��e��d  ���f��
�� 
docuf �gg  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCace �hh  m 8 D Z K 3 e M b B q
�� kfrmID  9 ii j��k��j  ���l�
�� 
docul �mm  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCack �nn  b H c 8 U v P S K s a
�� kfrmID  : oo p�q�p  ��r�
� 
docur �ss  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacq �tt  o Y p 5 t _ W d b i p
� kfrmID  ; uu v�w�v  ��x�
� 
docux �yy  c E X g b J E s 3 1 n
� kfrmID  
� 
FCacw �zz  c L s j Q a k i h L b
� kfrmID  < {{ |�}�|  ��~�
� 
docu~ �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac} ���  m c b R t e t K q w h
� kfrmID  = �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g j s X E W Y m b j t
� kfrmID  > �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e P W l m n I D U x V
� kfrmID  ? �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  a j Z X a q m p n z T
� kfrmID  @ �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  g q R 4 7 2 V z Z h V
� kfrmID  A �� �����  ����
� 
docu� ���  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac� ���  e n x z 2 j N G o 0 F
� kfrmID  B �� ��~��}�  ��|��{
�| 
docu� ���  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac� ���  i J G w K i c E G o s
�} kfrmID  C �� ��z��y�  ��x��w
�x 
docu� ���  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac� ���  m j P g 8 v n T r E 3
�y kfrmID  D �� ��v��u�  ��t��s
�t 
docu� ���  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac� ���  p 6 p w O T m r h d Q
�u kfrmID  E �� ��r��q�  ��p��o
�p 
docu� ���  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac� ���  h e n a x x G D g 9 z
�q kfrmID  F �� ��n��m�  ��l��k
�l 
docu� ���  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac� ���  b M Q j M g g c N 6 i
�m kfrmID  G �� ��j��i�  ��h��g
�h 
docu� ���  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac� ���  c x t a I J p I w e s
�i kfrmID  H �� ��f��e�  ��d��c
�d 
docu� ���  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac� ���  b y 6 f r t P 8 V v 9
�e kfrmID  I �� ��b��a�  ��`��_
�` 
docu� ���  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac� ���  p O L x a N T H o j 4
�a kfrmID  J �� ��^��]�  ��\��[
�\ 
docu� ���  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac� ���  f 0 p 3 q s 5 C 1 S I
�] kfrmID  K �� ��Z��Y�  ��X��W
�X 
docu� ���  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac� ���  m R 9 S 7 I Z h F T F
�Y kfrmID  L �� ��V��U�  ��T��S
�T 
docu� ���  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac� ���  j a H P z d g V z j v
�U kfrmID  M �� ��R��Q�  ��P��O
�P 
docu� ���  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac� ���  a 8 J Z S K N r 3 t l
�Q kfrmID  N �� ��N��M�  ��L��K
�L 
docu� ���  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac� ���  n z A g E a f T N H O
�M kfrmID  O �� ��J��I�  ��H��G
�H 
docu� ���  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac� ���  j b B a G a a H Q X Y
�I kfrmID  P �� ��F��E�  ��D��C
�D 
docu� ���  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac� ���  h N H 8 x a T 7 3 N w
�E kfrmID  Q �� ��B��A�  ��@��?
�@ 
docu� ���  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac� ���  b 9 e K l x U i f i 6
�A kfrmID  R ��   �> �=    ��< �;
�< 
docu  �    c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac  �    l c t t D m L S J 3 j
�= kfrmID  S     �: �9   ��8 �7
�8 
docu  � 	 	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac  � 
 
  n C Y _ g I K Z g v y
�9 kfrmID  T     �6 �5   ��4 �3
�4 
docu  �    c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac  �    f d w c H B U 8 H F 0
�5 kfrmID  U     �2 �1   ��0 �/
�0 
docu  �    c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac  �    e Y g b O 0 S K 5 9 S
�1 kfrmID  V     �. �-   ��, �+
�, 
docu  �    c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac  �    k m 9 4 - 1 f 4 1 u v
�- kfrmID  W     �* �)   ��(  �'
�( 
docu   � ! !  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac  � " "  j j v e 2 - h Z d k W
�) kfrmID  X  # #  $�& %�% $  ��$ &�#
�$ 
docu & � ' '  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac % � ( (  a n m w n U k M V s g
�% kfrmID  Y  ) )  *�" +�! *  ��  ,�
�  
docu , � - -  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac + � . .  l p B 3 8 V s H K D l
�! kfrmID  Z  / /  0� 1� 0  �� 2�
� 
docu 2 � 3 3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac 1 � 4 4  o l k 3 _ g h i 1 J g
� kfrmID  [  5 5  6� 7� 6  �� 8�
� 
docu 8 � 9 9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac 7 � : :  b g N n A o G B W R Z
� kfrmID  \  ; ;  <� =� <  �� >�
� 
docu > � ? ?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac = � @ @  f L T Y m m I O O K X
� kfrmID  ]  A A  B� C� B  �� D�
� 
docu D � E E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac C � F F  d S B o R G i z P r t
� kfrmID  ^  G G  H� I� H  �� J�
� 
docu J � K K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac I � L L  n y x T o 0 y b 2 R c
� kfrmID  _  M M  N�
 O�	 N  �� P�
� 
docu P � Q Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac O � R R  g 1 q j B q T G o U C
�	 kfrmID  `  S S  T� U� T  �� V�
� 
docu V � W W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac U � X X  n B _ 6 t r f v v g J
� kfrmID  a  Y Y  Z� [� Z  ��  \��
�  
docu \ � ] ]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac [ � ^ ^  g m i 3 x B p c E l S
� kfrmID  b  _ _  `�� a�� `  ��� b��
�� 
docu b � c c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac a � d d  p J 8 S 8 Q S Z Q N m
�� kfrmID  c  e e  f�� g�� f  ��� h��
�� 
docu h � i i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac g � j j  o G v t P _ y u J 2 M
�� kfrmID  d  k k  l�� m�� l  ��� n��
�� 
docu n � o o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac m � p p  f R o S y 4 4 L n O h
�� kfrmID  e  q q  r�� s�� r  ��� t��
�� 
docu t � u u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac s � v v  g f g c p 4 t H E 9 W
�� kfrmID  f  w w  x�� y�� x  ��� z��
�� 
docu z � { {  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac y � | |  n p _ P W B m g B x x
�� kfrmID  g  } }  ~�� �� ~  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac  � � �  a l M Q b o F D T s p
�� kfrmID  h  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  a - a X f x 8 M - D _
�� kfrmID  i  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  m m w q O O B f x X m
�� kfrmID  j  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  d G m 3 D q S H j 7 E
�� kfrmID  k  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  c J 8 V h e E n J b X
�� kfrmID  l  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  f h 7 5 p b t M O C m
�� kfrmID  m  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  h r g D I T M B I L E
�� kfrmID  n  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  a V t 1 C J C U A b 3
�� kfrmID  o  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  f x N C I s _ 7 j X V
�� kfrmID  p  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac � � � �  c l S D C n A v 7 2 M
�� kfrmID  q  � �  ��� ��� �  ��� ��
�� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac � � � �  h R z E x m o a O Z 4
�� kfrmID  r  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  b M P A z W f 7 R 4 G
� kfrmID  s  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  e z x K i P g I F a -
� kfrmID  t  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  c u R k - Y J G c k q
� kfrmID  u  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  l Z k b r B 1 8 1 i a
� kfrmID  v  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  b 8 R m 4 U O H Q b s
� kfrmID  w  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  m Z P n H D 1 s 3 T p
� kfrmID  x  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  e q W _ Q Y Z c c i L
� kfrmID  y  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  g o c y z 4 s 6 t o a
� kfrmID  z  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  a _ b D C j C y F I m
� kfrmID  {  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � � � �  g M Y Z v N M 6 Z p o
� kfrmID  |  � �  �� �� �  �� ��
� 
docu � � � �  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac � �! !   o d z J u r h E e q 7
� kfrmID  } !! !�!�!  ��!�
� 
docu! �!!  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac! �!!  j 4 x r 2 i k p m r E
� kfrmID  ~ !! !�!	�!  ��!
�
� 
docu!
 �!!  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!	 �!!  d x f M w q D F D E 3
� kfrmID   !! !�!�!  ��!�
� 
docu! �!!  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac! �!!  l 8 5 4 w E C _ - A S
� kfrmID  � !! !�!�!  ��!�
� 
docu! �!!  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac! �!!  k Z w A 5 I 4 J J 9 W
� kfrmID  � !! !�!�!  ��!�
� 
docu! �!!  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac! �!!  m 4 9 t v 3 W Q d H b
� kfrmID  � !! ! �~!!�}!   ��|!"�{
�| 
docu!" �!#!#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac!! �!$!$  o b l j x e d h k C n
�} kfrmID  � !%!% !&�z!'�y!&  ��x!(�w
�x 
docu!( �!)!)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac!' �!*!*  m i 9 P u S W Y Z 0 J
�y kfrmID  � !+!+ !,�v!-�u!,  ��t!.�s
�t 
docu!. �!/!/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac!- �!0!0  g q R H t r 2 L 2 i h
�u kfrmID  � !1!1 !2�r!3�q!2  ��p!4�o
�p 
docu!4 �!5!5  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac!3 �!6!6  m S h G K m S v k o a
�q kfrmID  � !7!7 !8�n!9�m!8  ��l!:�k
�l 
docu!: �!;!;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac!9 �!<!<  f P I C O K N C s s 1
�m kfrmID  � !=!= !>�j!?�i!>  ��h!@�g
�h 
docu!@ �!A!A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac!? �!B!B  j Z j G i f O K a 0 M
�i kfrmID  � !C!C !D�f!E�e!D  ��d!F�c
�d 
docu!F �!G!G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac!E �!H!H  c 2 N j 8 0 e i o T p
�e kfrmID  � !I!I !J�b!K�a!J  ��`!L�_
�` 
docu!L �!M!M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac!K �!N!N  i c - 1 y 1 e u m B n
�a kfrmID  � !O!O !P�^!Q�]!P  ��\!R�[
�\ 
docu!R �!S!S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac!Q �!T!T  p S M Y v w w 9 v R O
�] kfrmID  � !U!U !V�Z!W�Y!V  ��X!X�W
�X 
docu!X �!Y!Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac!W �!Z!Z  j g H b j F z G u J H
�Y kfrmID  � ![![ !\�V!]�U!\  ��T!^�S
�T 
docu!^ �!_!_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac!] �!`!`  c 5 k u Q m P B M i K
�U kfrmID  � !a!a !b�R!c�Q!b  ��P!d�O
�P 
docu!d �!e!e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac!c �!f!f  m n z 2 H h 7 2 C x J
�Q kfrmID  � !g!g !h�N!i�M!h  ��L!j�K
�L 
docu!j �!k!k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac!i �!l!l  a C L t B d 2 r T V 6
�M kfrmID  � !m!m !n�J!o�I!n  ��H!p�G
�H 
docu!p �!q!q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac!o �!r!r  i E A m q - E r T U 0
�I kfrmID  � !s!s !t�F!u�E!t  ��D!v�C
�D 
docu!v �!w!w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac!u �!x!x  h p o y b I S - P C _
�E kfrmID  � !y!y !z�B!{�A!z  ��@!|�?
�@ 
docu!| �!}!}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac!{ �!~!~  p a P I e H 0 L o x n
�A kfrmID  � !! !��>!��=!�  ��<!��;
�< 
docu!� �!�!�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac!� �!�!�  n 8 4 t 0 K R 6 c y _
�= kfrmID  � !�!� !��:!��9!�  ��8!��7
�8 
docu!� �!�!�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac!� �!�!�  j s f K a X p c I 9 Q
�9 kfrmID  � !�!� !��6!��5!�  ��4!��3
�4 
docu!� �!�!�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac!� �!�!�  e G K D D A z 3 G d g
�5 kfrmID  � !�!� !��2!��1!�  ��0!��/
�0 
docu!� �!�!�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac!� �!�!�  p K F 5 U V Z Q J S E
�1 kfrmID  � !�!� !��.!��-!�  ��,!��+
�, 
docu!� �!�!�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac!� �!�!�  e S z p I o N 4 C r L
�- kfrmID  � !�!� !��*!��)!�  ��(!��'
�( 
docu!� �!�!�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac!� �!�!�  j x g v A H o 0 7 I Y
�) kfrmID  � !�!� !��&!��%!�  ��$!��#
�$ 
docu!� �!�!�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac!� �!�!�  h c o 0 y Y m Q E 3 t
�% kfrmID  � !�!� !��"!��!!�  �� !��
�  
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac!� �!�!�  k o 7 T q q Z q s y 6
�! kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  b S K - C f q G K 7 d
� kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  m 5 B t b B S A 8 B v
� kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  h C F p a Q Q C p - g
� kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  g A l F C G Z i k q t
� kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  k 6 H Q k P 6 7 O C w
� kfrmID  � !�!� !��
!��	!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac!� �!�!�  b A E D D a v 6 U n o
�	 kfrmID  � !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac!� �!�!�  f v x - o 0 P t L q _
� kfrmID  � !�!� !��!��!�  �� !���
�  
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac!� �!�!�  d i M E w d 5 B A Y Q
� kfrmID  � !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �!�!�  k i n i _ 3 J 3 v Q B
�� kfrmID  � !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �!�!�  m g S Q _ g P W z A l
�� kfrmID  � !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �!�!�  p E U B k X 1 H d L v
�� kfrmID  � !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �!�!�  f G C O 8 H U - 5 X s
�� kfrmID  � !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �!�!�  h S W 7 E w i R Q M x
�� kfrmID  � !�!� !���!���!�  ���" ��
�� 
docu"  �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac!� �""  a 9 U S u 4 G f g r k
�� kfrmID  � "" "��"��"  ���"��
�� 
docu" �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac" �""  j R o O y G R g M o y
�� kfrmID  � "	"	 "
��"��"
  ���"��
�� 
docu" �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac" �""  n Q N l x D - K g r S
�� kfrmID  � "" "��"��"  ���"��
�� 
docu" �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac" �""  m w K a p Y E J M R s
�� kfrmID  � "" "��"��"  ���"��
�� 
docu" �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac" �""  l 0 S h C W 6 L 0 X j
�� kfrmID  � "" "��"��"  ���"��
�� 
docu" �""  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac" �" "   m x Y G U o b s W Y 4
�� kfrmID  � "!"! ""��"#��""  ���"$��
�� 
docu"$ �"%"%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac"# �"&"&  n U A q M k V H U I U
�� kfrmID  � "'"' "(��")��"(  ���"*��
�� 
docu"* �"+"+  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac") �",",  i W - q 6 l m C X g m
�� kfrmID  � "-"- ".��"/��".  ���"0��
�� 
docu"0 �"1"1  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac"/ �"2"2  i O 2 P 9 m D d e E L
�� kfrmID  � "3"3 "4��"5��"4  ���"6��
�� 
docu"6 �"7"7  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac"5 �"8"8  j p o 5 S 4 8 p g n M
�� kfrmID  � "9"9 ":��";��":  ���"<�
�� 
docu"< �"="=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac"; �">">  e n t x d N C g j Q -
�� kfrmID  � "?"? "@�"A�"@  ��"B�
� 
docu"B �"C"C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"A �"D"D  p Y 1 o A C E h P Z 5
� kfrmID  � "E"E "F�"G�"F  ��"H�
� 
docu"H �"I"I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"G �"J"J  h V h Q c R v t X o 8
� kfrmID  � "K"K "L�"M�"L  ��"N�
� 
docu"N �"O"O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"M �"P"P  g f U I z H S I d 5 P
� kfrmID  � "Q"Q "R�"S�"R  ��"T�
� 
docu"T �"U"U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"S �"V"V  c f x Z U T a a O U X
� kfrmID  � "W"W "X�"Y�"X  ��"Z�
� 
docu"Z �"["[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"Y �"\"\  h N l o b C Z f e s 7
� kfrmID  � "]"] "^�"_�"^  ��"`�
� 
docu"` �"a"a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"_ �"b"b  i k y y F p n Y N S c
� kfrmID  � "c"c "d�"e�"d  ��"f�
� 
docu"f �"g"g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"e �"h"h  j g I r e y p B w b a
� kfrmID  � "i"i "j�"k�"j  ��"l�
� 
docu"l �"m"m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"k �"n"n  m n A V 9 v E R u K x
� kfrmID  � "o"o "p�"q�"p  ��"r�
� 
docu"r �"s"s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"q �"t"t  k 5 H b B 2 _ B r c N
� kfrmID  � "u"u "v�"w�"v  ��"x�
� 
docu"x �"y"y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"w �"z"z  b B 7 r t J W y w W l
� kfrmID  � "{"{ "|�"}�"|  ��"~�
� 
docu"~ �""  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"} �"�"�  o V I U F Q Y P L _ t
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"� �"�"�  d k V J B e J f K V W
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"� �"�"�  k q E n V y o f U _ J
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"� �"�"�  h 1 b m D m 2 0 u N l
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"� �"�"�  f n m y V E N - L 8 Y
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac"� �"�"�  l o D R 5 A M Q 6 Y 4
� kfrmID  � "�"� "��~"��}"�  ��|"��{
�| 
docu"� �"�"�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac"� �"�"�  p Z m K I e N K W h i
�} kfrmID  � "�"� "��z"��y"�  ��x"��w
�x 
docu"� �"�"�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac"� �"�"�  p 7 V i M m _ w c y X
�y kfrmID  � "�"� "��v"��u"�  ��t"��s
�t 
docu"� �"�"�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac"� �"�"�  m m B D W 7 I t S 8 o
�u kfrmID  � "�"� "��r"��q"�  ��p"��o
�p 
docu"� �"�"�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac"� �"�"�  l X C C G k 3 _ M - k
�q kfrmID  � "�"� "��n"��m"�  ��l"��k
�l 
docu"� �"�"�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac"� �"�"�  f H l 1 1 1 K 4 T x y
�m kfrmID  � "�"� "��j"��i"�  ��h"��g
�h 
docu"� �"�"�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac"� �"�"�  k D e m 6 _ M 1 m 8 M
�i kfrmID  � "�"� "��f"��e"�  ��d"��c
�d 
docu"� �"�"�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac"� �"�"�  j X - l p 4 4 a s N G
�e kfrmID  � "�"� "��b"��a"�  ��`"��_
�` 
docu"� �"�"�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac"� �"�"�  p w f W Y y m I g p c
�a kfrmID  � "�"� "��^"��]"�  ��\"��[
�\ 
docu"� �"�"�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac"� �"�"�  d 8 p E 1 3 V 2 9 d 2
�] kfrmID  � "�"� "��Z"��Y"�  ��X"��W
�X 
docu"� �"�"�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac"� �"�"�  e u w 3 6 n R 5 M j N
�Y kfrmID  � "�"� "��V"��U"�  ��T"��S
�T 
docu"� �"�"�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac"� �"�"�  j G v P n G y R N u 9
�U kfrmID  � "�"� "��R"��Q"�  ��P"��O
�P 
docu"� �"�"�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac"� �"�"�  b 8 F 7 q T N I W v Q
�Q kfrmID  � "�"� "��N"��M"�  ��L"��K
�L 
docu"� �"�"�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac"� �"�"�  d C A l P V 7 9 d f U
�M kfrmID  � "�"� "��J"��I"�  ��H"��G
�H 
docu"� �"�"�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac"� �"�"�  k V Y 9 h R B 2 d V u
�I kfrmID  � "�"� "��F"��E"�  ��D"��C
�D 
docu"� �"�"�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac"� �"�"�  e A N 4 9 D p p 9 E m
�E kfrmID  � "�"� "��B"��A"�  ��@"��?
�@ 
docu"� �"�"�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac"� �"�"�  l 1 s o Z 3 5 3 U z B
�A kfrmID  � "�"� # �>#�=#   ��<#�;
�< 
docu# �##  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac# �##  f A c L U C 1 G T a n
�= kfrmID  � ## #�:#�9#  ��8#�7
�8 
docu# �#	#	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac# �#
#
  a c 0 u u 0 - 4 1 7 d
�9 kfrmID  � ## #�6#�5#  ��4#�3
�4 
docu# �##  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac# �##  j l D J I H 2 L J I J
�5 kfrmID  � ## #�2#�1#  ��0#�/
�0 
docu# �##  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac# �##  o n S n Z f Z Y V O t
�1 kfrmID  � ## #�.#�-#  ��,#�+
�, 
docu# �##  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac# �##  a 1 A Z Y s P 7 H L -
�- kfrmID  � ## #�*#�)#  ��(# �'
�( 
docu#  �#!#!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac# �#"#"  n K M Q e E r Z T F K
�) kfrmID  � #### #$�&#%�%#$  ��$#&�#
�$ 
docu#& �#'#'  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac#% �#(#(  a q 2 R H C m W Y F 5
�% kfrmID  � #)#) #*�"#+�!#*  �� #,�
�  
docu#, �#-#-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac#+ �#.#.  a t f q 5 c 8 s S 1 _
�! kfrmID  � #/#/ #0�#1�#0  ��#2�
� 
docu#2 �#3#3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#1 �#4#4  b H P 2 X L s f A E h
� kfrmID  � #5#5 #6�#7�#6  ��#8�
� 
docu#8 �#9#9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#7 �#:#:  k 5 P 5 s 3 v 9 4 q M
� kfrmID  � #;#; #<�#=�#<  ��#>�
� 
docu#> �#?#?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#= �#@#@  j v 6 D 7 l P - D 6 C
� kfrmID  � #A#A #B�#C�#B  ��#D�
� 
docu#D �#E#E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#C �#F#F  p e z N A 7 e X n b _
� kfrmID  � #G#G #H�#I�#H  ��#J�
� 
docu#J �#K#K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#I �#L#L  p r A C u k R 3 Y w 7
� kfrmID  � #M#M #N�
#O�	#N  ��#P�
� 
docu#P �#Q#Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac#O �#R#R  i W y x x 5 o r G w c
�	 kfrmID  � #S#S #T�#U�#T  ��#V�
� 
docu#V �#W#W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#U �#X#X  n e T y R a U H U W Z
� kfrmID  � #Y#Y #Z�#[�#Z  �� #\��
�  
docu#\ �#]#]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac#[ �#^#^  o 6 - h C q 6 K G u 0
� kfrmID  � #_#_ #`��#a��#`  ���#b��
�� 
docu#b �#c#c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#a �#d#d  o S J o M P k n k j n
�� kfrmID  � #e#e #f��#g��#f  ���#h��
�� 
docu#h �#i#i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#g �#j#j  f 6 j s r N T u 9 h O
�� kfrmID  � #k#k #l��#m��#l  ���#n��
�� 
docu#n �#o#o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#m �#p#p  i 7 2 b R K 8 U Q 1 k
�� kfrmID  � #q#q #r��#s��#r  ���#t��
�� 
docu#t �#u#u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#s �#v#v  i O 4 S F f b U y z 0
�� kfrmID  � #w#w #x��#y��#x  ���#z��
�� 
docu#z �#{#{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#y �#|#|  d k X E O 9 u x l w W
�� kfrmID  � #}#} #~��#��#~  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac# �#�#�  i v w 0 P j M 0 F U U
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  o T Y K r p p a l j c
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  g W p J I 5 m x S 8 c
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  p l F R A i W p S v j
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  o V R M 3 l Q H u 4 i
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  b M 8 f X i M 5 j 4 J
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  k R 2 a D L V o o v J
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  p F h B C e W v C r J
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  h j O u _ w n a F z C
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac#� �#�#�  f t U 7 K 8 n h j r Z
�� kfrmID  � #�#� #���#���#�  ���#��
�� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac#� �#�#�  b n G o 0 4 W 1 0 l v
�� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  p J h V V N d M 9 T R
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  k j K H J R l L a O 2
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  i H C w 3 - C D x e 3
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  m _ 9 y _ U p b K m 3
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  h g K 0 T W 6 L s W P
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  c j o X f 7 U t 5 H D
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  i R - z M v Q c X W N
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  l E G W S i i 6 R 8 V
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  a a _ x s 5 V l Z K O
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �#�#�  i 7 a 3 w p 2 m F 4 y
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac#� �$ $   g E v D k 8 X p Q j u
� kfrmID  � $$ $�$�$  ��$�
� 
docu$ �$$  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$ �$$  k q 1 J E c D R w F Y
� kfrmID  � $$ $�$	�$  ��$
�
� 
docu$
 �$$  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$	 �$$  i w M p 3 Q t c m B D
� kfrmID  � $$ $�$�$  ��$�
� 
docu$ �$$  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$ �$$  f e v b r j M y Q l f
� kfrmID    $$ $�$�$  ��$�
� 
docu$ �$$  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$ �$$  d u 2 1 b v 3 d i I P
� kfrmID   $$ $�$�$  ��$�
� 
docu$ �$$  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$ �$$  g R 8 G G e 7 f X 7 G
� kfrmID   $$ $ �~$!�}$   ��|$"�{
�| 
docu$" �$#$#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac$! �$$$$  a S 2 N j i I l w v X
�} kfrmID   $%$% $&�z$'�y$&  ��x$(�w
�x 
docu$( �$)$)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac$' �$*$*  e l o G O I P _ - B 6
�y kfrmID   $+$+ $,�v$-�u$,  ��t$.�s
�t 
docu$. �$/$/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac$- �$0$0  l 2 - 6 y 4 j v R P S
�u kfrmID   $1$1 $2�r$3�q$2  ��p$4�o
�p 
docu$4 �$5$5  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac$3 �$6$6  n e M K t w _ d L G B
�q kfrmID   $7$7 $8�n$9�m$8  ��l$:�k
�l 
docu$: �$;$;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac$9 �$<$<  g N Y h 6 D F x C r 2
�m kfrmID   $=$= $>�j$?�i$>  ��h$@�g
�h 
docu$@ �$A$A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac$? �$B$B  b 8 B Q p V S 0 j _ i
�i kfrmID   $C$C $D�f$E�e$D  ��d$F�c
�d 
docu$F �$G$G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac$E �$H$H  j Q i 8 O C y f T c H
�e kfrmID  	 $I$I $J�b$K�a$J  ��`$L�_
�` 
docu$L �$M$M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac$K �$N$N  h s 1 F M S 4 m i u I
�a kfrmID  
 $O$O $P�^$Q�]$P  ��\$R�[
�\ 
docu$R �$S$S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac$Q �$T$T  l 0 G q n h 0 B p 4 l
�] kfrmID   $U$U $V�Z$W�Y$V  ��X$X�W
�X 
docu$X �$Y$Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac$W �$Z$Z  n O h r N l F n A e -
�Y kfrmID   $[$[ $\�V$]�U$\  ��T$^�S
�T 
docu$^ �$_$_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac$] �$`$`  g V X 3 X y b d i a 2
�U kfrmID   $a$a $b�R$c�Q$b  ��P$d�O
�P 
docu$d �$e$e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac$c �$f$f  f b j a d 2 v R 8 W 0
�Q kfrmID   $g$g $h�N$i�M$h  ��L$j�K
�L 
docu$j �$k$k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac$i �$l$l  j A 2 S u O w x G o p
�M kfrmID   $m$m $n�J$o�I$n  ��H$p�G
�H 
docu$p �$q$q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac$o �$r$r  n P W 2 B I e h 1 5 O
�I kfrmID   $s$s $t�F$u�E$t  ��D$v�C
�D 
docu$v �$w$w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac$u �$x$x  f F i 0 N C h z W A B
�E kfrmID   $y$y $z�B${�A$z  ��@$|�?
�@ 
docu$| �$}$}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac${ �$~$~  j G - - v h b F x - t
�A kfrmID   $$ $��>$��=$�  ��<$��;
�< 
docu$� �$�$�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac$� �$�$�  n T J M - G x B u 9 6
�= kfrmID   $�$� $��:$��9$�  ��8$��7
�8 
docu$� �$�$�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac$� �$�$�  b y J b m L 6 O v G l
�9 kfrmID   $�$� $��6$��5$�  ��4$��3
�4 
docu$� �$�$�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac$� �$�$�  m y P L 4 2 5 Q - y Z
�5 kfrmID   $�$� $��2$��1$�  ��0$��/
�0 
docu$� �$�$�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac$� �$�$�  a t z J V Z o g U A G
�1 kfrmID   $�$� $��.$��-$�  ��,$��+
�, 
docu$� �$�$�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac$� �$�$�  m x 8 s 4 N H m M 7 X
�- kfrmID   $�$� $��*$��)$�  ��($��'
�( 
docu$� �$�$�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac$� �$�$�  k 9 y K k l _ 8 1 k U
�) kfrmID   $�$� $��&$��%$�  ��$$��#
�$ 
docu$� �$�$�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac$� �$�$�  d Z w X z 8 G Y - 4 I
�% kfrmID   $�$� $��"$��!$�  �� $��
�  
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac$� �$�$�  b r K C D c Q p g W U
�! kfrmID   $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  e f m S 1 j L 4 F c z
� kfrmID   $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  p k U 3 H H 7 O r L n
� kfrmID   $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  g S y 8 t Y h o 2 d B
� kfrmID   $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  n s Z N t k m s L w _
� kfrmID   $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  e t q G R 6 7 S I 3 I
� kfrmID   $�$� $��
$��	$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac$� �$�$�  c y 1 K X y e h M 1 Q
�	 kfrmID    $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac$� �$�$�  j 2 Y G l r 4 L h e S
� kfrmID  ! $�$� $��$��$�  �� $���
�  
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac$� �$�$�  h i c J 1 9 D Z 7 3 6
� kfrmID  " $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �$�$�  p q p d H R - S s M B
�� kfrmID  # $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �$�$�  c g d s i Z J x W U B
�� kfrmID  $ $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �$�$�  f J d o r N c f C s f
�� kfrmID  % $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �$�$�  d r M 6 e w G z T D 0
�� kfrmID  & $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �$�$�  g z 9 y P H M J C I x
�� kfrmID  ' $�$� $���$���$�  ���% ��
�� 
docu%  �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac$� �%%  n R h 5 k H T _ p R Q
�� kfrmID  ( %% %��%��%  ���%��
�� 
docu% �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac% �%%  a T t J J t n B 5 T x
�� kfrmID  ) %	%	 %
��%��%
  ���%��
�� 
docu% �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac% �%%  c 8 7 P 2 A T 1 O V 4
�� kfrmID  * %% %��%��%  ���%��
�� 
docu% �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac% �%%  j 3 J L K 4 p K z M W
�� kfrmID  + %% %��%��%  ���%��
�� 
docu% �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac% �%%  h 5 9 K i u v 7 o g r
�� kfrmID  , %% %��%��%  ���%��
�� 
docu% �%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac% �% %   g _ 0 Q v v D - J o 4
�� kfrmID  - %!%! %"��%#��%"  ���%$��
�� 
docu%$ �%%%%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac%# �%&%&  p f C O 1 R C o z Z 9
�� kfrmID  . %'%' %(��%)��%(  ���%*��
�� 
docu%* �%+%+  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac%) �%,%,  n 9 I y w g W y R B 2
�� kfrmID  / %-%- %.��%/��%.  ���%0��
�� 
docu%0 �%1%1  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac%/ �%2%2  d p O e f I 3 a p d x
�� kfrmID  0 %3%3 %4��%5��%4  ���%6��
�� 
docu%6 �%7%7  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac%5 �%8%8  j J 9 Y S l E 8 w q t
�� kfrmID  1 %9%9 %:��%;��%:  ���%<�
�� 
docu%< �%=%=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac%; �%>%>  a F y N n _ J L O z R
�� kfrmID  2 %?%? %@�%A�%@  ��%B�
� 
docu%B �%C%C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%A �%D%D  m m V D f P u V m S C
� kfrmID  3 %E%E %F�%G�%F  ��%H�
� 
docu%H �%I%I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%G �%J%J  a V A 1 E G V n z 7 7
� kfrmID  4 %K%K %L�%M�%L  ��%N�
� 
docu%N �%O%O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%M �%P%P  l 9 _ A v 7 l Q o t B
� kfrmID  5 %Q%Q %R�%S�%R  ��%T�
� 
docu%T �%U%U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%S �%V%V  j E H R G K j X 3 U z
� kfrmID  6 %W%W %X�%Y�%X  ��%Z�
� 
docu%Z �%[%[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%Y �%\%\  o t k Q y i I _ T v W
� kfrmID  7 %]%] %^�%_�%^  ��%`�
� 
docu%` �%a%a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%_ �%b%b  o 6 m c y 1 P w 8 d c
� kfrmID  8 %c%c %d�%e�%d  ��%f�
� 
docu%f �%g%g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%e �%h%h  j A 7 9 T e D w v p 5
� kfrmID  9 %i%i %j�%k�%j  ��%l�
� 
docu%l �%m%m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%k �%n%n  b q X 4 3 m 7 c 0 _ s
� kfrmID  : %o%o %p�%q�%p  ��%r�
� 
docu%r �%s%s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%q �%t%t  j Y 7 _ o P 6 2 - l 2
� kfrmID  ; %u%u %v�%w�%v  ��%x�
� 
docu%x �%y%y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%w �%z%z  o V v M P 8 w q a k f
� kfrmID  < %{%{ %|�%}�%|  ��%~�
� 
docu%~ �%%  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%} �%�%�  b M N 8 I l X i h B 0
� kfrmID  = %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%� �%�%�  e K X x c 5 y 1 0 u H
� kfrmID  > %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%� �%�%�  k g B k W D 1 D N 1 v
� kfrmID  ? %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%� �%�%�  c 5 z G X i B 5 J 9 3
� kfrmID  @ %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%� �%�%�  k b I X K _ E t T i Y
� kfrmID  A %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac%� �%�%�  i K O F H E L v c t D
� kfrmID  B %�%� %��~%��}%�  ��|%��{
�| 
docu%� �%�%�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac%� �%�%�  o d 3 3 b r J A e A L
�} kfrmID  C %�%� %��z%��y%�  ��x%��w
�x 
docu%� �%�%�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac%� �%�%�  p G J a 0 S v g e d v
�y kfrmID  D %�%� %��v%��u%�  ��t%��s
�t 
docu%� �%�%�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac%� �%�%�  h M 2 w e F I Q y V k
�u kfrmID  E %�%� %��r%��q%�  ��p%��o
�p 
docu%� �%�%�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac%� �%�%�  k i j 7 y J r 9 k 2 k
�q kfrmID  F %�%� %��n%��m%�  ��l%��k
�l 
docu%� �%�%�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac%� �%�%�  a u u r a h A E a U V
�m kfrmID  G %�%� %��j%��i%�  ��h%��g
�h 
docu%� �%�%�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac%� �%�%�  e i H 2 p 5 n X y e e
�i kfrmID  H %�%� %��f%��e%�  ��d%��c
�d 
docu%� �%�%�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac%� �%�%�  o x E J K E V g 1 N -
�e kfrmID  I %�%� %��b%��a%�  ��`%��_
�` 
docu%� �%�%�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac%� �%�%�  k s - V d e o R F J y
�a kfrmID  J %�%� %��^%��]%�  ��\%��[
�\ 
docu%� �%�%�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac%� �%�%�  g n b X p H B 0 J 1 b
�] kfrmID  K %�%� %��Z%��Y%�  ��X%��W
�X 
docu%� �%�%�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac%� �%�%�  k i X N 5 9 S R 3 H u
�Y kfrmID  L %�%� %��V%��U%�  ��T%��S
�T 
docu%� �%�%�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac%� �%�%�  a b e h z P f s V b K
�U kfrmID  M %�%� %��R%��Q%�  ��P%��O
�P 
docu%� �%�%�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac%� �%�%�  m J w S h S y J J M 2
�Q kfrmID  N %�%� %��N%��M%�  ��L%��K
�L 
docu%� �%�%�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac%� �%�%�  l O A K Y q D R v g a
�M kfrmID  O %�%� %��J%��I%�  ��H%��G
�H 
docu%� �%�%�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac%� �%�%�  l A _ Y a e 5 N R T f
�I kfrmID  P %�%� %��F%��E%�  ��D%��C
�D 
docu%� �%�%�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac%� �%�%�  d A x I 0 3 X w i U i
�E kfrmID  Q %�%� %��B%��A%�  ��@%��?
�@ 
docu%� �%�%�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac%� �%�%�  e i u z V 6 Q B q 1 H
�A kfrmID  R %�%� & �>&�=&   ��<&�;
�< 
docu& �&&  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac& �&&  i 7 E L D i Z j z U X
�= kfrmID  S && &�:&�9&  ��8&�7
�8 
docu& �&	&	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac& �&
&
  e B O s 8 u V W e i d
�9 kfrmID  T && &�6&�5&  ��4&�3
�4 
docu& �&&  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac& �&&  h C x k i V f C K T 6
�5 kfrmID  U && &�2&�1&  ��0&�/
�0 
docu& �&&  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac& �&&  b j 0 4 G v k i G X b
�1 kfrmID  V && &�.&�-&  ��,&�+
�, 
docu& �&&  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac& �&&  g _ 6 a m d u J l t 7
�- kfrmID  W && &�*&�)&  ��(& �'
�( 
docu&  �&!&!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac& �&"&"  c K F R l Q - d V 7 5
�) kfrmID  X &#&# &$�&&%�%&$  ��$&&�#
�$ 
docu&& �&'&'  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac&% �&(&(  g N 5 t e v u 1 l v z
�% kfrmID  Y &)&) &*�"&+�!&*  �� &,�
�  
docu&, �&-&-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac&+ �&.&.  c T c A N V 5 C j t 8
�! kfrmID  Z &/&/ &0�&1�&0  ��&2�
� 
docu&2 �&3&3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&1 �&4&4  b P Z p G J g V q y r
� kfrmID  [ &5&5 &6�&7�&6  ��&8�
� 
docu&8 �&9&9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&7 �&:&:  b m F 2 C I h _ 8 J x
� kfrmID  \ &;&; &<�&=�&<  ��&>�
� 
docu&> �&?&?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&= �&@&@  f 5 C J y e 0 Q j R e
� kfrmID  ] &A&A &B�&C�&B  ��&D�
� 
docu&D �&E&E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&C �&F&F  h B k m 3 o o g - Z c
� kfrmID  ^ &G&G &H�&I�&H  ��&J�
� 
docu&J �&K&K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&I �&L&L  m K J A p h O F u S t
� kfrmID  _ &M&M &N�
&O�	&N  ��&P�
� 
docu&P �&Q&Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac&O �&R&R  e L R H f E 2 L 5 C p
�	 kfrmID  ` &S&S &T�&U�&T  ��&V�
� 
docu&V �&W&W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&U �&X&X  b r 2 d O K 5 3 n 1 9
� kfrmID  a &Y&Y &Z�&[�&Z  �� &\��
�  
docu&\ �&]&]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac&[ �&^&^  o K s r Z R B 0 g x O
� kfrmID  b &_&_ &`��&a��&`  ���&b��
�� 
docu&b �&c&c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&a �&d&d  m k Z z J N l j Y g a
�� kfrmID  c &e&e &f��&g��&f  ���&h��
�� 
docu&h �&i&i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&g �&j&j  j L j l h p o W e l s
�� kfrmID  d &k&k &l��&m��&l  ���&n��
�� 
docu&n �&o&o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&m �&p&p  p C n X 9 s E r 8 w 8
�� kfrmID  e &q&q &r��&s��&r  ���&t��
�� 
docu&t �&u&u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&s �&v&v  i W M S x J a g h - O
�� kfrmID  f &w&w &x��&y��&x  ���&z��
�� 
docu&z �&{&{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&y �&|&|  c s b 0 c h a _ i F 4
�� kfrmID  g &}&} &~��&��&~  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac& �&�&�  p 4 o K G j 2 M O i _
�� kfrmID  h &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  b 7 k z E 0 G 4 C Y 0
�� kfrmID  i &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  m 9 x J i Q r N V o 4
�� kfrmID  j &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  m F S d A O d c 9 B r
�� kfrmID  k &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  k J X O i F i s G x 6
�� kfrmID  l &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  k s D 4 W c H y u j o
�� kfrmID  m &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  o H J S f W Q G a s X
�� kfrmID  n &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  m r P H 1 B 3 2 t Q Y
�� kfrmID  o &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  k c r 2 q K V L x P g
�� kfrmID  p &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac&� �&�&�  i J f i e M P a I F F
�� kfrmID  q &�&� &���&���&�  ���&��
�� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac&� �&�&�  i o o 5 N f 0 o u w t
�� kfrmID  r &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  g g - s q R y P b j Y
� kfrmID  s &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  p k y 7 r m r S L 2 M
� kfrmID  t &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  d P o P f p P e u x 5
� kfrmID  u &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  p a d Z Z R - T w J x
� kfrmID  v &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  b P T j Y B O v 3 q t
� kfrmID  w &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  f - m Q I Y 3 W i t l
� kfrmID  x &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  j D K C A U h W K 4 Y
� kfrmID  y &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  f f 6 z L E M R Q c z
� kfrmID  z &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  p l O P H a R m - n G
� kfrmID  { &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �&�&�  c e 8 4 i c p q - b A
� kfrmID  | &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac&� �' '   h j U Y p q 6 b b 9 U
� kfrmID  } '' '�'�'  ��'�
� 
docu' �''  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac' �''  k - n p M 9 X D E O b
� kfrmID  ~ '' '�'	�'  ��'
�
� 
docu'
 �''  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'	 �''  i u J - I e L 2 U z y
� kfrmID   '' '�'�'  ��'�
� 
docu' �''  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac' �''  i L 8 c 4 W z P i u 6
� kfrmID  � '' '�'�'  ��'�
� 
docu' �''  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac' �''  i r w F s 8 E - y q B
� kfrmID  � '' '�'�'  ��'�
� 
docu' �''  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac' �''  l l Y H W o I o I y s
� kfrmID  � '' ' �~'!�}'   ��|'"�{
�| 
docu'" �'#'#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac'! �'$'$  b v m g z X I Y G n c
�} kfrmID  � '%'% '&�z''�y'&  ��x'(�w
�x 
docu'( �')')  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac'' �'*'*  l C y j X Z A 2 - a o
�y kfrmID  � '+'+ ',�v'-�u',  ��t'.�s
�t 
docu'. �'/'/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac'- �'0'0  f _ s i g H - j D d v
�u kfrmID  � '1'1 '2�r'3�q'2  ��p'4�o
�p 
docu'4 �'5'5  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac'3 �'6'6  j 1 y e w z d u 3 2 _
�q kfrmID  � '7'7 '8�n'9�m'8  ��l':�k
�l 
docu': �';';  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac'9 �'<'<  n k X t a A 8 r f 6 Z
�m kfrmID  � '='= '>�j'?�i'>  ��h'@�g
�h 
docu'@ �'A'A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac'? �'B'B  d w d - a c S K W N w
�i kfrmID  � 'C'C 'D�f'E�e'D  ��d'F�c
�d 
docu'F �'G'G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac'E �'H'H  d I e - U - q 4 X Z W
�e kfrmID  � 'I'I 'J�b'K�a'J  ��`'L�_
�` 
docu'L �'M'M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac'K �'N'N  d b U _ m x p g z w g
�a kfrmID  � 'O'O 'P�^'Q�]'P  ��\'R�[
�\ 
docu'R �'S'S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac'Q �'T'T  p j 3 A D T m j N M d
�] kfrmID  � 'U'U 'V�Z'W�Y'V  ��X'X�W
�X 
docu'X �'Y'Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac'W �'Z'Z  h y j _ S y T 6 g h 8
�Y kfrmID  � '['[ '\�V']�U'\  ��T'^�S
�T 
docu'^ �'_'_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac'] �'`'`  l e R m e G a o c H -
�U kfrmID  � 'a'a 'b�R'c�Q'b  ��P'd�O
�P 
docu'd �'e'e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac'c �'f'f  h O Y D t V r u A y F
�Q kfrmID  � 'g'g 'h�N'i�M'h  ��L'j�K
�L 
docu'j �'k'k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac'i �'l'l  e D B q B D A b j 7 Y
�M kfrmID  � 'm'm 'n�J'o�I'n  ��H'p�G
�H 
docu'p �'q'q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac'o �'r'r  e E q g 6 a Z B E I t
�I kfrmID  � 's's 't�F'u�E't  ��D'v�C
�D 
docu'v �'w'w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac'u �'x'x  e F u W f u o G i f B
�E kfrmID  � 'y'y 'z�B'{�A'z  ��@'|�?
�@ 
docu'| �'}'}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac'{ �'~'~  o 5 X N 0 p O H X V 4
�A kfrmID  � '' '��>'��='�  ��<'��;
�< 
docu'� �'�'�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac'� �'�'�  o k t Z m 2 A e 8 o w
�= kfrmID  � '�'� '��:'��9'�  ��8'��7
�8 
docu'� �'�'�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac'� �'�'�  n 1 h 2 p M Z Y k u 0
�9 kfrmID  � '�'� '��6'��5'�  ��4'��3
�4 
docu'� �'�'�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac'� �'�'�  f F Q T O f 2 J o l v
�5 kfrmID  � '�'� '��2'��1'�  ��0'��/
�0 
docu'� �'�'�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac'� �'�'�  k - R i 7 u l M V Z I
�1 kfrmID  � '�'� '��.'��-'�  ��,'��+
�, 
docu'� �'�'�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac'� �'�'�  a y 9 6 q U 8 C H k 0
�- kfrmID  � '�'� '��*'��)'�  ��('��'
�( 
docu'� �'�'�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac'� �'�'�  k 6 k H p k A F t E f
�) kfrmID  � '�'� '��&'��%'�  ��$'��#
�$ 
docu'� �'�'�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac'� �'�'�  a w s X D 7 m s R N Y
�% kfrmID  � '�'� '��"'��!'�  �� '��
�  
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac'� �'�'�  h J t H T D P 7 5 w u
�! kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  l K r K u l 8 o b h I
� kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  o C I n t 8 J v K K v
� kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  e a Q K o u 2 U a l t
� kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  h R w m 1 q J H E J G
� kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  n 0 F R 7 f K F 9 D i
� kfrmID  � '�'� '��
'��	'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac'� �'�'�  i u O B B U M 7 r X 3
�	 kfrmID  � '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac'� �'�'�  m q R b Z 9 T o w M D
� kfrmID  � '�'� '��'��'�  �� '���
�  
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac'� �'�'�  n v U 9 Q Y t g P W m
� kfrmID  � '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �'�'�  f _ F M S 2 - 7 I o 8
�� kfrmID  � '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �'�'�  o 6 1 1 r - 9 7 Y K V
�� kfrmID  � '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �'�'�  g 2 - Q O a 0 p l a y
�� kfrmID  � '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �'�'�  i C z J 0 1 i 8 d s p
�� kfrmID  � '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �'�'�  c O M T g V p c b w d
�� kfrmID  � '�'� '���'���'�  ���( ��
�� 
docu(  �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac'� �((  n x p x T g e V F e L
�� kfrmID  � (( (��(��(  ���(��
�� 
docu( �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac( �((  j x e X _ o r j Q f V
�� kfrmID  � (	(	 (
��(��(
  ���(��
�� 
docu( �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac( �((  h e P L p E 6 e f I E
�� kfrmID  � (( (��(��(  ���(��
�� 
docu( �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac( �((  i 8 w s v O n 4 C 5 a
�� kfrmID  � (( (��(��(  ���(��
�� 
docu( �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac( �((  p y 6 f I h 3 6 _ B u
�� kfrmID  � (( (��(��(  ���(��
�� 
docu( �((  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac( �( (   l z N X 4 r I S r b w
�� kfrmID  � (!(! ("��(#��("  ���($��
�� 
docu($ �(%(%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac(# �(&(&  g g D I v v D J y 8 4
�� kfrmID  � ('(' ((��()��((  ���(*��
�� 
docu(* �(+(+  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac() �(,(,  b F 1 W b e C 5 o e t
�� kfrmID  � (-(- (.��(/��(.  ���(0��
�� 
docu(0 �(1(1  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac(/ �(2(2  n J d x Z o _ m g K g
�� kfrmID  � (3(3 (4��(5��(4  ���(6��
�� 
docu(6 �(7(7  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac(5 �(8(8  l d A C A o 9 o i - Q
�� kfrmID  � (9(9 (:��(;��(:  ���(<�
�� 
docu(< �(=(=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac(; �(>(>  b U F J o o J L P y f
�� kfrmID  � (?(? (@�(A�(@  ��(B�
� 
docu(B �(C(C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(A �(D(D  d i F p b y u Q j M C
� kfrmID  � (E(E (F�(G�(F  ��(H�
� 
docu(H �(I(I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(G �(J(J  g l Y V e K e w f 1 n
� kfrmID  � (K(K (L�(M�(L  ��(N�
� 
docu(N �(O(O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(M �(P(P  b R c 0 Y g x Z H K -
� kfrmID  � (Q(Q (R�(S�(R  ��(T�
� 
docu(T �(U(U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(S �(V(V  l U t q J P 5 Y 7 3 S
� kfrmID  � (W(W (X�(Y�(X  ��(Z�
� 
docu(Z �([([  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(Y �(\(\  k p g a 5 W M i G q w
� kfrmID  � (](] (^�(_�(^  ��(`�
� 
docu(` �(a(a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(_ �(b(b  l I D L a 4 B 3 _ w U
� kfrmID  � (c(c (d�(e�(d  ��(f�
� 
docu(f �(g(g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(e �(h(h  o s 6 f I N U 4 X f Z
� kfrmID  � (i(i (j�(k�(j  ��(l�
� 
docu(l �(m(m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(k �(n(n  f b r B S 9 L S R p b
� kfrmID  � (o(o (p�(q�(p  ��(r�
� 
docu(r �(s(s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(q �(t(t  e W f N W a q u 0 9 8
� kfrmID  � (u(u (v�(w�(v  ��(x�
� 
docu(x �(y(y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(w �(z(z  a Y 3 U T Q f a b i 7
� kfrmID  � ({({ (|�(}�(|  ��(~�
� 
docu(~ �((  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(} �(�(�  l T z p w a 9 J m - z
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(� �(�(�  p A r B u M d j h D q
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(� �(�(�  m r f 3 a v f n o 7 P
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(� �(�(�  h O L O u F f S q O m
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(� �(�(�  d j p F - J U h B s q
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac(� �(�(�  c F D k 9 j Q T U m 9
� kfrmID  � (�(� (��~(��}(�  ��|(��{
�| 
docu(� �(�(�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac(� �(�(�  d a Z e m 0 I R x j P
�} kfrmID  � (�(� (��z(��y(�  ��x(��w
�x 
docu(� �(�(�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac(� �(�(�  b r b S i U t Y 0 t x
�y kfrmID  � (�(� (��v(��u(�  ��t(��s
�t 
docu(� �(�(�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac(� �(�(�  b l 6 7 F C 6 s c 6 V
�u kfrmID  � (�(� (��r(��q(�  ��p(��o
�p 
docu(� �(�(�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac(� �(�(�  k 5 C S n 7 U v v Z t
�q kfrmID  � (�(� (��n(��m(�  ��l(��k
�l 
docu(� �(�(�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac(� �(�(�  e J L T r 3 R g q G L
�m kfrmID  � (�(� (��j(��i(�  ��h(��g
�h 
docu(� �(�(�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac(� �(�(�  l d k P B g j Y a B 9
�i kfrmID  � (�(� (��f(��e(�  ��d(��c
�d 
docu(� �(�(�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac(� �(�(�  h I D I K X z o y l 6
�e kfrmID  � (�(� (��b(��a(�  ��`(��_
�` 
docu(� �(�(�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac(� �(�(�  h p j e Z N J Y 1 K K
�a kfrmID  � (�(� (��^(��](�  ��\(��[
�\ 
docu(� �(�(�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac(� �(�(�  l 8 U W w 7 N 6 p S n
�] kfrmID  � (�(� (��Z(��Y(�  ��X(��W
�X 
docu(� �(�(�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac(� �(�(�  e Q 5 G g f F P q T X
�Y kfrmID  � (�(� (��V(��U(�  ��T(��S
�T 
docu(� �(�(�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac(� �(�(�  l y a l L a d I - - K
�U kfrmID  � (�(� (��R(��Q(�  ��P(��O
�P 
docu(� �(�(�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac(� �(�(�  k Y W k O a X V g Q 9
�Q kfrmID  � (�(� (��N(��M(�  ��L(��K
�L 
docu(� �(�(�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac(� �(�(�  m Y u u z i H I A 9 7
�M kfrmID  � (�(� (��J(��I(�  ��H(��G
�H 
docu(� �(�(�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac(� �(�(�  b H U M 9 4 X Q x a S
�I kfrmID  � (�(� (��F(��E(�  ��D(��C
�D 
docu(� �(�(�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac(� �(�(�  e x P D e F t V Y A T
�E kfrmID  � (�(� (��B(��A(�  ��@(��?
�@ 
docu(� �(�(�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac(� �(�(�  k 0 z G 3 8 b 5 e C 2
�A kfrmID  � (�(� ) �>)�=)   ��<)�;
�< 
docu) �))  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac) �))  n V 8 K p b c U p s I
�= kfrmID  � )) )�:)�9)  ��8)�7
�8 
docu) �)	)	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac) �)
)
  k d 5 C I r B L c 7 7
�9 kfrmID  � )) )�6)�5)  ��4)�3
�4 
docu) �))  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac) �))  e P R 7 I n h Y Z 2 J
�5 kfrmID  � )) )�2)�1)  ��0)�/
�0 
docu) �))  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac) �))  c a g C P S F l a z W
�1 kfrmID  � )) )�.)�-)  ��,)�+
�, 
docu) �))  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac) �))  j M X n p 3 2 I q E _
�- kfrmID  � )) )�*)�))  ��() �'
�( 
docu)  �)!)!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac) �)")"  i u K 8 4 f Q S L O W
�) kfrmID  � )#)# )$�&)%�%)$  ��$)&�#
�$ 
docu)& �)')'  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac)% �)()(  g n 0 Q n N F h 9 p O
�% kfrmID  � )))) )*�")+�!)*  �� ),�
�  
docu), �)-)-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac)+ �).).  k O Z e a 5 X q e B D
�! kfrmID  � )/)/ )0�)1�)0  ��)2�
� 
docu)2 �)3)3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)1 �)4)4  o 7 T 7 w K 2 l c a A
� kfrmID  � )5)5 )6�)7�)6  ��)8�
� 
docu)8 �)9)9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)7 �):):  f 4 u k 5 8 s G 9 O -
� kfrmID  � );); )<�)=�)<  ��)>�
� 
docu)> �)?)?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)= �)@)@  k H p d v 0 j k 6 1 r
� kfrmID  � )A)A )B�)C�)B  ��)D�
� 
docu)D �)E)E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)C �)F)F  c v u F 4 w T O m d Q
� kfrmID  � )G)G )H�)I�)H  ��)J�
� 
docu)J �)K)K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)I �)L)L  l f F r l J M r z m -
� kfrmID  � )M)M )N�
)O�	)N  ��)P�
� 
docu)P �)Q)Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac)O �)R)R  j S 6 b f 3 M F f 8 G
�	 kfrmID  � )S)S )T�)U�)T  ��)V�
� 
docu)V �)W)W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)U �)X)X  f D F F X 0 r t N e N
� kfrmID  � )Y)Y )Z�)[�)Z  �� )\��
�  
docu)\ �)])]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac)[ �)^)^  i j _ d 5 O U W Q w j
� kfrmID  � )_)_ )`��)a��)`  ���)b��
�� 
docu)b �)c)c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)a �)d)d  m k q O d A r 5 f U w
�� kfrmID  � )e)e )f��)g��)f  ���)h��
�� 
docu)h �)i)i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)g �)j)j  l l j v X H A D t M D
�� kfrmID  � )k)k )l��)m��)l  ���)n��
�� 
docu)n �)o)o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)m �)p)p  i A 8 I J t O Z v 1 2
�� kfrmID  � )q)q )r��)s��)r  ���)t��
�� 
docu)t �)u)u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)s �)v)v  f m p a a I a Y o L 7
�� kfrmID  � )w)w )x��)y��)x  ���)z��
�� 
docu)z �){){  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)y �)|)|  k h T Q n p P _ N L v
�� kfrmID  � )})} )~��)��)~  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac) �)�)�  c 0 1 f 4 t y j y x V
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  g 9 p R i 9 _ W f P a
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  m n m T I V j J h s Z
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  d R a m G g K 8 A B O
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  c i Q w R j 2 2 b z U
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  g 0 G S f w W 2 h g I
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  e z 3 h x v I X u w w
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  g T E b K Z p 9 g Y 1
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  p V C 5 _ m n g x P o
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac)� �)�)�  p e g u U W M w X y 9
�� kfrmID  � )�)� )���)���)�  ���)��
�� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac)� �)�)�  l i t e w 3 7 i I W R
�� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  c x D e E h g S z 9 m
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  j e l s C g z Q r s e
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  k d E O f t N W r p O
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  k 5 W 2 l 5 V o 8 B Z
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  h Y r 0 g M j P h - V
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  p Z j E P P c a L g o
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  f e j Q B p X S 6 S T
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  o t F V f _ 9 I g f -
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  f M y C J G K l O g m
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �)�)�  e y o 0 Q q B G 9 I 1
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac)� �* *   o z s i a g c s J e 7
� kfrmID  � ** *�*�*  ��*�
� 
docu* �**  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac* �**  c v S W w I y Z 5 W 0
� kfrmID  � ** *�*	�*  ��*
�
� 
docu*
 �**  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*	 �**  h h n q d x c s 5 z l
� kfrmID  � ** *�*�*  ��*�
� 
docu* �**  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac* �**  p q y r R D n j E G 8
� kfrmID    ** *�*�*  ��*�
� 
docu* �**  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac* �**  f h k C h d m E b k W
� kfrmID   ** *�*�*  ��*�
� 
docu* �**  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac* �**  d O e p j l C I K r -
� kfrmID   ** * �~*!�}*   ��|*"�{
�| 
docu*" �*#*#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac*! �*$*$  d 8 w B 9 z r X 1 J W
�} kfrmID   *%*% *&�z*'�y*&  ��x*(�w
�x 
docu*( �*)*)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac*' �****  h n U F 4 t L Y n f y
�y kfrmID   *+*+ *,�v*-�u*,  ��t*.�s
�t 
docu*. �*/*/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac*- �*0*0  o M C 2 y J I 5 W v _
�u kfrmID   *1*1 *2�r*3�q*2  ��p*4�o
�p 
docu*4 �*5*5  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac*3 �*6*6  h _ H b Y E I 5 o 4 z
�q kfrmID   *7*7 *8�n*9�m*8  ��l*:�k
�l 
docu*: �*;*;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac*9 �*<*<  p g 5 8 L i h d u Z m
�m kfrmID   *=*= *>�j*?�i*>  ��h*@�g
�h 
docu*@ �*A*A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac*? �*B*B  c E C y U B A a o c F
�i kfrmID   *C*C *D�f*E�e*D  ��d*F�c
�d 
docu*F �*G*G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac*E �*H*H  a U h W C f m W F a 7
�e kfrmID  	 *I*I *J�b*K�a*J  ��`*L�_
�` 
docu*L �*M*M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac*K �*N*N  c 7 H 9 D d f U 8 s x
�a kfrmID  
 *O*O *P�^*Q�]*P  ��\*R�[
�\ 
docu*R �*S*S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac*Q �*T*T  l P w Q p i M h V C p
�] kfrmID   *U*U *V�Z*W�Y*V  ��X*X�W
�X 
docu*X �*Y*Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac*W �*Z*Z  l R P - V z g S v Q c
�Y kfrmID   *[*[ *\�V*]�U*\  ��T*^�S
�T 
docu*^ �*_*_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac*] �*`*`  c a 1 r x B f i B d t
�U kfrmID   *a*a *b�R*c�Q*b  ��P*d�O
�P 
docu*d �*e*e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac*c �*f*f  j T o U e 8 k C 4 0 E
�Q kfrmID   *g*g *h�N*i�M*h  ��L*j�K
�L 
docu*j �*k*k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac*i �*l*l  d d e 4 g W 7 y c _ w
�M kfrmID   *m*m *n�J*o�I*n  ��H*p�G
�H 
docu*p �*q*q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac*o �*r*r  i r M z B E k W Q v V
�I kfrmID   *s*s *t�F*u�E*t  ��D*v�C
�D 
docu*v �*w*w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac*u �*x*x  k L x T K v R t S 5 3
�E kfrmID   *y*y *z�B*{�A*z  ��@*|�?
�@ 
docu*| �*}*}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac*{ �*~*~  i S n N s 9 B B v a u
�A kfrmID   ** *��>*��=*�  ��<*��;
�< 
docu*� �*�*�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac*� �*�*�  f u r a E M L w P 3 v
�= kfrmID   *�*� *��:*��9*�  ��8*��7
�8 
docu*� �*�*�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac*� �*�*�  a f E r T 8 x Z n x 3
�9 kfrmID   *�*� *��6*��5*�  ��4*��3
�4 
docu*� �*�*�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac*� �*�*�  b t _ O p t u G w u g
�5 kfrmID   *�*� *��2*��1*�  ��0*��/
�0 
docu*� �*�*�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac*� �*�*�  m o L W w n e n L k 0
�1 kfrmID   *�*� *��.*��-*�  ��,*��+
�, 
docu*� �*�*�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac*� �*�*�  f y U j _ 5 L S v Y O
�- kfrmID   *�*� *��**��)*�  ��(*��'
�( 
docu*� �*�*�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac*� �*�*�  d W g K Y Y W 4 2 0 G
�) kfrmID   *�*� *��&*��%*�  ��$*��#
�$ 
docu*� �*�*�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac*� �*�*�  k U f w P u u u 2 q 3
�% kfrmID   *�*� *��"*��!*�  �� *��
�  
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac*� �*�*�  n a r N y U h j L g V
�! kfrmID   *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  a S d 8 M Q o 1 E L C
� kfrmID   *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  n _ E N t O b r R S j
� kfrmID   *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  g d s - Z l E I y N n
� kfrmID   *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  g x b K f M 4 S 8 M Q
� kfrmID   *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  g 9 6 f V m n i N 1 n
� kfrmID   *�*� *��
*��	*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac*� �*�*�  b l v S e c P i X a j
�	 kfrmID    *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac*� �*�*�  n p P g H 0 M L B W h
� kfrmID  ! *�*� *��*��*�  �� *���
�  
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac*� �*�*�  b Y j R o z 7 z 2 c b
� kfrmID  " *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �*�*�  j C Y S i - N M w j Y
�� kfrmID  # *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �*�*�  n J _ j r u _ n 4 V 6
�� kfrmID  $ *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �*�*�  g u V T r M u 4 U I p
�� kfrmID  % *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �*�*�  j a U O g A 6 - M U P
�� kfrmID  & *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �*�*�  o - n j U o u J D 9 s
�� kfrmID  ' *�*� *���*���*�  ���+ ��
�� 
docu+  �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac*� �++  d B 2 z 5 4 m O O Z F
�� kfrmID  ( ++ +��+��+  ���+��
�� 
docu+ �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+ �++  j d v e q R H 8 G l j
�� kfrmID  ) +	+	 +
��+��+
  ���+��
�� 
docu+ �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+ �++  o m b 7 F k 1 e H M a
�� kfrmID  * ++ +��+��+  ���+��
�� 
docu+ �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+ �++  g a 2 b L M 1 S r C a
�� kfrmID  + ++ +��+��+  ���+��
�� 
docu+ �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+ �++  d n Z c q J E 3 Q b r
�� kfrmID  , ++ +��+��+  ���+��
�� 
docu+ �++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+ �+ +   g K 0 v I j C s K t W
�� kfrmID  - +!+! +"��+#��+"  ���+$��
�� 
docu+$ �+%+%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+# �+&+&  e Z 4 K u z a U o 0 j
�� kfrmID  . +'+' +(��+)��+(  ���+*��
�� 
docu+* �++++  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+) �+,+,  b M X a 4 u m B Y 0 H
�� kfrmID  / +-+- +.��+/��+.  ���+0��
�� 
docu+0 �+1+1  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+/ �+2+2  f H _ t z Q u d 4 6 o
�� kfrmID  0 +3+3 +4��+5��+4  ���+6��
�� 
docu+6 �+7+7  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac+5 �+8+8  a X J g E w i 0 s g 7
�� kfrmID  1 +9+9 +:��+;��+:  ���+<�
�� 
docu+< �+=+=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac+; �+>+>  p 4 4 G V q g y r F t
�� kfrmID  2 +?+? +@�+A�+@  ��+B�
� 
docu+B �+C+C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+A �+D+D  j s m z h j m j w M 2
� kfrmID  3 +E+E +F�+G�+F  ��+H�
� 
docu+H �+I+I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+G �+J+J  j k F f t L 4 g 9 p h
� kfrmID  4 +K+K +L�+M�+L  ��+N�
� 
docu+N �+O+O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+M �+P+P  e b P w 2 l N y d F A
� kfrmID  5 +Q+Q +R�+S�+R  ��+T�
� 
docu+T �+U+U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+S �+V+V  k h v d D J g l K Z P
� kfrmID  6 +W+W +X�+Y�+X  ��+Z�
� 
docu+Z �+[+[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+Y �+\+\  d b _ j K w 2 T C C 3
� kfrmID  7 +]+] +^�+_�+^  ��+`�
� 
docu+` �+a+a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+_ �+b+b  j y W P y V P A 0 H n
� kfrmID  8 +c+c +d�+e�+d  ��+f�
� 
docu+f �+g+g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+e �+h+h  d p D x t U F f d C U
� kfrmID  9 +i+i +j�+k�+j  ��+l�
� 
docu+l �+m+m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+k �+n+n  g o G T G U 4 d W D Q
� kfrmID  : +o+o +p�+q�+p  ��+r�
� 
docu+r �+s+s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+q �+t+t  j g m O y l 4 H D Q 7
� kfrmID  ; +u+u +v�+w�+v  ��+x�
� 
docu+x �+y+y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+w �+z+z  b V p e 9 e p c - _ h
� kfrmID  < +{+{ +|�+}�+|  ��+~�
� 
docu+~ �++  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+} �+�+�  k p e h T m 4 8 H a s
� kfrmID  = +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+� �+�+�  i c 4 X K h u h 8 _ E
� kfrmID  > +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+� �+�+�  h G s s O 4 P 2 1 R Y
� kfrmID  ? +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+� �+�+�  b a Z 2 9 Q W C P H 4
� kfrmID  @ +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+� �+�+�  b V Z 1 W N 2 C f u l
� kfrmID  A +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac+� �+�+�  c M 4 p u n i 1 s 5 g
� kfrmID  B +�+� +��~+��}+�  ��|+��{
�| 
docu+� �+�+�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac+� �+�+�  a H M p a v r f D r E
�} kfrmID  C +�+� +��z+��y+�  ��x+��w
�x 
docu+� �+�+�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac+� �+�+�  d w Y f y y f s m N h
�y kfrmID  D +�+� +��v+��u+�  ��t+��s
�t 
docu+� �+�+�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac+� �+�+�  k O k v g 1 L j w 4 K
�u kfrmID  E +�+� +��r+��q+�  ��p+��o
�p 
docu+� �+�+�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac+� �+�+�  h c K f e 1 X i q a K
�q kfrmID  F +�+� +��n+��m+�  ��l+��k
�l 
docu+� �+�+�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac+� �+�+�  e H T K Q p 1 s h r x
�m kfrmID  G +�+� +��j+��i+�  ��h+��g
�h 
docu+� �+�+�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac+� �+�+�  h 8 R m 7 Z F Y D 8 j
�i kfrmID  H +�+� +��f+��e+�  ��d+��c
�d 
docu+� �+�+�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac+� �+�+�  j t p 0 0 m b 5 9 B p
�e kfrmID  I +�+� +��b+��a+�  ��`+��_
�` 
docu+� �+�+�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac+� �+�+�  h x H 0 r O 9 r j R O
�a kfrmID  J +�+� +��^+��]+�  ��\+��[
�\ 
docu+� �+�+�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac+� �+�+�  l V 9 j U I k o _ B n
�] kfrmID  K +�+� +��Z+��Y+�  ��X+��W
�X 
docu+� �+�+�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac+� �+�+�  p - z 8 z j O 4 N V Z
�Y kfrmID  L +�+� +��V+��U+�  ��T+��S
�T 
docu+� �+�+�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac+� �+�+�  a H S R 2 y N S h s A
�U kfrmID  M +�+� +��R+��Q+�  ��P+��O
�P 
docu+� �+�+�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac+� �+�+�  o 3 n J j n f l J m N
�Q kfrmID  N +�+� +��N+��M+�  ��L+��K
�L 
docu+� �+�+�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac+� �+�+�  m o 9 A F r Q 6 B H d
�M kfrmID  O +�+� +��J+��I+�  ��H+��G
�H 
docu+� �+�+�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac+� �+�+�  g H l - P L n T v 1 x
�I kfrmID  P +�+� +��F+��E+�  ��D+��C
�D 
docu+� �+�+�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac+� �+�+�  f P _ J x s 6 j C H y
�E kfrmID  Q +�+� +��B+��A+�  ��@+��?
�@ 
docu+� �+�+�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac+� �+�+�  n 3 S e 4 e f t b 7 p
�A kfrmID  R +�+� , �>,�=,   ��<,�;
�< 
docu, �,,  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac, �,,  a H k 3 x y N 9 4 Y C
�= kfrmID  S ,, ,�:,�9,  ��8,�7
�8 
docu, �,	,	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac, �,
,
  c E 0 X i r l m c 6 x
�9 kfrmID  T ,, ,�6,�5,  ��4,�3
�4 
docu, �,,  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac, �,,  h x s o F k r w 8 Y E
�5 kfrmID  U ,, ,�2,�1,  ��0,�/
�0 
docu, �,,  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac, �,,  m Y h 5 W W x Q H D V
�1 kfrmID  V ,, ,�.,�-,  ��,,�+
�, 
docu, �,,  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac, �,,  k M g b W c o 7 a W c
�- kfrmID  W ,, ,�*,�),  ��(, �'
�( 
docu,  �,!,!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac, �,","  b x t V f B j Y U b T
�) kfrmID  X ,#,# ,$�&,%�%,$  ��$,&�#
�$ 
docu,& �,','  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac,% �,(,(  b k W l h b p 8 Q F 1
�% kfrmID  Y ,),) ,*�",+�!,*  �� ,,�
�  
docu,, �,-,-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac,+ �,.,.  m S i B 2 d R Y f _ s
�! kfrmID  Z ,/,/ ,0�,1�,0  ��,2�
� 
docu,2 �,3,3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,1 �,4,4  b c t p F W g m x C l
� kfrmID  [ ,5,5 ,6�,7�,6  ��,8�
� 
docu,8 �,9,9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,7 �,:,:  m A Q Q u p 4 5 o c _
� kfrmID  \ ,;,; ,<�,=�,<  ��,>�
� 
docu,> �,?,?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,= �,@,@  k b J g E b Z 4 h h 2
� kfrmID  ] ,A,A ,B�,C�,B  ��,D�
� 
docu,D �,E,E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,C �,F,F  b L m c Y L S A a o v
� kfrmID  ^ ,G,G ,H�,I�,H  ��,J�
� 
docu,J �,K,K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,I �,L,L  j 1 u J 1 W r U y Y n
� kfrmID  _ ,M,M ,N�
,O�	,N  ��,P�
� 
docu,P �,Q,Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac,O �,R,R  b 9 0 7 9 X O N o 1 o
�	 kfrmID  ` ,S,S ,T�,U�,T  ��,V�
� 
docu,V �,W,W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,U �,X,X  g x z g b 3 Q I d s q
� kfrmID  a ,Y,Y ,Z�,[�,Z  �� ,\��
�  
docu,\ �,],]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac,[ �,^,^  i - 4 q W g l s j h x
� kfrmID  b ,_,_ ,`��,a��,`  ���,b��
�� 
docu,b �,c,c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,a �,d,d  o y D b v 4 C o c v W
�� kfrmID  c ,e,e ,f��,g��,f  ���,h��
�� 
docu,h �,i,i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,g �,j,j  k O 4 6 l i - X Y 8 4
�� kfrmID  d ,k,k ,l��,m��,l  ���,n��
�� 
docu,n �,o,o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,m �,p,p  g o t S B b k 5 l F v
�� kfrmID  e ,q,q ,r��,s��,r  ���,t��
�� 
docu,t �,u,u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,s �,v,v  n R T H N h q r 0 _ X
�� kfrmID  f ,w,w ,x��,y��,x  ���,z��
�� 
docu,z �,{,{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,y �,|,|  c w P x z G Z 6 I U 0
�� kfrmID  g ,},} ,~��,��,~  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac, �,�,�  k g O S M c f U I f z
�� kfrmID  h ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  g x g J Q D L h U e G
�� kfrmID  i ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  l E s S 8 z K 2 d 3 v
�� kfrmID  j ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  g N 9 m 7 a S 6 N n h
�� kfrmID  k ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  p E X U D F o j P C l
�� kfrmID  l ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  j o M d u X X h M - l
�� kfrmID  m ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  b K N r W h 7 u 4 U N
�� kfrmID  n ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  d J T W e q c Z y l u
�� kfrmID  o ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  m V E a Z W V 6 t k I
�� kfrmID  p ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac,� �,�,�  j K 3 I 3 K g 7 1 P c
�� kfrmID  q ,�,� ,���,���,�  ���,��
�� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac,� �,�,�  l R 2 D y t C G i 5 e
�� kfrmID  r ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  p H z A 0 B A _ x Y k
� kfrmID  s ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  n B k 7 P 8 d 0 Z t t
� kfrmID  t ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  k d T C c w T m 0 y K
� kfrmID  u ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  j - Y t A 7 8 l 7 N P
� kfrmID  v ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  h 7 G t J B z v U h p
� kfrmID  w ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  i s 0 8 x U V i H x q
� kfrmID  x ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  g 6 c e V Y y A e G c
� kfrmID  y ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  c O D O _ L _ - h t 6
� kfrmID  z ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  d O n C t M Z P B k E
� kfrmID  { ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �,�,�  f x N X V B r w N f k
� kfrmID  | ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac,� �- -   n e 9 q w f O d B O z
� kfrmID  } -- -�-�-  ��-�
� 
docu- �--  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac- �--  c m C q e i 1 _ W S F
� kfrmID  ~ -- -�-	�-  ��-
�
� 
docu-
 �--  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-	 �--  l 7 t B 6 X m D r 7 f
� kfrmID   -- -�-�-  ��-�
� 
docu- �--  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac- �--  e 9 Q 2 M L k P Q 6 S
� kfrmID  � -- -�-�-  ��-�
� 
docu- �--  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac- �--  b 2 x 7 D F t D H 5 0
� kfrmID  � -- -�-�-  ��-�
� 
docu- �--  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac- �--  b z y g q E - T R H z
� kfrmID  � -- - �~-!�}-   ��|-"�{
�| 
docu-" �-#-#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac-! �-$-$  f 0 t c 5 f h P B 5 Y
�} kfrmID  � -%-% -&�z-'�y-&  ��x-(�w
�x 
docu-( �-)-)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac-' �-*-*  h 1 6 1 w P 6 X 1 n c
�y kfrmID  � -+-+ -,�v--�u-,  ��t-.�s
�t 
docu-. �-/-/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac-- �-0-0  g G X a b S b n P a q
�u kfrmID  � -1-1 -2�r-3�q-2  ��p-4�o
�p 
docu-4 �-5-5  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac-3 �-6-6  g B 7 B U _ r L p T 2
�q kfrmID  � -7-7 -8�n-9�m-8  ��l-:�k
�l 
docu-: �-;-;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac-9 �-<-<  h Y G c C H l Q T a -
�m kfrmID  � -=-= ->�j-?�i->  ��h-@�g
�h 
docu-@ �-A-A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac-? �-B-B  f j j u K K r u 2 4 b
�i kfrmID  � -C-C -D�f-E�e-D  ��d-F�c
�d 
docu-F �-G-G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac-E �-H-H  c u h 5 e - q G F Q F
�e kfrmID  � -I-I -J�b-K�a-J  ��`-L�_
�` 
docu-L �-M-M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac-K �-N-N  i E C r 4 _ l F x A g
�a kfrmID  � -O-O -P�^-Q�]-P  ��\-R�[
�\ 
docu-R �-S-S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac-Q �-T-T  a M v 9 C u V 9 8 r L
�] kfrmID  � -U-U -V�Z-W�Y-V  ��X-X�W
�X 
docu-X �-Y-Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac-W �-Z-Z  j L 4 j u a s 2 f F _
�Y kfrmID  � -[-[ -\�V-]�U-\  ��T-^�S
�T 
docu-^ �-_-_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac-] �-`-`  c E k V - p i y B D C
�U kfrmID  � -a-a -b�R-c�Q-b  ��P-d�O
�P 
docu-d �-e-e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac-c �-f-f  i 7 q g H t 6 A k R 3
�Q kfrmID  � -g-g -h�N-i�M-h  ��L-j�K
�L 
docu-j �-k-k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac-i �-l-l  n o l k 2 Q 9 z 3 z A
�M kfrmID  � -m-m -n�J-o�I-n  ��H-p�G
�H 
docu-p �-q-q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac-o �-r-r  o S i e g M k 9 7 W j
�I kfrmID  � -s-s -t�F-u�E-t  ��D-v�C
�D 
docu-v �-w-w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac-u �-x-x  k z r r f S 8 d V b q
�E kfrmID  � -y-y -z�B-{�A-z  ��@-|�?
�@ 
docu-| �-}-}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac-{ �-~-~  k 9 T S b U i m 8 G d
�A kfrmID  � -- -��>-��=-�  ��<-��;
�< 
docu-� �-�-�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac-� �-�-�  l b T _ s T y g o i v
�= kfrmID  � -�-� -��:-��9-�  ��8-��7
�8 
docu-� �-�-�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac-� �-�-�  p f K X s k X q v 1 O
�9 kfrmID  � -�-� -��6-��5-�  ��4-��3
�4 
docu-� �-�-�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac-� �-�-�  f t Q x 8 Z D A X Z i
�5 kfrmID  � -�-� -��2-��1-�  ��0-��/
�0 
docu-� �-�-�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac-� �-�-�  n G A N t g 6 d 2 3 q
�1 kfrmID  � -�-� -��.-��--�  ��,-��+
�, 
docu-� �-�-�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac-� �-�-�  e i T E z p h c - U m
�- kfrmID  � -�-� -��*-��)-�  ��(-��'
�( 
docu-� �-�-�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac-� �-�-�  o X N 2 b 9 m k D C K
�) kfrmID  � -�-� -��&-��%-�  ��$-��#
�$ 
docu-� �-�-�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac-� �-�-�  j s v 1 t Z O E B R C
�% kfrmID  � -�-� -��"-��!-�  �� -��
�  
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac-� �-�-�  l O F 2 p k w i d b S
�! kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  b Z R c _ a H c H i F
� kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  p s 3 9 H M A 2 B e 9
� kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  h v j S p o g t Y d 3
� kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  c Z m s o V Q j P 2 8
� kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  e _ x y 1 P _ M 5 R z
� kfrmID  � -�-� -��
-��	-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac-� �-�-�  n 5 7 9 w X 0 M D K 0
�	 kfrmID  � -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac-� �-�-�  k 2 o E n L K F Y 2 h
� kfrmID  � -�-� -��-��-�  �� -���
�  
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac-� �-�-�  l 0 K S y P 3 8 H X N
� kfrmID  � -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �-�-�  j E i 5 3 P g u r h p
�� kfrmID  � -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �-�-�  i k l F S b Z L 0 7 Q
�� kfrmID  � -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �-�-�  b Z d w q I 5 v - n R
�� kfrmID  � -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �-�-�  c J 9 J G v d I 5 D 0
�� kfrmID  � -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �-�-�  g j 9 t 0 m m Y K A a
�� kfrmID  � -�-� -���-���-�  ���. ��
�� 
docu.  �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac-� �..  n p E 2 X k y J - h P
�� kfrmID  � .. .��.��.  ���.��
�� 
docu. �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac. �..  h 7 U R G A i o L 7 e
�� kfrmID  � .	.	 .
��.��.
  ���.��
�� 
docu. �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac. �..  a h c P m - 7 A y C U
�� kfrmID  � .. .��.��.  ���.��
�� 
docu. �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac. �..  d I f W - 7 b U B w e
�� kfrmID  � .. .��.��.  ���.��
�� 
docu. �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac. �..  l Y Y O i _ A f Z M a
�� kfrmID  � .. .��.��.  ���.��
�� 
docu. �..  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac. �. .   k U s W G I l O L z b
�� kfrmID  � .!.! ."��.#��."  ���.$��
�� 
docu.$ �.%.%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac.# �.&.&  f 9 n f Q k X I U t 7
�� kfrmID  � .'.' .(��.)��.(  ���.*��
�� 
docu.* �.+.+  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac.) �.,.,  o z I F 0 3 R h j v v
�� kfrmID  � .-.- ..��./��..  ���.0��
�� 
docu.0 �.1.1  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac./ �.2.2  g N 0 T T i w 4 r b t
�� kfrmID  � .3.3 .4��.5��.4  ���.6��
�� 
docu.6 �.7.7  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac.5 �.8.8  l g 2 r X h N d a 1 J
�� kfrmID  � .9.9 .:��.;��.:  ���.<�
�� 
docu.< �.=.=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac.; �.>.>  n s _ 7 L a T Y 9 e 1
�� kfrmID  � .?.? .@�.A�.@  ��.B�
� 
docu.B �.C.C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.A �.D.D  e e y u I C B 8 z J -
� kfrmID  � .E.E .F�.G�.F  ��.H�
� 
docu.H �.I.I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.G �.J.J  c 0 D I f 4 9 B n S v
� kfrmID  � .K.K .L�.M�.L  ��.N�
� 
docu.N �.O.O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.M �.P.P  i 2 N 4 q L A b A r H
� kfrmID  � .Q.Q .R�.S�.R  ��.T�
� 
docu.T �.U.U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.S �.V.V  l 9 R 4 9 X K t V 9 E
� kfrmID  � .W.W .X�.Y�.X  ��.Z�
� 
docu.Z �.[.[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.Y �.\.\  e R i H b P n R t K B
� kfrmID  � .].] .^�._�.^  ��.`�
� 
docu.` �.a.a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac._ �.b.b  d L 1 x d O y 8 c b 7
� kfrmID  � .c.c .d�.e�.d  ��.f�
� 
docu.f �.g.g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.e �.h.h  c e P 0 g D 5 2 2 D r
� kfrmID  � .i.i .j�.k�.j  ��.l�
� 
docu.l �.m.m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.k �.n.n  k y u C 2 L J 7 z b q
� kfrmID  � .o.o .p�.q�.p  ��.r�
� 
docu.r �.s.s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.q �.t.t  e Z d L A c G A Y b 8
� kfrmID  � .u.u .v�.w�.v  ��.x�
� 
docu.x �.y.y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.w �.z.z  c 1 w f m i m N B 9 1
� kfrmID  � .{.{ .|�.}�.|  ��.~�
� 
docu.~ �..  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.} �.�.�  b l F a b 5 x b v 0 Z
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.� �.�.�  b M 3 X v t 0 G D m U
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.� �.�.�  k c o P 7 U R H 6 y w
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.� �.�.�  c m 3 D M _ f p T D t
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.� �.�.�  i 4 - S o Q A K s U j
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac.� �.�.�  f v 6 E N s 7 T Z v N
� kfrmID  � .�.� .��~.��}.�  ��|.��{
�| 
docu.� �.�.�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac.� �.�.�  a G e r y Z U - D e 0
�} kfrmID  � .�.� .��z.��y.�  ��x.��w
�x 
docu.� �.�.�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac.� �.�.�  o o F p B 0 S C U 2 l
�y kfrmID  � .�.� .��v.��u.�  ��t.��s
�t 
docu.� �.�.�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac.� �.�.�  k T V i d F C c s L J
�u kfrmID  � .�.� .��r.��q.�  ��p.��o
�p 
docu.� �.�.�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac.� �.�.�  d 3 z U T u k r g m c
�q kfrmID  � .�.� .��n.��m.�  ��l.��k
�l 
docu.� �.�.�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac.� �.�.�  b M 6 V - S m S f U P
�m kfrmID  � .�.� .��j.��i.�  ��h.��g
�h 
docu.� �.�.�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac.� �.�.�  i j p X d J s 2 t 4 W
�i kfrmID  � .�.� .��f.��e.�  ��d.��c
�d 
docu.� �.�.�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac.� �.�.�  j 8 G M Z - w 7 E S 6
�e kfrmID  � .�.� .��b.��a.�  ��`.��_
�` 
docu.� �.�.�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac.� �.�.�  c E s y y 0 x x N T j
�a kfrmID  � .�.� .��^.��].�  ��\.��[
�\ 
docu.� �.�.�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac.� �.�.�  n U D 6 p W - g x U e
�] kfrmID  � .�.� .��Z.��Y.�  ��X.��W
�X 
docu.� �.�.�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac.� �.�.�  n Z _ p w l L 4 o J D
�Y kfrmID  � .�.� .��V.��U.�  ��T.��S
�T 
docu.� �.�.�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac.� �.�.�  p p R P v Z 2 g p u 0
�U kfrmID  � .�.� .��R.��Q.�  ��P.��O
�P 
docu.� �.�.�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac.� �.�.�  m a Q G Q D b p V B W
�Q kfrmID  � .�.� .��N.��M.�  ��L.��K
�L 
docu.� �.�.�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac.� �.�.�  p g f n J T 1 h L 3 4
�M kfrmID  � .�.� .��J.��I.�  ��H.��G
�H 
docu.� �.�.�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac.� �.�.�  o q L _ a q M i R C c
�I kfrmID  � .�.� .��F.��E.�  ��D.��C
�D 
docu.� �.�.�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac.� �.�.�  k Y t Z L q K 2 e 9 i
�E kfrmID  � .�.� .��B.��A.�  ��@.��?
�@ 
docu.� �.�.�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac.� �.�.�  c m N m D b Q H - 9 M
�A kfrmID  � .�.� / �>/�=/   ��</�;
�< 
docu/ �//  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac/ �//  h f t g m U f E u N x
�= kfrmID  � // /�:/�9/  ��8/�7
�8 
docu/ �/	/	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac/ �/
/
  h H f k N h b m W _ H
�9 kfrmID  � // /�6/�5/  ��4/�3
�4 
docu/ �//  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac/ �//  c k H N T A L l B u L
�5 kfrmID  � // /�2/�1/  ��0/�/
�0 
docu/ �//  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac/ �//  l M W i N W f d u n p
�1 kfrmID  � // /�./�-/  ��,/�+
�, 
docu/ �//  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac/ �//  k X l q D b A Z L n h
�- kfrmID  � // /�*/�)/  ��(/ �'
�( 
docu/  �/!/!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac/ �/"/"  g L N 4 5 N Z V A H D
�) kfrmID  � /#/# /$�&/%�%/$  ��$/&�#
�$ 
docu/& �/'/'  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac/% �/(/(  p J P k W 6 Z g - O U
�% kfrmID  � /)/) /*�"/+�!/*  �� /,�
�  
docu/, �/-/-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac/+ �/./.  n Y 8 y U 9 K R B i r
�! kfrmID  � //// /0�/1�/0  ��/2�
� 
docu/2 �/3/3  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/1 �/4/4  b H K _ v 6 d A y O a
� kfrmID  � /5/5 /6�/7�/6  ��/8�
� 
docu/8 �/9/9  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/7 �/:/:  b 8 p a b v c W t Y B
� kfrmID  � /;/; /<�/=�/<  ��/>�
� 
docu/> �/?/?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/= �/@/@  c Q d 4 B S a g n t v
� kfrmID  � /A/A /B�/C�/B  ��/D�
� 
docu/D �/E/E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/C �/F/F  m p _ U _ N 2 m I 8 j
� kfrmID  � /G/G /H�/I�/H  ��/J�
� 
docu/J �/K/K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/I �/L/L  h v 0 i D C i B F o l
� kfrmID  � /M/M /N�
/O�	/N  ��/P�
� 
docu/P �/Q/Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac/O �/R/R  d n X v u - V R M W 9
�	 kfrmID  � /S/S /T�/U�/T  ��/V�
� 
docu/V �/W/W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/U �/X/X  a s T f p z H _ v W -
� kfrmID  � /Y/Y /Z�/[�/Z  �� /\��
�  
docu/\ �/]/]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac/[ �/^/^  m g B B C i O X U h L
� kfrmID  � /_/_ /`��/a��/`  ���/b��
�� 
docu/b �/c/c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/a �/d/d  p t 6 8 m 0 d w V b c
�� kfrmID  � /e/e /f��/g��/f  ���/h��
�� 
docu/h �/i/i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/g �/j/j  k N X g I i 2 9 N 4 P
�� kfrmID  � /k/k /l��/m��/l  ���/n��
�� 
docu/n �/o/o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/m �/p/p  a e 8 U B 1 8 f O a g
�� kfrmID  � /q/q /r��/s��/r  ���/t��
�� 
docu/t �/u/u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/s �/v/v  d D 1 U i 5 9 o B E W
�� kfrmID  � /w/w /x��/y��/x  ���/z��
�� 
docu/z �/{/{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/y �/|/|  e M Q 6 W p z z a e k
�� kfrmID  � /}/} /~��/��/~  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/ �/�/�  l N m u U Z - 5 j v X
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  j d D a 0 D r 6 _ j K
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  n f F E N Y 5 V A c 6
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  o y 7 U e 5 u R X E 5
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  m G r n c p g X f O I
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  o 5 T X A 1 n 8 i c b
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  f g 1 c 4 Q Q B K Q g
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  b b M I B o 7 y S q t
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  d x Y I N l r r G v z
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac/� �/�/�  i z H J R 5 h l e w b
�� kfrmID  � /�/� /���/���/�  ���/��
�� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac/� �/�/�  f r 0 u - S p B n B O
�� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  k p E i I Q n c q 1 s
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  o q _ q 8 y i w 8 r U
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  c z M 3 N c s b Z d R
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  j R w j 0 a C 5 b Z B
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  j p Z U c Y E I 4 Y 8
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  o D V S 4 Y 3 S 6 J U
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  g m p 2 o a n Z M t Q
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  k B k I - c I C d t o
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  n 6 W g X G H s D 7 E
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �/�/�  c e o 3 K 2 j X K J i
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac/� �0 0   b X d R R 7 v t H U T
� kfrmID  � 00 0�0�0  ��0�
� 
docu0 �00  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0 �00  c n X g 8 u h f G y Z
� kfrmID  � 00 0�0	�0  ��0
�
� 
docu0
 �00  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0	 �00  i j v D F i q q H y A
� kfrmID  � 00 0�0�0  ��0�
� 
docu0 �00  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0 �00  c c 0 j M t p O Z n V
� kfrmID    00 0�0�0  ��0�
� 
docu0 �00  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0 �00  f 4 U _ c T L W g I W
� kfrmID   00 0�0�0  ��0�
� 
docu0 �00  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0 �00  i 0 F i e W O H f 7 9
� kfrmID   00 0 �~0!�}0   ��|0"�{
�| 
docu0" �0#0#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac0! �0$0$  n l C L 0 3 h d 1 n p
�} kfrmID   0%0% 0&�z0'�y0&  ��x0(�w
�x 
docu0( �0)0)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac0' �0*0*  c f P O e u m o 4 A w
�y kfrmID   0+0+ 0,�v0-�u0,  ��t0.�s
�t 
docu0. �0/0/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac0- �0000  k l a 6 y T W z H 4 F
�u kfrmID   0101 02�r03�q02  ��p04�o
�p 
docu04 �0505  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac03 �0606  g 0 y t K 8 b C l n 2
�q kfrmID   0707 08�n09�m08  ��l0:�k
�l 
docu0: �0;0;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac09 �0<0<  e m 4 _ I D A 0 c p 6
�m kfrmID   0=0= 0>�j0?�i0>  ��h0@�g
�h 
docu0@ �0A0A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac0? �0B0B  d _ F j i t R 7 v N Q
�i kfrmID   0C0C 0D�f0E�e0D  ��d0F�c
�d 
docu0F �0G0G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac0E �0H0H  f P y h d r y 6 t e g
�e kfrmID  	 0I0I 0J�b0K�a0J  ��`0L�_
�` 
docu0L �0M0M  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac0K �0N0N  h A 0 A W c g W u d L
�a kfrmID  
 0O0O 0P�^0Q�]0P  ��\0R�[
�\ 
docu0R �0S0S  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac0Q �0T0T  a W k X - d p z 9 n W
�] kfrmID   0U0U 0V�Z0W�Y0V  ��X0X�W
�X 
docu0X �0Y0Y  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac0W �0Z0Z  m S V H y 7 a j D v 8
�Y kfrmID   0[0[ 0\�V0]�U0\  ��T0^�S
�T 
docu0^ �0_0_  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac0] �0`0`  p e 5 v a i F w Q X z
�U kfrmID   0a0a 0b�R0c�Q0b  ��P0d�O
�P 
docu0d �0e0e  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac0c �0f0f  p r Z x o z Z S p - 3
�Q kfrmID   0g0g 0h�N0i�M0h  ��L0j�K
�L 
docu0j �0k0k  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac0i �0l0l  c T n P v V E f N 5 j
�M kfrmID   0m0m 0n�J0o�I0n  ��H0p�G
�H 
docu0p �0q0q  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac0o �0r0r  g h Q f k Q l o 6 g i
�I kfrmID   0s0s 0t�F0u�E0t  ��D0v�C
�D 
docu0v �0w0w  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac0u �0x0x  m B j k t e 7 p l L H
�E kfrmID   0y0y 0z�B0{�A0z  ��@0|�?
�@ 
docu0| �0}0}  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac0{ �0~0~  h 1 x Q e Y D G Q r x
�A kfrmID   00 0��>0��=0�  ��<0��;
�< 
docu0� �0�0�  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac0� �0�0�  j C A G R P t i 4 U M
�= kfrmID   0�0� 0��:0��90�  ��80��7
�8 
docu0� �0�0�  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac0� �0�0�  n g q J T y l y Y 1 f
�9 kfrmID   0�0� 0��60��50�  ��40��3
�4 
docu0� �0�0�  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac0� �0�0�  l r m e U z l J n 1 9
�5 kfrmID   0�0� 0��20��10�  ��00��/
�0 
docu0� �0�0�  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac0� �0�0�  m _ P m L A R 6 M W 2
�1 kfrmID   0�0� 0��.0��-0�  ��,0��+
�, 
docu0� �0�0�  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac0� �0�0�  p Q T f B j D Q _ O Y
�- kfrmID   0�0� 0��*0��)0�  ��(0��'
�( 
docu0� �0�0�  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac0� �0�0�  f Z M N 1 1 1 Y e N O
�) kfrmID   0�0� 0��&0��%0�  ��$0��#
�$ 
docu0� �0�0�  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac0� �0�0�  p 3 u - 2 w F Y A R U
�% kfrmID   0�0� 0��"0��!0�  �� 0��
�  
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac0� �0�0�  p P K - X I F O 1 V a
�! kfrmID   0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  e S q 8 i 2 M v P I a
� kfrmID   0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  e B e a s n O X M _ J
� kfrmID   0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  o c F Y y - h t m M C
� kfrmID   0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  h Y s 8 p J M b P 8 K
� kfrmID   0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  f 7 k c Z 3 D p W G n
� kfrmID   0�0� 0��
0��	0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac0� �0�0�  e X m b Z 7 V c 9 r G
�	 kfrmID    0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac0� �0�0�  h 1 z 6 z n i H l 6 _
� kfrmID  ! 0�0� 0��0��0�  �� 0���
�  
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac0� �0�0�  m Y 6 j i Z X c x c K
� kfrmID  " 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �0�0�  d S v X o a m 5 l g l
�� kfrmID  # 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �0�0�  h l - k 9 C p 0 l T C
�� kfrmID  $ 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �0�0�  c 9 x q w T n a x _ A
�� kfrmID  % 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �0�0�  f f 3 T x c T J E t 0
�� kfrmID  & 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �0�0�  c k H u 6 3 w x p 9 D
�� kfrmID  ' 0�0� 0���0���0�  ���1 ��
�� 
docu1  �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac0� �11  p j 2 i l x a 5 7 x _
�� kfrmID  ( 11 1��1��1  ���1��
�� 
docu1 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1 �11  k u e 3 A l b l v C 0
�� kfrmID  ) 1	1	 1
��1��1
  ���1��
�� 
docu1 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1 �11  b q x x 5 Q h L 0 F D
�� kfrmID  * 11 1��1��1  ���1��
�� 
docu1 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1 �11  l m n C o I x 7 5 G m
�� kfrmID  + 11 1��1��1  ���1��
�� 
docu1 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1 �11  i s a v f u c D D p L
�� kfrmID  , 11 1��1��1  ���1��
�� 
docu1 �11  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1 �1 1   i H G n H s n V j a C
�� kfrmID  - 1!1! 1"��1#��1"  ���1$��
�� 
docu1$ �1%1%  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1# �1&1&  k H z F K r G a - K 0
�� kfrmID  . 1'1' 1(��1)��1(  ���1*��
�� 
docu1* �1+1+  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1) �1,1,  k M P j v 5 6 Y U d S
�� kfrmID  / 1-1- 1.��1/��1.  ���10��
�� 
docu10 �1111  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac1/ �1212  f V p _ C i f y q 6 u
�� kfrmID  0 1313 14��15��14  ���16��
�� 
docu16 �1717  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac15 �1818  c T L p N q g r Y W g
�� kfrmID  1 1919 1:��1;��1:  ���1<�
�� 
docu1< �1=1=  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac1; �1>1>  i z U 8 t T p 0 6 S a
�� kfrmID  2 1?1? 1@�1A�1@  ��1B�
� 
docu1B �1C1C  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1A �1D1D  a j X G 4 f q 5 p q X
� kfrmID  3 1E1E 1F�1G�1F  ��1H�
� 
docu1H �1I1I  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1G �1J1J  h b A 0 C G i g E c e
� kfrmID  4 1K1K 1L�1M�1L  ��1N�
� 
docu1N �1O1O  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1M �1P1P  n W C B R B 4 4 S U v
� kfrmID  5 1Q1Q 1R�1S�1R  ��1T�
� 
docu1T �1U1U  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1S �1V1V  b P 2 r O B c m 6 8 A
� kfrmID  6 1W1W 1X�1Y�1X  ��1Z�
� 
docu1Z �1[1[  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1Y �1\1\  l T 2 t 7 w F s L a y
� kfrmID  7 1]1] 1^�1_�1^  ��1`�
� 
docu1` �1a1a  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1_ �1b1b  m R U k a J S S F x y
� kfrmID  8 1c1c 1d�1e�1d  ��1f�
� 
docu1f �1g1g  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1e �1h1h  l K q B I V q R o J f
� kfrmID  9 1i1i 1j�1k�1j  ��1l�
� 
docu1l �1m1m  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1k �1n1n  l 6 m v y 0 T X D I l
� kfrmID  : 1o1o 1p�1q�1p  ��1r�
� 
docu1r �1s1s  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1q �1t1t  k S Y n a y k G 6 q A
� kfrmID  ; 1u1u 1v�1w�1v  ��1x�
� 
docu1x �1y1y  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1w �1z1z  k m 7 x 1 x 7 J A b c
� kfrmID  < 1{1{ 1|�1}�1|  ��1~�
� 
docu1~ �11  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1} �1�1�  i 0 H n n z F T - V J
� kfrmID  = 1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1� �1�1�  c P y u V x 5 w D U U
� kfrmID  > 1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1� �1�1�  l T p 1 a 4 3 Z _ b A
� kfrmID  ? 1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1� �1�1�  a O 6 a x _ Q T B _ l
� kfrmID  @ 1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1� �1�1�  c g N S F _ V R z n 3
� kfrmID  A 1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac1� �1�1�  f a p d f N C x f s n
� kfrmID  B 1�1� 1��~1��}1�  ��|1��{
�| 
docu1� �1�1�  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac1� �1�1�  a w T I n 1 Q D v P e
�} kfrmID  C 1�1� 1��z1��y1�  ��x1��w
�x 
docu1� �1�1�  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac1� �1�1�  h T _ M L 3 5 a K 3 d
�y kfrmID  D 1�1� 1��v1��u1�  ��t1��s
�t 
docu1� �1�1�  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac1� �1�1�  k m x J O H E I J O -
�u kfrmID  E 1�1� 1��r1��q1�  ��p1��o
�p 
docu1� �1�1�  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac1� �1�1�  e c 8 D F E K _ m W M
�q kfrmID  F 1�1� 1��n1��m1�  ��l1��k
�l 
docu1� �1�1�  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac1� �1�1�  m p t f q D x i O s y
�m kfrmID  G 1�1� 1��j1��i1�  ��h1��g
�h 
docu1� �1�1�  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac1� �1�1�  m Y 3 t s 9 S V r U _
�i kfrmID  H 1�1� 1��f1��e1�  ��d1��c
�d 
docu1� �1�1�  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac1� �1�1�  m r m l k V Z R w u K
�e kfrmID  I 1�1� 1��b1��a1�  ��`1��_
�` 
docu1� �1�1�  c E X g b J E s 3 1 n
�_ kfrmID  
�b 
FCac1� �1�1�  g 4 f s C R L x x 4 D
�a kfrmID  J 1�1� 1��^1��]1�  ��\1��[
�\ 
docu1� �1�1�  c E X g b J E s 3 1 n
�[ kfrmID  
�^ 
FCac1� �1�1�  i e f h z Q 6 I 7 8 k
�] kfrmID  K 1�1� 1��Z1��Y1�  ��X1��W
�X 
docu1� �1�1�  c E X g b J E s 3 1 n
�W kfrmID  
�Z 
FCac1� �1�1�  d O Z G - 6 T 3 g u S
�Y kfrmID  L 1�1� 1��V1��U1�  ��T1��S
�T 
docu1� �1�1�  c E X g b J E s 3 1 n
�S kfrmID  
�V 
FCac1� �1�1�  g c p 7 k 7 l B L C 9
�U kfrmID  M 1�1� 1��R1��Q1�  ��P1��O
�P 
docu1� �1�1�  c E X g b J E s 3 1 n
�O kfrmID  
�R 
FCac1� �1�1�  f l M 8 r d 0 d Y t F
�Q kfrmID  N 1�1� 1��N1��M1�  ��L1��K
�L 
docu1� �1�1�  c E X g b J E s 3 1 n
�K kfrmID  
�N 
FCac1� �1�1�  c g y V j 0 V d C K X
�M kfrmID  O 1�1� 1��J1��I1�  ��H1��G
�H 
docu1� �1�1�  c E X g b J E s 3 1 n
�G kfrmID  
�J 
FCac1� �1�1�  k Y Q J V D k 3 q O n
�I kfrmID  P 1�1� 1��F1��E1�  ��D1��C
�D 
docu1� �1�1�  c E X g b J E s 3 1 n
�C kfrmID  
�F 
FCac1� �1�1�  n w Y g a 9 B Z 7 - d
�E kfrmID  Q 1�1� 1��B1��A1�  ��@1��?
�@ 
docu1� �1�1�  c E X g b J E s 3 1 n
�? kfrmID  
�B 
FCac1� �1�1�  e - E L K A V n c b Z
�A kfrmID  R 1�1� 2 �>2�=2   ��<2�;
�< 
docu2 �22  c E X g b J E s 3 1 n
�; kfrmID  
�> 
FCac2 �22  d p n - 2 - w 3 l 1 R
�= kfrmID  S 22 2�:2�92  ��82�7
�8 
docu2 �2	2	  c E X g b J E s 3 1 n
�7 kfrmID  
�: 
FCac2 �2
2
  c 5 4 J M X - Y I 9 J
�9 kfrmID  T 22 2�62�52  ��42�3
�4 
docu2 �22  c E X g b J E s 3 1 n
�3 kfrmID  
�6 
FCac2 �22  a L z 4 0 v q _ A U R
�5 kfrmID  U 22 2�22�12  ��02�/
�0 
docu2 �22  c E X g b J E s 3 1 n
�/ kfrmID  
�2 
FCac2 �22  i e 4 O m X 8 V l d m
�1 kfrmID  V 22 2�.2�-2  ��,2�+
�, 
docu2 �22  c E X g b J E s 3 1 n
�+ kfrmID  
�. 
FCac2 �22  c c S o O H u Q 9 7 V
�- kfrmID  W 22 2�*2�)2  ��(2 �'
�( 
docu2  �2!2!  c E X g b J E s 3 1 n
�' kfrmID  
�* 
FCac2 �2"2"  l - r v e Q B X Q 5 Q
�) kfrmID  X 2#2# 2$�&2%�%2$  ��$2&�#
�$ 
docu2& �2'2'  c E X g b J E s 3 1 n
�# kfrmID  
�& 
FCac2% �2(2(  e E m W a t Q J P y M
�% kfrmID  Y 2)2) 2*�"2+�!2*  �� 2,�
�  
docu2, �2-2-  c E X g b J E s 3 1 n
� kfrmID  
�" 
FCac2+ �2.2.  i 8 7 u S K o F K E T
�! kfrmID  Z 2/2/ 20�21�20  ��22�
� 
docu22 �2323  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac21 �2424  e 2 t O q N A v M W 2
� kfrmID  [ 2525 26�27�26  ��28�
� 
docu28 �2929  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac27 �2:2:  o G Z 3 t H R 9 3 P F
� kfrmID  \ 2;2; 2<�2=�2<  ��2>�
� 
docu2> �2?2?  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2= �2@2@  l U 1 S U 5 M d 8 - I
� kfrmID  ] 2A2A 2B�2C�2B  ��2D�
� 
docu2D �2E2E  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2C �2F2F  j 3 I _ K F q s n 5 n
� kfrmID  ^ 2G2G 2H�2I�2H  ��2J�
� 
docu2J �2K2K  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2I �2L2L  f 3 7 t a p w 7 C P t
� kfrmID  _ 2M2M 2N�
2O�	2N  ��2P�
� 
docu2P �2Q2Q  c E X g b J E s 3 1 n
� kfrmID  
�
 
FCac2O �2R2R  h T b w F Z h g S C 8
�	 kfrmID  ` 2S2S 2T�2U�2T  ��2V�
� 
docu2V �2W2W  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2U �2X2X  g G G f i O R 2 v 4 5
� kfrmID  a 2Y2Y 2Z�2[�2Z  �� 2\��
�  
docu2\ �2]2]  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac2[ �2^2^  j W i s C g p e D e 7
� kfrmID  b 2_2_ 2`��2a��2`  ���2b��
�� 
docu2b �2c2c  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2a �2d2d  a E P u v e x k C C s
�� kfrmID  c 2e2e 2f��2g��2f  ���2h��
�� 
docu2h �2i2i  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2g �2j2j  f V t - 9 S 8 T W E 0
�� kfrmID  d 2k2k 2l��2m��2l  ���2n��
�� 
docu2n �2o2o  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2m �2p2p  e _ R U v q y N p 8 s
�� kfrmID  e 2q2q 2r��2s��2r  ���2t��
�� 
docu2t �2u2u  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2s �2v2v  j u B r C F e l H t S
�� kfrmID  f 2w2w 2x��2y��2x  ���2z��
�� 
docu2z �2{2{  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2y �2|2|  k H u L N f x y g Z w
�� kfrmID  g 2}2} 2~��2��2~  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2 �2�2�  a f o S T m E H N 1 N
�� kfrmID  h 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  h U 8 u r Z Y G g R e
�� kfrmID  i 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  k I E T y I 6 w l A e
�� kfrmID  j 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  k v W p 9 3 Q l X b f
�� kfrmID  k 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  f r a z l 9 V T B a 8
�� kfrmID  l 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  d j Y N R y e p g M c
�� kfrmID  m 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  p k g W 6 L d G u W v
�� kfrmID  n 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  o L L - p x 4 S 8 H U
�� kfrmID  o 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  n 9 v Y r 1 1 m N e M
�� kfrmID  p 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  h P d K f J 9 p G 3 n
�� kfrmID  q 2�2� 2���2���2�  ���2��
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac2� �2�2�  g G g n u P u Z 2 o J
�� kfrmID  r 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  e m h q N _ K P b x 2
� kfrmID  s 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  o x Y 0 u N h q 3 c I
� kfrmID  t 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  k x S y D g r g R D Z
� kfrmID  u 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  n 3 2 L R K U Q 0 P i
� kfrmID  v 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  n n W v n N X A L b T
� kfrmID  w 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  i C E 3 g Z V B r Q h
� kfrmID  x 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E X g b J E s 3 1 n
� kfrmID  
� 
FCac2� �2�2�  h Z 8 i 2 9 U n n _ l
� kfrmID  y 2�2� 2��2��2�  ��2���
� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
� 
FCac2� �2�2�  i k F a W A T P f w b
� kfrmID  z 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  d g 4 U i k m d R 4 e
�� kfrmID  { 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �2�2�  k L R - l u L 0 D v 3
�� kfrmID  | 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac2� �3 3   o x S _ h 2 D 2 - M J
�� kfrmID  } 33 3��3��3  ���3��
�� 
docu3 �33  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac3 �33  n E G l 1 M I 1 O p w
�� kfrmID  ~ 33 3��3	��3  ���3
��
�� 
docu3
 �33  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac3	 �33  c G S S B 9 4 T r W 4
�� kfrmID   33 3��3��3  ���3��
�� 
docu3 �33  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac3 �33  d B n d v 7 K 4 H 9 o
�� kfrmID  � 33 3��3��3  ���3��
�� 
docu3 �33  c E X g b J E s 3 1 n
�� kfrmID  
�� 
FCac3 �33  n V r S 5 B J m L f U
�� kfrmID  � 33 3��3��3  ���3�
�� 
docu3 �33  c E X g b J E s 3 1 n
� kfrmID  
�� 
FCac3 �33  l 9 o V F J F o V E f
�� kfrmID  � 33 3 �~3!�}3   ��|3"�{
�| 
docu3" �3#3#  c E X g b J E s 3 1 n
�{ kfrmID  
�~ 
FCac3! �3$3$  j F - 6 w F 3 X 5 B I
�} kfrmID  � 3%3% 3&�z3'�y3&  ��x3(�w
�x 
docu3( �3)3)  c E X g b J E s 3 1 n
�w kfrmID  
�z 
FCac3' �3*3*  j P m i w b T z v c 0
�y kfrmID  � 3+3+ 3,�v3-�u3,  ��t3.�s
�t 
docu3. �3/3/  c E X g b J E s 3 1 n
�s kfrmID  
�v 
FCac3- �3030  i 0 C L - m 0 6 g 1 g
�u kfrmID  � 3131 32�r33�q32  ��p34�o
�p 
docu34 �3535  c E X g b J E s 3 1 n
�o kfrmID  
�r 
FCac33 �3636  j f Z b Y C D _ l 1 K
�q kfrmID  � 3737 38�n39�m38  ��l3:�k
�l 
docu3: �3;3;  c E X g b J E s 3 1 n
�k kfrmID  
�n 
FCac39 �3<3<  f Q k I K E X h X E P
�m kfrmID  � 3=3= 3>�j3?�i3>  ��h3@�g
�h 
docu3@ �3A3A  c E X g b J E s 3 1 n
�g kfrmID  
�j 
FCac3? �3B3B  b U F c i A U 0 Y N h
�i kfrmID  � 3C3C 3D�f3E�e3D  ��d3F�c
�d 
docu3F �3G3G  c E X g b J E s 3 1 n
�c kfrmID  
�f 
FCac3E �3H3H  b S i w I z Z X 2 Q 0
�e kfrmID  
�� 
cobj�� A� 3I3I ��b�a
�b 
cobj�a G� 3J3J ��`�_
�` 
cobj�_ K� 3K3K ��^�]
�^ 
cobj�] L� 3L3L ��\�[
�\ 
cobj�[ M� 3M3M ��Z�Y
�Z 
cobj�Y N� 3N3N ��X�W
�X 
cobj�W Q� 3O3O ��V�U
�V 
cobj�U R� 3P3P ��T�S
�T 
cobj�S S� 3Q3Q ��R�Q
�R 
cobj�Q V� 3R3R ��P�O
�P 
cobj�O X� 3S3S ��N�M
�N 
cobj�M [� 3T3T ��L�K
�L 
cobj�K ^� 3U3U ��J�I
�J 
cobj�I a� 3V3V ��H�G
�H 
cobj�G b� 3W3W ��F�E
�F 
cobj�E e� 3X3X ��D�C
�D 
cobj�C f� 3Y3Y ��B�A
�B 
cobj�A l� 3Z3Z ��@�?
�@ 
cobj�? o� 3[3[ ��>�=
�> 
cobj�= r� 3\3\ ��<�;
�< 
cobj�; s� 3]3] ��:�9
�: 
cobj�9 u� 3^3^ ��8�7
�8 
cobj�7 v� 3_3_ ��6�5
�6 
cobj�5 w� 3`3` ��4�3
�4 
cobj�3 x� 3a3a ��2�1
�2 
cobj�1 y� 3b3b ��0�/
�0 
cobj�/ z� 3c3c ��.�-
�. 
cobj�- {� 3d3d ��,�+
�, 
cobj�+ |� 3e3e ��*�)
�* 
cobj�) }� 3f3f ��(�'
�( 
cobj�' ~� 3g3g ��&�%
�& 
cobj�% � 3h3h ��$�#
�$ 
cobj�# �� 3i3i ��"�!
�" 
cobj�! �� 3j3j �� �
�  
cobj� �� 3k3k ���
� 
cobj� �� 3l3l ���
� 
cobj� �� 3m3m ���
� 
cobj� �� 3n3n ���
� 
cobj� �� 3o3o ���
� 
cobj� �� 3p3p ���
� 
cobj� �� 3q3q ���
� 
cobj� �� 3r3r ���
� 
cobj� �� 3s3s ���
� 
cobj� �� 3t3t ���
� 
cobj� �� 3u3u ��
�	
�
 
cobj�	 �� 3v3v ���
� 
cobj� �� 3w3w ���
� 
cobj� �� 3x3x ���
� 
cobj� �� 3y3y ���
� 
cobj� �� 3z3z �� ��
�  
cobj�� �� 3{3{ �����
�� 
cobj�� �� 3|3| �����
�� 
cobj�� �� 3}3} �����
�� 
cobj�� �� 3~3~ �����
�� 
cobj�� �� 33 �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� �����
�� 
cobj�� �� 3�3� ���߿
�� 
cobj߿ �� 3�3� �߾߽
߾ 
cobj߽ �� 3�3� �߼߻
߼ 
cobj߻ �� 3�3� �ߺ߹
ߺ 
cobj߹ �� 3�3� �߸߷
߸ 
cobj߷ �� 3�3� �߶ߵ
߶ 
cobjߵ �� 3�3� �ߴ߳
ߴ 
cobj߳ �� 3�3� �߲߱
߲ 
cobj߱� 3�3� �߰߯
߰ 
cobj߯4� 3�3� �߮߭
߮ 
cobj߭X� 3�3� �߬߫
߬ 
cobj߫^� 3�3� �ߪߩ
ߪ 
cobjߩd� 3�3� �ߨߧ
ߨ 
cobjߧj� 3�3� �ߦߥ
ߦ 
cobjߥp� 3�3� �ߤߣ
ߤ 
cobjߣv� 3�3� �ߢߡ
ߢ 
cobjߡ|� 3�3� �ߠߟ
ߠ 
cobjߟ�� 3�3� �ߞߝ
ߞ 
cobjߝ�  3�3� �ߜߛ
ߜ 
cobjߛ� 3�3� �ߚߙ
ߚ 
cobjߙ� 3�3� �ߘߗ
ߘ 
cobjߗ� 3�3� �ߖߕ
ߖ 
cobjߕ� 3�3� �ߔߓ
ߔ 
cobjߓ� 3�3� �ߒߑ
ߒ 
cobjߑ� 3�3� �ߐߏ
ߐ 
cobjߏ� 3�3� �ߎߍ
ߎ 
cobjߍ� 3�3� �ߌߋ
ߌ 
cobjߋ�	 3�3� �ߊ߉
ߊ 
cobj߉
 3�3� �߈߇
߈ 
cobj߇@ 3�3� �߆߅
߆ 
cobj߅d 3�3� �߄߃
߄ 
cobj߃� 3�3� �߂߁
߂ 
cobj߁� 3�3� �߀�
߀ 
cobj�� 3�3� ��~�}
�~ 
cobj�}� 3�3� ��|�{
�| 
cobj�{ 3�3� ��z�y
�z 
cobj�y 3�3� ��x�w
�x 
cobj�w 3�3� ��v�u
�v 
cobj�u 3�3� ��t�s
�t 
cobj�s 3�3� ��r�q
�r 
cobj�q 3�3� ��p�o
�p 
cobj�o! 3�3� ��n�m
�n 
cobj�m" 3�3� ��l�k
�l 
cobj�k# 3�3� ��j�i
�j 
cobj�i) 3�3� ��h�g
�h 
cobj�g/ 3�3� ��f�e
�f 
cobj�e1 3�3� ��d�c
�d 
cobj�c3 3�3� ��b�a
�b 
cobj�a5 3�3� ��`�_
�` 
cobj�_7 3�3� ��^�]
�^ 
cobj�]8  3�3� ��\�[
�\ 
cobj�[9! 3�3� ��Z�Y
�Z 
cobj�Y:" 3�3� ��X�W
�X 
cobj�W;# 3�3� ��V�U
�V 
cobj�U<$ 3�3� ��T�S
�T 
cobj�S=% 3�3� ��R�Q
�R 
cobj�Q>& 3�3� ��P�O
�P 
cobj�O?' 3�3� ��N�M
�N 
cobj�M@( 3�3� ��L�K
�L 
cobj�KA) 3�3� ��J�I
�J 
cobj�IB* 3�3� ��H�G
�H 
cobj�GC+ 3�3� ��F�E
�F 
cobj�ED, 3�3� ��D�C
�D 
cobj�CE- 3�3� ��B�A
�B 
cobj�AF. 3�3� ��@�?
�@ 
cobj�?G/ 3�3� ��>�=
�> 
cobj�=H0 3�3� ��<�;
�< 
cobj�;I1 3�3� ��:�9
�: 
cobj�9J2 3�3� ��8�7
�8 
cobj�7K3 3�3� ��6�5
�6 
cobj�5L4 3�3� ��4�3
�4 
cobj�3M5 3�3� ��2�1
�2 
cobj�1N6 3�3� ��0�/
�0 
cobj�/O7 3�3� ��.�-
�. 
cobj�-P8 3�3� ��,�+
�, 
cobj�+Q9 3�3� ��*�)
�* 
cobj�)R: 3�3� ��(�'
�( 
cobj�'S; 3�3� ��&�%
�& 
cobj�%T< 3�3� ��$�#
�$ 
cobj�#U= 3�3� ��"�!
�" 
cobj�!V> 3�3� �� �
�  
cobj�X? 3�3� ���
� 
cobj�[@ 3�3� ���
� 
cobj�\A 3�3� ���
� 
cobj�]B 3�3� ���
� 
cobj�_C 3�3� ���
� 
cobj�`D 3�3� ���
� 
cobj�bE 3�3� ���
� 
cobj�gF 3�3� ���
� 
cobj�hG 3�3� ���
� 
cobj�iH 3�3� ���
� 
cobj�jI 3�3� ��
�	
�
 
cobj�	mJ 3�3� ���
� 
cobj�nK 3�3� ���
� 
cobj�oL 3�3� ���
� 
cobj�pM 3�3� ���
� 
cobj�qN 3�3� �� ��
�  
cobj��rO 3�3� �����
�� 
cobj��sP 3�3� �����
�� 
cobj��tQ 3�3� �����
�� 
cobj��xR 3�3� �����
�� 
cobj��yS 3�3� �����
�� 
cobj��zT 4 4  �����
�� 
cobj��~U 44 �����
�� 
cobj��V 44 �����
�� 
cobj���W 44 �����
�� 
cobj���X 44 �����
�� 
cobj���Y 44 �����
�� 
cobj���Z 44 �����
�� 
cobj���[ 44 �����
�� 
cobj���\ 44 �����
�� 
cobj���] 4	4	 �����
�� 
cobj���^ 4
4
 �����
�� 
cobj���_ 44 �����
�� 
cobj���` 44 �����
�� 
cobj���a 44 �����
�� 
cobj���b 44 �����
�� 
cobj���c 44 �����
�� 
cobj���d 44 �����
�� 
cobj���e 44 �����
�� 
cobj���f 44 �����
�� 
cobj���g 44 �����
�� 
cobj���h 44 �����
�� 
cobj���i 44 �����
�� 
cobj���j 44 �����
�� 
cobj���k 44 �����
�� 
cobj���l 44 �����
�� 
cobj���m 44 �����
�� 
cobj���n 44 ���޿
�� 
cobj޿�o 44 �޾޽
޾ 
cobj޽�p 44 �޼޻
޼ 
cobj޻�q 44 �޺޹
޺ 
cobj޹�r 44 �޸޷
޸ 
cobj޷�s 44 �޶޵
޶ 
cobj޵�t 4 4  �޴޳
޴ 
cobj޳�u 4!4! �޲ޱ
޲ 
cobjޱ�v 4"4" �ްޯ
ް 
cobjޯ�w 4#4# �ޮޭ
ޮ 
cobjޭ�x 4$4$ �ެޫ
ެ 
cobjޫ�y 4%4% �ުީ
ު 
cobjީ�z 4&4& �ިާ
ި 
cobjާ�{ 4'4' �ަޥ
ަ 
cobjޥ�| 4(4( �ޤޣ
ޤ 
cobjޣ�} 4)4) �ޢޡ
ޢ 
cobjޡ�~ 4*4* �ޠޟ
ޠ 
cobjޟ� 4+4+ �ޞޝ
ޞ 
cobjޝ�� 4,4, �ޜޛ
ޜ 
cobjޛ�� 4-4- �ޚޙ
ޚ 
cobjޙ�� 4.4. �ޘޗ
ޘ 
cobjޗ�� 4/4/ �ޖޕ
ޖ 
cobjޕ�� 4040 �ޔޓ
ޔ 
cobjޓ�� 4141 �ޒޑ
ޒ 
cobjޑ�� 4242 �ސޏ
ސ 
cobjޏ�� 4343 �ގލ
ގ 
cobjލ�� 4444 �ތދ
ތ 
cobjދ�� 4545 �ފމ
ފ 
cobjމ�� 4646 �ވއ
ވ 
cobjއ�� 4747 �ކޅ
ކ 
cobjޅ�� 4848 �ބރ
ބ 
cobjރ�� 4949 �ނށ
ނ 
cobjށ�� 4:4: �ހ�
ހ 
cobj��� 4;4; ��~�}
�~ 
cobj�}�� 4<4< ��|�{
�| 
cobj�{�� 4=4= ��z�y
�z 
cobj�y� 4>4> ��x�w
�x 
cobj�w� 4?4? ��v�u
�v 
cobj�u� 4@4@ ��t�s
�t 
cobj�s� 4A4A ��r�q
�r 
cobj�q
� 4B4B ��p�o
�p 
cobj�o� 4C4C ��n�m
�n 
cobj�m� 4D4D ��l�k
�l 
cobj�k� 4E4E ��j�i
�j 
cobj�i� 4F4F ��h�g
�h 
cobj�g� 4G4G ��f�e
�f 
cobj�e� 4H4H ��d�c
�d 
cobj�c� 4I4I ��b�a
�b 
cobj�a!� 4J4J ��`�_
�` 
cobj�_(� 4K4K ��^�]
�^ 
cobj�])� 4L4L ��\�[
�\ 
cobj�[-� 4M4M ��Z�Y
�Z 
cobj�Y1� 4N4N ��X�W
�X 
cobj�W<� 4O4O ��V�U
�V 
cobj�U>� 4P4P ��T�S
�T 
cobj�S@� 4Q4Q ��R�Q
�R 
cobj�QB� 4R4R ��P�O
�P 
cobj�OE� 4S4S ��N�M
�N 
cobj�MH� 4T4T ��L�K
�L 
cobj�KL� 4U4U ��J�I
�J 
cobj�IM� 4V4V ��H�G
�H 
cobj�GN� 4W4W ��F�E
�F 
cobj�EO� 4X4X ��D�C
�D 
cobj�CP� 4Y4Y ��B�A
�B 
cobj�AQ� 4Z4Z ��@�?
�@ 
cobj�?R� 4[4[ ��>�=
�> 
cobj�=S� 4\4\ ��<�;
�< 
cobj�;U� 4]4] ��:�9
�: 
cobj�9V� 4^4^ ��8�7
�8 
cobj�7W� 4_4_ ��6�5
�6 
cobj�5X� 4`4` ��4�3
�4 
cobj�3Y� 4a4a ��2�1
�2 
cobj�1[� 4b4b ��0�/
�0 
cobj�/\� 4c4c ��.�-
�. 
cobj�-]� 4d4d ��,�+
�, 
cobj�+^� 4e4e ��*�)
�* 
cobj�)_� 4f4f ��(�'
�( 
cobj�'`� 4g4g ��&�%
�& 
cobj�%a� 4h4h ��$�#
�$ 
cobj�#b� 4i4i ��"�!
�" 
cobj�!c� 4j4j �� �
�  
cobj�d� 4k4k ���
� 
cobj�e� 4l4l ���
� 
cobj�f� 4m4m ���
� 
cobj�h� 4n4n ���
� 
cobj�i� 4o4o ���
� 
cobj�j� 4p4p ���
� 
cobj�k� 4q4q ���
� 
cobj�l� 4r4r ���
� 
cobj�m� 4s4s ���
� 
cobj�n� 4t4t ���
� 
cobj�o� 4u4u ��
�	
�
 
cobj�	p� 4v4v ���
� 
cobj�q� 4w4w ���
� 
cobj�r� 4x4x ���
� 
cobj�s� 4y4y ���
� 
cobj�t� 4z4z �� ��
�  
cobj��u� 4{4{ �����
�� 
cobj��v� 4|4| �����
�� 
cobj��w� 4}4} �����
�� 
cobj��x� 4~4~ �����
�� 
cobj��y� 44 �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� 4�4� �����
�� 
cobj���� ��4��� 4�  4�4�4�4�4�4�4�4�4�4�4�4�4�4� 4�4� �����
�� 
cobj�� X4� 4�4� �����
�� 
cobj�� Y4� 4�4� �����
�� 
cobj�� j4� 4�4� �����
�� 
cobj�� l4� 4�4� �����
�� 
cobj�� n4� 4�4� �����
�� 
cobj�� o4� 4�4� �����
�� 
cobj�� p4� 4�4� �����
�� 
cobj�� q4� 4�4� �ݿݾ
ݿ 
cobjݾ r4� 4�4� �ݽݼ
ݽ 
cobjݼ s4� 4�4� �ݻݺ
ݻ 
cobjݺ t4� 4�4� �ݹݸ
ݹ 
cobjݸ u4� 4�4� �ݷݶ
ݷ 
cobjݶ� ݵ4�ݵ 
4� 
 4�4�4�4�4�4�4�4�4�4�4� 4�4� �ݴݳ
ݴ 
cobjݳ 4� 4�4� �ݲݱ
ݲ 
cobjݱ �4� 4�4� �ݰݯ
ݰ 
cobjݯ �4� 4�4� �ݮݭ
ݮ 
cobjݭ �4� 4�4� �ݬݫ
ݬ 
cobjݫ �4� 4�4� �ݪݩ
ݪ 
cobjݩ �4� 4�4� �ݨݧ
ݨ 
cobjݧ �4� 4�4� �ݦݥ
ݦ 
cobjݥ	4� 4�4� �ݤݣ
ݤ 
cobjݣ
4� 4�4� �ݢݡ
ݢ 
cobjݡ� ݠ4�ݠ 4�  4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4� 4�4� �ݟݞ
ݟ 
cobjݞ 4� 4�4� �ݝݜ
ݝ 
cobjݜ 4� 4�4� �ݛݚ
ݛ 
cobjݚ P4� 4�4� �ݙݘ
ݙ 
cobjݘ �4� 4�4� �ݗݖ
ݗ 
cobjݖ �4� 4�4� �ݕݔ
ݕ 
cobjݔ �4� 4�4� �ݓݒ
ݓ 
cobjݒ �4� 4�4� �ݑݐ
ݑ 
cobjݐ �4� 4�4� �ݏݎ
ݏ 
cobjݎ �4� 4�4� �ݍ݌
ݍ 
cobj݌ �4� 4�4� �݋݊
݋ 
cobj݊ �4� 4�4� �݈݉
݉ 
cobj݈ �4� 4�4� �݆݇
݇ 
cobj݆ �4� 4�4� �݄݅
݅ 
cobj݄ �4� 4�4� �݂݃
݃ 
cobj݂ �4� 4�4� �݁݀
݁ 
cobj݀ �4� 4�4� ���~
� 
cobj�~ �4� 4�4� ��}�|
�} 
cobj�| �4� 4�4� ��{�z
�{ 
cobj�z �4� 4�4� ��y�x
�y 
cobj�x �4� 4�4� ��w�v
�w 
cobj�v �4� 4�4� ��u�t
�u 
cobj�t �4� 4�4� ��s�r
�s 
cobj�r �4� 4�4� ��q�p
�q 
cobj�p �4� 4�4� ��o�n
�o 
cobj�n4� 4�4� ��m�l
�m 
cobj�l4� 4�4� ��k�j
�k 
cobj�j4� 4�4� ��i�h
�i 
cobj�h94� 4�4� ��g�f
�g 
cobj�fB� �e�d�e  �d  � �c4��c 4�  4�4�5 555555555	5
555555554� 55 ��b�a
�b 
cobj�a 4� 55 ��`�_
�` 
cobj�_ /5  55 ��^�]
�^ 
cobj�] Q5 55 ��\�[
�\ 
cobj�[ �5 55 ��Z�Y
�Z 
cobj�Y �5 55 ��X�W
�X 
cobj�W �5 55 ��V�U
�V 
cobj�U �5 55 ��T�S
�T 
cobj�S �5 55 ��R�Q
�R 
cobj�Q �5 55 ��P�O
�P 
cobj�O �5 55 ��N�M
�N 
cobj�M �5	 55 ��L�K
�L 
cobj�K �5
 55 ��J�I
�J 
cobj�I �5 5 5  ��H�G
�H 
cobj�G �5 5!5! ��F�E
�F 
cobj�E	5 5"5" ��D�C
�D 
cobj�C
5 5#5# ��B�A
�B 
cobj�A5 5$5$ ��@�?
�@ 
cobj�?5 5%5% ��>�=
�> 
cobj�=:5 5&5& ��<�;
�< 
cobj�;;5 5'5' ��:�9
�: 
cobj�9<� �5(5( � S e t h ' s   s t a r t   o f   d a y   s t a t u s   i s   2 3   t a s k s   f o r   t o d a y ,   4 4   t a s k s   f o r   t h i s   w e e k ,   2 9   t a s k s   f o r   n e x t   w e e k ,   a n d   0   o v e r d u e   t a s k s .� �8��7
�8 
bhit� �5)5)  Y e s�7  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ