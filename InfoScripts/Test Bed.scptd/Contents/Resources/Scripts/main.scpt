FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

This script is the "test bed" script. It will let you pick and choose what you want to 
examine / test in your analysis scripts. Mostly, it is here as my test 
harness.

Methods here can be cut and paste into the various End of day and Start of day scripts,
as useful for your workflow

by Seth Landsman, Ph.D. seth@homeforderangedscientists.net

	Copyright (C) 2011, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released MAR2011
     � 	 	< 
 
 T h i s   s c r i p t   i s   t h e   " t e s t   b e d "   s c r i p t .   I t   w i l l   l e t   y o u   p i c k   a n d   c h o o s e   w h a t   y o u   w a n t   t o   
 e x a m i n e   /   t e s t   i n   y o u r   a n a l y s i s   s c r i p t s .   M o s t l y ,   i t   i s   h e r e   a s   m y   t e s t   
 h a r n e s s . 
 
 M e t h o d s   h e r e   c a n   b e   c u t   a n d   p a s t e   i n t o   t h e   v a r i o u s   E n d   o f   d a y   a n d   S t a r t   o f   d a y   s c r i p t s , 
 a s   u s e f u l   f o r   y o u r   w o r k f l o w 
 
 b y   S e t h   L a n d s m a n ,   P h . D .   s e t h @ h o m e f o r d e r a n g e d s c i e n t i s t s . n e t 
 
 	 C o p y r i g h t   ( C )   2 0 1 1 ,   S e t h   L a n d s m a n ,   P h . D . 
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
 	 v e r s i o n   0 . 1 ,   r e l e a s e d   M A R 2 0 1 1 
   
  
 l     ��������  ��  ��        j     �� �� 0 nl    l     ����  I    �� ��
�� .sysontocTEXT       shor  m     ���� 
��  ��  ��        j    	�� �� 	0 debug    m    ��
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  + !���� ! O   + " # " k   * $ $  % & % r     ' ( ' 1    ��
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
rslt � o      ���� 40 activeincompletetasklist activeIncompleteTaskList �  � � � l  � �����~��  �  �~   �  � � � r   � � � � � I  � ��}�|�{
�} .misccurdldt    ��� null�|  �{   � o      �z�z 0 
targetdate 
targetDate �  � � � r   � � � � � \   � � � � � o   � ��y�y 0 
targetdate 
targetDate � ]   � � � � � m   � ��x�x d � 1   � ��w
�w 
days � o      �v�v 0 
targetdate 
targetDate �  � � � l  � ��u�t�s�u  �t  �s   �  � � � O  � � � � � I   � ��r ��q�r B0 filterfortaskscreatedbeforedate filterForTasksCreatedBeforeDate �  � � � o   � ��p�p 40 activeincompletetasklist activeIncompleteTaskList �  ��o � o   � ��n�n 0 
targetdate 
targetDate�o  �q   � o   � ��m�m 	0 oflib   �  � � � r   � � � � � 1   � ��l
�l 
rslt � o      �k�k "0 oldcreatedtasks oldCreatedTasks �  � � � l  � ��j�i�h�j  �i  �h   �  � � � r   � � � � � n  � � � � � I   � ��g ��f�g 00 generatestatusfromlist generateStatusFromList �  ��e � o   � ��d�d 40 activeincompletetasklist activeIncompleteTaskList�e  �f   �  f   � � � o      �c�c 
0 svalue   �  � � � r   � � � � � n  � � � � � I   � ��b ��a�b 00 generatestatusfromlist generateStatusFromList �  ��` � o   � ��_�_ "0 oldcreatedtasks oldCreatedTasks�`  �a   �  f   � � � o      �^�^ 
0 svalue   �  � � � l  � ��]�\�[�]  �\  �[   �  � � � X   �( ��Z � � k  # � �  � � � r   � � � n   � � � 1  �Y
�Y 
pnam � o  �X�X 0 thistask thisTask � o      �W�W 0 l   �  ��V � I #�U ��T
�U .ascrcmnt****      � **** � o  �S�S 0 l  �T  �V  �Z 0 thistask thisTask � o   ��R�R "0 oldcreatedtasks oldCreatedTasks �  ��Q � l ))�P�O�N�P  �O  �N  �Q   # m    	 � ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��      � � � l     �M�L�K�M  �L  �K   �  � � � i   
  � � � I      �J ��I�J 00 generatestatusfromlist generateStatusFromList �  ��H � o      �G�G 0 llist lList�H  �I   � w      � � � k     � �  � � � r     � � � m     � � � � � 4 S i z e   o f   r e q u e s t e d   l i s t   i s   � o      �F�F 0 thetext theText �  � � � r     � � � b     � � � b     � � � o    �E�E 0 thetext theText � n    
 � � � 1    
�D
�D 
leng � o    �C�C 0 llist lList � m     � � � � �    i t e m s . � o      �B�B 0 thetext theText �  � � � l   �A�@�?�A  �@  �?   �  � � � I   �> ��=
�> .ascrcmnt****      � **** � o    �<�< 0 thetext theText�=   �  �  � l   �;�:�9�;  �:  �9    �8 L     o    �7�7 0 thetext theText�8   ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  l     �6�5�4�6  �5  �4    i     I      �3�2�1�3 0 	pathtolib 	pathToLib�2  �1   k     		 

 r     	 l    �0�/ I    �.
�. .earsffdralis        afdr  f      �-�,
�- 
from m    �+
�+ fldmfldu�,  �0  �/   o      �*�* 0 apppath appPath  l   
 
�)�)   y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g  l  
 
�(�'�&�(  �'  �&    L   
  c   
  l  
 �%�$ b   
   o   
 �#�# 0 apppath appPath  m    !! �"" 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�%  �$   m    �"
�" 
ctxt #�!# L    $$ n    %&% 1    � 
�  
strq& o    �� 0 myfolderpath myFolderPath�!   '(' l     ����  �  �  ( )*) i    +,+ I      ���� 0 getoflib getOFLib�  �  , k     -- ./. r     010 I    �2�
� .sysoloadscpt        file2 4     
�3
� 
file3 l   	4��4 b    	565 n   787 I    ���� 0 	pathtolib 	pathToLib�  �  8  f    6 m    99 �::  O F L i b . s c p t�  �  �  1 o      �� 0 thelib theLib/ ;�; L    << o    �� 0 thelib theLib�  * =>= l     ����  �  �  > ?@? i    ABA I      �
C�	�
  0 generatestatus generateStatusC DED o      �� (0 lactiveprojectlist lActiveProjectListE FGF o      �� 40 ltodayscompletedtasklist lTodaysCompletedTaskListG HIH o      �� *0 laddedtodaytasklist lAddedTodayTaskListI JKJ o      �� 60 lactiveincompletetasklist lActiveIncompleteTaskListK LML o      �� *0 lwaitingfortasklist lWaitingForTaskListM N�N o      �� &0 lnonemptyprojects lNonEmptyProjects�  �	  B w     JOPO k    JQQ RSR r    TUT m    VV �WW 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s  U o      �� 0 thetext theTextS XYX r    Z[Z b    \]\ b    ^_^ o    � �  0 thetext theText_ n    
`a` 1    
��
�� 
lenga o    ���� (0 lactiveprojectlist lActiveProjectList] m    bb �cc $   a c t i v e   p r o j e c t s ,  [ o      ���� 0 thetext theTextY ded r    fgf b    hih b    jkj o    ���� 0 thetext theTextk n    lml 1    ��
�� 
lengm o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListi m    nn �oo 0   t a s k s   c o m p l e t e d   t o d a y ,  g o      ���� 0 thetext theTexte pqp r    #rsr b    !tut b    vwv o    ���� 0 thetext theTextw n    xyx 1    ��
�� 
lengy o    ���� *0 laddedtodaytasklist lAddedTodayTaskListu m     zz �{{ (   t a s k s   a d d e d   t o d a y ,  s o      ���� 0 thetext theTextq |}| r   $ -~~ b   $ +��� b   $ )��� o   $ %���� 0 thetext theText� n   % (��� 1   & (��
�� 
leng� o   % &���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� m   ) *�� ��� &   i n c o m p l e t e   t a s k s ,   o      ���� 0 thetext theText} ��� r   . 7��� b   . 5��� b   . 3��� o   . /���� 0 thetext theText� n   / 2��� 1   0 2��
�� 
leng� o   / 0���� *0 lwaitingfortasklist lWaitingForTaskList� m   3 4�� ��� &   w a i t i n g   f o r s ,   a n d  � o      ���� 0 thetext theText� ��� r   8 A��� b   8 ?��� b   8 =��� o   8 9���� 0 thetext theText� n   9 <��� 1   : <��
�� 
leng� o   9 :���� &0 lnonemptyprojects lNonEmptyProjects� m   = >�� ��� 6   a c t i v e   n o n   e m p t y   p r o j e c t s .� o      ���� 0 thetext theText� ��� l  B B��������  ��  ��  � ��� I  B G�����
�� .ascrcmnt****      � ****� o   B C���� 0 thetext theText��  � ��� l  H H��������  ��  ��  � ���� L   H J�� o   H I���� 0 thetext theText��  P�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  @ ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    !��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & T a s k s   a d d e d   t o d a y :  � n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList� o   - 2���� 0 nl  � o      ���� 0 thetext theText�    r   6 E b   6 C b   6 = b   6 9	 o   6 7���� 0 thetext theText	 m   7 8

 � , N o n - w a i t   a d d e d   t o d a y :   n   9 < 1   : <��
�� 
leng o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList o   = B���� 0 nl   o      ���� 0 thetext theText  r   F U b   F S b   F M b   F I o   F G���� 0 thetext theText m   G H � 2 A c t i v e   i n c o m p l e t e   t a s k s :   n   I L 1   J L��
�� 
leng o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList o   M R���� 0 nl   o      ���� 0 thetext theText  r   V e b   V c !  b   V ]"#" b   V Y$%$ o   V W���� 0 thetext theText% m   W X&& �'' L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  # n   Y \()( 1   Z \��
�� 
leng) o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList! o   ] b���� 0 nl   o      ���� 0 thetext theText *+* l  f f��������  ��  ��  + ,-, l  f f��������  ��  ��  - ./. I  f k��0��
�� .ascrcmnt****      � ****0 o   f g���� 0 thetext theText��  / 121 l  l l��������  ��  ��  2 343 r   l y565 c   l w787 b   l u9:9 l  l s;����; I  l s��<=
�� .earsffdralis        afdr< m   l m��
�� afdrdesk= ��>��
�� 
rtyp> m   n o��
�� 
TEXT��  ��  ��  : m   s t?? �@@  o f   t o d a y . t x t8 m   u v��
�� 
TEXT6 o      ���� 0 thefilepath theFilePath4 ABA r   z �CDC I  z ���EF
�� .rdwropenshor       fileE o   z {���� 0 thefilepath theFilePathF ��G��
�� 
permG m   | }��
�� boovtrue��  D o      ���� 0 thefile theFileB HIH I  � ���JK
�� .rdwrwritnull���     ****J o   � ����� 0 thetext theTextK ��LM
�� 
refnL o   � ����� 0 thefile theFileM ��N��
�� 
wratN m   � ���
�� rdwreof ��  I O�O I  � ��~P�}
�~ .rdwrclosnull���     ****P o   � ��|�| 0 thefile theFile�}  �  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � QRQ l     �{�z�y�{  �z  �y  R STS i   " %UVU I      �xW�w�x 0 
writestats 
writeStatsW XYX o      �v�v 0 lfolderlist lFolderListY Z[Z o      �u�u 0 lprojectlist lProjectList[ \]\ o      �t�t (0 lactiveprojectlist lActiveProjectList] ^_^ o      �s�s 0 	ltasklist 	lTaskList_ `a` o      �r�r "0 lactivetasklist lActiveTaskLista bcb o      �q�q (0 lcompletedtasklist lCompletedTaskListc ded o      �p�p *0 lincompletetasklist lIncompleteTaskListe fgf o      �o�o 40 ltodayscompletedtasklist lTodaysCompletedTaskListg hih o      �n�n &0 lnonrepincomplete lNonRepIncompletei j�mj o      �l�l *0 laddedtodaytasklist lAddedTodayTaskList�m  �w  V w     �klk k    �mm non l    �kpq�k  p b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   q �rr � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   to sts r    uvu m    ww �xx  v o      �j�j 0 thetext theTextt yzy l    �i{|�i  { J D		set theText to theText & "folders: " & length of lFolderList & nl    | �}} � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  z ~~ r    ��� b    ��� b    ��� b    	��� o    �h�h 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �g
�g 
leng� o   	 
�f�f 0 lprojectlist lProjectList� o    �e�e 0 nl  � o      �d�d 0 thetext theText ��� r    %��� b    #��� b    ��� b    ��� o    �c�c 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �b
�b 
leng� o    �a�a (0 lactiveprojectlist lActiveProjectList� o    "�`�` 0 nl  � o      �_�_ 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�^�^ 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�]
�] 
leng� o   ) *�\�\ 0 	ltasklist 	lTaskList� o   - 2�[�[ 0 nl  � o      �Z�Z 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�Y�Y 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�X
�X 
leng� o   9 :�W�W "0 lactivetasklist lActiveTaskList� o   = B�V�V 0 nl  � o      �U�U 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�T�T 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�S
�S 
leng� o   I J�R�R (0 lcompletedtasklist lCompletedTaskList� o   M R�Q�Q 0 nl  � o      �P�P 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�O�O 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�N
�N 
leng� o   Y Z�M�M *0 lincompletetasklist lIncompleteTaskList� o   ] b�L�L 0 nl  � o      �K�K 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�J�J 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�I
�I 
leng� o   i j�H�H 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�G�G 0 nl  � o      �F�F 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�E�E 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�D
�D 
leng� o   y z�C�C &0 lnonrepincomplete lNonRepIncomplete� o   } ��B�B 0 nl  � o      �A�A 0 thetext theText� ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��@�@ 0 thetext theText� m   � ��� ��� & T a s k s   a d d e d   t o d a y :  � n   � ���� 1   � ��?
�? 
leng� o   � ��>�> *0 laddedtodaytasklist lAddedTodayTaskList� o   � ��=�= 0 nl  � o      �<�< 0 thetext theText� ��� l  � ��;�:�9�;  �:  �9  � ��� I  � ��8 �7
�8 .ascrcmnt****      � ****  o   � ��6�6 0 thetext theText�7  �  l  � ��5�4�3�5  �4  �3    r   � � c   � � b   � �	
	 l  � ��2�1 I  � ��0
�0 .earsffdralis        afdr m   � ��/
�/ afdrdesk �.�-
�. 
rtyp m   � ��,
�, 
TEXT�-  �2  �1  
 m   � � �  o f . t x t m   � ��+
�+ 
TEXT o      �*�* 0 thefilepath theFilePath  r   � � I  � ��)
�) .rdwropenshor       file o   � ��(�( 0 thefilepath theFilePath �'�&
�' 
perm m   � ��%
�% boovtrue�&   o      �$�$ 0 thefile theFile  I  � ��#
�# .rdwrwritnull���     **** o   � ��"�" 0 thetext theText �!
�! 
refn o   � �� �  0 thefile theFile ��
� 
wrat m   � ��
� rdwreof �   � I  � �� �
� .rdwrclosnull���     ****  o   � ��� 0 thefile theFile�  �  l�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  T !"! l     ����  �  �  " #$# i   & )%&% I      �'�� 0 
writedebug 
writeDebug' (�( o      �� 0 ltask lTask�  �  & Z     �)*��) o     �� 	0 debug  * w    +,+ k   
 -- ./. r   
 010 b   
 232 b   
 454 m   
 66 �77  T a s k   n a m e   i s  5 n   898 1    �
� 
pnam9 o    �� 0 ltask lTask3 o    �� 0 nl  1 o      �� 0 thetext theText/ :;: r    %<=< b    #>?> b    @A@ m    BB �CC  T a s k   i d   i s  A n   DED 1    �

�
 
ID  E o    �	�	 0 ltask lTask? o    "�� 0 nl  = o      �� 0 thetext theText; FGF r   & 5HIH b   & 3JKJ b   & -LML b   & )NON o   & '�� 0 thetext theTextO m   ' (PP �QQ & C o m p l e t i o n   d a t e   i s  M n  ) ,RSR 1   * ,�
� 
FCdcS o   ) *�� 0 ltask lTaskK o   - 2�� 0 nl  I o      �� 0 thetext theTextG TUT r   6 ;VWV n  6 9XYX 1   7 9�
� 
FCdcY o   6 7� �  0 ltask lTaskW o      ���� 0 thedate theDateU Z[Z r   < A\]\ n   < ?^_^ 1   = ?��
�� 
dstr_ o   < =���� 0 thedate theDate] o      ���� 0 thedateonly theDateOnly[ `a` r   B Obcb b   B Mded b   B Gfgf b   B Ehih o   B C���� 0 thetext theTexti m   C Djj �kk 4 C o m p l e t i o n   d a t e   i s   r e a l l y  g o   E F���� 0 thedateonly theDateOnlye o   G L���� 0 nl  c o      ���� 0 thetext theTexta lml r   P ]non c   P [pqp b   P Yrsr l  P Wt����t I  P W��uv
�� .earsffdralis        afdru m   P Q��
�� afdrdeskv ��w��
�� 
rtypw m   R S��
�� 
TEXT��  ��  ��  s m   W Xxx �yy  o f D e b u g . t x tq m   Y Z��
�� 
TEXTo o      ���� 0 thefilepath theFilePathm z{z r   ^ g|}| I  ^ e��~
�� .rdwropenshor       file~ o   ^ _���� 0 thefilepath theFilePath �����
�� 
perm� m   ` a��
�� boovtrue��  } o      ���� 0 thefile theFile{ ��� I  h y����
�� .rdwrwritnull���     ****� o   h i���� 0 thetext theText� ����
�� 
refn� o   l m���� 0 thefile theFile� �����
�� 
wrat� m   p s��
�� rdwreof ��  � ���� I  z �����
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  ,�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  �  $ ���� l     ��������  ��  ��  ��       �����������������  � ������������������������ 0 nl  �� 	0 debug  �� 00 generatestatusfromlist generateStatusFromList�� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� �� ����������� 00 generatestatusfromlist generateStatusFromList�� ����� �  ���� 0 llist lList��  � ������ 0 llist lList�� 0 thetext theText�  � ��� ���
�� 
leng
�� .ascrcmnt****      � ****�� �Z�E�O���,%�%E�O�j O�� ������������ 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ������!����
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��,���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����9��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��B����������  0 generatestatus generateStatus�� ����� �  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects��  � ���������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects�� 0 thetext theText� 
PV��bnz�����
�� 
leng
�� .ascrcmnt****      � ****�� K�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j 	O�� ������������� 0 tweetstatus tweetStatus�� ����� �  ���� 0 v  ��  � ������ 0 v  �� 	0 oflib  � ������ 0 getoflib getOFLib�� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U� ������������� $0 writedailystatus writeDailyStatus�� ����� �  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList��  � 	����������������~�� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�� 0 thetext theText� 0 thefilepath theFilePath�~ 0 thefile theFile� ����}��
&�|�{�z�y�x?�w�v�u�t�s�r�q�p
�} 
leng
�| .ascrcmnt****      � ****
�{ afdrdesk
�z 
rtyp
�y 
TEXT
�x .earsffdralis        afdr
�w 
perm
�v .rdwropenshor       file
�u 
refn
�t 
wrat
�s rdwreof �r 
�q .rdwrwritnull���     ****
�p .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �oV�n�m���l�o 0 
writestats 
writeStats�n �k��k 
� 
 �j�i�h�g�f�e�d�c�b�a�j 0 lfolderlist lFolderList�i 0 lprojectlist lProjectList�h (0 lactiveprojectlist lActiveProjectList�g 0 	ltasklist 	lTaskList�f "0 lactivetasklist lActiveTaskList�e (0 lcompletedtasklist lCompletedTaskList�d *0 lincompletetasklist lIncompleteTaskList�c 40 ltodayscompletedtasklist lTodaysCompletedTaskList�b &0 lnonrepincomplete lNonRepIncomplete�a *0 laddedtodaytasklist lAddedTodayTaskList�m  � �`�_�^�]�\�[�Z�Y�X�W�V�U�T�` 0 lfolderlist lFolderList�_ 0 lprojectlist lProjectList�^ (0 lactiveprojectlist lActiveProjectList�] 0 	ltasklist 	lTaskList�\ "0 lactivetasklist lActiveTaskList�[ (0 lcompletedtasklist lCompletedTaskList�Z *0 lincompletetasklist lIncompleteTaskList�Y 40 ltodayscompletedtasklist lTodaysCompletedTaskList�X &0 lnonrepincomplete lNonRepIncomplete�W *0 laddedtodaytasklist lAddedTodayTaskList�V 0 thetext theText�U 0 thefilepath theFilePath�T 0 thefile theFile� lw��S���������R�Q�P�O�N�M�L�K�J�I�H�G�F
�S 
leng
�R .ascrcmnt****      � ****
�Q afdrdesk
�P 
rtyp
�O 
TEXT
�N .earsffdralis        afdr
�M 
perm
�L .rdwropenshor       file
�K 
refn
�J 
wrat
�I rdwreof �H 
�G .rdwrwritnull���     ****
�F .rdwrclosnull���     ****�l ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �E&�D�C���B�E 0 
writedebug 
writeDebug�D �A��A �  �@�@ 0 ltask lTask�C  � �?�>�=�<�;�:�? 0 ltask lTask�> 0 thetext theText�= 0 thedate theDate�< 0 thedateonly theDateOnly�; 0 thefilepath theFilePath�: 0 thefile theFile� ,6�9B�8P�7�6j�5�4�3�2x�1�0�/�.�-�,�+�*
�9 
pnam
�8 
ID  
�7 
FCdc
�6 
dstr
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
�* .rdwrclosnull���     ****�B �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �)��(�'���&
�) .aevtoappnull  �   � ****� k    +��  ��  �%�%  �(  �'  � �$�$ 0 thistask thisTask� #�#�" ��!� ����������������������
�	��������# 0 getoflib getOFLib�" 	0 oflib  
�! 
FCDo�  0 thedocument theDocument� 0 getprojects getProjects
� 
rslt� 0 projectlist projectList� 20 filterforactiveprojects filterForActiveProjects� &0 activeprojectlist activeProjectList� 0 gettasks getTasks� 0 tasklist taskList� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�  0 activetasklist activeTaskList� 20 filterforcompletedtasks filterForCompletedTasks� &0 completedtasklist completedTaskList
� .misccurdldt    ��� null
� 
dstr� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� 20 todayscompletedtasklist todaysCompletedTaskList� 40 filterforincompletetasks filterForIncompleteTasks� 40 activeincompletetasklist activeIncompleteTaskList� 0 
targetdate 
targetDate� d
� 
days� B0 filterfortaskscreatedbeforedate filterForTasksCreatedBeforeDate�
 "0 oldcreatedtasks oldCreatedTasks�	 00 generatestatusfromlist generateStatusFromList� 
0 svalue  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam� 0 l  
� .ascrcmnt****      � ****�&,)j+  E�O� *�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� *�k+ UO�E�O� *�*j a ,l+ UO�E` O� *�k+ UO�E` O*j E` O_ a _  E` O� *_ _ l+ UO�E` O)_ k+ E` O)_ k+ E` O +_ [a a l kh  �a  ,E` !O_ !j "[OY��OPUascr  ��ޭ