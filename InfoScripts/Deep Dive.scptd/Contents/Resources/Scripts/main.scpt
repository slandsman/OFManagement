FasdUAS 1.101.10   ��   ��    k             l      ��  ��   }w

This script is the "deep dive" script. It will let you know everything about your
OF document as we can think to yank out of it. 

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
     � 	 	� 
 
 T h i s   s c r i p t   i s   t h e   " d e e p   d i v e "   s c r i p t .   I t   w i l l   l e t   y o u   k n o w   e v e r y t h i n g   a b o u t   y o u r 
 O F   d o c u m e n t   a s   w e   c a n   t h i n k   t o   y a n k   o u t   o f   i t .   
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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  T !���� ! O   T " # " k   S $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 20 filterforactiveprojects filterForActiveProjects ;  <�� < o   ' (���� 0 projectlist projectList��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� &0 activeprojectlist activeProjectList >  A B A l  2 2��������  ��  ��   B  C D C O  2 > E F E I   6 =�� G���� 0 gettasks getTasks G  H I H o   7 8���� 0 thedocument theDocument I  J�� J o   8 9���� 0 projectlist projectList��  ��   F o   2 3���� 	0 oflib   D  K L K r   ? B M N M 1   ? @��
�� 
rslt N o      ���� 0 tasklist taskList L  O P O l  C C��������  ��  ��   P  Q R Q r   C J S T S l  C H U���� U I  C H�� V��
�� .corecnte****       **** V o   C D���� 0 tasklist taskList��  ��  ��   T o      ���� 0 n   R  W X W l  K K��������  ��  ��   X  Y Z Y O  K V [ \ [ I   O U�� ]���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks ]  ^�� ^ o   P Q���� 0 tasklist taskList��  ��   \ o   K L���� 	0 oflib   Z  _ ` _ r   W Z a b a 1   W X��
�� 
rslt b o      ���� 0 tasklist taskList `  c d c l  [ [��������  ��  ��   d  e f e I  [ d�� g��
�� .ascrcmnt****      � **** g l  [ ` h���� h I  [ `�� i��
�� .corecnte****       **** i o   [ \���� 0 tasklist taskList��  ��  ��  ��   f  j k j l  e e��������  ��  ��   k  l m l O  e q n o n I   i p�� p���� 0 gettasks getTasks p  q r q o   j k���� 0 thedocument theDocument r  s�� s o   k l���� &0 activeprojectlist activeProjectList��  ��   o o   e f���� 	0 oflib   m  t u t r   r w v w v 1   r s��
�� 
rslt w o      ����  0 activetasklist activeTaskList u  x y x l  x x��������  ��  ��   y  z { z I  x ��� |��
�� .ascrcmnt****      � **** | l  x  }���� } I  x �� ~��
�� .corecnte****       **** ~ o   x {����  0 activetasklist activeTaskList��  ��  ��  ��   {   �  l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks �  ��� � o   � �����  0 activetasklist activeTaskList��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ����  0 activetasklist activeTaskList �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � I  � ��� ��
�� .corecnte****       **** � o   � ��~�~  0 activetasklist activeTaskList�  ��  ��  ��   �  � � � l  � ��}�|�{�}  �|  �{   �  � � � O  � � � � � I   � ��z ��y�z 20 filterforcompletedtasks filterForCompletedTasks �  ��x � o   � ��w�w 0 tasklist taskList�x  �y   � o   � ��v�v 	0 oflib   �  � � � r   � � � � � 1   � ��u
�u 
rslt � o      �t�t &0 completedtasklist completedTaskList �  � � � l  � ��s�r�q�s  �r  �q   �  � � � O  � � � � � I   � ��p ��o�p >0 filterforcompletedtasksondate filterForCompletedTasksOnDate �  � � � o   � ��n�n &0 completedtasklist completedTaskList �  ��m � n   � � � � � 1   � ��l
�l 
dstr � l  � � ��k�j � I  � ��i�h�g
�i .misccurdldt    ��� null�h  �g  �k  �j  �m  �o   � o   � ��f�f 	0 oflib   �  � � � r   � � � � � 1   � ��e
�e 
rslt � o      �d�d 20 todayscompletedtasklist todaysCompletedTaskList �  � � � l  � ��c�b�a�c  �b  �a   �  � � � O  � � � � � I   � ��` ��_�` 40 filterforincompletetasks filterForIncompleteTasks �  ��^ � o   � ��]�]  0 activetasklist activeTaskList�^  �_   � o   � ��\�\ 	0 oflib   �  � � � r   � � � � � 1   � ��[
�[ 
rslt � o      �Z�Z 40 activeincompletetasklist activeIncompleteTaskList �  � � � l  � ��Y�X�W�Y  �X  �W   �  � � � I  � ��V ��U
�V .ascrcmnt****      � **** � l  � � ��T�S � I  � ��R ��Q
�R .corecnte****       **** � o   � ��P�P 40 activeincompletetasklist activeIncompleteTaskList�Q  �T  �S  �U   �  � � � l  � ��O�N�M�O  �N  �M   �  � � � O  � � � � I   ��L ��K�L 60 filterfortasksaddedondate filterForTasksAddedOnDate �  � � � o   � ��J�J 0 tasklist taskList �  ��I � n   � � � � 1   ��H
�H 
dstr � l  � � ��G�F � I  � ��E�D�C
�E .misccurdldt    ��� null�D  �C  �G  �F  �I  �K   � o   � ��B�B 	0 oflib   �  � � � r   � � � 1  	�A
�A 
rslt � o      �@�@ (0 addedtodaytasklist addedTodayTaskList �  � � � l �?�>�=�?  �>  �=   �  � � � O  � � � I  �< ��;�< 60 filterfortaskswithcontext filterForTasksWithContext �  � � � o  �:�: 0 tasklist taskList �  ��9 � m   � � � � �  W a i t i n g   F o r�9  �;   � o  �8�8 	0 oflib   �  � � � r  " � � � 1  �7
�7 
rslt � o      �6�6 (0 waitingfortasklist waitingForTaskList �  � � � l ##�5�4�3�5  �4  �3   �  � � � O #/ � � � I  '.�2 ��1�2 H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan �  � � � o  ()�0�0 &0 activeprojectlist activeProjectList �  ��/ � m  )*�.�.  �/  �1   � o  #$�-�- 	0 oflib   �  � � � r  05 � � � 1  01�,
�, 
rslt � o      �+�+ $0 nonemptyprojects nonEmptyProjects �  � � � l 66�*�)�(�*  �)  �(   �  � � � r  6Q � � � n 6M � � � I  7M�' ��&�'  0 generatestatus generateStatus �  � � � o  78�%�% &0 activeprojectlist activeProjectList �  � � � o  8;�$�$ 20 todayscompletedtasklist todaysCompletedTaskList �  � � � o  ;>�#�# (0 addedtodaytasklist addedTodayTaskList �    o  >A�"�" 40 activeincompletetasklist activeIncompleteTaskList  o  AD�!�! (0 waitingfortasklist waitingForTaskList �  o  DG�� $0 nonemptyprojects nonEmptyProjects�   �&   �  f  67 � o      �� 
0 svalue   �  l  RR��   L F	set svalue to my generateStatus({}, {}, {}, {}, {}, nonEmptyProjects)    �		 � 	 s e t   s v a l u e   t o   m y   g e n e r a t e S t a t u s ( { } ,   { } ,   { } ,   { } ,   { } ,   n o n E m p t y P r o j e c t s ) 
�
 l RR����  �  �  �   # m    	�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      l     ����  �  �    l     ����  �  �    i   
  I      ���� 0 	pathtolib 	pathToLib�  �   k       r     	 l    �� I    �
� .earsffdralis        afdr  f      ��
� 
from m    �

�
 fldmfldu�  �  �   o      �	�	 0 apppath appPath  l   
 
� �   y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string     �!! � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g "#" l  
 
����  �  �  # $%$ L   
 && c   
 '(' l  
 )��) b   
 *+* o   
 �� 0 apppath appPath+ m    ,, �-- 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�  �  ( m    �
� 
ctxt% .� . L    // n    010 1    ��
�� 
strq1 o    ���� 0 myfolderpath myFolderPath�    232 l     ��������  ��  ��  3 454 i    676 I      �������� 0 getoflib getOFLib��  ��  7 k     88 9:9 r     ;<; I    ��=��
�� .sysoloadscpt        file= 4     
��>
�� 
file> l   	?����? b    	@A@ n   BCB I    �������� 0 	pathtolib 	pathToLib��  ��  C  f    A m    DD �EE  O F L i b . s c p t��  ��  ��  < o      ���� 0 thelib theLib: F��F L    GG o    ���� 0 thelib theLib��  5 HIH l     ��������  ��  ��  I JKJ i    LML I      ��N����  0 generatestatus generateStatusN OPO o      ���� (0 lactiveprojectlist lActiveProjectListP QRQ o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListR STS o      ���� *0 laddedtodaytasklist lAddedTodayTaskListT UVU o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskListV WXW o      ���� *0 lwaitingfortasklist lWaitingForTaskListX Y��Y o      ���� &0 lnonemptyprojects lNonEmptyProjects��  ��  M w     JZ[Z k    J\\ ]^] r    _`_ m    aa �bb 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s  ` o      ���� 0 thetext theText^ cdc r    efe b    ghg b    iji o    ���� 0 thetext theTextj n    
klk 1    
��
�� 
lengl o    ���� (0 lactiveprojectlist lActiveProjectListh m    mm �nn $   a c t i v e   p r o j e c t s ,  f o      ���� 0 thetext theTextd opo r    qrq b    sts b    uvu o    ���� 0 thetext theTextv n    wxw 1    ��
�� 
lengx o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListt m    yy �zz 0   t a s k s   c o m p l e t e d   t o d a y ,  r o      ���� 0 thetext theTextp {|{ r    #}~} b    !� b    ��� o    ���� 0 thetext theText� n    ��� 1    ��
�� 
leng� o    ���� *0 laddedtodaytasklist lAddedTodayTaskList� m     �� ��� (   t a s k s   a d d e d   t o d a y ,  ~ o      ���� 0 thetext theText| ��� r   $ -��� b   $ +��� b   $ )��� o   $ %���� 0 thetext theText� n   % (��� 1   & (��
�� 
leng� o   % &���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� m   ) *�� ��� &   i n c o m p l e t e   t a s k s ,  � o      ���� 0 thetext theText� ��� r   . 7��� b   . 5��� b   . 3��� o   . /���� 0 thetext theText� n   / 2��� 1   0 2��
�� 
leng� o   / 0���� *0 lwaitingfortasklist lWaitingForTaskList� m   3 4�� ��� &   w a i t i n g   f o r s ,   a n d  � o      ���� 0 thetext theText� ��� r   8 A��� b   8 ?��� b   8 =��� o   8 9���� 0 thetext theText� n   9 <��� 1   : <��
�� 
leng� o   9 :���� &0 lnonemptyprojects lNonEmptyProjects� m   = >�� ��� 6   a c t i v e   n o n   e m p t y   p r o j e c t s .� o      ���� 0 thetext theText� ��� l  B B��������  ��  ��  � ��� I  B G�����
�� .ascrcmnt****      � ****� o   B C���� 0 thetext theText��  � ��� l  H H��������  ��  ��  � ���� L   H J�� o   H I���� 0 thetext theText��  [�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  K ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n   	 ��� 1   
 ��
�� 
leng� o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    ���� 0 thetext theText� m    �� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5� � b   & 3 b   & - b   & ) o   & '���� 0 thetext theText m   ' ( � & T a s k s   a d d e d   t o d a y :   n   ) ,	
	 1   * ,��
�� 
leng
 o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList o   - 2���� 0 nl    o      ���� 0 thetext theText�  r   6 E b   6 C b   6 = b   6 9 o   6 7���� 0 thetext theText m   7 8 � , N o n - w a i t   a d d e d   t o d a y :   n   9 < 1   : <��
�� 
leng o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList o   = B���� 0 nl   o      ���� 0 thetext theText  r   F U b   F S b   F M  b   F I!"! o   F G���� 0 thetext theText" m   G H## �$$ 2 A c t i v e   i n c o m p l e t e   t a s k s :    n   I L%&% 1   J L��
�� 
leng& o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList o   M R���� 0 nl   o      ���� 0 thetext theText '(' r   V e)*) b   V c+,+ b   V ]-.- b   V Y/0/ o   V W���� 0 thetext theText0 m   W X11 �22 L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  . n   Y \343 1   Z \��
�� 
leng4 o   Y Z���� $0 lnotwaittasklist lNotWaitTaskList, o   ] b���� 0 nl  * o      ���� 0 thetext theText( 565 l  f f����~��  �  �~  6 787 l  f f�}�|�{�}  �|  �{  8 9:9 I  f k�z;�y
�z .ascrcmnt****      � ****; o   f g�x�x 0 thetext theText�y  : <=< l  l l�w�v�u�w  �v  �u  = >?> r   l y@A@ c   l wBCB b   l uDED l  l sF�t�sF I  l s�rGH
�r .earsffdralis        afdrG m   l m�q
�q afdrdeskH �pI�o
�p 
rtypI m   n o�n
�n 
TEXT�o  �t  �s  E m   s tJJ �KK  o f   t o d a y . t x tC m   u v�m
�m 
TEXTA o      �l�l 0 thefilepath theFilePath? LML r   z �NON I  z ��kPQ
�k .rdwropenshor       fileP o   z {�j�j 0 thefilepath theFilePathQ �iR�h
�i 
permR m   | }�g
�g boovtrue�h  O o      �f�f 0 thefile theFileM STS I  � ��eUV
�e .rdwrwritnull���     ****U o   � ��d�d 0 thetext theTextV �cWX
�c 
refnW o   � ��b�b 0 thefile theFileX �aY�`
�a 
wratY m   � ��_
�_ rdwreof �`  T Z�^Z I  � ��][�\
�] .rdwrclosnull���     ****[ o   � ��[�[ 0 thefile theFile�\  �^  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � \]\ l     �Z�Y�X�Z  �Y  �X  ] ^_^ i    !`a` I      �Wb�V�W 0 
writestats 
writeStatsb cdc o      �U�U 0 lfolderlist lFolderListd efe o      �T�T 0 lprojectlist lProjectListf ghg o      �S�S (0 lactiveprojectlist lActiveProjectListh iji o      �R�R 0 	ltasklist 	lTaskListj klk o      �Q�Q "0 lactivetasklist lActiveTaskListl mnm o      �P�P (0 lcompletedtasklist lCompletedTaskListn opo o      �O�O *0 lincompletetasklist lIncompleteTaskListp qrq o      �N�N 40 ltodayscompletedtasklist lTodaysCompletedTaskListr sts o      �M�M &0 lnonrepincomplete lNonRepIncompletet u�Lu o      �K�K *0 laddedtodaytasklist lAddedTodayTaskList�L  �V  a w     �vwv k    �xx yzy l    �J{|�J  { b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   | �}} � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   tz ~~ r    ��� m    �� ���  � o      �I�I 0 thetext theText ��� l    �H���H  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    �G�G 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �F
�F 
leng� o   	 
�E�E 0 lprojectlist lProjectList� o    �D�D 0 nl  � o      �C�C 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    �B�B 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �A
�A 
leng� o    �@�@ (0 lactiveprojectlist lActiveProjectList� o    "�?�? 0 nl  � o      �>�> 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�=�= 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�<
�< 
leng� o   ) *�;�; 0 	ltasklist 	lTaskList� o   - 2�:�: 0 nl  � o      �9�9 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�8�8 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�7
�7 
leng� o   9 :�6�6 "0 lactivetasklist lActiveTaskList� o   = B�5�5 0 nl  � o      �4�4 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�3�3 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�2
�2 
leng� o   I J�1�1 (0 lcompletedtasklist lCompletedTaskList� o   M R�0�0 0 nl  � o      �/�/ 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�.�. 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�-
�- 
leng� o   Y Z�,�, *0 lincompletetasklist lIncompleteTaskList� o   ] b�+�+ 0 nl  � o      �*�* 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�)�) 0 thetext theText� m   g h�� ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l��� 1   j l�(
�( 
leng� o   i j�'�' 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�&�& 0 nl  � o      �%�% 0 thetext theText� ��� r   v ���� b   v ���� b   v }��� b   v y��� o   v w�$�$ 0 thetext theText� m   w x�� ��� 4 N o n   r e p e a t i n g   i n c o m p l e t e :  � n   y |��� 1   z |�#
�# 
leng� o   y z�"�" &0 lnonrepincomplete lNonRepIncomplete� o   } ��!�! 0 nl  � o      � �  0 thetext theText� ��� r   � ���� b   � ���� b   � �� � b   � � o   � ��� 0 thetext theText m   � � � & T a s k s   a d d e d   t o d a y :    n   � � 1   � ��
� 
leng o   � ��� *0 laddedtodaytasklist lAddedTodayTaskList� o   � ��� 0 nl  � o      �� 0 thetext theText�  l  � �����  �  �   	
	 I  � ���
� .ascrcmnt****      � **** o   � ��� 0 thetext theText�  
  l  � �����  �  �    r   � � c   � � b   � � l  � ��� I  � ��
� .earsffdralis        afdr m   � ��
� afdrdesk ��
� 
rtyp m   � ��
� 
TEXT�  �  �   m   � � �  o f . t x t m   � ��

�
 
TEXT o      �	�	 0 thefilepath theFilePath  r   � � I  � �� !
� .rdwropenshor       file  o   � ��� 0 thefilepath theFilePath! �"�
� 
perm" m   � ��
� boovtrue�   o      �� 0 thefile theFile #$# I  � ��%&
� .rdwrwritnull���     ****% o   � ��� 0 thetext theText& � '(
�  
refn' o   � ����� 0 thefile theFile( ��)��
�� 
wrat) m   � ���
�� rdwreof ��  $ *��* I  � ���+��
�� .rdwrclosnull���     ****+ o   � ����� 0 thefile theFile��  ��  w�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  _ ,-, l     ��������  ��  ��  - ./. i   " %010 I      ��2���� 0 
writedebug 
writeDebug2 3��3 o      ���� 0 ltask lTask��  ��  1 Z     �45����4 o     ���� 	0 debug  5 w    676 k   
 88 9:9 r   
 ;<; b   
 =>= b   
 ?@? m   
 AA �BB  T a s k   n a m e   i s  @ n   CDC 1    ��
�� 
pnamD o    ���� 0 ltask lTask> o    ���� 0 nl  < o      ���� 0 thetext theText: EFE r    %GHG b    #IJI b    KLK m    MM �NN  T a s k   i d   i s  L n   OPO 1    ��
�� 
ID  P o    ���� 0 ltask lTaskJ o    "���� 0 nl  H o      ���� 0 thetext theTextF QRQ r   & 5STS b   & 3UVU b   & -WXW b   & )YZY o   & '���� 0 thetext theTextZ m   ' ([[ �\\ & C o m p l e t i o n   d a t e   i s  X n  ) ,]^] 1   * ,��
�� 
FCdc^ o   ) *���� 0 ltask lTaskV o   - 2���� 0 nl  T o      ���� 0 thetext theTextR _`_ r   6 ;aba n  6 9cdc 1   7 9��
�� 
FCdcd o   6 7���� 0 ltask lTaskb o      ���� 0 thedate theDate` efe r   < Aghg n   < ?iji 1   = ?��
�� 
dstrj o   < =���� 0 thedate theDateh o      ���� 0 thedateonly theDateOnlyf klk r   B Omnm b   B Mopo b   B Gqrq b   B Ests o   B C���� 0 thetext theTextt m   C Duu �vv 4 C o m p l e t i o n   d a t e   i s   r e a l l y  r o   E F���� 0 thedateonly theDateOnlyp o   G L���� 0 nl  n o      ���� 0 thetext theTextl wxw r   P ]yzy c   P [{|{ b   P Y}~} l  P W���� I  P W����
�� .earsffdralis        afdr� m   P Q��
�� afdrdesk� �����
�� 
rtyp� m   R S��
�� 
TEXT��  ��  ��  ~ m   W X�� ���  o f D e b u g . t x t| m   Y Z��
�� 
TEXTz o      ���� 0 thefilepath theFilePathx ��� r   ^ g��� I  ^ e����
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
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  7�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��  / ���� l     ��������  ��  ��  ��       ����������������  � 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� ������������ 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ������,����
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��7���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����D��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��M����������  0 generatestatus generateStatus�� ����� �  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects��  � ���������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects�� 0 thetext theText� 
[a��my������
�� 
leng
�� .ascrcmnt****      � ****�� K�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j 	O�� ������������� 0 tweetstatus tweetStatus�� ����� �  ���� 0 v  ��  � ��~� 0 v  �~ 	0 oflib  � �}�|�} 0 getoflib getOFLib�| 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U� �{��z�y���x�{ $0 writedailystatus writeDailyStatus�z �w��w �  �v�u�t�s�r�q�v (0 lactiveprojectlist lActiveProjectList�u 40 ltodayscompletedtasklist lTodaysCompletedTaskList�t *0 laddedtodaytasklist lAddedTodayTaskList�s 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�r 60 lactiveincompletetasklist lActiveIncompleteTaskList�q $0 lnotwaittasklist lNotWaitTaskList�y  � 	�p�o�n�m�l�k�j�i�h�p (0 lactiveprojectlist lActiveProjectList�o 40 ltodayscompletedtasklist lTodaysCompletedTaskList�n *0 laddedtodaytasklist lAddedTodayTaskList�m 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�l 60 lactiveincompletetasklist lActiveIncompleteTaskList�k $0 lnotwaittasklist lNotWaitTaskList�j 0 thetext theText�i 0 thefilepath theFilePath�h 0 thefile theFile� ����g�#1�f�e�d�c�bJ�a�`�_�^�]�\�[�Z
�g 
leng
�f .ascrcmnt****      � ****
�e afdrdesk
�d 
rtyp
�c 
TEXT
�b .earsffdralis        afdr
�a 
perm
�` .rdwropenshor       file
�_ 
refn
�^ 
wrat
�] rdwreof �\ 
�[ .rdwrwritnull���     ****
�Z .rdwrclosnull���     ****�x ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �Ya�X�W���V�Y 0 
writestats 
writeStats�X �U��U 
� 
 �T�S�R�Q�P�O�N�M�L�K�T 0 lfolderlist lFolderList�S 0 lprojectlist lProjectList�R (0 lactiveprojectlist lActiveProjectList�Q 0 	ltasklist 	lTaskList�P "0 lactivetasklist lActiveTaskList�O (0 lcompletedtasklist lCompletedTaskList�N *0 lincompletetasklist lIncompleteTaskList�M 40 ltodayscompletedtasklist lTodaysCompletedTaskList�L &0 lnonrepincomplete lNonRepIncomplete�K *0 laddedtodaytasklist lAddedTodayTaskList�W  � �J�I�H�G�F�E�D�C�B�A�@�?�>�J 0 lfolderlist lFolderList�I 0 lprojectlist lProjectList�H (0 lactiveprojectlist lActiveProjectList�G 0 	ltasklist 	lTaskList�F "0 lactivetasklist lActiveTaskList�E (0 lcompletedtasklist lCompletedTaskList�D *0 lincompletetasklist lIncompleteTaskList�C 40 ltodayscompletedtasklist lTodaysCompletedTaskList�B &0 lnonrepincomplete lNonRepIncomplete�A *0 laddedtodaytasklist lAddedTodayTaskList�@ 0 thetext theText�? 0 thefilepath theFilePath�> 0 thefile theFile� w���=��������<�;�:�9�8�7�6�5�4�3�2�1�0
�= 
leng
�< .ascrcmnt****      � ****
�; afdrdesk
�: 
rtyp
�9 
TEXT
�8 .earsffdralis        afdr
�7 
perm
�6 .rdwropenshor       file
�5 
refn
�4 
wrat
�3 rdwreof �2 
�1 .rdwrwritnull���     ****
�0 .rdwrclosnull���     ****�V ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �/1�.�-���,�/ 0 
writedebug 
writeDebug�. �+��+ �  �*�* 0 ltask lTask�-  � �)�(�'�&�%�$�) 0 ltask lTask�( 0 thetext theText�' 0 thedate theDate�& 0 thedateonly theDateOnly�% 0 thefilepath theFilePath�$ 0 thefile theFile� 7A�#M�"[�!� u�������������
�# 
pnam
�" 
ID  
�! 
FCdc
�  
dstr
� afdrdesk
� 
rtyp
� 
TEXT
� .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�, �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �������
� .aevtoappnull  �   � ****� k    T��  ��  ��  �  �  �  � #�����
�	��������� ���������������������� ���������������� 0 getoflib getOFLib� 	0 oflib  
� 
FCDo� 0 thedocument theDocument�
 0 getprojects getProjects
�	 
rslt� 0 projectlist projectList� 20 filterforactiveprojects filterForActiveProjects� &0 activeprojectlist activeProjectList� 0 gettasks getTasks� 0 tasklist taskList
� .corecnte****       ****� 0 n  � 80 filterfornonrepeatingtasks filterForNonRepeatingTasks
�  .ascrcmnt****      � ****��  0 activetasklist activeTaskList�� 20 filterforcompletedtasks filterForCompletedTasks�� &0 completedtasklist completedTaskList
�� .misccurdldt    ��� null
�� 
dstr�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 20 todayscompletedtasklist todaysCompletedTaskList�� 40 filterforincompletetasks filterForIncompleteTasks�� 40 activeincompletetasklist activeIncompleteTaskList�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� (0 addedtodaytasklist addedTodayTaskList�� 60 filterfortaskswithcontext filterForTasksWithContext�� (0 waitingfortasklist waitingForTaskList�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� $0 nonemptyprojects nonEmptyProjects�� ��  0 generatestatus generateStatus�� 
0 svalue  �U)j+  E�O�I*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O�j E�O� *�k+ UO�E�O�j j O� 	*��l+ 
UO�E` O_ j j O� 
*_ k+ UO�E` O_ j j O� *�k+ UO�E` O� *_ *j a ,l+ UO�E` O� 
*_ k+ UO�E` O_ j j O� *�*j a ,l+ UO�E` O� *�a l+ UO�E` O� 	*�jl+ UO�E` O)�_ _ _ _ _ a  + !E` "OPUascr  ��ޭ