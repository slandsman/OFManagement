FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
	Seth's periodic checkin script.  
	
	Capture and log the following:
	
	1. Number of items that are due "today", with today currently defined as items that have a note that contains @today or items that have today as their due date
	2. Number of items currently set to "next week", with nextweek currently defined as items that have a note that contains @nextweek
	3. Number of overdue items

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, 2011, Seth Landsman, Ph.D. - seth@homeforderangedscientists.net
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 1.0, released FEB2011
     � 	 	. 
 	 S e t h ' s   p e r i o d i c   c h e c k i n   s c r i p t .     
 	 
 	 C a p t u r e   a n d   l o g   t h e   f o l l o w i n g : 
 	 
 	 1 .   N u m b e r   o f   i t e m s   t h a t   a r e   d u e   " t o d a y " ,   w i t h   t o d a y   c u r r e n t l y   d e f i n e d   a s   i t e m s   t h a t   h a v e   a   n o t e   t h a t   c o n t a i n s   @ t o d a y   o r   i t e m s   t h a t   h a v e   t o d a y   a s   t h e i r   d u e   d a t e 
 	 2 .   N u m b e r   o f   i t e m s   c u r r e n t l y   s e t   t o   " n e x t   w e e k " ,   w i t h   n e x t w e e k   c u r r e n t l y   d e f i n e d   a s   i t e m s   t h a t   h a v e   a   n o t e   t h a t   c o n t a i n s   @ n e x t w e e k 
 	 3 .   N u m b e r   o f   o v e r d u e   i t e m s 
 
 	 b y   S e t h   L a n d s m a n ,   P h . D . 
 	 
 	 C o p y r i g h t   ( C )   2 0 0 9 ,   2 0 1 0 ,   2 0 1 1 ,   S e t h   L a n d s m a n ,   P h . D .   -   s e t h @ h o m e f o r d e r a n g e d s c i e n t i s t s . n e t 
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
 	 v e r s i o n   1 . 0 ,   r e l e a s e d   F E B 2 0 1 1 
   
  
 l     ��������  ��  ��        j     �� �� 0 nl    l     ����  I    �� ��
�� .sysontocTEXT       shor  m     ���� 
��  ��  ��        j    	�� �� 	0 debug    m    ��
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  M !���� ! O   M " # " k   L $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " . 9 : 9 I   & -�� ;���� 0 gettasks getTasks ;  < = < o   ' (���� 0 thedocument theDocument =  >�� > o   ( )���� 0 projectlist projectList��  ��   : o   " #���� 	0 oflib   8  ? @ ? r   / 2 A B A 1   / 0��
�� 
rslt B o      ���� 0 tasklist taskList @  C D C l  3 3��������  ��  ��   D  E F E O  3 > G H G I   7 =�� I���� 40 filterforincompletetasks filterForIncompleteTasks I  J�� J o   8 9���� 0 tasklist taskList��  ��   H o   3 4���� 	0 oflib   F  K L K r   ? B M N M 1   ? @��
�� 
rslt N o      ���� 0 tasklist taskList L  O P O l  C C��������  ��  ��   P  Q R Q O  C U S T S I   G T�� U���� 20 filterfortasksdueondate filterForTasksDueOnDate U  V W V o   H I���� 0 tasklist taskList W  X�� X n   I P Y Z Y 1   N P��
�� 
dstr Z l  I N [���� [ I  I N������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   T o   C D���� 	0 oflib   R  \ ] \ r   V Y ^ _ ^ 1   V W��
�� 
rslt _ o      ���� 0 duetodaytasks dueTodayTasks ]  ` a ` l  Z Z��������  ��  ��   a  b c b O  Z f d e d I   ^ e�� f���� .0 filterfortaskswithtag filterForTasksWithTag f  g h g o   _ `���� 0 tasklist taskList h  i�� i m   ` a j j � k k  @ t o d a y��  ��   e o   Z [���� 	0 oflib   c  l m l r   g l n o n 1   g h��
�� 
rslt o o      ���� $0 markedtodaytasks markedTodayTasks m  p q p l  m m��������  ��  ��   q  r s r O  m { t u t I   q z�� v���� .0 filterfortaskswithtag filterForTasksWithTag v  w x w o   r s���� 0 tasklist taskList x  y�� y m   s v z z � { {  @ n e x t w e e k��  ��   u o   m n���� 	0 oflib   s  | } | r   | � ~  ~ 1   | }��
�� 
rslt  o      ���� *0 markednextweektasks markedNextWeekTasks }  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate �  � � � o   � ����� 0 tasklist taskList �  ��� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� 0 overduetasks overdueTasks �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� $0 filterforflagged filterForFlagged �  ��� � o   � ����� 0 tasklist taskList��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� 0 flaggedtasks flaggedTasks �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
FCit � o   � ����� 0 thedocument theDocument � o      ���� 0 
inboxtasks 
inboxTasks �  � � � l  � ���������  ��  ��   �  � � � I  � �� ��~
� .ascrcmnt****      � **** � n   � � � � � 1   � ��}
�} 
leng � o   � ��|�| 0 duetodaytasks dueTodayTasks�~   �  � � � I  � ��{ ��z
�{ .ascrcmnt****      � **** � n   � � � � � 1   � ��y
�y 
leng � o   � ��x�x $0 markedtodaytasks markedTodayTasks�z   �  � � � I  � ��w ��v
�w .ascrcmnt****      � **** � n   � � � � � 1   � ��u
�u 
leng � o   � ��t�t *0 markednextweektasks markedNextWeekTasks�v   �  � � � I  � ��s ��r
�s .ascrcmnt****      � **** � n   � � � � � 1   � ��q
�q 
leng � o   � ��p�p 0 overduetasks overdueTasks�r   �  � � � I  � ��o ��n
�o .ascrcmnt****      � **** � n   � � � � � 1   � ��m
�m 
leng � o   � ��l�l 0 flaggedtasks flaggedTasks�n   �  � � � l  � ��k�j�i�k  �j  �i   �  � � � r   �
 � � � n  � � � � I   ��h ��g�h  0 generatestatus generateStatus �  � � � o   � ��f�f 0 flaggedtasks flaggedTasks �  � � � o   � ��e�e 0 duetodaytasks dueTodayTasks �  � � � o   � ��d�d $0 markedtodaytasks markedTodayTasks �  � � � o   � ��c�c *0 markednextweektasks markedNextWeekTasks �  � � � o   � ��b�b 0 overduetasks overdueTasks �  ��a � o   � �`�` 0 
inboxtasks 
inboxTasks�a  �g   �  f   � � � o      �_�_ 
0 svalue   �  � � � l �^�]�\�^  �]  �\   �  � � � r  ' � � � I #�[ � �
�[ .sysodlogaskr        TEXT � m   � � � � � * T w e e t   p e r i o d i c   s t a t u s � �Z � �
�Z 
btns � J   � �  � � � m   � � � � �  Y e s �  ��Y � m   � � � � �  C a n c e l�Y   � �X ��W
�X 
dflt � m  �V�V �W   � o      �U�U 0 question   �  � � � r  (3 � � � n  (/ � � � 1  +/�T
�T 
bhit � o  (+�S�S 0 question   � o      �R�R 
0 answer   �  � � � l 44�Q�P�O�Q  �P  �O   �  � � � Z  4J � ��N�M � = 4; � � � o  47�L�L 
0 answer   � m  7: � � � � �  Y e s � n >F � � � I  ?F�K ��J�K 0 tweetstatus tweetStatus �  ��I � o  ?B�H�H 
0 svalue  �I  �J   �  f  >?�N  �M   �  ��G � l KK�F�E�D�F  �E  �D  �G   # m    	 � ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �C�B�A�C  �B  �A   �  � � � i   
    I      �@�?�>�@ 0 	pathtolib 	pathToLib�?  �>   k       r     	 l    �=�< I    �;	
�; .earsffdralis        afdr  f     	 �:
�9
�: 
from
 m    �8
�8 fldmfldu�9  �=  �<   o      �7�7 0 apppath appPath  l   
 
�6�6   y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g  l  
 
�5�4�3�5  �4  �3    L   
  c   
  l  
 �2�1 b   
  o   
 �0�0 0 apppath appPath m     � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�2  �1   m    �/
�/ 
ctxt �. L     n     1    �-
�- 
strq o    �,�, 0 myfolderpath myFolderPath�.   �  !  l     �+�*�)�+  �*  �)  ! "#" i    $%$ I      �(�'�&�( 0 getoflib getOFLib�'  �&  % k     && '(' r     )*) I    �%+�$
�% .sysoloadscpt        file+ 4     
�#,
�# 
file, l   	-�"�!- b    	./. n   010 I    � ���  0 	pathtolib 	pathToLib�  �  1  f    / m    22 �33  O F L i b . s c p t�"  �!  �$  * o      �� 0 thelib theLib( 4�4 L    55 o    �� 0 thelib theLib�  # 676 l     ����  �  �  7 898 i    :;: I      �<��  0 generatestatus generateStatus< =>= o      �� 0 lflaggedtasks lFlaggedTasks> ?@? o      ��  0 lduetodaytasks lDueTodayTasks@ ABA o      �� &0 lmarkedtodaytasks lMarkedTodayTasksB CDC o      �� ,0 lmarkednextweektasks lMarkedNextWeekTasksD EFE o      �� 0 loverduetasks lOverdueTasksF G�G o      �� 0 linboxtasks lInboxTasks�  �  ; w     `HIH k    `JJ KLK r    	MNM I   ���
� .misccurdldt    ��� null�  �  N o      �� 	0 cdate  L OPO r   
 QRQ n   
 STS 1    �

�
 
tstrT o   
 �	�	 	0 cdate  R o      �� 	0 ctime  P UVU l   ����  �  �  V WXW r    YZY [    [\[ l   ]��] n    ^_^ 1    �
� 
leng_ o    ��  0 lduetodaytasks lDueTodayTasks�  �  \ l   `� ��` n    aba 1    ��
�� 
lengb o    ���� &0 lmarkedtodaytasks lMarkedTodayTasks�   ��  Z o      ���� 0 
totaltoday 
totalTodayX cdc r    !efe [    ghg l   i����i n    jkj 1    ��
�� 
lengk o    ���� 0 lflaggedtasks lFlaggedTasks��  ��  h o    ���� 0 
totaltoday 
totalTodayf o      ���� 0 totalthisweek totalThisWeekd lml r   " )non b   " 'pqp b   " %rsr m   " #tt �uu  A t  s o   # $���� 	0 ctime  q m   % &vv �ww  ,   t h e r e   a r e  o o      ���� 0 thetext theTextm xyx r   * 1z{z b   * /|}| b   * -~~ o   * +���� 0 thetext theText o   + ,���� 0 
totaltoday 
totalToday} m   - .�� ��� $   t a s k s   f o r   t o d a y ,  { o      ���� 0 thetext theTexty ��� r   2 9��� b   2 7��� b   2 5��� o   2 3���� 0 thetext theText� o   3 4���� 0 totalthisweek totalThisWeek� m   5 6�� ��� <   t a s k s   f l a g g e d   f o r   t h i s   w e e k ,  � o      ���� 0 thetext theText� ��� r   : C��� b   : A��� b   : ?��� o   : ;���� 0 thetext theText� n   ; >��� 1   < >��
�� 
leng� o   ; <���� ,0 lmarkednextweektasks lMarkedNextWeekTasks� m   ? @�� ��� ,   t a s k s   f o r   n e x t   w e e k ,  � o      ���� 0 thetext theText� ��� r   D M��� b   D K��� b   D I��� o   D E���� 0 thetext theText� n   E H��� 1   F H��
�� 
leng� o   E F���� 0 linboxtasks lInboxTasks� m   I J�� ��� &   i n   t h e   i n b o x ,   a n d  � o      ���� 0 thetext theText� ��� r   N W��� b   N U��� b   N S��� o   N O���� 0 thetext theText� n   O R��� 1   P R��
�� 
leng� o   O P���� 0 loverduetasks lOverdueTasks� m   S T�� ���    o v e r d u e .� o      ���� 0 thetext theText� ��� l  X X��������  ��  ��  � ��� I  X ]�����
�� .ascrcmnt****      � ****� o   X Y���� 0 thetext theText��  � ��� l  ^ ^��������  ��  ��  � ���� L   ^ `�� o   ^ _���� 0 thetext theText��  I�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  9 ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n       1    ��
�� 
leng o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText�  r   & 5 b   & 3 b   & -	 b   & )

 o   & '���� 0 thetext theText m   ' ( � & T a s k s   a d d e d   t o d a y :  	 n   ) , 1   * ,��
�� 
leng o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList o   - 2���� 0 nl   o      ���� 0 thetext theText  r   6 E b   6 C b   6 = b   6 9 o   6 7���� 0 thetext theText m   7 8 � , N o n - w a i t   a d d e d   t o d a y :   n   9 < 1   : <��
�� 
leng o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList o   = B���� 0 nl   o      ���� 0 thetext theText  r   F U !  b   F S"#" b   F M$%$ b   F I&'& o   F G���� 0 thetext theText' m   G H(( �)) 2 A c t i v e   i n c o m p l e t e   t a s k s :  % n   I L*+* 1   J L��
�� 
leng+ o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList# o   M R���� 0 nl  ! o      ���� 0 thetext theText ,-, r   V e./. b   V c010 b   V ]232 b   V Y454 o   V W���� 0 thetext theText5 m   W X66 �77 L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  3 n   Y \898 1   Z \��
�� 
leng9 o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList1 o   ] b���� 0 nl  / o      ���� 0 thetext theText- :;: l  f f��������  ��  ��  ; <=< l  f f��������  ��  ��  = >?> I  f k��@��
�� .ascrcmnt****      � ****@ o   f g���� 0 thetext theText��  ? ABA l  l l��������  ��  ��  B CDC r   l yEFE c   l wGHG b   l uIJI l  l sK����K I  l s��LM
�� .earsffdralis        afdrL m   l m��
�� afdrdeskM ��N��
�� 
rtypN m   n o��
�� 
TEXT��  ��  ��  J m   s tOO �PP  o f   t o d a y . t x tH m   u v��
�� 
TEXTF o      ���� 0 thefilepath theFilePathD QRQ r   z �STS I  z ���UV
�� .rdwropenshor       fileU o   z {���� 0 thefilepath theFilePathV ��W��
�� 
permW m   | }��
�� boovtrue��  T o      ���� 0 thefile theFileR XYX I  � ��Z[
� .rdwrwritnull���     ****Z o   � ��~�~ 0 thetext theText[ �}\]
�} 
refn\ o   � ��|�| 0 thefile theFile] �{^�z
�{ 
wrat^ m   � ��y
�y rdwreof �z  Y _�x_ I  � ��w`�v
�w .rdwrclosnull���     ****` o   � ��u�u 0 thefile theFile�v  �x  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � aba l     �t�s�r�t  �s  �r  b cdc i    !efe I      �qg�p�q 0 
writestats 
writeStatsg hih o      �o�o 0 lfolderlist lFolderListi jkj o      �n�n 0 lprojectlist lProjectListk lml o      �m�m (0 lactiveprojectlist lActiveProjectListm non o      �l�l 0 	ltasklist 	lTaskListo pqp o      �k�k "0 lactivetasklist lActiveTaskListq rsr o      �j�j (0 lcompletedtasklist lCompletedTaskLists tut o      �i�i *0 lincompletetasklist lIncompleteTaskListu vwv o      �h�h 40 ltodayscompletedtasklist lTodaysCompletedTaskListw xyx o      �g�g &0 lnonrepincomplete lNonRepIncompletey z�fz o      �e�e *0 laddedtodaytasklist lAddedTodayTaskList�f  �p  f w     �{|{ k    �}} ~~ l    �d���d  � b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   � ��� � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t ��� r    ��� m    �� ���  � o      �c�c 0 thetext theText� ��� l    �b���b  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    �a�a 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �`
�` 
leng� o   	 
�_�_ 0 lprojectlist lProjectList� o    �^�^ 0 nl  � o      �]�] 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    �\�\ 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �[
�[ 
leng� o    �Z�Z (0 lactiveprojectlist lActiveProjectList� o    "�Y�Y 0 nl  � o      �X�X 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�W�W 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�V
�V 
leng� o   ) *�U�U 0 	ltasklist 	lTaskList� o   - 2�T�T 0 nl  � o      �S�S 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�R�R 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�Q
�Q 
leng� o   9 :�P�P "0 lactivetasklist lActiveTaskList� o   = B�O�O 0 nl  � o      �N�N 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�M�M 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�L
�L 
leng� o   I J�K�K (0 lcompletedtasklist lCompletedTaskList� o   M R�J�J 0 nl  � o      �I�I 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�H�H 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�G
�G 
leng� o   Y Z�F�F *0 lincompletetasklist lIncompleteTaskList� o   ] b�E�E 0 nl  � o      �D�D 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�C�C 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�B
�B 
leng� o   i j�A�A 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�@�@ 0 nl  � o      �?�? 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�>�> 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�=
�= 
leng� o   y z�<�< &0 lnonrepincomplete lNonRepIncomplete� o   } ��;�; 0 nl  � o      �:�: 0 thetext theText� ��� r   � �   b   � � b   � � b   � � o   � ��9�9 0 thetext theText m   � � �		 & T a s k s   a d d e d   t o d a y :   n   � �

 1   � ��8
�8 
leng o   � ��7�7 *0 laddedtodaytasklist lAddedTodayTaskList o   � ��6�6 0 nl   o      �5�5 0 thetext theText�  l  � ��4�3�2�4  �3  �2    I  � ��1�0
�1 .ascrcmnt****      � **** o   � ��/�/ 0 thetext theText�0    l  � ��.�-�,�.  �-  �,    r   � � c   � � b   � � l  � ��+�* I  � ��)
�) .earsffdralis        afdr m   � ��(
�( afdrdesk �'�&
�' 
rtyp m   � ��%
�% 
TEXT�&  �+  �*   m   � � �    o f . t x t m   � ��$
�$ 
TEXT o      �#�# 0 thefilepath theFilePath !"! r   � �#$# I  � ��"%&
�" .rdwropenshor       file% o   � ��!�! 0 thefilepath theFilePath& � '�
�  
perm' m   � ��
� boovtrue�  $ o      �� 0 thefile theFile" ()( I  � ��*+
� .rdwrwritnull���     ***** o   � ��� 0 thetext theText+ �,-
� 
refn, o   � ��� 0 thefile theFile- �.�
� 
wrat. m   � ��
� rdwreof �  ) /�/ I  � ��0�
� .rdwrclosnull���     ****0 o   � ��� 0 thefile theFile�  �  |�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  d 121 l     ����  �  �  2 343 i   " %565 I      �7�� 0 
writedebug 
writeDebug7 8�8 o      �� 0 ltask lTask�  �  6 Z     �9:�
�	9 o     �� 	0 debug  : w    ;<; k   
 == >?> r   
 @A@ b   
 BCB b   
 DED m   
 FF �GG  T a s k   n a m e   i s  E n   HIH 1    �
� 
pnamI o    �� 0 ltask lTaskC o    �� 0 nl  A o      �� 0 thetext theText? JKJ r    %LML b    #NON b    PQP m    RR �SS  T a s k   i d   i s  Q n   TUT 1    �
� 
ID  U o    �� 0 ltask lTaskO o    "�� 0 nl  M o      � �  0 thetext theTextK VWV r   & 5XYX b   & 3Z[Z b   & -\]\ b   & )^_^ o   & '���� 0 thetext theText_ m   ' (`` �aa & C o m p l e t i o n   d a t e   i s  ] n  ) ,bcb 1   * ,��
�� 
FCdcc o   ) *���� 0 ltask lTask[ o   - 2���� 0 nl  Y o      ���� 0 thetext theTextW ded r   6 ;fgf n  6 9hih 1   7 9��
�� 
FCdci o   6 7���� 0 ltask lTaskg o      ���� 0 thedate theDatee jkj r   < Alml n   < ?non 1   = ?��
�� 
dstro o   < =���� 0 thedate theDatem o      ���� 0 thedateonly theDateOnlyk pqp r   B Orsr b   B Mtut b   B Gvwv b   B Exyx o   B C���� 0 thetext theTexty m   C Dzz �{{ 4 C o m p l e t i o n   d a t e   i s   r e a l l y  w o   E F���� 0 thedateonly theDateOnlyu o   G L���� 0 nl  s o      ���� 0 thetext theTextq |}| r   P ]~~ c   P [��� b   P Y��� l  P W������ I  P W����
�� .earsffdralis        afdr� m   P Q��
�� afdrdesk� �����
�� 
rtyp� m   R S��
�� 
TEXT��  ��  ��  � m   W X�� ���  o f D e b u g . t x t� m   Y Z��
�� 
TEXT o      ���� 0 thefilepath theFilePath} ��� r   ^ g��� I  ^ e����
�� .rdwropenshor       file� o   ^ _���� 0 thefilepath theFilePath� �����
�� 
perm� m   ` a��
�� boovtrue��  � o      ���� 0 thefile theFile� ��� I  h y����
�� .rdwrwritnull���     ****� o   h i���� 0 thetext theText� ����
�� 
refn� o   l m���� 0 thefile theFile� �����
�� 
wrat� m   p s��
�� rdwreof ��  � ���� I  z �����
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  <�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �
  �	  4 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ����������������  � 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� ������������ 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ����������
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��%���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����2��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��;����������  0 generatestatus generateStatus�� ����� �  �������������� 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks�� 0 linboxtasks lInboxTasks��  � ������������������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks�� 0 linboxtasks lInboxTasks�� 	0 cdate  �� 	0 ctime  �� 0 
totaltoday 
totalToday�� 0 totalthisweek totalThisWeek�� 0 thetext theText� I������tv�������
�� .misccurdldt    ��� null
�� 
tstr
�� 
leng
�� .ascrcmnt****      � ****�� a�Z*j E�O��,E�O��,��,E�O��,�E�O�%�%E�O��%�%E�O��%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j O�� ������������� 0 tweetstatus tweetStatus�� ����� �  ���� 0 v  ��  � ������ 0 v  �� 	0 oflib  � ������ 0 getoflib getOFLib�� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U� ������������� $0 writedailystatus writeDailyStatus�� ����� �  ������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList� $0 lnotwaittasklist lNotWaitTaskList��  � 	�~�}�|�{�z�y�x�w�v�~ (0 lactiveprojectlist lActiveProjectList�} 40 ltodayscompletedtasklist lTodaysCompletedTaskList�| *0 laddedtodaytasklist lAddedTodayTaskList�{ 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�z 60 lactiveincompletetasklist lActiveIncompleteTaskList�y $0 lnotwaittasklist lNotWaitTaskList�x 0 thetext theText�w 0 thefilepath theFilePath�v 0 thefile theFile� ����u�(6�t�s�r�q�pO�o�n�m�l�k�j�i�h
�u 
leng
�t .ascrcmnt****      � ****
�s afdrdesk
�r 
rtyp
�q 
TEXT
�p .earsffdralis        afdr
�o 
perm
�n .rdwropenshor       file
�m 
refn
�l 
wrat
�k rdwreof �j 
�i .rdwrwritnull���     ****
�h .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �gf�f�e���d�g 0 
writestats 
writeStats�f �c��c 
� 
 �b�a�`�_�^�]�\�[�Z�Y�b 0 lfolderlist lFolderList�a 0 lprojectlist lProjectList�` (0 lactiveprojectlist lActiveProjectList�_ 0 	ltasklist 	lTaskList�^ "0 lactivetasklist lActiveTaskList�] (0 lcompletedtasklist lCompletedTaskList�\ *0 lincompletetasklist lIncompleteTaskList�[ 40 ltodayscompletedtasklist lTodaysCompletedTaskList�Z &0 lnonrepincomplete lNonRepIncomplete�Y *0 laddedtodaytasklist lAddedTodayTaskList�e  � �X�W�V�U�T�S�R�Q�P�O�N�M�L�X 0 lfolderlist lFolderList�W 0 lprojectlist lProjectList�V (0 lactiveprojectlist lActiveProjectList�U 0 	ltasklist 	lTaskList�T "0 lactivetasklist lActiveTaskList�S (0 lcompletedtasklist lCompletedTaskList�R *0 lincompletetasklist lIncompleteTaskList�Q 40 ltodayscompletedtasklist lTodaysCompletedTaskList�P &0 lnonrepincomplete lNonRepIncomplete�O *0 laddedtodaytasklist lAddedTodayTaskList�N 0 thetext theText�M 0 thefilepath theFilePath�L 0 thefile theFile� |���K��������J�I�H�G�F�E�D�C�B�A�@�?�>
�K 
leng
�J .ascrcmnt****      � ****
�I afdrdesk
�H 
rtyp
�G 
TEXT
�F .earsffdralis        afdr
�E 
perm
�D .rdwropenshor       file
�C 
refn
�B 
wrat
�A rdwreof �@ 
�? .rdwrwritnull���     ****
�> .rdwrclosnull���     ****�d ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �=6�<�;���:�= 0 
writedebug 
writeDebug�< �9��9 �  �8�8 0 ltask lTask�;  � �7�6�5�4�3�2�7 0 ltask lTask�6 0 thetext theText�5 0 thedate theDate�4 0 thedateonly theDateOnly�3 0 thefilepath theFilePath�2 0 thefile theFile� <F�1R�0`�/�.z�-�,�+�*��)�(�'�&�%�$�#�"
�1 
pnam
�0 
ID  
�/ 
FCdc
�. 
dstr
�- afdrdesk
�, 
rtyp
�+ 
TEXT
�* .earsffdralis        afdr
�) 
perm
�( .rdwropenshor       file
�' 
refn
�& 
wrat
�% rdwreof �$ 
�# .rdwrwritnull���     ****
�" .rdwrclosnull���     ****�: �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �!�� ����
�! .aevtoappnull  �   � ****� k    M��  ��  ��  �   �  �  � +�� ������������� j�� z���
�	�������� ��  � ������������� ���� 0 getoflib getOFLib� 	0 oflib  
� 
FCDo� 0 thedocument theDocument� 0 getprojects getProjects
� 
rslt� 0 projectlist projectList� 0 gettasks getTasks� 0 tasklist taskList� 40 filterforincompletetasks filterForIncompleteTasks
� .misccurdldt    ��� null
� 
dstr� 20 filterfortasksdueondate filterForTasksDueOnDate� 0 duetodaytasks dueTodayTasks� .0 filterfortaskswithtag filterForTasksWithTag� $0 markedtodaytasks markedTodayTasks� *0 markednextweektasks markedNextWeekTasks� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�
 0 overduetasks overdueTasks�	 $0 filterforflagged filterForFlagged� 0 flaggedtasks flaggedTasks
� 
FCit� 0 
inboxtasks 
inboxTasks
� 
leng
� .ascrcmnt****      � ****� �  0 generatestatus generateStatus� 
0 svalue  
�  
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 question  
�� 
bhit�� 
0 answer  �� 0 tweetstatus tweetStatus�N)j+  E�O�B*�,E�O� *�k+ UO�E�O� 	*��l+ UO�E�O� *�k+ 
UO�E�O� *�*j �,l+ UO�E�O� 	*��l+ UO�E` O� *�a l+ UO�E` O� *�*j l+ UO�E` O� *�k+ UO�E` O�a -E` O�a ,j O_ a ,j O_ a ,j O_ a ,j O_ a ,j O)_ �_ _ _ _ a + E` Oa a  a !a "lva #la $ %E` &O_ &a ',E` (O_ (a )  )_ k+ *Y hOPUascr  ��ޭ