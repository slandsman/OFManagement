FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	End of Day read out script

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, 2011, Seth Landsman, Ph.D. - seth@homeforderangedscientists.net
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 1.0, released FEB2011
     � 	 	V 
 	 E n d   o f   D a y   r e a d   o u t   s c r i p t 
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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  9 !���� ! O   9 " # " k   8 $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 20 filterforactiveprojects filterForActiveProjects ;  <�� < o   ' (���� 0 projectlist projectList��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� &0 activeprojectlist activeProjectList >  A B A l  2 2��������  ��  ��   B  C D C O  2 > E F E I   6 =�� G���� 0 gettasks getTasks G  H I H o   7 8���� 0 thedocument theDocument I  J�� J o   8 9���� 0 projectlist projectList��  ��   F o   2 3���� 	0 oflib   D  K L K r   ? B M N M 1   ? @��
�� 
rslt N o      ���� 0 tasklist taskList L  O P O l  C C��������  ��  ��   P  Q R Q O  C N S T S I   G M�� U���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks U  V�� V o   H I���� 0 tasklist taskList��  ��   T o   C D���� 	0 oflib   R  W X W r   O R Y Z Y 1   O P��
�� 
rslt Z o      ���� 0 tasklist taskList X  [ \ [ l  S S��������  ��  ��   \  ] ^ ] O  S _ _ ` _ I   W ^�� a���� 0 gettasks getTasks a  b c b o   X Y���� 0 thedocument theDocument c  d�� d o   Y Z���� &0 activeprojectlist activeProjectList��  ��   ` o   S T���� 	0 oflib   ^  e f e r   ` c g h g 1   ` a��
�� 
rslt h o      ����  0 activetasklist activeTaskList f  i j i l  d d��������  ��  ��   j  k l k O  d o m n m I   h n�� o���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks o  p�� p o   i j����  0 activetasklist activeTaskList��  ��   n o   d e���� 	0 oflib   l  q r q r   p s s t s 1   p q��
�� 
rslt t o      ����  0 activetasklist activeTaskList r  u v u l  t t��������  ��  ��   v  w x w O  t  y z y I   x ~�� {���� 20 filterforcompletedtasks filterForCompletedTasks {  |�� | o   y z���� 0 tasklist taskList��  ��   z o   t u���� 	0 oflib   x  } ~ } r   � �  �  1   � ���
�� 
rslt � o      ���� &0 completedtasklist completedTaskList ~  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate �  � � � o   � ����� &0 completedtasklist completedTaskList �  ��� � n   � � � � � 1   � ���
�� 
dstr � l  � � ����� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� 20 todayscompletedtasklist todaysCompletedTaskList �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� 40 filterforincompletetasks filterForIncompleteTasks �  ��� � o   � �����  0 activetasklist activeTaskList��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ���� 40 activeincompletetasklist activeIncompleteTaskList �  � � � l  � �����~��  �  �~   �  � � � O  � � � � � I   � ��} ��|�} 60 filterfortasksaddedondate filterForTasksAddedOnDate �  � � � o   � ��{�{ 0 tasklist taskList �  ��z � n   � � � � � 1   � ��y
�y 
dstr � l  � � ��x�w � I  � ��v�u�t
�v .misccurdldt    ��� null�u  �t  �x  �w  �z  �|   � o   � ��s�s 	0 oflib   �  � � � r   � � � � � 1   � ��r
�r 
rslt � o      �q�q (0 addedtodaytasklist addedTodayTaskList �  � � � l  � ��p�o�n�p  �o  �n   �  � � � O  � � � � � I   � ��m ��l�m H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan �  � � � o   � ��k�k &0 activeprojectlist activeProjectList �  ��j � m   � ��i�i  �j  �l   � o   � ��h�h 	0 oflib   �  � � � r   � � � � � 1   � ��g
�g 
rslt � o      �f�f $0 nonemptyprojects nonEmptyProjects �  � � � l  � ��e�d�c�e  �d  �c   �  � � � r   � � � � � n  � � � � � I   � ��b ��a�b  0 generatestatus generateStatus �  � � � o   � ��`�` $0 nonemptyprojects nonEmptyProjects �  � � � o   � ��_�_ 20 todayscompletedtasklist todaysCompletedTaskList �  � � � o   � ��^�^ (0 addedtodaytasklist addedTodayTaskList �  ��] � o   � ��\�\ 40 activeincompletetasklist activeIncompleteTaskList�]  �a   �  f   � � � o      �[�[ 
0 svalue   �  � � � l  � ��Z�Y�X�Z  �Y  �X   �  � � � r   � � � � I  ��W � �
�W .sysodlogaskr        TEXT � m   � � � � � � � $ T w e e t   d a i l y   s t a t u s � �V � �
�V 
btns � J   � � �  � � � m   �  � � � � �  Y e s �  ��U � m    � � � � �  C a n c e l�U   � �T ��S
�T 
dflt � m  	�R�R �S   � o      �Q�Q 0 question   �  � � � r   � � � n   � � � 1  �P
�P 
bhit � o  �O�O 0 question   � o      �N�N 
0 answer   �  � � � l   �M�L�K�M  �L  �K   �  � � � Z   6 � ��J�I � =  ' � � � o   #�H�H 
0 answer   � m  #& � � � � �  Y e s � n *2 � � � I  +2�G ��F�G 0 tweetstatus tweetStatus �  ��E � o  +.�D�D 
0 svalue  �E  �F   �  f  *+�J  �I   �  ��C � l 77�B�A�@�B  �A  �@  �C   # m    	 � ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �?�>�=�?  �>  �=   �  � � � l     �<�;�:�<  �;  �:   �  � � � i   
  � � � I      �9�8�7�9 0 	pathtolib 	pathToLib�8  �7   � k         r     	 l    �6�5 I    �4
�4 .earsffdralis        afdr  f      �3�2
�3 
from m    �1
�1 fldmfldu�2  �6  �5   o      �0�0 0 apppath appPath 	
	 l   
 
�/�/   y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g
  l  
 
�.�-�,�.  �-  �,    L   
  c   
  l  
 �+�* b   
  o   
 �)�) 0 apppath appPath m     � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�+  �*   m    �(
�( 
ctxt �' L     n     1    �&
�& 
strq o    �%�% 0 myfolderpath myFolderPath�'   �  l     �$�#�"�$  �#  �"    !  i    "#" I      �!� ��! 0 getoflib getOFLib�   �  # k     $$ %&% r     '(' I    �)�
� .sysoloadscpt        file) 4     
�*
� 
file* l   	+��+ b    	,-, n   ./. I    ���� 0 	pathtolib 	pathToLib�  �  /  f    - m    00 �11  O F L i b . s c p t�  �  �  ( o      �� 0 thelib theLib& 2�2 L    33 o    �� 0 thelib theLib�  ! 454 l     ����  �  �  5 676 i    898 I      �:��  0 generatestatus generateStatus: ;<; o      �� (0 lactiveprojectlist lActiveProjectList< =>= o      �� 40 ltodayscompletedtasklist lTodaysCompletedTaskList> ?@? o      �� *0 laddedtodaytasklist lAddedTodayTaskList@ A�A o      �
�
 60 lactiveincompletetasklist lActiveIncompleteTaskList�  �  9 w     6BCB k    6DD EFE r    GHG m    II �JJ 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s  H o      �	�	 0 thetext theTextF KLK r    MNM b    OPO b    QRQ o    �� 0 thetext theTextR n    
STS 1    
�
� 
lengT o    �� (0 lactiveprojectlist lActiveProjectListP m    UU �VV $   a c t i v e   p r o j e c t s ,  N o      �� 0 thetext theTextL WXW r    YZY b    [\[ b    ]^] o    �� 0 thetext theText^ n    _`_ 1    �
� 
leng` o    �� 40 ltodayscompletedtasklist lTodaysCompletedTaskList\ m    aa �bb 0   t a s k s   c o m p l e t e d   t o d a y ,  Z o      �� 0 thetext theTextX cdc r    #efe b    !ghg b    iji o    � �  0 thetext theTextj n    klk 1    ��
�� 
lengl o    ���� *0 laddedtodaytasklist lAddedTodayTaskListh m     mm �nn 0   t a s k s   a d d e d   t o d a y ,   a n d  f o      ���� 0 thetext theTextd opo r   $ -qrq b   $ +sts b   $ )uvu o   $ %���� 0 thetext theTextv n   % (wxw 1   & (��
�� 
lengx o   % &���� 60 lactiveincompletetasklist lActiveIncompleteTaskListt m   ) *yy �zz $   i n c o m p l e t e   t a s k s .r o      ���� 0 thetext theTextp {|{ l  . .��������  ��  ��  | }~} I  . 3����
�� .ascrcmnt****      � **** o   . /���� 0 thetext theText��  ~ ��� l  4 4��������  ��  ��  � ���� L   4 6�� o   4 5���� 0 thetext theText��  C�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  7 ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & T a s k s   a d d e d   t o d a y :  � n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList� o   - 2���� 0 nl  � o      ���� 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7���� 0 thetext theText� m   7 8�� ��� , N o n - w a i t   a d d e d   t o d a y :  � n   9 <��� 1   : <��
�� 
leng� o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� o   = B���� 0 nl  � o      ���� 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G���� 0 thetext theText� m   G H�� ��� 2 A c t i v e   i n c o m p l e t e   t a s k s :  � n   I L��� 1   J L��
�� 
leng� o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� o   M R���� 0 nl  � o      ���� 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y� � o   V W���� 0 thetext theText  m   W X � L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  � n   Y \ 1   Z \��
�� 
leng o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList� o   ] b���� 0 nl  � o      ���� 0 thetext theText�  l  f f��������  ��  ��    l  f f��������  ��  ��   	
	 I  f k����
�� .ascrcmnt****      � **** o   f g���� 0 thetext theText��  
  l  l l��������  ��  ��    r   l y c   l w b   l u l  l s���� I  l s��
�� .earsffdralis        afdr m   l m��
�� afdrdesk ����
�� 
rtyp m   n o��
�� 
TEXT��  ��  ��   m   s t �  o f   t o d a y . t x t m   u v��
�� 
TEXT o      ���� 0 thefilepath theFilePath  r   z � I  z ��� !
�� .rdwropenshor       file  o   z {���� 0 thefilepath theFilePath! ��"��
�� 
perm" m   | }��
�� boovtrue��   o      ���� 0 thefile theFile #$# I  � ���%&
�� .rdwrwritnull���     ****% o   � ����� 0 thetext theText& ��'(
�� 
refn' o   � ����� 0 thefile theFile( ��)��
�� 
wrat) m   � ���
�� rdwreof ��  $ *��* I  � ���+��
�� .rdwrclosnull���     ****+ o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ,-, l     ��������  ��  ��  - ./. i    !010 I      ��2���� 0 
writestats 
writeStats2 343 o      ���� 0 lfolderlist lFolderList4 565 o      ���� 0 lprojectlist lProjectList6 787 o      ���� (0 lactiveprojectlist lActiveProjectList8 9:9 o      ���� 0 	ltasklist 	lTaskList: ;<; o      ���� "0 lactivetasklist lActiveTaskList< =>= o      ���� (0 lcompletedtasklist lCompletedTaskList> ?@? o      ���� *0 lincompletetasklist lIncompleteTaskList@ ABA o      �� 40 ltodayscompletedtasklist lTodaysCompletedTaskListB CDC o      �~�~ &0 lnonrepincomplete lNonRepIncompleteD E�}E o      �|�| *0 laddedtodaytasklist lAddedTodayTaskList�}  ��  1 w     �FGF k    �HH IJI l    �{KL�{  K b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   L �MM � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   tJ NON r    PQP m    RR �SS  Q o      �z�z 0 thetext theTextO TUT l    �yVW�y  V J D		set theText to theText & "folders: " & length of lFolderList & nl    W �XX � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  U YZY r    [\[ b    ]^] b    _`_ b    	aba o    �x�x 0 thetext theTextb m    cc �dd  p r o j e c t s :  ` n   	 efe 1   
 �w
�w 
lengf o   	 
�v�v 0 lprojectlist lProjectList^ o    �u�u 0 nl  \ o      �t�t 0 thetext theTextZ ghg r    %iji b    #klk b    mnm b    opo o    �s�s 0 thetext theTextp m    qq �rr " a c t i v e   p r o j e c t s :  n n    sts 1    �r
�r 
lengt o    �q�q (0 lactiveprojectlist lActiveProjectListl o    "�p�p 0 nl  j o      �o�o 0 thetext theTexth uvu r   & 5wxw b   & 3yzy b   & -{|{ b   & )}~} o   & '�n�n 0 thetext theText~ m   ' ( ���  t a s k s :  | n   ) ,��� 1   * ,�m
�m 
leng� o   ) *�l�l 0 	ltasklist 	lTaskListz o   - 2�k�k 0 nl  x o      �j�j 0 thetext theTextv ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�i�i 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�h
�h 
leng� o   9 :�g�g "0 lactivetasklist lActiveTaskList� o   = B�f�f 0 nl  � o      �e�e 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�d�d 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�c
�c 
leng� o   I J�b�b (0 lcompletedtasklist lCompletedTaskList� o   M R�a�a 0 nl  � o      �`�` 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�_�_ 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�^
�^ 
leng� o   Y Z�]�] *0 lincompletetasklist lIncompleteTaskList� o   ] b�\�\ 0 nl  � o      �[�[ 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�Z�Z 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�Y
�Y 
leng� o   i j�X�X 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�W�W 0 nl  � o      �V�V 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�U�U 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�T
�T 
leng� o   y z�S�S &0 lnonrepincomplete lNonRepIncomplete� o   } ��R�R 0 nl  � o      �Q�Q 0 thetext theText� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��P�P 0 thetext theText� m   � ��� ��� & T a s k s   a d d e d   t o d a y :  � n   � ���� 1   � ��O
�O 
leng� o   � ��N�N *0 laddedtodaytasklist lAddedTodayTaskList� o   � ��M�M 0 nl  � o      �L�L 0 thetext theText� ��� l  � ��K�J�I�K  �J  �I  � ��� I  � ��H��G
�H .ascrcmnt****      � ****� o   � ��F�F 0 thetext theText�G  � ��� l  � ��E�D�C�E  �D  �C  � ��� r   � ���� c   � ���� b   � ���� l  � ���B�A� I  � ��@��
�@ .earsffdralis        afdr� m   � ��?
�? afdrdesk� �>��=
�> 
rtyp� m   � ��<
�< 
TEXT�=  �B  �A  � m   � ��� ���  o f . t x t� m   � ��;
�; 
TEXT� o      �:�: 0 thefilepath theFilePath� ��� r   � ���� I  � ��9��
�9 .rdwropenshor       file� o   � ��8�8 0 thefilepath theFilePath� �7��6
�7 
perm� m   � ��5
�5 boovtrue�6  � o      �4�4 0 thefile theFile� ��� I  � ��3��
�3 .rdwrwritnull���     ****� o   � ��2�2 0 thetext theText� �1��
�1 
refn� o   � ��0�0 0 thefile theFile� �/��.
�/ 
wrat� m   � ��-
�- rdwreof �.  � ��,� I  � ��+��*
�+ .rdwrclosnull���     ****� o   � ��)�) 0 thefile theFile�*  �,  G�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  / ��� l     �(�'�&�(  �'  �&  � ��� i   " %   I      �%�$�% 0 
writedebug 
writeDebug �# o      �"�" 0 ltask lTask�#  �$   Z     ��!�  o     �� 	0 debug   w     k   
  	
	 r   
  b   
  b   
  m   
  �  T a s k   n a m e   i s   n    1    �
� 
pnam o    �� 0 ltask lTask o    �� 0 nl   o      �� 0 thetext theText
  r    % b    # b     m     �  T a s k   i d   i s   n     1    �
� 
ID    o    �� 0 ltask lTask o    "�� 0 nl   o      �� 0 thetext theText !"! r   & 5#$# b   & 3%&% b   & -'(' b   & ))*) o   & '�� 0 thetext theText* m   ' (++ �,, & C o m p l e t i o n   d a t e   i s  ( n  ) ,-.- 1   * ,�
� 
FCdc. o   ) *�� 0 ltask lTask& o   - 2�� 0 nl  $ o      �� 0 thetext theText" /0/ r   6 ;121 n  6 9343 1   7 9�
� 
FCdc4 o   6 7�� 0 ltask lTask2 o      �� 0 thedate theDate0 565 r   < A787 n   < ?9:9 1   = ?�
� 
dstr: o   < =�� 0 thedate theDate8 o      �� 0 thedateonly theDateOnly6 ;<; r   B O=>= b   B M?@? b   B GABA b   B ECDC o   B C�� 0 thetext theTextD m   C DEE �FF 4 C o m p l e t i o n   d a t e   i s   r e a l l y  B o   E F�
�
 0 thedateonly theDateOnly@ o   G L�	�	 0 nl  > o      �� 0 thetext theText< GHG r   P ]IJI c   P [KLK b   P YMNM l  P WO��O I  P W�PQ
� .earsffdralis        afdrP m   P Q�
� afdrdeskQ �R�
� 
rtypR m   R S�
� 
TEXT�  �  �  N m   W XSS �TT  o f D e b u g . t x tL m   Y Z� 
�  
TEXTJ o      ���� 0 thefilepath theFilePathH UVU r   ^ gWXW I  ^ e��YZ
�� .rdwropenshor       fileY o   ^ _���� 0 thefilepath theFilePathZ ��[��
�� 
perm[ m   ` a��
�� boovtrue��  X o      ���� 0 thefile theFileV \]\ I  h y��^_
�� .rdwrwritnull���     ****^ o   h i���� 0 thetext theText_ ��`a
�� 
refn` o   l m���� 0 thefile theFilea ��b��
�� 
wratb m   p s��
�� rdwreof ��  ] c��c I  z ��d��
�� .rdwrclosnull���     ****d o   z {���� 0 thefile theFile��  ��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �!  �   � e��e l     ��������  ��  ��  ��       ��fg��hijklmno��  f 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****g �pp  

�� boovfalsh �� �����qr���� 0 	pathtolib 	pathToLib��  ��  q ������ 0 apppath appPath�� 0 myfolderpath myFolderPathr ����������
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,Ei ��#����st���� 0 getoflib getOFLib��  ��  s ���� 0 thelib theLibt ����0��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�j ��9����uv����  0 generatestatus generateStatus�� ��w�� w  ���������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList��  u ������������ (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� 0 thetext theTextv CI��Uamy��
�� 
leng
�� .ascrcmnt****      � ****�� 7�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j O�k �������xy���� 0 tweetstatus tweetStatus�� ��z�� z  ���� 0 v  ��  x ������ 0 v  �� 	0 oflib  y ������ 0 getoflib getOFLib�� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ Ul �������{|���� $0 writedailystatus writeDailyStatus�� ��}�� }  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList��  { 	�������������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile| �����������������������������������
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
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j m ��1����~���� 0 
writestats 
writeStats�� ����� 
� 
 ���������������������� 0 lfolderlist lFolderList�� 0 lprojectlist lProjectList�� (0 lactiveprojectlist lActiveProjectList�� 0 	ltasklist 	lTaskList�� "0 lactivetasklist lActiveTaskList�� (0 lcompletedtasklist lCompletedTaskList�� *0 lincompletetasklist lIncompleteTaskList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� &0 lnonrepincomplete lNonRepIncomplete�� *0 laddedtodaytasklist lAddedTodayTaskList��  ~ ��~�}�|�{�z�y�x�w�v�u�t�s� 0 lfolderlist lFolderList�~ 0 lprojectlist lProjectList�} (0 lactiveprojectlist lActiveProjectList�| 0 	ltasklist 	lTaskList�{ "0 lactivetasklist lActiveTaskList�z (0 lcompletedtasklist lCompletedTaskList�y *0 lincompletetasklist lIncompleteTaskList�x 40 ltodayscompletedtasklist lTodaysCompletedTaskList�w &0 lnonrepincomplete lNonRepIncomplete�v *0 laddedtodaytasklist lAddedTodayTaskList�u 0 thetext theText�t 0 thefilepath theFilePath�s 0 thefile theFile GRc�rq�������q�p�o�n�m��l�k�j�i�h�g�f�e
�r 
leng
�q .ascrcmnt****      � ****
�p afdrdesk
�o 
rtyp
�n 
TEXT
�m .earsffdralis        afdr
�l 
perm
�k .rdwropenshor       file
�j 
refn
�i 
wrat
�h rdwreof �g 
�f .rdwrwritnull���     ****
�e .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j n �d�c�b���a�d 0 
writedebug 
writeDebug�c �`��` �  �_�_ 0 ltask lTask�b  � �^�]�\�[�Z�Y�^ 0 ltask lTask�] 0 thetext theText�\ 0 thedate theDate�[ 0 thedateonly theDateOnly�Z 0 thefilepath theFilePath�Y 0 thefile theFile� �X�W+�V�UE�T�S�R�QS�P�O�N�M�L�K�J�I
�X 
pnam
�W 
ID  
�V 
FCdc
�U 
dstr
�T afdrdesk
�S 
rtyp
�R 
TEXT
�Q .earsffdralis        afdr
�P 
perm
�O .rdwropenshor       file
�N 
refn
�M 
wrat
�L rdwreof �K 
�J .rdwrwritnull���     ****
�I .rdwrclosnull���     ****�a �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y ho �H��G�F���E
�H .aevtoappnull  �   � ****� k    9��  ��  �D�D  �G  �F  �  � (�C�B ��A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�( ��' � ��&�%�$�#�" ��!�C 0 getoflib getOFLib�B 	0 oflib  
�A 
FCDo�@ 0 thedocument theDocument�? 0 getprojects getProjects
�> 
rslt�= 0 projectlist projectList�< 20 filterforactiveprojects filterForActiveProjects�; &0 activeprojectlist activeProjectList�: 0 gettasks getTasks�9 0 tasklist taskList�8 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�7  0 activetasklist activeTaskList�6 20 filterforcompletedtasks filterForCompletedTasks�5 &0 completedtasklist completedTaskList
�4 .misccurdldt    ��� null
�3 
dstr�2 >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�1 20 todayscompletedtasklist todaysCompletedTaskList�0 40 filterforincompletetasks filterForIncompleteTasks�/ 40 activeincompletetasklist activeIncompleteTaskList�. 60 filterfortasksaddedondate filterForTasksAddedOnDate�- (0 addedtodaytasklist addedTodayTaskList�, H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�+ $0 nonemptyprojects nonEmptyProjects�* �)  0 generatestatus generateStatus�( 
0 svalue  
�' 
btns
�& 
dflt
�% .sysodlogaskr        TEXT�$ 0 question  
�# 
bhit�" 
0 answer  �! 0 tweetstatus tweetStatus�E:)j+  E�O�.*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� *�k+ UO�E�O� *�*j a ,l+ UO�E` O� *�k+ UO�E` O� *�*j a ,l+ UO�E` O� 	*�jl+ UO�E` O)_ _ _ _ a + E` Oa a a a  lva !la  "E` #O_ #a $,E` %O_ %a &  )_ k+ 'Y hOPUascr  ��ޭ