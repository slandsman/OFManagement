FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
	
	Seth's start of day log script.  
	
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
     � 	 	2 
 	 
 	 S e t h ' s   s t a r t   o f   d a y   l o g   s c r i p t .     
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
�� .ascrcmnt****      � ****� o   < =���� 0 thetext theText��  � ��� l  B B��������  ��  ��  � ���� L   B D�� o   B C���� 0 thetext theText��  I�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ; ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
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
�� .rdwrclosnull���     ****B o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � CDC l     �������  ��  �  D EFE i    !GHG I      �~I�}�~ 0 
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
�! .rdwrclosnull���     **** o   � ��� 0 thefile theFile�   �"  ^�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  F  l     ����  �  �    i   " % I      ��� 0 
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
�� .rdwrclosnull���     ****{ o   z {���� 0 thefile theFile��  ��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  �   |}| l     ��������  ��  ��  } ~~ l     ��������  ��  ��   ���� l     ��������  ��  ��  ��       ����������������  � 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

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
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��=����������  0 generatestatus generateStatus�� ����� �  ������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks��  � ������������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks�� 0 
totaltoday 
totalToday�� 0 totalthisweek totalThisWeek�� 0 thetext theText� I��dnx����
�� 
leng
�� .ascrcmnt****      � ****�� E�Z��,��,E�O��,�E�O�E�O��%�%E�O��%�%E�O���,%�%E�O���,%�%E�O�j O�� ������������� 0 tweetstatus tweetStatus�� ����� �  ���� 0 v  ��  � ������ 0 v  �� 	0 oflib  � ������ 0 getoflib getOFLib�� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U� ������������� $0 writedailystatus writeDailyStatus�� ����� �  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList��  � 	�������������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile� ��������
����������1��������~�}�|�{
�� 
leng
�� .ascrcmnt****      � ****
�� afdrdesk
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
perm
�� .rdwropenshor       file
�� 
refn
� 
wrat
�~ rdwreof �} 
�| .rdwrwritnull���     ****
�{ .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �zH�y�x���w�z 0 
writestats 
writeStats�y �v��v 
� 
 �u�t�s�r�q�p�o�n�m�l�u 0 lfolderlist lFolderList�t 0 lprojectlist lProjectList�s (0 lactiveprojectlist lActiveProjectList�r 0 	ltasklist 	lTaskList�q "0 lactivetasklist lActiveTaskList�p (0 lcompletedtasklist lCompletedTaskList�o *0 lincompletetasklist lIncompleteTaskList�n 40 ltodayscompletedtasklist lTodaysCompletedTaskList�m &0 lnonrepincomplete lNonRepIncomplete�l *0 laddedtodaytasklist lAddedTodayTaskList�x  � �k�j�i�h�g�f�e�d�c�b�a�`�_�k 0 lfolderlist lFolderList�j 0 lprojectlist lProjectList�i (0 lactiveprojectlist lActiveProjectList�h 0 	ltasklist 	lTaskList�g "0 lactivetasklist lActiveTaskList�f (0 lcompletedtasklist lCompletedTaskList�e *0 lincompletetasklist lIncompleteTaskList�d 40 ltodayscompletedtasklist lTodaysCompletedTaskList�c &0 lnonrepincomplete lNonRepIncomplete�b *0 laddedtodaytasklist lAddedTodayTaskList�a 0 thetext theText�` 0 thefilepath theFilePath�_ 0 thefile theFile� ^iz�^���������]�\�[�Z�Y�X�W�V�U�T�S�R�Q
�^ 
leng
�] .ascrcmnt****      � ****
�\ afdrdesk
�[ 
rtyp
�Z 
TEXT
�Y .earsffdralis        afdr
�X 
perm
�W .rdwropenshor       file
�V 
refn
�U 
wrat
�T rdwreof �S 
�R .rdwrwritnull���     ****
�Q .rdwrclosnull���     ****�w ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �P�O�N���M�P 0 
writedebug 
writeDebug�O �L��L �  �K�K 0 ltask lTask�N  � �J�I�H�G�F�E�J 0 ltask lTask�I 0 thetext theText�H 0 thedate theDate�G 0 thedateonly theDateOnly�F 0 thefilepath theFilePath�E 0 thefile theFile� (�D4�CB�B�A\�@�?�>�=j�<�;�:�9�8�7�6�5
�D 
pnam
�C 
ID  
�B 
FCdc
�A 
dstr
�@ afdrdesk
�? 
rtyp
�> 
TEXT
�= .earsffdralis        afdr
�< 
perm
�; .rdwropenshor       file
�: 
refn
�9 
wrat
�8 rdwreof �7 
�6 .rdwrwritnull���     ****
�5 .rdwrclosnull���     ****�M �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �4��3�2���1
�4 .aevtoappnull  �   � ****� k    R��  ��  �0�0  �3  �2  �  � *�/�. ��-�,�+�*�)�(�'�&�%�$�#�"�! v� � ����������� �� � ������� ���/ 0 getoflib getOFLib�. 	0 oflib  
�- 
FCDo�, 0 thedocument theDocument�+ 0 getprojects getProjects
�* 
rslt�) 0 projectlist projectList�( 20 filterforactiveprojects filterForActiveProjects�' 0 gettasks getTasks�& 0 tasklist taskList�% 40 filterforincompletetasks filterForIncompleteTasks
�$ .misccurdldt    ��� null
�# 
dstr�" 20 filterfortasksdueondate filterForTasksDueOnDate�! 0 duetodaytasks dueTodayTasks�  .0 filterfortaskswithtag filterForTasksWithTag� $0 markedtodaytasks markedTodayTasks� *0 markednextweektasks markedNextWeekTasks� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� 0 overduetasks overdueTasks� $0 filterforflagged filterForFlagged� 0 flaggedtasks flaggedTasks
� 
leng
� .ascrcmnt****      � ****� �  0 generatestatus generateStatus� 
0 svalue  
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� 0 question  
� 
bhit� 
0 answer  � 0 tweetstatus tweetStatus�1S)j+  E�O�G*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 	UO�E�O� *�k+ UO�E�O� *�*j �,l+ UO�E�O� *�a l+ UO�E` O� *�a l+ UO�E` O� *�*j l+ UO�E` O� *�k+ UO�E` O�a ,j O_ a ,j O_ a ,j O_ a ,j O_ a ,j O)_ �_ _ _ a + E` Oa a a  a !lva "la # $E` %O_ %a &,E` 'O_ 'a (  )_ k+ )Y hOPU ascr  ��ޭ