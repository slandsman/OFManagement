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
0 svalue  �F  �G   �  f  CD�K  �J   �  ��D � l PP�C�B�A�C  �B  �A  �D   # m    	 � ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �@�?�>�@  �?  �>   �    i   
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
�� .ascrcmnt****      � ****� o   < =���� 0 thetext theText��  � ��� l  B B��������  ��  ��  � ���� L   B D�� o   B C���� 0 thetext theText��  I�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ; ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & T a s k s   a d d e d   t o d a y :  � n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList� o   - 2���� 0 nl  � o      ���� 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7���� 0 thetext theText� m   7 8�� ��� , N o n - w a i t   a d d e d   t o d a y :  � n   9 <��� 1   : <��
�� 
leng� o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� o   = B���� 0 nl  � o      ���� 0 thetext theText�    r   F U b   F S b   F M b   F I	 o   F G���� 0 thetext theText	 m   G H

 � 2 A c t i v e   i n c o m p l e t e   t a s k s :   n   I L 1   J L��
�� 
leng o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList o   M R���� 0 nl   o      ���� 0 thetext theText  r   V e b   V c b   V ] b   V Y o   V W���� 0 thetext theText m   W X � L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :   n   Y \ 1   Z \��
�� 
leng o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList o   ] b���� 0 nl   o      ���� 0 thetext theText  l  f f��������  ��  ��    l  f f��������  ��  ��    !  I  f k��"��
�� .ascrcmnt****      � ****" o   f g���� 0 thetext theText��  ! #$# l  l l��������  ��  ��  $ %&% r   l y'(' c   l w)*) b   l u+,+ l  l s-����- I  l s��./
�� .earsffdralis        afdr. m   l m��
�� afdrdesk/ ��0��
�� 
rtyp0 m   n o��
�� 
TEXT��  ��  ��  , m   s t11 �22  o f   t o d a y . t x t* m   u v��
�� 
TEXT( o      ���� 0 thefilepath theFilePath& 343 r   z �565 I  z ���78
�� .rdwropenshor       file7 o   z {���� 0 thefilepath theFilePath8 ��9��
�� 
perm9 m   | }��
�� boovtrue��  6 o      ���� 0 thefile theFile4 :;: I  � ���<=
�� .rdwrwritnull���     ****< o   � ����� 0 thetext theText= ��>?
�� 
refn> o   � ����� 0 thefile theFile? ��@��
�� 
wrat@ m   � ���
�� rdwreof ��  ; A��A I  � ���B��
�� .rdwrclosnull���     ****B o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � CDC l     �������  ��  �  D EFE i    !GHG I      �~I�}�~ 0 
writestats 
writeStatsI JKJ o      �|�| 0 lfolderlist lFolderListK LML o      �{�{ 0 lprojectlist lProjectListM NON o      �z�z (0 lactiveprojectlist lActiveProjectListO PQP o      �y�y 0 	ltasklist 	lTaskListQ RSR o      �x�x "0 lactivetasklist lActiveTaskListS TUT o      �w�w (0 lcompletedtasklist lCompletedTaskListU VWV o      �v�v *0 lincompletetasklist lIncompleteTaskListW XYX o      �u�u 40 ltodayscompletedtasklist lTodaysCompletedTaskListY Z[Z o      �t�t &0 lnonrepincomplete lNonRepIncomplete[ \�s\ o      �r�r *0 laddedtodaytasklist lAddedTodayTaskList�s  �}  H w     �]^] k    �__ `a` l    �qbc�q  b b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   c �dd � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   ta efe r    ghg m    ii �jj  h o      �p�p 0 thetext theTextf klk l    �omn�o  m J D		set theText to theText & "folders: " & length of lFolderList & nl    n �oo � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  l pqp r    rsr b    tut b    vwv b    	xyx o    �n�n 0 thetext theTexty m    zz �{{  p r o j e c t s :  w n   	 |}| 1   
 �m
�m 
leng} o   	 
�l�l 0 lprojectlist lProjectListu o    �k�k 0 nl  s o      �j�j 0 thetext theTextq ~~ r    %��� b    #��� b    ��� b    ��� o    �i�i 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �h
�h 
leng� o    �g�g (0 lactiveprojectlist lActiveProjectList� o    "�f�f 0 nl  � o      �e�e 0 thetext theText ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�d�d 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�c
�c 
leng� o   ) *�b�b 0 	ltasklist 	lTaskList� o   - 2�a�a 0 nl  � o      �`�` 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�_�_ 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�^
�^ 
leng� o   9 :�]�] "0 lactivetasklist lActiveTaskList� o   = B�\�\ 0 nl  � o      �[�[ 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�Z�Z 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�Y
�Y 
leng� o   I J�X�X (0 lcompletedtasklist lCompletedTaskList� o   M R�W�W 0 nl  � o      �V�V 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�U�U 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�T
�T 
leng� o   Y Z�S�S *0 lincompletetasklist lIncompleteTaskList� o   ] b�R�R 0 nl  � o      �Q�Q 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�P�P 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�O
�O 
leng� o   i j�N�N 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�M�M 0 nl  � o      �L�L 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�K�K 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�J
�J 
leng� o   y z�I�I &0 lnonrepincomplete lNonRepIncomplete� o   } ��H�H 0 nl  � o      �G�G 0 thetext theText� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��F�F 0 thetext theText� m   � ��� ��� & T a s k s   a d d e d   t o d a y :  � n   � ���� 1   � ��E
�E 
leng� o   � ��D�D *0 laddedtodaytasklist lAddedTodayTaskList� o   � ��C�C 0 nl  � o      �B�B 0 thetext theText� ��� l  � ��A�@�?�A  �@  �?  � ��� I  � ��>��=
�> .ascrcmnt****      � ****� o   � ��<�< 0 thetext theText�=  � ��� l  � ��;�:�9�;  �:  �9  � ��� r   � ���� c   � ���� b   � ���� l  � ���8�7� I  � ��6��
�6 .earsffdralis        afdr� m   � ��5
�5 afdrdesk� �4 �3
�4 
rtyp  m   � ��2
�2 
TEXT�3  �8  �7  � m   � � �  o f . t x t� m   � ��1
�1 
TEXT� o      �0�0 0 thefilepath theFilePath�  r   � � I  � ��/
�/ .rdwropenshor       file o   � ��.�. 0 thefilepath theFilePath �-	�,
�- 
perm	 m   � ��+
�+ boovtrue�,   o      �*�* 0 thefile theFile 

 I  � ��)
�) .rdwrwritnull���     **** o   � ��(�( 0 thetext theText �'
�' 
refn o   � ��&�& 0 thefile theFile �%�$
�% 
wrat m   � ��#
�# rdwreof �$   �" I  � ��!� 
�! .rdwrclosnull���     **** o   � ��� 0 thefile theFile�   �"  ^�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  F  l     ����  �  �    i   " % I      ��� 0 
writedebug 
writeDebug � o      �� 0 ltask lTask�  �   Z     ��� o     �� 	0 debug   w     k   
   !  r   
 "#" b   
 $%$ b   
 &'& m   
 (( �))  T a s k   n a m e   i s  ' n   *+* 1    �
� 
pnam+ o    �� 0 ltask lTask% o    �� 0 nl  # o      �� 0 thetext theText! ,-, r    %./. b    #010 b    232 m    44 �55  T a s k   i d   i s  3 n   676 1    �
� 
ID  7 o    �� 0 ltask lTask1 o    "�� 0 nl  / o      �� 0 thetext theText- 898 r   & 5:;: b   & 3<=< b   & ->?> b   & )@A@ o   & '�� 0 thetext theTextA m   ' (BB �CC & C o m p l e t i o n   d a t e   i s  ? n  ) ,DED 1   * ,�
� 
FCdcE o   ) *�
�
 0 ltask lTask= o   - 2�	�	 0 nl  ; o      �� 0 thetext theText9 FGF r   6 ;HIH n  6 9JKJ 1   7 9�
� 
FCdcK o   6 7�� 0 ltask lTaskI o      �� 0 thedate theDateG LML r   < ANON n   < ?PQP 1   = ?�
� 
dstrQ o   < =�� 0 thedate theDateO o      �� 0 thedateonly theDateOnlyM RSR r   B OTUT b   B MVWV b   B GXYX b   B EZ[Z o   B C�� 0 thetext theText[ m   C D\\ �]] 4 C o m p l e t i o n   d a t e   i s   r e a l l y  Y o   E F� �  0 thedateonly theDateOnlyW o   G L���� 0 nl  U o      ���� 0 thetext theTextS ^_^ r   P ]`a` c   P [bcb b   P Yded l  P Wf����f I  P W��gh
�� .earsffdralis        afdrg m   P Q��
�� afdrdeskh ��i��
�� 
rtypi m   R S��
�� 
TEXT��  ��  ��  e m   W Xjj �kk  o f D e b u g . t x tc m   Y Z��
�� 
TEXTa o      ���� 0 thefilepath theFilePath_ lml r   ^ gnon I  ^ e��pq
�� .rdwropenshor       filep o   ^ _���� 0 thefilepath theFilePathq ��r��
�� 
permr m   ` a��
�� boovtrue��  o o      ���� 0 thefile theFilem sts I  h y��uv
�� .rdwrwritnull���     ****u o   h i���� 0 thetext theTextv ��wx
�� 
refnw o   l m���� 0 thefile theFilex ��y��
�� 
wraty m   p s��
�� rdwreof ��  t z��z I  z ��{��
�� .rdwrclosnull���     ****{ o   z {���� 0 thefile theFile��  ��  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  �   |}| l     ��������  ��  ��  } ~~ l     ��������  ��  ��   ���� l     ��������  ��  ��  ��       *����������������������������������������������������������������  � (���������������������������������������������������������������������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****�� 	0 oflib  �� 0 thedocument theDocument�� 0 projectlist projectList�� 0 tasklist taskList�� 0 duetodaytasks dueTodayTasks�� $0 markedtodaytasks markedTodayTasks�� *0 markednextweektasks markedNextWeekTasks�� 0 overduetasks overdueTasks�� 0 flaggedtasks flaggedTasks�� 
0 svalue  �� 0 question  �� 
0 answer  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ���  

�� boovfals� ������������ 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ����������
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��'���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����4��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��=����������  0 generatestatus generateStatus�� ����� �  ������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks��  � ����~�}�|�{�z�y�� 0 lflaggedtasks lFlaggedTasks�  0 lduetodaytasks lDueTodayTasks�~ &0 lmarkedtodaytasks lMarkedTodayTasks�} ,0 lmarkednextweektasks lMarkedNextWeekTasks�| 0 loverduetasks lOverdueTasks�{ 0 
totaltoday 
totalToday�z 0 totalthisweek totalThisWeek�y 0 thetext theText� I�xdnx���w
�x 
leng
�w .ascrcmnt****      � ****�� E�Z��,��,E�O��,�E�O�E�O��%�%E�O��%�%E�O���,%�%E�O���,%�%E�O�j O�� �v��u�t���s�v 0 tweetstatus tweetStatus�u �r��r �  �q�q 0 v  �t  � �p�o�p 0 v  �o 	0 oflib  � �n�m�n 0 getoflib getOFLib�m 0 	sendtweet 	sendTweet�s *j+  E�O� *�k+ U� �l��k�j���i�l $0 writedailystatus writeDailyStatus�k �h��h �  �g�f�e�d�c�b�g (0 lactiveprojectlist lActiveProjectList�f 40 ltodayscompletedtasklist lTodaysCompletedTaskList�e *0 laddedtodaytasklist lAddedTodayTaskList�d 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�c 60 lactiveincompletetasklist lActiveIncompleteTaskList�b $0 lnotwaittasklist lNotWaitTaskList�j  � 	�a�`�_�^�]�\�[�Z�Y�a (0 lactiveprojectlist lActiveProjectList�` 40 ltodayscompletedtasklist lTodaysCompletedTaskList�_ *0 laddedtodaytasklist lAddedTodayTaskList�^ 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�] 60 lactiveincompletetasklist lActiveIncompleteTaskList�\ $0 lnotwaittasklist lNotWaitTaskList�[ 0 thetext theText�Z 0 thefilepath theFilePath�Y 0 thefile theFile� ����X���
�W�V�U�T�S1�R�Q�P�O�N�M�L�K
�X 
leng
�W .ascrcmnt****      � ****
�V afdrdesk
�U 
rtyp
�T 
TEXT
�S .earsffdralis        afdr
�R 
perm
�Q .rdwropenshor       file
�P 
refn
�O 
wrat
�N rdwreof �M 
�L .rdwrwritnull���     ****
�K .rdwrclosnull���     ****�i ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �JH�I�H���G�J 0 
writestats 
writeStats�I �F��F 
� 
 �E�D�C�B�A�@�?�>�=�<�E 0 lfolderlist lFolderList�D 0 lprojectlist lProjectList�C (0 lactiveprojectlist lActiveProjectList�B 0 	ltasklist 	lTaskList�A "0 lactivetasklist lActiveTaskList�@ (0 lcompletedtasklist lCompletedTaskList�? *0 lincompletetasklist lIncompleteTaskList�> 40 ltodayscompletedtasklist lTodaysCompletedTaskList�= &0 lnonrepincomplete lNonRepIncomplete�< *0 laddedtodaytasklist lAddedTodayTaskList�H  � �;�:�9�8�7�6�5�4�3�2�1�0�/�; 0 lfolderlist lFolderList�: 0 lprojectlist lProjectList�9 (0 lactiveprojectlist lActiveProjectList�8 0 	ltasklist 	lTaskList�7 "0 lactivetasklist lActiveTaskList�6 (0 lcompletedtasklist lCompletedTaskList�5 *0 lincompletetasklist lIncompleteTaskList�4 40 ltodayscompletedtasklist lTodaysCompletedTaskList�3 &0 lnonrepincomplete lNonRepIncomplete�2 *0 laddedtodaytasklist lAddedTodayTaskList�1 0 thetext theText�0 0 thefilepath theFilePath�/ 0 thefile theFile� ^iz�.���������-�,�+�*�)�(�'�&�%�$�#�"�!
�. 
leng
�- .ascrcmnt****      � ****
�, afdrdesk
�+ 
rtyp
�* 
TEXT
�) .earsffdralis        afdr
�( 
perm
�' .rdwropenshor       file
�& 
refn
�% 
wrat
�$ rdwreof �# 
�" .rdwrwritnull���     ****
�! .rdwrclosnull���     ****�G ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � � ������  0 
writedebug 
writeDebug� ��� �  �� 0 ltask lTask�  � ������� 0 ltask lTask� 0 thetext theText� 0 thedate theDate� 0 thedateonly theDateOnly� 0 thefilepath theFilePath� 0 thefile theFile� (�4�B��\����j���
�	����
� 
pnam
� 
ID  
� 
FCdc
� 
dstr
� afdrdesk
� 
rtyp
� 
TEXT
� .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
�
 
refn
�	 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �������
� .aevtoappnull  �   � ****� k    R��  ��  � �   �  �  �  � *���� ��������������������������� v���� ��������������������� ��� � ������������� ����� 0 getoflib getOFLib�� 	0 oflib  
�� 
FCDo�� 0 thedocument theDocument�� 0 getprojects getProjects
�� 
rslt�� 0 projectlist projectList�� 20 filterforactiveprojects filterForActiveProjects�� 0 gettasks getTasks�� 0 tasklist taskList�� 40 filterforincompletetasks filterForIncompleteTasks
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
0 answer  �� 0 tweetstatus tweetStatus�S)j+  E�O�G*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 	UO�E�O� *�k+ UO�E�O� *�*j �,l+ UO�E�O� *�a l+ UO�E` O� *�a l+ UO�E` O� *�*j l+ UO�E` O� *�k+ UO�E` O�a ,j O_ a ,j O_ a ,j O_ a ,j O_ a ,j O)_ �_ _ _ a + E` Oa a a  a !lva "la # $E` %O_ %a &,E` 'O_ 'a (  )_ k+ )Y hOPU� ��� ���  � k      �� ��� l      ������  ���
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
folderList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� *0 getfoldersoffolders getFoldersOfFolders� ���� o      ���� 0 lfolders lFolders��  ��  � w     &��� k    &�� ��� X    #����� r    ��� b    ��� o    ���� 0 lfolders lFolders� I    ������� *0 getfoldersoffolders getFoldersOfFolders� ���� n    � � 2   ��
�� 
FCAr  o    ���� 0 
thisfolder 
thisFolder��  ��  � o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder� o    ���� 0 lfolders lFolders�  l  $ $��������  ��  ��   �� L   $ & o   $ %���� 0 lfolders lFolders��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    l      ��	
��  	 9 3 1b: projects and utility associated with projects    
 � f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s    i     I      ������ 0 getprojects getProjects �� o      ���� 0 	ldocument 	lDocument��  ��   w     3 k    3  r    
 n    I    ������ 0 
getfolders 
getFolders �� o    ���� 0 	ldocument 	lDocument��  ��    f     o      ���� 0 lfolderlist lFolderList  r      l   !����! n    "#" 2   ��
�� 
FCpr# o    ���� 0 	ldocument 	lDocument��  ��    o      ���� 0 projectlist projectList $%$ X    0&��'& r   ! +()( b   ! )*+* o   ! "���� 0 projectlist projectList+ n  " (,-, I   # (��.���� .0 getprojectsfromfolder getProjectsFromFolder. /��/ o   # $���� 0 
thisfolder 
thisFolder��  ��  -  f   " #) o      ���� 0 projectlist projectList�� 0 
thisfolder 
thisFolder' o    ���� 0 lfolderlist lFolderList% 0��0 L   1 311 o   1 2���� 0 projectlist projectList��  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   232 l     ��������  ��  ��  3 454 i    676 I      ��8���� .0 getprojectsfromfolder getProjectsFromFolder8 9��9 o      ���� 0 lfolder lFolder��  ��  7 w     :;: L    << n    =>= 2   ��
�� 
FCpr> o    ���� 0 lfolder lFolder;�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  5 ?@? l     ��������  ��  ��  @ ABA l      �CD�  C 3 - 1a: tasks and utility associated with tasks    D �EE Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s  B FGF l     �~�}�|�~  �}  �|  G HIH l      �{JK�{  J � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document    K �LL�   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t  I MNM i    OPO I      �zQ�y�z 0 gettasks getTasksQ RSR o      �x�x 0 	ldocument 	lDocumentS T�wT o      �v�v 0 lprojectlist lProjectList�w  �y  P w     *UVU k    *WW XYX r    Z[Z n    \]\ 2   �u
�u 
FCac] o    �t�t 0 	ldocument 	lDocument[ o      �s�s 0 tasklist taskListY ^_^ X    '`�ra` r    "bcb b     ded o    �q�q 0 tasklist taskListe I    �pf�o�p *0 gettasksfromproject getTasksFromProjectf g�ng o    �m�m 0 thisproject thisProject�n  �o  c o      �l�l 0 tasklist taskList�r 0 thisproject thisProjecta o    �k�k 0 lprojectlist lProjectList_ h�jh L   ( *ii o   ( )�i�i 0 tasklist taskList�j  V�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  N jkj l     �h�g�f�h  �g  �f  k lml i    non I      �ep�d�e ,0 gettasksfromdocument getTasksFromDocumentp q�cq o      �b�b 0 	ldocument 	lDocument�c  �d  o w     3rsr k    3tt uvu r    
wxw I    �ay�`�a 0 getprojects getProjectsy z�_z o    �^�^ 0 	ldocument 	lDocument�_  �`  x o      �]�] 0 lprojectlist lProjectListv {|{ r    }~} n    � 2   �\
�\ 
FCac� o    �[�[ 0 	ldocument 	lDocument~ o      �Z�Z 0 tasklist taskList| ��� X    0��Y�� r   ! +��� b   ! )��� o   ! "�X�X 0 tasklist taskList� I   " (�W��V�W 0 gettasks getTasks� ��U� o   # $�T�T 0 thisproject thisProject�U  �V  � o      �S�S 0 tasklist taskList�Y 0 thisproject thisProject� o    �R�R 0 lprojectlist lProjectList� ��Q� L   1 3�� o   1 2�P�P 0 tasklist taskList�Q  s�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  m ��� l     �O�N�M�O  �N  �M  � ��� i    ��� I      �L��K�L *0 gettasksfromproject getTasksFromProject� ��J� o      �I�I 0 lproject lProject�J  �K  � w     ��� L    �� n    ��� 2   �H
�H 
FCac� o    �G�G 0 lproject lProject��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �F�E�D�F  �E  �D  � ��� l      �C���C  � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
   � ���.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
� ��� l     �B�A�@�B  �A  �@  � ��� i    ��� I      �?��>�? 20 filterforactiveprojects filterForActiveProjects� ��=� o      �<�< 0 lprojectlist lProjectList�=  �>  � w     2��� k    2�� ��� r    ��� J    �;�;  � o      �:�: 0 projectlist projectList� ��� X    /��9�� Z    *���8�7� =   ��� n   ��� 1    �6
�6 
FCPs� o    �5�5 0 thisproject thisProject� m    �4
�4 FCPsFCPa� r    &��� b    $��� o     �3�3 0 projectlist projectList� J     #�� ��2� o     !�1�1 0 thisproject thisProject�2  � o      �0�0 0 projectlist projectList�8  �7  �9 0 thisproject thisProject� o   
 �/�/ 0 lprojectlist lProjectList� ��.� L   0 2�� o   0 1�-�- 0 projectlist projectList�.  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �,�+�*�,  �+  �*  � ��� i     #��� I      �)��(�) B0 filterprojectsforsingletonlists filterProjectsForSingletonLists� ��'� o      �&�& 0 lprojectlist lProjectList�'  �(  � w     2��� k    2�� ��� r    ��� J    �%�%  � o      �$�$ 0 projectlist projectList� ��� X    /��#�� Z    *���"�!� =   ��� n   ��� 1    � 
�  
FC.A� o    �� 0 thisproject thisProject� m    �
� boovtrue� r    &��� b    $��� o     �� 0 projectlist projectList� J     #�� ��� o     !�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�"  �!  �# 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� ��� L   0 2�� o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� i   $ '��� I      ���� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists� ��� o      �� 0 lprojectlist lProjectList�  �  � w     2��� k    2�� ��� r    ��� J    ��  � o      �� 0 projectlist projectList� ��� X    /���� Z    *����� =   ��� n   ��� 1    �

�
 
FC.A� o    �	�	 0 thisproject thisProject� m    �
� boovfals� r    &��� b    $��� o     �� 0 projectlist projectList� J     #   � o     !�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�  �  � 0 thisproject thisProject� o   
 �� 0 lprojectlist lProjectList� � L   0 2 o   0 1�� 0 projectlist projectList�  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     � �����   ��  ��    l      ��	��   � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   	 �

   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
  i   ( + I      ������ @0 filterprojectsforchangedondate filterProjectsForChangedOnDate  o      ���� 0 lprojectlist lProjectList �� o      ���� 0 ldate lDate��  ��   w     � k    �  r     J    ����   o      ���� 0 projectlist projectList  r     n    
 1    
��
�� 
dstr o    ���� 0 ldate lDate o      ���� 	0 cdate    !  X    �"��#" k    �$$ %&% r    %'(' I    #��)���� *0 gettasksfromproject getTasksFromProject) *��* o    ���� 0 thisproject thisProject��  ��  ( o      ���� 0 tasklist taskList& +,+ r   & )-.- m   & '��
�� boovfals. o      ���� 0 flag  , /0/ X   * r1��21 k   : m33 454 r   : ?676 n  : =898 1   ; =��
�� 
FCDa9 o   : ;���� 0 thistask thisTask7 o      ���� 
0 tcdate  5 :;: r   @ E<=< n  @ C>?> 1   A C��
�� 
FCDm? o   @ A���� 0 thistask thisTask= o      ���� 
0 tmdate  ; @A@ r   F KBCB n   F IDED 1   G I��
�� 
dstrE o   F G���� 
0 tcdate  C o      ���� 0 tcds  A FGF r   L QHIH n   L OJKJ 1   M O��
�� 
dstrK o   L M���� 
0 tmdate  I o      ���� 0 tmds  G LML Z   R _NO����N =  R UPQP o   R S���� 0 tcds  Q o   S T���� 	0 cdate  O r   X [RSR m   X Y��
�� boovtrueS o      ���� 0 flag  ��  ��  M T��T Z   ` mUV����U =  ` cWXW o   ` a���� 0 tmds  X o   a b���� 	0 cdate  V r   f iYZY m   f g��
�� boovtrueZ o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask2 o   - .���� 0 tasklist taskList0 [��[ Z   s �\]����\ o   s t���� 0 flag  ] r   w ~^_^ b   w |`a` o   w x���� 0 projectlist projectLista J   x {bb c��c o   x y���� 0 thisproject thisProject��  _ o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject# o    ���� 0 lprojectlist lProjectList! d��d L   � �ee o   � ����� 0 projectlist projectList��  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   fgf l     ��������  ��  ��  g hih l      ��jk��  j � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
   k �llZ   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
i mnm i   , /opo I      ��q���� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDateq rsr o      ���� 0 lprojectlist lProjectLists t��t o      ���� 0 ldate lDate��  ��  p w     xuvu k    xww xyx r    z{z J    ����  { o      ���� 0 projectlist projectListy |}| X    u~��~ k    p�� ��� r    ��� I    ������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r     #��� m     !��
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
�� boovtrue� o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� ���� Z   a p������� o   a b���� 0 flag  � r   e l��� b   e j��� o   e f���� 0 projectlist projectList� J   f i�� ���� o   f g���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject o   
 ���� 0 lprojectlist lProjectList} ���� L   v x�� o   v w���� 0 projectlist projectList��  v�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  n ��� l     ��������  ��  ��  � ��� l      ������  � � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   � ��� �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
� ��� i   0 3��� I      ������� 20 filterforcompletedtasks filterForCompletedTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������ =   ��� n    ��� 1    �~
�~ 
FCcd� o    �}�} 0 thistask thisTask� m    �|
�| boovtrue� r    &��� b    $��� o     �{�{ 0 tasklist taskList� J     #�� ��z� o     !�y�y 0 thistask thisTask�z  � o      �x�x 0 tasklist taskList��  �  �� 0 thistask thisTask� o   
 �w�w 0 	ltasklist 	lTaskList� ��v� L   0 2�� o   0 1�u�u 0 tasklist taskList�v  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �t�s�r�t  �s  �r  � ��� i   4 7��� I      �q��p�q >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      �o�o 0 	ltasklist 	lTaskList� ��n� o      �m�m 0 ldate lDate�n  �p  � w     <��� k    <�� ��� r    ��� J    �l�l  � o      �k�k 0 tasklist taskList� ��� X    9��j�� k    4�� ��� r    ��� n   ��� 1    �i
�i 
FCdc� o    �h�h 0 thistask thisTask� o      �g�g 0 
thistaskcd 
thisTaskCD� ��� r    "��� n        1     �f
�f 
dstr o    �e�e 0 
thistaskcd 
thisTaskCD� o      �d�d (0 thistaskdatestring thisTaskDateString� �c Z   # 4�b�a =  # & o   # $�`�` (0 thistaskdatestring thisTaskDateString o   $ %�_�_ 0 ldate lDate r   ) 0 b   ) .	
	 o   ) *�^�^ 0 tasklist taskList
 J   * - �] o   * +�\�\ 0 thistask thisTask�]   o      �[�[ 0 tasklist taskList�b  �a  �c  �j 0 thistask thisTask� o   
 �Z�Z 0 	ltasklist 	lTaskList� �Y L   : < o   : ;�X�X 0 tasklist taskList�Y  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �W�V�U�W  �V  �U    i   8 ; I      �T�S�T 40 filterforincompletetasks filterForIncompleteTasks �R o      �Q�Q 0 	ltasklist 	lTaskList�R  �S   w     2 k    2  r     J    �P�P   o      �O�O 0 tasklist taskList  X    / �N!  Z    *"#�M�L" >   $%$ n    &'& 1    �K
�K 
FCcd' o    �J�J 0 thistask thisTask% m    �I
�I boovtrue# r    &()( b    $*+* o     �H�H 0 tasklist taskList+ J     #,, -�G- o     !�F�F 0 thistask thisTask�G  ) o      �E�E 0 tasklist taskList�M  �L  �N 0 thistask thisTask! o   
 �D�D 0 	ltasklist 	lTaskList .�C. L   0 2// o   0 1�B�B 0 tasklist taskList�C  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   010 l     �A�@�?�A  �@  �?  1 232 i   < ?454 I      �>6�=�> 80 filterfornonrepeatingtasks filterForNonRepeatingTasks6 7�<7 o      �;�; 0 	ltasklist 	lTaskList�<  �=  5 w     2898 k    2:: ;<; r    =>= J    �:�:  > o      �9�9 0 tasklist taskList< ?@? X    /A�8BA Z    *CD�7�6C =   EFE n   GHG 1    �5
�5 
FCRpH o    �4�4 0 thistask thisTaskF m    �3
�3 
msngD r    &IJI b    $KLK o     �2�2 0 tasklist taskListL J     #MM N�1N o     !�0�0 0 thistask thisTask�1  J o      �/�/ 0 tasklist taskList�7  �6  �8 0 thistask thisTaskB o   
 �.�. 0 	ltasklist 	lTaskList@ O�-O L   0 2PP o   0 1�,�, 0 tasklist taskList�-  9�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  3 QRQ l     �+�*�)�+  �*  �)  R STS i   @ CUVU I      �(W�'�( 60 filterfortasksaddedondate filterForTasksAddedOnDateW XYX o      �&�& 0 	ltasklist 	lTaskListY Z�%Z o      �$�$ 0 ldate lDate�%  �'  V w     <[\[ k    <]] ^_^ r    `a` J    �#�#  a o      �"�" 0 tasklist taskList_ bcb X    9d�!ed k    4ff ghg r    iji n   klk 1    � 
�  
FCDal o    �� 0 thistask thisTaskj o      �� 0 
thistaskcd 
thisTaskCDh mnm r    "opo n     qrq 1     �
� 
dstrr o    �� 0 
thistaskcd 
thisTaskCDp o      �� (0 thistaskdatestring thisTaskDateStringn s�s Z   # 4tu��t =  # &vwv o   # $�� (0 thistaskdatestring thisTaskDateStringw o   $ %�� 0 ldate lDateu r   ) 0xyx b   ) .z{z o   ) *�� 0 tasklist taskList{ J   * -|| }�} o   * +�� 0 thistask thisTask�  y o      �� 0 tasklist taskList�  �  �  �! 0 thistask thisTaske o   
 �� 0 	ltasklist 	lTaskListc ~�~ L   : < o   : ;�� 0 tasklist taskList�  \�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  T ��� l     ����  �  �  � ��� i   D G��� I      ���
� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��	� o      �� 0 	ltasklist 	lTaskList�	  �
  � w     ���� k    ��� ��� r    ��� J    ��  � o      �� 0 tasklist taskList� ��� X    ����� k    ��� ��� r    ��� n    ��� 1    �
� 
pnam� o    �� 0 thistask thisTask� o      �� 0 foo  � ��� r    "��� n     ��� m     �
� 
FCct� o    � �  0 thistask thisTask� o      ���� 0 con  � ��� r   # (��� n   # &��� 1   $ &��
�� 
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
pnam� o   g h���� 0 con  � o      ���� 0 conname  � ���� Z   m ������� H   m q�� E   m p��� o   m n���� 0 conname  � m   n o�� ���  W a i t i n g� r   t {��� b   t y��� o   t u���� 0 tasklist taskList� J   u x�� ���� o   u v���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  � r   � ���� b   � ���� o   � ����� 0 tasklist taskList� J   � ��� ���� o   � ����� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  � 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   � ��� o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   H K��� I      ������� 20 filterfortasksdueondate filterForTasksDueOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     F��� k    F    r     J    ����   o      ���� 0 tasklist taskList  X    C�� k    >		 

 r     n    1    ��
�� 
FCDd o    ���� 0 thistask thisTask o      ���� 0 
thistaskdd 
thisTaskDD �� Z    >���� >     o    ���� 0 
thistaskdd 
thisTaskDD m    ��
�� 
msng k   # :  r   # ( n   # & 1   $ &��
�� 
dstr o   # $���� 0 
thistaskdd 
thisTaskDD o      ���� (0 thistaskdatestring thisTaskDateString �� Z   ) :���� =  ) ,  o   ) *���� (0 thistaskdatestring thisTaskDateString  o   * +���� 0 ldate lDate r   / 6!"! b   / 4#$# o   / 0���� 0 tasklist taskList$ J   0 3%% &��& o   0 1���� 0 thistask thisTask��  " o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask o   
 ���� 0 	ltasklist 	lTaskList '��' L   D F(( o   D E���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � )*) l     ��������  ��  ��  * +,+ i   L O-.- I      ��/���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate/ 010 o      ���� 0 	ltasklist 	lTaskList1 2��2 o      ���� 0 ldate lDate��  ��  . w     J343 k    J55 676 r    898 J    ����  9 o      ���� 0 tasklist taskList7 :;: X    G<��=< k    B>> ?@? r    ABA n   CDC 1    ��
�� 
FCDdD o    ���� 0 thistask thisTaskB o      ���� 0 
thistaskdd 
thisTaskDD@ E��E Z    BFG����F >    HIH o    ���� 0 
thistaskdd 
thisTaskDDI m    ��
�� 
msngG Z   # >JK����J A   # &LML o   # $���� 0 
thistaskdd 
thisTaskDDM o   $ %���� 0 ldate lDateK k   ) :NN OPO I  ) 2��Q��
�� .ascrcmnt****      � ****Q b   ) .RSR m   ) *TT �UU , F o u n d   a n   o v e r d u e   t a s k  S n  * -VWV 1   + -��
�� 
pnamW o   * +���� 0 thistask thisTask��  P X��X r   3 :YZY b   3 8[\[ o   3 4���� 0 tasklist taskList\ J   4 7]] ^��^ o   4 5���� 0 thistask thisTask��  Z o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask= o   
 ���� 0 	ltasklist 	lTaskList; _��_ L   H J`` o   H I���� 0 tasklist taskList��  4�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  , aba l     ��������  ��  ��  b cdc i   P Sefe I      ��g���� .0 filterfortaskswithtag filterForTasksWithTagg hih o      ���� 0 	ltasklist 	lTaskListi j��j o      ���� 0 tag  ��  ��  f w     6klk k    6mm non r    pqp J    ����  q o      ���� 0 tasklist taskListo rsr X    3t��ut k    .vv wxw r    yzy n    {|{ 1    ��
�� 
FCno| o    ���� 0 thistask thisTaskz o      �� 0 itemnote itemNotex }�~} Z    .~�}�|~ l    ��{�z� E     ��� o    �y�y 0 itemnote itemNote� o    �x�x 0 tag  �{  �z   r   # *��� b   # (��� o   # $�w�w 0 tasklist taskList� J   $ '�� ��v� o   $ %�u�u 0 thistask thisTask�v  � o      �t�t 0 tasklist taskList�}  �|  �~  �� 0 thistask thisTasku o   
 �s�s 0 	ltasklist 	lTaskLists ��r� L   4 6�� o   4 5�q�q 0 tasklist taskList�r  l�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  d ��� l     �p�o�n�p  �o  �n  � ��� i   T W��� I      �m��l�m $0 filterforflagged filterForFlagged� ��k� o      �j�j 0 	ltasklist 	lTaskList�k  �l  � w     2��� k    2�� ��� r    ��� J    �i�i  � o      �h�h 0 tasklist taskList� ��� X    /��g�� Z    *���f�e� =   ��� n    ��� 1    �d
�d 
FCfl� o    �c�c 0 thistask thisTask� m    �b
�b boovtrue� r    &��� b    $��� o     �a�a 0 tasklist taskList� J     #�� ��`� o     !�_�_ 0 thistask thisTask�`  � o      �^�^ 0 tasklist taskList�f  �e  �g 0 thistask thisTask� o   
 �]�] 0 	ltasklist 	lTaskList� ��\� L   0 2�� o   0 1�[�[ 0 tasklist taskList�\  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� l      �W���W  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     �V�U�T�V  �U  �T  � ��� l      �S���S  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   X [��� I      �R��Q�R 0 tagtask tagTask� ��� o      �P�P 0 ltask lTask� ��O� o      �N�N 0 ltag lTag�O  �Q  � w     $��� k    $�� ��� r    ��� n    ��� 1    �M
�M 
FCno� o    �L�L 0 ltask lTask� o      �K�K 0 itemnote itemNote� ��J� Z    $���I�H� l   ��G�F� H    �� E    ��� o    	�E�E 0 itemnote itemNote� o   	 
�D�D 0 ltag lTag�G  �F  � k     �� ��� r    ��� n    ��� 1    �C
�C 
FCno� o    �B�B 0 ltask lTask� o      �A�A 0 itemnote itemNote� ��� r    ��� b    ��� o    �@�@ 0 itemnote itemNote� o    �?�? 0 ltag lTag� o      �>�> 0 itemnote itemNote� ��=� r     ��� o    �<�< 0 itemnote itemNote� l     ��;�:� n      ��� 1    �9
�9 
FCno� o    �8�8 0 ltask lTask�;  �:  �=  �I  �H  �J  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   \ _��� I      �3��2�3 0 	untagtask 	untagTask� ��� o      �1�1 0 ltask lTask� ��0� o      �/�/ 0 ltag lTag�0  �2  � w     A��� k    A�� ��� r    ��� n    ��� 1    �.
�. 
FCno� o    �-�- 0 ltask lTask� o      �,�, 0 itemnote itemNote� ��� I   �+��*
�+ .ascrcmnt****      � ****� o    	�)�) 0 itemnote itemNote�*  �  �(  Z    A�'�& l   �%�$ E     o    �#�# 0 itemnote itemNote o    �"�" 0 ltag lTag�%  �$   k    =  r    	
	 o    �!�! 0 ltag lTag
 n      1    � 
�  
txdl 1    �
� 
ascr  r    1 J       n     2   �
� 
citm o    �� 0 itemnote itemNote � m     �  �   J        o      �� 0 itemnode itemNode � n      1   - /�
� 
txdl 1   , -�
� 
ascr�     r   2 7!"! c   2 5#$# o   2 3�� 0 itemnode itemNode$ m   3 4�
� 
TEXT" o      �� 0 itemnote itemNote  %�% r   8 =&'& o   8 9�� 0 itemnote itemNote' l     (��( n      )*) 1   : <�
� 
FCno* o   9 :�� 0 ltask lTask�  �  �  �'  �&  �(  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � +,+ l     ����  �  �  , -.- l      �/0�  / 0 * remove any tags in the provided tag list    0 �11 T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  . 232 i   ` c454 I      �
6�	�
 0 	cleartask 	clearTask6 787 o      �� 0 ltask lTask8 9�9 o      �� 0 ltaglist lTagList�  �	  5 w     $:;: X    $<�=< k    >> ?@? I   �A�
� .ascrcmnt****      � ****A o    �� 0 atag aTag�  @ B�B I    � C���  0 	untagtask 	untagTaskC DED o    ���� 0 ltask lTaskE F��F o    ���� 0 atag aTag��  ��  �  � 0 atag aTag= o    ���� 0 ltaglist lTagList;�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   #8��        ����  	                Applications    ��)�      �h       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  3 GHG l     ��������  ��  ��  H IJI l      ��KL��  K    SECTION 5: other utility    L �MM 4   S E C T I O N   5 :   o t h e r   u t i l i t y  J NON l      ��PQ��  P   send tweet    Q �RR    s e n d   t w e e t  O S��S i   d gTUT I      ��V���� 0 	sendtweet 	sendTweetV W��W o      ���� 	0 value  ��  ��  U k     XX YZY r     [\[ b     ]^] b     _`_ m     aa �bb $ t w u r l   - d   ' s t a t u s = '` o    ���� 	0 value  ^ m    cc �dd 0 '   / 1 / s t a t u s e s / u p d a t e . x m l\ o      ���� 0 cmd  Z e��e I   ��f��
�� .sysoexecTEXT���     TEXTf o    	���� 0 cmd  ��  ��  ��  � ��ghijklmnopqrstuvwxyz{|}~����  g ������������������������������������������������������ 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask�� 0 	sendtweet 	sendTweeth ������������� 0 
getfolders 
getFolders�� ����� �  ���� 0 	ldocument 	lDocument��  � �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder� �����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�i ������������� *0 getfoldersoffolders getFoldersOfFolders�� ����� �  ���� 0 lfolders lFolders��  � ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder� �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�j ������������ 0 getprojects getProjects�� ����� �  ���� 0 	ldocument 	lDocument��  � ���������� 0 	ldocument 	lDocument�� 0 lfolderlist lFolderList�� 0 projectlist projectList�� 0 
thisfolder 
thisFolder� �������������� 0 
getfolders 
getFolders
�� 
FCpr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� .0 getprojectsfromfolder getProjectsFromFolder�� 4�Z)�k+ E�O��-E�O �[��l kh �)�k+ %E�[OY��O�k ��7���������� .0 getprojectsfromfolder getProjectsFromFolder�� ����� �  ���� 0 lfolder lFolder��  � ���� 0 lfolder lFolder� ;��
�� 
FCpr�� �Z��-El ��P���������� 0 gettasks getTasks�� ����� �  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject� V����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�m ��o���������� ,0 gettasksfromdocument getTasksFromDocument�� ����� �  ���� 0 	ldocument 	lDocument��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject� s��������~�}�� 0 getprojects getProjects
�� 
FCac
�� 
kocl
� 
cobj
�~ .corecnte****       ****�} 0 gettasks getTasks�� 4�Z*�k+ E�O��-E�O �[��l kh �*�k+ %E�[OY��O�n �|��{�z���y�| *0 gettasksfromproject getTasksFromProject�{ �x��x �  �w�w 0 lproject lProject�z  � �v�v 0 lproject lProject� ��u
�u 
FCac�y �Z��-Eo �t��s�r���q�t 20 filterforactiveprojects filterForActiveProjects�s �p��p �  �o�o 0 lprojectlist lProjectList�r  � �n�m�l�n 0 lprojectlist lProjectList�m 0 projectlist projectList�l 0 thisproject thisProject� ��k�j�i�h�g
�k 
kocl
�j 
cobj
�i .corecnte****       ****
�h 
FCPs
�g FCPsFCPa�q 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�p �f��e�d���c�f B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�e �b��b �  �a�a 0 lprojectlist lProjectList�d  � �`�_�^�` 0 lprojectlist lProjectList�_ 0 projectlist projectList�^ 0 thisproject thisProject� ��]�\�[�Z
�] 
kocl
�\ 
cobj
�[ .corecnte****       ****
�Z 
FC.A�c 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�q �Y��X�W���V�Y H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�X �U��U �  �T�T 0 lprojectlist lProjectList�W  � �S�R�Q�S 0 lprojectlist lProjectList�R 0 projectlist projectList�Q 0 thisproject thisProject� ��P�O�N�M
�P 
kocl
�O 
cobj
�N .corecnte****       ****
�M 
FC.A�V 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�r �L�K�J���I�L @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�K �H��H �  �G�F�G 0 lprojectlist lProjectList�F 0 ldate lDate�J  � �E�D�C�B�A�@�?�>�=�<�;�:�E 0 lprojectlist lProjectList�D 0 ldate lDate�C 0 projectlist projectList�B 	0 cdate  �A 0 thisproject thisProject�@ 0 tasklist taskList�? 0 flag  �> 0 thistask thisTask�= 
0 tcdate  �< 
0 tmdate  �; 0 tcds  �: 0 tmds  � �9�8�7�6�5�4�3
�9 
dstr
�8 
kocl
�7 
cobj
�6 .corecnte****       ****�5 *0 gettasksfromproject getTasksFromProject
�4 
FCDa
�3 
FCDm�I ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�s �2p�1�0���/�2 Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�1 �.��. �  �-�,�- 0 lprojectlist lProjectList�, 0 ldate lDate�0  � 	�+�*�)�(�'�&�%�$�#�+ 0 lprojectlist lProjectList�* 0 ldate lDate�) 0 projectlist projectList�( 0 thisproject thisProject�' 0 tasklist taskList�& 0 flag  �% 0 thistask thisTask�$ 
0 tcdate  �# 
0 tmdate  � v�"�!� ���
�" 
kocl
�! 
cobj
�  .corecnte****       ****� *0 gettasksfromproject getTasksFromProject
� 
FCDa
� 
FCDm�/ y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�t �������� 20 filterforcompletedtasks filterForCompletedTasks� ��� �  �� 0 	ltasklist 	lTaskList�  � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� �����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�u �������� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� �  �
�	�
 0 	ltasklist 	lTaskList�	 0 ldate lDate�  � ������� 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 
thistaskcd 
thisTaskCD� (0 thistaskdatestring thisTaskDateString� ���� ����
� 
kocl
� 
cobj
�  .corecnte****       ****
�� 
FCdc
�� 
dstr� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�v ������������ 40 filterforincompletetasks filterForIncompleteTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�w ��5���������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� 9����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�x ��V���������� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� \����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�y ������������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�z ������������� 20 filterfortasksdueondate filterForTasksDueOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString� �������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�{ ��.���������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD� 	4����������T����
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
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�| ��f���������� .0 filterfortaskswithtag filterForTasksWithTag�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� l��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCno�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�} ������������� $0 filterforflagged filterForFlagged�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ��~�}� 0 	ltasklist 	lTaskList�~ 0 tasklist taskList�} 0 thistask thisTask� ��|�{�z�y
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�~ �x��w�v���u�x 0 tagtask tagTask�w �t��t �  �s�r�s 0 ltask lTask�r 0 ltag lTag�v  � �q�p�o�q 0 ltask lTask�p 0 ltag lTag�o 0 itemnote itemNote� ��n
�n 
FCno�u %�Z��,E�O�� ��,E�O��%E�O���,FY h �m��l�k���j�m 0 	untagtask 	untagTask�l �i��i �  �h�g�h 0 ltask lTask�g 0 ltag lTag�k  � �f�e�d�c�f 0 ltask lTask�e 0 ltag lTag�d 0 itemnote itemNote�c 0 itemnode itemNode� 	��b�a�`�_�^�]�\
�b 
FCno
�a .ascrcmnt****      � ****
�` 
ascr
�_ 
txdl
�^ 
citm
�] 
cobj
�\ 
TEXT�j B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� �[5�Z�Y���X�[ 0 	cleartask 	clearTask�Z �W��W �  �V�U�V 0 ltask lTask�U 0 ltaglist lTagList�Y  � �T�S�R�T 0 ltask lTask�S 0 ltaglist lTagList�R 0 atag aTag� ;�Q�P�O�N�M
�Q 
kocl
�P 
cobj
�O .corecnte****       ****
�N .ascrcmnt****      � ****�M 0 	untagtask 	untagTask�X %�Z !�[��l kh �j O*��l+ [OY��� �LU�K�J���I�L 0 	sendtweet 	sendTweet�K �H��H �  �G�G 	0 value  �J  � �F�E�F 	0 value  �E 0 cmd  � ac�D
�D .sysoexecTEXT���     TEXT�I �%�%E�O�j � ��  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  � �A��A g� g ��������������������������������������������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:� 	;	; 	<�@�?	< �>	=�>&	=& 	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_	`	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
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
U
V
W
X
Y
Z
[
\
]
^
_
`
a
b
c	> 
d
d 
e�=
f�<
e  ��;
g�:
�; 
docu
g �
h
h  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCpr
f �
i
i  h s y l k k z 3 a U D
�< kfrmID  	? 
j
j 
k�9
l�8
k  ��7
m�6
�7 
docu
m �
n
n  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCpr
l �
o
o  p D E - Q Y 9 q 2 _ u
�8 kfrmID  	@ 
p
p 
q�5
r�4
q  ��3
s�2
�3 
docu
s �
t
t  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCpr
r �
u
u  k 6 l - N 8 j 5 5 r B
�4 kfrmID  	A 
v
v 
w�1
x�0
w  ��/
y�.
�/ 
docu
y �
z
z  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCpr
x �
{
{  k H c i J w 8 W X g 6
�0 kfrmID  	B 
|
| 
}�-
~�,
}  ��+
�*
�+ 
docu
 �
�
�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCpr
~ �
�
�  p n 9 I 7 v G F S z X
�, kfrmID  	C 
�
� 
��)
��(
�  ��'
��&
�' 
docu
� �
�
�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCpr
� �
�
�  o d 5 G J W o s c c Y
�( kfrmID  	D 
�
� 
��%
��$
�  ��#
��"
�# 
docu
� �
�
�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCpr
� �
�
�  c 1 X i E - R 1 v S v
�$ kfrmID  	E 
�
� 
��!
�� 
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCpr
� �
�
�  j E a 1 B F A J J 9 H
�  kfrmID  	F 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr
� �
�
�  b _ q h u D y 7 Y C b
� kfrmID  	G 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr
� �
�
�  n P W F n 8 f - B Q x
� kfrmID  	H 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr
� �
�
�  b T s 3 4 L r n s d h
� kfrmID  	I 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr
� �
�
�  o f b K F r H z g Q 9
� kfrmID  	J 
�
� 
��
��
�  ��
��

� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCpr
� �
�
�  e C 6 - f Z B W G N v
� kfrmID  	K 
�
� 
��	
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCpr
� �
�
�  j - I w o A 7 H J q b
� kfrmID  	L 
�
� 
��
��
�  ��
��
� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr
� �
�
�  b a w x U S J G D c A
� kfrmID  	M 
�
� 
��
�� 
�  ���
���
�� 
docu
� �
�
�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCpr
� �
�
�  d u 8 x A H M l o z Q
�  kfrmID  	N 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  g B F S F T N p r H x
�� kfrmID  	O 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  b N u u w 0 b j x - Y
�� kfrmID  	P 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  k Y I B C a a j N v V
�� kfrmID  	Q 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  c i f 3 D N 9 Y E F _
�� kfrmID  	R 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  h 4 m 7 J 2 5 K i Q S
�� kfrmID  	S 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  d V Y Q - 2 E m W T H
�� kfrmID  	T 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  h f O z L L u S b q 2
�� kfrmID  	U 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  b J p n 0 A B Y 3 Q z
�� kfrmID  	V 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  d - Y G 1 h N Y v 3 E
�� kfrmID  	W 
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
�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr
� �
�
�  g r N S M 7 s V z - W
�� kfrmID  	X    ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  e A l C X R 6 V J 1 L
�� kfrmID  	Y  ����  ���	��
�� 
docu	 �

  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  m Y h M R O N h S U L
�� kfrmID  	Z  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  a - w o k N Y a A q E
�� kfrmID  	[  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  j H _ Y x j I J 0 C _
�� kfrmID  	\  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  m c n R g g 4 4 w H x
�� kfrmID  	]  �� ��  ���!��
�� 
docu! �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr  �##  j 5 t y v o j P _ q _
�� kfrmID  	^ $$ %��&��%  ���'��
�� 
docu' �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr& �))  e - t 3 4 I R E K n 5
�� kfrmID  	_ ** +��,��+  ���-��
�� 
docu- �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr, �//  p s D s d Y N H s _ n
�� kfrmID  	` 00 1��2��1  ���3��
�� 
docu3 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr2 �55  l _ p - - k F m p B 3
�� kfrmID  	a 66 7��8��7  ���9��
�� 
docu9 �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr8 �;;  d l T z I 4 O 0 d z m
�� kfrmID  	b << =��>��=  ���?��
�� 
docu? �@@  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr> �AA  j l E r r q N g N d s
�� kfrmID  	c BB C��D��C  ���E��
�� 
docuE �FF  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprD �GG  b U _ f R j N v Y 6 M
�� kfrmID  	d HH I��J��I  ���K��
�� 
docuK �LL  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprJ �MM  b 9 X x J k 8 Y J e n
�� kfrmID  	e NN O��P��O  ���Q��
�� 
docuQ �RR  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprP �SS  j E 2 D Z F R K h O Z
�� kfrmID  	f TT U��V��U  ���W��
�� 
docuW �XX  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprV �YY  c l V q h Z M e n r g
�� kfrmID  	g ZZ [��\��[  ���]��
�� 
docu] �^^  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr\ �__  h 2 V 7 R C 3 P _ s a
�� kfrmID  	h `` a��b��a  ���c��
�� 
docuc �dd  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprb �ee  o j T j - 0 T t 0 6 I
�� kfrmID  	i ff g��h��g  ���i��
�� 
docui �jj  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprh �kk  m L - 4 q 2 G W e J Y
�� kfrmID  	j ll m��n��m  ���o��
�� 
docuo �pp  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprn �qq  o 1 F 6 S J K K o U y
�� kfrmID  	k rr s��t��s  ���u��
�� 
docuu �vv  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprt �ww  o 8 R r o 6 y x W W W
�� kfrmID  	l xx y��z��y  ���{��
�� 
docu{ �||  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprz �}}  j H M u Y a - J N A A
�� kfrmID  	m ~~ �����  ����~
� 
docu� ���  c E S 1 6 A v c 6 U j
�~ kfrmID  
�� 
FCpr� ���  c J _ h F t l T e x b
�� kfrmID  	n �� ��}��|�  ��{��z
�{ 
docu� ���  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCpr� ���  o w i j 0 D R T J R Q
�| kfrmID  	o �� ��y��x�  ��w��v
�w 
docu� ���  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCpr� ���  l 4 4 8 g f E 6 W E J
�x kfrmID  	p �� ��u��t�  ��s��r
�s 
docu� ���  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCpr� ���  b 1 P g p L p _ v c i
�t kfrmID  	q �� ��q��p�  ��o��n
�o 
docu� ���  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCpr� ���  n k B Y C q h e r Q e
�p kfrmID  	r �� ��m��l�  ��k��j
�k 
docu� ���  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCpr� ���  j o 9 W _ P Y P d H 9
�l kfrmID  	s �� ��i��h�  ��g��f
�g 
docu� ���  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCpr� ���  n W s D n l B 6 o V X
�h kfrmID  	t �� ��e��d�  ��c��b
�c 
docu� ���  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCpr� ���  j u 1 Q r J 1 m q s f
�d kfrmID  	u �� ��a��`�  ��_��^
�_ 
docu� ���  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCpr� ���  n - f - j l r i m A j
�` kfrmID  	v �� ��]��\�  ��[��Z
�[ 
docu� ���  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCpr� ���  f G w 8 3 c G G f u i
�\ kfrmID  	w �� ��Y��X�  ��W��V
�W 
docu� ���  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCpr� ���  p U F D 6 I U F P s K
�X kfrmID  	x �� ��U��T�  ��S��R
�S 
docu� ���  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCpr� ���  d l r i S F O v n _ 3
�T kfrmID  	y �� ��Q��P�  ��O��N
�O 
docu� ���  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCpr� ���  b U 1 c 5 T v l u K 9
�P kfrmID  	z �� ��M��L�  ��K��J
�K 
docu� ���  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCpr� ���  i F l Q 0 9 R 3 l t p
�L kfrmID  	{ �� ��I��H�  ��G��F
�G 
docu� ���  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCpr� ���  f f E C g E O T e x b
�H kfrmID  	| �� ��E��D�  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCpr� ���  e W Q U G 7 Y z H I u
�D kfrmID  	} �� ��A��@�  ��?��>
�? 
docu� ���  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCpr� ���  h J B 8 f J w 3 z b X
�@ kfrmID  	~ �� ��=��<�  ��;��:
�; 
docu� ���  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCpr� ���  f P X a U F - R d w y
�< kfrmID  	 �� ��9��8�  ��7��6
�7 
docu� ���  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCpr� ���  f _ D v X T Q e U H n
�8 kfrmID  	� �� ��5��4�  ��3��2
�3 
docu� ���  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCpr� ���  f A 8 W D q L R r P e
�4 kfrmID  	� �� ��1��0�  ��/��.
�/ 
docu� ���  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCpr� ���  j p g c d f 0 o X k M
�0 kfrmID  	� �� ��-��,�  ��+��*
�+ 
docu� �    c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCpr� �  l W q R M q N 5 _ u q
�, kfrmID  	�  �)�(  ��'�&
�' 
docu �  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCpr �  j Z i k u t X k U Z V
�( kfrmID  	�  	�%
�$	  ��#�"
�# 
docu �  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCpr
 �  l u o i t _ b x 1 z A
�$ kfrmID  	�  �!�   ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCpr �  l 3 t t W d 1 B f e U
�  kfrmID  	�  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr �  k C n i s T 0 1 Q c O
� kfrmID  	�  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr �  l 7 t W J E V R L i u
� kfrmID  	�    !�"�!  ��#�
� 
docu# �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr" �%%  a z j R Q N b h M - L
� kfrmID  	� && '�(�'  ��)�
� 
docu) �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr( �++  h V E u u 5 I n 8 L O
� kfrmID  	� ,, -�.�-  ��/�

� 
docu/ �00  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCpr. �11  f - K a E i e F w d 4
� kfrmID  	� 22 3�	4�3  ��5�
� 
docu5 �66  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCpr4 �77  l c M M a e c 5 b A I
� kfrmID  	� 88 9�:�9  ��;�
� 
docu; �<<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr: �==  j p S K f n P g 1 - P
� kfrmID  	� >> ?�@� ?  ���A��
�� 
docuA �BB  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCpr@ �CC  o c U i j 7 A 3 V P F
�  kfrmID  	� DD E��F��E  ���G��
�� 
docuG �HH  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprF �II  o r n B w 2 m K _ y o
�� kfrmID  	� JJ K��L��K  ���M��
�� 
docuM �NN  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprL �OO  h Z p f l I D a - 7 o
�� kfrmID  	� PP Q��R��Q  ���S��
�� 
docuS �TT  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprR �UU  g L E 6 W S _ d v 1 Z
�� kfrmID  	� VV W��X��W  ���Y��
�� 
docuY �ZZ  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprX �[[  b d n z - K Q Z t t 7
�� kfrmID  	� \\ ]��^��]  ���_��
�� 
docu_ �``  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr^ �aa  h L u O C b 8 z r z 9
�� kfrmID  	� bb c��d��c  ���e��
�� 
docue �ff  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprd �gg  c f z p 5 g Y y R t m
�� kfrmID  	� hh i��j��i  ���k��
�� 
docuk �ll  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprj �mm  m X v M U f w N v 9 E
�� kfrmID  	� nn o��p��o  ���q��
�� 
docuq �rr  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprp �ss  a v c 0 3 l 0 C b I F
�� kfrmID  	� tt u��v��u  ���w��
�� 
docuw �xx  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprv �yy  l q L K E Q H Z 3 w B
�� kfrmID  	� zz {��|��{  ���}��
�� 
docu} �~~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr| �  j 1 K A 2 - g 6 G Z S
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n 4 k 4 x Z I I v c p
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  o Z 4 7 h W 1 q W O f
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  a 0 9 u V w 4 Y 8 N 9
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  h G Q L 8 c O b u 3 s
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  h H 0 h H E G N T R l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n g p 3 0 m V L f g a
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  c O y e W K T m Z z i
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  a r O A n 2 H A Y M s
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  h u e n j g a z 8 o c
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  g 7 S A 4 F 2 v p 6 p
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  b A t S I h B l w 1 6
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f O D m _ q Q a n 8 8
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k F m k v 6 F 1 d R o
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  l d r q T f 1 f 5 3 w
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f 2 s s D i 4 9 g o D
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  l J G b X C a K p 0 l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f a M 6 x - z e u A n
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k N w 8 g T q M a 1 a
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k t f F n D 8 T m t z
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  e C y 5 h T P q C 9 K
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  h 1 H - c 9 W N C R x
�� kfrmID  	� �� ��� ���  ���~
� 
docu �  c E S 1 6 A v c 6 U j
�~ kfrmID  
�� 
FCpr  �  b 3 n e X i x 9 Q I c
�� kfrmID  	�  �}�|  ��{�z
�{ 
docu �  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCpr �		  n 2 S 8 4 g M 6 5 c V
�| kfrmID  	� 

 �y�x  ��w�v
�w 
docu �  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCpr �  a s r E J a Q j t r V
�x kfrmID  	�  �u�t  ��s�r
�s 
docu �  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCpr �  o t x Q K v 8 K y Z J
�t kfrmID  	�  �q�p  ��o�n
�o 
docu �  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCpr �  j P F S g R X E k w J
�p kfrmID  	�  �m�l  ��k�j
�k 
docu �    c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCpr �!!  m a 4 K X 9 1 N G X s
�l kfrmID  	� "" #�i$�h#  ��g%�f
�g 
docu% �&&  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCpr$ �''  f X B A h x G X u 9 T
�h kfrmID  	� (( )�e*�d)  ��c+�b
�c 
docu+ �,,  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCpr* �--  i - Q S B Y f K L 9 m
�d kfrmID  	� .. /�a0�`/  ��_1�^
�_ 
docu1 �22  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCpr0 �33  l 9 1 T N X g I M c C
�` kfrmID  	� 44 5�]6�\5  ��[7�Z
�[ 
docu7 �88  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCpr6 �99  m R n i r f o F J N B
�\ kfrmID  	� :: ;�Y<�X;  ��W=�V
�W 
docu= �>>  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCpr< �??  b R V w j V 0 K D s Z
�X kfrmID  	� @@ A�UB�TA  ��SC�R
�S 
docuC �DD  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCprB �EE  i D a Q N c u O E G W
�T kfrmID  	� FF G�QH�PG  ��OI�N
�O 
docuI �JJ  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCprH �KK  h 2 H g O j R c p x 6
�P kfrmID  	� LL M�MN�LM  ��KO�J
�K 
docuO �PP  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCprN �QQ  o O t h e q 7 V R w f
�L kfrmID  	� RR S�IT�HS  ��GU�F
�G 
docuU �VV  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCprT �WW  o U q E 0 Y Y e x f 1
�H kfrmID  	� XX Y�EZ�DY  ��C[�B
�C 
docu[ �\\  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCprZ �]]  e 5 b F D v K E 4 1 R
�D kfrmID  	� ^^ _�A`�@_  ��?a�>
�? 
docua �bb  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCpr` �cc  h N t l h H K c i X r
�@ kfrmID  	� dd e�=f�<e  ��;g�:
�; 
docug �hh  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCprf �ii  k J V Y 3 w Q B 2 G q
�< kfrmID  	� jj k�9l�8k  ��7m�6
�7 
docum �nn  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCprl �oo  k U J f u i l 6 _ 0 u
�8 kfrmID  	� pp q�5r�4q  ��3s�2
�3 
docus �tt  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCprr �uu  d 3 f l q T V J g 8 u
�4 kfrmID  	� vv w�1x�0w  ��/y�.
�/ 
docuy �zz  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCprx �{{  a o Z R 5 P C V p M R
�0 kfrmID  	� || }�-~�,}  ��+�*
�+ 
docu ���  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCpr~ ���  d C y H 9 j g S h v I
�, kfrmID  	� �� ��)��(�  ��'��&
�' 
docu� ���  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCpr� ���  m P m E a B T 5 D j r
�( kfrmID  	� �� ��%��$�  ��#��"
�# 
docu� ���  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCpr� ���  g b x b V j z c O y 2
�$ kfrmID  	� �� ��!�� �  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCpr� ���  f g G A U Q 1 3 2 4 Z
�  kfrmID  	� �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  k W P 7 b 0 7 y x P u
� kfrmID  	� �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  l a - N s d 2 u A Z G
� kfrmID  	� �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  g G j S o e d v y 7 m
� kfrmID  	� �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  h c b g I P N _ 2 g g
� kfrmID  	� �� �����  ����

� 
docu� ���  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCpr� ���  c k r S c Y Z A R 7 m
� kfrmID  	� �� ��	���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCpr� ���  k d y b S E D _ r g V
� kfrmID  	� �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  b n 7 8 D t Q q K n D
� kfrmID  	� �� ���� �  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCpr� ���  l C D D - - 7 Q 5 - m
�  kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  m X D F B I f D _ Z T
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  c A a i i 5 g L - y Q
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  e 5 3 v R D 6 q X o A
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  d z 6 b g 2 r k Q m u
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  d X w j 4 8 b g i a P
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  j x Y P R U s m B e m
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k d g M 1 H Z P X j l
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f v E a B D I A y b B
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  b O c s w m 8 Z b L N
�� kfrmID  	� �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  d i Z U w h O q B k -
�� kfrmID  	�    ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  e c 8 E g z q C a K 5
�� kfrmID  	�  ����  ���	��
�� 
docu	 �

  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  c X o 0 x G 6 K o G 4
�� kfrmID  	�  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  m G Q h a k _ w T c s
�� kfrmID  	�  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  j - C O i o p j I D J
�� kfrmID  	�  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  j 8 w 9 u x y w t p w
�� kfrmID  	�  �� ��  ���!��
�� 
docu! �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr  �##  i g V g e 6 _ 1 s 4 D
�� kfrmID  	� $$ %��&��%  ���'��
�� 
docu' �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr& �))  d i z 4 Z I q j q N _
�� kfrmID  	� ** +��,��+  ���-��
�� 
docu- �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr, �//  j t 2 J I 2 n B - k a
�� kfrmID  	� 00 1��2��1  ���3��
�� 
docu3 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr2 �55  o N D c v N A r I 7 P
�� kfrmID  	� 66 7��8��7  ���9��
�� 
docu9 �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr8 �;;  f W 5 m n Z P H r P I
�� kfrmID  	� << =��>��=  ���?��
�� 
docu? �@@  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr> �AA  n Z J A e Y 1 F Y i e
�� kfrmID  	� BB C��D��C  ���E��
�� 
docuE �FF  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprD �GG  n Q K O i A q I g l i
�� kfrmID  	� HH I��J��I  ���K��
�� 
docuK �LL  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprJ �MM  f P I n O e b Y c f S
�� kfrmID  	� NN O��P��O  ���Q��
�� 
docuQ �RR  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprP �SS  b P k W V _ V 1 R 1 O
�� kfrmID  	� TT U��V��U  ���W��
�� 
docuW �XX  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprV �YY  n G l v I N U l P j Q
�� kfrmID  	� ZZ [��\��[  ���]��
�� 
docu] �^^  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr\ �__  c c K G g j R z Z q 2
�� kfrmID  	� `` a��b��a  ���c��
�� 
docuc �dd  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprb �ee  e - 4 J 1 b 1 q l v M
�� kfrmID  	� ff g��h��g  ���i��
�� 
docui �jj  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprh �kk  k c Y 7 n M q T 9 i F
�� kfrmID  	� ll m��n��m  ���o��
�� 
docuo �pp  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprn �qq  k V X r D x t f m R h
�� kfrmID  	� rr s��t��s  ���u��
�� 
docuu �vv  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprt �ww  h j o r 6 U J N N D 2
�� kfrmID  	� xx y��z��y  ���{��
�� 
docu{ �||  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprz �}}  f c R M h K N 7 3 R 4
�� kfrmID  	� ~~ �����  ����~
� 
docu� ���  c E S 1 6 A v c 6 U j
�~ kfrmID  
�� 
FCpr� ���  b x U G t s R D Z 2 -
�� kfrmID  	� �� ��}��|�  ��{��z
�{ 
docu� ���  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCpr� ���  n 2 Z w g w H q w N 6
�| kfrmID  	� �� ��y��x�  ��w��v
�w 
docu� ���  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCpr� ���  j V E W f M 4 A 4 u c
�x kfrmID  	� �� ��u��t�  ��s��r
�s 
docu� ���  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCpr� ���  a D f n 9 V 8 Z C U e
�t kfrmID  	� �� ��q��p�  ��o��n
�o 
docu� ���  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCpr� ���  o q g e 7 M 5 v Q j W
�p kfrmID  	� �� ��m��l�  ��k��j
�k 
docu� ���  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCpr� ���  h 1 w q o 3 u T M u X
�l kfrmID  	� �� ��i��h�  ��g��f
�g 
docu� ���  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCpr� ���  p Y H - F j B y w y g
�h kfrmID  	� �� ��e��d�  ��c��b
�c 
docu� ���  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCpr� ���  g u M E n l 8 b N C C
�d kfrmID  	� �� ��a��`�  ��_��^
�_ 
docu� ���  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCpr� ���  k 9 3 M X d 2 F 2 Q _
�` kfrmID  	� �� ��]��\�  ��[��Z
�[ 
docu� ���  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCpr� ���  b H 5 w e 4 m b I q 8
�\ kfrmID  	� �� ��Y��X�  ��W��V
�W 
docu� ���  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCpr� ���  h 3 N v p X j 7 m H U
�X kfrmID  	� �� ��U��T�  ��S��R
�S 
docu� ���  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCpr� ���  h 4 K p J B x U q Q i
�T kfrmID  	� �� ��Q��P�  ��O��N
�O 
docu� ���  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCpr� ���  n d Q 0 3 l b i 1 _ O
�P kfrmID  	� �� ��M��L�  ��K��J
�K 
docu� ���  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCpr� ���  d I E _ S T w U S 9 9
�L kfrmID  	� �� ��I��H�  ��G��F
�G 
docu� ���  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCpr� ���  i P a - E u 7 - v - F
�H kfrmID  	� �� ��E��D�  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCpr� ���  n Y r F v V K g 6 a X
�D kfrmID  	� �� ��A��@�  ��?��>
�? 
docu� ���  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCpr� ���  h M W t p 8 _ C A x O
�@ kfrmID  	� �� ��=��<�  ��;��:
�; 
docu� ���  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCpr� ���  g 5 M c e m A N R 4 V
�< kfrmID  	� �� ��9��8�  ��7��6
�7 
docu� ���  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCpr� ���  m U Y _ b M F 1 - V 7
�8 kfrmID  
  �� ��5��4�  ��3��2
�3 
docu� ���  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCpr� ���  j Y D 9 g s 8 E P x A
�4 kfrmID  
 �� ��1��0�  ��/��.
�/ 
docu� ���  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCpr� ���  a s s 3 g w 9 H a q S
�0 kfrmID  
 �� ��-��,�  ��+��*
�+ 
docu� �    c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCpr� �  d L L Z V r 5 o i 1 u
�, kfrmID  
  �)�(  ��'�&
�' 
docu �  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCpr �  k O v s 4 K 4 K z s 1
�( kfrmID  
  	�%
�$	  ��#�"
�# 
docu �  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCpr
 �  g k K e 8 B S J s v x
�$ kfrmID  
  �!�   ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCpr �  h s I X 4 u H p j 2 2
�  kfrmID  
  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr �  f c T L m K i w y y 7
� kfrmID  
  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr �  i f J L a 5 d d 6 8 J
� kfrmID  
    !�"�!  ��#�
� 
docu# �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr" �%%  j 0 g S D x K G U H 6
� kfrmID  
	 && '�(�'  ��)�
� 
docu) �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr( �++  m Q 0 e r - o Z b w j
� kfrmID  

 ,, -�.�-  ��/�

� 
docu/ �00  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCpr. �11  k i w O i 0 i F f 6 G
� kfrmID  
 22 3�	4�3  ��5�
� 
docu5 �66  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCpr4 �77  a t A r 5 r t N 8 P U
� kfrmID  
 88 9�:�9  ��;�
� 
docu; �<<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr: �==  i h R 1 t 3 z F a E i
� kfrmID  
 >> ?�@� ?  ���A��
�� 
docuA �BB  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCpr@ �CC  p w 1 r U e C C V Y M
�  kfrmID  
 DD E��F��E  ���G��
�� 
docuG �HH  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprF �II  p 6 D L X G s m Q y S
�� kfrmID  
 JJ K��L��K  ���M��
�� 
docuM �NN  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprL �OO  i V z N a T q m 0 i I
�� kfrmID  
 PP Q��R��Q  ���S��
�� 
docuS �TT  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprR �UU  d _ n k E r X n 6 s T
�� kfrmID  
 VV W��X��W  ���Y��
�� 
docuY �ZZ  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprX �[[  l I w R I i c _ 8 B v
�� kfrmID  
 \\ ]��^��]  ���_��
�� 
docu_ �``  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr^ �aa  f r j R s S N a _ h M
�� kfrmID  
 bb c��d��c  ���e��
�� 
docue �ff  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprd �gg  m z g S e x d R i D x
�� kfrmID  
 hh i��j��i  ���k��
�� 
docuk �ll  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprj �mm  l h t 0 J p B 5 m y b
�� kfrmID  
 nn o��p��o  ���q��
�� 
docuq �rr  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprp �ss  f j 6 B 9 q c g E j A
�� kfrmID  
 tt u��v��u  ���w��
�� 
docuw �xx  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCprv �yy  g k Y r H U l t 2 Z 0
�� kfrmID  
 zz {��|��{  ���}��
�� 
docu} �~~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr| �  g 7 d d E - K W M L k
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  a H g i 4 T p M H e k
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  i 1 D X _ S A R S f f
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  d d s h C q Y H k L t
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f f U H T M W 6 - a S
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n x O m T _ k m q V e
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  c 3 x X n V j C b R W
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n z l p Y - k 0 i 1 Z
�� kfrmID  
 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k W O D M k e M 6 P 9
�� kfrmID  
  �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k 3 o A X F L D U J 7
�� kfrmID  
! �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  k R V I k o T v D A X
�� kfrmID  
" �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  h O m 0 e I H H A l D
�� kfrmID  
# �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n A U Q t M y w i 3 8
�� kfrmID  
$ �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f x 3 y B k d x Z t i
�� kfrmID  
% �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  o 6 h I G X W h a f k
�� kfrmID  
& �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  o x 0 s V Y L m 9 C T
�� kfrmID  
' �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f Q r V H 2 b A 0 H b
�� kfrmID  
( �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  j F k W b n l o j I L
�� kfrmID  
) �� �������  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCpr� ���  f P 3 J p l 6 u l z s
�� kfrmID  
* �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  j _ g U T I h r 7 d C
� kfrmID  
+ �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  g q H L g f l m K I C
� kfrmID  
, �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  f Q D _ 8 Y v m 9 K X
� kfrmID  
- �� �� ��  ���~
� 
docu �  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCpr  �  p l J t x o h 0 F 5 p
� kfrmID  
.  �}�|  ��{�z
�{ 
docu �  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCpr �		  f T Q x 4 x L V m J T
�| kfrmID  
/ 

 �y�x  ��w�v
�w 
docu �  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCpr �  o t X H f d R Z t s R
�x kfrmID  
0  �u�t  ��s�r
�s 
docu �  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCpr �  i h w t 6 Y 2 7 M Q K
�t kfrmID  
1  �q�p  ��o�n
�o 
docu �  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCpr �  h b K C t G N A E A Q
�p kfrmID  
2  �m�l  ��k�j
�k 
docu �    c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCpr �!!  k 9 - G P w V v M 7 5
�l kfrmID  
3 "" #�i$�h#  ��g%�f
�g 
docu% �&&  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCpr$ �''  a q A - Z 0 F P v S X
�h kfrmID  
4 (( )�e*�d)  ��c+�b
�c 
docu+ �,,  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCpr* �--  a P n z S K L s A Y 0
�d kfrmID  
5 .. /�a0�`/  ��_1�^
�_ 
docu1 �22  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCpr0 �33  o X H e p e V j J e d
�` kfrmID  
6 44 5�]6�\5  ��[7�Z
�[ 
docu7 �88  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCpr6 �99  b _ 6 P U X t s v F L
�\ kfrmID  
7 :: ;�Y<�X;  ��W=�V
�W 
docu= �>>  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCpr< �??  b p m I 6 c o c f P j
�X kfrmID  
8 @@ A�UB�TA  ��SC�R
�S 
docuC �DD  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCprB �EE  e 9 P 2 w l 2 v h U -
�T kfrmID  
9 FF G�QH�PG  ��OI�N
�O 
docuI �JJ  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCprH �KK  o w r g M F f S _ L v
�P kfrmID  
: LL M�MN�LM  ��KO�J
�K 
docuO �PP  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCprN �QQ  i g M P o G N 7 n A a
�L kfrmID  
; RR S�IT�HS  ��GU�F
�G 
docuU �VV  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCprT �WW  c B s T E 0 k B i _ a
�H kfrmID  
< XX Y�EZ�DY  ��C[�B
�C 
docu[ �\\  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCprZ �]]  l h p x G Z k U 1 E V
�D kfrmID  
= ^^ _�A`�@_  ��?a�>
�? 
docua �bb  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCpr` �cc  h d M T u x i f Q N 8
�@ kfrmID  
> dd e�=f�<e  ��;g�:
�; 
docug �hh  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCprf �ii  c W 5 8 c A L O d Y y
�< kfrmID  
? jj k�9l�8k  ��7m�6
�7 
docum �nn  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCprl �oo  d p d n 6 O J H a 4 4
�8 kfrmID  
@ pp q�5r�4q  ��3s�2
�3 
docus �tt  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCprr �uu  a S j 8 Z R l u l j 7
�4 kfrmID  
A vv w�1x�0w  ��/y�.
�/ 
docuy �zz  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCprx �{{  n D G 4 t u r u 3 B m
�0 kfrmID  
B || }�-~�,}  ��+�*
�+ 
docu ���  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCpr~ ���  o 8 G g H z d W H M X
�, kfrmID  
C �� ��)��(�  ��'��&
�' 
docu� ���  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCpr� ���  d k q f d x s 8 W 8 i
�( kfrmID  
D �� ��%��$�  ��#��"
�# 
docu� ���  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCpr� ���  p A 3 W T D y B O G i
�$ kfrmID  
E �� ��!�� �  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCpr� ���  h u 6 w _ L L D g d -
�  kfrmID  
F �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  p 4 n H U X 1 E d r _
� kfrmID  
G �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  e v - _ o Z g L t Z V
� kfrmID  
H �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  b J g h C p t - i Y I
� kfrmID  
I �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  h v N M Y I J c p A S
� kfrmID  
J �� �����  ����

� 
docu� ���  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCpr� ���  g n p J r D L 3 A K Z
� kfrmID  
K �� ��	���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCpr� ���  c E C 4 y k c 1 t b a
� kfrmID  
L �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr� ���  g J P t H g 0 q l F Z
� kfrmID  
M �� ���� �  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCpr� ���  d s 2 t H c J 3 f 1 z
�  kfrmID  
N �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  f 6 O a 5 j m M U M C
�� kfrmID  
O �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  g e K 6 L I Q e j b C
�� kfrmID  
P �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  o E J Y O I V r W 7 S
�� kfrmID  
Q �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  l W - R t I 8 8 3 1 5
�� kfrmID  
R �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  g 3 P Z c 2 p k K u z
�� kfrmID  
S �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  n G 6 o 6 z s 4 Y B L
�� kfrmID  
T �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  m S k D Z G Q X 6 3 R
�� kfrmID  
U �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  c v N 2 A 7 D D j M 3
�� kfrmID  
V �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  i c p u T r 2 K Z F W
�� kfrmID  
W �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr� ���  b C 2 A E U O P 4 p P
�� kfrmID  
X    ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  f 3 9 z W j g B r Z j
�� kfrmID  
Y  ����  ���	��
�� 
docu	 �

  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  c Q Z i s o v J s - v
�� kfrmID  
Z  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  k r X i e P c 3 A U B
�� kfrmID  
[  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  j 3 X _ p 5 D - k N E
�� kfrmID  
\  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCpr �  h y j 3 w i d 8 b W r
�� kfrmID  
]  �� ��  ��!�
� 
docu! �""  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCpr  �##  l R j i 6 h u m p t G
�� kfrmID  
^ $$ %�&�%  ��'�
� 
docu' �((  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr& �))  k v u d 4 o R i r q n
� kfrmID  
_ ** +�,�+  ��-�
� 
docu- �..  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr, �//  e U Z z 4 a v _ 0 l M
� kfrmID  
` 00 1�2�1  ��3�
� 
docu3 �44  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr2 �55  h i a 2 n g T F i w i
� kfrmID  
a 66 7�8�7  ��9�
� 
docu9 �::  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr8 �;;  e 0 u C I M 9 j A P 1
� kfrmID  
b << =�>�=  ��?�
� 
docu? �@@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCpr> �AA  f z R M W d R T N n 1
� kfrmID  
c BB C�D�C  ��E�
� 
docuE �FF  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCprD �GG  d c T O G P h g S 0 r
� kfrmID  
�@ 
cobj�? � HH 	<��
� 
cobj� � II 	<��
� 
cobj� � JJ 	<��
� 
cobj� � KK 	<��
� 
cobj� � LL 	<��
� 
cobj� � MM 	<��
� 
cobj� � NN 	<��
� 
cobj� � OO 	<��
� 
cobj� � PP 	<��
� 
cobj�  � QQ 	<��
� 
cobj� #� RR 	<��
� 
cobj� '� SS 	<��
� 
cobj� )� TT 	<��
� 
cobj� ,� UU 	<��
� 
cobj� -� VV 	<��
� 
cobj� 0� WW 	<��
� 
cobj� 2� XX 	<��
� 
cobj� 3� YY 	<��
� 
cobj� 4� ZZ 	<��
� 
cobj� 5� [[ 	<��~
� 
cobj�~ 6� \\ 	<�}�|
�} 
cobj�| 7� ]] 	<�{�z
�{ 
cobj�z 8� ^^ 	<�y�x
�y 
cobj�x 9� __ 	<�w�v
�w 
cobj�v H� `` 	<�u�t
�u 
cobj�t I� aa 	<�s�r
�s 
cobj�r L� bb 	<�q�p
�q 
cobj�p M� cc 	<�o�n
�o 
cobj�n N� dd 	<�m�l
�m 
cobj�l P� ee 	<�k�j
�k 
cobj�j Y� ff 	<�i�h
�i 
cobj�h Z� gg 	<�g�f
�g 
cobj�f [� hh 	<�e�d
�e 
cobj�d \� ii 	<�c�b
�c 
cobj�b ]� jj 	<�a�`
�a 
cobj�` ^� kk 	<�_�^
�_ 
cobj�^ `� ll 	<�]�\
�] 
cobj�\ b� mm 	<�[�Z
�[ 
cobj�Z c� nn 	<�Y�X
�Y 
cobj�X d� oo 	<�W�V
�W 
cobj�V h� pp 	<�U�T
�U 
cobj�T i� qq 	<�S�R
�S 
cobj�R j� rr 	<�Q�P
�Q 
cobj�P k	  ss 	<�O�N
�O 
cobj�N l	 tt 	<�M�L
�M 
cobj�L m	 uu 	<�K�J
�K 
cobj�J n	 vv 	<�I�H
�I 
cobj�H o	 ww 	<�G�F
�G 
cobj�F p	 xx 	<�E�D
�E 
cobj�D t	 yy 	<�C�B
�C 
cobj�B u	 zz 	<�A�@
�A 
cobj�@ v	 {{ 	<�?�>
�? 
cobj�> w		 || 	<�=�<
�= 
cobj�< x	
 }} 	<�;�:
�; 
cobj�: y	 ~~ 	<�9�8
�9 
cobj�8 {	  	<�7�6
�7 
cobj�6 }	 �� 	<�5�4
�5 
cobj�4 	 �� 	<�3�2
�3 
cobj�2 �	 �� 	<�1�0
�1 
cobj�0 �	 �� 	<�/�.
�/ 
cobj�. �	 �� 	<�-�,
�- 
cobj�, �	 �� 	<�+�*
�+ 
cobj�* �	 �� 	<�)�(
�) 
cobj�( �	 �� 	<�'�&
�' 
cobj�& �	 �� 	<�%�$
�% 
cobj�$ �	 �� 	<�#�"
�# 
cobj�" �	 �� 	<�!� 
�! 
cobj�  �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	 �� 	<��
� 
cobj� �	  �� 	<��
� 
cobj� �	! �� 	<��
� 
cobj� �	" �� 	<��

� 
cobj�
 �	# �� 	<�	�
�	 
cobj� �	$ �� 	<��
� 
cobj� �	% �� 	<��
� 
cobj� �	& �� 	<��
� 
cobj� �	' �� 	<�� 
� 
cobj�  �	( �� 	<����
�� 
cobj�� �	) �� 	<����
�� 
cobj�� �	* �� 	<����
�� 
cobj�� �	+ �� 	<����
�� 
cobj�� �	, �� 	<����
�� 
cobj�� �	- �� 	<����
�� 
cobj�� �	. �� 	<����
�� 
cobj�� �	/ �� 	<����
�� 
cobj�� �	0 �� 	<����
�� 
cobj�� �	1 �� 	<����
�� 
cobj�� �	2 �� 	<����
�� 
cobj�� �	3 �� 	<����
�� 
cobj�� �	4 �� 	<����
�� 
cobj�� �	5 �� 	<����
�� 
cobj�� �	6 �� 	<����
�� 
cobj�� �	7 �� 	<����
�� 
cobj�� �	8 �� 	<����
�� 
cobj�� �	9 �� 	<����
�� 
cobj��	: �� 	<����
�� 
cobj��� �����H�H ��������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~������������������������������������������������������������������������������������������������������������������������ �� ������ ������ ������ 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~�������������������������������������������������������������������������������������������������������������������������������� 	
�  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  n N b Q B f W l Y 9 H
�� kfrmID  �  �� ��  ���!��
�� 
docu! �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac  �##  p v 4 S J p i o d x a
�� kfrmID  � $$ %��&��%  ���'��
�� 
docu' �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac& �))  m 0 C l 3 z F Z C E A
�� kfrmID  � ** +��,��+  ���-��
�� 
docu- �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac, �//  p 8 h W z 7 L m H t R
�� kfrmID  � 00 1��2��1  ���3��
�� 
docu3 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2 �55  p g J F p 4 1 q t V v
�� kfrmID  � 66 7��8��7  ��9�
� 
docu9 �::  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac8 �;;  l j D L f Z Y h C T q
�� kfrmID    << =�>�=  ��?�
� 
docu? �@@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac> �AA  p F _ z _ K H o X m U
� kfrmID   BB C�D�C  ��E�
� 
docuE �FF  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacD �GG  n p - 7 y I e G H z q
� kfrmID   HH I�J�I  ��K�
� 
docuK �LL  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacJ �MM  d I z v I d 6 6 g u P
� kfrmID   NN O�P�O  ��Q�
� 
docuQ �RR  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacP �SS  g T t p I P 9 g 8 y E
� kfrmID   TT U�V�U  ��W�
� 
docuW �XX  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacV �YY  m 4 p T F m b A F v j
� kfrmID   ZZ [�\�[  ��]�
� 
docu] �^^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac\ �__  g g n c U 9 Z s 4 o G
� kfrmID   `` a�b�a  ��c�
� 
docuc �dd  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacb �ee  b Z F 8 6 j q a s V M
� kfrmID   ff g�h�g  ��i�
� 
docui �jj  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCach �kk  f 8 S a i j N _ l T m
� kfrmID   ll m�n�m  ��o�
� 
docuo �pp  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacn �qq  e x B Z H B J s W p H
� kfrmID  	 rr s�t�s  ��u�
� 
docuu �vv  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCact �ww  h O D J A G C o p Y 8
� kfrmID  
 xx y�z�y  ��{�
� 
docu{ �||  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacz �}}  d W k D O f f d z g n
� kfrmID   ~~ ���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  e t 1 j T C U S - O t
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m u V B 2 _ _ _ h _ Y
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  n 2 9 c 4 R r r 4 k G
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  d p 9 I 2 v j B M W 0
� kfrmID   �� �����  ����~
� 
docu� ���  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac� ���  d p l j 6 4 X t d t 1
� kfrmID   �� ��}��|�  ��{��z
�{ 
docu� ���  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac� ���  i J e R z y T f 4 _ 3
�| kfrmID   �� ��y��x�  ��w��v
�w 
docu� ���  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac� ���  c _ A u w K 8 I b y s
�x kfrmID   �� ��u��t�  ��s��r
�s 
docu� ���  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac� ���  e 1 _ 8 n a - d Z y W
�t kfrmID   �� ��q��p�  ��o��n
�o 
docu� ���  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac� ���  i r d u t K o M k f R
�p kfrmID   �� ��m��l�  ��k��j
�k 
docu� ���  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac� ���  o L f X U x 9 6 Z m W
�l kfrmID   �� ��i��h�  ��g��f
�g 
docu� ���  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac� ���  e j I J J L z g E - R
�h kfrmID   �� ��e��d�  ��c��b
�c 
docu� ���  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac� ���  o 5 G u o F l W S s x
�d kfrmID   �� ��a��`�  ��_��^
�_ 
docu� ���  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac� ���  h 9 s a 5 I o Q 5 q q
�` kfrmID   �� ��]��\�  ��[��Z
�[ 
docu� ���  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac� ���  i m a P j e j d 2 V e
�\ kfrmID   �� ��Y��X�  ��W��V
�W 
docu� ���  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac� ���  g o c j 8 0 w H _ j 8
�X kfrmID   �� ��U��T�  ��S��R
�S 
docu� ���  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac� ���  l y n S P p l Q - j Y
�T kfrmID   �� ��Q��P�  ��O��N
�O 
docu� ���  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac� ���  f 5 K E K a C o f 0 X
�P kfrmID   �� ��M��L�  ��K��J
�K 
docu� ���  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac� ���  d A e Q 3 a 3 6 e d r
�L kfrmID   �� ��I��H�  ��G��F
�G 
docu� ���  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac� ���  o w G N K T u B D j R
�H kfrmID   �� ��E��D�  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac� ���  l t e S q Q 9 V 0 e 5
�D kfrmID   �� ��A��@�  ��?��>
�? 
docu� ���  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac� ���  b j 9 v D l v q 8 P K
�@ kfrmID    �� ��=��<�  ��;��:
�; 
docu� �    c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac� �  a K c R 5 x y q A w F
�< kfrmID  !  �9�8  ��7�6
�7 
docu �  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac �  c g M F l J Q 2 C _ f
�8 kfrmID  "  	�5
�4	  ��3�2
�3 
docu �  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac
 �  e 7 e E t E u 0 s 7 m
�4 kfrmID  #  �1�0  ��/�.
�/ 
docu �  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac �  j f J T I H p E 3 P p
�0 kfrmID  $  �-�,  ��+�*
�+ 
docu �  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac �  g Q 2 V O N 1 C A 3 X
�, kfrmID  %  �)�(  ��'�&
�' 
docu �  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac �  c D z M u f 6 j p 5 _
�( kfrmID  &    !�%"�$!  ��##�"
�# 
docu# �$$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac" �%%  g o 2 Y W 0 r n f W m
�$ kfrmID  ' && '�!(� '  ��)�
� 
docu) �**  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac( �++  l b z H 5 5 3 D E M 6
�  kfrmID  ( ,, -�.�-  ��/�
� 
docu/ �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac. �11  b U x _ C 4 V J O x B
� kfrmID  ) 22 3�4�3  ��5�
� 
docu5 �66  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4 �77  n Y Y 2 j b J B F _ O
� kfrmID  * 88 9�:�9  ��;�
� 
docu; �<<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac: �==  c 1 u C w d y w D 2 P
� kfrmID  + >> ?�@�?  ��A�
� 
docuA �BB  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac@ �CC  d H y k - _ o 8 V 7 V
� kfrmID  , DD E�F�E  ��G�

� 
docuG �HH  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCacF �II  o W r J 1 L Q h G 3 z
� kfrmID  - JJ K�	L�K  ��M�
� 
docuM �NN  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCacL �OO  m X 5 o 3 Z 4 x _ q b
� kfrmID  . PP Q�R�Q  ��S�
� 
docuS �TT  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacR �UU  e S l J e - 1 0 9 2 W
� kfrmID  / VV W�X� W  ���Y��
�� 
docuY �ZZ  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCacX �[[  e p 7 N x t 3 - S T c
�  kfrmID  0 \\ ]��^��]  ���_��
�� 
docu_ �``  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac^ �aa  m T 2 F N c E J N V w
�� kfrmID  1 bb c��d��c  ���e��
�� 
docue �ff  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacd �gg  d X h h S 5 x C - b e
�� kfrmID  2 hh i��j��i  ���k��
�� 
docuk �ll  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacj �mm  n Q X 7 3 9 K H 6 0 R
�� kfrmID  3 nn o��p��o  ���q��
�� 
docuq �rr  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacp �ss  n W l G 8 R n X Y O 6
�� kfrmID  4 tt u��v��u  ���w��
�� 
docuw �xx  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacv �yy  k j Y k 6 y T O - h R
�� kfrmID  5 zz {��|��{  ���}��
�� 
docu} �~~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac| �  l v Y k t 4 U h 2 L n
�� kfrmID  6 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  c 4 5 1 Y A H - M E 2
�� kfrmID  7 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  j b b n Y W d s s y 7
�� kfrmID  8 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  c 6 w S 5 K J B D h N
�� kfrmID  9 �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  i c u z O y 2 v Z u h
�� kfrmID  : �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  i O V i m x I g g C O
�� kfrmID  ; �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  d R v v c 1 - q Z u B
�� kfrmID  < �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  h e L h C 9 X - _ y M
�� kfrmID  = �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  j j j a q U C m e q 7
�� kfrmID  > �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  k l v 7 V 1 p h x R 4
�� kfrmID  ? �� �������  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac� ���  g O S K i o Q L o 3 7
�� kfrmID  @ �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  j 2 q j _ i G D c A B
� kfrmID  A �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  c X n _ u C P n G j T
� kfrmID  B �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m g c r K 1 z G N C u
� kfrmID  C �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  h 6 3 W a u Q N o v p
� kfrmID  D �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  l D W v O O J V n p 1
� kfrmID  E �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  o s W G N a V J Q n 3
� kfrmID  F �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  a g A L r Q l w R p B
� kfrmID  G �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  j w O 8 u 4 4 U g 4 F
� kfrmID  H �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  h 7 3 t N F y V b 5 d
� kfrmID  I �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  g J 5 o 5 s Q R W 6 1
� kfrmID  J �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  h n 1 d q f n g U a M
� kfrmID  K �� �� ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac  �  f p 5 o N _ c O C j c
� kfrmID  L  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �		  l F r B t q _ q 0 W r
� kfrmID  M 

 ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �  o A 1 i o p K F F j P
� kfrmID  N  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �  a V L 9 W L o W L d X
� kfrmID  O  ��  ���~
� 
docu �  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac �  c E P M t D t h L 7 d
� kfrmID  P  �}�|  ��{�z
�{ 
docu �    c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac �!!  a Y y o o z P S w Z Y
�| kfrmID  Q "" #�y$�x#  ��w%�v
�w 
docu% �&&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac$ �''  o k y t Q D 9 K s X -
�x kfrmID  R (( )�u*�t)  ��s+�r
�s 
docu+ �,,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac* �--  h E R f b i n 0 o J j
�t kfrmID  S .. /�q0�p/  ��o1�n
�o 
docu1 �22  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac0 �33  e J T f j 1 l R Y F v
�p kfrmID  T 44 5�m6�l5  ��k7�j
�k 
docu7 �88  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac6 �99  l 9 Q s T G k t 8 b K
�l kfrmID  U :: ;�i<�h;  ��g=�f
�g 
docu= �>>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac< �??  k W e _ R _ X P J 8 h
�h kfrmID  V @@ A�eB�dA  ��cC�b
�c 
docuC �DD  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCacB �EE  h J B y v D L a S d a
�d kfrmID  W FF G�aH�`G  ��_I�^
�_ 
docuI �JJ  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCacH �KK  j _ i m z 4 f n 8 1 G
�` kfrmID  X LL M�]N�\M  ��[O�Z
�[ 
docuO �PP  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCacN �QQ  e R Y Z G n D W A X -
�\ kfrmID  Y RR S�YT�XS  ��WU�V
�W 
docuU �VV  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCacT �WW  h 3 J 6 d J t j i 5 G
�X kfrmID  Z XX Y�UZ�TY  ��S[�R
�S 
docu[ �\\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCacZ �]]  l D - 5 D L Q N a m G
�T kfrmID  [ ^^ _�Q`�P_  ��Oa�N
�O 
docua �bb  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac` �cc  e 2 S o 1 8 7 q k l 1
�P kfrmID  \ dd e�Mf�Le  ��Kg�J
�K 
docug �hh  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCacf �ii  l Q T S Z F 0 t R v V
�L kfrmID  ] jj k�Il�Hk  ��Gm�F
�G 
docum �nn  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCacl �oo  f S U M N V u M m p z
�H kfrmID  ^ pp q�Er�Dq  ��Cs�B
�C 
docus �tt  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCacr �uu  d H X Y A h c v b k N
�D kfrmID  _ vv w�Ax�@w  ��?y�>
�? 
docuy �zz  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCacx �{{  l p 0 p q n s w B g O
�@ kfrmID  ` || }�=~�<}  ��;�:
�; 
docu ���  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac~ ���  k C d r - d s K e 6 I
�< kfrmID  a �� ��9��8�  ��7��6
�7 
docu� ���  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac� ���  g W 8 7 k N p K u 8 a
�8 kfrmID  b �� ��5��4�  ��3��2
�3 
docu� ���  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac� ���  o O M a o E 0 d Z s 9
�4 kfrmID  c �� ��1��0�  ��/��.
�/ 
docu� ���  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac� ���  o V h Z e 4 0 x 8 j E
�0 kfrmID  d �� ��-��,�  ��+��*
�+ 
docu� ���  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac� ���  k n C V 7 V F v e g v
�, kfrmID  e �� ��)��(�  ��'��&
�' 
docu� ���  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac� ���  i 6 5 D X N Z 4 D p j
�( kfrmID  f �� ��%��$�  ��#��"
�# 
docu� ���  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac� ���  i a 9 W Z Q N 9 3 V H
�$ kfrmID  g �� ��!�� �  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac� ���  f 6 y g c n 0 f I 6 9
�  kfrmID  h �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  b O 8 q t S z S _ O C
� kfrmID  i �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  o B G a m 7 a b 5 - r
� kfrmID  j �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  j r 3 J 8 D t P i H E
� kfrmID  k �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  b t D c z 8 t b r w 5
� kfrmID  l �� �����  ����

� 
docu� ���  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac� ���  h 4 t I y D l x c E j
� kfrmID  m �� ��	���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac� ���  e g 3 J L D M 9 Z N _
� kfrmID  n �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  j n b x q g 6 - R t e
� kfrmID  o �� ���� �  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac� ���  a g d H H U b 3 N A l
�  kfrmID  p �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  c n z t 0 Y k 9 9 o t
�� kfrmID  q �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  l X T y E D w M 2 x C
�� kfrmID  r �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  f c _ n p y 5 r B C Y
�� kfrmID  s �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  b 4 C e r _ O 2 l U p
�� kfrmID  t �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  o m M t w 5 l B c 4 4
�� kfrmID  u �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  b 4 w g w U q F c o 1
�� kfrmID  v    ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  a 9 k G N x D O 5 1 a
�� kfrmID  w  ����  ���	��
�� 
docu	 �

  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  g P k g U i k e R r e
�� kfrmID  x  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  c D Y d Q O C h R g H
�� kfrmID  y  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  d x N E N X T T W u x
�� kfrmID  z  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  g i 6 h E Q f C l V B
�� kfrmID  {  �� ��  ���!��
�� 
docu! �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac  �##  h Q 5 y C R n G M d 8
�� kfrmID  | $$ %��&��%  ���'��
�� 
docu' �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac& �))  c H D 4 f E Z P - V 8
�� kfrmID  } ** +��,��+  ���-��
�� 
docu- �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac, �//  m R Q J M g h F C a U
�� kfrmID  ~ 00 1��2��1  ���3��
�� 
docu3 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2 �55  p f i V H K e m X s o
�� kfrmID   66 7��8��7  ��9�
� 
docu9 �::  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac8 �;;  i s a D A B 6 3 A A s
�� kfrmID  � << =�>�=  ��?�
� 
docu? �@@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac> �AA  p 9 R u R j p a f W s
� kfrmID  � BB C�D�C  ��E�
� 
docuE �FF  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacD �GG  f _ z J q 5 D j 8 o G
� kfrmID  � HH I�J�I  ��K�
� 
docuK �LL  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacJ �MM  n N 4 H D 4 7 V L M y
� kfrmID  � NN O�P�O  ��Q�
� 
docuQ �RR  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacP �SS  i J A N 5 L M t a E H
� kfrmID  � TT U�V�U  ��W�
� 
docuW �XX  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacV �YY  h A P n J 4 V J 9 G W
� kfrmID  � ZZ [�\�[  ��]�
� 
docu] �^^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac\ �__  o W I N b Y 3 j P P n
� kfrmID  � `` a�b�a  ��c�
� 
docuc �dd  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacb �ee  e V A h F g L F X L B
� kfrmID  � ff g�h�g  ��i�
� 
docui �jj  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCach �kk  o Y w m v D g Y t r p
� kfrmID  � ll m�n�m  ��o�
� 
docuo �pp  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacn �qq  i Y a Z T 3 P N b 7 Z
� kfrmID  � rr s�t�s  ��u�
� 
docuu �vv  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCact �ww  b D g r i d D R 3 U a
� kfrmID  � xx y�z�y  ��{�
� 
docu{ �||  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacz �}}  b v m p 4 W I D M C 0
� kfrmID  � ~~ ���  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac� ���  h 7 L F F l W W n 9 B
� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  c x 0 8 h i q K K a 7
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  e C Z W y v W W z Y x
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  i - R x J s 1 O F I O
�� kfrmID  � �� �������  ����~
� 
docu� ���  c E S 1 6 A v c 6 U j
�~ kfrmID  
�� 
FCac� ���  j G t X T m A G U I M
�� kfrmID  � �� ��}��|�  ��{��z
�{ 
docu� ���  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac� ���  o v 4 q R A c 1 D 5 y
�| kfrmID  � �� ��y��x�  ��w��v
�w 
docu� ���  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac� ���  e c R o f o q f d s J
�x kfrmID  � �� ��u��t�  ��s��r
�s 
docu� ���  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac� ���  p V F _ U D K l 9 a H
�t kfrmID  � �� ��q��p�  ��o��n
�o 
docu� ���  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac� ���  l l 3 s 0 U V 6 y z e
�p kfrmID  � �� ��m��l�  ��k��j
�k 
docu� ���  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac� ���  f M 3 d 2 d 3 A 2 Y i
�l kfrmID  � �� ��i��h�  ��g��f
�g 
docu� ���  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac� ���  f e B i G a X L W j 1
�h kfrmID  � �� ��e��d�  ��c��b
�c 
docu� ���  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac� ���  a 5 X v K F S I a A d
�d kfrmID  � �� ��a��`�  ��_��^
�_ 
docu� ���  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac� ���  d J A v H D G m w 8 p
�` kfrmID  � �� ��]��\�  ��[��Z
�[ 
docu� ���  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac� ���  c l k W n r k u q A 5
�\ kfrmID  � �� ��Y��X�  ��W��V
�W 
docu� ���  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac� ���  m r 7 D 1 0 q H 7 _ W
�X kfrmID  � �� ��U��T�  ��S��R
�S 
docu� ���  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac� ���  d G 1 p K P b s s y m
�T kfrmID  � �� ��Q��P�  ��O��N
�O 
docu� ���  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac� ���  g j g q L 6 X 7 s y a
�P kfrmID  � �� ��M��L�  ��K��J
�K 
docu� ���  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac� ���  e z R d h u 3 4 d y d
�L kfrmID  � �� ��I��H�  ��G��F
�G 
docu� ���  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac� ���  g m Q r N A T F D j v
�H kfrmID  � �� ��E��D�  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac� ���  n w a 1 M O g O I a e
�D kfrmID  � �� ��A��@�  ��?��>
�? 
docu� ���  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac� ���  l A J Q g R V T M J O
�@ kfrmID  � �� ��=��<�  ��;��:
�; 
docu� �    c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac� �  c - r b a 8 V m W 1 T
�< kfrmID  �  �9�8  ��7�6
�7 
docu �  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac �  g Z Y e u n y h K m 5
�8 kfrmID  �  	�5
�4	  ��3�2
�3 
docu �  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac
 �  g _ 2 s 3 l 2 3 T i y
�4 kfrmID  �  �1�0  ��/�.
�/ 
docu �  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac �  n H F B 1 7 2 X M I H
�0 kfrmID  �  �-�,  ��+�*
�+ 
docu �  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac �  d 5 Y 9 W 5 a n f E F
�, kfrmID  �  �)�(  ��'�&
�' 
docu �  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac �  g 5 4 y F k L c R B f
�( kfrmID  �    !�%"�$!  ��##�"
�# 
docu# �$$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac" �%%  d U I o s 3 A c c j v
�$ kfrmID  � && '�!(� '  ��)�
� 
docu) �**  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac( �++  a G J v N R z T U 7 P
�  kfrmID  � ,, -�.�-  ��/�
� 
docu/ �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac. �11  h 3 q - S 3 x b p 2 z
� kfrmID  � 22 3�4�3  ��5�
� 
docu5 �66  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4 �77  l Y t W Z x O Y Q m p
� kfrmID  � 88 9�:�9  ��;�
� 
docu; �<<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac: �==  e E 3 i H O _ Y q b L
� kfrmID  � >> ?�@�?  ��A�
� 
docuA �BB  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac@ �CC  k B 9 s 8 B p P u S G
� kfrmID  � DD E�F�E  ��G�

� 
docuG �HH  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCacF �II  n J 3 p J 2 m r 2 J o
� kfrmID  � JJ K�	L�K  ��M�
� 
docuM �NN  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCacL �OO  j G d d r v Y l i Z i
� kfrmID  � PP Q�R�Q  ��S�
� 
docuS �TT  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacR �UU  d y e r o T j - y F 8
� kfrmID  � VV W�X� W  ���Y��
�� 
docuY �ZZ  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCacX �[[  d Z d r U 0 T d T i 2
�  kfrmID  � \\ ]��^��]  ���_��
�� 
docu_ �``  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac^ �aa  g q n 3 g m L v P Y h
�� kfrmID  � bb c��d��c  ���e��
�� 
docue �ff  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacd �gg  a S H W W B b D z a N
�� kfrmID  � hh i��j��i  ���k��
�� 
docuk �ll  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacj �mm  h b O v T Y a S 2 B f
�� kfrmID  � nn o��p��o  ���q��
�� 
docuq �rr  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacp �ss  b - c X l x B f 1 W 3
�� kfrmID  � tt u��v��u  ���w��
�� 
docuw �xx  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCacv �yy  b - b b O i p L - G t
�� kfrmID  � zz {��|��{  ���}��
�� 
docu} �~~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac| �  a a c M _ p E x O R w
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  h l B E y W V n Z w N
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  i q Z I v P U T R O Y
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  b k Q y L o r L 0 a x
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  e 3 x s f N Z u n k 6
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  d 6 3 i t y q a e K H
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  j U I 5 _ R k f i j r
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  k L G L t W W R M c r
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  h O J 6 Y i t _ _ e r
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  d O 4 R H d a U M o H
�� kfrmID  � �� �������  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac� ���  i x h 4 z R C J x d X
�� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  g R I G h p f N u b 7
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  h p u N a q b - S h q
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  p G _ 0 a O A s c B u
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  k C c Z L T _ i o e o
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  f S q U - S 2 h 1 V C
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  b D d 7 B 9 5 V K c -
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m F 3 D 1 u D O D - R
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m i l t g n 9 T q 4 c
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  o O v A T W h o y D P
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  i K 4 y 1 L n r N Q l
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  k 1 U 8 S E R R I - J
� kfrmID  � �� �� ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac  �  c 7 F A M r D K p Z v
� kfrmID  �  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �		  c C V l d q i Q Q E R
� kfrmID  � 

 ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �  e w 0 1 L A X q H G A
� kfrmID  �  ��  ���
� 
docu �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac �  j M e 4 Q g E f f f M
� kfrmID  �  ��  ���~
� 
docu �  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac �  o q 0 9 u 4 r 6 F n 2
� kfrmID  �  �}�|  ��{�z
�{ 
docu �    c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac �!!  g F U o 4 i q m Q - g
�| kfrmID  � "" #�y$�x#  ��w%�v
�w 
docu% �&&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac$ �''  o f - h p o C J B c B
�x kfrmID  � (( )�u*�t)  ��s+�r
�s 
docu+ �,,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac* �--  f S j I 7 s Z c 9 d 3
�t kfrmID  � .. /�q0�p/  ��o1�n
�o 
docu1 �22  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac0 �33  p v x - 8 T p g j I F
�p kfrmID  � 44 5�m6�l5  ��k7�j
�k 
docu7 �88  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac6 �99  k v G Z 9 i k _ 7 g e
�l kfrmID  � :: ;�i<�h;  ��g=�f
�g 
docu= �>>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac< �??  d y M G _ v 3 o 8 c L
�h kfrmID  � @@ A�eB�dA  ��cC�b
�c 
docuC �DD  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCacB �EE  p G Y d w H F i V L F
�d kfrmID  � FF G�aH�`G  ��_I�^
�_ 
docuI �JJ  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCacH �KK  d x _ d r x M 7 k 0 A
�` kfrmID  � LL M�]N�\M  ��[O�Z
�[ 
docuO �PP  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCacN �QQ  o t m l a 4 K Y F Z i
�\ kfrmID  � RR S�YT�XS  ��WU�V
�W 
docuU �VV  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCacT �WW  e q M X M s y D - w K
�X kfrmID  � XX Y�UZ�TY  ��S[�R
�S 
docu[ �\\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCacZ �]]  a i j 2 Y H w T I A q
�T kfrmID  � ^^ _�Q`�P_  ��Oa�N
�O 
docua �bb  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac` �cc  e X o r p 8 2 - B b -
�P kfrmID  � dd e�Mf�Le  ��Kg�J
�K 
docug �hh  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCacf �ii  e y T k l l w q T 7 o
�L kfrmID  � jj k�Il�Hk  ��Gm�F
�G 
docum �nn  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCacl �oo  f J Z B 9 G W n c j L
�H kfrmID  � pp q�Er�Dq  ��Cs�B
�C 
docus �tt  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCacr �uu  o 7 J 9 9 A 0 - F k 9
�D kfrmID  � vv w�Ax�@w  ��?y�>
�? 
docuy �zz  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCacx �{{  h c N 3 s m T R h u X
�@ kfrmID  � || }�=~�<}  ��;�:
�; 
docu ���  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac~ ���  a R V r d d E R 7 K F
�< kfrmID  � �� ��9��8�  ��7��6
�7 
docu� ���  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac� ���  f G K S X l - 5 j j 4
�8 kfrmID  � �� ��5��4�  ��3��2
�3 
docu� ���  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac� ���  o F a F 6 L A J I d U
�4 kfrmID  � �� ��1��0�  ��/��.
�/ 
docu� ���  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac� ���  o O 1 v u m f V t g Z
�0 kfrmID  � �� ��-��,�  ��+��*
�+ 
docu� ���  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac� ���  d 3 N G Z H K E 2 r E
�, kfrmID  � �� ��)��(�  ��'��&
�' 
docu� ���  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac� ���  g y 9 I F R W 5 a e p
�( kfrmID  � �� ��%��$�  ��#��"
�# 
docu� ���  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac� ���  p G i w h 3 8 j f G W
�$ kfrmID  � �� ��!�� �  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac� ���  l C D t Q 6 N z f Q r
�  kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  l G t 9 q k x u U O d
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  d g F W N Z O r N W t
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  p R b h b O u Q t R d
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m T z - O q e 3 M G X
� kfrmID  � �� �����  ����

� 
docu� ���  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac� ���  b q _ k L 2 e L O S -
� kfrmID  � �� ��	���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac� ���  a Y F 9 S o g X y h 2
� kfrmID  � �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  h S T Q f h u G f p i
� kfrmID  � �� ���� �  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac� ���  m g b d y e J q E T K
�  kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  d t n 1 I m D Y e n O
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  n p k x o h 0 r c n y
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  c 9 v U Y c H b 2 1 w
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  a V 7 c D 4 G n 3 G 4
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  b g w Z m o 5 c t c l
�� kfrmID  � �� �������  ������
�� 
docu� ���  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac� ���  l d y H 2 o N s q R T
�� kfrmID  �    ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  d D u l c h c D h 1 K
�� kfrmID  �  ����  ���	��
�� 
docu	 �

  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  n E E R c 6 V L L 1 U
�� kfrmID  �  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  m k D 6 K N 9 0 1 P p
�� kfrmID  �  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  d P t 9 E k 2 o 9 Y T
�� kfrmID  �  ����  �����
�� 
docu �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac �  k L l i - k 6 h t q 9
�� kfrmID  �  �� ��  ���!��
�� 
docu! �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac  �##  m 7 1 U T g a 1 _ G F
�� kfrmID  � $$ %��&��%  ���'��
�� 
docu' �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac& �))  h t D X U 1 Y n 5 q 2
�� kfrmID  � ** +��,��+  ���-��
�� 
docu- �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac, �//  a W 0 c E z J 1 W e X
�� kfrmID  � 00 1��2��1  ���3��
�� 
docu3 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2 �55  d R 9 k M q G l Y R s
�� kfrmID  � 66 7��8��7  ��9�
� 
docu9 �::  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac8 �;;  e w i Z 1 e J r W L x
�� kfrmID    << =�>�=  ��?�
� 
docu? �@@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac> �AA  d G 0 T K 8 i M K S y
� kfrmID   BB C�D�C  ��E�
� 
docuE �FF  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacD �GG  e I f V _ h 3 0 6 e k
� kfrmID   HH I�J�I  ��K�
� 
docuK �LL  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacJ �MM  e B X h X r u g c H H
� kfrmID   NN O�P�O  ��Q�
� 
docuQ �RR  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacP �SS  l 8 w o c A g e b i F
� kfrmID   TT U�V�U  ��W�
� 
docuW �XX  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacV �YY  e f E D l M 8 a y r 4
� kfrmID   ZZ [�\�[  ��]�
� 
docu] �^^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac\ �__  n T 0 E Y N 4 4 O M w
� kfrmID   `` a�b�a  ��c�
� 
docuc �dd  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacb �ee  m 8 1 e Q M 9 R 0 g U
� kfrmID   ff g�h�g  ��i�
� 
docui �jj  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCach �kk  o n s y u Y r x k t 5
� kfrmID   ll m�n�m  ��o�
� 
docuo �pp  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacn �qq  p 3 h 3 l T Q G G 4 V
� kfrmID  	 rr s�t�s  ��u�
� 
docuu �vv  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCact �ww  g Z M 2 a x m X P Z v
� kfrmID  
 xx y�z�y  ��{�
� 
docu{ �||  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCacz �}}  l W s D _ 2 I 4 v k v
� kfrmID   ~~ ���  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  m A 3 Y F 7 I L c I g
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  k r 6 E 9 i z k 2 2 T
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  b X A T A 0 W a W P O
� kfrmID   �� �����  ����
� 
docu� ���  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac� ���  l Z - N 3 O L o I - I
� kfrmID   �� �����  ����~
� 
docu� ���  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac� ���  a y b h 7 o n P S R W
� kfrmID   �� ��}��|�  ��{��z
�{ 
docu� ���  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac� ���  c c W S n s w l F l t
�| kfrmID   �� ��y��x�  ��w��v
�w 
docu� ���  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac� ���  f y h 0 V C 8 9 u D 2
�x kfrmID   �� ��u��t�  ��s��r
�s 
docu� ���  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac� ���  c q l 1 N j o u d E 2
�t kfrmID   �� ��q��p�  ��o��n
�o 
docu� ���  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac� ���  i w c S O 9 0 4 V O K
�p kfrmID   �� ��m��l�  ��k��j
�k 
docu� ���  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac� ���  h E p n 1 0 O L e n _
�l kfrmID   �� ��i��h�  ��g��f
�g 
docu� ���  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac� ���  o e N s 9 I C q J l d
�h kfrmID   �� ��e��d�  ��c��b
�c 
docu� ���  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac� ���  l b 4 U b d j 8 u 6 C
�d kfrmID   �� ��a��`�  ��_��^
�_ 
docu� ���  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac� ���  p 3 5 3 t b 8 A E i X
�` kfrmID   �� ��]��\�  ��[��Z
�[ 
docu� ���  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac� ���  m o W 0 O F 8 b q 3 T
�\ kfrmID   �� ��Y��X�  ��W��V
�W 
docu� ���  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac� ���  m v k R E c N P I d 2
�X kfrmID   �� ��U��T�  ��S��R
�S 
docu� ���  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac� ���  n J 2 e n G 4 1 M N 1
�T kfrmID   �� ��Q��P�  ��O��N
�O 
docu� ���  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac� ���  a q B S Z G f T c _ I
�P kfrmID   �� ��M��L�  ��K��J
�K 
docu� ���  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac� ���  f N f A g l E m T b 6
�L kfrmID   �� ��I��H�  ��G��F
�G 
docu� ���  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac� ���  f Q 1 n W n S 3 V 4 F
�H kfrmID   �� ��E��D�  ��C��B
�C 
docu� ���  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac� ���  k z J 6 z 9 W Q I 1 4
�D kfrmID   �� ��A��@�  ��?��>
�? 
docu� ���  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac� ���  i i 0 2 W - s E a v y
�@ kfrmID    �� ��=��<�  ��;��:
�; 
docu� �      c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac� �    i D b 4 P d T B q u K
�< kfrmID  !     �9 �8   ��7 �6
�7 
docu  �    c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac  �    f u X f C r H Q s d v
�8 kfrmID  "     	�5 
�4 	  ��3 �2
�3 
docu  �    c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac 
 �    j x a C A F e H p - X
�4 kfrmID  #     �1 �0   ��/ �.
�/ 
docu  �    c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac  �    e m E J r A e K V b q
�0 kfrmID  $     �- �,   ��+ �*
�+ 
docu  �    c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac  �    c o F l D 7 h r Q j J
�, kfrmID  %     �) �(   ��' �&
�' 
docu  �    c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac  �    a 4 x v t l n 3 D a w
�( kfrmID  &       !�% "�$ !  ��# #�"
�# 
docu # � $ $  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac " � % %  b j j 6 x F y 2 1 x H
�$ kfrmID  '  & &  '�! (�  '  �� )�
� 
docu ) � * *  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac ( � + +  e j 6 C 3 2 T k 3 v e
�  kfrmID  (  , ,  -� .� -  �� /�
� 
docu / � 0 0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac . � 1 1  h _ t t M p Y m J a f
� kfrmID  )  2 2  3� 4� 3  �� 5�
� 
docu 5 � 6 6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac 4 � 7 7  g Q 2 s g _ S g f z x
� kfrmID  *  8 8  9� :� 9  �� ;�
� 
docu ; � < <  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac : � = =  n Z x o S 2 M U m d G
� kfrmID  +  > >  ?� @� ?  �� A�
� 
docu A � B B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac @ � C C  k b q a B I 6 i W 8 N
� kfrmID  ,  D D  E� F� E  �� G�

� 
docu G � H H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac F � I I  o y l 4 U m U 3 F 8 v
� kfrmID  -  J J  K�	 L� K  �� M�
� 
docu M � N N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac L � O O  g k g 5 f t w h l w m
� kfrmID  .  P P  Q� R� Q  �� S�
� 
docu S � T T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac R � U U  p m u D U - z c 4 K C
� kfrmID  /  V V  W� X�  W  ��� Y��
�� 
docu Y � Z Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac X � [ [  m Z - D W G E k a K P
�  kfrmID  0  \ \  ]�� ^�� ]  ��� _��
�� 
docu _ � ` `  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac ^ � a a  g r I J Y f R 5 C e P
�� kfrmID  1  b b  c�� d�� c  ��� e��
�� 
docu e � f f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac d � g g  i n V k 5 i m 5 r R N
�� kfrmID  2  h h  i�� j�� i  ��� k��
�� 
docu k � l l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac j � m m  i U B z 5 e S P H R y
�� kfrmID  3  n n  o�� p�� o  ��� q��
�� 
docu q � r r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac p � s s  a F U 0 4 4 9 8 s 4 I
�� kfrmID  4  t t  u�� v�� u  ��� w��
�� 
docu w � x x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac v � y y  b z s 8 3 B N I b K x
�� kfrmID  5  z z  {�� |�� {  ��� }��
�� 
docu } � ~ ~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac | �    b f 9 h i _ U C i w y
�� kfrmID  6  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  b E T k k w U 1 B K C
�� kfrmID  7  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  m l 6 i W 0 Z O O T N
�� kfrmID  8  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  h n 1 p _ S 3 4 w g 8
�� kfrmID  9  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  m m F L Z l C m U E F
�� kfrmID  :  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  k c v y x u m p 9 F Z
�� kfrmID  ;  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  o B d Z E W k X Z 6 T
�� kfrmID  <  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  a s R 7 6 0 R 3 0 I a
�� kfrmID  =  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  p N v 8 L 7 6 S 0 G L
�� kfrmID  >  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  p c S R z i 2 u c 7 J
�� kfrmID  ?  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  f b l l c D W R i J Z
�� kfrmID  @  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  e _ n 1 a Z a 7 2 e A
�� kfrmID  A  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  d E n r i Y a b x B 5
�� kfrmID  B  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  e N S H f k 8 W w J y
�� kfrmID  C  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  j z l p g q J 4 _ j 2
�� kfrmID  D  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  g k 0 o h y T W h x p
�� kfrmID  E  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  f c R Z 2 Y X P t u e
�� kfrmID  F  � �  ��� ��� �  ��� ���
�� 
docu � � � �  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac � � � �  n r n _ C R H D Q i I
�� kfrmID  G  � �  ��� ��� �  �� ��
� 
docu � � � �  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac � � � �  l o 8 6 E S 9 W r h -
�� kfrmID  H  � �  �� �� �  �� ��
� 
docu � � � �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac � � � �  c C r x P V N B k O _
� kfrmID  I  � �  �� �� �  �� ��
� 
docu � � � �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac � � � �  j t Z d n M _ m N g j
� kfrmID  J  � �  �� �� �  �� ��
� 
docu � � � �  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac � � � �  j t u 4 C 3 A 8 E a t
� kfrmID  K  � �  ��! � �  ��!�
� 
docu! �!!  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!  �!!  e Y q 4 S A P P D 9 T
� kfrmID  L !! !�!�!  ��!�
� 
docu! �!!  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac! �!	!	  j X 7 t x Y Y U u B F
� kfrmID  M !
!
 !�!�!  ��!�
� 
docu! �!!  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac! �!!  j M H m Z p _ a z C D
� kfrmID  N !! !�!�!  ��!�
� 
docu! �!!  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac! �!!  m r o x Z R Z 7 M Z y
� kfrmID  O !! !�!�!  ��!�~
� 
docu! �!!  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac! �!!  k b 9 k Z 1 6 V i n 0
� kfrmID  P !! !�}!�|!  ��{!�z
�{ 
docu! �! !   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac! �!!!!  i b 1 s K Y T S H t U
�| kfrmID  Q !"!" !#�y!$�x!#  ��w!%�v
�w 
docu!% �!&!&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac!$ �!'!'  p 0 s E Z z 2 t h P U
�x kfrmID  R !(!( !)�u!*�t!)  ��s!+�r
�s 
docu!+ �!,!,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac!* �!-!-  i A c v o F t D 5 n F
�t kfrmID  S !.!. !/�q!0�p!/  ��o!1�n
�o 
docu!1 �!2!2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac!0 �!3!3  j - T 5 x r c I j f a
�p kfrmID  T !4!4 !5�m!6�l!5  ��k!7�j
�k 
docu!7 �!8!8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac!6 �!9!9  b a - 8 I l s E u V Z
�l kfrmID  U !:!: !;�i!<�h!;  ��g!=�f
�g 
docu!= �!>!>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac!< �!?!?  h - N O F u 7 4 - 8 4
�h kfrmID  V !@!@ !A�e!B�d!A  ��c!C�b
�c 
docu!C �!D!D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac!B �!E!E  b I o P P j R w Q A D
�d kfrmID  W !F!F !G�a!H�`!G  ��_!I�^
�_ 
docu!I �!J!J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac!H �!K!K  k b F i h 4 k r O 3 r
�` kfrmID  X !L!L !M�]!N�\!M  ��[!O�Z
�[ 
docu!O �!P!P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac!N �!Q!Q  l p o R s X V V D H 0
�\ kfrmID  Y !R!R !S�Y!T�X!S  ��W!U�V
�W 
docu!U �!V!V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac!T �!W!W  m R 5 G 5 O w x m D 5
�X kfrmID  Z !X!X !Y�U!Z�T!Y  ��S![�R
�S 
docu![ �!\!\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac!Z �!]!]  o C H n C 9 m 6 9 _ J
�T kfrmID  [ !^!^ !_�Q!`�P!_  ��O!a�N
�O 
docu!a �!b!b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac!` �!c!c  c K b W C G J b R q I
�P kfrmID  \ !d!d !e�M!f�L!e  ��K!g�J
�K 
docu!g �!h!h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac!f �!i!i  g N h j U d _ S 2 t 9
�L kfrmID  ] !j!j !k�I!l�H!k  ��G!m�F
�G 
docu!m �!n!n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac!l �!o!o  i F 9 p 4 k C A M Y q
�H kfrmID  ^ !p!p !q�E!r�D!q  ��C!s�B
�C 
docu!s �!t!t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac!r �!u!u  a r l 3 3 d o A n U F
�D kfrmID  _ !v!v !w�A!x�@!w  ��?!y�>
�? 
docu!y �!z!z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac!x �!{!{  e I R L L x w q d C x
�@ kfrmID  ` !|!| !}�=!~�<!}  ��;!�:
�; 
docu! �!�!�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac!~ �!�!�  j J l I f Y _ g 2 C M
�< kfrmID  a !�!� !��9!��8!�  ��7!��6
�7 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac!� �!�!�  j L 7 Q G x 4 K 9 4 n
�8 kfrmID  b !�!� !��5!��4!�  ��3!��2
�3 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac!� �!�!�  e p C D M l A Z A V X
�4 kfrmID  c !�!� !��1!��0!�  ��/!��.
�/ 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac!� �!�!�  j 2 V q N v 5 i U R G
�0 kfrmID  d !�!� !��-!��,!�  ��+!��*
�+ 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac!� �!�!�  p 2 B M 4 U h j W i o
�, kfrmID  e !�!� !��)!��(!�  ��'!��&
�' 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac!� �!�!�  d P Z M J M Z U x l g
�( kfrmID  f !�!� !��%!��$!�  ��#!��"
�# 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac!� �!�!�  a c H y Y A f a P 0 M
�$ kfrmID  g !�!� !��!!�� !�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac!� �!�!�  a 2 W O w 1 j b U j N
�  kfrmID  h !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!� �!�!�  k K v k 5 I u V s B O
� kfrmID  i !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!� �!�!�  c v 8 A 3 R s l q 1 Z
� kfrmID  j !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!� �!�!�  g 5 7 s 5 q i i 3 N K
� kfrmID  k !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!� �!�!�  i s O - v r L m I 9 R
� kfrmID  l !�!� !��!��!�  ��!��

� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac!� �!�!�  n k V K J r T J m 1 R
� kfrmID  m !�!� !��	!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac!� �!�!�  m - B T L J M z q 8 z
� kfrmID  n !�!� !��!��!�  ��!��
� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac!� �!�!�  m h f q d c B b y T Y
� kfrmID  o !�!� !��!�� !�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac!� �!�!�  b J H b A B C f Y 7 u
�  kfrmID  p !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  g W D 5 M N L k N M B
�� kfrmID  q !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  e G W s z h X N l j I
�� kfrmID  r !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  j 3 C C I 4 N H I d k
�� kfrmID  s !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  h e 2 9 - 4 o - Q q t
�� kfrmID  t !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  l O 2 y h F 0 m 7 e O
�� kfrmID  u !�!� !���!���!�  ���!���
�� 
docu!� �!�!�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac!� �!�!�  i s 0 Z k F m K g b Q
�� kfrmID  v " "  "��"��"  ���"��
�� 
docu" �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac" �""  k 9 8 Z _ B D Z G 7 Q
�� kfrmID  w "" "��"��"  ���"	��
�� 
docu"	 �"
"
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac" �""  k j x b Z s o E O 0 C
�� kfrmID  x "" "��"��"  ���"��
�� 
docu" �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac" �""  b D A 8 i j l n j U D
�� kfrmID  y "" "��"��"  ���"��
�� 
docu" �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac" �""  m E 0 C H - M 6 _ p H
�� kfrmID  z "" "��"��"  ���"��
�� 
docu" �""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac" �""  d S z H T u t V m 6 c
�� kfrmID  { "" "��" ��"  ���"!��
�� 
docu"! �""""  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac"  �"#"#  f y V 7 R A A Q h S c
�� kfrmID  | "$"$ "%��"&��"%  ���"'��
�� 
docu"' �"("(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac"& �")")  e n F l M u y B C j h
�� kfrmID  } "*"* "+��",��"+  ���"-��
�� 
docu"- �".".  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac", �"/"/  p g j g E 3 T Z s C j
�� kfrmID  ~ "0"0 "1��"2��"1  ���"3��
�� 
docu"3 �"4"4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac"2 �"5"5  p r F x 7 2 L B e e m
�� kfrmID   "6"6 "7��"8��"7  ��"9�
� 
docu"9 �":":  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac"8 �";";  g I w _ t c A 8 p L A
�� kfrmID  � "<"< "=�">�"=  ��"?�
� 
docu"? �"@"@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"> �"A"A  f L h 6 W t Z R c l 4
� kfrmID  � "B"B "C�"D�"C  ��"E�
� 
docu"E �"F"F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"D �"G"G  l R 7 e I v G k V a 8
� kfrmID  � "H"H "I�"J�"I  ��"K�
� 
docu"K �"L"L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"J �"M"M  i H R z Y H j i g p y
� kfrmID  � "N"N "O�"P�"O  ��"Q�
� 
docu"Q �"R"R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"P �"S"S  f Y 7 L z T 8 h g 3 -
� kfrmID  � "T"T "U�"V�"U  ��"W�
� 
docu"W �"X"X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"V �"Y"Y  m I e 5 Y 6 Q 0 a w m
� kfrmID  � "Z"Z "[�"\�"[  ��"]�
� 
docu"] �"^"^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"\ �"_"_  c O z V m n q E h 9 5
� kfrmID  � "`"` "a�"b�"a  ��"c�
� 
docu"c �"d"d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"b �"e"e  j - 7 U V C _ d s 7 F
� kfrmID  � "f"f "g�"h�"g  ��"i�
� 
docu"i �"j"j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"h �"k"k  m V 5 O C r 5 8 L 9 8
� kfrmID  � "l"l "m�"n�"m  ��"o�
� 
docu"o �"p"p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"n �"q"q  i 7 E a 1 I b H c u z
� kfrmID  � "r"r "s�"t�"s  ��"u�
� 
docu"u �"v"v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"t �"w"w  p t f m z i V Q y n i
� kfrmID  � "x"x "y�"z�"y  ��"{�
� 
docu"{ �"|"|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"z �"}"}  c w e c n T v S y H k
� kfrmID  � "~"~ "�"��"  ��"��
� 
docu"� �"�"�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"� �"�"�  p 1 w G f 9 t g b 9 -
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"� �"�"�  e I Z x r j A 2 - F J
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"� �"�"�  e G S j o z F X 5 u l
� kfrmID  � "�"� "��"��"�  ��"��
� 
docu"� �"�"�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac"� �"�"�  c d n J X Y C o 8 r v
� kfrmID  � "�"� "��"��"�  ��"��~
� 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac"� �"�"�  b Z v F 8 i Z S C Z 3
� kfrmID  � "�"� "��}"��|"�  ��{"��z
�{ 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac"� �"�"�  p T _ q w H U d 2 d M
�| kfrmID  � "�"� "��y"��x"�  ��w"��v
�w 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac"� �"�"�  d Y 7 a G b 7 2 d C 5
�x kfrmID  � "�"� "��u"��t"�  ��s"��r
�s 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac"� �"�"�  j 9 X z f r 5 F p W i
�t kfrmID  � "�"� "��q"��p"�  ��o"��n
�o 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac"� �"�"�  p L A l 2 H i 7 j h J
�p kfrmID  � "�"� "��m"��l"�  ��k"��j
�k 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac"� �"�"�  c C _ c J x R T B p 1
�l kfrmID  � "�"� "��i"��h"�  ��g"��f
�g 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac"� �"�"�  n v U _ A C i C v Z O
�h kfrmID  � "�"� "��e"��d"�  ��c"��b
�c 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac"� �"�"�  c 7 g X W B Q e 6 7 E
�d kfrmID  � "�"� "��a"��`"�  ��_"��^
�_ 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac"� �"�"�  c I r J U N l M a k -
�` kfrmID  � "�"� "��]"��\"�  ��["��Z
�[ 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac"� �"�"�  j _ u i m J L F b R m
�\ kfrmID  � "�"� "��Y"��X"�  ��W"��V
�W 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac"� �"�"�  a O T _ k l I s N S 6
�X kfrmID  � "�"� "��U"��T"�  ��S"��R
�S 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac"� �"�"�  n k A 8 H - - O G 8 W
�T kfrmID  � "�"� "��Q"��P"�  ��O"��N
�O 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac"� �"�"�  j O 2 s U W F y Q I 5
�P kfrmID  � "�"� "��M"��L"�  ��K"��J
�K 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac"� �"�"�  g L U h p D 5 j A i c
�L kfrmID  � "�"� "��I"��H"�  ��G"��F
�G 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac"� �"�"�  p c U S D E q 1 u w a
�H kfrmID  � "�"� "��E"��D"�  ��C"��B
�C 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac"� �"�"�  g Z y l i N S A 1 x U
�D kfrmID  � "�"� "��A"��@"�  ��?"��>
�? 
docu"� �"�"�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac"� �"�"�  a o 1 w 2 I k F p _ L
�@ kfrmID  � "�"� "��="��<"�  ��;"��:
�; 
docu"� �# #   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac"� �##  g n E M Z D t B W q 2
�< kfrmID  � ## #�9#�8#  ��7#�6
�7 
docu# �##  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac# �##  i a 4 f d A d 5 z N 8
�8 kfrmID  � ## #	�5#
�4#	  ��3#�2
�3 
docu# �##  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac#
 �##  m 8 D Z K 3 e M b B q
�4 kfrmID  � ## #�1#�0#  ��/#�.
�/ 
docu# �##  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac# �##  b H c 8 U v P S K s a
�0 kfrmID  � ## #�-#�,#  ��+#�*
�+ 
docu# �##  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac# �##  o Y p 5 t _ W d b i p
�, kfrmID  � ## #�)#�(#  ��'#�&
�' 
docu# �##  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac# �##  c L s j Q a k i h L b
�( kfrmID  � # #  #!�%#"�$#!  ��###�"
�# 
docu## �#$#$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac#" �#%#%  m c b R t e t K q w h
�$ kfrmID  � #&#& #'�!#(� #'  ��#)�
� 
docu#) �#*#*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac#( �#+#+  g j s X E W Y m b j t
�  kfrmID  � #,#, #-�#.�#-  ��#/�
� 
docu#/ �#0#0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#. �#1#1  e P W l m n I D U x V
� kfrmID  � #2#2 #3�#4�#3  ��#5�
� 
docu#5 �#6#6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#4 �#7#7  a j Z X a q m p n z T
� kfrmID  � #8#8 #9�#:�#9  ��#;�
� 
docu#; �#<#<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#: �#=#=  g q R 4 7 2 V z Z h V
� kfrmID  � #>#> #?�#@�#?  ��#A�
� 
docu#A �#B#B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#@ �#C#C  b 0 Q L f C p c D Z o
� kfrmID  � #D#D #E�#F�#E  ��#G�

� 
docu#G �#H#H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac#F �#I#I  a N g d v _ W c O v v
� kfrmID  � #J#J #K�	#L�#K  ��#M�
� 
docu#M �#N#N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac#L �#O#O  n u e H e e 2 m c l p
� kfrmID  � #P#P #Q�#R�#Q  ��#S�
� 
docu#S �#T#T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#R �#U#U  o 9 f W N M - m r R S
� kfrmID  � #V#V #W�#X� #W  ���#Y��
�� 
docu#Y �#Z#Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac#X �#[#[  n z e m - r 6 r 1 U r
�  kfrmID  � #\#\ #]��#^��#]  ���#_��
�� 
docu#_ �#`#`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#^ �#a#a  o 0 f K 7 x M p T l R
�� kfrmID  � #b#b #c��#d��#c  ���#e��
�� 
docu#e �#f#f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#d �#g#g  p D u H K 5 Y G - s L
�� kfrmID  � #h#h #i��#j��#i  ���#k��
�� 
docu#k �#l#l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#j �#m#m  k B S Y 2 E k L d q G
�� kfrmID  � #n#n #o��#p��#o  ���#q��
�� 
docu#q �#r#r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#p �#s#s  d K j I X r I C Y d g
�� kfrmID  � #t#t #u��#v��#u  ���#w��
�� 
docu#w �#x#x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#v �#y#y  f W s 0 Y 9 G o R p -
�� kfrmID  � #z#z #{��#|��#{  ���#}��
�� 
docu#} �#~#~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#| �##  i m S G J A T a 8 I 8
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  e j w Q G u o Y q U 3
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  i A Z W z 6 B G G N K
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  f D j N O s R y Y _ m
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  e n x z 2 j N G o 0 F
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  i J G w K i c E G o s
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  m j P g 8 v n T r E 3
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  p 6 p w O T m r h d Q
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  h e n a x x G D g 9 z
�� kfrmID  � #�#� #���#���#�  ���#���
�� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac#� �#�#�  b M Q j M g g c N 6 i
�� kfrmID  � #�#� #���#���#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac#� �#�#�  l r s w V 2 H s M i x
�� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  f 2 T V W q 9 T N b L
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  c x t a I J p I w e s
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  b y 6 f r t P 8 V v 9
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  p O L x a N T H o j 4
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  f 0 p 3 q s 5 C 1 S I
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  m R 9 S 7 I Z h F T F
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  j a H P z d g V z j v
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  f Z p N k f L V Y a q
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  b w 6 R - B W b u V S
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  a 8 J Z S K N r 3 t l
� kfrmID  � #�#� #��#��#�  ��#��
� 
docu#� �#�#�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac#� �#�#�  n z A g E a f T N H O
� kfrmID  � #�#� #��$ �#�  ��$�
� 
docu$ �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$  �$$  j b B a G a a H Q X Y
� kfrmID  � $$ $�$�$  ��$�
� 
docu$ �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$ �$	$	  h N H 8 x a T 7 3 N w
� kfrmID  � $
$
 $�$�$  ��$�
� 
docu$ �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$ �$$  b 9 e K l x U i f i 6
� kfrmID  � $$ $�$�$  ��$�
� 
docu$ �$$  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$ �$$  l c t t D m L S J 3 j
� kfrmID  � $$ $�$�$  ��$�~
� 
docu$ �$$  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac$ �$$  c q F 1 J T x 6 M c y
� kfrmID  � $$ $�}$�|$  ��{$�z
�{ 
docu$ �$ $   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac$ �$!$!  d u w 5 e F q w y z u
�| kfrmID  � $"$" $#�y$$�x$#  ��w$%�v
�w 
docu$% �$&$&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac$$ �$'$'  n C Y _ g I K Z g v y
�x kfrmID  � $($( $)�u$*�t$)  ��s$+�r
�s 
docu$+ �$,$,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac$* �$-$-  f d w c H B U 8 H F 0
�t kfrmID  � $.$. $/�q$0�p$/  ��o$1�n
�o 
docu$1 �$2$2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac$0 �$3$3  e Y g b O 0 S K 5 9 S
�p kfrmID  � $4$4 $5�m$6�l$5  ��k$7�j
�k 
docu$7 �$8$8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac$6 �$9$9  k m 9 4 - 1 f 4 1 u v
�l kfrmID  � $:$: $;�i$<�h$;  ��g$=�f
�g 
docu$= �$>$>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac$< �$?$?  j j v e 2 - h Z d k W
�h kfrmID  � $@$@ $A�e$B�d$A  ��c$C�b
�c 
docu$C �$D$D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac$B �$E$E  a n m w n U k M V s g
�d kfrmID  � $F$F $G�a$H�`$G  ��_$I�^
�_ 
docu$I �$J$J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac$H �$K$K  k L s l y h _ B g X 4
�` kfrmID  � $L$L $M�]$N�\$M  ��[$O�Z
�[ 
docu$O �$P$P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac$N �$Q$Q  e u u q 6 t S a R N G
�\ kfrmID  � $R$R $S�Y$T�X$S  ��W$U�V
�W 
docu$U �$V$V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac$T �$W$W  l p B 3 8 V s H K D l
�X kfrmID  � $X$X $Y�U$Z�T$Y  ��S$[�R
�S 
docu$[ �$\$\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac$Z �$]$]  o l k 3 _ g h i 1 J g
�T kfrmID  � $^$^ $_�Q$`�P$_  ��O$a�N
�O 
docu$a �$b$b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac$` �$c$c  b g N n A o G B W R Z
�P kfrmID  � $d$d $e�M$f�L$e  ��K$g�J
�K 
docu$g �$h$h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac$f �$i$i  f L T Y m m I O O K X
�L kfrmID  � $j$j $k�I$l�H$k  ��G$m�F
�G 
docu$m �$n$n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac$l �$o$o  d S B o R G i z P r t
�H kfrmID  � $p$p $q�E$r�D$q  ��C$s�B
�C 
docu$s �$t$t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac$r �$u$u  n y x T o 0 y b 2 R c
�D kfrmID  � $v$v $w�A$x�@$w  ��?$y�>
�? 
docu$y �$z$z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac$x �${${  k U 2 F _ D I S A v Q
�@ kfrmID  � $|$| $}�=$~�<$}  ��;$�:
�; 
docu$ �$�$�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac$~ �$�$�  k J 6 8 2 n D 7 I h D
�< kfrmID  � $�$� $��9$��8$�  ��7$��6
�7 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac$� �$�$�  g 1 q j B q T G o U C
�8 kfrmID  � $�$� $��5$��4$�  ��3$��2
�3 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac$� �$�$�  n B _ 6 t r f v v g J
�4 kfrmID  � $�$� $��1$��0$�  ��/$��.
�/ 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac$� �$�$�  g m i 3 x B p c E l S
�0 kfrmID  � $�$� $��-$��,$�  ��+$��*
�+ 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac$� �$�$�  p J 8 S 8 Q S Z Q N m
�, kfrmID  � $�$� $��)$��($�  ��'$��&
�' 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac$� �$�$�  o G v t P _ y u J 2 M
�( kfrmID  � $�$� $��%$��$$�  ��#$��"
�# 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac$� �$�$�  f R o S y 4 4 L n O h
�$ kfrmID  � $�$� $��!$�� $�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac$� �$�$�  p s n x 8 9 p 7 2 r -
�  kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$� �$�$�  d W M i a H 6 A i Y a
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$� �$�$�  g f g c p 4 t H E 9 W
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$� �$�$�  n p _ P W B m g B x x
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$� �$�$�  a l M Q b o F D T s p
� kfrmID  � $�$� $��$��$�  ��$��

� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac$� �$�$�  a - a X f x 8 M - D _
� kfrmID  � $�$� $��	$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac$� �$�$�  m m w q O O B f x X m
� kfrmID  � $�$� $��$��$�  ��$��
� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac$� �$�$�  d G m 3 D q S H j 7 E
� kfrmID  � $�$� $��$�� $�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac$� �$�$�  f E T p M x N C k M C
�  kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  b q 8 b 0 E Q R y I O
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  c J 8 V h e E n J b X
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  f h 7 5 p b t M O C m
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  h r g D I T M B I L E
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  a V t 1 C J C U A b 3
�� kfrmID  � $�$� $���$���$�  ���$���
�� 
docu$� �$�$�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac$� �$�$�  f x N C I s _ 7 j X V
�� kfrmID  � % %  %��%��%  ���%��
�� 
docu% �%%  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac% �%%  c l S D C n A v 7 2 M
�� kfrmID  � %% %��%��%  ���%	��
�� 
docu%	 �%
%
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac% �%%  e p F q K - O z F o 9
�� kfrmID  � %% %��%��%  ���%��
�� 
docu% �%%  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac% �%%  j l F u d 9 G m S A 6
�� kfrmID  � %% %��%��%  ���%��
�� 
docu% �%%  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac% �%%  h R z E x m o a O Z 4
�� kfrmID  � %% %��%��%  ���%��
�� 
docu% �%%  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac% �%%  b M P A z W f 7 R 4 G
�� kfrmID  � %% %��% ��%  ���%!��
�� 
docu%! �%"%"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac%  �%#%#  e z x K i P g I F a -
�� kfrmID  � %$%$ %%��%&��%%  ���%'��
�� 
docu%' �%(%(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac%& �%)%)  c u R k - Y J G c k q
�� kfrmID  � %*%* %+��%,��%+  ���%-��
�� 
docu%- �%.%.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac%, �%/%/  l Z k b r B 1 8 1 i a
�� kfrmID  � %0%0 %1��%2��%1  ���%3��
�� 
docu%3 �%4%4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac%2 �%5%5  b 8 R m 4 U O H Q b s
�� kfrmID  � %6%6 %7��%8��%7  ��%9�
� 
docu%9 �%:%:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac%8 �%;%;  i H x h A W S v u s n
�� kfrmID    %<%< %=�%>�%=  ��%?�
� 
docu%? �%@%@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%> �%A%A  e 6 c C 5 f - H t u x
� kfrmID   %B%B %C�%D�%C  ��%E�
� 
docu%E �%F%F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%D �%G%G  m Z P n H D 1 s 3 T p
� kfrmID   %H%H %I�%J�%I  ��%K�
� 
docu%K �%L%L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%J �%M%M  e q W _ Q Y Z c c i L
� kfrmID   %N%N %O�%P�%O  ��%Q�
� 
docu%Q �%R%R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%P �%S%S  g o c y z 4 s 6 t o a
� kfrmID   %T%T %U�%V�%U  ��%W�
� 
docu%W �%X%X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%V �%Y%Y  a _ b D C j C y F I m
� kfrmID   %Z%Z %[�%\�%[  ��%]�
� 
docu%] �%^%^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%\ �%_%_  g M Y Z v N M 6 Z p o
� kfrmID   %`%` %a�%b�%a  ��%c�
� 
docu%c �%d%d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%b �%e%e  o d z J u r h E e q 7
� kfrmID   %f%f %g�%h�%g  ��%i�
� 
docu%i �%j%j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%h �%k%k  b O D l p u _ D Z B f
� kfrmID   %l%l %m�%n�%m  ��%o�
� 
docu%o �%p%p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%n �%q%q  g Q V o 0 - 1 e a A N
� kfrmID  	 %r%r %s�%t�%s  ��%u�
� 
docu%u �%v%v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%t �%w%w  j 4 x r 2 i k p m r E
� kfrmID  
 %x%x %y�%z�%y  ��%{�
� 
docu%{ �%|%|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%z �%}%}  d x f M w q D F D E 3
� kfrmID   %~%~ %�%��%  ��%��
� 
docu%� �%�%�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%� �%�%�  l 8 5 4 w E C _ - A S
� kfrmID   %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%� �%�%�  k Z w A 5 I 4 J J 9 W
� kfrmID   %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%� �%�%�  m 4 9 t v 3 W Q d H b
� kfrmID   %�%� %��%��%�  ��%��
� 
docu%� �%�%�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac%� �%�%�  o b l j x e d h k C n
� kfrmID   %�%� %��%��%�  ��%��~
� 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac%� �%�%�  b G X C n - K D l p M
� kfrmID   %�%� %��}%��|%�  ��{%��z
�{ 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac%� �%�%�  p z G m 7 K y T a n 7
�| kfrmID   %�%� %��y%��x%�  ��w%��v
�w 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac%� �%�%�  m i 9 P u S W Y Z 0 J
�x kfrmID   %�%� %��u%��t%�  ��s%��r
�s 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac%� �%�%�  g q R H t r 2 L 2 i h
�t kfrmID   %�%� %��q%��p%�  ��o%��n
�o 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac%� �%�%�  m S h G K m S v k o a
�p kfrmID   %�%� %��m%��l%�  ��k%��j
�k 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac%� �%�%�  f P I C O K N C s s 1
�l kfrmID   %�%� %��i%��h%�  ��g%��f
�g 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac%� �%�%�  j Z j G i f O K a 0 M
�h kfrmID   %�%� %��e%��d%�  ��c%��b
�c 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac%� �%�%�  c 2 N j 8 0 e i o T p
�d kfrmID   %�%� %��a%��`%�  ��_%��^
�_ 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac%� �%�%�  o n R h p l G L 8 H o
�` kfrmID   %�%� %��]%��\%�  ��[%��Z
�[ 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac%� �%�%�  d X x Y X 1 s k e 5 1
�\ kfrmID   %�%� %��Y%��X%�  ��W%��V
�W 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac%� �%�%�  i c - 1 y 1 e u m B n
�X kfrmID   %�%� %��U%��T%�  ��S%��R
�S 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac%� �%�%�  p S M Y v w w 9 v R O
�T kfrmID   %�%� %��Q%��P%�  ��O%��N
�O 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac%� �%�%�  j g H b j F z G u J H
�P kfrmID   %�%� %��M%��L%�  ��K%��J
�K 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac%� �%�%�  c 5 k u Q m P B M i K
�L kfrmID   %�%� %��I%��H%�  ��G%��F
�G 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac%� �%�%�  m n z 2 H h 7 2 C x J
�H kfrmID   %�%� %��E%��D%�  ��C%��B
�C 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac%� �%�%�  a C L t B d 2 r T V 6
�D kfrmID   %�%� %��A%��@%�  ��?%��>
�? 
docu%� �%�%�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac%� �%�%�  j H x _ s d m e 4 H 9
�@ kfrmID    %�%� %��=%��<%�  ��;%��:
�; 
docu%� �& &   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac%� �&&  i _ B M 3 A X - D c c
�< kfrmID  ! && &�9&�8&  ��7&�6
�7 
docu& �&&  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac& �&&  i E A m q - E r T U 0
�8 kfrmID  " && &	�5&
�4&	  ��3&�2
�3 
docu& �&&  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac&
 �&&  h p o y b I S - P C _
�4 kfrmID  # && &�1&�0&  ��/&�.
�/ 
docu& �&&  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac& �&&  p a P I e H 0 L o x n
�0 kfrmID  $ && &�-&�,&  ��+&�*
�+ 
docu& �&&  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac& �&&  n 8 4 t 0 K R 6 c y _
�, kfrmID  % && &�)&�(&  ��'&�&
�' 
docu& �&&  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac& �&&  j s f K a X p c I 9 Q
�( kfrmID  & & &  &!�%&"�$&!  ��#&#�"
�# 
docu&# �&$&$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac&" �&%&%  f S w - z t c 7 c X a
�$ kfrmID  ' &&&& &'�!&(� &'  ��&)�
� 
docu&) �&*&*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac&( �&+&+  e s c 0 L H d O J I _
�  kfrmID  ( &,&, &-�&.�&-  ��&/�
� 
docu&/ �&0&0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&. �&1&1  l M v o L b p _ A o A
� kfrmID  ) &2&2 &3�&4�&3  ��&5�
� 
docu&5 �&6&6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&4 �&7&7  e G K D D A z 3 G d g
� kfrmID  * &8&8 &9�&:�&9  ��&;�
� 
docu&; �&<&<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&: �&=&=  p K F 5 U V Z Q J S E
� kfrmID  + &>&> &?�&@�&?  ��&A�
� 
docu&A �&B&B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&@ �&C&C  e S z p I o N 4 C r L
� kfrmID  , &D&D &E�&F�&E  ��&G�

� 
docu&G �&H&H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac&F �&I&I  j x g v A H o 0 7 I Y
� kfrmID  - &J&J &K�	&L�&K  ��&M�
� 
docu&M �&N&N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac&L �&O&O  h c o 0 y Y m Q E 3 t
� kfrmID  . &P&P &Q�&R�&Q  ��&S�
� 
docu&S �&T&T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&R �&U&U  k o 7 T q q Z q s y 6
� kfrmID  / &V&V &W�&X� &W  ���&Y��
�� 
docu&Y �&Z&Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac&X �&[&[  p b I N J 8 M m o N B
�  kfrmID  0 &\&\ &]��&^��&]  ���&_��
�� 
docu&_ �&`&`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&^ �&a&a  o F S b n B e O B s 9
�� kfrmID  1 &b&b &c��&d��&c  ���&e��
�� 
docu&e �&f&f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&d �&g&g  b S K - C f q G K 7 d
�� kfrmID  2 &h&h &i��&j��&i  ���&k��
�� 
docu&k �&l&l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&j �&m&m  m 5 B t b B S A 8 B v
�� kfrmID  3 &n&n &o��&p��&o  ���&q��
�� 
docu&q �&r&r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&p �&s&s  h C F p a Q Q C p - g
�� kfrmID  4 &t&t &u��&v��&u  ���&w��
�� 
docu&w �&x&x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&v �&y&y  g A l F C G Z i k q t
�� kfrmID  5 &z&z &{��&|��&{  ���&}��
�� 
docu&} �&~&~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&| �&&  k 6 H Q k P 6 7 O C w
�� kfrmID  6 &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  b A E D D a v 6 U n o
�� kfrmID  7 &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  f v x - o 0 P t L q _
�� kfrmID  8 &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  d i M E w d 5 B A Y Q
�� kfrmID  9 &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  k i n i _ 3 J 3 v Q B
�� kfrmID  : &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  m g S Q _ g P W z A l
�� kfrmID  ; &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  p E U B k X 1 H d L v
�� kfrmID  < &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  f G C O 8 H U - 5 X s
�� kfrmID  = &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  h S W 7 E w i R Q M x
�� kfrmID  > &�&� &���&���&�  ���&���
�� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac&� �&�&�  a 9 U S u 4 G f g r k
�� kfrmID  ? &�&� &���&���&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac&� �&�&�  j R o O y G R g M o y
�� kfrmID  @ &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  n Q N l x D - K g r S
� kfrmID  A &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  m w K a p Y E J M R s
� kfrmID  B &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  l 0 S h C W 6 L 0 X j
� kfrmID  C &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  m x Y G U o b s W Y 4
� kfrmID  D &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  n U A q M k V H U I U
� kfrmID  E &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  i W - q 6 l m C X g m
� kfrmID  F &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  i O 2 P 9 m D d e E L
� kfrmID  G &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  j p o 5 S 4 8 p g n M
� kfrmID  H &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  e n t x d N C g j Q -
� kfrmID  I &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  p Y 1 o A C E h P Z 5
� kfrmID  J &�&� &��&��&�  ��&��
� 
docu&� �&�&�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac&� �&�&�  h V h Q c R v t X o 8
� kfrmID  K &�&� &��' �&�  ��'�
� 
docu' �''  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'  �''  g f U I z H S I d 5 P
� kfrmID  L '' '�'�'  ��'�
� 
docu' �''  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac' �'	'	  c f x Z U T a a O U X
� kfrmID  M '
'
 '�'�'  ��'�
� 
docu' �''  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac' �''  h N l o b C Z f e s 7
� kfrmID  N '' '�'�'  ��'�
� 
docu' �''  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac' �''  i k y y F p n Y N S c
� kfrmID  O '' '�'�'  ��'�~
� 
docu' �''  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac' �''  j g I r e y p B w b a
� kfrmID  P '' '�}'�|'  ��{'�z
�{ 
docu' �' '   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac' �'!'!  m n A V 9 v E R u K x
�| kfrmID  Q '"'" '#�y'$�x'#  ��w'%�v
�w 
docu'% �'&'&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac'$ �''''  k 5 H b B 2 _ B r c N
�x kfrmID  R '('( ')�u'*�t')  ��s'+�r
�s 
docu'+ �',',  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac'* �'-'-  b B 7 r t J W y w W l
�t kfrmID  S '.'. '/�q'0�p'/  ��o'1�n
�o 
docu'1 �'2'2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac'0 �'3'3  o V I U F Q Y P L _ t
�p kfrmID  T '4'4 '5�m'6�l'5  ��k'7�j
�k 
docu'7 �'8'8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac'6 �'9'9  d D Y L i c u a 3 g F
�l kfrmID  U ':': ';�i'<�h';  ��g'=�f
�g 
docu'= �'>'>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac'< �'?'?  a G D 8 O d M j E U d
�h kfrmID  V '@'@ 'A�e'B�d'A  ��c'C�b
�c 
docu'C �'D'D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac'B �'E'E  o I x s Y I a F d W H
�d kfrmID  W 'F'F 'G�a'H�`'G  ��_'I�^
�_ 
docu'I �'J'J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac'H �'K'K  i U A 8 Z m N G j O K
�` kfrmID  X 'L'L 'M�]'N�\'M  ��['O�Z
�[ 
docu'O �'P'P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac'N �'Q'Q  m X l C Q M U y u S 6
�\ kfrmID  Y 'R'R 'S�Y'T�X'S  ��W'U�V
�W 
docu'U �'V'V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac'T �'W'W  k l 2 q 2 1 d 1 I r l
�X kfrmID  Z 'X'X 'Y�U'Z�T'Y  ��S'[�R
�S 
docu'[ �'\'\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac'Z �']']  k O M u R x D U z N Q
�T kfrmID  [ '^'^ '_�Q'`�P'_  ��O'a�N
�O 
docu'a �'b'b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac'` �'c'c  d Q 0 Q D t Y x w o 9
�P kfrmID  \ 'd'd 'e�M'f�L'e  ��K'g�J
�K 
docu'g �'h'h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac'f �'i'i  c 9 z 7 A U K t d I -
�L kfrmID  ] 'j'j 'k�I'l�H'k  ��G'm�F
�G 
docu'm �'n'n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac'l �'o'o  n O m 2 e N 6 c - s 8
�H kfrmID  ^ 'p'p 'q�E'r�D'q  ��C's�B
�C 
docu's �'t't  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac'r �'u'u  i f 0 n Z c 4 l n G W
�D kfrmID  _ 'v'v 'w�A'x�@'w  ��?'y�>
�? 
docu'y �'z'z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac'x �'{'{  b G a V q L p d Z L x
�@ kfrmID  ` '|'| '}�='~�<'}  ��;'�:
�; 
docu' �'�'�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac'~ �'�'�  c 1 F L m F n D 3 r c
�< kfrmID  a '�'� '��9'��8'�  ��7'��6
�7 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac'� �'�'�  m W q V m t 9 S c Y R
�8 kfrmID  b '�'� '��5'��4'�  ��3'��2
�3 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac'� �'�'�  a 9 G 1 S v l V 3 V S
�4 kfrmID  c '�'� '��1'��0'�  ��/'��.
�/ 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac'� �'�'�  d k V J B e J f K V W
�0 kfrmID  d '�'� '��-'��,'�  ��+'��*
�+ 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac'� �'�'�  k q E n V y o f U _ J
�, kfrmID  e '�'� '��)'��('�  ��''��&
�' 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac'� �'�'�  h 1 b m D m 2 0 u N l
�( kfrmID  f '�'� '��%'��$'�  ��#'��"
�# 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac'� �'�'�  f n m y V E N - L 8 Y
�$ kfrmID  g '�'� '��!'�� '�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac'� �'�'�  l o D R 5 A M Q 6 Y 4
�  kfrmID  h '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'� �'�'�  p Z m K I e N K W h i
� kfrmID  i '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'� �'�'�  p 7 V i M m _ w c y X
� kfrmID  j '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'� �'�'�  m m B D W 7 I t S 8 o
� kfrmID  k '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'� �'�'�  l X C C G k 3 _ M - k
� kfrmID  l '�'� '��'��'�  ��'��

� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac'� �'�'�  f H l 1 1 1 K 4 T x y
� kfrmID  m '�'� '��	'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac'� �'�'�  k D e m 6 _ M 1 m 8 M
� kfrmID  n '�'� '��'��'�  ��'��
� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac'� �'�'�  j X - l p 4 4 a s N G
� kfrmID  o '�'� '��'�� '�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac'� �'�'�  p w f W Y y m I g p c
�  kfrmID  p '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  d 8 p E 1 3 V 2 9 d 2
�� kfrmID  q '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  e u w 3 6 n R 5 M j N
�� kfrmID  r '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  j G v P n G y R N u 9
�� kfrmID  s '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  b 8 F 7 q T N I W v Q
�� kfrmID  t '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  d C A l P V 7 9 d f U
�� kfrmID  u '�'� '���'���'�  ���'���
�� 
docu'� �'�'�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac'� �'�'�  k V Y 9 h R B 2 d V u
�� kfrmID  v ( (  (��(��(  ���(��
�� 
docu( �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac( �((  e A N 4 9 D p p 9 E m
�� kfrmID  w (( (��(��(  ���(	��
�� 
docu(	 �(
(
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac( �((  l 1 s o Z 3 5 3 U z B
�� kfrmID  x (( (��(��(  ���(��
�� 
docu( �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac( �((  f A c L U C 1 G T a n
�� kfrmID  y (( (��(��(  ���(��
�� 
docu( �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac( �((  a c 0 u u 0 - 4 1 7 d
�� kfrmID  z (( (��(��(  ���(��
�� 
docu( �((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac( �((  j l D J I H 2 L J I J
�� kfrmID  { (( (��( ��(  ���(!��
�� 
docu(! �("("  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac(  �(#(#  o n S n Z f Z Y V O t
�� kfrmID  | ($($ (%��(&��(%  ���('��
�� 
docu(' �((((  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac(& �()()  a 1 A Z Y s P 7 H L -
�� kfrmID  } (*(* (+��(,��(+  ���(-��
�� 
docu(- �(.(.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac(, �(/(/  n K M Q e E r Z T F K
�� kfrmID  ~ (0(0 (1��(2��(1  ���(3��
�� 
docu(3 �(4(4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac(2 �(5(5  a q 2 R H C m W Y F 5
�� kfrmID   (6(6 (7��(8��(7  ��(9�
� 
docu(9 �(:(:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac(8 �(;(;  a t f q 5 c 8 s S 1 _
�� kfrmID  � (<(< (=�(>�(=  ��(?�
� 
docu(? �(@(@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(> �(A(A  b H P 2 X L s f A E h
� kfrmID  � (B(B (C�(D�(C  ��(E�
� 
docu(E �(F(F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(D �(G(G  k 5 P 5 s 3 v 9 4 q M
� kfrmID  � (H(H (I�(J�(I  ��(K�
� 
docu(K �(L(L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(J �(M(M  j v 6 D 7 l P - D 6 C
� kfrmID  � (N(N (O�(P�(O  ��(Q�
� 
docu(Q �(R(R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(P �(S(S  p e z N A 7 e X n b _
� kfrmID  � (T(T (U�(V�(U  ��(W�
� 
docu(W �(X(X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(V �(Y(Y  p r A C u k R 3 Y w 7
� kfrmID  � (Z(Z ([�(\�([  ��(]�
� 
docu(] �(^(^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(\ �(_(_  i W y x x 5 o r G w c
� kfrmID  � (`(` (a�(b�(a  ��(c�
� 
docu(c �(d(d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(b �(e(e  n e T y R a U H U W Z
� kfrmID  � (f(f (g�(h�(g  ��(i�
� 
docu(i �(j(j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(h �(k(k  m _ D 5 I W 5 s A D p
� kfrmID  � (l(l (m�(n�(m  ��(o�
� 
docu(o �(p(p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(n �(q(q  o 5 s f 0 M o o G t Z
� kfrmID  � (r(r (s�(t�(s  ��(u�
� 
docu(u �(v(v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(t �(w(w  h - c k 3 R W 2 B O _
� kfrmID  � (x(x (y�(z�(y  ��({�
� 
docu({ �(|(|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(z �(}(}  g 8 t d J B 4 T O d X
� kfrmID  � (~(~ (�(��(  ��(��
� 
docu(� �(�(�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(� �(�(�  c f Q t h C - w X W E
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(� �(�(�  f a r Y v _ 6 d 3 3 b
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(� �(�(�  m F - s v X p o H j w
� kfrmID  � (�(� (��(��(�  ��(��
� 
docu(� �(�(�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac(� �(�(�  b r 8 P K O b H l g 5
� kfrmID  � (�(� (��(��(�  ��(��~
� 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac(� �(�(�  c h N v T s h - d B R
� kfrmID  � (�(� (��}(��|(�  ��{(��z
�{ 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac(� �(�(�  c p Z n _ 1 B - F Z X
�| kfrmID  � (�(� (��y(��x(�  ��w(��v
�w 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac(� �(�(�  l P T U Y E G L 6 x 3
�x kfrmID  � (�(� (��u(��t(�  ��s(��r
�s 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac(� �(�(�  l t V F s P 0 g q s q
�t kfrmID  � (�(� (��q(��p(�  ��o(��n
�o 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac(� �(�(�  h f 7 9 3 1 3 A X m R
�p kfrmID  � (�(� (��m(��l(�  ��k(��j
�k 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac(� �(�(�  h L 7 Y D i 8 S o u e
�l kfrmID  � (�(� (��i(��h(�  ��g(��f
�g 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac(� �(�(�  o 6 - h C q 6 K G u 0
�h kfrmID  � (�(� (��e(��d(�  ��c(��b
�c 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac(� �(�(�  o S J o M P k n k j n
�d kfrmID  � (�(� (��a(��`(�  ��_(��^
�_ 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac(� �(�(�  f 6 j s r N T u 9 h O
�` kfrmID  � (�(� (��](��\(�  ��[(��Z
�[ 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac(� �(�(�  i 7 2 b R K 8 U Q 1 k
�\ kfrmID  � (�(� (��Y(��X(�  ��W(��V
�W 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac(� �(�(�  i O 4 S F f b U y z 0
�X kfrmID  � (�(� (��U(��T(�  ��S(��R
�S 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac(� �(�(�  d k X E O 9 u x l w W
�T kfrmID  � (�(� (��Q(��P(�  ��O(��N
�O 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac(� �(�(�  i v w 0 P j M 0 F U U
�P kfrmID  � (�(� (��M(��L(�  ��K(��J
�K 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac(� �(�(�  o T Y K r p p a l j c
�L kfrmID  � (�(� (��I(��H(�  ��G(��F
�G 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac(� �(�(�  g W p J I 5 m x S 8 c
�H kfrmID  � (�(� (��E(��D(�  ��C(��B
�C 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac(� �(�(�  p l F R A i W p S v j
�D kfrmID  � (�(� (��A(��@(�  ��?(��>
�? 
docu(� �(�(�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac(� �(�(�  o V R M 3 l Q H u 4 i
�@ kfrmID  � (�(� (��=(��<(�  ��;(��:
�; 
docu(� �) )   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac(� �))  b M 8 f X i M 5 j 4 J
�< kfrmID  � )) )�9)�8)  ��7)�6
�7 
docu) �))  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac) �))  k R 2 a D L V o o v J
�8 kfrmID  � )) )	�5)
�4)	  ��3)�2
�3 
docu) �))  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac)
 �))  p F h B C e W v C r J
�4 kfrmID  � )) )�1)�0)  ��/)�.
�/ 
docu) �))  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac) �))  h j O u _ w n a F z C
�0 kfrmID  � )) )�-)�,)  ��+)�*
�+ 
docu) �))  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac) �))  f t U 7 K 8 n h j r Z
�, kfrmID  � )) )�))�()  ��')�&
�' 
docu) �))  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac) �))  b n G o 0 4 W 1 0 l v
�( kfrmID  � ) )  )!�%)"�$)!  ��#)#�"
�# 
docu)# �)$)$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac)" �)%)%  p J h V V N d M 9 T R
�$ kfrmID  � )&)& )'�!)(� )'  ��))�
� 
docu)) �)*)*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac)( �)+)+  k j K H J R l L a O 2
�  kfrmID  � ),), )-�).�)-  ��)/�
� 
docu)/ �)0)0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac). �)1)1  i H C w 3 - C D x e 3
� kfrmID  � )2)2 )3�)4�)3  ��)5�
� 
docu)5 �)6)6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)4 �)7)7  m _ 9 y _ U p b K m 3
� kfrmID  � )8)8 )9�):�)9  ��);�
� 
docu); �)<)<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac): �)=)=  h g K 0 T W 6 L s W P
� kfrmID  � )>)> )?�)@�)?  ��)A�
� 
docu)A �)B)B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)@ �)C)C  c j o X f 7 U t 5 H D
� kfrmID  � )D)D )E�)F�)E  ��)G�

� 
docu)G �)H)H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac)F �)I)I  i R - z M v Q c X W N
� kfrmID  � )J)J )K�	)L�)K  ��)M�
� 
docu)M �)N)N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac)L �)O)O  l E G W S i i 6 R 8 V
� kfrmID  � )P)P )Q�)R�)Q  ��)S�
� 
docu)S �)T)T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)R �)U)U  a a _ x s 5 V l Z K O
� kfrmID  � )V)V )W�)X� )W  ���)Y��
�� 
docu)Y �)Z)Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac)X �)[)[  i 7 a 3 w p 2 m F 4 y
�  kfrmID  � )\)\ )]��)^��)]  ���)_��
�� 
docu)_ �)`)`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)^ �)a)a  g E v D k 8 X p Q j u
�� kfrmID  � )b)b )c��)d��)c  ���)e��
�� 
docu)e �)f)f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)d �)g)g  k q 1 J E c D R w F Y
�� kfrmID  � )h)h )i��)j��)i  ���)k��
�� 
docu)k �)l)l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)j �)m)m  i w M p 3 Q t c m B D
�� kfrmID  � )n)n )o��)p��)o  ���)q��
�� 
docu)q �)r)r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)p �)s)s  f e v b r j M y Q l f
�� kfrmID  � )t)t )u��)v��)u  ���)w��
�� 
docu)w �)x)x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)v �)y)y  d u 2 1 b v 3 d i I P
�� kfrmID  � )z)z ){��)|��){  ���)}��
�� 
docu)} �)~)~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)| �))  g R 8 G G e 7 f X 7 G
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  a S 2 N j i I l w v X
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  e l o G O I P _ - B 6
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  l 2 - 6 y 4 j v R P S
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  l C w Z b C g - j l l
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  n G X Z j i y d 5 x Y
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  e z R Z M W O G 4 o j
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  k l P I y h 6 f 9 d o
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  c h k z b W W Y 6 e C
�� kfrmID  � )�)� )���)���)�  ���)���
�� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac)� �)�)�  k N C Z n R A v l n I
�� kfrmID  � )�)� )���)���)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac)� �)�)�  n N m P x X U _ S d Y
�� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  m R r n A x Z 7 - X 3
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  m c d A M L j o 6 z 8
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  n v Q e w 9 K G G p n
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  b k 3 p c a L 5 F e x
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  l Q N o S Q V g C J U
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  a D C d E b a 2 _ Z 4
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  a M a p - s X W B u o
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  n e M K t w _ d L G B
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  g N Y h 6 D F x C r 2
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  b 8 B Q p V S 0 j _ i
� kfrmID  � )�)� )��)��)�  ��)��
� 
docu)� �)�)�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac)� �)�)�  j Q i 8 O C y f T c H
� kfrmID  � )�)� )��* �)�  ��*�
� 
docu* �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*  �**  h s 1 F M S 4 m i u I
� kfrmID  � ** *�*�*  ��*�
� 
docu* �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac* �*	*	  l 0 G q n h 0 B p 4 l
� kfrmID  � *
*
 *�*�*  ��*�
� 
docu* �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac* �**  n O h r N l F n A e -
� kfrmID  � ** *�*�*  ��*�
� 
docu* �**  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac* �**  g V X 3 X y b d i a 2
� kfrmID  � ** *�*�*  ��*�~
� 
docu* �**  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac* �**  f b j a d 2 v R 8 W 0
� kfrmID  � ** *�}*�|*  ��{*�z
�{ 
docu* �* *   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac* �*!*!  j A 2 S u O w x G o p
�| kfrmID  � *"*" *#�y*$�x*#  ��w*%�v
�w 
docu*% �*&*&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac*$ �*'*'  n P W 2 B I e h 1 5 O
�x kfrmID  � *(*( *)�u**�t*)  ��s*+�r
�s 
docu*+ �*,*,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac** �*-*-  f F i 0 N C h z W A B
�t kfrmID  � *.*. */�q*0�p*/  ��o*1�n
�o 
docu*1 �*2*2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac*0 �*3*3  j G - - v h b F x - t
�p kfrmID  � *4*4 *5�m*6�l*5  ��k*7�j
�k 
docu*7 �*8*8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac*6 �*9*9  n T J M - G x B u 9 6
�l kfrmID  � *:*: *;�i*<�h*;  ��g*=�f
�g 
docu*= �*>*>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac*< �*?*?  b y J b m L 6 O v G l
�h kfrmID  � *@*@ *A�e*B�d*A  ��c*C�b
�c 
docu*C �*D*D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac*B �*E*E  m y P L 4 2 5 Q - y Z
�d kfrmID  � *F*F *G�a*H�`*G  ��_*I�^
�_ 
docu*I �*J*J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac*H �*K*K  a t z J V Z o g U A G
�` kfrmID  � *L*L *M�]*N�\*M  ��[*O�Z
�[ 
docu*O �*P*P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac*N �*Q*Q  m x 8 s 4 N H m M 7 X
�\ kfrmID  � *R*R *S�Y*T�X*S  ��W*U�V
�W 
docu*U �*V*V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac*T �*W*W  k 9 y K k l _ 8 1 k U
�X kfrmID  � *X*X *Y�U*Z�T*Y  ��S*[�R
�S 
docu*[ �*\*\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac*Z �*]*]  d Z w X z 8 G Y - 4 I
�T kfrmID  � *^*^ *_�Q*`�P*_  ��O*a�N
�O 
docu*a �*b*b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac*` �*c*c  b r K C D c Q p g W U
�P kfrmID  � *d*d *e�M*f�L*e  ��K*g�J
�K 
docu*g �*h*h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac*f �*i*i  e f m S 1 j L 4 F c z
�L kfrmID  � *j*j *k�I*l�H*k  ��G*m�F
�G 
docu*m �*n*n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac*l �*o*o  p k U 3 H H 7 O r L n
�H kfrmID  � *p*p *q�E*r�D*q  ��C*s�B
�C 
docu*s �*t*t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac*r �*u*u  g S y 8 t Y h o 2 d B
�D kfrmID  � *v*v *w�A*x�@*w  ��?*y�>
�? 
docu*y �*z*z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac*x �*{*{  n s Z N t k m s L w _
�@ kfrmID  � *|*| *}�=*~�<*}  ��;*�:
�; 
docu* �*�*�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac*~ �*�*�  e t q G R 6 7 S I 3 I
�< kfrmID  � *�*� *��9*��8*�  ��7*��6
�7 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac*� �*�*�  c y 1 K X y e h M 1 Q
�8 kfrmID  � *�*� *��5*��4*�  ��3*��2
�3 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac*� �*�*�  j 2 Y G l r 4 L h e S
�4 kfrmID  � *�*� *��1*��0*�  ��/*��.
�/ 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac*� �*�*�  h i c J 1 9 D Z 7 3 6
�0 kfrmID  � *�*� *��-*��,*�  ��+*��*
�+ 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac*� �*�*�  p q p d H R - S s M B
�, kfrmID  � *�*� *��)*��(*�  ��'*��&
�' 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac*� �*�*�  c g d s i Z J x W U B
�( kfrmID  � *�*� *��%*��$*�  ��#*��"
�# 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac*� �*�*�  f J d o r N c f C s f
�$ kfrmID  � *�*� *��!*�� *�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac*� �*�*�  d r M 6 e w G z T D 0
�  kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*� �*�*�  g z 9 y P H M J C I x
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*� �*�*�  n R h 5 k H T _ p R Q
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*� �*�*�  a T t J J t n B 5 T x
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*� �*�*�  f n t d f y J B B U g
� kfrmID  � *�*� *��*��*�  ��*��

� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac*� �*�*�  a f N t 4 J b H 2 4 L
� kfrmID  � *�*� *��	*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac*� �*�*�  h K J s z E u 3 V V u
� kfrmID  � *�*� *��*��*�  ��*��
� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac*� �*�*�  k x 2 r - n m 5 7 y H
� kfrmID  � *�*� *��*�� *�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac*� �*�*�  k Q a z h S G y - v X
�  kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  m 5 J a Q W I u M 4 E
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  f x P J U 7 h 7 G 0 y
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  a I a Q y f h a 9 p p
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  e q x E d u 9 w F 2 O
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  d f u o U A v T M S A
�� kfrmID  � *�*� *���*���*�  ���*���
�� 
docu*� �*�*�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac*� �*�*�  h k F g e r J o c A h
�� kfrmID  � + +  +��+��+  ���+��
�� 
docu+ �++  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+ �++  d 5 r x s J o j S w 4
�� kfrmID  � ++ +��+��+  ���+	��
�� 
docu+	 �+
+
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+ �++  b a 2 E D z m o O _ 6
�� kfrmID  � ++ +��+��+  ���+��
�� 
docu+ �++  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+ �++  h 4 j e Q i d S 3 K L
�� kfrmID  � ++ +��+��+  ���+��
�� 
docu+ �++  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+ �++  c 8 7 P 2 A T 1 O V 4
�� kfrmID  � ++ +��+��+  ���+��
�� 
docu+ �++  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+ �++  j 3 J L K 4 p K z M W
�� kfrmID  � ++ +��+ ��+  ���+!��
�� 
docu+! �+"+"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+  �+#+#  h 5 9 K i u v 7 o g r
�� kfrmID  � +$+$ +%��+&��+%  ���+'��
�� 
docu+' �+(+(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+& �+)+)  g _ 0 Q v v D - J o 4
�� kfrmID  � +*+* ++��+,��++  ���+-��
�� 
docu+- �+.+.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+, �+/+/  p f C O 1 R C o z Z 9
�� kfrmID  � +0+0 +1��+2��+1  ���+3��
�� 
docu+3 �+4+4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac+2 �+5+5  n 9 I y w g W y R B 2
�� kfrmID  � +6+6 +7��+8��+7  ��+9�
� 
docu+9 �+:+:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac+8 �+;+;  d p O e f I 3 a p d x
�� kfrmID    +<+< +=�+>�+=  ��+?�
� 
docu+? �+@+@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+> �+A+A  j J 9 Y S l E 8 w q t
� kfrmID   +B+B +C�+D�+C  ��+E�
� 
docu+E �+F+F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+D �+G+G  a F y N n _ J L O z R
� kfrmID   +H+H +I�+J�+I  ��+K�
� 
docu+K �+L+L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+J �+M+M  m m V D f P u V m S C
� kfrmID   +N+N +O�+P�+O  ��+Q�
� 
docu+Q �+R+R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+P �+S+S  a V A 1 E G V n z 7 7
� kfrmID   +T+T +U�+V�+U  ��+W�
� 
docu+W �+X+X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+V �+Y+Y  l 9 _ A v 7 l Q o t B
� kfrmID   +Z+Z +[�+\�+[  ��+]�
� 
docu+] �+^+^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+\ �+_+_  j E H R G K j X 3 U z
� kfrmID   +`+` +a�+b�+a  ��+c�
� 
docu+c �+d+d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+b �+e+e  o t k Q y i I _ T v W
� kfrmID   +f+f +g�+h�+g  ��+i�
� 
docu+i �+j+j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+h �+k+k  o 6 m c y 1 P w 8 d c
� kfrmID   +l+l +m�+n�+m  ��+o�
� 
docu+o �+p+p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+n �+q+q  j A 7 9 T e D w v p 5
� kfrmID  	 +r+r +s�+t�+s  ��+u�
� 
docu+u �+v+v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+t �+w+w  b q X 4 3 m 7 c 0 _ s
� kfrmID  
 +x+x +y�+z�+y  ��+{�
� 
docu+{ �+|+|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+z �+}+}  j Y 7 _ o P 6 2 - l 2
� kfrmID   +~+~ +�+��+  ��+��
� 
docu+� �+�+�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+� �+�+�  o V v M P 8 w q a k f
� kfrmID   +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+� �+�+�  b M N 8 I l X i h B 0
� kfrmID   +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+� �+�+�  e K X x c 5 y 1 0 u H
� kfrmID   +�+� +��+��+�  ��+��
� 
docu+� �+�+�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac+� �+�+�  k g B k W D 1 D N 1 v
� kfrmID   +�+� +��+��+�  ��+��~
� 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac+� �+�+�  c 5 z G X i B 5 J 9 3
� kfrmID   +�+� +��}+��|+�  ��{+��z
�{ 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac+� �+�+�  k b I X K _ E t T i Y
�| kfrmID   +�+� +��y+��x+�  ��w+��v
�w 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac+� �+�+�  i K O F H E L v c t D
�x kfrmID   +�+� +��u+��t+�  ��s+��r
�s 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac+� �+�+�  o d 3 3 b r J A e A L
�t kfrmID   +�+� +��q+��p+�  ��o+��n
�o 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac+� �+�+�  p G J a 0 S v g e d v
�p kfrmID   +�+� +��m+��l+�  ��k+��j
�k 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac+� �+�+�  h M 2 w e F I Q y V k
�l kfrmID   +�+� +��i+��h+�  ��g+��f
�g 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac+� �+�+�  k i j 7 y J r 9 k 2 k
�h kfrmID   +�+� +��e+��d+�  ��c+��b
�c 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac+� �+�+�  a u u r a h A E a U V
�d kfrmID   +�+� +��a+��`+�  ��_+��^
�_ 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac+� �+�+�  e i H 2 p 5 n X y e e
�` kfrmID   +�+� +��]+��\+�  ��[+��Z
�[ 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac+� �+�+�  o x E J K E V g 1 N -
�\ kfrmID   +�+� +��Y+��X+�  ��W+��V
�W 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac+� �+�+�  k s - V d e o R F J y
�X kfrmID   +�+� +��U+��T+�  ��S+��R
�S 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac+� �+�+�  g n b X p H B 0 J 1 b
�T kfrmID   +�+� +��Q+��P+�  ��O+��N
�O 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac+� �+�+�  k i X N 5 9 S R 3 H u
�P kfrmID   +�+� +��M+��L+�  ��K+��J
�K 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac+� �+�+�  a b e h z P f s V b K
�L kfrmID   +�+� +��I+��H+�  ��G+��F
�G 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac+� �+�+�  f f E Y K 2 M L 5 2 k
�H kfrmID   +�+� +��E+��D+�  ��C+��B
�C 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac+� �+�+�  c O h 8 D z u 9 P y 3
�D kfrmID   +�+� +��A+��@+�  ��?+��>
�? 
docu+� �+�+�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac+� �+�+�  l w B w s 6 W 3 l w t
�@ kfrmID    +�+� +��=+��<+�  ��;+��:
�; 
docu+� �, ,   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac+� �,,  p j - Z h V W m S Z E
�< kfrmID  ! ,, ,�9,�8,  ��7,�6
�7 
docu, �,,  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac, �,,  g h o v 5 H y Y o 2 X
�8 kfrmID  " ,, ,	�5,
�4,	  ��3,�2
�3 
docu, �,,  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac,
 �,,  c k X Z e v v e N W T
�4 kfrmID  # ,, ,�1,�0,  ��/,�.
�/ 
docu, �,,  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac, �,,  j K u D Y A T h 2 A S
�0 kfrmID  $ ,, ,�-,�,,  ��+,�*
�+ 
docu, �,,  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac, �,,  l P c W F d M i o 7 p
�, kfrmID  % ,, ,�),�(,  ��',�&
�' 
docu, �,,  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac, �,,  a S u I U e q 3 0 L -
�( kfrmID  & , ,  ,!�%,"�$,!  ��#,#�"
�# 
docu,# �,$,$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac," �,%,%  p a u Q Y b 3 L k _ P
�$ kfrmID  ' ,&,& ,'�!,(� ,'  ��,)�
� 
docu,) �,*,*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac,( �,+,+  f u H 7 N F 1 E h H 1
�  kfrmID  ( ,,,, ,-�,.�,-  ��,/�
� 
docu,/ �,0,0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,. �,1,1  o 7 g 4 R 6 w G V S 1
� kfrmID  ) ,2,2 ,3�,4�,3  ��,5�
� 
docu,5 �,6,6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,4 �,7,7  f l 4 T g b 9 x 9 p h
� kfrmID  * ,8,8 ,9�,:�,9  ��,;�
� 
docu,; �,<,<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,: �,=,=  b e j K V z g 1 Q 4 l
� kfrmID  + ,>,> ,?�,@�,?  ��,A�
� 
docu,A �,B,B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,@ �,C,C  m J w S h S y J J M 2
� kfrmID  , ,D,D ,E�,F�,E  ��,G�

� 
docu,G �,H,H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac,F �,I,I  l O A K Y q D R v g a
� kfrmID  - ,J,J ,K�	,L�,K  ��,M�
� 
docu,M �,N,N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac,L �,O,O  l A _ Y a e 5 N R T f
� kfrmID  . ,P,P ,Q�,R�,Q  ��,S�
� 
docu,S �,T,T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,R �,U,U  d A x I 0 3 X w i U i
� kfrmID  / ,V,V ,W�,X� ,W  ���,Y��
�� 
docu,Y �,Z,Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac,X �,[,[  e i u z V 6 Q B q 1 H
�  kfrmID  0 ,\,\ ,]��,^��,]  ���,_��
�� 
docu,_ �,`,`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,^ �,a,a  i 7 E L D i Z j z U X
�� kfrmID  1 ,b,b ,c��,d��,c  ���,e��
�� 
docu,e �,f,f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,d �,g,g  e B O s 8 u V W e i d
�� kfrmID  2 ,h,h ,i��,j��,i  ���,k��
�� 
docu,k �,l,l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,j �,m,m  h C x k i V f C K T 6
�� kfrmID  3 ,n,n ,o��,p��,o  ���,q��
�� 
docu,q �,r,r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,p �,s,s  b j 0 4 G v k i G X b
�� kfrmID  4 ,t,t ,u��,v��,u  ���,w��
�� 
docu,w �,x,x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,v �,y,y  g _ 6 a m d u J l t 7
�� kfrmID  5 ,z,z ,{��,|��,{  ���,}��
�� 
docu,} �,~,~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,| �,,  c K F R l Q - d V 7 5
�� kfrmID  6 ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  g N 5 t e v u 1 l v z
�� kfrmID  7 ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  c T c A N V 5 C j t 8
�� kfrmID  8 ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  b P Z p G J g V q y r
�� kfrmID  9 ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  b m F 2 C I h _ 8 J x
�� kfrmID  : ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  f 5 C J y e 0 Q j R e
�� kfrmID  ; ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  h B k m 3 o o g - Z c
�� kfrmID  < ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  m K J A p h O F u S t
�� kfrmID  = ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  e L R H f E 2 L 5 C p
�� kfrmID  > ,�,� ,���,���,�  ���,���
�� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac,� �,�,�  b r 2 d O K 5 3 n 1 9
�� kfrmID  ? ,�,� ,���,���,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac,� �,�,�  o K s r Z R B 0 g x O
�� kfrmID  @ ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  m k Z z J N l j Y g a
� kfrmID  A ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  j L j l h p o W e l s
� kfrmID  B ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  p C n X 9 s E r 8 w 8
� kfrmID  C ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  i W M S x J a g h - O
� kfrmID  D ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  c s b 0 c h a _ i F 4
� kfrmID  E ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  p 4 o K G j 2 M O i _
� kfrmID  F ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  b 7 k z E 0 G 4 C Y 0
� kfrmID  G ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  m 9 x J i Q r N V o 4
� kfrmID  H ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  m F S d A O d c 9 B r
� kfrmID  I ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  k J X O i F i s G x 6
� kfrmID  J ,�,� ,��,��,�  ��,��
� 
docu,� �,�,�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac,� �,�,�  k s D 4 W c H y u j o
� kfrmID  K ,�,� ,��- �,�  ��-�
� 
docu- �--  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-  �--  o H J S f W Q G a s X
� kfrmID  L -- -�-�-  ��-�
� 
docu- �--  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac- �-	-	  m r P H 1 B 3 2 t Q Y
� kfrmID  M -
-
 -�-�-  ��-�
� 
docu- �--  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac- �--  k c r 2 q K V L x P g
� kfrmID  N -- -�-�-  ��-�
� 
docu- �--  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac- �--  i J f i e M P a I F F
� kfrmID  O -- -�-�-  ��-�~
� 
docu- �--  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac- �--  m Z D F Y _ 6 k l Y a
� kfrmID  P -- -�}-�|-  ��{-�z
�{ 
docu- �- -   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac- �-!-!  h C H P Y G l M v M y
�| kfrmID  Q -"-" -#�y-$�x-#  ��w-%�v
�w 
docu-% �-&-&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac-$ �-'-'  p B E X 6 2 w 9 T 6 D
�x kfrmID  R -(-( -)�u-*�t-)  ��s-+�r
�s 
docu-+ �-,-,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac-* �----  c 9 X e W s z 5 S D V
�t kfrmID  S -.-. -/�q-0�p-/  ��o-1�n
�o 
docu-1 �-2-2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac-0 �-3-3  m U v R P v o y P F f
�p kfrmID  T -4-4 -5�m-6�l-5  ��k-7�j
�k 
docu-7 �-8-8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac-6 �-9-9  a 9 h n n - J n U H 4
�l kfrmID  U -:-: -;�i-<�h-;  ��g-=�f
�g 
docu-= �->->  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac-< �-?-?  c 0 2 x W 3 d _ - r 0
�h kfrmID  V -@-@ -A�e-B�d-A  ��c-C�b
�c 
docu-C �-D-D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac-B �-E-E  e C y j W v B 0 4 7 M
�d kfrmID  W -F-F -G�a-H�`-G  ��_-I�^
�_ 
docu-I �-J-J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac-H �-K-K  i B F Z - y z O w r 4
�` kfrmID  X -L-L -M�]-N�\-M  ��[-O�Z
�[ 
docu-O �-P-P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac-N �-Q-Q  j Z n E h C j S c a L
�\ kfrmID  Y -R-R -S�Y-T�X-S  ��W-U�V
�W 
docu-U �-V-V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac-T �-W-W  j D M o M c C x N p s
�X kfrmID  Z -X-X -Y�U-Z�T-Y  ��S-[�R
�S 
docu-[ �-\-\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac-Z �-]-]  k j t y D - Z x c x n
�T kfrmID  [ -^-^ -_�Q-`�P-_  ��O-a�N
�O 
docu-a �-b-b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac-` �-c-c  b t z S r E z L h K t
�P kfrmID  \ -d-d -e�M-f�L-e  ��K-g�J
�K 
docu-g �-h-h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac-f �-i-i  f G R - J r Y T B 8 a
�L kfrmID  ] -j-j -k�I-l�H-k  ��G-m�F
�G 
docu-m �-n-n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac-l �-o-o  i o o 5 N f 0 o u w t
�H kfrmID  ^ -p-p -q�E-r�D-q  ��C-s�B
�C 
docu-s �-t-t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac-r �-u-u  g g - s q R y P b j Y
�D kfrmID  _ -v-v -w�A-x�@-w  ��?-y�>
�? 
docu-y �-z-z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac-x �-{-{  p k y 7 r m r S L 2 M
�@ kfrmID  ` -|-| -}�=-~�<-}  ��;-�:
�; 
docu- �-�-�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac-~ �-�-�  d P o P f p P e u x 5
�< kfrmID  a -�-� -��9-��8-�  ��7-��6
�7 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac-� �-�-�  p a d Z Z R - T w J x
�8 kfrmID  b -�-� -��5-��4-�  ��3-��2
�3 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac-� �-�-�  b P T j Y B O v 3 q t
�4 kfrmID  c -�-� -��1-��0-�  ��/-��.
�/ 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac-� �-�-�  f - m Q I Y 3 W i t l
�0 kfrmID  d -�-� -��--��,-�  ��+-��*
�+ 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac-� �-�-�  j D K C A U h W K 4 Y
�, kfrmID  e -�-� -��)-��(-�  ��'-��&
�' 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac-� �-�-�  f f 6 z L E M R Q c z
�( kfrmID  f -�-� -��%-��$-�  ��#-��"
�# 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac-� �-�-�  p l O P H a R m - n G
�$ kfrmID  g -�-� -��!-�� -�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac-� �-�-�  c e 8 4 i c p q - b A
�  kfrmID  h -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-� �-�-�  h j U Y p q 6 b b 9 U
� kfrmID  i -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-� �-�-�  k - n p M 9 X D E O b
� kfrmID  j -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-� �-�-�  i u J - I e L 2 U z y
� kfrmID  k -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-� �-�-�  i L 8 c 4 W z P i u 6
� kfrmID  l -�-� -��-��-�  ��-��

� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac-� �-�-�  i r w F s 8 E - y q B
� kfrmID  m -�-� -��	-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac-� �-�-�  l l Y H W o I o I y s
� kfrmID  n -�-� -��-��-�  ��-��
� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac-� �-�-�  b v m g z X I Y G n c
� kfrmID  o -�-� -��-�� -�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac-� �-�-�  l C y j X Z A 2 - a o
�  kfrmID  p -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  f _ s i g H - j D d v
�� kfrmID  q -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  j 1 y e w z d u 3 2 _
�� kfrmID  r -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  n k X t a A 8 r f 6 Z
�� kfrmID  s -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  d w d - a c S K W N w
�� kfrmID  t -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  d I e - U - q 4 X Z W
�� kfrmID  u -�-� -���-���-�  ���-���
�� 
docu-� �-�-�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac-� �-�-�  d b U _ m x p g z w g
�� kfrmID  v . .  .��.��.  ���.��
�� 
docu. �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac. �..  p j 3 A D T m j N M d
�� kfrmID  w .. .��.��.  ���.	��
�� 
docu.	 �.
.
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac. �..  h y j _ S y T 6 g h 8
�� kfrmID  x .. .��.��.  ���.��
�� 
docu. �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac. �..  l e R m e G a o c H -
�� kfrmID  y .. .��.��.  ���.��
�� 
docu. �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac. �..  h O Y D t V r u A y F
�� kfrmID  z .. .��.��.  ���.��
�� 
docu. �..  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac. �..  e D B q B D A b j 7 Y
�� kfrmID  { .. .��. ��.  ���.!��
�� 
docu.! �."."  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac.  �.#.#  e E q g 6 a Z B E I t
�� kfrmID  | .$.$ .%��.&��.%  ���.'��
�� 
docu.' �.(.(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac.& �.).)  e F u W f u o G i f B
�� kfrmID  } .*.* .+��.,��.+  ���.-��
�� 
docu.- �....  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac., �././  o 5 X N 0 p O H X V 4
�� kfrmID  ~ .0.0 .1��.2��.1  ���.3��
�� 
docu.3 �.4.4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac.2 �.5.5  o k t Z m 2 A e 8 o w
�� kfrmID   .6.6 .7��.8��.7  ��.9�
� 
docu.9 �.:.:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac.8 �.;.;  n 1 h 2 p M Z Y k u 0
�� kfrmID  � .<.< .=�.>�.=  ��.?�
� 
docu.? �.@.@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.> �.A.A  f F Q T O f 2 J o l v
� kfrmID  � .B.B .C�.D�.C  ��.E�
� 
docu.E �.F.F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.D �.G.G  m j n B T 6 d - w u _
� kfrmID  � .H.H .I�.J�.I  ��.K�
� 
docu.K �.L.L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.J �.M.M  h Y b - K i k q t c v
� kfrmID  � .N.N .O�.P�.O  ��.Q�
� 
docu.Q �.R.R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.P �.S.S  c N I D F 4 a W t T I
� kfrmID  � .T.T .U�.V�.U  ��.W�
� 
docu.W �.X.X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.V �.Y.Y  b C M f M _ P y S w 3
� kfrmID  � .Z.Z .[�.\�.[  ��.]�
� 
docu.] �.^.^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.\ �._._  e X k C 4 A Z C A n U
� kfrmID  � .`.` .a�.b�.a  ��.c�
� 
docu.c �.d.d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.b �.e.e  h N e 7 m P j - 8 3 L
� kfrmID  � .f.f .g�.h�.g  ��.i�
� 
docu.i �.j.j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.h �.k.k  c M Z E g i 1 m U w k
� kfrmID  � .l.l .m�.n�.m  ��.o�
� 
docu.o �.p.p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.n �.q.q  k E A Z I B n l X u c
� kfrmID  � .r.r .s�.t�.s  ��.u�
� 
docu.u �.v.v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.t �.w.w  g _ E a y 5 p l 2 0 D
� kfrmID  � .x.x .y�.z�.y  ��.{�
� 
docu.{ �.|.|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.z �.}.}  a D e I 3 C v W a H G
� kfrmID  � .~.~ .�.��.  ��.��
� 
docu.� �.�.�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.� �.�.�  a 6 I C M 0 W V O V -
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.� �.�.�  e 7 7 h v V 8 4 _ 4 R
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.� �.�.�  a V - t o p Y H C 4 n
� kfrmID  � .�.� .��.��.�  ��.��
� 
docu.� �.�.�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac.� �.�.�  g e b Z 0 T n d 7 B O
� kfrmID  � .�.� .��.��.�  ��.��~
� 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac.� �.�.�  k - R i 7 u l M V Z I
� kfrmID  � .�.� .��}.��|.�  ��{.��z
�{ 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac.� �.�.�  a y 9 6 q U 8 C H k 0
�| kfrmID  � .�.� .��y.��x.�  ��w.��v
�w 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac.� �.�.�  k 6 k H p k A F t E f
�x kfrmID  � .�.� .��u.��t.�  ��s.��r
�s 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac.� �.�.�  a w s X D 7 m s R N Y
�t kfrmID  � .�.� .��q.��p.�  ��o.��n
�o 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac.� �.�.�  h J t H T D P 7 5 w u
�p kfrmID  � .�.� .��m.��l.�  ��k.��j
�k 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac.� �.�.�  l K r K u l 8 o b h I
�l kfrmID  � .�.� .��i.��h.�  ��g.��f
�g 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac.� �.�.�  o C I n t 8 J v K K v
�h kfrmID  � .�.� .��e.��d.�  ��c.��b
�c 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac.� �.�.�  e a Q K o u 2 U a l t
�d kfrmID  � .�.� .��a.��`.�  ��_.��^
�_ 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac.� �.�.�  h R w m 1 q J H E J G
�` kfrmID  � .�.� .��].��\.�  ��[.��Z
�[ 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac.� �.�.�  n 0 F R 7 f K F 9 D i
�\ kfrmID  � .�.� .��Y.��X.�  ��W.��V
�W 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac.� �.�.�  i u O B B U M 7 r X 3
�X kfrmID  � .�.� .��U.��T.�  ��S.��R
�S 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac.� �.�.�  m q R b Z 9 T o w M D
�T kfrmID  � .�.� .��Q.��P.�  ��O.��N
�O 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac.� �.�.�  n v U 9 Q Y t g P W m
�P kfrmID  � .�.� .��M.��L.�  ��K.��J
�K 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac.� �.�.�  f _ F M S 2 - 7 I o 8
�L kfrmID  � .�.� .��I.��H.�  ��G.��F
�G 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac.� �.�.�  o 6 1 1 r - 9 7 Y K V
�H kfrmID  � .�.� .��E.��D.�  ��C.��B
�C 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac.� �.�.�  g 2 - Q O a 0 p l a y
�D kfrmID  � .�.� .��A.��@.�  ��?.��>
�? 
docu.� �.�.�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac.� �.�.�  i C z J 0 1 i 8 d s p
�@ kfrmID  � .�.� .��=.��<.�  ��;.��:
�; 
docu.� �/ /   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac.� �//  c O M T g V p c b w d
�< kfrmID  � // /�9/�8/  ��7/�6
�7 
docu/ �//  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac/ �//  n x p x T g e V F e L
�8 kfrmID  � // /	�5/
�4/	  ��3/�2
�3 
docu/ �//  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac/
 �//  j x e X _ o r j Q f V
�4 kfrmID  � // /�1/�0/  ��//�.
�/ 
docu/ �//  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac/ �//  h e P L p E 6 e f I E
�0 kfrmID  � // /�-/�,/  ��+/�*
�+ 
docu/ �//  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac/ �//  i 8 w s v O n 4 C 5 a
�, kfrmID  � // /�)/�(/  ��'/�&
�' 
docu/ �//  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac/ �//  p y 6 f I h 3 6 _ B u
�( kfrmID  � / /  /!�%/"�$/!  ��#/#�"
�# 
docu/# �/$/$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac/" �/%/%  l z N X 4 r I S r b w
�$ kfrmID  � /&/& /'�!/(� /'  ��/)�
� 
docu/) �/*/*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac/( �/+/+  g g D I v v D J y 8 4
�  kfrmID  � /,/, /-�/.�/-  ��//�
� 
docu// �/0/0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/. �/1/1  b F 1 W b e C 5 o e t
� kfrmID  � /2/2 /3�/4�/3  ��/5�
� 
docu/5 �/6/6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/4 �/7/7  n J d x Z o _ m g K g
� kfrmID  � /8/8 /9�/:�/9  ��/;�
� 
docu/; �/</<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/: �/=/=  l d A C A o 9 o i - Q
� kfrmID  � />/> /?�/@�/?  ��/A�
� 
docu/A �/B/B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/@ �/C/C  b U F J o o J L P y f
� kfrmID  � /D/D /E�/F�/E  ��/G�

� 
docu/G �/H/H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac/F �/I/I  d i F p b y u Q j M C
� kfrmID  � /J/J /K�	/L�/K  ��/M�
� 
docu/M �/N/N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac/L �/O/O  g l Y V e K e w f 1 n
� kfrmID  � /P/P /Q�/R�/Q  ��/S�
� 
docu/S �/T/T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/R �/U/U  b R c 0 Y g x Z H K -
� kfrmID  � /V/V /W�/X� /W  ���/Y��
�� 
docu/Y �/Z/Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac/X �/[/[  l U t q J P 5 Y 7 3 S
�  kfrmID  � /\/\ /]��/^��/]  ���/_��
�� 
docu/_ �/`/`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/^ �/a/a  k p g a 5 W M i G q w
�� kfrmID  � /b/b /c��/d��/c  ���/e��
�� 
docu/e �/f/f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/d �/g/g  l I D L a 4 B 3 _ w U
�� kfrmID  � /h/h /i��/j��/i  ���/k��
�� 
docu/k �/l/l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/j �/m/m  o s 6 f I N U 4 X f Z
�� kfrmID  � /n/n /o��/p��/o  ���/q��
�� 
docu/q �/r/r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/p �/s/s  i f 9 Z J V M B p K T
�� kfrmID  � /t/t /u��/v��/u  ���/w��
�� 
docu/w �/x/x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/v �/y/y  m S 7 m g 0 h s q i 0
�� kfrmID  � /z/z /{��/|��/{  ���/}��
�� 
docu/} �/~/~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/| �//  n _ 7 w 3 4 U Q 1 u H
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  j f F I g 3 _ J 4 k N
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  b P m 9 e a k 8 0 B Z
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  m b 6 _ l z S Y q K 3
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  j y P T x D g I 2 D G
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  e x f d v O R r m k A
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  j g n o p q b R P C r
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  d _ - U t 1 a l J Y Q
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  j i s i 7 5 3 Q E 5 l
�� kfrmID  � /�/� /���/���/�  ���/���
�� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac/� �/�/�  n d R p 0 9 a 4 0 3 P
�� kfrmID  � /�/� /���/���/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac/� �/�/�  h g X b 8 0 k w 3 L Y
�� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  g l c h H x 4 t c p b
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  f b r B S 9 L S R p b
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  e W f N W a q u 0 9 8
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  a Y 3 U T Q f a b i 7
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  l T z p w a 9 J m - z
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  p A r B u M d j h D q
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  m r f 3 a v f n o 7 P
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  h O L O u F f S q O m
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  d j p F - J U h B s q
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  c F D k 9 j Q T U m 9
� kfrmID  � /�/� /��/��/�  ��/��
� 
docu/� �/�/�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac/� �/�/�  d a Z e m 0 I R x j P
� kfrmID  � /�/� /��0 �/�  ��0�
� 
docu0 �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0  �00  b r b S i U t Y 0 t x
� kfrmID  � 00 0�0�0  ��0�
� 
docu0 �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0 �0	0	  b l 6 7 F C 6 s c 6 V
� kfrmID  � 0
0
 0�0�0  ��0�
� 
docu0 �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0 �00  k 5 C S n 7 U v v Z t
� kfrmID  � 00 0�0�0  ��0�
� 
docu0 �00  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0 �00  e J L T r 3 R g q G L
� kfrmID  � 00 0�0�0  ��0�~
� 
docu0 �00  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac0 �00  l d k P B g j Y a B 9
� kfrmID  � 00 0�}0�|0  ��{0�z
�{ 
docu0 �0 0   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac0 �0!0!  h I D I K X z o y l 6
�| kfrmID  � 0"0" 0#�y0$�x0#  ��w0%�v
�w 
docu0% �0&0&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac0$ �0'0'  h p j e Z N J Y 1 K K
�x kfrmID  � 0(0( 0)�u0*�t0)  ��s0+�r
�s 
docu0+ �0,0,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac0* �0-0-  l 8 U W w 7 N 6 p S n
�t kfrmID  � 0.0. 0/�q00�p0/  ��o01�n
�o 
docu01 �0202  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac00 �0303  e Q 5 G g f F P q T X
�p kfrmID  � 0404 05�m06�l05  ��k07�j
�k 
docu07 �0808  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac06 �0909  l y a l L a d I - - K
�l kfrmID  � 0:0: 0;�i0<�h0;  ��g0=�f
�g 
docu0= �0>0>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac0< �0?0?  k Y W k O a X V g Q 9
�h kfrmID  � 0@0@ 0A�e0B�d0A  ��c0C�b
�c 
docu0C �0D0D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac0B �0E0E  m Y u u z i H I A 9 7
�d kfrmID  � 0F0F 0G�a0H�`0G  ��_0I�^
�_ 
docu0I �0J0J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac0H �0K0K  b H U M 9 4 X Q x a S
�` kfrmID  � 0L0L 0M�]0N�\0M  ��[0O�Z
�[ 
docu0O �0P0P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac0N �0Q0Q  e x P D e F t V Y A T
�\ kfrmID  � 0R0R 0S�Y0T�X0S  ��W0U�V
�W 
docu0U �0V0V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac0T �0W0W  k 0 z G 3 8 b 5 e C 2
�X kfrmID  � 0X0X 0Y�U0Z�T0Y  ��S0[�R
�S 
docu0[ �0\0\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac0Z �0]0]  n V 8 K p b c U p s I
�T kfrmID  � 0^0^ 0_�Q0`�P0_  ��O0a�N
�O 
docu0a �0b0b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac0` �0c0c  k d 5 C I r B L c 7 7
�P kfrmID  � 0d0d 0e�M0f�L0e  ��K0g�J
�K 
docu0g �0h0h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac0f �0i0i  e P R 7 I n h Y Z 2 J
�L kfrmID  � 0j0j 0k�I0l�H0k  ��G0m�F
�G 
docu0m �0n0n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac0l �0o0o  c a g C P S F l a z W
�H kfrmID  � 0p0p 0q�E0r�D0q  ��C0s�B
�C 
docu0s �0t0t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac0r �0u0u  j M X n p 3 2 I q E _
�D kfrmID  � 0v0v 0w�A0x�@0w  ��?0y�>
�? 
docu0y �0z0z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac0x �0{0{  i u K 8 4 f Q S L O W
�@ kfrmID  � 0|0| 0}�=0~�<0}  ��;0�:
�; 
docu0 �0�0�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac0~ �0�0�  g n 0 Q n N F h 9 p O
�< kfrmID  � 0�0� 0��90��80�  ��70��6
�7 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac0� �0�0�  k O Z e a 5 X q e B D
�8 kfrmID  � 0�0� 0��50��40�  ��30��2
�3 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac0� �0�0�  o 7 T 7 w K 2 l c a A
�4 kfrmID  � 0�0� 0��10��00�  ��/0��.
�/ 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac0� �0�0�  f 4 u k 5 8 s G 9 O -
�0 kfrmID  � 0�0� 0��-0��,0�  ��+0��*
�+ 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac0� �0�0�  k H p d v 0 j k 6 1 r
�, kfrmID  � 0�0� 0��)0��(0�  ��'0��&
�' 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac0� �0�0�  e L t d K - f K M S z
�( kfrmID  � 0�0� 0��%0��$0�  ��#0��"
�# 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac0� �0�0�  d P s Z X j e 7 I L s
�$ kfrmID  � 0�0� 0��!0�� 0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac0� �0�0�  j 1 D s b 8 K 2 m h 6
�  kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0� �0�0�  i o a U _ l n i j V q
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0� �0�0�  i o p _ 9 l l L A _ E
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0� �0�0�  b x M l Y K G u f 0 Q
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0� �0�0�  c w Z K x 0 6 X Z t u
� kfrmID  � 0�0� 0��0��0�  ��0��

� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac0� �0�0�  h H u B a Z 7 T _ 0 _
� kfrmID  � 0�0� 0��	0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac0� �0�0�  b T 4 9 R c m 4 Y y f
� kfrmID  � 0�0� 0��0��0�  ��0��
� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac0� �0�0�  f T a X C h g H d m E
� kfrmID  � 0�0� 0��0�� 0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac0� �0�0�  o C 7 6 A 3 E g U 0 _
�  kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  f C A J 9 c 1 z X Z Y
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  p 4 W u s D u P 4 I A
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  i U n 1 Q B f W R H W
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  c v u F 4 w T O m d Q
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  l f F r l J M r z m -
�� kfrmID  � 0�0� 0���0���0�  ���0���
�� 
docu0� �0�0�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac0� �0�0�  j S 6 b f 3 M F f 8 G
�� kfrmID  � 1 1  1��1��1  ���1��
�� 
docu1 �11  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1 �11  f D F F X 0 r t N e N
�� kfrmID  � 11 1��1��1  ���1	��
�� 
docu1	 �1
1
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1 �11  i j _ d 5 O U W Q w j
�� kfrmID  � 11 1��1��1  ���1��
�� 
docu1 �11  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1 �11  m k q O d A r 5 f U w
�� kfrmID  � 11 1��1��1  ���1��
�� 
docu1 �11  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1 �11  l l j v X H A D t M D
�� kfrmID  � 11 1��1��1  ���1��
�� 
docu1 �11  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1 �11  i A 8 I J t O Z v 1 2
�� kfrmID  � 11 1��1 ��1  ���1!��
�� 
docu1! �1"1"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1  �1#1#  f m p a a I a Y o L 7
�� kfrmID  � 1$1$ 1%��1&��1%  ���1'��
�� 
docu1' �1(1(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1& �1)1)  k h T Q n p P _ N L v
�� kfrmID  � 1*1* 1+��1,��1+  ���1-��
�� 
docu1- �1.1.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac1, �1/1/  c 0 1 f 4 t y j y x V
�� kfrmID  � 1010 11��12��11  ���13��
�� 
docu13 �1414  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac12 �1515  g 9 p R i 9 _ W f P a
�� kfrmID  � 1616 17��18��17  ��19�
� 
docu19 �1:1:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac18 �1;1;  m n m T I V j J h s Z
�� kfrmID    1<1< 1=�1>�1=  ��1?�
� 
docu1? �1@1@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1> �1A1A  d R a m G g K 8 A B O
� kfrmID   1B1B 1C�1D�1C  ��1E�
� 
docu1E �1F1F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1D �1G1G  c i Q w R j 2 2 b z U
� kfrmID   1H1H 1I�1J�1I  ��1K�
� 
docu1K �1L1L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1J �1M1M  g 0 G S f w W 2 h g I
� kfrmID   1N1N 1O�1P�1O  ��1Q�
� 
docu1Q �1R1R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1P �1S1S  e z 3 h x v I X u w w
� kfrmID   1T1T 1U�1V�1U  ��1W�
� 
docu1W �1X1X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1V �1Y1Y  g T E b K Z p 9 g Y 1
� kfrmID   1Z1Z 1[�1\�1[  ��1]�
� 
docu1] �1^1^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1\ �1_1_  p V C 5 _ m n g x P o
� kfrmID   1`1` 1a�1b�1a  ��1c�
� 
docu1c �1d1d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1b �1e1e  f O g g Y x K S X p O
� kfrmID   1f1f 1g�1h�1g  ��1i�
� 
docu1i �1j1j  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1h �1k1k  n 7 M 2 q 8 Q C X 1 y
� kfrmID   1l1l 1m�1n�1m  ��1o�
� 
docu1o �1p1p  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1n �1q1q  l L x 8 8 V 5 G b T 8
� kfrmID  	 1r1r 1s�1t�1s  ��1u�
� 
docu1u �1v1v  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1t �1w1w  j 0 C X r 5 s _ 7 m D
� kfrmID  
 1x1x 1y�1z�1y  ��1{�
� 
docu1{ �1|1|  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1z �1}1}  b G h i P m O m O Q 6
� kfrmID   1~1~ 1�1��1  ��1��
� 
docu1� �1�1�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1� �1�1�  k Z u L e P G i g n o
� kfrmID   1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1� �1�1�  c 0 Y 5 j 0 B _ S F 2
� kfrmID   1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1� �1�1�  i F C m b G P k D 7 x
� kfrmID   1�1� 1��1��1�  ��1��
� 
docu1� �1�1�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac1� �1�1�  p h 4 E o n a c b x g
� kfrmID   1�1� 1��1��1�  ��1��~
� 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac1� �1�1�  d Y N k u y 0 O v E T
� kfrmID   1�1� 1��}1��|1�  ��{1��z
�{ 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac1� �1�1�  c R z a Y G q b B L h
�| kfrmID   1�1� 1��y1��x1�  ��w1��v
�w 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac1� �1�1�  p M G Y p V x 4 I M 5
�x kfrmID   1�1� 1��u1��t1�  ��s1��r
�s 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac1� �1�1�  h p s 8 R A X B d B h
�t kfrmID   1�1� 1��q1��p1�  ��o1��n
�o 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac1� �1�1�  d l T R Z Z m X 6 1 H
�p kfrmID   1�1� 1��m1��l1�  ��k1��j
�k 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac1� �1�1�  p e g u U W M w X y 9
�l kfrmID   1�1� 1��i1��h1�  ��g1��f
�g 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac1� �1�1�  l i t e w 3 7 i I W R
�h kfrmID   1�1� 1��e1��d1�  ��c1��b
�c 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac1� �1�1�  c x D e E h g S z 9 m
�d kfrmID   1�1� 1��a1��`1�  ��_1��^
�_ 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac1� �1�1�  j e l s C g z Q r s e
�` kfrmID   1�1� 1��]1��\1�  ��[1��Z
�[ 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac1� �1�1�  k d E O f t N W r p O
�\ kfrmID   1�1� 1��Y1��X1�  ��W1��V
�W 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac1� �1�1�  k 5 W 2 l 5 V o 8 B Z
�X kfrmID   1�1� 1��U1��T1�  ��S1��R
�S 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac1� �1�1�  h Y r 0 g M j P h - V
�T kfrmID   1�1� 1��Q1��P1�  ��O1��N
�O 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac1� �1�1�  p Z j E P P c a L g o
�P kfrmID   1�1� 1��M1��L1�  ��K1��J
�K 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac1� �1�1�  f e j Q B p X S 6 S T
�L kfrmID   1�1� 1��I1��H1�  ��G1��F
�G 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac1� �1�1�  o t F V f _ 9 I g f -
�H kfrmID   1�1� 1��E1��D1�  ��C1��B
�C 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac1� �1�1�  f M y C J G K l O g m
�D kfrmID   1�1� 1��A1��@1�  ��?1��>
�? 
docu1� �1�1�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac1� �1�1�  e y o 0 Q q B G 9 I 1
�@ kfrmID    1�1� 1��=1��<1�  ��;1��:
�; 
docu1� �2 2   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac1� �22  p p z j x E l R 0 X S
�< kfrmID  ! 22 2�92�82  ��72�6
�7 
docu2 �22  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac2 �22  o m I c q w k a i J j
�8 kfrmID  " 22 2	�52
�42	  ��32�2
�3 
docu2 �22  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac2
 �22  a N G 9 O s P P j m k
�4 kfrmID  # 22 2�12�02  ��/2�.
�/ 
docu2 �22  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac2 �22  d y 0 m S s H h n 3 z
�0 kfrmID  $ 22 2�-2�,2  ��+2�*
�+ 
docu2 �22  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac2 �22  g W T 6 O 0 1 d f 1 y
�, kfrmID  % 22 2�)2�(2  ��'2�&
�' 
docu2 �22  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac2 �22  o z s i a g c s J e 7
�( kfrmID  & 2 2  2!�%2"�$2!  ��#2#�"
�# 
docu2# �2$2$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac2" �2%2%  c v S W w I y Z 5 W 0
�$ kfrmID  ' 2&2& 2'�!2(� 2'  ��2)�
� 
docu2) �2*2*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac2( �2+2+  h h n q d x c s 5 z l
�  kfrmID  ( 2,2, 2-�2.�2-  ��2/�
� 
docu2/ �2020  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2. �2121  p q y r R D n j E G 8
� kfrmID  ) 2222 23�24�23  ��25�
� 
docu25 �2626  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac24 �2727  f h k C h d m E b k W
� kfrmID  * 2828 29�2:�29  ��2;�
� 
docu2; �2<2<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2: �2=2=  d O e p j l C I K r -
� kfrmID  + 2>2> 2?�2@�2?  ��2A�
� 
docu2A �2B2B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2@ �2C2C  d 8 w B 9 z r X 1 J W
� kfrmID  , 2D2D 2E�2F�2E  ��2G�

� 
docu2G �2H2H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac2F �2I2I  h n U F 4 t L Y n f y
� kfrmID  - 2J2J 2K�	2L�2K  ��2M�
� 
docu2M �2N2N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac2L �2O2O  o M C 2 y J I 5 W v _
� kfrmID  . 2P2P 2Q�2R�2Q  ��2S�
� 
docu2S �2T2T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2R �2U2U  h _ H b Y E I 5 o 4 z
� kfrmID  / 2V2V 2W�2X� 2W  ���2Y��
�� 
docu2Y �2Z2Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac2X �2[2[  p g 5 8 L i h d u Z m
�  kfrmID  0 2\2\ 2]��2^��2]  ���2_��
�� 
docu2_ �2`2`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2^ �2a2a  c E C y U B A a o c F
�� kfrmID  1 2b2b 2c��2d��2c  ���2e��
�� 
docu2e �2f2f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2d �2g2g  a U h W C f m W F a 7
�� kfrmID  2 2h2h 2i��2j��2i  ���2k��
�� 
docu2k �2l2l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2j �2m2m  c 7 H 9 D d f U 8 s x
�� kfrmID  3 2n2n 2o��2p��2o  ���2q��
�� 
docu2q �2r2r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2p �2s2s  n m Z u d G a T T 6 y
�� kfrmID  4 2t2t 2u��2v��2u  ���2w��
�� 
docu2w �2x2x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2v �2y2y  i k M w N K I j y n r
�� kfrmID  5 2z2z 2{��2|��2{  ���2}��
�� 
docu2} �2~2~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2| �22  l P w Q p i M h V C p
�� kfrmID  6 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  l R P - V z g S v Q c
�� kfrmID  7 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  c a 1 r x B f i B d t
�� kfrmID  8 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  j T o U e 8 k C 4 0 E
�� kfrmID  9 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  d d e 4 g W 7 y c _ w
�� kfrmID  : 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  i r M z B E k W Q v V
�� kfrmID  ; 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  k L x T K v R t S 5 3
�� kfrmID  < 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  i S n N s 9 B B v a u
�� kfrmID  = 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  o P e s 4 u b k R G V
�� kfrmID  > 2�2� 2���2���2�  ���2���
�� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac2� �2�2�  k Q y 7 a k U i B 5 i
�� kfrmID  ? 2�2� 2���2���2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac2� �2�2�  f u r a E M L w P 3 v
�� kfrmID  @ 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  a f E r T 8 x Z n x 3
� kfrmID  A 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  b t _ O p t u G w u g
� kfrmID  B 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  m o L W w n e n L k 0
� kfrmID  C 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  f y U j _ 5 L S v Y O
� kfrmID  D 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  d W g K Y Y W 4 2 0 G
� kfrmID  E 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  h 7 M i m w J z Y x 6
� kfrmID  F 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  l m 2 7 L k u t r q b
� kfrmID  G 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  k U f w P u u u 2 q 3
� kfrmID  H 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  n a r N y U h j L g V
� kfrmID  I 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  a S d 8 M Q o 1 E L C
� kfrmID  J 2�2� 2��2��2�  ��2��
� 
docu2� �2�2�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac2� �2�2�  n _ E N t O b r R S j
� kfrmID  K 2�2� 2��3 �2�  ��3�
� 
docu3 �33  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3  �33  o Q B 6 8 h G X Z 4 l
� kfrmID  L 33 3�3�3  ��3�
� 
docu3 �33  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3 �3	3	  g d s - Z l E I y N n
� kfrmID  M 3
3
 3�3�3  ��3�
� 
docu3 �33  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3 �33  g x b K f M 4 S 8 M Q
� kfrmID  N 33 3�3�3  ��3�
� 
docu3 �33  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3 �33  g 9 6 f V m n i N 1 n
� kfrmID  O 33 3�3�3  ��3�~
� 
docu3 �33  c E S 1 6 A v c 6 U j
�~ kfrmID  
� 
FCac3 �33  b l v S e c P i X a j
� kfrmID  P 33 3�}3�|3  ��{3�z
�{ 
docu3 �3 3   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac3 �3!3!  i M q j p 4 9 j n u U
�| kfrmID  Q 3"3" 3#�y3$�x3#  ��w3%�v
�w 
docu3% �3&3&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac3$ �3'3'  n p P g H 0 M L B W h
�x kfrmID  R 3(3( 3)�u3*�t3)  ��s3+�r
�s 
docu3+ �3,3,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac3* �3-3-  b Y j R o z 7 z 2 c b
�t kfrmID  S 3.3. 3/�q30�p3/  ��o31�n
�o 
docu31 �3232  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac30 �3333  o 5 w j x G 3 N I s Z
�p kfrmID  T 3434 35�m36�l35  ��k37�j
�k 
docu37 �3838  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac36 �3939  j C Y S i - N M w j Y
�l kfrmID  U 3:3: 3;�i3<�h3;  ��g3=�f
�g 
docu3= �3>3>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac3< �3?3?  n J _ j r u _ n 4 V 6
�h kfrmID  V 3@3@ 3A�e3B�d3A  ��c3C�b
�c 
docu3C �3D3D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac3B �3E3E  g u V T r M u 4 U I p
�d kfrmID  W 3F3F 3G�a3H�`3G  ��_3I�^
�_ 
docu3I �3J3J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac3H �3K3K  j a U O g A 6 - M U P
�` kfrmID  X 3L3L 3M�]3N�\3M  ��[3O�Z
�[ 
docu3O �3P3P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac3N �3Q3Q  o - n j U o u J D 9 s
�\ kfrmID  Y 3R3R 3S�Y3T�X3S  ��W3U�V
�W 
docu3U �3V3V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac3T �3W3W  d B 2 z 5 4 m O O Z F
�X kfrmID  Z 3X3X 3Y�U3Z�T3Y  ��S3[�R
�S 
docu3[ �3\3\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac3Z �3]3]  j d v e q R H 8 G l j
�T kfrmID  [ 3^3^ 3_�Q3`�P3_  ��O3a�N
�O 
docu3a �3b3b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac3` �3c3c  o m b 7 F k 1 e H M a
�P kfrmID  \ 3d3d 3e�M3f�L3e  ��K3g�J
�K 
docu3g �3h3h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac3f �3i3i  g a 2 b L M 1 S r C a
�L kfrmID  ] 3j3j 3k�I3l�H3k  ��G3m�F
�G 
docu3m �3n3n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac3l �3o3o  d n Z c q J E 3 Q b r
�H kfrmID  ^ 3p3p 3q�E3r�D3q  ��C3s�B
�C 
docu3s �3t3t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac3r �3u3u  g K 0 v I j C s K t W
�D kfrmID  _ 3v3v 3w�A3x�@3w  ��?3y�>
�? 
docu3y �3z3z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac3x �3{3{  e Z 4 K u z a U o 0 j
�@ kfrmID  ` 3|3| 3}�=3~�<3}  ��;3�:
�; 
docu3 �3�3�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac3~ �3�3�  b M X a 4 u m B Y 0 H
�< kfrmID  a 3�3� 3��93��83�  ��73��6
�7 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac3� �3�3�  f H _ t z Q u d 4 6 o
�8 kfrmID  b 3�3� 3��53��43�  ��33��2
�3 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac3� �3�3�  p a 1 A s c 5 v e q V
�4 kfrmID  c 3�3� 3��13��03�  ��/3��.
�/ 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac3� �3�3�  a X J g E w i 0 s g 7
�0 kfrmID  d 3�3� 3��-3��,3�  ��+3��*
�+ 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac3� �3�3�  p 4 4 G V q g y r F t
�, kfrmID  e 3�3� 3��)3��(3�  ��'3��&
�' 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac3� �3�3�  j s m z h j m j w M 2
�( kfrmID  f 3�3� 3��%3��$3�  ��#3��"
�# 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac3� �3�3�  j k F f t L 4 g 9 p h
�$ kfrmID  g 3�3� 3��!3�� 3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac3� �3�3�  e b P w 2 l N y d F A
�  kfrmID  h 3�3� 3��3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3� �3�3�  k h v d D J g l K Z P
� kfrmID  i 3�3� 3��3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3� �3�3�  d b _ j K w 2 T C C 3
� kfrmID  j 3�3� 3��3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3� �3�3�  j y W P y V P A 0 H n
� kfrmID  k 3�3� 3��3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3� �3�3�  d p D x t U F f d C U
� kfrmID  l 3�3� 3��3��3�  ��3��

� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac3� �3�3�  g o G T G U 4 d W D Q
� kfrmID  m 3�3� 3��	3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac3� �3�3�  j g m O y l 4 H D Q 7
� kfrmID  n 3�3� 3��3��3�  ��3��
� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac3� �3�3�  b V p e 9 e p c - _ h
� kfrmID  o 3�3� 3��3�� 3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac3� �3�3�  k p e h T m 4 8 H a s
�  kfrmID  p 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  i c 4 X K h u h 8 _ E
�� kfrmID  q 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  h G s s O 4 P 2 1 R Y
�� kfrmID  r 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  b a Z 2 9 Q W C P H 4
�� kfrmID  s 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  b V Z 1 W N 2 C f u l
�� kfrmID  t 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  c M 4 p u n i 1 s 5 g
�� kfrmID  u 3�3� 3���3���3�  ���3���
�� 
docu3� �3�3�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac3� �3�3�  a H M p a v r f D r E
�� kfrmID  v 4 4  4��4��4  ���4��
�� 
docu4 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4 �44  d w Y f y y f s m N h
�� kfrmID  w 44 4��4��4  ���4	��
�� 
docu4	 �4
4
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4 �44  h c K f e 1 X i q a K
�� kfrmID  x 44 4��4��4  ���4��
�� 
docu4 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4 �44  e H T K Q p 1 s h r x
�� kfrmID  y 44 4��4��4  ���4��
�� 
docu4 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4 �44  h 8 R m 7 Z F Y D 8 j
�� kfrmID  z 44 4��4��4  ���4��
�� 
docu4 �44  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4 �44  j t p 0 0 m b 5 9 B p
�� kfrmID  { 44 4��4 ��4  ���4!��
�� 
docu4! �4"4"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4  �4#4#  h x H 0 r O 9 r j R O
�� kfrmID  | 4$4$ 4%��4&��4%  ���4'��
�� 
docu4' �4(4(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4& �4)4)  l V 9 j U I k o _ B n
�� kfrmID  } 4*4* 4+��4,��4+  ���4-��
�� 
docu4- �4.4.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4, �4/4/  p - z 8 z j O 4 N V Z
�� kfrmID  ~ 4040 41��42��41  ���43��
�� 
docu43 �4444  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac42 �4545  a H S R 2 y N S h s A
�� kfrmID   4646 47��48��47  ��49�
� 
docu49 �4:4:  c E S 1 6 A v c 6 U j
� kfrmID  
�� 
FCac48 �4;4;  o 3 n J j n f l J m N
�� kfrmID  � 4<4< 4=�4>�4=  ��4?�
� 
docu4? �4@4@  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4> �4A4A  m o 9 A F r Q 6 B H d
� kfrmID  � 4B4B 4C�4D�4C  ��4E�
� 
docu4E �4F4F  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4D �4G4G  g H l - P L n T v 1 x
� kfrmID  � 4H4H 4I�4J�4I  ��4K�
� 
docu4K �4L4L  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4J �4M4M  f P _ J x s 6 j C H y
� kfrmID  � 4N4N 4O�4P�4O  ��4Q�
� 
docu4Q �4R4R  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4P �4S4S  i l l s b L z 1 2 _ s
� kfrmID  � 4T4T 4U�4V�4U  ��4W�
� 
docu4W �4X4X  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4V �4Y4Y  e Z A N 3 Z u F V t k
� kfrmID  � 4Z4Z 4[�4\�4[  ��4]�
� 
docu4] �4^4^  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4\ �4_4_  c 0 L D Y J S 4 R n S
� kfrmID  � 4`4` 4a�4b�4a  ��4c�
� 
docu4c �4d4d  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac4b �4e4e  g X C Y P x 8 a e v J
� kfrmID  � 4f4f 4g�4h�4g  ���4i��
�� 
docu4i �4j4j  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac4h �4k4k  i p d n Y B L e i d t
� kfrmID  � 4l4l 4m��4n��4m  ���4o��
�� 
docu4o �4p4p  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4n �4q4q  n 3 S e 4 e f t b 7 p
�� kfrmID  � 4r4r 4s��4t��4s  ���4u��
�� 
docu4u �4v4v  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4t �4w4w  a H k 3 x y N 9 4 Y C
�� kfrmID  � 4x4x 4y��4z��4y  ���4{��
�� 
docu4{ �4|4|  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4z �4}4}  c E 0 X i r l m c 6 x
�� kfrmID  � 4~4~ 4��4���4  ���4���
�� 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4� �4�4�  l p - C c i m A B - R
�� kfrmID  � 4�4� 4���4���4�  ���4���
�� 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4� �4�4�  h x s o F k r w 8 Y E
�� kfrmID  � 4�4� 4���4���4�  ���4���
�� 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4� �4�4�  m Y h 5 W W x Q H D V
�� kfrmID  � 4�4� 4���4���4�  ���4���
�� 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac4� �4�4�  k M g b W c o 7 a W c
�� kfrmID  � 4�4� 4���4���4�  ��4��~
� 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�~ kfrmID  
�� 
FCac4� �4�4�  c p 4 c D 8 g Y m z 6
�� kfrmID  � 4�4� 4��}4��|4�  ��{4��z
�{ 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac4� �4�4�  k f g N Y p H z p t 7
�| kfrmID  � 4�4� 4��y4��x4�  ��w4��v
�w 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac4� �4�4�  b x t V f B j Y U b T
�x kfrmID  � 4�4� 4��u4��t4�  ��s4��r
�s 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac4� �4�4�  b k W l h b p 8 Q F 1
�t kfrmID  � 4�4� 4��q4��p4�  ��o4��n
�o 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac4� �4�4�  m S i B 2 d R Y f _ s
�p kfrmID  � 4�4� 4��m4��l4�  ��k4��j
�k 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac4� �4�4�  b c t p F W g m x C l
�l kfrmID  � 4�4� 4��i4��h4�  ��g4��f
�g 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac4� �4�4�  m A Q Q u p 4 5 o c _
�h kfrmID  � 4�4� 4��e4��d4�  ��c4��b
�c 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac4� �4�4�  k b J g E b Z 4 h h 2
�d kfrmID  � 4�4� 4��a4��`4�  ��_4��^
�_ 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac4� �4�4�  b L m c Y L S A a o v
�` kfrmID  � 4�4� 4��]4��\4�  ��[4��Z
�[ 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac4� �4�4�  j 1 u J 1 W r U y Y n
�\ kfrmID  � 4�4� 4��Y4��X4�  ��W4��V
�W 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac4� �4�4�  b 9 0 7 9 X O N o 1 o
�X kfrmID  � 4�4� 4��U4��T4�  ��S4��R
�S 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac4� �4�4�  i Q m p Q x B D 0 2 T
�T kfrmID  � 4�4� 4��Q4��P4�  ��O4��N
�O 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac4� �4�4�  p T P S V 9 R u 7 I 1
�P kfrmID  � 4�4� 4��M4��L4�  ��K4��J
�K 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac4� �4�4�  g x z g b 3 Q I d s q
�L kfrmID  � 4�4� 4��I4��H4�  ��G4��F
�G 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac4� �4�4�  i - 4 q W g l s j h x
�H kfrmID  � 4�4� 4��E4��D4�  ��C4��B
�C 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac4� �4�4�  o y D b v 4 C o c v W
�D kfrmID  � 4�4� 4��A4��@4�  ��?4��>
�? 
docu4� �4�4�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac4� �4�4�  k O 4 6 l i - X Y 8 4
�@ kfrmID  � 4�4� 4��=4��<4�  ��;4��:
�; 
docu4� �5 5   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac4� �55  g o t S B b k 5 l F v
�< kfrmID  � 55 5�95�85  ��75�6
�7 
docu5 �55  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac5 �55  n R T H N h q r 0 _ X
�8 kfrmID  � 55 5	�55
�45	  ��35�2
�3 
docu5 �55  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac5
 �55  c w P x z G Z 6 I U 0
�4 kfrmID  � 55 5�15�05  ��/5�.
�/ 
docu5 �55  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac5 �55  k g O S M c f U I f z
�0 kfrmID  � 55 5�-5�,5  ��+5�*
�+ 
docu5 �55  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac5 �55  d D v C k Y 4 W w K r
�, kfrmID  � 55 5�)5�(5  ��'5�&
�' 
docu5 �55  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac5 �55  g x g J Q D L h U e G
�( kfrmID  � 5 5  5!�%5"�$5!  ��#5#�"
�# 
docu5# �5$5$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac5" �5%5%  l E s S 8 z K 2 d 3 v
�$ kfrmID  � 5&5& 5'�!5(� 5'  ��5)�
� 
docu5) �5*5*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac5( �5+5+  g N 9 m 7 a S 6 N n h
�  kfrmID  � 5,5, 5-�5.�5-  ��5/�
� 
docu5/ �5050  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac5. �5151  p E X U D F o j P C l
� kfrmID  � 5252 53�54�53  ��55�
� 
docu55 �5656  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac54 �5757  j o M d u X X h M - l
� kfrmID  � 5858 59�5:�59  ��5;�
� 
docu5; �5<5<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac5: �5=5=  h 5 1 v 3 t Z - k r a
� kfrmID  � 5>5> 5?�5@�5?  ��5A�
� 
docu5A �5B5B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac5@ �5C5C  g g 2 7 _ B J p 5 6 a
� kfrmID  � 5D5D 5E�5F�5E  ��5G�

� 
docu5G �5H5H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac5F �5I5I  m k s i 8 v m V v t x
� kfrmID  � 5J5J 5K�	5L�5K  ��5M�
� 
docu5M �5N5N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac5L �5O5O  l z E n n S M a W P z
� kfrmID  � 5P5P 5Q�5R�5Q  ��5S�
� 
docu5S �5T5T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac5R �5U5U  b K N r W h 7 u 4 U N
� kfrmID  � 5V5V 5W�5X� 5W  ���5Y��
�� 
docu5Y �5Z5Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac5X �5[5[  d J T W e q c Z y l u
�  kfrmID  � 5\5\ 5]��5^��5]  ���5_��
�� 
docu5_ �5`5`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5^ �5a5a  m V E a Z W V 6 t k I
�� kfrmID  � 5b5b 5c��5d��5c  ���5e��
�� 
docu5e �5f5f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5d �5g5g  j K 3 I 3 K g 7 1 P c
�� kfrmID  � 5h5h 5i��5j��5i  ���5k��
�� 
docu5k �5l5l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5j �5m5m  l R 2 D y t C G i 5 e
�� kfrmID  � 5n5n 5o��5p��5o  ���5q��
�� 
docu5q �5r5r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5p �5s5s  p H z A 0 B A _ x Y k
�� kfrmID  � 5t5t 5u��5v��5u  ���5w��
�� 
docu5w �5x5x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5v �5y5y  n B k 7 P 8 d 0 Z t t
�� kfrmID  � 5z5z 5{��5|��5{  ���5}��
�� 
docu5} �5~5~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5| �55  k d T C c w T m 0 y K
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  j - Y t A 7 8 l 7 N P
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  h 7 G t J B z v U h p
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  e Z H G I R F U i h f
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  b 2 V C 5 4 p j M N W
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  i s 0 8 x U V i H x q
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  g 6 c e V Y y A e G c
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  h M L H 4 f 3 s e P 6
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  j C b 4 K R k b d B 9
�� kfrmID  � 5�5� 5���5���5�  ���5���
�� 
docu5� �5�5�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac5� �5�5�  h m p M q a J O Z O 3
�� kfrmID  � 5�5� 5���5���5�  �߿5�߾
߿ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
߾ kfrmID  
�� 
FCac5� �5�5�  c O D O _ L _ - h t 6
�� kfrmID  � 5�5� 5�߽5�߼5�  �߻5�ߺ
߻ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߺ kfrmID  
߽ 
FCac5� �5�5�  d O n C t M Z P B k E
߼ kfrmID  � 5�5� 5�߹5�߸5�  �߷5�߶
߷ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
߶ kfrmID  
߹ 
FCac5� �5�5�  f x N X V B r w N f k
߸ kfrmID  � 5�5� 5�ߵ5�ߴ5�  �߳5�߲
߳ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
߲ kfrmID  
ߵ 
FCac5� �5�5�  n e 9 q w f O d B O z
ߴ kfrmID  � 5�5� 5�߱5�߰5�  �߯5�߮
߯ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
߮ kfrmID  
߱ 
FCac5� �5�5�  c m C q e i 1 _ W S F
߰ kfrmID  � 5�5� 5�߭5�߬5�  �߫5�ߪ
߫ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߪ kfrmID  
߭ 
FCac5� �5�5�  l 7 t B 6 X m D r 7 f
߬ kfrmID  � 5�5� 5�ߩ5�ߨ5�  �ߧ5�ߦ
ߧ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߦ kfrmID  
ߩ 
FCac5� �5�5�  e 9 Q 2 M L k P Q 6 S
ߨ kfrmID  � 5�5� 5�ߥ5�ߤ5�  �ߣ5�ߢ
ߣ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߢ kfrmID  
ߥ 
FCac5� �5�5�  b 2 x 7 D F t D H 5 0
ߤ kfrmID  � 5�5� 5�ߡ5�ߠ5�  �ߟ5�ߞ
ߟ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߞ kfrmID  
ߡ 
FCac5� �5�5�  b z y g q E - T R H z
ߠ kfrmID  � 5�5� 5�ߝ5�ߜ5�  �ߛ5�ߚ
ߛ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߚ kfrmID  
ߝ 
FCac5� �5�5�  f 0 t c 5 f h P B 5 Y
ߜ kfrmID  � 5�5� 5�ߙ5�ߘ5�  �ߗ5�ߖ
ߗ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߖ kfrmID  
ߙ 
FCac5� �5�5�  n e u N 2 o z E X x N
ߘ kfrmID  � 5�5� 5�ߕ5�ߔ5�  �ߓ5�ߒ
ߓ 
docu5� �5�5�  c E S 1 6 A v c 6 U j
ߒ kfrmID  
ߕ 
FCac5� �5�5�  m 1 W 1 0 8 u 6 f h l
ߔ kfrmID  � 5�5� 5�ߑ6 ߐ5�  �ߏ6ߎ
ߏ 
docu6 �66  c E S 1 6 A v c 6 U j
ߎ kfrmID  
ߑ 
FCac6  �66  a 5 i J T x M v m X O
ߐ kfrmID  � 66 6ߍ6ߌ6  �ߋ6ߊ
ߋ 
docu6 �66  c E S 1 6 A v c 6 U j
ߊ kfrmID  
ߍ 
FCac6 �6	6	  l M e N 8 K Z y V J d
ߌ kfrmID  � 6
6
 6߉6߈6  �߇6߆
߇ 
docu6 �66  c E S 1 6 A v c 6 U j
߆ kfrmID  
߉ 
FCac6 �66  p b q N _ U u C X Y X
߈ kfrmID  � 66 6߅6߄6  �߃6߂
߃ 
docu6 �66  c E S 1 6 A v c 6 U j
߂ kfrmID  
߅ 
FCac6 �66  h 1 6 1 w P 6 X 1 n c
߄ kfrmID  � 66 6߁6߀6  ��6�~
� 
docu6 �66  c E S 1 6 A v c 6 U j
�~ kfrmID  
߁ 
FCac6 �66  g G X a b S b n P a q
߀ kfrmID  � 66 6�}6�|6  ��{6�z
�{ 
docu6 �6 6   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac6 �6!6!  g B 7 B U _ r L p T 2
�| kfrmID  � 6"6" 6#�y6$�x6#  ��w6%�v
�w 
docu6% �6&6&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac6$ �6'6'  h Y G c C H l Q T a -
�x kfrmID  � 6(6( 6)�u6*�t6)  ��s6+�r
�s 
docu6+ �6,6,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac6* �6-6-  f j j u K K r u 2 4 b
�t kfrmID  � 6.6. 6/�q60�p6/  ��o61�n
�o 
docu61 �6262  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac60 �6363  c u h 5 e - q G F Q F
�p kfrmID  � 6464 65�m66�l65  ��k67�j
�k 
docu67 �6868  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac66 �6969  i E C r 4 _ l F x A g
�l kfrmID  � 6:6: 6;�i6<�h6;  ��g6=�f
�g 
docu6= �6>6>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac6< �6?6?  a M v 9 C u V 9 8 r L
�h kfrmID  � 6@6@ 6A�e6B�d6A  ��c6C�b
�c 
docu6C �6D6D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac6B �6E6E  j L 4 j u a s 2 f F _
�d kfrmID  � 6F6F 6G�a6H�`6G  ��_6I�^
�_ 
docu6I �6J6J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac6H �6K6K  i C B W s B 9 7 I v T
�` kfrmID  � 6L6L 6M�]6N�\6M  ��[6O�Z
�[ 
docu6O �6P6P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac6N �6Q6Q  i t B H q S P X T J D
�\ kfrmID  � 6R6R 6S�Y6T�X6S  ��W6U�V
�W 
docu6U �6V6V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac6T �6W6W  h n G 1 a V B C g Y d
�X kfrmID  � 6X6X 6Y�U6Z�T6Y  ��S6[�R
�S 
docu6[ �6\6\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac6Z �6]6]  c E k V - p i y B D C
�T kfrmID  � 6^6^ 6_�Q6`�P6_  ��O6a�N
�O 
docu6a �6b6b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac6` �6c6c  i 7 q g H t 6 A k R 3
�P kfrmID  � 6d6d 6e�M6f�L6e  ��K6g�J
�K 
docu6g �6h6h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac6f �6i6i  o w M X t s Y S p w f
�L kfrmID  � 6j6j 6k�I6l�H6k  ��G6m�F
�G 
docu6m �6n6n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac6l �6o6o  n o l k 2 Q 9 z 3 z A
�H kfrmID  � 6p6p 6q�E6r�D6q  ��C6s�B
�C 
docu6s �6t6t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac6r �6u6u  o S i e g M k 9 7 W j
�D kfrmID  � 6v6v 6w�A6x�@6w  ��?6y�>
�? 
docu6y �6z6z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac6x �6{6{  k z r r f S 8 d V b q
�@ kfrmID  � 6|6| 6}�=6~�<6}  ��;6�:
�; 
docu6 �6�6�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac6~ �6�6�  k 9 T S b U i m 8 G d
�< kfrmID  � 6�6� 6��96��86�  ��76��6
�7 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac6� �6�6�  l b T _ s T y g o i v
�8 kfrmID  � 6�6� 6��56��46�  ��36��2
�3 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac6� �6�6�  p f K X s k X q v 1 O
�4 kfrmID  � 6�6� 6��16��06�  ��/6��.
�/ 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac6� �6�6�  f t Q x 8 Z D A X Z i
�0 kfrmID  � 6�6� 6��-6��,6�  ��+6��*
�+ 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac6� �6�6�  n G A N t g 6 d 2 3 q
�, kfrmID  � 6�6� 6��)6��(6�  ��'6��&
�' 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac6� �6�6�  e i T E z p h c - U m
�( kfrmID  � 6�6� 6��%6��$6�  ��#6��"
�# 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac6� �6�6�  o X N 2 b 9 m k D C K
�$ kfrmID  � 6�6� 6��!6�� 6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac6� �6�6�  j s v 1 t Z O E B R C
�  kfrmID  � 6�6� 6��6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac6� �6�6�  l O F 2 p k w i d b S
� kfrmID  � 6�6� 6��6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac6� �6�6�  p I I M k T r k 4 O B
� kfrmID  � 6�6� 6��6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac6� �6�6�  p _ E t D Q Z 8 _ Q z
� kfrmID  � 6�6� 6��6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac6� �6�6�  b Z R c _ a H c H i F
� kfrmID  � 6�6� 6��6��6�  ��6��

� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac6� �6�6�  p s 3 9 H M A 2 B e 9
� kfrmID  � 6�6� 6��	6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac6� �6�6�  h v j S p o g t Y d 3
� kfrmID  � 6�6� 6��6��6�  ��6��
� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac6� �6�6�  c Z m s o V Q j P 2 8
� kfrmID  � 6�6� 6��6�� 6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac6� �6�6�  e _ x y 1 P _ M 5 R z
�  kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  n 5 7 9 w X 0 M D K 0
�� kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  l x _ 6 2 8 x 5 G R q
�� kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  n e y J f Q k 5 L o y
�� kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  k 2 o E n L K F Y 2 h
�� kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  l 0 K S y P 3 8 H X N
�� kfrmID  � 6�6� 6���6���6�  ���6���
�� 
docu6� �6�6�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac6� �6�6�  j E i 5 3 P g u r h p
�� kfrmID  � 7 7  7��7��7  ���7��
�� 
docu7 �77  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7 �77  i k l F S b Z L 0 7 Q
�� kfrmID  � 77 7��7��7  ���7	��
�� 
docu7	 �7
7
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7 �77  b Z d w q I 5 v - n R
�� kfrmID  � 77 7��7��7  ���7��
�� 
docu7 �77  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7 �77  c J 9 J G v d I 5 D 0
�� kfrmID  � 77 7��7��7  ���7��
�� 
docu7 �77  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7 �77  d 9 M R J n M F 7 V T
�� kfrmID  � 77 7��7��7  ���7��
�� 
docu7 �77  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7 �77  c 2 a M N i Y o y 4 9
�� kfrmID  � 77 7��7 ��7  ���7!��
�� 
docu7! �7"7"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7  �7#7#  g j 9 t 0 m m Y K A a
�� kfrmID  � 7$7$ 7%��7&��7%  ���7'��
�� 
docu7' �7(7(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7& �7)7)  n p E 2 X k y J - h P
�� kfrmID  � 7*7* 7+��7,��7+  ���7-��
�� 
docu7- �7.7.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac7, �7/7/  h 7 U R G A i o L 7 e
�� kfrmID  � 7070 71��72��71  ���73��
�� 
docu73 �7474  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac72 �7575  a h c P m - 7 A y C U
�� kfrmID  � 7676 77��78��77  �޿79޾
޿ 
docu79 �7:7:  c E S 1 6 A v c 6 U j
޾ kfrmID  
�� 
FCac78 �7;7;  d I f W - 7 b U B w e
�� kfrmID    7<7< 7=޽7>޼7=  �޻7?޺
޻ 
docu7? �7@7@  c E S 1 6 A v c 6 U j
޺ kfrmID  
޽ 
FCac7> �7A7A  l Y Y O i _ A f Z M a
޼ kfrmID   7B7B 7C޹7D޸7C  �޷7E޶
޷ 
docu7E �7F7F  c E S 1 6 A v c 6 U j
޶ kfrmID  
޹ 
FCac7D �7G7G  k U s W G I l O L z b
޸ kfrmID   7H7H 7I޵7J޴7I  �޳7K޲
޳ 
docu7K �7L7L  c E S 1 6 A v c 6 U j
޲ kfrmID  
޵ 
FCac7J �7M7M  f 9 n f Q k X I U t 7
޴ kfrmID   7N7N 7Oޱ7Pް7O  �ޯ7Qޮ
ޯ 
docu7Q �7R7R  c E S 1 6 A v c 6 U j
ޮ kfrmID  
ޱ 
FCac7P �7S7S  o z I F 0 3 R h j v v
ް kfrmID   7T7T 7Uޭ7Vެ7U  �ޫ7Wު
ޫ 
docu7W �7X7X  c E S 1 6 A v c 6 U j
ު kfrmID  
ޭ 
FCac7V �7Y7Y  g N 0 T T i w 4 r b t
ެ kfrmID   7Z7Z 7[ީ7\ި7[  �ާ7]ަ
ާ 
docu7] �7^7^  c E S 1 6 A v c 6 U j
ަ kfrmID  
ީ 
FCac7\ �7_7_  l g 2 r X h N d a 1 J
ި kfrmID   7`7` 7aޥ7bޤ7a  �ޣ7cޢ
ޣ 
docu7c �7d7d  c E S 1 6 A v c 6 U j
ޢ kfrmID  
ޥ 
FCac7b �7e7e  n s _ 7 L a T Y 9 e 1
ޤ kfrmID   7f7f 7gޡ7hޠ7g  �ޟ7iޞ
ޟ 
docu7i �7j7j  c E S 1 6 A v c 6 U j
ޞ kfrmID  
ޡ 
FCac7h �7k7k  e e y u I C B 8 z J -
ޠ kfrmID   7l7l 7mޝ7nޜ7m  �ޛ7oޚ
ޛ 
docu7o �7p7p  c E S 1 6 A v c 6 U j
ޚ kfrmID  
ޝ 
FCac7n �7q7q  c 0 D I f 4 9 B n S v
ޜ kfrmID  	 7r7r 7sޙ7tޘ7s  �ޗ7uޖ
ޗ 
docu7u �7v7v  c E S 1 6 A v c 6 U j
ޖ kfrmID  
ޙ 
FCac7t �7w7w  i 2 N 4 q L A b A r H
ޘ kfrmID  
 7x7x 7yޕ7zޔ7y  �ޓ7{ޒ
ޓ 
docu7{ �7|7|  c E S 1 6 A v c 6 U j
ޒ kfrmID  
ޕ 
FCac7z �7}7}  l 9 R 4 9 X K t V 9 E
ޔ kfrmID   7~7~ 7ޑ7�ސ7  �ޏ7�ގ
ޏ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
ގ kfrmID  
ޑ 
FCac7� �7�7�  e R i H b P n R t K B
ސ kfrmID   7�7� 7�ލ7�ތ7�  �ދ7�ފ
ދ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
ފ kfrmID  
ލ 
FCac7� �7�7�  d L 1 x d O y 8 c b 7
ތ kfrmID   7�7� 7�މ7�ވ7�  �އ7�ކ
އ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
ކ kfrmID  
މ 
FCac7� �7�7�  c e P 0 g D 5 2 2 D r
ވ kfrmID   7�7� 7�ޅ7�ބ7�  �ރ7�ނ
ރ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
ނ kfrmID  
ޅ 
FCac7� �7�7�  k y u C 2 L J 7 z b q
ބ kfrmID   7�7� 7�ށ7�ހ7�  ��7��~
� 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�~ kfrmID  
ށ 
FCac7� �7�7�  n P z G B 6 h 8 H H V
ހ kfrmID   7�7� 7��}7��|7�  ��{7��z
�{ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac7� �7�7�  e Z d L A c G A Y b 8
�| kfrmID   7�7� 7��y7��x7�  ��w7��v
�w 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac7� �7�7�  c 1 w f m i m N B 9 1
�x kfrmID   7�7� 7��u7��t7�  ��s7��r
�s 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac7� �7�7�  b l F a b 5 x b v 0 Z
�t kfrmID   7�7� 7��q7��p7�  ��o7��n
�o 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac7� �7�7�  b M 3 X v t 0 G D m U
�p kfrmID   7�7� 7��m7��l7�  ��k7��j
�k 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac7� �7�7�  k c o P 7 U R H 6 y w
�l kfrmID   7�7� 7��i7��h7�  ��g7��f
�g 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac7� �7�7�  c m 3 D M _ f p T D t
�h kfrmID   7�7� 7��e7��d7�  ��c7��b
�c 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac7� �7�7�  j B e W m w K q A H x
�d kfrmID   7�7� 7��a7��`7�  ��_7��^
�_ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac7� �7�7�  h l a G N m F t m F t
�` kfrmID   7�7� 7��]7��\7�  ��[7��Z
�[ 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac7� �7�7�  i 4 - S o Q A K s U j
�\ kfrmID   7�7� 7��Y7��X7�  ��W7��V
�W 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac7� �7�7�  f v 6 E N s 7 T Z v N
�X kfrmID   7�7� 7��U7��T7�  ��S7��R
�S 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac7� �7�7�  a G e r y Z U - D e 0
�T kfrmID   7�7� 7��Q7��P7�  ��O7��N
�O 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac7� �7�7�  o o F p B 0 S C U 2 l
�P kfrmID   7�7� 7��M7��L7�  ��K7��J
�K 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac7� �7�7�  k T V i d F C c s L J
�L kfrmID   7�7� 7��I7��H7�  ��G7��F
�G 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac7� �7�7�  d 3 z U T u k r g m c
�H kfrmID   7�7� 7��E7��D7�  ��C7��B
�C 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac7� �7�7�  b M 6 V - S m S f U P
�D kfrmID   7�7� 7��A7��@7�  ��?7��>
�? 
docu7� �7�7�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac7� �7�7�  i j p X d J s 2 t 4 W
�@ kfrmID    7�7� 7��=7��<7�  ��;7��:
�; 
docu7� �8 8   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac7� �88  j 8 G M Z - w 7 E S 6
�< kfrmID  ! 88 8�98�88  ��78�6
�7 
docu8 �88  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac8 �88  c E s y y 0 x x N T j
�8 kfrmID  " 88 8	�58
�48	  ��38�2
�3 
docu8 �88  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac8
 �88  n U D 6 p W - g x U e
�4 kfrmID  # 88 8�18�08  ��/8�.
�/ 
docu8 �88  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac8 �88  n Z _ p w l L 4 o J D
�0 kfrmID  $ 88 8�-8�,8  ��+8�*
�+ 
docu8 �88  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac8 �88  p p R P v Z 2 g p u 0
�, kfrmID  % 88 8�)8�(8  ��'8�&
�' 
docu8 �88  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac8 �88  m a Q G Q D b p V B W
�( kfrmID  & 8 8  8!�%8"�$8!  ��#8#�"
�# 
docu8# �8$8$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac8" �8%8%  p g f n J T 1 h L 3 4
�$ kfrmID  ' 8&8& 8'�!8(� 8'  ��8)�
� 
docu8) �8*8*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac8( �8+8+  o q L _ a q M i R C c
�  kfrmID  ( 8,8, 8-�8.�8-  ��8/�
� 
docu8/ �8080  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac8. �8181  k Y t Z L q K 2 e 9 i
� kfrmID  ) 8282 83�84�83  ��85�
� 
docu85 �8686  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac84 �8787  c m N m D b Q H - 9 M
� kfrmID  * 8888 89�8:�89  ��8;�
� 
docu8; �8<8<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac8: �8=8=  h f t g m U f E u N x
� kfrmID  + 8>8> 8?�8@�8?  ��8A�
� 
docu8A �8B8B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac8@ �8C8C  h H f k N h b m W _ H
� kfrmID  , 8D8D 8E�8F�8E  ��8G�

� 
docu8G �8H8H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac8F �8I8I  c k H N T A L l B u L
� kfrmID  - 8J8J 8K�	8L�8K  ��8M�
� 
docu8M �8N8N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac8L �8O8O  l M W i N W f d u n p
� kfrmID  . 8P8P 8Q�8R�8Q  ��8S�
� 
docu8S �8T8T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac8R �8U8U  k X l q D b A Z L n h
� kfrmID  / 8V8V 8W�8X� 8W  ���8Y��
�� 
docu8Y �8Z8Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac8X �8[8[  g L N 4 5 N Z V A H D
�  kfrmID  0 8\8\ 8]��8^��8]  ���8_��
�� 
docu8_ �8`8`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8^ �8a8a  p J P k W 6 Z g - O U
�� kfrmID  1 8b8b 8c��8d��8c  ���8e��
�� 
docu8e �8f8f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8d �8g8g  n Y 8 y U 9 K R B i r
�� kfrmID  2 8h8h 8i��8j��8i  ���8k��
�� 
docu8k �8l8l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8j �8m8m  b H K _ v 6 d A y O a
�� kfrmID  3 8n8n 8o��8p��8o  ���8q��
�� 
docu8q �8r8r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8p �8s8s  b 8 p a b v c W t Y B
�� kfrmID  4 8t8t 8u��8v��8u  ���8w��
�� 
docu8w �8x8x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8v �8y8y  c Q d 4 B S a g n t v
�� kfrmID  5 8z8z 8{��8|��8{  ���8}��
�� 
docu8} �8~8~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8| �88  m p _ U _ N 2 m I 8 j
�� kfrmID  6 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  h v 0 i D C i B F o l
�� kfrmID  7 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  d n X v u - V R M W 9
�� kfrmID  8 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  a s T f p z H _ v W -
�� kfrmID  9 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  m g B B C i O X U h L
�� kfrmID  : 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  p t 6 8 m 0 d w V b c
�� kfrmID  ; 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  k N X g I i 2 9 N 4 P
�� kfrmID  < 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  a e 8 U B 1 8 f O a g
�� kfrmID  = 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  h s G o g 4 k d S y z
�� kfrmID  > 8�8� 8���8���8�  ���8���
�� 
docu8� �8�8�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac8� �8�8�  k m G D 6 - Q y K t O
�� kfrmID  ? 8�8� 8���8���8�  �ݿ8�ݾ
ݿ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݾ kfrmID  
�� 
FCac8� �8�8�  o j 9 w h - u y o d E
�� kfrmID  @ 8�8� 8�ݽ8�ݼ8�  �ݻ8�ݺ
ݻ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݺ kfrmID  
ݽ 
FCac8� �8�8�  j 1 d C Z R b J H T h
ݼ kfrmID  A 8�8� 8�ݹ8�ݸ8�  �ݷ8�ݶ
ݷ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݶ kfrmID  
ݹ 
FCac8� �8�8�  p N 3 t y W 0 l C J G
ݸ kfrmID  B 8�8� 8�ݵ8�ݴ8�  �ݳ8�ݲ
ݳ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݲ kfrmID  
ݵ 
FCac8� �8�8�  h Y 8 g v h X P s 9 w
ݴ kfrmID  C 8�8� 8�ݱ8�ݰ8�  �ݯ8�ݮ
ݯ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݮ kfrmID  
ݱ 
FCac8� �8�8�  h G O y T M T m z B v
ݰ kfrmID  D 8�8� 8�ݭ8�ݬ8�  �ݫ8�ݪ
ݫ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݪ kfrmID  
ݭ 
FCac8� �8�8�  e S 6 1 M - 3 v z a P
ݬ kfrmID  E 8�8� 8�ݩ8�ݨ8�  �ݧ8�ݦ
ݧ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݦ kfrmID  
ݩ 
FCac8� �8�8�  j T V z i y G 9 E A z
ݨ kfrmID  F 8�8� 8�ݥ8�ݤ8�  �ݣ8�ݢ
ݣ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݢ kfrmID  
ݥ 
FCac8� �8�8�  k J k F A E r 8 A a x
ݤ kfrmID  G 8�8� 8�ݡ8�ݠ8�  �ݟ8�ݞ
ݟ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݞ kfrmID  
ݡ 
FCac8� �8�8�  o J x 5 A I c S u d H
ݠ kfrmID  H 8�8� 8�ݝ8�ݜ8�  �ݛ8�ݚ
ݛ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݚ kfrmID  
ݝ 
FCac8� �8�8�  n A l 6 l X V - 9 X J
ݜ kfrmID  I 8�8� 8�ݙ8�ݘ8�  �ݗ8�ݖ
ݗ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݖ kfrmID  
ݙ 
FCac8� �8�8�  b y Y 9 h I T B 5 k 7
ݘ kfrmID  J 8�8� 8�ݕ8�ݔ8�  �ݓ8�ݒ
ݓ 
docu8� �8�8�  c E S 1 6 A v c 6 U j
ݒ kfrmID  
ݕ 
FCac8� �8�8�  g Q a w g 8 s d C r d
ݔ kfrmID  K 8�8� 8�ݑ9 ݐ8�  �ݏ9ݎ
ݏ 
docu9 �99  c E S 1 6 A v c 6 U j
ݎ kfrmID  
ݑ 
FCac9  �99  k R 6 0 F z 6 R M s V
ݐ kfrmID  L 99 9ݍ9݌9  �݋9݊
݋ 
docu9 �99  c E S 1 6 A v c 6 U j
݊ kfrmID  
ݍ 
FCac9 �9	9	  b l w A x v a A l C c
݌ kfrmID  M 9
9
 9݉9݈9  �݇9݆
݇ 
docu9 �99  c E S 1 6 A v c 6 U j
݆ kfrmID  
݉ 
FCac9 �99  m R s 5 M X F H g u n
݈ kfrmID  N 99 9݅9݄9  �݃9݂
݃ 
docu9 �99  c E S 1 6 A v c 6 U j
݂ kfrmID  
݅ 
FCac9 �99  g G B R A j m d 3 P p
݄ kfrmID  O 99 9݁9݀9  ��9�~
� 
docu9 �99  c E S 1 6 A v c 6 U j
�~ kfrmID  
݁ 
FCac9 �99  b 1 0 H s v O m 8 6 m
݀ kfrmID  P 99 9�}9�|9  ��{9�z
�{ 
docu9 �9 9   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac9 �9!9!  p X n 7 b 7 M _ w E T
�| kfrmID  Q 9"9" 9#�y9$�x9#  ��w9%�v
�w 
docu9% �9&9&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac9$ �9'9'  d D 1 U i 5 9 o B E W
�x kfrmID  R 9(9( 9)�u9*�t9)  ��s9+�r
�s 
docu9+ �9,9,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac9* �9-9-  e M Q 6 W p z z a e k
�t kfrmID  S 9.9. 9/�q90�p9/  ��o91�n
�o 
docu91 �9292  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac90 �9393  l N m u U Z - 5 j v X
�p kfrmID  T 9494 95�m96�l95  ��k97�j
�k 
docu97 �9898  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac96 �9999  j d D a 0 D r 6 _ j K
�l kfrmID  U 9:9: 9;�i9<�h9;  ��g9=�f
�g 
docu9= �9>9>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac9< �9?9?  n f F E N Y 5 V A c 6
�h kfrmID  V 9@9@ 9A�e9B�d9A  ��c9C�b
�c 
docu9C �9D9D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac9B �9E9E  o y 7 U e 5 u R X E 5
�d kfrmID  W 9F9F 9G�a9H�`9G  ��_9I�^
�_ 
docu9I �9J9J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac9H �9K9K  m G r n c p g X f O I
�` kfrmID  X 9L9L 9M�]9N�\9M  ��[9O�Z
�[ 
docu9O �9P9P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac9N �9Q9Q  o 5 T X A 1 n 8 i c b
�\ kfrmID  Y 9R9R 9S�Y9T�X9S  ��W9U�V
�W 
docu9U �9V9V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac9T �9W9W  f g 1 c 4 Q Q B K Q g
�X kfrmID  Z 9X9X 9Y�U9Z�T9Y  ��S9[�R
�S 
docu9[ �9\9\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac9Z �9]9]  i z n x g 6 5 t n y Q
�T kfrmID  [ 9^9^ 9_�Q9`�P9_  ��O9a�N
�O 
docu9a �9b9b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac9` �9c9c  f q k j b I 7 o 1 S Q
�P kfrmID  \ 9d9d 9e�M9f�L9e  ��K9g�J
�K 
docu9g �9h9h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac9f �9i9i  b b M I B o 7 y S q t
�L kfrmID  ] 9j9j 9k�I9l�H9k  ��G9m�F
�G 
docu9m �9n9n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac9l �9o9o  i 1 N i 4 s a z t - S
�H kfrmID  ^ 9p9p 9q�E9r�D9q  ��C9s�B
�C 
docu9s �9t9t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac9r �9u9u  f r 0 u - S p B n B O
�D kfrmID  _ 9v9v 9w�A9x�@9w  ��?9y�>
�? 
docu9y �9z9z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac9x �9{9{  k p E i I Q n c q 1 s
�@ kfrmID  ` 9|9| 9}�=9~�<9}  ��;9�:
�; 
docu9 �9�9�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac9~ �9�9�  o q _ q 8 y i w 8 r U
�< kfrmID  a 9�9� 9��99��89�  ��79��6
�7 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac9� �9�9�  c z M 3 N c s b Z d R
�8 kfrmID  b 9�9� 9��59��49�  ��39��2
�3 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac9� �9�9�  i a i l 5 s d Z _ S 5
�4 kfrmID  c 9�9� 9��19��09�  ��/9��.
�/ 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac9� �9�9�  j R w j 0 a C 5 b Z B
�0 kfrmID  d 9�9� 9��-9��,9�  ��+9��*
�+ 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac9� �9�9�  j p Z U c Y E I 4 Y 8
�, kfrmID  e 9�9� 9��)9��(9�  ��'9��&
�' 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac9� �9�9�  o D V S 4 Y 3 S 6 J U
�( kfrmID  f 9�9� 9��%9��$9�  ��#9��"
�# 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac9� �9�9�  g m p 2 o a n Z M t Q
�$ kfrmID  g 9�9� 9��!9�� 9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac9� �9�9�  k B k I - c I C d t o
�  kfrmID  h 9�9� 9��9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac9� �9�9�  n 6 W g X G H s D 7 E
� kfrmID  i 9�9� 9��9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac9� �9�9�  j W - 4 C 1 E p N X g
� kfrmID  j 9�9� 9��9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac9� �9�9�  c e o 3 K 2 j X K J i
� kfrmID  k 9�9� 9��9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac9� �9�9�  b X d R R 7 v t H U T
� kfrmID  l 9�9� 9��9��9�  ��9��

� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac9� �9�9�  c n X g 8 u h f G y Z
� kfrmID  m 9�9� 9��	9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac9� �9�9�  i j v D F i q q H y A
� kfrmID  n 9�9� 9��9��9�  ��9��
� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac9� �9�9�  c c 0 j M t p O Z n V
� kfrmID  o 9�9� 9��9�� 9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac9� �9�9�  f 4 U _ c T L W g I W
�  kfrmID  p 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  i 0 F i e W O H f 7 9
�� kfrmID  q 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  n l C L 0 3 h d 1 n p
�� kfrmID  r 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  c f P O e u m o 4 A w
�� kfrmID  s 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  k l a 6 y T W z H 4 F
�� kfrmID  t 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  g 0 y t K 8 b C l n 2
�� kfrmID  u 9�9� 9���9���9�  ���9���
�� 
docu9� �9�9�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac9� �9�9�  e m 4 _ I D A 0 c p 6
�� kfrmID  v : :  :��:��:  ���:��
�� 
docu: �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac: �::  p p _ s a v E h z 5 y
�� kfrmID  w :: :��:��:  ���:	��
�� 
docu:	 �:
:
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac: �::  a V n U Q e 4 - z I V
�� kfrmID  x :: :��:��:  ���:��
�� 
docu: �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac: �::  g i x 2 f v 8 u g k u
�� kfrmID  y :: :��:��:  ���:��
�� 
docu: �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac: �::  e x s N j T d T o 1 o
�� kfrmID  z :: :��:��:  ���:��
�� 
docu: �::  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac: �::  k m s d 0 X x L W s T
�� kfrmID  { :: :��: ��:  ���:!��
�� 
docu:! �:":"  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac:  �:#:#  d _ F j i t R 7 v N Q
�� kfrmID  | :$:$ :%��:&��:%  ���:'��
�� 
docu:' �:(:(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac:& �:):)  f P y h d r y 6 t e g
�� kfrmID  } :*:* :+��:,��:+  ���:-��
�� 
docu:- �:.:.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac:, �:/:/  h 2 s 3 2 A z u p D Y
�� kfrmID  ~ :0:0 :1��:2��:1  ���:3��
�� 
docu:3 �:4:4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac:2 �:5:5  h A 0 A W c g W u d L
�� kfrmID   :6:6 :7��:8��:7  �ܿ:9ܾ
ܿ 
docu:9 �::::  c E S 1 6 A v c 6 U j
ܾ kfrmID  
�� 
FCac:8 �:;:;  a W k X - d p z 9 n W
�� kfrmID  � :<:< :=ܽ:>ܼ:=  �ܻ:?ܺ
ܻ 
docu:? �:@:@  c E S 1 6 A v c 6 U j
ܺ kfrmID  
ܽ 
FCac:> �:A:A  m S V H y 7 a j D v 8
ܼ kfrmID  � :B:B :Cܹ:Dܸ:C  �ܷ:Eܶ
ܷ 
docu:E �:F:F  c E S 1 6 A v c 6 U j
ܶ kfrmID  
ܹ 
FCac:D �:G:G  p e 5 v a i F w Q X z
ܸ kfrmID  � :H:H :Iܵ:Jܴ:I  �ܳ:Kܲ
ܳ 
docu:K �:L:L  c E S 1 6 A v c 6 U j
ܲ kfrmID  
ܵ 
FCac:J �:M:M  p r Z x o z Z S p - 3
ܴ kfrmID  � :N:N :Oܱ:Pܰ:O  �ܯ:Qܮ
ܯ 
docu:Q �:R:R  c E S 1 6 A v c 6 U j
ܮ kfrmID  
ܱ 
FCac:P �:S:S  c T n P v V E f N 5 j
ܰ kfrmID  � :T:T :Uܭ:Vܬ:U  �ܫ:Wܪ
ܫ 
docu:W �:X:X  c E S 1 6 A v c 6 U j
ܪ kfrmID  
ܭ 
FCac:V �:Y:Y  g h Q f k Q l o 6 g i
ܬ kfrmID  � :Z:Z :[ܩ:\ܨ:[  �ܧ:]ܦ
ܧ 
docu:] �:^:^  c E S 1 6 A v c 6 U j
ܦ kfrmID  
ܩ 
FCac:\ �:_:_  m B j k t e 7 p l L H
ܨ kfrmID  � :`:` :aܥ:bܤ:a  �ܣ:cܢ
ܣ 
docu:c �:d:d  c E S 1 6 A v c 6 U j
ܢ kfrmID  
ܥ 
FCac:b �:e:e  h 1 x Q e Y D G Q r x
ܤ kfrmID  � :f:f :gܡ:hܠ:g  �ܟ:iܞ
ܟ 
docu:i �:j:j  c E S 1 6 A v c 6 U j
ܞ kfrmID  
ܡ 
FCac:h �:k:k  j C A G R P t i 4 U M
ܠ kfrmID  � :l:l :mܝ:nܜ:m  �ܛ:oܚ
ܛ 
docu:o �:p:p  c E S 1 6 A v c 6 U j
ܚ kfrmID  
ܝ 
FCac:n �:q:q  n g q J T y l y Y 1 f
ܜ kfrmID  � :r:r :sܙ:tܘ:s  �ܗ:uܖ
ܗ 
docu:u �:v:v  c E S 1 6 A v c 6 U j
ܖ kfrmID  
ܙ 
FCac:t �:w:w  l r m e U z l J n 1 9
ܘ kfrmID  � :x:x :yܕ:zܔ:y  �ܓ:{ܒ
ܓ 
docu:{ �:|:|  c E S 1 6 A v c 6 U j
ܒ kfrmID  
ܕ 
FCac:z �:}:}  m _ P m L A R 6 M W 2
ܔ kfrmID  � :~:~ :ܑ:�ܐ:  �܏:�܎
܏ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
܎ kfrmID  
ܑ 
FCac:� �:�:�  p Q T f B j D Q _ O Y
ܐ kfrmID  � :�:� :�܍:�܌:�  �܋:�܊
܋ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
܊ kfrmID  
܍ 
FCac:� �:�:�  f Z M N 1 1 1 Y e N O
܌ kfrmID  � :�:� :�܉:�܈:�  �܇:�܆
܇ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
܆ kfrmID  
܉ 
FCac:� �:�:�  p 3 u - 2 w F Y A R U
܈ kfrmID  � :�:� :�܅:�܄:�  �܃:�܂
܃ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
܂ kfrmID  
܅ 
FCac:� �:�:�  p P K - X I F O 1 V a
܄ kfrmID  � :�:� :�܁:�܀:�  ��:��~
� 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�~ kfrmID  
܁ 
FCac:� �:�:�  d 3 C s K n 3 u 1 d r
܀ kfrmID  � :�:� :��}:��|:�  ��{:��z
�{ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac:� �:�:�  e S q 8 i 2 M v P I a
�| kfrmID  � :�:� :��y:��x:�  ��w:��v
�w 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac:� �:�:�  e B e a s n O X M _ J
�x kfrmID  � :�:� :��u:��t:�  ��s:��r
�s 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac:� �:�:�  o c F Y y - h t m M C
�t kfrmID  � :�:� :��q:��p:�  ��o:��n
�o 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac:� �:�:�  h Y s 8 p J M b P 8 K
�p kfrmID  � :�:� :��m:��l:�  ��k:��j
�k 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac:� �:�:�  f 7 k c Z 3 D p W G n
�l kfrmID  � :�:� :��i:��h:�  ��g:��f
�g 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac:� �:�:�  e X m b Z 7 V c 9 r G
�h kfrmID  � :�:� :��e:��d:�  ��c:��b
�c 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac:� �:�:�  h 1 z 6 z n i H l 6 _
�d kfrmID  � :�:� :��a:��`:�  ��_:��^
�_ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac:� �:�:�  m Y 6 j i Z X c x c K
�` kfrmID  � :�:� :��]:��\:�  ��[:��Z
�[ 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac:� �:�:�  d S v X o a m 5 l g l
�\ kfrmID  � :�:� :��Y:��X:�  ��W:��V
�W 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac:� �:�:�  h l - k 9 C p 0 l T C
�X kfrmID  � :�:� :��U:��T:�  ��S:��R
�S 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac:� �:�:�  c 9 x q w T n a x _ A
�T kfrmID  � :�:� :��Q:��P:�  ��O:��N
�O 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac:� �:�:�  g V E q O A 4 W 8 5 b
�P kfrmID  � :�:� :��M:��L:�  ��K:��J
�K 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac:� �:�:�  p - w S a w S 9 K U n
�L kfrmID  � :�:� :��I:��H:�  ��G:��F
�G 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac:� �:�:�  g q K d P 7 F 3 O W l
�H kfrmID  � :�:� :��E:��D:�  ��C:��B
�C 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac:� �:�:�  p F n v i R U V G M W
�D kfrmID  � :�:� :��A:��@:�  ��?:��>
�? 
docu:� �:�:�  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac:� �:�:�  l Q T Y N Z v l S e 2
�@ kfrmID  � :�:� :��=:��<:�  ��;:��:
�; 
docu:� �; ;   c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac:� �;;  o A 1 n 2 z S O O X b
�< kfrmID  � ;; ;�9;�8;  ��7;�6
�7 
docu; �;;  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac; �;;  p N N p u C o y s d A
�8 kfrmID  � ;; ;	�5;
�4;	  ��3;�2
�3 
docu; �;;  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac;
 �;;  g D h D 5 S 3 c o m W
�4 kfrmID  � ;; ;�1;�0;  ��/;�.
�/ 
docu; �;;  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac; �;;  b I 5 N W J U C J L T
�0 kfrmID  � ;; ;�-;�,;  ��+;�*
�+ 
docu; �;;  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac; �;;  a q z - _ 7 m 0 P L 3
�, kfrmID  � ;; ;�);�(;  ��';�&
�' 
docu; �;;  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac; �;;  b 9 5 R v p i u a 9 y
�( kfrmID  � ; ;  ;!�%;"�$;!  ��#;#�"
�# 
docu;# �;$;$  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac;" �;%;%  f m E 7 C L C t x i 5
�$ kfrmID  � ;&;& ;'�!;(� ;'  ��;)�
� 
docu;) �;*;*  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac;( �;+;+  a Q t b K p a 8 U 5 G
�  kfrmID  � ;,;, ;-�;.�;-  ��;/�
� 
docu;/ �;0;0  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac;. �;1;1  g n M n l 6 L W i S d
� kfrmID  � ;2;2 ;3�;4�;3  ��;5�
� 
docu;5 �;6;6  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac;4 �;7;7  d F C u u 8 b R 2 r x
� kfrmID  � ;8;8 ;9�;:�;9  ��;;�
� 
docu;; �;<;<  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac;: �;=;=  f f 3 T x c T J E t 0
� kfrmID  � ;>;> ;?�;@�;?  ��;A�
� 
docu;A �;B;B  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac;@ �;C;C  c k H u 6 3 w x p 9 D
� kfrmID  � ;D;D ;E�;F�;E  ��;G�

� 
docu;G �;H;H  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac;F �;I;I  j j P I x V _ h o d q
� kfrmID  � ;J;J ;K�	;L�;K  ��;M�
� 
docu;M �;N;N  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac;L �;O;O  k z T O _ s d H S J A
� kfrmID  � ;P;P ;Q�;R�;Q  ��;S�
� 
docu;S �;T;T  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac;R �;U;U  p j 2 i l x a 5 7 x _
� kfrmID  � ;V;V ;W�;X� ;W  ���;Y��
�� 
docu;Y �;Z;Z  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac;X �;[;[  k u e 3 A l b l v C 0
�  kfrmID  � ;\;\ ;]��;^��;]  ���;_��
�� 
docu;_ �;`;`  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;^ �;a;a  b q x x 5 Q h L 0 F D
�� kfrmID  � ;b;b ;c��;d��;c  ���;e��
�� 
docu;e �;f;f  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;d �;g;g  l m n C o I x 7 5 G m
�� kfrmID  � ;h;h ;i��;j��;i  ���;k��
�� 
docu;k �;l;l  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;j �;m;m  i s a v f u c D D p L
�� kfrmID  � ;n;n ;o��;p��;o  ���;q��
�� 
docu;q �;r;r  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;p �;s;s  i H G n H s n V j a C
�� kfrmID  � ;t;t ;u��;v��;u  ���;w��
�� 
docu;w �;x;x  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;v �;y;y  k H z F K r G a - K 0
�� kfrmID  � ;z;z ;{��;|��;{  ���;}��
�� 
docu;} �;~;~  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;| �;;  k M P j v 5 6 Y U d S
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  f V p _ C i f y q 6 u
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  l w d x U X U i B E z
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  i z U 8 t T p 0 6 S a
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  j X p p f b D q P C 1
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  c f f D O 2 B J 9 Q _
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  a j X G 4 f q 5 p q X
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  h b A 0 C G i g E c e
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  b k q p i x O j B D z
�� kfrmID  � ;�;� ;���;���;�  ���;���
�� 
docu;� �;�;�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac;� �;�;�  k G 7 5 C - D X S n a
�� kfrmID  � ;�;� ;���;���;�  �ۿ;�۾
ۿ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
۾ kfrmID  
�� 
FCac;� �;�;�  m s 8 b K P 9 d s s v
�� kfrmID  � ;�;� ;�۽;�ۼ;�  �ۻ;�ۺ
ۻ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۺ kfrmID  
۽ 
FCac;� �;�;�  n W C B R B 4 4 S U v
ۼ kfrmID  � ;�;� ;�۹;�۸;�  �۷;�۶
۷ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
۶ kfrmID  
۹ 
FCac;� �;�;�  l T 2 t 7 w F s L a y
۸ kfrmID  � ;�;� ;�۵;�۴;�  �۳;�۲
۳ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
۲ kfrmID  
۵ 
FCac;� �;�;�  m R U k a J S S F x y
۴ kfrmID  � ;�;� ;�۱;�۰;�  �ۯ;�ۮ
ۯ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۮ kfrmID  
۱ 
FCac;� �;�;�  l K q B I V q R o J f
۰ kfrmID  � ;�;� ;�ۭ;�۬;�  �۫;�۪
۫ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
۪ kfrmID  
ۭ 
FCac;� �;�;�  l 6 m v y 0 T X D I l
۬ kfrmID  � ;�;� ;�۩;�ۨ;�  �ۧ;�ۦ
ۧ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۦ kfrmID  
۩ 
FCac;� �;�;�  k S Y n a y k G 6 q A
ۨ kfrmID  � ;�;� ;�ۥ;�ۤ;�  �ۣ;�ۢ
ۣ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۢ kfrmID  
ۥ 
FCac;� �;�;�  k m 7 x 1 x 7 J A b c
ۤ kfrmID  � ;�;� ;�ۡ;�۠;�  �۟;�۞
۟ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
۞ kfrmID  
ۡ 
FCac;� �;�;�  i 0 H n n z F T - V J
۠ kfrmID  � ;�;� ;�۝;�ۜ;�  �ۛ;�ۚ
ۛ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۚ kfrmID  
۝ 
FCac;� �;�;�  c P y u V x 5 w D U U
ۜ kfrmID  � ;�;� ;�ۙ;�ۘ;�  �ۗ;�ۖ
ۗ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ۖ kfrmID  
ۙ 
FCac;� �;�;�  l T p 1 a 4 3 Z _ b A
ۘ kfrmID  � ;�;� ;�ە;�۔;�  �ۓ;�ے
ۓ 
docu;� �;�;�  c E S 1 6 A v c 6 U j
ے kfrmID  
ە 
FCac;� �;�;�  a O 6 a x _ Q T B _ l
۔ kfrmID  � ;�;� ;�ۑ< ې;�  �ۏ<ێ
ۏ 
docu< �<<  c E S 1 6 A v c 6 U j
ێ kfrmID  
ۑ 
FCac<  �<<  c g N S F _ V R z n 3
ې kfrmID  � << <ۍ<ی<  �ۋ<ۊ
ۋ 
docu< �<<  c E S 1 6 A v c 6 U j
ۊ kfrmID  
ۍ 
FCac< �<	<	  f a p d f N C x f s n
ی kfrmID  � <
<
 <ۉ<ۈ<  �ۇ<ۆ
ۇ 
docu< �<<  c E S 1 6 A v c 6 U j
ۆ kfrmID  
ۉ 
FCac< �<<  a w T I n 1 Q D v P e
ۈ kfrmID  � << <ۅ<ۄ<  �ۃ<ۂ
ۃ 
docu< �<<  c E S 1 6 A v c 6 U j
ۂ kfrmID  
ۅ 
FCac< �<<  h T _ M L 3 5 a K 3 d
ۄ kfrmID  � << <ہ<ۀ<  ��<�~
� 
docu< �<<  c E S 1 6 A v c 6 U j
�~ kfrmID  
ہ 
FCac< �<<  m E k n S _ P T Z y g
ۀ kfrmID  � << <�}<�|<  ��{<�z
�{ 
docu< �< <   c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac< �<!<!  k m x J O H E I J O -
�| kfrmID  � <"<" <#�y<$�x<#  ��w<%�v
�w 
docu<% �<&<&  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac<$ �<'<'  e c 8 D F E K _ m W M
�x kfrmID  � <(<( <)�u<*�t<)  ��s<+�r
�s 
docu<+ �<,<,  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac<* �<-<-  m p t f q D x i O s y
�t kfrmID  � <.<. </�q<0�p</  ��o<1�n
�o 
docu<1 �<2<2  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac<0 �<3<3  m Y 3 t s 9 S V r U _
�p kfrmID  � <4<4 <5�m<6�l<5  ��k<7�j
�k 
docu<7 �<8<8  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac<6 �<9<9  m r m l k V Z R w u K
�l kfrmID  � <:<: <;�i<<�h<;  ��g<=�f
�g 
docu<= �<><>  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac<< �<?<?  g 4 f s C R L x x 4 D
�h kfrmID  � <@<@ <A�e<B�d<A  ��c<C�b
�c 
docu<C �<D<D  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac<B �<E<E  i e f h z Q 6 I 7 8 k
�d kfrmID  � <F<F <G�a<H�`<G  ��_<I�^
�_ 
docu<I �<J<J  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac<H �<K<K  d O Z G - 6 T 3 g u S
�` kfrmID  � <L<L <M�]<N�\<M  ��[<O�Z
�[ 
docu<O �<P<P  c E S 1 6 A v c 6 U j
�Z kfrmID  
�] 
FCac<N �<Q<Q  g c p 7 k 7 l B L C 9
�\ kfrmID  � <R<R <S�Y<T�X<S  ��W<U�V
�W 
docu<U �<V<V  c E S 1 6 A v c 6 U j
�V kfrmID  
�Y 
FCac<T �<W<W  f l M 8 r d 0 d Y t F
�X kfrmID  � <X<X <Y�U<Z�T<Y  ��S<[�R
�S 
docu<[ �<\<\  c E S 1 6 A v c 6 U j
�R kfrmID  
�U 
FCac<Z �<]<]  c g y V j 0 V d C K X
�T kfrmID  � <^<^ <_�Q<`�P<_  ��O<a�N
�O 
docu<a �<b<b  c E S 1 6 A v c 6 U j
�N kfrmID  
�Q 
FCac<` �<c<c  k Y Q J V D k 3 q O n
�P kfrmID  � <d<d <e�M<f�L<e  ��K<g�J
�K 
docu<g �<h<h  c E S 1 6 A v c 6 U j
�J kfrmID  
�M 
FCac<f �<i<i  d 1 l o a U G p 3 c v
�L kfrmID  � <j<j <k�I<l�H<k  ��G<m�F
�G 
docu<m �<n<n  c E S 1 6 A v c 6 U j
�F kfrmID  
�I 
FCac<l �<o<o  n w Y g a 9 B Z 7 - d
�H kfrmID  � <p<p <q�E<r�D<q  ��C<s�B
�C 
docu<s �<t<t  c E S 1 6 A v c 6 U j
�B kfrmID  
�E 
FCac<r �<u<u  e - E L K A V n c b Z
�D kfrmID  � <v<v <w�A<x�@<w  ��?<y�>
�? 
docu<y �<z<z  c E S 1 6 A v c 6 U j
�> kfrmID  
�A 
FCac<x �<{<{  d p n - 2 - w 3 l 1 R
�@ kfrmID  � <|<| <}�=<~�<<}  ��;<�:
�; 
docu< �<�<�  c E S 1 6 A v c 6 U j
�: kfrmID  
�= 
FCac<~ �<�<�  c 5 4 J M X - Y I 9 J
�< kfrmID  � <�<� <��9<��8<�  ��7<��6
�7 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�6 kfrmID  
�9 
FCac<� �<�<�  a L z 4 0 v q _ A U R
�8 kfrmID  � <�<� <��5<��4<�  ��3<��2
�3 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�2 kfrmID  
�5 
FCac<� �<�<�  i e 4 O m X 8 V l d m
�4 kfrmID  � <�<� <��1<��0<�  ��/<��.
�/ 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�. kfrmID  
�1 
FCac<� �<�<�  a E P u v e x k C C s
�0 kfrmID  � <�<� <��-<��,<�  ��+<��*
�+ 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�* kfrmID  
�- 
FCac<� �<�<�  f V t - 9 S 8 T W E 0
�, kfrmID  � <�<� <��)<��(<�  ��'<��&
�' 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�& kfrmID  
�) 
FCac<� �<�<�  e _ R U v q y N p 8 s
�( kfrmID  � <�<� <��%<��$<�  ��#<��"
�# 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�" kfrmID  
�% 
FCac<� �<�<�  j u B r C F e l H t S
�$ kfrmID  � <�<� <��!<�� <�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
�! 
FCac<� �<�<�  k H u L N f x y g Z w
�  kfrmID  � <�<� <��<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac<� �<�<�  a f o S T m E H N 1 N
� kfrmID  � <�<� <��<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac<� �<�<�  h U 8 u r Z Y G g R e
� kfrmID  � <�<� <��<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac<� �<�<�  k I E T y I 6 w l A e
� kfrmID  � <�<� <��<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac<� �<�<�  k v W p 9 3 Q l X b f
� kfrmID  � <�<� <��<��<�  ��<��

� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�
 kfrmID  
� 
FCac<� �<�<�  f r a z l 9 V T B a 8
� kfrmID  � <�<� <��	<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
�	 
FCac<� �<�<�  d j Y N R y e p g M c
� kfrmID  � <�<� <��<��<�  ��<��
� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
� kfrmID  
� 
FCac<� �<�<�  p k g W 6 L d G u W v
� kfrmID  � <�<� <��<�� <�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
� 
FCac<� �<�<�  o L L - p x 4 S 8 H U
�  kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  n 9 v Y r 1 1 m N e M
�� kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  h P d K f J 9 p G 3 n
�� kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  m f - w 5 I 3 g H F a
�� kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  g e O T q 7 K O p y U
�� kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  e 0 L E i B 7 A - _ R
�� kfrmID  � <�<� <���<���<�  ���<���
�� 
docu<� �<�<�  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac<� �<�<�  g G g n u P u Z 2 o J
�� kfrmID  � = =  =��=��=  ���=��
�� 
docu= �==  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac= �==  e m h q N _ K P b x 2
�� kfrmID  � == =��=��=  ���=	��
�� 
docu=	 �=
=
  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac= �==  o x Y 0 u N h q 3 c I
�� kfrmID  � == =��=��=  ���=��
�� 
docu= �==  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac= �==  k x S y D g r g R D Z
�� kfrmID  � == =��=��=  ���=��
�� 
docu= �==  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac= �==  n 3 2 L R K U Q 0 P i
�� kfrmID  � == =��=��=  ���=��
�� 
docu= �==  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac= �==  n n W v n N X A L b T
�� kfrmID  � == =��= ��=  ���=!��
�� 
docu=! �="="  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac=  �=#=#  i C E 3 g Z V B r Q h
�� kfrmID  � =$=$ =%��=&��=%  ���='��
�� 
docu=' �=(=(  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac=& �=)=)  h Z 8 i 2 9 U n n _ l
�� kfrmID  � =*=* =+��=,��=+  ���=-��
�� 
docu=- �=.=.  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac=, �=/=/  c m c N b P a i T K a
�� kfrmID  � =0=0 =1��=2��=1  ���=3��
�� 
docu=3 �=4=4  c E S 1 6 A v c 6 U j
�� kfrmID  
�� 
FCac=2 �=5=5  g G G f i O R 2 v 4 5
�� kfrmID  � =6=6 =7��=8��=7  �ڿ=9ھ
ڿ 
docu=9 �=:=:  c E S 1 6 A v c 6 U j
ھ kfrmID  
�� 
FCac=8 �=;=;  l U 1 S U 5 M d 8 - I
�� kfrmID    =<=< ==ڽ=>ڼ==  �ڻ=?ں
ڻ 
docu=? �=@=@  c E S 1 6 A v c 6 U j
ں kfrmID  
ڽ 
FCac=> �=A=A  f 3 7 t a p w 7 C P t
ڼ kfrmID   =B=B =Cڹ=Dڸ=C  �ڷ=Eڶ
ڷ 
docu=E �=F=F  c E S 1 6 A v c 6 U j
ڶ kfrmID  
ڹ 
FCac=D �=G=G  l j H U G _ j a K 9 c
ڸ kfrmID   =H=H =Iڵ=Jڴ=I  �ڳ=Kڲ
ڳ 
docu=K �=L=L  c E S 1 6 A v c 6 U j
ڲ kfrmID  
ڵ 
FCac=J �=M=M  i k F a W A T P f w b
ڴ kfrmID   =N=N =Oڱ=Pڰ=O  �گ=Qڮ
گ 
docu=Q �=R=R  c E S 1 6 A v c 6 U j
ڮ kfrmID  
ڱ 
FCac=P �=S=S  d g 4 U i k m d R 4 e
ڰ kfrmID   =T=T =Uڭ=Vڬ=U  �ګ=Wڪ
ګ 
docu=W �=X=X  c E S 1 6 A v c 6 U j
ڪ kfrmID  
ڭ 
FCac=V �=Y=Y  c c S o O H u Q 9 7 V
ڬ kfrmID   =Z=Z =[ک=\ڨ=[  �ڧ=]ڦ
ڧ 
docu=] �=^=^  c E S 1 6 A v c 6 U j
ڦ kfrmID  
ک 
FCac=\ �=_=_  l - r v e Q B X Q 5 Q
ڨ kfrmID   =`=` =aڥ=bڤ=a  �ڣ=cڢ
ڣ 
docu=c �=d=d  c E S 1 6 A v c 6 U j
ڢ kfrmID  
ڥ 
FCac=b �=e=e  e E m W a t Q J P y M
ڤ kfrmID   =f=f =gڡ=hڠ=g  �ڟ=iڞ
ڟ 
docu=i �=j=j  c E S 1 6 A v c 6 U j
ڞ kfrmID  
ڡ 
FCac=h �=k=k  i 8 7 u S K o F K E T
ڠ kfrmID   =l=l =mڝ=nڜ=m  �ڛ=oښ
ڛ 
docu=o �=p=p  c E S 1 6 A v c 6 U j
ښ kfrmID  
ڝ 
FCac=n �=q=q  e 2 t O q N A v M W 2
ڜ kfrmID  	 =r=r =sڙ=tژ=s  �ڗ=uږ
ڗ 
docu=u �=v=v  c E S 1 6 A v c 6 U j
ږ kfrmID  
ڙ 
FCac=t �=w=w  o G Z 3 t H R 9 3 P F
ژ kfrmID  
 =x=x =yڕ=zڔ=y  �ړ={ڒ
ړ 
docu={ �=|=|  c E S 1 6 A v c 6 U j
ڒ kfrmID  
ڕ 
FCac=z �=}=}  j 3 I _ K F q s n 5 n
ڔ kfrmID   =~=~ =ڑ=�ڐ=  �ڏ=�ڎ
ڏ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
ڎ kfrmID  
ڑ 
FCac=� �=�=�  h T b w F Z h g S C 8
ڐ kfrmID   =�=� =�ڍ=�ڌ=�  �ڋ=�ڊ
ڋ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
ڊ kfrmID  
ڍ 
FCac=� �=�=�  j W i s C g p e D e 7
ڌ kfrmID   =�=� =�ډ=�ڈ=�  �ڇ=�چ
ڇ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
چ kfrmID  
ډ 
FCac=� �=�=�  o M 1 M A 3 V A K h X
ڈ kfrmID   =�=� =�څ=�ڄ=�  �ڃ=�ڂ
ڃ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
ڂ kfrmID  
څ 
FCac=� �=�=�  k L R - l u L 0 D v 3
ڄ kfrmID   =�=� =�ځ=�ڀ=�  ��=��~
� 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�~ kfrmID  
ځ 
FCac=� �=�=�  o x S _ h 2 D 2 - M J
ڀ kfrmID   =�=� =��}=��|=�  ��{=��z
�{ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�z kfrmID  
�} 
FCac=� �=�=�  n E G l 1 M I 1 O p w
�| kfrmID   =�=� =��y=��x=�  ��w=��v
�w 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�v kfrmID  
�y 
FCac=� �=�=�  c G S S B 9 4 T r W 4
�x kfrmID   =�=� =��u=��t=�  ��s=��r
�s 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�r kfrmID  
�u 
FCac=� �=�=�  d B n d v 7 K 4 H 9 o
�t kfrmID   =�=� =��q=��p=�  ��o=��n
�o 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�n kfrmID  
�q 
FCac=� �=�=�  n V r S 5 B J m L f U
�p kfrmID   =�=� =��m=��l=�  ��k=��j
�k 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�j kfrmID  
�m 
FCac=� �=�=�  l 9 o V F J F o V E f
�l kfrmID   =�=� =��i=��h=�  ��g=��f
�g 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�f kfrmID  
�i 
FCac=� �=�=�  j F - 6 w F 3 X 5 B I
�h kfrmID   =�=� =��e=��d=�  ��c=��b
�c 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�b kfrmID  
�e 
FCac=� �=�=�  j P m i w b T z v c 0
�d kfrmID   =�=� =��a=��`=�  ��_=��^
�_ 
docu=� �=�=�  c E S 1 6 A v c 6 U j
�^ kfrmID  
�a 
FCac=� �=�=�  i 0 C L - m 0 6 g 1 g
�` kfrmID  
�� 
cobj�� X� =�=� ��]�\
�] 
cobj�\ `� =�=� ��[�Z
�[ 
cobj�Z f� =�=� ��Y�X
�Y 
cobj�X g� =�=� ��W�V
�W 
cobj�V h� =�=� ��U�T
�U 
cobj�T i� =�=� ��S�R
�S 
cobj�R l� =�=� ��Q�P
�Q 
cobj�P m� =�=� ��O�N
�O 
cobj�N n� =�=� ��M�L
�M 
cobj�L q� =�=� ��K�J
�K 
cobj�J v� =�=� ��I�H
�I 
cobj�H y� =�=� ��G�F
�G 
cobj�F �� =�=� ��E�D
�E 
cobj�D �� =�=� ��C�B
�C 
cobj�B �� =�=� ��A�@
�A 
cobj�@ �� =�=� ��?�>
�? 
cobj�> �� =�=� ��=�<
�= 
cobj�< �� =�=� ��;�:
�; 
cobj�: �� =�=� ��9�8
�9 
cobj�8 �� =�=� ��7�6
�7 
cobj�6 �� =�=� ��5�4
�5 
cobj�4 �� =�=� ��3�2
�3 
cobj�2 �� =�=� ��1�0
�1 
cobj�0 �� =�=� ��/�.
�/ 
cobj�. �� =�=� ��-�,
�- 
cobj�, �� =�=� ��+�*
�+ 
cobj�* �� =�=� ��)�(
�) 
cobj�( �� =�=� ��'�&
�' 
cobj�& �� =�=� ��%�$
�% 
cobj�$ �� =�=� ��#�"
�# 
cobj�" �� =�=� ��!� 
�! 
cobj�  �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���

� 
cobj�
 �� =�=� ��	�
�	 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ���
� 
cobj� �� =�=� ��� 
� 
cobj�  �� =�=� �����
�� 
cobj�� �� =�=� �����
�� 
cobj�� �� =�=� �����
�� 
cobj�� �� =�=� �����
�� 
cobj�� �� =�=� �����
�� 
cobj�� �� > >  �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >	>	 �����
�� 
cobj�� �� >
>
 �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �����
�� 
cobj�� �� >> �ٿپ
ٿ 
cobjپ �  >> �ٽټ
ٽ 
cobjټ � >> �ٻٺ
ٻ 
cobjٺ � >> �ٹٸ
ٹ 
cobjٸ >> �ٷٶ
ٷ 
cobjٶ	 > >  �ٵٴ
ٵ 
cobjٴ >!>! �ٳٲ
ٳ 
cobjٲ >">" �ٱٰ
ٱ 
cobjٰ! >#># �ٯٮ
ٯ 
cobjٮ) >$>$ �٭٬
٭ 
cobj٬[	 >%>% �٫٪
٫ 
cobj٪�
 >&>& �٩٨
٩ 
cobj٨� >'>' �٧٦
٧ 
cobj٦� >(>( �٥٤
٥ 
cobj٤� >)>) �٣٢
٣ 
cobj٢� >*>* �١٠
١ 
cobj٠� >+>+ �ٟٞ
ٟ 
cobjٞ� >,>, �ٜٝ
ٝ 
cobjٜ� >->- �ٛٚ
ٛ 
cobjٚ� >.>. �ٙ٘
ٙ 
cobj٘� >/>/ �ٖٗ
ٗ 
cobjٖ >0>0 �ٕٔ
ٕ 
cobjٔ >1>1 �ْٓ
ٓ 
cobjْ >2>2 �ِّ
ّ 
cobjِ >3>3 �َُ
ُ 
cobjَ' >4>4 �ٌٍ
ٍ 
cobjٌ/ >5>5 �ًي
ً 
cobjي7 >6>6 �ىو
ى 
cobjوi >7>7 �هن
ه 
cobjن� >8>8 �مل
م 
cobjل� >9>9 �كق
ك 
cobjق� >:>: �فـ
ف 
cobjـ1 >;>; ���~
� 
cobj�~c  ><>< ��}�|
�} 
cobj�|�! >=>= ��{�z
�{ 
cobj�z�" >>>> ��y�x
�y 
cobj�x�# >?>? ��w�v
�w 
cobj�v$ >@>@ ��u�t
�u 
cobj�t+% >A>A ��s�r
�s 
cobj�r-& >B>B ��q�p
�q 
cobj�p.' >C>C ��o�n
�o 
cobj�n1( >D>D ��m�l
�m 
cobj�l3) >E>E ��k�j
�k 
cobj�j;* >F>F ��i�h
�i 
cobj�h<+ >G>G ��g�f
�g 
cobj�f=, >H>H ��e�d
�e 
cobj�dE- >I>I ��c�b
�c 
cobj�bM. >J>J ��a�`
�a 
cobj�`O/ >K>K ��_�^
�_ 
cobj�^R0 >L>L ��]�\
�] 
cobj�\T1 >M>M ��[�Z
�[ 
cobj�ZW2 >N>N ��Y�X
�Y 
cobj�XX3 >O>O ��W�V
�W 
cobj�VZ4 >P>P ��U�T
�U 
cobj�T[5 >Q>Q ��S�R
�S 
cobj�R\6 >R>R ��Q�P
�Q 
cobj�P]7 >S>S ��O�N
�O 
cobj�N^8 >T>T ��M�L
�M 
cobj�L_9 >U>U ��K�J
�K 
cobj�J`: >V>V ��I�H
�I 
cobj�Ha; >W>W ��G�F
�G 
cobj�Fb< >X>X ��E�D
�E 
cobj�Dc= >Y>Y ��C�B
�C 
cobj�Bd> >Z>Z ��A�@
�A 
cobj�@e? >[>[ ��?�>
�? 
cobj�>f@ >\>\ ��=�<
�= 
cobj�<gA >]>] ��;�:
�; 
cobj�:hB >^>^ ��9�8
�9 
cobj�8iC >_>_ ��7�6
�7 
cobj�6jD >`>` ��5�4
�5 
cobj�4lE >a>a ��3�2
�3 
cobj�2mF >b>b ��1�0
�1 
cobj�0oG >c>c ��/�.
�/ 
cobj�.pH >d>d ��-�,
�- 
cobj�,qI >e>e ��+�*
�+ 
cobj�*rJ >f>f ��)�(
�) 
cobj�(sK >g>g ��'�&
�' 
cobj�&tL >h>h ��%�$
�% 
cobj�$uM >i>i ��#�"
�# 
cobj�"vN >j>j ��!� 
�! 
cobj� wO >k>k ���
� 
cobj�xP >l>l ���
� 
cobj�zQ >m>m ���
� 
cobj�~R >n>n ���
� 
cobj��S >o>o ���
� 
cobj��T >p>p ���
� 
cobj��U >q>q ���
� 
cobj��V >r>r ���
� 
cobj��W >s>s ���
� 
cobj��X >t>t ���
� 
cobj��Y >u>u ���

� 
cobj�
�Z >v>v ��	�
�	 
cobj��[ >w>w ���
� 
cobj��\ >x>x ���
� 
cobj��] >y>y ���
� 
cobj��^ >z>z ��� 
� 
cobj� �_ >{>{ �����
�� 
cobj���` >|>| �����
�� 
cobj���a >}>} �����
�� 
cobj���b >~>~ �����
�� 
cobj���c >> �����
�� 
cobj���d >�>� �����
�� 
cobj���e >�>� �����
�� 
cobj���f >�>� �����
�� 
cobj���g >�>� �����
�� 
cobj���h >�>� �����
�� 
cobj���i >�>� �����
�� 
cobj���j >�>� �����
�� 
cobj���k >�>� �����
�� 
cobj���l >�>� �����
�� 
cobj���m >�>� �����
�� 
cobj���n >�>� �����
�� 
cobj���o >�>� �����
�� 
cobj���p >�>� �����
�� 
cobj���q >�>� �����
�� 
cobj���r >�>� �����
�� 
cobj���s >�>� �����
�� 
cobj���t >�>� �����
�� 
cobj���u >�>� �����
�� 
cobj���v >�>� �����
�� 
cobj���w >�>� �����
�� 
cobj���x >�>� �����
�� 
cobj���y >�>� �����
�� 
cobj���z >�>� �����
�� 
cobj���{ >�>� �����
�� 
cobj���| >�>� �����
�� 
cobj���} >�>� �����
�� 
cobj���~ >�>� �����
�� 
cobj��� >�>� �ؿؾ
ؿ 
cobjؾ�� >�>� �ؽؼ
ؽ 
cobjؼ�� >�>� �ػغ
ػ 
cobjغ�� >�>� �عظ
ع 
cobjظ�� >�>� �طض
ط 
cobjض�� >�>� �صش
ص 
cobjش� >�>� �سز
س 
cobjز� >�>� �رذ
ر 
cobjذ� >�>� �دخ
د 
cobjخ� >�>� �حج
ح 
cobjج� >�>� �ثت
ث 
cobjت� >�>� �ةب
ة 
cobjب� >�>� �ائ
ا 
cobjئ� >�>� �إؤ
إ 
cobjؤ � >�>� �أآ
أ 
cobjآ!� >�>� �ءؠ
ء 
cobjؠ"� >�>� �؟؞
؟ 
cobj؞$� >�>� �؝؜
؝ 
cobj؜%� >�>� �؛ؚ
؛ 
cobjؚ&� >�>� �ؘؙ
ؙ 
cobjؘ'� >�>� �ؗؖ
ؗ 
cobjؖ(� >�>� �ؕؔ
ؕ 
cobjؔ,� >�>� �ؓؒ
ؓ 
cobjؒ3� >�>� �ؑؐ
ؑ 
cobjؐ4� >�>� �؏؎
؏ 
cobj؎8� >�>� �؍،
؍ 
cobj،;� >�>� �؋؊
؋ 
cobj؊=� >�>� �؉؈
؉ 
cobj؈>� >�>� �؇؆
؇ 
cobj؆I� >�>� �؅؄
؅ 
cobj؄M� >�>� �؃؂
؃ 
cobj؂P� >�>� �؁؀
؁ 
cobj؀S� >�>� ���~
� 
cobj�~T� >�>� ��}�|
�} 
cobj�|U� >�>� ��{�z
�{ 
cobj�zV� >�>� ��y�x
�y 
cobj�xW� >�>� ��w�v
�w 
cobj�vX� >�>� ��u�t
�u 
cobj�tb� >�>� ��s�r
�s 
cobj�rc� >�>� ��q�p
�q 
cobj�pf� >�>� ��o�n
�o 
cobj�ni� >�>� ��m�l
�m 
cobj�lm� >�>� ��k�j
�k 
cobj�jp� >�>� ��i�h
�i 
cobj�hq� >�>� ��g�f
�g 
cobj�fr� >�>� ��e�d
�e 
cobj�dt� >�>� ��c�b
�c 
cobj�by� >�>� ��a�`
�a 
cobj�`{� >�>� ��_�^
�_ 
cobj�^~� >�>� ��]�\
�] 
cobj�\�� >�>� ��[�Z
�[ 
cobj�Z�� >�>� ��Y�X
�Y 
cobj�X�� >�>� ��W�V
�W 
cobj�V�� >�>� ��U�T
�U 
cobj�T�� >�>� ��S�R
�S 
cobj�R�� >�>� ��Q�P
�Q 
cobj�P�� >�>� ��O�N
�O 
cobj�N�� >�>� ��M�L
�M 
cobj�L�� >�>� ��K�J
�K 
cobj�J�� >�>� ��I�H
�I 
cobj�H�� >�>� ��G�F
�G 
cobj�F�� >�>� ��E�D
�E 
cobj�D�� >�>� ��C�B
�C 
cobj�B�� >�>� ��A�@
�A 
cobj�@�� >�>� ��?�>
�? 
cobj�>�� >�>� ��=�<
�= 
cobj�<�� >�>� ��;�:
�; 
cobj�:�� >�>� ��9�8
�9 
cobj�8�� >�>� ��7�6
�7 
cobj�6�� >�>� ��5�4
�5 
cobj�4�� >�>� ��3�2
�3 
cobj�2�� >�>� ��1�0
�1 
cobj�0�� >�>� ��/�.
�/ 
cobj�.�� >�>� ��-�,
�- 
cobj�,�� >�>� ��+�*
�+ 
cobj�*�� >�>� ��)�(
�) 
cobj�(�� >�>� ��'�&
�' 
cobj�&�� >�>� ��%�$
�% 
cobj�$�� >�>� ��#�"
�# 
cobj�"�� >�>� ��!� 
�! 
cobj� �� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���

� 
cobj�
�� >�>� ��	�
�	 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ���
� 
cobj��� >�>� ��� 
� 
cobj� �� >�>� �����
�� 
cobj���� >�>� �����
�� 
cobj��� >�>� �����
�� 
cobj��� >�>� �����
�� 
cobj��� >�>� �����
�� 
cobj��� ? ?  �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?	?	 �����
�� 
cobj��� ?
?
 �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ?? �����
�� 
cobj��� ��?�� 	? 	 ?????????? ?? �����
�� 
cobj�� n? ?? �����
�� 
cobj�� o? ?? �����
�� 
cobj�� p? ? ?  �����
�� 
cobj�� q? ?!?! �����
�� 
cobj�� r? ?"?" �����
�� 
cobj�� s? ?#?# �����
�� 
cobj�� t? ?$?$ ���׿
�� 
cobj׿ u? ?%?% �׾׽
׾ 
cobj׽ �� ׼?&׼ ?&  ?'?(?' ?)?) �׻׺
׻ 
cobj׺ �?( ?*?* �׹׸
׹ 
cobj׸ �� ׷?+׷ ?+  ?,?-?.?/?0?1?2?3?4?5?6?7?8?9?:?;?<?=?, ?>?> �׶׵
׶ 
cobj׵ �?- ???? �״׳
״ 
cobj׳ �?. ?@?@ �ײױ
ײ 
cobjױ �?/ ?A?A �װׯ
װ 
cobjׯ �?0 ?B?B �׮׭
׮ 
cobj׭ �?1 ?C?C �׬׫
׬ 
cobj׫ �?2 ?D?D �תש
ת 
cobjש �?3 ?E?E �רק
ר 
cobjק �?4 ?F?F �צץ
צ 
cobjץ �?5 ?G?G �פף
פ 
cobjף �?6 ?H?H �עס
ע 
cobjס �?7 ?I?I �נן
נ 
cobjן �?8 ?J?J �מם
מ 
cobjם �?9 ?K?K �לכ
ל 
cobjכ �?: ?L?L �ךי
ך 
cobjי �?; ?M?M �טח
ט 
cobjח �?< ?N?N �זו
ז 
cobjו �?= ?O?O �הד
ה 
cobjד �� ג?Pג ?P  ?Q?Q ?R?R �בא
ב 
cobjא �� ׏?S׏ ?S  ?T?U?V?W?X?Y?Z?[?\?]?^?_?`?a?T ?b?b �׎׍
׎ 
cobj׍ ?U ?c?c �׌׋
׌ 
cobj׋ Q?V ?d?d �׊׉
׊ 
cobj׉ �?W ?e?e �׈ׇ
׈ 
cobjׇ �?X ?f?f �׆ׅ
׆ 
cobjׅ �?Y ?g?g �ׄ׃
ׄ 
cobj׃ �?Z ?h?h �ׁׂ
ׂ 
cobjׁ �?[ ?i?i �׀�
׀ 
cobj� �?\ ?j?j ��~�}
�~ 
cobj�} �?] ?k?k ��|�{
�| 
cobj�{?^ ?l?l ��z�y
�z 
cobj�y?_ ?m?m ��x�w
�x 
cobj�w?` ?n?n ��v�u
�v 
cobj�u?a ?o?o ��t�s
�t 
cobj�s.� �?p?p � S e t h ' s   s t a r t   o f   d a y   s t a t u s   i s   1 1   t a s k s   f o r   t o d a y ,   2 5   t a s k s   f o r   t h i s   w e e k ,   1 8   t a s k s   f o r   n e x t   w e e k ,   a n d   1   o v e r d u e   t a s k s .� �r��q
�r 
bhit� �?q?q  Y e s�q  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ