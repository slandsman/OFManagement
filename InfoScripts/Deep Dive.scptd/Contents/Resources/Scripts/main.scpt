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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l   X !���� ! O    X " # " k    W $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 0 getcontexts getContexts ;  <�� < o   ' (���� 0 thedocument theDocument��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� 0 ctxs   >  A B A l  2 2��������  ��  ��   B  C D C l   2 2�� E F��   E�	tell oflib to filterForActiveProjects(projectList)	set activeProjectList to result		tell oflib to getTasks(theDocument, projectList)	set taskList to result		set n to (count of taskList)		tell oflib to filterForNonRepeatingTasks(taskList)	set taskList to result		log (count of taskList)		tell oflib to getTasks(theDocument, activeProjectList)	set activeTaskList to result		log (count of activeTaskList)		tell oflib to filterForNonRepeatingTasks(activeTaskList)	set activeTaskList to result		log (count of activeTaskList)		tell oflib to filterForCompletedTasks(taskList)	set completedTaskList to result		tell oflib to filterForCompletedTasksOnDate(completedTaskList, date string of (current date))	set todaysCompletedTaskList to result		tell oflib to filterForIncompleteTasks(activeTaskList)	set activeIncompleteTaskList to result		log (count of activeIncompleteTaskList)		tell oflib to filterForTasksAddedOnDate(taskList, date string of (current date))	set addedTodayTaskList to result	    F � G G� 	 t e l l   o f l i b   t o   f i l t e r F o r A c t i v e P r o j e c t s ( p r o j e c t L i s t )  	 s e t   a c t i v e P r o j e c t L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   g e t T a s k s ( t h e D o c u m e n t ,   p r o j e c t L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 s e t   n   t o   ( c o u n t   o f   t a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r N o n R e p e a t i n g T a s k s ( t a s k L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   t a s k L i s t )  	  	 t e l l   o f l i b   t o   g e t T a s k s ( t h e D o c u m e n t ,   a c t i v e P r o j e c t L i s t )  	 s e t   a c t i v e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r N o n R e p e a t i n g T a s k s ( a c t i v e T a s k L i s t )  	 s e t   a c t i v e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s ( t a s k L i s t )  	 s e t   c o m p l e t e d T a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s O n D a t e ( c o m p l e t e d T a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   t o d a y s C o m p l e t e d T a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r I n c o m p l e t e T a s k s ( a c t i v e T a s k L i s t )  	 s e t   a c t i v e I n c o m p l e t e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e I n c o m p l e t e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s A d d e d O n D a t e ( t a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   a d d e d T o d a y T a s k L i s t   t o   r e s u l t  	 D  H I H O  2 > J K J I   6 =�� L���� 60 filterfortaskswithcontext filterForTasksWithContext L  M N M o   7 8���� 0 ctxs   N  O�� O m   8 9 P P � Q Q  W a i t i n g   F o r��  ��   K o   2 3���� 	0 oflib   I  R S R r   ? B T U T 1   ? @��
�� 
rslt U o      ���� (0 waitingfortasklist waitingForTaskList S  V W V l  C C��������  ��  ��   W  X Y X l   C C�� Z [��   Z m g	tell oflib to filterForProjectsOfSizeGreaterThan(activeProjectList, 0)	set nonEmptyProjects to result    [ � \ \ � 	 t e l l   o f l i b   t o   f i l t e r F o r P r o j e c t s O f S i z e G r e a t e r T h a n ( a c t i v e P r o j e c t L i s t ,   0 )  	 s e t   n o n E m p t y P r o j e c t s   t o   r e s u l t Y  ] ^ ] l  C C��������  ��  ��   ^  _ ` _ l   C C�� a b��   a � �set svalue to my generateStatus(activeProjectList, todaysCompletedTaskList, addedTodayTaskList, activeIncompleteTaskList, waitingForTaskList, nonEmptyProjects)    b � c c> s e t   s v a l u e   t o   m y   g e n e r a t e S t a t u s ( a c t i v e P r o j e c t L i s t ,   t o d a y s C o m p l e t e d T a s k L i s t ,   a d d e d T o d a y T a s k L i s t ,   a c t i v e I n c o m p l e t e T a s k L i s t ,   w a i t i n g F o r T a s k L i s t ,   n o n E m p t y P r o j e c t s ) `  d e d r   C U f g f n  C S h i h I   D S�� j����  0 generatestatus generateStatus j  k l k J   D F����   l  m n m J   F H����   n  o p o J   H J����   p  q r q J   J L����   r  s t s o   L M���� (0 waitingfortasklist waitingForTaskList t  u�� u J   M O����  ��  ��   i  f   C D g o      ���� 
0 svalue   e  v�� v l  V V��������  ��  ��  ��   # m    	 w w�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      x y x l     ��������  ��  ��   y  z { z l     ��������  ��  ��   {  | } | i   
  ~  ~ I      �������� 0 	pathtolib 	pathToLib��  ��    k      � �  � � � r     	 � � � l     ����� � I    �� � �
�� .earsffdralis        afdr �  f      � �� ���
�� 
from � m    ��
�� fldmfldu��  ��  ��   � o      ���� 0 apppath appPath �  � � � l   
 
�� � ���   � y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � � � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g �  � � � l  
 
��������  ��  ��   �  � � � L   
  � � c   
  � � � l  
  ����� � b   
  � � � o   
 ���� 0 apppath appPath � m     � � � � � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :��  ��   � m    ��
�� 
ctxt �  ��� � L     � � n     � � � 1    ��
�� 
strq � o    ���� 0 myfolderpath myFolderPath��   }  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 getoflib getOFLib��  ��   � k      � �  � � � r      � � � I    �� ���
�� .sysoloadscpt        file � 4     
�� �
�� 
file � l   	 ����� � b    	 � � � n    � � � I    �������� 0 	pathtolib 	pathToLib��  ��   �  f     � m     � � � � �  O F L i b . s c p t��  ��  ��   � o      ���� 0 thelib theLib �  ��� � L     � � o    ���� 0 thelib theLib��   �  � � � l     �������  ��  �   �  � � � i     � � � I      �~ ��}�~  0 generatestatus generateStatus �  � � � o      �|�| (0 lactiveprojectlist lActiveProjectList �  � � � o      �{�{ 40 ltodayscompletedtasklist lTodaysCompletedTaskList �  � � � o      �z�z *0 laddedtodaytasklist lAddedTodayTaskList �  � � � o      �y�y 60 lactiveincompletetasklist lActiveIncompleteTaskList �  � � � o      �x�x *0 lwaitingfortasklist lWaitingForTaskList �  ��w � o      �v�v &0 lnonemptyprojects lNonEmptyProjects�w  �}   � w     J � � � k    J � �  � � � r     � � � m     � � � � � 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s   � o      �u�u 0 thetext theText �  � � � r     � � � b     � � � b     � � � o    �t�t 0 thetext theText � n    
 � � � 1    
�s
�s 
leng � o    �r�r (0 lactiveprojectlist lActiveProjectList � m     � � � � � $   a c t i v e   p r o j e c t s ,   � o      �q�q 0 thetext theText �  � � � r     � � � b     � � � b     � � � o    �p�p 0 thetext theText � n     � � � 1    �o
�o 
leng � o    �n�n 40 ltodayscompletedtasklist lTodaysCompletedTaskList � m     � � � � � 0   t a s k s   c o m p l e t e d   t o d a y ,   � o      �m�m 0 thetext theText �  � � � r    # � � � b    ! � � � b     � � � o    �l�l 0 thetext theText � n     � � � 1    �k
�k 
leng � o    �j�j *0 laddedtodaytasklist lAddedTodayTaskList � m      � � � � � (   t a s k s   a d d e d   t o d a y ,   � o      �i�i 0 thetext theText �  � � � r   $ - � � � b   $ + � � � b   $ ) � � � o   $ %�h�h 0 thetext theText � n   % ( � � � 1   & (�g
�g 
leng � o   % &�f�f 60 lactiveincompletetasklist lActiveIncompleteTaskList � m   ) * � � � � � &   i n c o m p l e t e   t a s k s ,   � o      �e�e 0 thetext theText �  �  � r   . 7 b   . 5 b   . 3 o   . /�d�d 0 thetext theText n   / 2 1   0 2�c
�c 
leng o   / 0�b�b *0 lwaitingfortasklist lWaitingForTaskList m   3 4		 �

 &   w a i t i n g   f o r s ,   a n d   o      �a�a 0 thetext theText   r   8 A b   8 ? b   8 = o   8 9�`�` 0 thetext theText n   9 < 1   : <�_
�_ 
leng o   9 :�^�^ &0 lnonemptyprojects lNonEmptyProjects m   = > � 6   a c t i v e   n o n   e m p t y   p r o j e c t s . o      �]�] 0 thetext theText  l  B B�\�[�Z�\  �[  �Z    I  B G�Y�X
�Y .ascrcmnt****      � **** o   B C�W�W 0 thetext theText�X    l  H H�V�U�T�V  �U  �T   �S L   H J o   H I�R�R 0 thetext theText�S   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  !  l     �Q�P�O�Q  �P  �O  ! "#" i    $%$ I      �N&�M�N 0 tweetstatus tweetStatus& '�L' o      �K�K 0 v  �L  �M  % k     (( )*) r     +,+ I     �J�I�H�J 0 getoflib getOFLib�I  �H  , o      �G�G 	0 oflib  * -�F- O   ./. I    �E0�D�E 0 	sendtweet 	sendTweet0 1�C1 o    �B�B 0 v  �C  �D  / o    	�A�A 	0 oflib  �F  # 232 l     �@�?�>�@  �?  �>  3 454 i    676 I      �=8�<�= $0 writedailystatus writeDailyStatus8 9:9 o      �;�; (0 lactiveprojectlist lActiveProjectList: ;<; o      �:�: 40 ltodayscompletedtasklist lTodaysCompletedTaskList< =>= o      �9�9 *0 laddedtodaytasklist lAddedTodayTaskList> ?@? o      �8�8 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList@ ABA o      �7�7 60 lactiveincompletetasklist lActiveIncompleteTaskListB C�6C o      �5�5 $0 lnotwaittasklist lNotWaitTaskList�6  �<  7 w     �DED k    �FF GHG r    IJI m    KK �LL  J o      �4�4 0 thetext theTextH MNM r    OPO b    QRQ b    STS b    	UVU o    �3�3 0 thetext theTextV m    WW �XX " a c t i v e   p r o j e c t s :  T n   	 YZY 1   
 �2
�2 
lengZ o   	 
�1�1 (0 lactiveprojectlist lActiveProjectListR o    �0�0 0 nl  P o      �/�/ 0 thetext theTextN [\[ r    %]^] b    #_`_ b    aba b    cdc o    �.�. 0 thetext theTextd m    ee �ff 2 t o d a y ' s   c o m p l e t e d   t a s k s :  b n    ghg 1    �-
�- 
lengh o    �,�, 40 ltodayscompletedtasklist lTodaysCompletedTaskList` o    "�+�+ 0 nl  ^ o      �*�* 0 thetext theText\ iji r   & 5klk b   & 3mnm b   & -opo b   & )qrq o   & '�)�) 0 thetext theTextr m   ' (ss �tt & T a s k s   a d d e d   t o d a y :  p n   ) ,uvu 1   * ,�(
�( 
lengv o   ) *�'�' *0 laddedtodaytasklist lAddedTodayTaskListn o   - 2�&�& 0 nl  l o      �%�% 0 thetext theTextj wxw r   6 Eyzy b   6 C{|{ b   6 =}~} b   6 9� o   6 7�$�$ 0 thetext theText� m   7 8�� ��� , N o n - w a i t   a d d e d   t o d a y :  ~ n   9 <��� 1   : <�#
�# 
leng� o   9 :�"�" 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList| o   = B�!�! 0 nl  z o      � �  0 thetext theTextx ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�� 0 thetext theText� m   G H�� ��� 2 A c t i v e   i n c o m p l e t e   t a s k s :  � n   I L��� 1   J L�
� 
leng� o   I J�� 60 lactiveincompletetasklist lActiveIncompleteTaskList� o   M R�� 0 nl  � o      �� 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�� 0 thetext theText� m   W X�� ��� L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  � n   Y \��� 1   Z \�
� 
leng� o   Y Z�� $0 lnotwaittasklist lNotWaitTaskList� o   ] b�� 0 nl  � o      �� 0 thetext theText� ��� l  f f����  �  �  � ��� l  f f����  �  �  � ��� I  f k���
� .ascrcmnt****      � ****� o   f g�� 0 thetext theText�  � ��� l  l l���
�  �  �
  � ��� r   l y��� c   l w��� b   l u��� l  l s��	�� I  l s���
� .earsffdralis        afdr� m   l m�
� afdrdesk� ���
� 
rtyp� m   n o�
� 
TEXT�  �	  �  � m   s t�� ���  o f   t o d a y . t x t� m   u v�
� 
TEXT� o      �� 0 thefilepath theFilePath� ��� r   z ���� I  z �� ��
�  .rdwropenshor       file� o   z {���� 0 thefilepath theFilePath� �����
�� 
perm� m   | }��
�� boovtrue��  � o      ���� 0 thefile theFile� ��� I  � �����
�� .rdwrwritnull���     ****� o   � ����� 0 thetext theText� ����
�� 
refn� o   � ����� 0 thefile theFile� �����
�� 
wrat� m   � ���
�� rdwreof ��  � ���� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 thefile theFile��  ��  E�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  5 ��� l     ��������  ��  ��  � ��� i    !��� I      ������� 0 
writestats 
writeStats� ��� o      ���� 0 lfolderlist lFolderList� ��� o      ���� 0 lprojectlist lProjectList� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 0 	ltasklist 	lTaskList� ��� o      ���� "0 lactivetasklist lActiveTaskList� ��� o      ���� (0 lcompletedtasklist lCompletedTaskList� ��� o      ���� *0 lincompletetasklist lIncompleteTaskList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� &0 lnonrepincomplete lNonRepIncomplete� ���� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList��  ��  � w     ���� k    ��� ��� l    ������  � b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   � ��� � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� l    ������  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    ���� 0 thetext theText� m    �� �    p r o j e c t s :  � n   	  1   
 ��
�� 
leng o   	 
���� 0 lprojectlist lProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText�  r    % b    # b    	
	 b     o    ���� 0 thetext theText m     � " a c t i v e   p r o j e c t s :  
 n     1    ��
�� 
leng o    ���� (0 lactiveprojectlist lActiveProjectList o    "���� 0 nl   o      ���� 0 thetext theText  r   & 5 b   & 3 b   & - b   & ) o   & '���� 0 thetext theText m   ' ( �  t a s k s :   n   ) , 1   * ,��
�� 
leng o   ) *���� 0 	ltasklist 	lTaskList o   - 2���� 0 nl   o      ���� 0 thetext theText   r   6 E!"! b   6 C#$# b   6 =%&% b   6 9'(' o   6 7���� 0 thetext theText( m   7 8)) �** 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  & n   9 <+,+ 1   : <��
�� 
leng, o   9 :���� "0 lactivetasklist lActiveTaskList$ o   = B���� 0 nl  " o      ���� 0 thetext theText  -.- r   F U/0/ b   F S121 b   F M343 b   F I565 o   F G���� 0 thetext theText6 m   G H77 �88 " c o m p l e t e d   t a s k s :  4 n   I L9:9 1   J L��
�� 
leng: o   I J���� (0 lcompletedtasklist lCompletedTaskList2 o   M R���� 0 nl  0 o      ���� 0 thetext theText. ;<; r   V e=>= b   V c?@? b   V ]ABA b   V YCDC o   V W���� 0 thetext theTextD m   W XEE �FF $ i n c o m p l e t e   t a s k s :  B n   Y \GHG 1   Z \��
�� 
lengH o   Y Z���� *0 lincompletetasklist lIncompleteTaskList@ o   ] b���� 0 nl  > o      ���� 0 thetext theText< IJI r   f uKLK b   f sMNM b   f mOPO b   f iQRQ o   f g���� 0 thetext theTextR m   g hSS �TT 2 t o d a y ' s   c o m p l e t e d   t a s k s :  P n   i lUVU 1   j l��
�� 
lengV o   i j���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListN o   m r���� 0 nl  L o      ���� 0 thetext theTextJ WXW r   v �YZY b   v �[\[ b   v }]^] b   v y_`_ o   v w���� 0 thetext theText` m   w xaa �bb 4 N o n   r e p e a t i n g   i n c o m p l e t e :  ^ n   y |cdc 1   z |��
�� 
lengd o   y z���� &0 lnonrepincomplete lNonRepIncomplete\ o   } ����� 0 nl  Z o      ���� 0 thetext theTextX efe r   � �ghg b   � �iji b   � �klk b   � �mnm o   � ����� 0 thetext theTextn m   � �oo �pp & T a s k s   a d d e d   t o d a y :  l n   � �qrq 1   � ���
�� 
lengr o   � ����� *0 laddedtodaytasklist lAddedTodayTaskListj o   � ����� 0 nl  h o      ���� 0 thetext theTextf sts l  � ���������  ��  ��  t uvu I  � ���w��
�� .ascrcmnt****      � ****w o   � ����� 0 thetext theText��  v xyx l  � ���������  ��  ��  y z{z r   � �|}| c   � �~~ b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrdesk� �����
�� 
rtyp� m   � ���
�� 
TEXT��  ��  ��  � m   � ��� ���  o f . t x t m   � ���
�� 
TEXT} o      ���� 0 thefilepath theFilePath{ ��� r   � ���� I  � �����
�� .rdwropenshor       file� o   � ����� 0 thefilepath theFilePath� �����
�� 
perm� m   � ���
�� boovtrue��  � o      ���� 0 thefile theFile� ��� I  � �����
�� .rdwrwritnull���     ****� o   � ����� 0 thetext theText� ����
�� 
refn� o   � ����� 0 thefile theFile� �����
�� 
wrat� m   � ���
�� rdwreof ��  � ���� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   " %��� I      ������� 0 
writedebug 
writeDebug� ���� o      ���� 0 ltask lTask��  ��  � Z     �������� o     ���� 	0 debug  � w    ��� k   
 �� ��� r   
 ��� b   
 ��� b   
 ��� m   
 �� ���  T a s k   n a m e   i s  � n   ��� 1    ��
�� 
pnam� o    ���� 0 ltask lTask� o    ���� 0 nl  � o      �� 0 thetext theText� ��� r    %��� b    #��� b    ��� m    �� ���  T a s k   i d   i s  � n   ��� 1    �~
�~ 
ID  � o    �}�} 0 ltask lTask� o    "�|�| 0 nl  � o      �{�{ 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�z�z 0 thetext theText� m   ' (�� ��� & C o m p l e t i o n   d a t e   i s  � n  ) ,��� 1   * ,�y
�y 
FCdc� o   ) *�x�x 0 ltask lTask� o   - 2�w�w 0 nl  � o      �v�v 0 thetext theText� ��� r   6 ;��� n  6 9��� 1   7 9�u
�u 
FCdc� o   6 7�t�t 0 ltask lTask� o      �s�s 0 thedate theDate� ��� r   < A��� n   < ?��� 1   = ?�r
�r 
dstr� o   < =�q�q 0 thedate theDate� o      �p�p 0 thedateonly theDateOnly� ��� r   B O��� b   B M��� b   B G��� b   B E��� o   B C�o�o 0 thetext theText� m   C D�� ��� 4 C o m p l e t i o n   d a t e   i s   r e a l l y  � o   E F�n�n 0 thedateonly theDateOnly� o   G L�m�m 0 nl  � o      �l�l 0 thetext theText� ��� r   P ]��� c   P [��� b   P Y��� l  P W��k�j� I  P W�i��
�i .earsffdralis        afdr� m   P Q�h
�h afdrdesk� �g��f
�g 
rtyp� m   R S�e
�e 
TEXT�f  �k  �j  � m   W X�� ���  o f D e b u g . t x t� m   Y Z�d
�d 
TEXT� o      �c�c 0 thefilepath theFilePath� ��� r   ^ g��� I  ^ e�b��
�b .rdwropenshor       file� o   ^ _�a�a 0 thefilepath theFilePath� �`��_
�` 
perm� m   ` a�^
�^ boovtrue�_  � o      �]�] 0 thefile theFile� ��� I  h y�\��
�\ .rdwrwritnull���     ****� o   h i�[�[ 0 thetext theText� �Z��
�Z 
refn� o   l m�Y�Y 0 thefile theFile� �X��W
�X 
wrat� m   p s�V
�V rdwreof �W  � ��U� I  z �T �S
�T .rdwrclosnull���     ****  o   z {�R�R 0 thefile theFile�S  �U  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��  � �Q l     �P�O�N�P  �O  �N  �Q       �M�L	
�K�J�I�H�M   �G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�G 0 nl  �F 	0 debug  �E 0 	pathtolib 	pathToLib�D 0 getoflib getOFLib�C  0 generatestatus generateStatus�B 0 tweetstatus tweetStatus�A $0 writedailystatus writeDailyStatus�@ 0 
writestats 
writeStats�? 0 
writedebug 
writeDebug
�> .aevtoappnull  �   � ****�= 	0 oflib  �< 0 thedocument theDocument�; 0 projectlist projectList�: 0 ctxs  �9 (0 waitingfortasklist waitingForTaskList�8 
0 svalue  �7  �6  �5  �4   �  

�L boovfals �3 �2�1�0�3 0 	pathtolib 	pathToLib�2  �1   �/�.�/ 0 apppath appPath�. 0 myfolderpath myFolderPath �-�,�+ ��*�)
�- 
from
�, fldmfldu
�+ .earsffdralis        afdr
�* 
ctxt
�) 
strq�0 )��l E�O��%�&O��,E �( ��'�&�%�( 0 getoflib getOFLib�'  �&   �$�$ 0 thelib theLib �#�" ��!
�# 
file�" 0 	pathtolib 	pathToLib
�! .sysoloadscpt        file�% *�)j+ �%/j E�O� �  �����   0 generatestatus generateStatus� ��   ������� (0 lactiveprojectlist lActiveProjectList� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� *0 laddedtodaytasklist lAddedTodayTaskList� 60 lactiveincompletetasklist lActiveIncompleteTaskList� *0 lwaitingfortasklist lWaitingForTaskList� &0 lnonemptyprojects lNonEmptyProjects�   �������� (0 lactiveprojectlist lActiveProjectList� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� *0 laddedtodaytasklist lAddedTodayTaskList� 60 lactiveincompletetasklist lActiveIncompleteTaskList� *0 lwaitingfortasklist lWaitingForTaskList� &0 lnonemptyprojects lNonEmptyProjects� 0 thetext theText 
 � �� � � � �	�
� 
leng
� .ascrcmnt****      � ****� K�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j 	O� �%��
�	� 0 tweetstatus tweetStatus� ��   �� 0 v  �
   ��� 0 v  � 	0 oflib   ��� 0 getoflib getOFLib� 0 	sendtweet 	sendTweet�	 *j+  E�O� *�k+ U �7�� ��� $0 writedailystatus writeDailyStatus� ����   �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�    	�������������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile EKW��es������������������������������
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
�� .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j 	 ������� !���� 0 
writestats 
writeStats�� ��"�� 
" 
 ���������������������� 0 lfolderlist lFolderList�� 0 lprojectlist lProjectList�� (0 lactiveprojectlist lActiveProjectList�� 0 	ltasklist 	lTaskList�� "0 lactivetasklist lActiveTaskList�� (0 lcompletedtasklist lCompletedTaskList�� *0 lincompletetasklist lIncompleteTaskList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� &0 lnonrepincomplete lNonRepIncomplete�� *0 laddedtodaytasklist lAddedTodayTaskList��    ���������������������������� 0 lfolderlist lFolderList�� 0 lprojectlist lProjectList�� (0 lactiveprojectlist lActiveProjectList�� 0 	ltasklist 	lTaskList�� "0 lactivetasklist lActiveTaskList�� (0 lcompletedtasklist lCompletedTaskList�� *0 lincompletetasklist lIncompleteTaskList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� &0 lnonrepincomplete lNonRepIncomplete�� *0 laddedtodaytasklist lAddedTodayTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile! �����)7ESao���������������������������
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
�� .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j 
 �������#$���� 0 
writedebug 
writeDebug�� ��%�� %  ���� 0 ltask lTask��  # �������������� 0 ltask lTask�� 0 thetext theText�� 0 thedate theDate�� 0 thedateonly theDateOnly�� 0 thefilepath theFilePath�� 0 thefile theFile$ ��������������������������������������
�� 
pnam
�� 
ID  
�� 
FCdc
�� 
dstr
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
�� .rdwrclosnull���     ****�� �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h ��&����'(��
�� .aevtoappnull  �   � ****& k     X))  **  ����  ��  ��  '  ( ���� w�������������� P������������ 0 getoflib getOFLib�� 	0 oflib  
�� 
FCDo�� 0 thedocument theDocument�� 0 getprojects getProjects
�� 
rslt�� 0 projectlist projectList�� 0 getcontexts getContexts�� 0 ctxs  �� 60 filterfortaskswithcontext filterForTasksWithContext�� (0 waitingfortasklist waitingForTaskList�� ��  0 generatestatus generateStatus�� 
0 svalue  �� Y)j+  E�O� M*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ UO�E�O)jvjvjvjv�jv�+ E�OPU ��+ ,��  + k      -- ./. l      ��01��  0��
	Script library for the manipulation of OmniFocus.

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, 2011, Seth Landsman, Ph.D. - seth@homeforderangedscientists.net
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 1.0, released FEB2011
   1 �22� 
 	 S c r i p t   l i b r a r y   f o r   t h e   m a n i p u l a t i o n   o f   O m n i F o c u s . 
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
/ 343 l     ��������  ��  ��  4 565 l      ��78��  7 l f SECTION 1: Get a list of all first class objects.
 - Folders
 - Projects
 - Tasks
 - TasksInAProject
   8 �99 �   S E C T I O N   1 :   G e t   a   l i s t   o f   a l l   f i r s t   c l a s s   o b j e c t s . 
   -   F o l d e r s 
   -   P r o j e c t s 
   -   T a s k s 
   -   T a s k s I n A P r o j e c t 
6 :;: l     �������  ��  �  ; <=< l      �~>?�~  > 7 1 1a: folders and utility associated with folders    ? �@@ b   1 a :   f o l d e r s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   f o l d e r s  = ABA l      �}CD�}  C F @ Get all folders of a document. Return a list of folder objects    D �EE �   G e t   a l l   f o l d e r s   o f   a   d o c u m e n t .   R e t u r n   a   l i s t   o f   f o l d e r   o b j e c t s  B FGF i     HIH I      �|J�{�| 0 
getfolders 
getFoldersJ K�zK o      �y�y 0 	ldocument 	lDocument�z  �{  I w     ,LML k    ,NN OPO r    QRQ n    STS 2   �x
�x 
FCArT o    �w�w 0 	ldocument 	lDocumentR o      �v�v 0 
folderlist 
folderListP UVU X    )W�uXW r    $YZY b    "[\[ o    �t�t 0 
folderlist 
folderList\ I    !�s]�r�s *0 getfoldersoffolders getFoldersOfFolders] ^�q^ n    _`_ 2   �p
�p 
FCAr` o    �o�o 0 
thisfolder 
thisFolder�q  �r  Z o      �n�n 0 
folderlist 
folderList�u 0 
thisfolder 
thisFolderX o    �m�m 0 
folderlist 
folderListV aba l  * *�l�k�j�l  �k  �j  b c�ic L   * ,dd o   * +�h�h 0 
folderlist 
folderList�i  M�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  G efe l     �g�f�e�g  �f  �e  f ghg i    iji I      �dk�c�d *0 getfoldersoffolders getFoldersOfFoldersk l�bl o      �a�a 0 lfolders lFolders�b  �c  j w     &mnm k    &oo pqp X    #r�`sr r    tut b    vwv o    �_�_ 0 lfolders lFoldersw I    �^x�]�^ *0 getfoldersoffolders getFoldersOfFoldersx y�\y n    z{z 2   �[
�[ 
FCAr{ o    �Z�Z 0 
thisfolder 
thisFolder�\  �]  u o      �Y�Y 0 lfolders lFolders�` 0 
thisfolder 
thisFolders o    �X�X 0 lfolders lFoldersq |}| l  $ $�W�V�U�W  �V  �U  } ~�T~ L   $ & o   $ %�S�S 0 lfolders lFolders�T  n�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  h ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � 9 3 1b: projects and utility associated with projects    � ��� f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s  � ��� i    ��� I      �N��M�N 0 getprojects getProjects� ��L� o      �K�K 0 	ldocument 	lDocument�L  �M  � w     ��� L    �� n    ��� 2   �J
�J 
FCfx� o    �I�I 0 	ldocument 	lDocument��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �H�G�F�H  �G  �F  � ��� i    ��� I      �E��D�E .0 getprojectsfromfolder getProjectsFromFolder� ��C� o      �B�B 0 lfolder lFolder�C  �D  � w     ��� L    �� n    ��� 2   �A
�A 
FCpr� o    �@�@ 0 lfolder lFolder��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �?�>�=�?  �>  �=  � ��� l      �<���<  � 9 3 1c: contexts and utility associated with contexts    � ��� f   1 c :   c o n t e x t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   c o n t e x t s  � ��� i    ��� I      �;��:�; 0 getcontexts getContexts� ��9� o      �8�8 0 	ldocument 	lDocument�9  �:  � w     ��� L    �� n    ��� 2   �7
�7 
FCfc� o    �6�6 0 	ldocument 	lDocument��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �5�4�3�5  �4  �3  � ��� l      �2���2  � 3 - 1d: tasks and utility associated with tasks    � ��� Z   1 d :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s  � ��� l     �1�0�/�1  �0  �/  � ��� l      �.���.  � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document    � ����   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t  � ��� i    ��� I      �-��,�- 0 gettasks getTasks� ��� o      �+�+ 0 	ldocument 	lDocument� ��*� o      �)�) 0 lprojectlist lProjectList�*  �,  � w     *��� k    *�� ��� r    ��� n    ��� 2   �(
�( 
FCac� o    �'�' 0 	ldocument 	lDocument� o      �&�& 0 tasklist taskList� ��� X    '��%�� r    "��� b     ��� o    �$�$ 0 tasklist taskList� I    �#��"�# *0 gettasksfromproject getTasksFromProject� ��!� o    � �  0 thisproject thisProject�!  �"  � o      �� 0 tasklist taskList�% 0 thisproject thisProject� o    �� 0 lprojectlist lProjectList� ��� L   ( *�� o   ( )�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� i    ��� I      ���� ,0 gettasksfromdocument getTasksFromDocument� ��� o      �� 0 	ldocument 	lDocument�  �  � w     	��� k    	�� ��� L    �� n    ��� m    �
� 
FCft� o    �� 0 	ldocument 	lDocument� ��� l    ����  � � �		set lProjectList to getProjects(lDocument)		set taskList to tasks of lDocument		repeat with thisProject in lProjectList			set taskList to taskList & getTasks(thisProject)		end repeat		return taskList   � ����  	 	 s e t   l P r o j e c t L i s t   t o   g e t P r o j e c t s ( l D o c u m e n t )  	 	 s e t   t a s k L i s t   t o   t a s k s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s P r o j e c t   i n   l P r o j e c t L i s t  	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   g e t T a s k s ( t h i s P r o j e c t )  	 	 e n d   r e p e a t  	 	 r e t u r n   t a s k L i s t�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� i    ��� I      ���� *0 gettasksfromproject getTasksFromProject� ��� o      �
�
 0 lproject lProject�  �  � w     ��� L    �� n    ��� 2   �	
�	 
FCac� o    �� 0 lproject lProject��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � � � l      ��   � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    �.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
   l     ����  �  �    i     #	 I      � 
���  20 filterforactiveprojects filterForActiveProjects
 �� o      ���� 0 lprojectlist lProjectList��  ��  	 w     2 k    2  r     J    ����   o      ���� 0 projectlist projectList  X    /�� Z    *���� =    n    1    ��
�� 
FCPs o    ���� 0 thisproject thisProject m    ��
�� FCPsFCPa r    & b    $  o     ���� 0 projectlist projectList  J     #!! "��" o     !���� 0 thisproject thisProject��   o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProject o   
 ���� 0 lprojectlist lProjectList #��# L   0 2$$ o   0 1���� 0 projectlist projectList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   %&% l     ��������  ��  ��  & '(' i   $ ')*) I      ��+���� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists+ ,��, o      ���� 0 lprojectlist lProjectList��  ��  * w     2-.- k    2// 010 r    232 J    ����  3 o      ���� 0 projectlist projectList1 454 X    /6��76 Z    *89����8 =   :;: n   <=< 1    ��
�� 
FC.A= o    ���� 0 thisproject thisProject; m    ��
�� boovtrue9 r    &>?> b    $@A@ o     ���� 0 projectlist projectListA J     #BB C��C o     !���� 0 thisproject thisProject��  ? o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProject7 o   
 ���� 0 lprojectlist lProjectList5 D��D L   0 2EE o   0 1���� 0 projectlist projectList��  .�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ( FGF l     ��������  ��  ��  G HIH i   ( +JKJ I      ��L���� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonListsL M��M o      ���� 0 lprojectlist lProjectList��  ��  K w     2NON k    2PP QRQ r    STS J    ����  T o      ���� 0 projectlist projectListR UVU X    /W��XW Z    *YZ����Y =   [\[ n   ]^] 1    ��
�� 
FC.A^ o    ���� 0 thisproject thisProject\ m    ��
�� boovfalsZ r    &_`_ b    $aba o     ���� 0 projectlist projectListb J     #cc d��d o     !���� 0 thisproject thisProject��  ` o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProjectX o   
 ���� 0 lprojectlist lProjectListV e��e L   0 2ff o   0 1���� 0 projectlist projectList��  O�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  I ghg l     ��������  ��  ��  h iji l      ��kl��  k � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   l �mm   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
j non i   , /pqp I      ��r���� @0 filterprojectsforchangedondate filterProjectsForChangedOnDater sts o      ���� 0 lprojectlist lProjectListt u��u o      ���� 0 ldate lDate��  ��  q w     �vwv k    �xx yzy r    {|{ J    ����  | o      ���� 0 projectlist projectListz }~} r    � n    
��� 1    
��
�� 
dstr� o    ���� 0 ldate lDate� o      ���� 	0 cdate  ~ ��� X    ������ k    ��� ��� r    %��� I    #������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r   & )��� m   & '��
�� boovfals� o      ���� 0 flag  � ��� X   * r����� k   : m�� ��� r   : ?��� n  : =��� 1   ; =��
�� 
FCDa� o   : ;���� 0 thistask thisTask� o      ���� 
0 tcdate  � ��� r   @ E��� n  @ C��� 1   A C��
�� 
FCDm� o   @ A���� 0 thistask thisTask� o      ���� 
0 tmdate  � ��� r   F K��� n   F I��� 1   G I��
�� 
dstr� o   F G���� 
0 tcdate  � o      ���� 0 tcds  � ��� r   L Q��� n   L O��� 1   M O��
�� 
dstr� o   L M���� 
0 tmdate  � o      ���� 0 tmds  � ��� Z   R _������� =  R U��� o   R S���� 0 tcds  � o   S T���� 	0 cdate  � r   X [��� m   X Y��
�� boovtrue� o      ���� 0 flag  ��  ��  � ���� Z   ` m������� =  ` c��� o   ` a���� 0 tmds  � o   a b���� 	0 cdate  � r   f i��� m   f g��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   - .���� 0 tasklist taskList� ���� Z   s �������� o   s t���� 0 flag  � r   w ~��� b   w |��� o   w x���� 0 projectlist projectList� J   x {�� ���� o   x y���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o    ���� 0 lprojectlist lProjectList� ���� L   � ��� o   � ����� 0 projectlist projectList��  w�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  o ��� l     ��������  ��  ��  � ��� l      ������  � Z T
Return those projects greater than the size specified.
Only counts available tasks
   � ��� � 
 R e t u r n   t h o s e   p r o j e c t s   g r e a t e r   t h a n   t h e   s i z e   s p e c i f i e d . 
 O n l y   c o u n t s   a v a i l a b l e   t a s k s 
� ��� i   0 3��� I      ������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan� ��� o      �� 0 lprojectlist lProjectList� ��~� o      �}�} 0 lsize lSize�~  ��  � w     6��� k    6�� ��� r    ��� J    �|�|  � o      �{�{ 0 projectlist projectList� ��� X    3��z�� k    .�� ��� r    ��� n   ��� 1    �y
�y 
FC#a� o    �x�x 0 thisproject thisProject� o      �w�w 0 ps  � ��v� Z    .���u�t� ?    ��� o    �s�s 0 ps  � o    �r�r 0 lsize lSize� r   # *��� b   # (��� o   # $�q�q 0 projectlist projectList� J   $ '�� ��p� o   $ %�o�o 0 thisproject thisProject�p  � o      �n�n 0 projectlist projectList�u  �t  �v  �z 0 thisproject thisProject� o   
 �m�m 0 lprojectlist lProjectList� ��l� L   4 6�� o   4 5�k�k 0 projectlist projectList�l  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
   � ���Z   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
� ��� i   4 7   I      �f�e�f Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate  o      �d�d 0 lprojectlist lProjectList �c o      �b�b 0 ldate lDate�c  �e   w     x k    x 	
	 r     J    �a�a   o      �`�` 0 projectlist projectList
  X    u�_ k    p  r     I    �^�]�^ *0 gettasksfromproject getTasksFromProject �\ o    �[�[ 0 thisproject thisProject�\  �]   o      �Z�Z 0 tasklist taskList  r     # m     !�Y
�Y boovfals o      �X�X 0 flag    X   $ `�W k   4 [   !"! r   4 9#$# n  4 7%&% 1   5 7�V
�V 
FCDa& o   4 5�U�U 0 thistask thisTask$ o      �T�T 
0 tcdate  " '(' r   : ?)*) n  : =+,+ 1   ; =�S
�S 
FCDm, o   : ;�R�R 0 thistask thisTask* o      �Q�Q 
0 tmdate  ( -.- l  @ @�P�O�N�P  �O  �N  . /0/ Z   @ M12�M�L1 A   @ C343 o   @ A�K�K 
0 tcdate  4 o   A B�J�J 0 ldate lDate2 r   F I565 m   F G�I
�I boovtrue6 o      �H�H 0 flag  �M  �L  0 787 l  N N�G�F�E�G  �F  �E  8 9�D9 Z   N [:;�C�B: A   N Q<=< o   N O�A�A 
0 tmdate  = o   O P�@�@ 0 ldate lDate; r   T W>?> m   T U�?
�? boovtrue? o      �>�> 0 flag  �C  �B  �D  �W 0 thistask thisTask o   ' (�=�= 0 tasklist taskList @�<@ Z   a pAB�;�:A o   a b�9�9 0 flag  B r   e lCDC b   e jEFE o   e f�8�8 0 projectlist projectListF J   f iGG H�7H o   f g�6�6 0 thisproject thisProject�7  D o      �5�5 0 projectlist projectList�;  �:  �<  �_ 0 thisproject thisProject o   
 �4�4 0 lprojectlist lProjectList I�3I L   v xJJ o   v w�2�2 0 projectlist projectList�3  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � KLK l     �1�0�/�1  �0  �/  L MNM l      �.OP�.  O � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   P �QQ �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
N RSR i   8 ;TUT I      �-V�,�- 20 filterforcompletedtasks filterForCompletedTasksV W�+W o      �*�* 0 	ltasklist 	lTaskList�+  �,  U w     2XYX k    2ZZ [\[ r    ]^] J    �)�)  ^ o      �(�( 0 tasklist taskList\ _`_ X    /a�'ba Z    *cd�&�%c =   efe n    ghg 1    �$
�$ 
FCcdh o    �#�# 0 thistask thisTaskf m    �"
�" boovtrued r    &iji b    $klk o     �!�! 0 tasklist taskListl J     #mm n� n o     !�� 0 thistask thisTask�   j o      �� 0 tasklist taskList�&  �%  �' 0 thistask thisTaskb o   
 �� 0 	ltasklist 	lTaskList` o�o L   0 2pp o   0 1�� 0 tasklist taskList�  Y�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  S qrq l     ����  �  �  r sts i   < ?uvu I      �w�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDatew xyx o      �� 0 	ltasklist 	lTaskListy z�z o      �� 0 ldate lDate�  �  v w     <{|{ k    <}} ~~ r    ��� J    ��  � o      �� 0 tasklist taskList ��� X    9���� k    4�� ��� r    ��� n   ��� 1    �
� 
FCdc� o    �� 0 thistask thisTask� o      �� 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �
� 
dstr� o    �� 0 
thistaskcd 
thisTaskCD� o      �
�
 (0 thistaskdatestring thisTaskDateString� ��	� Z   # 4����� =  # &��� o   # $�� (0 thistaskdatestring thisTaskDateString� o   $ %�� 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�� 0 tasklist taskList� J   * -�� ��� o   * +�� 0 thistask thisTask�  � o      �� 0 tasklist taskList�  �  �	  � 0 thistask thisTask� o   
 � �  0 	ltasklist 	lTaskList� ���� L   : <�� o   : ;���� 0 tasklist taskList��  |�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  t ��� l     ��������  ��  ��  � ��� i   @ C��� I      ������� 40 filterforincompletetasks filterForIncompleteTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� >   ��� n    ��� 1    ��
�� 
FCcd� o    ���� 0 thistask thisTask� m    ��
�� boovtrue� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   D G��� I      ������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n   ��� 1    ��
�� 
FCRp� o    ���� 0 thistask thisTask� m    ��
�� 
msng� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   H K��� I      ������� 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     <��� k    <�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    9����� k    4�� ��� r    ��� n   ��� 1    ��
�� 
FCDa� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskcd 
thisTaskCD� ��� r    "   n      1     ��
�� 
dstr o    ���� 0 
thistaskcd 
thisTaskCD o      ���� (0 thistaskdatestring thisTaskDateString� �� Z   # 4���� =  # & o   # $���� (0 thistaskdatestring thisTaskDateString o   $ %���� 0 ldate lDate r   ) 0	
	 b   ) . o   ) *���� 0 tasklist taskList J   * - �� o   * +���� 0 thistask thisTask��  
 o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� �� L   : < o   : ;���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    i   L O I      ������ L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext �� o      ���� 0 	ltasklist 	lTaskList��  ��   w     � k    �  r     J    ����   o      ���� 0 tasklist taskList  !  X    �"��#" k    �$$ %&% r    '(' n    )*) 1    ��
�� 
pnam* o    ���� 0 thistask thisTask( o      ���� 0 foo  & +,+ r    "-.- n     /0/ m     ��
�� 
FCct0 o    ���� 0 thistask thisTask. o      ���� 0 con  , 121 r   # (343 n   # &565 1   $ &��
�� 
pnam6 o   # $���� 0 con  4 o      ���� 0 foo  2 7��7 Z   ) �89��:8 >  ) ,;<; o   ) *���� 0 con  < m   * +��
�� 
msng9 k   / == >?> T   / f@@ Z   4 aAB��CA >  4 9DED n  4 7FGF 1   5 7��
�� 
ctnrG o   4 5���� 0 con  E m   7 8��
�� 
msngB k   < ]HH IJI r   < AKLK n  < ?MNM 1   = ?��
�� 
ctnrN o   < =���� 0 con  L o      ���� 0 ccon  J OPO r   B GQRQ n   B ESTS 1   C E��
�� 
pnamT o   B C���� 0 ccon  R o      ���� 
0 ccname  P U��U Z   H ]VW��XV >  H KYZY o   H I���� 
0 ccname  Z m   I J[[ �\\  O m n i F o c u sW k   N Y]] ^_^ r   N S`a` n  N Qbcb 1   O Q��
�� 
ctnrc o   N O���� 0 con  a o      ���� 0 con  _ d��d r   T Yefe n   T Wghg 1   U W��
�� 
pnamh o   T U���� 0 con  f o      ���� 0 foo  ��  ��  X  S   \ ]��  ��  C  S   ` a? iji r   g lklk n   g jmnm 1   h j��
�� 
pnamn o   g h���� 0 con  l o      ���� 0 conname  j o��o Z   m pq����p H   m qrr E   m psts o   m n���� 0 conname  t m   n ouu �vv  W a i t i n gq r   t {wxw b   t yyzy o   t u���� 0 tasklist taskListz J   u x{{ |��| o   u v���� 0 thistask thisTask��  x o      �� 0 tasklist taskList��  ��  ��  ��  : r   � �}~} b   � �� o   � ��~�~ 0 tasklist taskList� J   � ��� ��}� o   � ��|�| 0 thistask thisTask�}  ~ o      �{�{ 0 tasklist taskList��  �� 0 thistask thisTask# o   
 �z�z 0 	ltasklist 	lTaskList! ��y� L   � ��� o   � ��x�x 0 tasklist taskList�y  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ��� l     �w�v�u�w  �v  �u  � ��� i   P S��� I      �t��s�t 20 filterfortasksdueondate filterForTasksDueOnDate� ��� o      �r�r 0 	ltasklist 	lTaskList� ��q� o      �p�p 0 ldate lDate�q  �s  � w     F��� k    F�� ��� r    ��� J    �o�o  � o      �n�n 0 tasklist taskList� ��� X    C��m�� k    >�� ��� r    ��� n   ��� 1    �l
�l 
FCDd� o    �k�k 0 thistask thisTask� o      �j�j 0 
thistaskdd 
thisTaskDD� ��i� Z    >���h�g� >    ��� o    �f�f 0 
thistaskdd 
thisTaskDD� m    �e
�e 
msng� k   # :�� ��� r   # (��� n   # &��� 1   $ &�d
�d 
dstr� o   # $�c�c 0 
thistaskdd 
thisTaskDD� o      �b�b (0 thistaskdatestring thisTaskDateString� ��a� Z   ) :���`�_� =  ) ,��� o   ) *�^�^ (0 thistaskdatestring thisTaskDateString� o   * +�]�] 0 ldate lDate� r   / 6��� b   / 4��� o   / 0�\�\ 0 tasklist taskList� J   0 3�� ��[� o   0 1�Z�Z 0 thistask thisTask�[  � o      �Y�Y 0 tasklist taskList�`  �_  �a  �h  �g  �i  �m 0 thistask thisTask� o   
 �X�X 0 	ltasklist 	lTaskList� ��W� L   D F�� o   D E�V�V 0 tasklist taskList�W  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �U�T�S�U  �T  �S  � ��� i   T W��� I      �R��Q�R :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      �P�P 0 	ltasklist 	lTaskList� ��O� o      �N�N 0 ldate lDate�O  �Q  � w     J��� k    J�� ��� r    ��� J    �M�M  � o      �L�L 0 tasklist taskList� ��� X    G��K�� k    B�� ��� r    ��� n   ��� 1    �J
�J 
FCDd� o    �I�I 0 thistask thisTask� o      �H�H 0 
thistaskdd 
thisTaskDD� ��G� Z    B���F�E� >    ��� o    �D�D 0 
thistaskdd 
thisTaskDD� m    �C
�C 
msng� Z   # >���B�A� A   # &��� o   # $�@�@ 0 
thistaskdd 
thisTaskDD� o   $ %�?�? 0 ldate lDate� k   ) :�� ��� I  ) 2�>��=
�> .ascrcmnt****      � ****� b   ) .��� m   ) *�� ��� , F o u n d   a n   o v e r d u e   t a s k  � n  * -��� 1   + -�<
�< 
pnam� o   * +�;�; 0 thistask thisTask�=  � ��:� r   3 :��� b   3 8��� o   3 4�9�9 0 tasklist taskList� J   4 7�� ��8� o   4 5�7�7 0 thistask thisTask�8  � o      �6�6 0 tasklist taskList�:  �B  �A  �F  �E  �G  �K 0 thistask thisTask� o   
 �5�5 0 	ltasklist 	lTaskList� ��4� L   H J�� o   H I�3�3 0 tasklist taskList�4  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �2�1�0�2  �1  �0  � ��� i   X [��� I      �/��.�/ .0 filterfortaskswithtag filterForTasksWithTag� ��� o      �-�- 0 	ltasklist 	lTaskList� ��,� o      �+�+ 0 tag  �,  �.  � w     6��� k    6�� � � r     J    �*�*   o      �)�) 0 tasklist taskList   X    3�( k    . 	 r    

 n     1    �'
�' 
FCno o    �&�& 0 thistask thisTask o      �%�% 0 itemnote itemNote	 �$ Z    .�#�" l    �!�  E      o    �� 0 itemnote itemNote o    �� 0 tag  �!  �    r   # * b   # ( o   # $�� 0 tasklist taskList J   $ ' � o   $ %�� 0 thistask thisTask�   o      �� 0 tasklist taskList�#  �"  �$  �( 0 thistask thisTask o   
 �� 0 	ltasklist 	lTaskList � L   4 6 o   4 5�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �    i   \ _ !  I      �"�� $0 filterforflagged filterForFlagged" #�# o      �� 0 	ltasklist 	lTaskList�  �  ! w     2$%$ k    2&& '(' r    )*) J    ��  * o      �� 0 tasklist taskList( +,+ X    /-�.- Z    */0��/ =   121 n    343 1    �

�
 
FCfl4 o    �	�	 0 thistask thisTask2 m    �
� boovtrue0 r    &565 b    $787 o     �� 0 tasklist taskList8 J     #99 :�: o     !�� 0 thistask thisTask�  6 o      �� 0 tasklist taskList�  �  � 0 thistask thisTask. o   
 �� 0 	ltasklist 	lTaskList, ;�; L   0 2<< o   0 1�� 0 tasklist taskList�  %�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   =>= l     � �����   ��  ��  > ?@? l      ��AB��  A � �
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx, based
on the list of all contexts
   B �CC 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x ,   b a s e d 
 o n   t h e   l i s t   o f   a l l   c o n t e x t s 
@ DED i   ` cFGF I      ��H���� 60 filterfortaskswithcontext filterForTasksWithContextH IJI o      ���� 0 lcontextlist lContextListJ K��K o      ���� 0 ctx  ��  ��  G w     VLML k    VNN OPO r    QRQ J    ����  R o      ���� 0 tasklist taskListP STS X    SU��VU k    NWW XYX r    Z[Z b    \]\ m    ^^ �__  t e s t i n g  ] n    `a` 1    ��
�� 
pnama o    ���� 0 thisctx thisCtx[ o      ���� 0 t  Y bcb r    "ded o     ���� 0 t  e o      ���� 0 p  c fgf I  # (��h��
�� .ascrcmnt****      � ****h o   # $���� 0 t  ��  g i��i Z   ) Njk����j E   ) .lml n   ) ,non 1   * ,��
�� 
pnamo o   ) *���� 0 thisctx thisCtxm o   , -���� 0 ctx  k k   1 Jpp qrq r   1 8sts b   1 6uvu m   1 2ww �xx  f o u n d  v n   2 5yzy 1   3 5��
�� 
pnamz o   2 3���� 0 thisctx thisCtxt o      ���� 0 t  r {|{ r   9 <}~} o   9 :���� 0 t  ~ o      ���� 0 p  | � I  = B�����
�� .ascrcmnt****      � ****� o   = >���� 0 t  ��  � ���� r   C J��� b   C H��� o   C D���� 0 tasklist taskList� n   D G��� 2  E G��
�� 
FC0T� o   D E���� 0 thisctx thisCtx� o      ���� 0 tasklist taskList��  ��  ��  ��  �� 0 thisctx thisCtxV o   
 ���� 0 lcontextlist lContextListT ���� L   T V�� o   T U���� 0 tasklist taskList��  M�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  E ��� l     ��������  ��  ��  � ��� l      ������  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     ��������  ��  ��  � ��� l      ������  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   d g��� I      ������� 0 tagtask tagTask� ��� o      ���� 0 ltask lTask� ���� o      ���� 0 ltag lTag��  ��  � w     $��� k    $�� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask� o      ���� 0 itemnote itemNote� ���� Z    $������� l   ������ H    �� E    ��� o    	���� 0 itemnote itemNote� o   	 
���� 0 ltag lTag��  ��  � k     �� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask� o      ���� 0 itemnote itemNote� ��� r    ��� b    ��� o    ���� 0 itemnote itemNote� o    ���� 0 ltag lTag� o      ���� 0 itemnote itemNote� ���� r     ��� o    ���� 0 itemnote itemNote� l     ������ n      ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask��  ��  ��  ��  ��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   h k��� I      ������� 0 	untagtask 	untagTask� ��� o      ���� 0 ltask lTask� ���� o      ���� 0 ltag lTag��  ��  � w     A��� k    A�� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask� o      ���� 0 itemnote itemNote� ��� I   �����
�� .ascrcmnt****      � ****� o    	���� 0 itemnote itemNote��  � ���� Z    A������� l   ������ E    ��� o    ���� 0 itemnote itemNote� o    ���� 0 ltag lTag��  ��  � k    =�� ��� r    ��� o    ���� 0 ltag lTag� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    1��� J     �� ��� n    ��� 2   ��
�� 
citm� o    ���� 0 itemnote itemNote� ���� m    �� ���  ��  � J      �� ��� o      ���� 0 itemnode itemNode� ���� n     ��� 1   - /��
�� 
txdl� 1   , -��
�� 
ascr��  � ��� r   2 7   c   2 5 o   2 3���� 0 itemnode itemNode m   3 4��
�� 
TEXT o      ���� 0 itemnote itemNote� �� r   8 = o   8 9���� 0 itemnote itemNote l     ���� n      	 1   : <��
�� 
FCno	 o   9 :���� 0 ltask lTask��  ��  ��  ��  ��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � 

 l     ��������  ��  ��    l      ����   0 * remove any tags in the provided tag list     � T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t    i   l o I      ������ 0 	cleartask 	clearTask  o      ���� 0 ltask lTask �� o      ���� 0 ltaglist lTagList��  ��   w     $ X    $�� k      I   �� �
�� .ascrcmnt****      � ****  o    �~�~ 0 atag aTag�   !�}! I    �|"�{�| 0 	untagtask 	untagTask" #$# o    �z�z 0 ltask lTask$ %�y% o    �x�x 0 atag aTag�y  �{  �}  �� 0 atag aTag o    �w�w 0 ltaglist lTagList�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   &'& l     �v�u�t�v  �u  �t  ' ()( l      �s*+�s  *    SECTION 5: other utility    + �,, 4   S E C T I O N   5 :   o t h e r   u t i l i t y  ) -.- l      �r/0�r  /   send tweet    0 �11    s e n d   t w e e t  . 2�q2 i   p s343 I      �p5�o�p 0 	sendtweet 	sendTweet5 6�n6 o      �m�m 	0 value  �n  �o  4 k     77 898 r     :;: b     <=< b     >?> m     @@ �AA $ t w u r l   - d   ' s t a t u s = '? o    �l�l 	0 value  = m    BB �CC 0 '   / 1 / s t a t u s e s / u p d a t e . x m l; o      �k�k 0 cmd  9 D�jD I   �iE�h
�i .sysoexecTEXT���     TEXTE o    	�g�g 0 cmd  �h  �j  �q  , �fFGHIJKLMNOPQRSTUVWXYZ[\]^_`abc�f  F �e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�e 0 
getfolders 
getFolders�d *0 getfoldersoffolders getFoldersOfFolders�c 0 getprojects getProjects�b .0 getprojectsfromfolder getProjectsFromFolder�a 0 getcontexts getContexts�` 0 gettasks getTasks�_ ,0 gettasksfromdocument getTasksFromDocument�^ *0 gettasksfromproject getTasksFromProject�] 20 filterforactiveprojects filterForActiveProjects�\ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�[ H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�Z @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�Y H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�X Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�W 20 filterforcompletedtasks filterForCompletedTasks�V >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�U 40 filterforincompletetasks filterForIncompleteTasks�T 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�S 60 filterfortasksaddedondate filterForTasksAddedOnDate�R L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�Q 20 filterfortasksdueondate filterForTasksDueOnDate�P :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�O .0 filterfortaskswithtag filterForTasksWithTag�N $0 filterforflagged filterForFlagged�M 60 filterfortaskswithcontext filterForTasksWithContext�L 0 tagtask tagTask�K 0 	untagtask 	untagTask�J 0 	cleartask 	clearTask�I 0 	sendtweet 	sendTweetG �HI�G�Fde�E�H 0 
getfolders 
getFolders�G �Df�D f  �C�C 0 	ldocument 	lDocument�F  d �B�A�@�B 0 	ldocument 	lDocument�A 0 
folderlist 
folderList�@ 0 
thisfolder 
thisFoldere M�?�>�=�<�;
�? 
FCAr
�> 
kocl
�= 
cobj
�< .corecnte****       ****�; *0 getfoldersoffolders getFoldersOfFolders�E -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�H �:j�9�8gh�7�: *0 getfoldersoffolders getFoldersOfFolders�9 �6i�6 i  �5�5 0 lfolders lFolders�8  g �4�3�4 0 lfolders lFolders�3 0 
thisfolder 
thisFolderh n�2�1�0�/�.
�2 
kocl
�1 
cobj
�0 .corecnte****       ****
�/ 
FCAr�. *0 getfoldersoffolders getFoldersOfFolders�7 '�Z  �[��l kh �*��-k+ %E�[OY��O�I �-��,�+jk�*�- 0 getprojects getProjects�, �)l�) l  �(�( 0 	ldocument 	lDocument�+  j �'�' 0 	ldocument 	lDocumentk ��&
�& 
FCfx�* �Z��-EJ �%��$�#mn�"�% .0 getprojectsfromfolder getProjectsFromFolder�$ �!o�! o  � �  0 lfolder lFolder�#  m �� 0 lfolder lFoldern ��
� 
FCpr�" �Z��-EK ����pq�� 0 getcontexts getContexts� �r� r  �� 0 	ldocument 	lDocument�  p �� 0 	ldocument 	lDocumentq ��
� 
FCfc� �Z��-EL ����st�� 0 gettasks getTasks� �u� u  ��� 0 	ldocument 	lDocument� 0 lprojectlist lProjectList�  s ����� 0 	ldocument 	lDocument� 0 lprojectlist lProjectList� 0 tasklist taskList� 0 thisproject thisProjectt ��
�	���
�
 
FCac
�	 
kocl
� 
cobj
� .corecnte****       ****� *0 gettasksfromproject getTasksFromProject� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�M ����vw�� ,0 gettasksfromdocument getTasksFromDocument� �x� x  � �  0 	ldocument 	lDocument�  v ���� 0 	ldocument 	lDocumentw ���
�� 
FCft� 
�Z��,EOPN �������yz���� *0 gettasksfromproject getTasksFromProject�� ��{�� {  ���� 0 lproject lProject��  y ���� 0 lproject lProjectz ���
�� 
FCac�� �Z��-EO ��	����|}���� 20 filterforactiveprojects filterForActiveProjects�� ��~�� ~  ���� 0 lprojectlist lProjectList��  | �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject} ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCPs
�� FCPsFCPa�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�P ��*��������� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��   �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� .��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC.A�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�Q ��K���������� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� O��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC.A�� 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�R ��q���������� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� ����� �  ������ 0 lprojectlist lProjectList�� 0 ldate lDate��  � �������������������������� 0 lprojectlist lProjectList�� 0 ldate lDate�� 0 projectlist projectList�� 	0 cdate  �� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  �� 0 tcds  �� 0 tmds  � w��������������
�� 
dstr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject
�� 
FCDa
�� 
FCDm�� ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�S ������������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� ����� �  ������ 0 lprojectlist lProjectList�� 0 lsize lSize��  � ������������ 0 lprojectlist lProjectList�� 0 lsize lSize�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 ps  � ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC#a�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�T ������������ Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� ����� �  ������ 0 lprojectlist lProjectList�� 0 ldate lDate��  � 	�������������������� 0 lprojectlist lProjectList�� 0 ldate lDate�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  � ������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject
�� 
FCDa
�� 
FCDm�� y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�U ��U���������� 20 filterforcompletedtasks filterForCompletedTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� Y��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�V ��v��~���}�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� �|��| �  �{�z�{ 0 	ltasklist 	lTaskList�z 0 ldate lDate�~  � �y�x�w�v�u�t�y 0 	ltasklist 	lTaskList�x 0 ldate lDate�w 0 tasklist taskList�v 0 thistask thisTask�u 0 
thistaskcd 
thisTaskCD�t (0 thistaskdatestring thisTaskDateString� |�s�r�q�p�o
�s 
kocl
�r 
cobj
�q .corecnte****       ****
�p 
FCdc
�o 
dstr�} =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�W �n��m�l���k�n 40 filterforincompletetasks filterForIncompleteTasks�m �j��j �  �i�i 0 	ltasklist 	lTaskList�l  � �h�g�f�h 0 	ltasklist 	lTaskList�g 0 tasklist taskList�f 0 thistask thisTask� ��e�d�c�b
�e 
kocl
�d 
cobj
�c .corecnte****       ****
�b 
FCcd�k 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�X �a��`�_���^�a 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�` �]��] �  �\�\ 0 	ltasklist 	lTaskList�_  � �[�Z�Y�[ 0 	ltasklist 	lTaskList�Z 0 tasklist taskList�Y 0 thistask thisTask� ��X�W�V�U�T
�X 
kocl
�W 
cobj
�V .corecnte****       ****
�U 
FCRp
�T 
msng�^ 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�Y �S��R�Q���P�S 60 filterfortasksaddedondate filterForTasksAddedOnDate�R �O��O �  �N�M�N 0 	ltasklist 	lTaskList�M 0 ldate lDate�Q  � �L�K�J�I�H�G�L 0 	ltasklist 	lTaskList�K 0 ldate lDate�J 0 tasklist taskList�I 0 thistask thisTask�H 0 
thistaskcd 
thisTaskCD�G (0 thistaskdatestring thisTaskDateString� ��F�E�D�C�B
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
FCDa
�B 
dstr�P =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�Z �A�@�?���>�A L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�@ �=��= �  �<�< 0 	ltasklist 	lTaskList�?  � �;�:�9�8�7�6�5�4�; 0 	ltasklist 	lTaskList�: 0 tasklist taskList�9 0 thistask thisTask�8 0 foo  �7 0 con  �6 0 ccon  �5 
0 ccname  �4 0 conname  � 
�3�2�1�0�/�.�-[u
�3 
kocl
�2 
cobj
�1 .corecnte****       ****
�0 
pnam
�/ 
FCct
�. 
msng
�- 
ctnr�> ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�[ �,��+�*���)�, 20 filterfortasksdueondate filterForTasksDueOnDate�+ �(��( �  �'�&�' 0 	ltasklist 	lTaskList�& 0 ldate lDate�*  � �%�$�#�"�!� �% 0 	ltasklist 	lTaskList�$ 0 ldate lDate�# 0 tasklist taskList�" 0 thistask thisTask�! 0 
thistaskdd 
thisTaskDD�  (0 thistaskdatestring thisTaskDateString� �������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCDd
� 
msng
� 
dstr�) G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�\ �������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� �  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  � ������ 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 
thistaskdd 
thisTaskDD� 	�����
�	���
� 
kocl
� 
cobj
� .corecnte****       ****
�
 
FCDd
�	 
msng
� 
pnam
� .ascrcmnt****      � ****� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�] �������� .0 filterfortaskswithtag filterForTasksWithTag� ��� �  �� � 0 	ltasklist 	lTaskList�  0 tag  �  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCno� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�^ ��!���������� $0 filterforflagged filterForFlagged�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� %��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�_ ��G���������� 60 filterfortaskswithcontext filterForTasksWithContext�� ����� �  ������ 0 lcontextlist lContextList�� 0 ctx  ��  � �������������� 0 lcontextlist lContextList�� 0 ctx  �� 0 tasklist taskList�� 0 thisctx thisCtx�� 0 t  �� 0 p  � 	M������^����w��
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FC0T�� W�ZjvE�O K�[��l kh ��,%E�O�E�O�j O��,� ��,%E�O�E�O�j O���-%E�Y h[OY��O�` ������������� 0 tagtask tagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � �������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote� ���
�� 
FCno�� %�Z��,E�O�� ��,E�O��%E�O���,FY ha ������������� 0 	untagtask 	untagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � ���������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote�� 0 itemnode itemNode� 	����������������
�� 
FCno
�� .ascrcmnt****      � ****
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj
�� 
TEXT�� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY hb ������������ 0 	cleartask 	clearTask�� ����� �  ������ 0 ltask lTask�� 0 ltaglist lTagList��  � �������� 0 ltask lTask�� 0 ltaglist lTagList�� 0 atag aTag� ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� 0 	untagtask 	untagTask�� %�Z !�[��l kh �j O*��l+ [OY��c ��4���������� 0 	sendtweet 	sendTweet�� ����� �  ���� 	0 value  ��  � ������ 	0 value  �� 0 cmd  � @B��
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j  ��  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID   �����&�& �����������������������������������������������������������������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_	`	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�� 	�	� 	���	���	�  w��	���
�� 
docu	� �	�	�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr	� �	�	�  h s y l k k z 3 a U D
�� kfrmID  � 	�	� 	���	���	�  w��	���
�� 
docu	� �	�	�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr	� �	�	�  p D E - Q Y 9 q 2 _ u
�� kfrmID  � 	�	� 	���	���	�  w��	���
�� 
docu	� �	�	�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr	� �	�	�  g r N S M 7 s V z - W
�� kfrmID  � 	�	� 	���	���	�  w��	���
�� 
docu	� �	�	�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr	� �	�	�  e A l C X R 6 V J 1 L
�� kfrmID  � 	�	� 	���	���	�  w��
 ��
�� 
docu
  �

  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr	� �

  m Y h M R O N h S U L
�� kfrmID  � 

 
��
��
  w��
��
�� 
docu
 �

  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
 �

  a - w o k N Y a A q E
�� kfrmID  � 
	
	 

��
��

  w��
��
�� 
docu
 �

  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
 �

  f j e d z Z h x 9 I i
�� kfrmID  � 

 
��
��
  w��
�
�� 
docu
 �

  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCpr
 �

  j H _ Y x j I J 0 C _
�� kfrmID  � 

 
�~
�}
  w�|
�{
�| 
docu
 �

  o r H s u N 2 0 E 8 i
�{ kfrmID  
�~ 
FCpr
 �

  j 5 t y v o j P _ q _
�} kfrmID  � 

 
�z
�y
  w�x
�w
�x 
docu
 �

  o r H s u N 2 0 E 8 i
�w kfrmID  
�z 
FCpr
 �
 
   p s D s d Y N H s _ n
�y kfrmID  � 
!
! 
"�v
#�u
"  w�t
$�s
�t 
docu
$ �
%
%  o r H s u N 2 0 E 8 i
�s kfrmID  
�v 
FCpr
# �
&
&  l _ p - - k F m p B 3
�u kfrmID  � 
'
' 
(�r
)�q
(  w�p
*�o
�p 
docu
* �
+
+  o r H s u N 2 0 E 8 i
�o kfrmID  
�r 
FCpr
) �
,
,  d l T z I 4 O 0 d z m
�q kfrmID  � 
-
- 
.�n
/�m
.  w�l
0�k
�l 
docu
0 �
1
1  o r H s u N 2 0 E 8 i
�k kfrmID  
�n 
FCpr
/ �
2
2  j l E r r q N g N d s
�m kfrmID  � 
3
3 
4�j
5�i
4  w�h
6�g
�h 
docu
6 �
7
7  o r H s u N 2 0 E 8 i
�g kfrmID  
�j 
FCpr
5 �
8
8  b U _ f R j N v Y 6 M
�i kfrmID  � 
9
9 
:�f
;�e
:  w�d
<�c
�d 
docu
< �
=
=  o r H s u N 2 0 E 8 i
�c kfrmID  
�f 
FCpr
; �
>
>  b 9 X x J k 8 Y J e n
�e kfrmID  � 
?
? 
@�b
A�a
@  w�`
B�_
�` 
docu
B �
C
C  o r H s u N 2 0 E 8 i
�_ kfrmID  
�b 
FCpr
A �
D
D  j E 2 D Z F R K h O Z
�a kfrmID  � 
E
E 
F�^
G�]
F  w�\
H�[
�\ 
docu
H �
I
I  o r H s u N 2 0 E 8 i
�[ kfrmID  
�^ 
FCpr
G �
J
J  c l V q h Z M e n r g
�] kfrmID  � 
K
K 
L�Z
M�Y
L  w�X
N�W
�X 
docu
N �
O
O  o r H s u N 2 0 E 8 i
�W kfrmID  
�Z 
FCpr
M �
P
P  h 2 V 7 R C 3 P _ s a
�Y kfrmID  � 
Q
Q 
R�V
S�U
R  w�T
T�S
�T 
docu
T �
U
U  o r H s u N 2 0 E 8 i
�S kfrmID  
�V 
FCpr
S �
V
V  m L - 4 q 2 G W e J Y
�U kfrmID  � 
W
W 
X�R
Y�Q
X  w�P
Z�O
�P 
docu
Z �
[
[  o r H s u N 2 0 E 8 i
�O kfrmID  
�R 
FCpr
Y �
\
\  o 1 F 6 S J K K o U y
�Q kfrmID  � 
]
] 
^�N
_�M
^  w�L
`�K
�L 
docu
` �
a
a  o r H s u N 2 0 E 8 i
�K kfrmID  
�N 
FCpr
_ �
b
b  o 8 R r o 6 y x W W W
�M kfrmID  � 
c
c 
d�J
e�I
d  w�H
f�G
�H 
docu
f �
g
g  o r H s u N 2 0 E 8 i
�G kfrmID  
�J 
FCpr
e �
h
h  j H M u Y a - J N A A
�I kfrmID  � 
i
i 
j�F
k�E
j  w�D
l�C
�D 
docu
l �
m
m  o r H s u N 2 0 E 8 i
�C kfrmID  
�F 
FCpr
k �
n
n  c J _ h F t l T e x b
�E kfrmID  � 
o
o 
p�B
q�A
p  w�@
r�?
�@ 
docu
r �
s
s  o r H s u N 2 0 E 8 i
�? kfrmID  
�B 
FCpr
q �
t
t  l 4 4 8 g f E 6 W E J
�A kfrmID  � 
u
u 
v�>
w�=
v  w�<
x�;
�< 
docu
x �
y
y  o r H s u N 2 0 E 8 i
�; kfrmID  
�> 
FCpr
w �
z
z  b 1 P g p L p _ v c i
�= kfrmID  � 
{
{ 
|�:
}�9
|  w�8
~�7
�8 
docu
~ �

  o r H s u N 2 0 E 8 i
�7 kfrmID  
�: 
FCpr
} �
�
�  n k B Y C q h e r Q e
�9 kfrmID  � 
�
� 
��6
��5
�  w�4
��3
�4 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�3 kfrmID  
�6 
FCpr
� �
�
�  j o 9 W _ P Y P d H 9
�5 kfrmID  � 
�
� 
��2
��1
�  w�0
��/
�0 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�/ kfrmID  
�2 
FCpr
� �
�
�  n W s D n l B 6 o V X
�1 kfrmID  � 
�
� 
��.
��-
�  w�,
��+
�, 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�+ kfrmID  
�. 
FCpr
� �
�
�  j u 1 Q r J 1 m q s f
�- kfrmID  � 
�
� 
��*
��)
�  w�(
��'
�( 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�' kfrmID  
�* 
FCpr
� �
�
�  n - f - j l r i m A j
�) kfrmID  � 
�
� 
��&
��%
�  w�$
��#
�$ 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�# kfrmID  
�& 
FCpr
� �
�
�  f G w 8 3 c G G f u i
�% kfrmID  � 
�
� 
��"
��!
�  w� 
��
�  
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
�" 
FCpr
� �
�
�  p U F D 6 I U F P s K
�! kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  d l r i S F O v n _ 3
� kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  b U 1 c 5 T v l u K 9
� kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  i F l Q 0 9 R 3 l t p
� kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  f f E C g E O T e x b
� kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  e W Q U G 7 Y z H I u
� kfrmID  � 
�
� 
��

��	
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
�
 
FCpr
� �
�
�  h J B 8 f J w 3 z b X
�	 kfrmID  � 
�
� 
��
��
�  w�
��
� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr
� �
�
�  f P X a U F - R d w y
� kfrmID  � 
�
� 
��
��
�  w� 
���
�  
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCpr
� �
�
�  f _ D v X T Q e U H n
� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  f A 8 W D q L R r P e
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  j p g c d f 0 o X k M
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  l W q R M q N 5 _ u q
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  j Z i k u t X k U Z V
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  l u o i t _ b x 1 z A
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  l 3 t t W d 1 B f e U
�� kfrmID  � 
�
� 
���
���
�  w��
���
�� 
docu
� �
�
�  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr
� �
�
�  k C n i s T 0 1 Q c O
�� kfrmID  � 
�
�  ����   w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  a z j R Q N b h M - L
�� kfrmID  �  ����  w����
�� 
docu �		  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �

  h V E u u 5 I n 8 L O
�� kfrmID  �  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  f - K a E i e F w d 4
�� kfrmID  �  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  l c M M a e c 5 b A I
�� kfrmID  �  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  a P n z S K L s A Y 0
�� kfrmID  �  ����  w�� ��
�� 
docu  �!!  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �""  j p S K f n P g 1 - P
�� kfrmID  � ## $��%��$  w��&��
�� 
docu& �''  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr% �((  o c U i j 7 A 3 V P F
�� kfrmID  � )) *��+��*  w��,��
�� 
docu, �--  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr+ �..  o r n B w 2 m K _ y o
�� kfrmID  � // 0��1��0  w��2��
�� 
docu2 �33  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr1 �44  g L E 6 W S _ d v 1 Z
�� kfrmID  � 55 6��7��6  w��8��
�� 
docu8 �99  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr7 �::  b d n z - K Q Z t t 7
�� kfrmID  � ;; <��=��<  w��>��
�� 
docu> �??  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr= �@@  h L u O C b 8 z r z 9
�� kfrmID  � AA B��C��B  w��D��
�� 
docuD �EE  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprC �FF  c f z p 5 g Y y R t m
�� kfrmID  � GG H��I��H  w��J��
�� 
docuJ �KK  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprI �LL  m X v M U f w N v 9 E
�� kfrmID  � MM N��O��N  w��P��
�� 
docuP �QQ  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprO �RR  a v c 0 3 l 0 C b I F
�� kfrmID  � SS T��U��T  w��V��
�� 
docuV �WW  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprU �XX  h Z p f l I D a - 7 o
�� kfrmID  � YY Z��[��Z  w��\��
�� 
docu\ �]]  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr[ �^^  k 6 l - N 8 j 5 5 r B
�� kfrmID  � __ `��a��`  w��b��
�� 
docub �cc  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpra �dd  l q L K E Q H Z 3 w B
�� kfrmID  � ee f��g��f  w��h��
�� 
docuh �ii  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprg �jj  j 1 K A 2 - g 6 G Z S
�� kfrmID  	  kk l��m��l  w��n��
�� 
docun �oo  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprm �pp  n 4 k 4 x Z I I v c p
�� kfrmID  	 qq r��s��r  w��t��
�� 
docut �uu  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprs �vv  o Z 4 7 h W 1 q W O f
�� kfrmID  	 ww x��y��x  w��z��
�� 
docuz �{{  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpry �||  a 0 9 u V w 4 Y 8 N 9
�� kfrmID  	 }} ~����~  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr ���  h G Q L 8 c O b u 3 s
�� kfrmID  	 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j P F S g R X E k w J
�� kfrmID  	 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  m a 4 K X 9 1 N G X s
�� kfrmID  	 �� �������  w����
�� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCpr� ���  f X B A h x G X u 9 T
�� kfrmID  	 �� ��~��}�  w�|��{
�| 
docu� ���  o r H s u N 2 0 E 8 i
�{ kfrmID  
�~ 
FCpr� ���  i - Q S B Y f K L 9 m
�} kfrmID  	 �� ��z��y�  w�x��w
�x 
docu� ���  o r H s u N 2 0 E 8 i
�w kfrmID  
�z 
FCpr� ���  l 9 1 T N X g I M c C
�y kfrmID  		 �� ��v��u�  w�t��s
�t 
docu� ���  o r H s u N 2 0 E 8 i
�s kfrmID  
�v 
FCpr� ���  m R n i r f o F J N B
�u kfrmID  	
 �� ��r��q�  w�p��o
�p 
docu� ���  o r H s u N 2 0 E 8 i
�o kfrmID  
�r 
FCpr� ���  b R V w j V 0 K D s Z
�q kfrmID  	 �� ��n��m�  w�l��k
�l 
docu� ���  o r H s u N 2 0 E 8 i
�k kfrmID  
�n 
FCpr� ���  i D a Q N c u O E G W
�m kfrmID  	 �� ��j��i�  w�h��g
�h 
docu� ���  o r H s u N 2 0 E 8 i
�g kfrmID  
�j 
FCpr� ���  e n M u q J P Z 8 W x
�i kfrmID  	 �� ��f��e�  w�d��c
�d 
docu� ���  o r H s u N 2 0 E 8 i
�c kfrmID  
�f 
FCpr� ���  b B r 6 P P 0 7 X M n
�e kfrmID  	 �� ��b��a�  w�`��_
�` 
docu� ���  o r H s u N 2 0 E 8 i
�_ kfrmID  
�b 
FCpr� ���  l t d t r i K e 0 7 z
�a kfrmID  	 �� ��^��]�  w�\��[
�\ 
docu� ���  o r H s u N 2 0 E 8 i
�[ kfrmID  
�^ 
FCpr� ���  d - B 1 b O 1 N Z Z J
�] kfrmID  	 �� ��Z��Y�  w�X��W
�X 
docu� ���  o r H s u N 2 0 E 8 i
�W kfrmID  
�Z 
FCpr� ���  a o Z R 5 P C V p M R
�Y kfrmID  	 �� ��V��U�  w�T��S
�T 
docu� ���  o r H s u N 2 0 E 8 i
�S kfrmID  
�V 
FCpr� ���  o O t h e q 7 V R w f
�U kfrmID  	 �� ��R��Q�  w�P��O
�P 
docu� ���  o r H s u N 2 0 E 8 i
�O kfrmID  
�R 
FCpr� ���  o U q E 0 Y Y e x f 1
�Q kfrmID  	 �� ��N��M�  w�L��K
�L 
docu� ���  o r H s u N 2 0 E 8 i
�K kfrmID  
�N 
FCpr� ���  e 5 b F D v K E 4 1 R
�M kfrmID  	 �� ��J��I�  w�H��G
�H 
docu� ���  o r H s u N 2 0 E 8 i
�G kfrmID  
�J 
FCpr� ���  n z 0 F V T g J P k -
�I kfrmID  	 �� ��F��E�  w�D��C
�D 
docu� ���  o r H s u N 2 0 E 8 i
�C kfrmID  
�F 
FCpr� ���  h N t l h H K c i X r
�E kfrmID  	 �� ��B��A�  w�@��?
�@ 
docu� ���  o r H s u N 2 0 E 8 i
�? kfrmID  
�B 
FCpr� ���  k J V Y 3 w Q B 2 G q
�A kfrmID  	 �� ��>��=�  w�<��;
�< 
docu� ���  o r H s u N 2 0 E 8 i
�; kfrmID  
�> 
FCpr� ���  k U J f u i l 6 _ 0 u
�= kfrmID  	 �� ��:��9�  w�8��7
�8 
docu� ���  o r H s u N 2 0 E 8 i
�7 kfrmID  
�: 
FCpr� �    d 3 f l q T V J g 8 u
�9 kfrmID  	  �6�5  w�4�3
�4 
docu �  o r H s u N 2 0 E 8 i
�3 kfrmID  
�6 
FCpr �  d C y H 9 j g S h v I
�5 kfrmID  	  �2	�1  w�0
�/
�0 
docu
 �  o r H s u N 2 0 E 8 i
�/ kfrmID  
�2 
FCpr	 �  m P m E a B T 5 D j r
�1 kfrmID  	  �.�-  w�,�+
�, 
docu �  o r H s u N 2 0 E 8 i
�+ kfrmID  
�. 
FCpr �  f g G A U Q 1 3 2 4 Z
�- kfrmID  	  �*�)  w�(�'
�( 
docu �  o r H s u N 2 0 E 8 i
�' kfrmID  
�* 
FCpr �  k W P 7 b 0 7 y x P u
�) kfrmID  	  �&�%  w�$�#
�$ 
docu �  o r H s u N 2 0 E 8 i
�# kfrmID  
�& 
FCpr �  l a - N s d 2 u A Z G
�% kfrmID  	   �"!�!   w� "�
�  
docu" �##  o r H s u N 2 0 E 8 i
� kfrmID  
�" 
FCpr! �$$  g G j S o e d v y 7 m
�! kfrmID  	 %% &�'�&  w�(�
� 
docu( �))  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr' �**  k d g M 1 H Z P X j l
� kfrmID  	  ++ ,�-�,  w�.�
� 
docu. �//  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr- �00  m X D F B I f D _ Z T
� kfrmID  	! 11 2�3�2  w�4�
� 
docu4 �55  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr3 �66  c A a i i 5 g L - y Q
� kfrmID  	" 77 8�9�8  w�:�
� 
docu: �;;  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr9 �<<  e 5 3 v R D 6 q X o A
� kfrmID  	# == >�?�>  w�@�
� 
docu@ �AA  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr? �BB  d z 6 b g 2 r k Q m u
� kfrmID  	$ CC D�
E�	D  w�F�
� 
docuF �GG  o r H s u N 2 0 E 8 i
� kfrmID  
�
 
FCprE �HH  d X w j 4 8 b g i a P
�	 kfrmID  	% II J�K�J  w�L�
� 
docuL �MM  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCprK �NN  j x Y P R U s m B e m
� kfrmID  	& OO P�Q�P  w� R��
�  
docuR �SS  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCprQ �TT  b O c s w m 8 Z b L N
� kfrmID  	' UU V��W��V  w��X��
�� 
docuX �YY  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprW �ZZ  d i Z U w h O q B k -
�� kfrmID  	( [[ \��]��\  w��^��
�� 
docu^ �__  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr] �``  h c b g I P N _ 2 g g
�� kfrmID  	) aa b��c��b  w��d��
�� 
docud �ee  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprc �ff  c k r S c Y Z A R 7 m
�� kfrmID  	* gg h��i��h  w��j��
�� 
docuj �kk  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpri �ll  k d y b S E D _ r g V
�� kfrmID  	+ mm n��o��n  w��p��
�� 
docup �qq  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpro �rr  b n 7 8 D t Q q K n D
�� kfrmID  	, ss t��u��t  w��v��
�� 
docuv �ww  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpru �xx  l C D D - - 7 Q 5 - m
�� kfrmID  	- yy z��{��z  w��|��
�� 
docu| �}}  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr{ �~~  h H 0 h H E G N T R l
�� kfrmID  	.  �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  n g p 3 0 m V L f g a
�� kfrmID  	/ �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  a r O A n 2 H A Y M s
�� kfrmID  	0 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  h u e n j g a z 8 o c
�� kfrmID  	1 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  g 7 S A 4 F 2 v p 6 p
�� kfrmID  	2 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  b A t S I h B l w 1 6
�� kfrmID  	3 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f O D m _ q Q a n 8 8
�� kfrmID  	4 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  k F m k v 6 F 1 d R o
�� kfrmID  	5 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  l d r q T f 1 f 5 3 w
�� kfrmID  	6 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f 2 s s D i 4 9 g o D
�� kfrmID  	7 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  l J G b X C a K p 0 l
�� kfrmID  	8 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f a M 6 x - z e u A n
�� kfrmID  	9 �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  k N w 8 g T q M a 1 a
�� kfrmID  	: �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  k t f F n D 8 T m t z
�� kfrmID  	; �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  e c 8 E g z q C a K 5
�� kfrmID  	< �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  c X o 0 x G 6 K o G 4
�� kfrmID  	= �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  m G Q h a k _ w T c s
�� kfrmID  	> �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j - C O i o p j I D J
�� kfrmID  	? �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j 8 w 9 u x y w t p w
�� kfrmID  	@ �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  i g V g e 6 _ 1 s 4 D
�� kfrmID  	A �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  d i z 4 Z I q j q N _
�� kfrmID  	B �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j t 2 J I 2 n B - k a
�� kfrmID  	C �� �������  w�� ��
�� 
docu  �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� �  o N D c v N A r I 7 P
�� kfrmID  	D  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  f W 5 m n Z P H r P I
�� kfrmID  	E 		 
����
  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  e C y 5 h T P q C 9 K
�� kfrmID  	F  ����  w���
�� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCpr �  h 1 H - c 9 W N C R x
�� kfrmID  	G  �~�}  w�|�{
�| 
docu �  o r H s u N 2 0 E 8 i
�{ kfrmID  
�~ 
FCpr �  b 3 n e X i x 9 Q I c
�} kfrmID  	H  �z�y  w�x�w
�x 
docu �  o r H s u N 2 0 E 8 i
�w kfrmID  
�z 
FCpr �    k H c i J w 8 W X g 6
�y kfrmID  	I !! "�v#�u"  w�t$�s
�t 
docu$ �%%  o r H s u N 2 0 E 8 i
�s kfrmID  
�v 
FCpr# �&&  d s 2 t H c J 3 f 1 z
�u kfrmID  	J '' (�r)�q(  w�p*�o
�p 
docu* �++  o r H s u N 2 0 E 8 i
�o kfrmID  
�r 
FCpr) �,,  f 6 O a 5 j m M U M C
�q kfrmID  	K -- .�n/�m.  w�l0�k
�l 
docu0 �11  o r H s u N 2 0 E 8 i
�k kfrmID  
�n 
FCpr/ �22  g e K 6 L I Q e j b C
�m kfrmID  	L 33 4�j5�i4  w�h6�g
�h 
docu6 �77  o r H s u N 2 0 E 8 i
�g kfrmID  
�j 
FCpr5 �88  o E J Y O I V r W 7 S
�i kfrmID  	M 99 :�f;�e:  w�d<�c
�d 
docu< �==  o r H s u N 2 0 E 8 i
�c kfrmID  
�f 
FCpr; �>>  l W - R t I 8 8 3 1 5
�e kfrmID  	N ?? @�bA�a@  w�`B�_
�` 
docuB �CC  o r H s u N 2 0 E 8 i
�_ kfrmID  
�b 
FCprA �DD  n 2 S 8 4 g M 6 5 c V
�a kfrmID  	O EE F�^G�]F  w�\H�[
�\ 
docuH �II  o r H s u N 2 0 E 8 i
�[ kfrmID  
�^ 
FCprG �JJ  a s r E J a Q j t r V
�] kfrmID  	P KK L�ZM�YL  w�XN�W
�X 
docuN �OO  o r H s u N 2 0 E 8 i
�W kfrmID  
�Z 
FCprM �PP  o t x Q K v 8 K y Z J
�Y kfrmID  	Q QQ R�VS�UR  w�TT�S
�T 
docuT �UU  o r H s u N 2 0 E 8 i
�S kfrmID  
�V 
FCprS �VV  n Z J A e Y 1 F Y i e
�U kfrmID  	R WW X�RY�QX  w�PZ�O
�P 
docuZ �[[  o r H s u N 2 0 E 8 i
�O kfrmID  
�R 
FCprY �\\  n Q K O i A q I g l i
�Q kfrmID  	S ]] ^�N_�M^  w�L`�K
�L 
docu` �aa  o r H s u N 2 0 E 8 i
�K kfrmID  
�N 
FCpr_ �bb  f P I n O e b Y c f S
�M kfrmID  	T cc d�Je�Id  w�Hf�G
�H 
docuf �gg  o r H s u N 2 0 E 8 i
�G kfrmID  
�J 
FCpre �hh  b P k W V _ V 1 R 1 O
�I kfrmID  	U ii j�Fk�Ej  w�Dl�C
�D 
docul �mm  o r H s u N 2 0 E 8 i
�C kfrmID  
�F 
FCprk �nn  n G l v I N U l P j Q
�E kfrmID  	V oo p�Bq�Ap  w�@r�?
�@ 
docur �ss  o r H s u N 2 0 E 8 i
�? kfrmID  
�B 
FCprq �tt  c c K G g j R z Z q 2
�A kfrmID  	W uu v�>w�=v  w�<x�;
�< 
docux �yy  o r H s u N 2 0 E 8 i
�; kfrmID  
�> 
FCprw �zz  e - 4 J 1 b 1 q l v M
�= kfrmID  	X {{ |�:}�9|  w�8~�7
�8 
docu~ �  o r H s u N 2 0 E 8 i
�7 kfrmID  
�: 
FCpr} ���  k c Y 7 n M q T 9 i F
�9 kfrmID  	Y �� ��6��5�  w�4��3
�4 
docu� ���  o r H s u N 2 0 E 8 i
�3 kfrmID  
�6 
FCpr� ���  k V X r D x t f m R h
�5 kfrmID  	Z �� ��2��1�  w�0��/
�0 
docu� ���  o r H s u N 2 0 E 8 i
�/ kfrmID  
�2 
FCpr� ���  h j o r 6 U J N N D 2
�1 kfrmID  	[ �� ��.��-�  w�,��+
�, 
docu� ���  o r H s u N 2 0 E 8 i
�+ kfrmID  
�. 
FCpr� ���  f c R M h K N 7 3 R 4
�- kfrmID  	\ �� ��*��)�  w�(��'
�( 
docu� ���  o r H s u N 2 0 E 8 i
�' kfrmID  
�* 
FCpr� ���  j V E W f M 4 A 4 u c
�) kfrmID  	] �� ��&��%�  w�$��#
�$ 
docu� ���  o r H s u N 2 0 E 8 i
�# kfrmID  
�& 
FCpr� ���  a D f n 9 V 8 Z C U e
�% kfrmID  	^ �� ��"��!�  w� ��
�  
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�" 
FCpr� ���  o q g e 7 M 5 v Q j W
�! kfrmID  	_ �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  h 1 w q o 3 u T M u X
� kfrmID  	` �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  p Y H - F j B y w y g
� kfrmID  	a �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  g u M E n l 8 b N C C
� kfrmID  	b �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  j Y D 9 g s 8 E P x A
� kfrmID  	c �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  a s s 3 g w 9 H a q S
� kfrmID  	d �� ��
��	�  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�
 
FCpr� ���  d L L Z V r 5 o i 1 u
�	 kfrmID  	e �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  k O v s 4 K 4 K z s 1
� kfrmID  	f �� �����  w� ���
�  
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCpr� ���  g k K e 8 B S J s v x
� kfrmID  	g �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  b H 5 w e 4 m b I q 8
�� kfrmID  	h �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  h 3 N v p X j 7 m H U
�� kfrmID  	i �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  h 4 K p J B x U q Q i
�� kfrmID  	j �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  n d Q 0 3 l b i 1 _ O
�� kfrmID  	k �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  d I E _ S T w U S 9 9
�� kfrmID  	l �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  i P a - E u 7 - v - F
�� kfrmID  	m �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  n Y r F v V K g 6 a X
�� kfrmID  	n ��  ����   w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  h M W t p 8 _ C A x O
�� kfrmID  	o  ����  w����
�� 
docu �		  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �

  g 5 M c e m A N R 4 V
�� kfrmID  	p  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  m U Y _ b M F 1 - V 7
�� kfrmID  	q  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  p n 9 I 7 v G F S z X
�� kfrmID  	r  ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �  o d 5 G J W o s c c Y
�� kfrmID  	s  ����  w�� ��
�� 
docu  �!!  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr �""  c 1 X i E - R 1 v S v
�� kfrmID  	t ## $��%��$  w��&��
�� 
docu& �''  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr% �((  j E a 1 B F A J J 9 H
�� kfrmID  	u )) *��+��*  w��,��
�� 
docu, �--  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr+ �..  b _ q h u D y 7 Y C b
�� kfrmID  	v // 0��1��0  w��2��
�� 
docu2 �33  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr1 �44  n P W F n 8 f - B Q x
�� kfrmID  	w 55 6��7��6  w��8��
�� 
docu8 �99  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr7 �::  l P S x F x G 2 0 6 c
�� kfrmID  	x ;; <��=��<  w��>��
�� 
docu> �??  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr= �@@  h s I X 4 u H p j 2 2
�� kfrmID  	y AA B��C��B  w��D��
�� 
docuD �EE  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprC �FF  f c T L m K i w y y 7
�� kfrmID  	z GG H��I��H  w��J��
�� 
docuJ �KK  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprI �LL  b x U G t s R D Z 2 -
�� kfrmID  	{ MM N��O��N  w��P��
�� 
docuP �QQ  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprO �RR  n 2 Z w g w H q w N 6
�� kfrmID  	| SS T��U��T  w��V��
�� 
docuV �WW  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprU �XX  b T s 3 4 L r n s d h
�� kfrmID  	} YY Z��[��Z  w��\��
�� 
docu\ �]]  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr[ �^^  i f J L a 5 d d 6 8 J
�� kfrmID  	~ __ `��a��`  w��b��
�� 
docub �cc  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpra �dd  j 0 g S D x K G U H 6
�� kfrmID  	 ee f��g��f  w��h��
�� 
docuh �ii  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprg �jj  m Q 0 e r - o Z b w j
�� kfrmID  	� kk l��m��l  w��n��
�� 
docun �oo  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprm �pp  g 7 d d E - K W M L k
�� kfrmID  	� qq r��s��r  w��t��
�� 
docut �uu  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprs �vv  a H g i 4 T p M H e k
�� kfrmID  	� ww x��y��x  w��z��
�� 
docuz �{{  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpry �||  i 1 D X _ S A R S f f
�� kfrmID  	� }} ~����~  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr ���  k i w O i 0 i F f 6 G
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  d d s h C q Y H k L t
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f f U H T M W 6 - a S
�� kfrmID  	� �� �������  w����
�� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCpr� ���  n x O m T _ k m q V e
�� kfrmID  	� �� ��~��}�  w�|��{
�| 
docu� ���  o r H s u N 2 0 E 8 i
�{ kfrmID  
�~ 
FCpr� ���  c 3 x X n V j C b R W
�} kfrmID  	� �� ��z��y�  w�x��w
�x 
docu� ���  o r H s u N 2 0 E 8 i
�w kfrmID  
�z 
FCpr� ���  a t A r 5 r t N 8 P U
�y kfrmID  	� �� ��v��u�  w�t��s
�t 
docu� ���  o r H s u N 2 0 E 8 i
�s kfrmID  
�v 
FCpr� ���  i h R 1 t 3 z F a E i
�u kfrmID  	� �� ��r��q�  w�p��o
�p 
docu� ���  o r H s u N 2 0 E 8 i
�o kfrmID  
�r 
FCpr� ���  n z l p Y - k 0 i 1 Z
�q kfrmID  	� �� ��n��m�  w�l��k
�l 
docu� ���  o r H s u N 2 0 E 8 i
�k kfrmID  
�n 
FCpr� ���  k W O D M k e M 6 P 9
�m kfrmID  	� �� ��j��i�  w�h��g
�h 
docu� ���  o r H s u N 2 0 E 8 i
�g kfrmID  
�j 
FCpr� ���  k 3 o A X F L D U J 7
�i kfrmID  	� �� ��f��e�  w�d��c
�d 
docu� ���  o r H s u N 2 0 E 8 i
�c kfrmID  
�f 
FCpr� ���  k R V I k o T v D A X
�e kfrmID  	� �� ��b��a�  w�`��_
�` 
docu� ���  o r H s u N 2 0 E 8 i
�_ kfrmID  
�b 
FCpr� ���  p w 1 r U e C C V Y M
�a kfrmID  	� �� ��^��]�  w�\��[
�\ 
docu� ���  o r H s u N 2 0 E 8 i
�[ kfrmID  
�^ 
FCpr� ���  p 6 D L X G s m Q y S
�] kfrmID  	� �� ��Z��Y�  w�X��W
�X 
docu� ���  o r H s u N 2 0 E 8 i
�W kfrmID  
�Z 
FCpr� ���  i V z N a T q m 0 i I
�Y kfrmID  	� �� ��V��U�  w�T��S
�T 
docu� ���  o r H s u N 2 0 E 8 i
�S kfrmID  
�V 
FCpr� ���  d _ n k E r X n 6 s T
�U kfrmID  	� �� ��R��Q�  w�P��O
�P 
docu� ���  o r H s u N 2 0 E 8 i
�O kfrmID  
�R 
FCpr� ���  l I w R I i c _ 8 B v
�Q kfrmID  	� �� ��N��M�  w�L��K
�L 
docu� ���  o r H s u N 2 0 E 8 i
�K kfrmID  
�N 
FCpr� ���  f r j R s S N a _ h M
�M kfrmID  	� �� ��J��I�  w�H��G
�H 
docu� ���  o r H s u N 2 0 E 8 i
�G kfrmID  
�J 
FCpr� ���  m z g S e x d R i D x
�I kfrmID  	� �� ��F��E�  w�D��C
�D 
docu� ���  o r H s u N 2 0 E 8 i
�C kfrmID  
�F 
FCpr� ���  l h t 0 J p B 5 m y b
�E kfrmID  	� �� ��B��A�  w�@��?
�@ 
docu� ���  o r H s u N 2 0 E 8 i
�? kfrmID  
�B 
FCpr� ���  f j 6 B 9 q c g E j A
�A kfrmID  	� �� ��>��=�  w�<��;
�< 
docu� ���  o r H s u N 2 0 E 8 i
�; kfrmID  
�> 
FCpr� ���  g k Y r H U l t 2 Z 0
�= kfrmID  	� �� ��:��9�  w�8��7
�8 
docu� ���  o r H s u N 2 0 E 8 i
�7 kfrmID  
�: 
FCpr� �    o f b K F r H z g Q 9
�9 kfrmID  	�  �6�5  w�4�3
�4 
docu �  o r H s u N 2 0 E 8 i
�3 kfrmID  
�6 
FCpr �  e C 6 - f Z B W G N v
�5 kfrmID  	�  �2	�1  w�0
�/
�0 
docu
 �  o r H s u N 2 0 E 8 i
�/ kfrmID  
�2 
FCpr	 �  j - I w o A 7 H J q b
�1 kfrmID  	�  �.�-  w�,�+
�, 
docu �  o r H s u N 2 0 E 8 i
�+ kfrmID  
�. 
FCpr �  b a w x U S J G D c A
�- kfrmID  	�  �*�)  w�(�'
�( 
docu �  o r H s u N 2 0 E 8 i
�' kfrmID  
�* 
FCpr �  d u 8 x A H M l o z Q
�) kfrmID  	�  �&�%  w�$�#
�$ 
docu �  o r H s u N 2 0 E 8 i
�# kfrmID  
�& 
FCpr �  g B F S F T N p r H x
�% kfrmID  	�   �"!�!   w� "�
�  
docu" �##  o r H s u N 2 0 E 8 i
� kfrmID  
�" 
FCpr! �$$  b N u u w 0 b j x - Y
�! kfrmID  	� %% &�'�&  w�(�
� 
docu( �))  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr' �**  k Y I B C a a j N v V
� kfrmID  	� ++ ,�-�,  w�.�
� 
docu. �//  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr- �00  c i f 3 D N 9 Y E F _
� kfrmID  	� 11 2�3�2  w�4�
� 
docu4 �55  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr3 �66  a W Q d q g N 9 c 0 _
� kfrmID  	� 77 8�9�8  w�:�
� 
docu: �;;  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr9 �<<  e 0 u C I M 9 j A P 1
� kfrmID  	� == >�?�>  w�@�
� 
docu@ �AA  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr? �BB  f z R M W d R T N n 1
� kfrmID  	� CC D�
E�	D  w�F�
� 
docuF �GG  o r H s u N 2 0 E 8 i
� kfrmID  
�
 
FCprE �HH  d c T O G P h g S 0 r
�	 kfrmID  	� II J�K�J  w�L�
� 
docuL �MM  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCprK �NN  g 3 P Z c 2 p k K u z
� kfrmID  	� OO P�Q�P  w� R��
�  
docuR �SS  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCprQ �TT  n G 6 o 6 z s 4 Y B L
� kfrmID  	� UU V��W��V  w��X��
�� 
docuX �YY  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprW �ZZ  m S k D Z G Q X 6 3 R
�� kfrmID  	� [[ \��]��\  w��^��
�� 
docu^ �__  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr] �``  c v N 2 A 7 D D j M 3
�� kfrmID  	� aa b��c��b  w��d��
�� 
docud �ee  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCprc �ff  i c p u T r 2 K Z F W
�� kfrmID  	� gg h��i��h  w��j��
�� 
docuj �kk  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpri �ll  b C 2 A E U O P 4 p P
�� kfrmID  	� mm n��o��n  w��p��
�� 
docup �qq  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpro �rr  h 4 m 7 J 2 5 K i Q S
�� kfrmID  	� ss t��u��t  w��v��
�� 
docuv �ww  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpru �xx  h O m 0 e I H H A l D
�� kfrmID  	� yy z��{��z  w��|��
�� 
docu| �}}  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr{ �~~  n A U Q t M y w i 3 8
�� kfrmID  	�  �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f x 3 y B k d x Z t i
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  m G 8 G f M J u m 2 4
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  o 6 h I G X W h a f k
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  o x 0 s V Y L m 9 C T
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f Q r V H 2 b A 0 H b
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j F k W b n l o j I L
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f P 3 J p l 6 u l z s
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  j _ g U T I h r 7 d C
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  g q H L g f l m K I C
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f Q D _ 8 Y v m 9 K X
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  p l J t x o h 0 F 5 p
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  f T Q x 4 x L V m J T
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  o t X H f d R Z t s R
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  i h w t 6 Y 2 7 M Q K
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  h b K C t G N A E A Q
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  k 9 - G P w V v M 7 5
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  a q A - Z 0 F P v S X
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  d V Y Q - 2 E m W T H
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  h f O z L L u S b q 2
�� kfrmID  	� �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCpr� ���  b J p n 0 A B Y 3 Q z
�� kfrmID  	� �� �������  w����
�� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCpr� ���  d - Y G 1 h N Y v 3 E
�� kfrmID  	� �� �����  w� �
� 
docu  �  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� �  b J g h C p t - i Y I
� kfrmID  	�  ��  w��
� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr �  p 4 n H U X 1 E d r _
� kfrmID  	� 		 
��
  w��
� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr �  e v - _ o Z g L t Z V
� kfrmID  	�  ��  w��
� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr �  h v N M Y I J c p A S
� kfrmID  	�  �~�}  w�|�{
�| 
docu �  o r H s u N 2 0 E 8 i
�{ kfrmID  
�~ 
FCpr �  g n p J r D L 3 A K Z
�} kfrmID  	�  �z�y  w�x�w
�x 
docu �  o r H s u N 2 0 E 8 i
�w kfrmID  
�z 
FCpr �    c E C 4 y k c 1 t b a
�y kfrmID  	� !! "�v#�u"  w�t$�s
�t 
docu$ �%%  o r H s u N 2 0 E 8 i
�s kfrmID  
�v 
FCpr# �&&  g J P t H g 0 q l F Z
�u kfrmID  	� '' (�r)�q(  w�p*�o
�p 
docu* �++  o r H s u N 2 0 E 8 i
�o kfrmID  
�r 
FCpr) �,,  h e h V A T H n f _ 7
�q kfrmID  	� -- .�n/�m.  w�l0�k
�l 
docu0 �11  o r H s u N 2 0 E 8 i
�k kfrmID  
�n 
FCpr/ �22  o X H e p e V j J e d
�m kfrmID  	� 33 4�j5�i4  w�h6�g
�h 
docu6 �77  o r H s u N 2 0 E 8 i
�g kfrmID  
�j 
FCpr5 �88  b _ 6 P U X t s v F L
�i kfrmID  	� 99 :�f;�e:  w�d<�c
�d 
docu< �==  o r H s u N 2 0 E 8 i
�c kfrmID  
�f 
FCpr; �>>  b p m I 6 c o c f P j
�e kfrmID  	� ?? @�bA�a@  w�`B�_
�` 
docuB �CC  o r H s u N 2 0 E 8 i
�_ kfrmID  
�b 
FCprA �DD  f 3 9 z W j g B r Z j
�a kfrmID  	� EE F�^G�]F  w�\H�[
�\ 
docuH �II  o r H s u N 2 0 E 8 i
�[ kfrmID  
�^ 
FCprG �JJ  c Q Z i s o v J s - v
�] kfrmID  	� KK L�ZM�YL  w�XN�W
�X 
docuN �OO  o r H s u N 2 0 E 8 i
�W kfrmID  
�Z 
FCprM �PP  k r X i e P c 3 A U B
�Y kfrmID  	� QQ R�VS�UR  w�TT�S
�T 
docuT �UU  o r H s u N 2 0 E 8 i
�S kfrmID  
�V 
FCprS �VV  j 3 X _ p 5 D - k N E
�U kfrmID  	� WW X�RY�QX  w�PZ�O
�P 
docuZ �[[  o r H s u N 2 0 E 8 i
�O kfrmID  
�R 
FCprY �\\  h y j 3 w i d 8 b W r
�Q kfrmID  	� ]] ^�N_�M^  w�L`�K
�L 
docu` �aa  o r H s u N 2 0 E 8 i
�K kfrmID  
�N 
FCpr_ �bb  l R j i 6 h u m p t G
�M kfrmID  	� cc d�Je�Id  w�Hf�G
�H 
docuf �gg  o r H s u N 2 0 E 8 i
�G kfrmID  
�J 
FCpre �hh  k v u d 4 o R i r q n
�I kfrmID  	� ii j�Fk�Ej  w�Dl�C
�D 
docul �mm  o r H s u N 2 0 E 8 i
�C kfrmID  
�F 
FCprk �nn  e U Z z 4 a v _ 0 l M
�E kfrmID  	� oo p�Bq�Ap  w�@r�?
�@ 
docur �ss  o r H s u N 2 0 E 8 i
�? kfrmID  
�B 
FCprq �tt  h i a 2 n g T F i w i
�A kfrmID  	� uu v�>w�=v  w�<x�;
�< 
docux �yy  o r H s u N 2 0 E 8 i
�; kfrmID  
�> 
FCprw �zz  e 9 P 2 w l 2 v h U -
�= kfrmID  	� {{ |�:}�9|  w�8~�7
�8 
docu~ �  o r H s u N 2 0 E 8 i
�7 kfrmID  
�: 
FCpr} ���  o w r g M F f S _ L v
�9 kfrmID  	� �� ��6��5�  w�4��3
�4 
docu� ���  o r H s u N 2 0 E 8 i
�3 kfrmID  
�6 
FCpr� ���  i g M P o G N 7 n A a
�5 kfrmID  	� �� ��2��1�  w�0��/
�0 
docu� ���  o r H s u N 2 0 E 8 i
�/ kfrmID  
�2 
FCpr� ���  c B s T E 0 k B i _ a
�1 kfrmID  	� �� ��.��-�  w�,��+
�, 
docu� ���  o r H s u N 2 0 E 8 i
�+ kfrmID  
�. 
FCpr� ���  l h p x G Z k U 1 E V
�- kfrmID  	� �� ��*��)�  w�(��'
�( 
docu� ���  o r H s u N 2 0 E 8 i
�' kfrmID  
�* 
FCpr� ���  h d M T u x i f Q N 8
�) kfrmID  	� �� ��&��%�  w�$��#
�$ 
docu� ���  o r H s u N 2 0 E 8 i
�# kfrmID  
�& 
FCpr� ���  c W 5 8 c A L O d Y y
�% kfrmID  	� �� ��"��!�  w� ��
�  
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�" 
FCpr� ���  d p d n 6 O J H a 4 4
�! kfrmID  	� �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  a S j 8 Z R l u l j 7
� kfrmID  	� �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  n D G 4 t u r u 3 B m
� kfrmID  	� �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  o 8 G g H z d W H M X
� kfrmID  	� �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  d k q f d x s 8 W 8 i
� kfrmID  	� �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCpr� ���  p A 3 W T D y B O G i
� kfrmID  	� �� ��
��	�  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�
 
FCpr� ���  h u 6 w _ L L D g d -
�	 kfrmID   ��� d� d ������������������������������������������������������ 	
 !"#$%&'()*+,-� .. /�0�/  w�1�
� 
docu1 �22  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct0 �33  d a l T 6 j 6 e H J I
� kfrmID  � 44 5�6� 5  w��7��
�� 
docu7 �88  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCct6 �99  f C R p p X d r - _ j
�  kfrmID  � :: ;��<��;  w��=��
�� 
docu= �>>  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct< �??  n v L n E V A Y o L -
�� kfrmID  � @@ A��B��A  w��C��
�� 
docuC �DD  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctB �EE  i l g V N K o S S 0 7
�� kfrmID  � FF G��H��G  w��I��
�� 
docuI �JJ  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctH �KK  b i w b n v x n e c 7
�� kfrmID  � LL M��N��M  w��O��
�� 
docuO �PP  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctN �QQ  i 7 e M W _ 8 0 J 6 h
�� kfrmID  � RR S��T��S  w��U��
�� 
docuU �VV  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctT �WW  j e Q F t A Y X E M H
�� kfrmID  � XX Y��Z��Y  w��[��
�� 
docu[ �\\  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctZ �]]  g g k s R Q O C P w V
�� kfrmID  � ^^ _��`��_  w��a��
�� 
docua �bb  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct` �cc  p y E C e j X 0 0 v 0
�� kfrmID  � dd e��f��e  w��g��
�� 
docug �hh  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctf �ii  h O F Z L f M e q T h
�� kfrmID  � jj k��l��k  w��m��
�� 
docum �nn  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctl �oo  a t j n H 1 S _ A S g
�� kfrmID  � pp q��r��q  w��s��
�� 
docus �tt  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctr �uu  b O q u p 2 a F E d G
�� kfrmID  � vv w��x��w  w��y��
�� 
docuy �zz  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCctx �{{  k n R 2 L t y 2 5 2 7
�� kfrmID  � || }��~��}  w����
�� 
docu ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct~ ���  f c u 9 K P m j 1 F q
�� kfrmID  � �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  f G U W U 2 B d w Y Y
�� kfrmID  � �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  g Q 3 G L l H p v 0 r
�� kfrmID  � �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  f V c D g 3 A g N k h
�� kfrmID  � �� �������  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCct� ���  c M z C 5 A 7 h m r C
�� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  o T i q v - Z f J J G
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  c _ - t c P M d e 4 5
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  j z 7 P T s y o V X 3
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  g 5 _ a Q p w E 9 5 q
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  g y m L m R e j G I k
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  n K Z 5 i x J M L F Z
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  b n P a h S d D E w V
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  a X Y t 4 f 0 w Z I 6
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  i k P X 7 5 M Z 7 5 g
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  o r V _ F H a _ r x r
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  k G L O F 7 4 i z I s
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  o I J 8 B I - G F k 2
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  c O s j A z Z E u I J
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  i T k c F t G C Y t u
� kfrmID  � �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  m O m F t W - e K C P
� kfrmID  � �� �����  w���~
� 
docu� ���  o r H s u N 2 0 E 8 i
�~ kfrmID  
� 
FCct� ���  f i z 0 s G _ i N i B
� kfrmID  � �� ��}��|�  w�{��z
�{ 
docu� ���  o r H s u N 2 0 E 8 i
�z kfrmID  
�} 
FCct� ���  m m J J 7 7 c d R j N
�| kfrmID  �    �y�x  w�w�v
�w 
docu �  o r H s u N 2 0 E 8 i
�v kfrmID  
�y 
FCct �  i z 8 I J o 9 t u F 2
�x kfrmID  �  �u�t  w�s	�r
�s 
docu	 �

  o r H s u N 2 0 E 8 i
�r kfrmID  
�u 
FCct �  j r u Z a w D z q k U
�t kfrmID  �  �q�p  w�o�n
�o 
docu �  o r H s u N 2 0 E 8 i
�n kfrmID  
�q 
FCct �  c p G p h k z 1 E u Y
�p kfrmID  �  �m�l  w�k�j
�k 
docu �  o r H s u N 2 0 E 8 i
�j kfrmID  
�m 
FCct �  o l V i 3 f S i q H n
�l kfrmID  �  �i�h  w�g�f
�g 
docu �  o r H s u N 2 0 E 8 i
�f kfrmID  
�i 
FCct �  m l 8 4 g M t 3 V i U
�h kfrmID  �  �e �d  w�c!�b
�c 
docu! �""  o r H s u N 2 0 E 8 i
�b kfrmID  
�e 
FCct  �##  o t F _ A S c K y 6 f
�d kfrmID  � $$ %�a&�`%  w�_'�^
�_ 
docu' �((  o r H s u N 2 0 E 8 i
�^ kfrmID  
�a 
FCct& �))  l T M 1 - B o m b S t
�` kfrmID  � ** +�],�\+  w�[-�Z
�[ 
docu- �..  o r H s u N 2 0 E 8 i
�Z kfrmID  
�] 
FCct, �//  n 8 5 O 0 U V - t V j
�\ kfrmID  � 00 1�Y2�X1  w�W3�V
�W 
docu3 �44  o r H s u N 2 0 E 8 i
�V kfrmID  
�Y 
FCct2 �55  e x r E f l c S x s B
�X kfrmID  � 66 7�U8�T7  w�S9�R
�S 
docu9 �::  o r H s u N 2 0 E 8 i
�R kfrmID  
�U 
FCct8 �;;  b T V 5 S 0 S j Y Q N
�T kfrmID  � << =�Q>�P=  w�O?�N
�O 
docu? �@@  o r H s u N 2 0 E 8 i
�N kfrmID  
�Q 
FCct> �AA  k h B b q 5 0 p e L C
�P kfrmID  � BB C�MD�LC  w�KE�J
�K 
docuE �FF  o r H s u N 2 0 E 8 i
�J kfrmID  
�M 
FCctD �GG  k p N T v H A 6 E t 0
�L kfrmID  � HH I�IJ�HI  w�GK�F
�G 
docuK �LL  o r H s u N 2 0 E 8 i
�F kfrmID  
�I 
FCctJ �MM  m 8 D l q t T 0 h a R
�H kfrmID  � NN O�EP�DO  w�CQ�B
�C 
docuQ �RR  o r H s u N 2 0 E 8 i
�B kfrmID  
�E 
FCctP �SS  c V E 5 T 1 _ - d A e
�D kfrmID  � TT U�AV�@U  w�?W�>
�? 
docuW �XX  o r H s u N 2 0 E 8 i
�> kfrmID  
�A 
FCctV �YY  c _ d H A U Z V d b 2
�@ kfrmID  � ZZ [�=\�<[  w�;]�:
�; 
docu] �^^  o r H s u N 2 0 E 8 i
�: kfrmID  
�= 
FCct\ �__  l U n _ t u e U r u W
�< kfrmID  � `` a�9b�8a  w�7c�6
�7 
docuc �dd  o r H s u N 2 0 E 8 i
�6 kfrmID  
�9 
FCctb �ee  a 3 9 o n 5 J 5 V x M
�8 kfrmID  � ff g�5h�4g  w�3i�2
�3 
docui �jj  o r H s u N 2 0 E 8 i
�2 kfrmID  
�5 
FCcth �kk  n j 8 i G i g F H 7 j
�4 kfrmID  � ll m�1n�0m  w�/o�.
�/ 
docuo �pp  o r H s u N 2 0 E 8 i
�. kfrmID  
�1 
FCctn �qq  b B j v 5 2 W I A _ 2
�0 kfrmID    rr s�-t�,s  w�+u�*
�+ 
docuu �vv  o r H s u N 2 0 E 8 i
�* kfrmID  
�- 
FCctt �ww  m d q v m a n 8 N I z
�, kfrmID   xx y�)z�(y  w�'{�&
�' 
docu{ �||  o r H s u N 2 0 E 8 i
�& kfrmID  
�) 
FCctz �}}  c q i b M 2 _ f N U f
�( kfrmID   ~~ �%��$  w�#��"
�# 
docu� ���  o r H s u N 2 0 E 8 i
�" kfrmID  
�% 
FCct� ���  j 4 S n E 6 h C e L C
�$ kfrmID   �� ��!�� �  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�! 
FCct� ���  p 8 v q l H Q N u X 3
�  kfrmID   �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  c W R 2 r A z U h s P
� kfrmID   �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  j C 9 f y c z j y n 2
� kfrmID   �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  c K y 4 w 7 e h q i j
� kfrmID   �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  o G W z J M t z j c R
� kfrmID   �� �����  w���

� 
docu� ���  o r H s u N 2 0 E 8 i
�
 kfrmID  
� 
FCct� ���  d c H d G C a w V u 2
� kfrmID  	 �� ��	���  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
�	 
FCct� ���  d J O L _ i o m C U I
� kfrmID  
 �� �����  w���
� 
docu� ���  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct� ���  b 3 Z o N W G t B n X
� kfrmID   �� ���� �  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
� 
FCct� ���  g J 9 w h o F c e Z H
�  kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  e a N v h 7 X _ t G 8
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  n H r X V m u k E 5 w
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  l G J b w n a p A h l
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  j 0 7 - 0 I _ f 4 T D
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  g 8 4 e K f 9 X N 2 X
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  i Z r y c G l V x 2 E
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  m a x a B B U g Y 8 X
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  e 1 - E p J h n g H I
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  l s 3 f T X Y 1 i i l
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  o M 4 9 G Y S 6 4 J u
�� kfrmID   �� �������  w�����
�� 
docu� ���  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� ���  l j U l _ 2 K 4 5 h 7
�� kfrmID   �� �������  w�����
�� 
docu� �    o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct� �  a P x a - p Z b Y 3 T
�� kfrmID    ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct �  m 4 S l O Y 4 f K c M
�� kfrmID    	��
��	  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct
 �  m C s - 6 y g e M O a
�� kfrmID    ����  w����
�� 
docu �  o r H s u N 2 0 E 8 i
�� kfrmID  
�� 
FCct �  p O b l P M x d n O 1
�� kfrmID    ����  w��
� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
�� 
FCct �  m J O u 0 O y s y e V
�� kfrmID    ��  w��
� 
docu �  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct �  m L U d P T M 1 A N V
� kfrmID      !�"�!  w�#�
� 
docu# �$$  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct" �%%  d A u j r w z w f i L
� kfrmID   && '�(�'  w�)�
� 
docu) �**  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct( �++  h O Z 6 v X 0 _ W d s
� kfrmID   ,, -�.�-  w�/�
� 
docu/ �00  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct. �11  n p v Q k b z P 9 p -
� kfrmID    22 3�4�3  w�5�
� 
docu5 �66  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct4 �77  c Z l F g L X p K v h
� kfrmID  ! 88 9�:�9  w�;�
� 
docu; �<<  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct: �==  c e 2 I k t R p U u S
� kfrmID  " >> ?�@�?  w�A�
� 
docuA �BB  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct@ �CC  l 4 c f 0 F s z u f b
� kfrmID  # DD E�F�E  w�G�
� 
docuG �HH  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctF �II  d e e 7 8 B x 6 5 K E
� kfrmID  $ JJ K�L�K  w�M�
� 
docuM �NN  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctL �OO  k 7 W q C S L M d x J
� kfrmID  % PP Q�R�Q  w�S�
� 
docuS �TT  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctR �UU  a w V Y o E c k o I X
� kfrmID  & VV W�X�W  w�Y�
� 
docuY �ZZ  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctX �[[  l j 7 k h 0 Q R x q Z
� kfrmID  ' \\ ]�^�]  w�_�
� 
docu_ �``  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCct^ �aa  m p s e B 0 u 7 k k M
� kfrmID  ( bb c�d�c  w�e�
� 
docue �ff  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctd �gg  d F W X x p O b A o a
� kfrmID  ) hh i�j�i  w�k�
� 
docuk �ll  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctj �mm  k f C B o i o _ i - o
� kfrmID  * nn o�p�o  w�q�
� 
docuq �rr  o r H s u N 2 0 E 8 i
� kfrmID  
� 
FCctp �ss  h p l 9 E H c 9 R E 0
� kfrmID  + tt u�v�u  w�w�~
� 
docuw �xx  o r H s u N 2 0 E 8 i
�~ kfrmID  
� 
FCctv �yy  k C O 4 H y Q g S w 9
� kfrmID  , zz {�}|�|{  w�{}�z
�{ 
docu} �~~  o r H s u N 2 0 E 8 i
�z kfrmID  
�} 
FCct| �  o l 5 b F F i c 1 o O
�| kfrmID  - �� ��y��x�  w�w��v
�w 
docu� ���  o r H s u N 2 0 E 8 i
�v kfrmID  
�y 
FCct� ���  i z R 2 W 0 a e H H B
�x kfrmID   �u��u �  ����� �� ��t��s�  w�r��q
�r 
docu� ���  o r H s u N 2 0 E 8 i
�q kfrmID  
�t 
FCac� ���  p G Y d w H F i V L F
�s kfrmID  � �� ��p��o�  w�n��m
�n 
docu� ���  o r H s u N 2 0 E 8 i
�m kfrmID  
�p 
FCac� ���  d x _ d r x M 7 k 0 A
�o kfrmID  � �� ��l��k�  w�j��i
�j 
docu� ���  o r H s u N 2 0 E 8 i
�i kfrmID  
�l 
FCac� ���  o t m l a 4 K Y F Z i
�k kfrmID  � �� ��h��g�  w�f��e
�f 
docu� ���  o r H s u N 2 0 E 8 i
�e kfrmID  
�h 
FCac� ���  e q M X M s y D - w K
�g kfrmID   ���B S e t h ' s   e n d   o f   d a y   s t a t u s   i s   0   a c t i v e   p r o j e c t s ,   0   t a s k s   c o m p l e t e d   t o d a y ,   0   t a s k s   a d d e d   t o d a y ,   0   i n c o m p l e t e   t a s k s ,   4   w a i t i n g   f o r s ,   a n d   0   a c t i v e   n o n   e m p t y   p r o j e c t s .�K  �J  �I  �H   ascr  ��ޭ