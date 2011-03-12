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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l   N !���� ! O    N " # " k    M $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 0 getcontexts getContexts ;  <�� < o   ' (���� 0 thedocument theDocument��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� 0 ctxs   >  A B A l  2 2��������  ��  ��   B  C D C l   2 2�� E F��   E�	tell oflib to filterForActiveProjects(projectList)	set activeProjectList to result		tell oflib to getTasks(theDocument, projectList)	set taskList to result		set n to (count of taskList)		tell oflib to filterForNonRepeatingTasks(taskList)	set taskList to result		log (count of taskList)		tell oflib to getTasks(theDocument, activeProjectList)	set activeTaskList to result		log (count of activeTaskList)		tell oflib to filterForNonRepeatingTasks(activeTaskList)	set activeTaskList to result		log (count of activeTaskList)		tell oflib to filterForCompletedTasks(taskList)	set completedTaskList to result		tell oflib to filterForCompletedTasksOnDate(completedTaskList, date string of (current date))	set todaysCompletedTaskList to result		tell oflib to filterForIncompleteTasks(activeTaskList)	set activeIncompleteTaskList to result		log (count of activeIncompleteTaskList)		tell oflib to filterForTasksAddedOnDate(taskList, date string of (current date))	set addedTodayTaskList to result	    F � G G� 	 t e l l   o f l i b   t o   f i l t e r F o r A c t i v e P r o j e c t s ( p r o j e c t L i s t )  	 s e t   a c t i v e P r o j e c t L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   g e t T a s k s ( t h e D o c u m e n t ,   p r o j e c t L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 s e t   n   t o   ( c o u n t   o f   t a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r N o n R e p e a t i n g T a s k s ( t a s k L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   t a s k L i s t )  	  	 t e l l   o f l i b   t o   g e t T a s k s ( t h e D o c u m e n t ,   a c t i v e P r o j e c t L i s t )  	 s e t   a c t i v e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r N o n R e p e a t i n g T a s k s ( a c t i v e T a s k L i s t )  	 s e t   a c t i v e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s ( t a s k L i s t )  	 s e t   c o m p l e t e d T a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s O n D a t e ( c o m p l e t e d T a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   t o d a y s C o m p l e t e d T a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r I n c o m p l e t e T a s k s ( a c t i v e T a s k L i s t )  	 s e t   a c t i v e I n c o m p l e t e T a s k L i s t   t o   r e s u l t  	  	 l o g   ( c o u n t   o f   a c t i v e I n c o m p l e t e T a s k L i s t )  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s A d d e d O n D a t e ( t a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   a d d e d T o d a y T a s k L i s t   t o   r e s u l t  	 D  H I H O  2 > J K J I   6 =�� L���� 60 filterfortaskswithcontext filterForTasksWithContext L  M N M o   7 8���� 0 ctxs   N  O�� O m   8 9 P P � Q Q  W a i t i n g   F o r��  ��   K o   2 3���� 	0 oflib   I  R S R r   ? B T U T 1   ? @��
�� 
rslt U o      ���� (0 waitingfortasklist waitingForTaskList S  V W V l  C C��������  ��  ��   W  X Y X l   C C�� Z [��   Z m g	tell oflib to filterForProjectsOfSizeGreaterThan(activeProjectList, 0)	set nonEmptyProjects to result    [ � \ \ � 	 t e l l   o f l i b   t o   f i l t e r F o r P r o j e c t s O f S i z e G r e a t e r T h a n ( a c t i v e P r o j e c t L i s t ,   0 )  	 s e t   n o n E m p t y P r o j e c t s   t o   r e s u l t Y  ] ^ ] l  C C��������  ��  ��   ^  _ ` _ l   C C�� a b��   a � �set svalue to my generateStatus(activeProjectList, todaysCompletedTaskList, addedTodayTaskList, activeIncompleteTaskList, waitingForTaskList, nonEmptyProjects)    b � c c> s e t   s v a l u e   t o   m y   g e n e r a t e S t a t u s ( a c t i v e P r o j e c t L i s t ,   t o d a y s C o m p l e t e d T a s k L i s t ,   a d d e d T o d a y T a s k L i s t ,   a c t i v e I n c o m p l e t e T a s k L i s t ,   w a i t i n g F o r T a s k L i s t ,   n o n E m p t y P r o j e c t s ) `  d e d r   C K f g f n  C I h i h I   D I�� j���� 00 generatestatusfromlist generateStatusFromList j  k�� k o   D E���� (0 waitingfortasklist waitingForTaskList��  ��   i  f   C D g o      ���� 
0 svalue   e  l�� l l  L L��������  ��  ��  ��   # m    	 m m�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��      n o n l     ��������  ��  ��   o  p q p i   
  r s r I      �� t���� 00 generatestatusfromlist generateStatusFromList t  u�� u o      ���� 0 llist lList��  ��   s w      v w v k     x x  y z y r     { | { m     } } � ~ ~ 4 S i z e   o f   r e q u e s t e d   l i s t   i s   | o      ���� 0 thetext theText z   �  r     � � � b     � � � b     � � � o    ���� 0 thetext theText � n    
 � � � 1    
��
�� 
leng � o    ���� 0 llist lList � m     � � � � �    i t e m s . � o      ���� 0 thetext theText �  � � � l   ��������  ��  ��   �  � � � I   �� ���
�� .ascrcmnt****      � **** � o    ���� 0 thetext theText��   �  � � � l   ��������  ��  ��   �  ��� � L     � � o    ���� 0 thetext theText��   w�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   q  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 	pathtolib 	pathToLib��  ��   � k      � �  � � � r     	 � � � l     ����� � I    �� � �
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
strq � o    ���� 0 myfolderpath myFolderPath��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      ����~�� 0 getoflib getOFLib�  �~   � k      � �  � � � r      � � � I    �} ��|
�} .sysoloadscpt        file � 4     
�{ �
�{ 
file � l   	 ��z�y � b    	 � � � n    � � � I    �x�w�v�x 0 	pathtolib 	pathToLib�w  �v   �  f     � m     � � � � �  O F L i b . s c p t�z  �y  �|   � o      �u�u 0 thelib theLib �  ��t � L     � � o    �s�s 0 thelib theLib�t   �  � � � l     �r�q�p�r  �q  �p   �  � � � i     � � � I      �o ��n�o  0 generatestatus generateStatus �  � � � o      �m�m (0 lactiveprojectlist lActiveProjectList �  � � � o      �l�l 40 ltodayscompletedtasklist lTodaysCompletedTaskList �  � � � o      �k�k *0 laddedtodaytasklist lAddedTodayTaskList �  � � � o      �j�j 60 lactiveincompletetasklist lActiveIncompleteTaskList �  � � � o      �i�i *0 lwaitingfortasklist lWaitingForTaskList �  ��h � o      �g�g &0 lnonemptyprojects lNonEmptyProjects�h  �n   � w     J � � � k    J � �  � � � r     � � � m     � � � � � 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s   � o      �f�f 0 thetext theText �  � � � r     � � � b     � � � b     � � � o    �e�e 0 thetext theText � n    
 � � � 1    
�d
�d 
leng � o    �c�c (0 lactiveprojectlist lActiveProjectList � m     � � � � � $   a c t i v e   p r o j e c t s ,   � o      �b�b 0 thetext theText �  � � � r     � � � b     � � � b     � � � o    �a�a 0 thetext theText � n     � � � 1    �`
�` 
leng � o    �_�_ 40 ltodayscompletedtasklist lTodaysCompletedTaskList � m     � � �   0   t a s k s   c o m p l e t e d   t o d a y ,   � o      �^�^ 0 thetext theText �  r    # b    ! b     o    �]�] 0 thetext theText n    	
	 1    �\
�\ 
leng
 o    �[�[ *0 laddedtodaytasklist lAddedTodayTaskList m      � (   t a s k s   a d d e d   t o d a y ,   o      �Z�Z 0 thetext theText  r   $ - b   $ + b   $ ) o   $ %�Y�Y 0 thetext theText n   % ( 1   & (�X
�X 
leng o   % &�W�W 60 lactiveincompletetasklist lActiveIncompleteTaskList m   ) * � &   i n c o m p l e t e   t a s k s ,   o      �V�V 0 thetext theText  r   . 7 b   . 5 b   . 3  o   . /�U�U 0 thetext theText  n   / 2!"! 1   0 2�T
�T 
leng" o   / 0�S�S *0 lwaitingfortasklist lWaitingForTaskList m   3 4## �$$ &   w a i t i n g   f o r s ,   a n d   o      �R�R 0 thetext theText %&% r   8 A'(' b   8 ?)*) b   8 =+,+ o   8 9�Q�Q 0 thetext theText, n   9 <-.- 1   : <�P
�P 
leng. o   9 :�O�O &0 lnonemptyprojects lNonEmptyProjects* m   = >// �00 6   a c t i v e   n o n   e m p t y   p r o j e c t s .( o      �N�N 0 thetext theText& 121 l  B B�M�L�K�M  �L  �K  2 343 I  B G�J5�I
�J .ascrcmnt****      � ****5 o   B C�H�H 0 thetext theText�I  4 676 l  H H�G�F�E�G  �F  �E  7 8�D8 L   H J99 o   H I�C�C 0 thetext theText�D   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   � :;: l     �B�A�@�B  �A  �@  ; <=< i    >?> I      �?@�>�? 0 tweetstatus tweetStatus@ A�=A o      �<�< 0 v  �=  �>  ? k     BB CDC r     EFE I     �;�:�9�; 0 getoflib getOFLib�:  �9  F o      �8�8 	0 oflib  D G�7G O   HIH I    �6J�5�6 0 	sendtweet 	sendTweetJ K�4K o    �3�3 0 v  �4  �5  I o    	�2�2 	0 oflib  �7  = LML l     �1�0�/�1  �0  �/  M NON i    !PQP I      �.R�-�. $0 writedailystatus writeDailyStatusR STS o      �,�, (0 lactiveprojectlist lActiveProjectListT UVU o      �+�+ 40 ltodayscompletedtasklist lTodaysCompletedTaskListV WXW o      �*�* *0 laddedtodaytasklist lAddedTodayTaskListX YZY o      �)�) 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskListZ [\[ o      �(�( 60 lactiveincompletetasklist lActiveIncompleteTaskList\ ]�'] o      �&�& $0 lnotwaittasklist lNotWaitTaskList�'  �-  Q w     �^_^ k    �`` aba r    cdc m    ee �ff  d o      �%�% 0 thetext theTextb ghg r    iji b    klk b    mnm b    	opo o    �$�$ 0 thetext theTextp m    qq �rr " a c t i v e   p r o j e c t s :  n n   	 sts 1   
 �#
�# 
lengt o   	 
�"�" (0 lactiveprojectlist lActiveProjectListl o    �!�! 0 nl  j o      � �  0 thetext theTexth uvu r    %wxw b    #yzy b    {|{ b    }~} o    �� 0 thetext theText~ m     ��� 2 t o d a y ' s   c o m p l e t e d   t a s k s :  | n    ��� 1    �
� 
leng� o    �� 40 ltodayscompletedtasklist lTodaysCompletedTaskListz o    "�� 0 nl  x o      �� 0 thetext theTextv ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�� 0 thetext theText� m   ' (�� ��� & T a s k s   a d d e d   t o d a y :  � n   ) ,��� 1   * ,�
� 
leng� o   ) *�� *0 laddedtodaytasklist lAddedTodayTaskList� o   - 2�� 0 nl  � o      �� 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�� 0 thetext theText� m   7 8�� ��� , N o n - w a i t   a d d e d   t o d a y :  � n   9 <��� 1   : <�
� 
leng� o   9 :�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� o   = B�� 0 nl  � o      �� 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�� 0 thetext theText� m   G H�� ��� 2 A c t i v e   i n c o m p l e t e   t a s k s :  � n   I L��� 1   J L�
� 
leng� o   I J�� 60 lactiveincompletetasklist lActiveIncompleteTaskList� o   M R�� 0 nl  � o      �� 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�� 0 thetext theText� m   W X�� ��� L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  � n   Y \��� 1   Z \�

�
 
leng� o   Y Z�	�	 $0 lnotwaittasklist lNotWaitTaskList� o   ] b�� 0 nl  � o      �� 0 thetext theText� ��� l  f f����  �  �  � ��� l  f f����  �  �  � ��� I  f k� ���
�  .ascrcmnt****      � ****� o   f g���� 0 thetext theText��  � ��� l  l l��������  ��  ��  � ��� r   l y��� c   l w��� b   l u��� l  l s������ I  l s����
�� .earsffdralis        afdr� m   l m��
�� afdrdesk� �����
�� 
rtyp� m   n o��
�� 
TEXT��  ��  ��  � m   s t�� ���  o f   t o d a y . t x t� m   u v��
�� 
TEXT� o      ���� 0 thefilepath theFilePath� ��� r   z ���� I  z �����
�� .rdwropenshor       file� o   z {���� 0 thefilepath theFilePath� �����
�� 
perm� m   | }��
�� boovtrue��  � o      ���� 0 thefile theFile� ��� I  � �����
�� .rdwrwritnull���     ****� o   � ����� 0 thetext theText� ����
�� 
refn� o   � ����� 0 thefile theFile� �����
�� 
wrat� m   � ���
�� rdwreof ��  � ���� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 thefile theFile��  ��  _�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  O ��� l     ��������  ��  ��  � ��� i   " %��� I      ������� 0 
writestats 
writeStats� ��� o      ���� 0 lfolderlist lFolderList� ��� o      ���� 0 lprojectlist lProjectList� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 0 	ltasklist 	lTaskList� ��� o      ���� "0 lactivetasklist lActiveTaskList� ��� o      ���� (0 lcompletedtasklist lCompletedTaskList� ��� o      ���� *0 lincompletetasklist lIncompleteTaskList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� &0 lnonrepincomplete lNonRepIncomplete� ���� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList��  ��  � w     ���� k    ��� � � l    ����   b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t    � � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t   r     m     �		   o      ���� 0 thetext theText 

 l    ����   J D		set theText to theText & "folders: " & length of lFolderList & nl     � � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l    r     b     b     b    	 o    ���� 0 thetext theText m     �  p r o j e c t s :   n   	  1   
 ��
�� 
leng o   	 
���� 0 lprojectlist lProjectList o    ���� 0 nl   o      ���� 0 thetext theText  r    %  b    #!"! b    #$# b    %&% o    ���� 0 thetext theText& m    '' �(( " a c t i v e   p r o j e c t s :  $ n    )*) 1    ��
�� 
leng* o    ���� (0 lactiveprojectlist lActiveProjectList" o    "���� 0 nl    o      ���� 0 thetext theText +,+ r   & 5-.- b   & 3/0/ b   & -121 b   & )343 o   & '���� 0 thetext theText4 m   ' (55 �66  t a s k s :  2 n   ) ,787 1   * ,��
�� 
leng8 o   ) *���� 0 	ltasklist 	lTaskList0 o   - 2���� 0 nl  . o      ���� 0 thetext theText, 9:9 r   6 E;<; b   6 C=>= b   6 =?@? b   6 9ABA o   6 7���� 0 thetext theTextB m   7 8CC �DD 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  @ n   9 <EFE 1   : <��
�� 
lengF o   9 :���� "0 lactivetasklist lActiveTaskList> o   = B���� 0 nl  < o      ���� 0 thetext theText: GHG r   F UIJI b   F SKLK b   F MMNM b   F IOPO o   F G���� 0 thetext theTextP m   G HQQ �RR " c o m p l e t e d   t a s k s :  N n   I LSTS 1   J L��
�� 
lengT o   I J���� (0 lcompletedtasklist lCompletedTaskListL o   M R���� 0 nl  J o      ���� 0 thetext theTextH UVU r   V eWXW b   V cYZY b   V ][\[ b   V Y]^] o   V W���� 0 thetext theText^ m   W X__ �`` $ i n c o m p l e t e   t a s k s :  \ n   Y \aba 1   Z \��
�� 
lengb o   Y Z���� *0 lincompletetasklist lIncompleteTaskListZ o   ] b���� 0 nl  X o      ���� 0 thetext theTextV cdc r   f uefe b   f sghg b   f miji b   f iklk o   f g���� 0 thetext theTextl m   g hmm �nn 2 t o d a y ' s   c o m p l e t e d   t a s k s :  j n   i lopo 1   j l��
�� 
lengp o   i j���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListh o   m r���� 0 nl  f o      ���� 0 thetext theTextd qrq r   v �sts b   v �uvu b   v }wxw b   v yyzy o   v w���� 0 thetext theTextz m   w x{{ �|| 4 N o n   r e p e a t i n g   i n c o m p l e t e :  x n   y |}~} 1   z |��
�� 
leng~ o   y z���� &0 lnonrepincomplete lNonRepIncompletev o   } ����� 0 nl  t o      ���� 0 thetext theTextr � r   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 thetext theText� m   � ��� ��� & T a s k s   a d d e d   t o d a y :  � n   � ���� 1   � ���
�� 
leng� o   � ����� *0 laddedtodaytasklist lAddedTodayTaskList� o   � ����� 0 nl  � o      ���� 0 thetext theText� ��� l  � ���������  ��  ��  � ��� I  � ������
�� .ascrcmnt****      � ****� o   � ����� 0 thetext theText��  � ��� l  � ���������  ��  ��  � ��� r   � ���� c   � ���� b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrdesk� �����
�� 
rtyp� m   � ���
�� 
TEXT��  ��  ��  � m   � ��� ���  o f . t x t� m   � ���
�� 
TEXT� o      ���� 0 thefilepath theFilePath� ��� r   � ���� I  � �����
�� .rdwropenshor       file� o   � ����� 0 thefilepath theFilePath� �����
�� 
perm� m   � ���
�� boovtrue��  � o      ���� 0 thefile theFile� ��� I  � �����
�� .rdwrwritnull���     ****� o   � ����� 0 thetext theText� ����
�� 
refn� o   � ����� 0 thefile theFile� �����
�� 
wrat� m   � ���
�� rdwreof ��  � ���� I  � �����
�� .rdwrclosnull���     ****� o   � ��~�~ 0 thefile theFile�  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �}�|�{�}  �|  �{  � ��� i   & )��� I      �z��y�z 0 
writedebug 
writeDebug� ��x� o      �w�w 0 ltask lTask�x  �y  � Z     ����v�u� o     �t�t 	0 debug  � w    ��� k   
 �� ��� r   
 ��� b   
 ��� b   
 ��� m   
 �� ���  T a s k   n a m e   i s  � n   ��� 1    �s
�s 
pnam� o    �r�r 0 ltask lTask� o    �q�q 0 nl  � o      �p�p 0 thetext theText� ��� r    %��� b    #��� b    ��� m    �� ���  T a s k   i d   i s  � n   ��� 1    �o
�o 
ID  � o    �n�n 0 ltask lTask� o    "�m�m 0 nl  � o      �l�l 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�k�k 0 thetext theText� m   ' (�� ��� & C o m p l e t i o n   d a t e   i s  � n  ) ,��� 1   * ,�j
�j 
FCdc� o   ) *�i�i 0 ltask lTask� o   - 2�h�h 0 nl  � o      �g�g 0 thetext theText� ��� r   6 ;��� n  6 9��� 1   7 9�f
�f 
FCdc� o   6 7�e�e 0 ltask lTask� o      �d�d 0 thedate theDate� ��� r   < A��� n   < ?��� 1   = ?�c
�c 
dstr� o   < =�b�b 0 thedate theDate� o      �a�a 0 thedateonly theDateOnly� ��� r   B O��� b   B M��� b   B G��� b   B E��� o   B C�`�` 0 thetext theText� m   C D�� ��� 4 C o m p l e t i o n   d a t e   i s   r e a l l y  � o   E F�_�_ 0 thedateonly theDateOnly� o   G L�^�^ 0 nl  � o      �]�] 0 thetext theText� ��� r   P ]� � c   P [ b   P Y l  P W�\�[ I  P W�Z
�Z .earsffdralis        afdr m   P Q�Y
�Y afdrdesk �X�W
�X 
rtyp m   R S�V
�V 
TEXT�W  �\  �[   m   W X		 �

  o f D e b u g . t x t m   Y Z�U
�U 
TEXT  o      �T�T 0 thefilepath theFilePath�  r   ^ g I  ^ e�S
�S .rdwropenshor       file o   ^ _�R�R 0 thefilepath theFilePath �Q�P
�Q 
perm m   ` a�O
�O boovtrue�P   o      �N�N 0 thefile theFile  I  h y�M
�M .rdwrwritnull���     **** o   h i�L�L 0 thetext theText �K
�K 
refn o   l m�J�J 0 thefile theFile �I�H
�I 
wrat m   p s�G
�G rdwreof �H   �F I  z �E�D
�E .rdwrclosnull���     **** o   z {�C�C 0 thefile theFile�D  �F  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �v  �u  � �B l     �A�@�?�A  �@  �?  �B       �>�= !"#$%&'()*+,�<�;�:�9�8�>   �7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�7 0 nl  �6 	0 debug  �5 00 generatestatusfromlist generateStatusFromList�4 0 	pathtolib 	pathToLib�3 0 getoflib getOFLib�2  0 generatestatus generateStatus�1 0 tweetstatus tweetStatus�0 $0 writedailystatus writeDailyStatus�/ 0 
writestats 
writeStats�. 0 
writedebug 
writeDebug
�- .aevtoappnull  �   � ****�, 	0 oflib  �+ 0 thedocument theDocument�* 0 projectlist projectList�) 0 ctxs  �( (0 waitingfortasklist waitingForTaskList�' 
0 svalue  �&  �%  �$  �#  �"   �--  

�= boovfals �! s� �./��! 00 generatestatusfromlist generateStatusFromList�  �0� 0  �� 0 llist lList�  . ��� 0 llist lList� 0 thetext theText/  w }� ��
� 
leng
� .ascrcmnt****      � ****� �Z�E�O���,%�%E�O�j O� � ���12�� 0 	pathtolib 	pathToLib�  �  1 ��� 0 apppath appPath� 0 myfolderpath myFolderPath2 ��� ���
� 
from
� fldmfldu
� .earsffdralis        afdr
� 
ctxt
� 
strq� )��l E�O��%�&O��,E  � ���
34�	� 0 getoflib getOFLib�  �
  3 �� 0 thelib theLib4 �� ��
� 
file� 0 	pathtolib 	pathToLib
� .sysoloadscpt        file�	 *�)j+ �%/j E�O�! � ���56��  0 generatestatus generateStatus� � 7�  7  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects�  5 ���������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� *0 lwaitingfortasklist lWaitingForTaskList�� &0 lnonemptyprojects lNonEmptyProjects�� 0 thetext theText6 
 � ��� � �#/��
�� 
leng
�� .ascrcmnt****      � ****� K�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j 	O�" ��?����89���� 0 tweetstatus tweetStatus�� ��:�� :  ���� 0 v  ��  8 ������ 0 v  �� 	0 oflib  9 ������ 0 getoflib getOFLib�� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U# ��Q����;<���� $0 writedailystatus writeDailyStatus�� ��=�� =  �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList��  ; 	�������������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lnotwaittasklist lNotWaitTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile< _eq���������������������������������
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
�� .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j $ �������>?���� 0 
writestats 
writeStats�� ��@�� 
@ 
 ���������������������� 0 lfolderlist lFolderList�� 0 lprojectlist lProjectList�� (0 lactiveprojectlist lActiveProjectList�� 0 	ltasklist 	lTaskList�� "0 lactivetasklist lActiveTaskList�� (0 lcompletedtasklist lCompletedTaskList�� *0 lincompletetasklist lIncompleteTaskList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� &0 lnonrepincomplete lNonRepIncomplete�� *0 laddedtodaytasklist lAddedTodayTaskList��  > ���������������������������� 0 lfolderlist lFolderList�� 0 lprojectlist lProjectList�� (0 lactiveprojectlist lActiveProjectList�� 0 	ltasklist 	lTaskList�� "0 lactivetasklist lActiveTaskList�� (0 lcompletedtasklist lCompletedTaskList�� *0 lincompletetasklist lIncompleteTaskList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� &0 lnonrepincomplete lNonRepIncomplete�� *0 laddedtodaytasklist lAddedTodayTaskList�� 0 thetext theText�� 0 thefilepath theFilePath�� 0 thefile theFile? ���'5CQ_m{����������������������������
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
�� .rdwrclosnull���     ****�� ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j % �������AB���� 0 
writedebug 
writeDebug�� ��C�� C  ���� 0 ltask lTask��  A �������������� 0 ltask lTask�� 0 thetext theText�� 0 thedate theDate�� 0 thedateonly theDateOnly�� 0 thefilepath theFilePath�� 0 thefile theFileB ���������������������	���������������
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
� .rdwrclosnull���     ****�� �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h& �~D�}�|EF�{
�~ .aevtoappnull  �   � ****D k     NGG  HH  �z�z  �}  �|  E  F �y�x m�w�v�u�t�s�r�q P�p�o�n�m�y 0 getoflib getOFLib�x 	0 oflib  
�w 
FCDo�v 0 thedocument theDocument�u 0 getprojects getProjects
�t 
rslt�s 0 projectlist projectList�r 0 getcontexts getContexts�q 0 ctxs  �p 60 filterfortaskswithcontext filterForTasksWithContext�o (0 waitingfortasklist waitingForTaskList�n 00 generatestatusfromlist generateStatusFromList�m 
0 svalue  �{ O)j+  E�O� C*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ UO�E�O)�k+ E�OPU' �lI J�l  I k      KK LML l      �kNO�k  N��
	Script library for the manipulation of OmniFocus.

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, 2011, Seth Landsman, Ph.D. - seth@homeforderangedscientists.net
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 1.0, released FEB2011
   O �PP� 
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
M QRQ l     �j�i�h�j  �i  �h  R STS l      �gUV�g  U l f SECTION 1: Get a list of all first class objects.
 - Folders
 - Projects
 - Tasks
 - TasksInAProject
   V �WW �   S E C T I O N   1 :   G e t   a   l i s t   o f   a l l   f i r s t   c l a s s   o b j e c t s . 
   -   F o l d e r s 
   -   P r o j e c t s 
   -   T a s k s 
   -   T a s k s I n A P r o j e c t 
T XYX l     �f�e�d�f  �e  �d  Y Z[Z l      �c\]�c  \ 7 1 1a: folders and utility associated with folders    ] �^^ b   1 a :   f o l d e r s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   f o l d e r s  [ _`_ l      �bab�b  a F @ Get all folders of a document. Return a list of folder objects    b �cc �   G e t   a l l   f o l d e r s   o f   a   d o c u m e n t .   R e t u r n   a   l i s t   o f   f o l d e r   o b j e c t s  ` ded i     fgf I      �ah�`�a 0 
getfolders 
getFoldersh i�_i o      �^�^ 0 	ldocument 	lDocument�_  �`  g w     ,jkj k    ,ll mnm r    opo n    qrq 2   �]
�] 
FCArr o    �\�\ 0 	ldocument 	lDocumentp o      �[�[ 0 
folderlist 
folderListn sts X    )u�Zvu r    $wxw b    "yzy o    �Y�Y 0 
folderlist 
folderListz I    !�X{�W�X *0 getfoldersoffolders getFoldersOfFolders{ |�V| n    }~} 2   �U
�U 
FCAr~ o    �T�T 0 
thisfolder 
thisFolder�V  �W  x o      �S�S 0 
folderlist 
folderList�Z 0 
thisfolder 
thisFolderv o    �R�R 0 
folderlist 
folderListt � l  * *�Q�P�O�Q  �P  �O  � ��N� L   * ,�� o   * +�M�M 0 
folderlist 
folderList�N  k�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  e ��� l     �L�K�J�L  �K  �J  � ��� i    ��� I      �I��H�I *0 getfoldersoffolders getFoldersOfFolders� ��G� o      �F�F 0 lfolders lFolders�G  �H  � w     &��� k    &�� ��� X    #��E�� r    ��� b    ��� o    �D�D 0 lfolders lFolders� I    �C��B�C *0 getfoldersoffolders getFoldersOfFolders� ��A� n    ��� 2   �@
�@ 
FCAr� o    �?�? 0 
thisfolder 
thisFolder�A  �B  � o      �>�> 0 lfolders lFolders�E 0 
thisfolder 
thisFolder� o    �=�= 0 lfolders lFolders� ��� l  $ $�<�;�:�<  �;  �:  � ��9� L   $ &�� o   $ %�8�8 0 lfolders lFolders�9  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  � 9 3 1b: projects and utility associated with projects    � ��� f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s  � ��� i    ��� I      �3��2�3 0 getprojects getProjects� ��1� o      �0�0 0 	ldocument 	lDocument�1  �2  � w     ��� L    �� n    ��� 2   �/
�/ 
FCfx� o    �.�. 0 	ldocument 	lDocument��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �-�,�+�-  �,  �+  � ��� i    ��� I      �*��)�* .0 getprojectsfromfolder getProjectsFromFolder� ��(� o      �'�' 0 lfolder lFolder�(  �)  � w     ��� L    �� n    ��� 2   �&
�& 
FCpr� o    �%�% 0 lfolder lFolder��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �$�#�"�$  �#  �"  � ��� l      �!���!  � 9 3 1c: contexts and utility associated with contexts    � ��� f   1 c :   c o n t e x t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   c o n t e x t s  � ��� i    ��� I      � ���  0 getcontexts getContexts� ��� o      �� 0 	ldocument 	lDocument�  �  � w     ��� L    �� n    ��� 2   �
� 
FCfc� o    �� 0 	ldocument 	lDocument��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� l      ����  � 3 - 1d: tasks and utility associated with tasks    � ��� Z   1 d :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s  � ��� l     ����  �  �  � ��� l      ����  � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document    � ����   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t  � ��� i    ��� I      ���� 0 gettasks getTasks� ��� o      �� 0 	ldocument 	lDocument� ��� o      �� 0 lprojectlist lProjectList�  �  � w     *��� k    *�� ��� r    ��� n    ��� 2   �
� 
FCac� o    �� 0 	ldocument 	lDocument� o      �� 0 tasklist taskList� ��� X    '��
�� r    "��� b     ��� o    �	�	 0 tasklist taskList� I    ���� *0 gettasksfromproject getTasksFromProject� ��� o    �� 0 thisproject thisProject�  �  � o      �� 0 tasklist taskList�
 0 thisproject thisProject� o    �� 0 lprojectlist lProjectList� ��� L   ( *�� o   ( )�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     � �����   ��  ��  � ��� i    ��� I      �� ���� ,0 gettasksfromdocument getTasksFromDocument  �� o      ���� 0 	ldocument 	lDocument��  ��  � w     	 k    	  L     n    	 m    ��
�� 
FCft	 o    ���� 0 	ldocument 	lDocument 
��
 l    ����   � �		set lProjectList to getProjects(lDocument)		set taskList to tasks of lDocument		repeat with thisProject in lProjectList			set taskList to taskList & getTasks(thisProject)		end repeat		return taskList    ��  	 	 s e t   l P r o j e c t L i s t   t o   g e t P r o j e c t s ( l D o c u m e n t )  	 	 s e t   t a s k L i s t   t o   t a s k s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s P r o j e c t   i n   l P r o j e c t L i s t  	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   g e t T a s k s ( t h i s P r o j e c t )  	 	 e n d   r e p e a t  	 	 r e t u r n   t a s k L i s t��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    i     I      ������ *0 gettasksfromproject getTasksFromProject �� o      ���� 0 lproject lProject��  ��   w      L     n     2   ��
�� 
FCac o    ���� 0 lproject lProject�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��    l     ��������  ��  ��    l      �� ��   � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
     �!!.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 "#" l     ��������  ��  ��  # $%$ i     #&'& I      ��(���� 20 filterforactiveprojects filterForActiveProjects( )��) o      ���� 0 lprojectlist lProjectList��  ��  ' w     2*+* k    2,, -.- r    /0/ J    ����  0 o      ���� 0 projectlist projectList. 121 X    /3��43 Z    *56����5 =   787 n   9:9 1    ��
�� 
FCPs: o    ���� 0 thisproject thisProject8 m    ��
�� FCPsFCPa6 r    &;<; b    $=>= o     ���� 0 projectlist projectList> J     #?? @��@ o     !���� 0 thisproject thisProject��  < o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProject4 o   
 ���� 0 lprojectlist lProjectList2 A��A L   0 2BB o   0 1���� 0 projectlist projectList��  +�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  % CDC l     ��������  ��  ��  D EFE i   $ 'GHG I      ��I���� B0 filterprojectsforsingletonlists filterProjectsForSingletonListsI J��J o      ���� 0 lprojectlist lProjectList��  ��  H w     2KLK k    2MM NON r    PQP J    ����  Q o      ���� 0 projectlist projectListO RSR X    /T��UT Z    *VW����V =   XYX n   Z[Z 1    ��
�� 
FC.A[ o    ���� 0 thisproject thisProjectY m    ��
�� boovtrueW r    &\]\ b    $^_^ o     ���� 0 projectlist projectList_ J     #`` a��a o     !���� 0 thisproject thisProject��  ] o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProjectU o   
 ���� 0 lprojectlist lProjectListS b��b L   0 2cc o   0 1���� 0 projectlist projectList��  L�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  F ded l     ��������  ��  ��  e fgf i   ( +hih I      ��j���� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonListsj k��k o      ���� 0 lprojectlist lProjectList��  ��  i w     2lml k    2nn opo r    qrq J    ����  r o      ���� 0 projectlist projectListp sts X    /u��vu Z    *wx����w =   yzy n   {|{ 1    ��
�� 
FC.A| o    ���� 0 thisproject thisProjectz m    ��
�� boovfalsx r    &}~} b    $� o     ���� 0 projectlist projectList� J     #�� ���� o     !���� 0 thisproject thisProject��  ~ o      ���� 0 projectlist projectList��  ��  �� 0 thisproject thisProjectv o   
 ���� 0 lprojectlist lProjectListt ���� L   0 2�� o   0 1���� 0 projectlist projectList��  m�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  g ��� l     ��������  ��  ��  � ��� l      ������  � � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   � ���   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
� ��� i   , /��� I      ������� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 ldate lDate��  ��  � w     ���� k    ��� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� r    ��� n    
��� 1    
��
�� 
dstr� o    ���� 0 ldate lDate� o      ���� 	0 cdate  � ��� X    ������ k    ��� ��� r    %��� I    #������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r   & )��� m   & '��
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
0 tmdate  � o      ���� 0 tmds  � ��� Z   R _������� =  R U��� o   R S���� 0 tcds  � o   S T���� 	0 cdate  � r   X [��� m   X Y�
� boovtrue� o      �~�~ 0 flag  ��  ��  � ��}� Z   ` m���|�{� =  ` c��� o   ` a�z�z 0 tmds  � o   a b�y�y 	0 cdate  � r   f i��� m   f g�x
�x boovtrue� o      �w�w 0 flag  �|  �{  �}  �� 0 thistask thisTask� o   - .�v�v 0 tasklist taskList� ��u� Z   s ����t�s� o   s t�r�r 0 flag  � r   w ~��� b   w |��� o   w x�q�q 0 projectlist projectList� J   x {�� ��p� o   x y�o�o 0 thisproject thisProject�p  � o      �n�n 0 projectlist projectList�t  �s  �u  �� 0 thisproject thisProject� o    �m�m 0 lprojectlist lProjectList� ��l� L   � ��� o   � ��k�k 0 projectlist projectList�l  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � Z T
Return those projects greater than the size specified.
Only counts available tasks
   � ��� � 
 R e t u r n   t h o s e   p r o j e c t s   g r e a t e r   t h a n   t h e   s i z e   s p e c i f i e d . 
 O n l y   c o u n t s   a v a i l a b l e   t a s k s 
� ��� i   0 3��� I      �f��e�f H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan� ��� o      �d�d 0 lprojectlist lProjectList� ��c� o      �b�b 0 lsize lSize�c  �e  � w     6��� k    6�� ��� r    ��� J    �a�a  � o      �`�` 0 projectlist projectList� ��� X    3��_ � k    .  r     n    1    �^
�^ 
FC#a o    �]�] 0 thisproject thisProject o      �\�\ 0 ps   �[ Z    .	
�Z�Y	 ?     o    �X�X 0 ps   o    �W�W 0 lsize lSize
 r   # * b   # ( o   # $�V�V 0 projectlist projectList J   $ ' �U o   $ %�T�T 0 thisproject thisProject�U   o      �S�S 0 projectlist projectList�Z  �Y  �[  �_ 0 thisproject thisProject  o   
 �R�R 0 lprojectlist lProjectList� �Q L   4 6 o   4 5�P�P 0 projectlist projectList�Q  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     �O�N�M�O  �N  �M    l      �L�L   � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
    �Z   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
  i   4 7 I      �K �J�K Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate  !"! o      �I�I 0 lprojectlist lProjectList" #�H# o      �G�G 0 ldate lDate�H  �J   w     x$%$ k    x&& '(' r    )*) J    �F�F  * o      �E�E 0 projectlist projectList( +,+ X    u-�D.- k    p// 010 r    232 I    �C4�B�C *0 gettasksfromproject getTasksFromProject4 5�A5 o    �@�@ 0 thisproject thisProject�A  �B  3 o      �?�? 0 tasklist taskList1 676 r     #898 m     !�>
�> boovfals9 o      �=�= 0 flag  7 :;: X   $ `<�<=< k   4 [>> ?@? r   4 9ABA n  4 7CDC 1   5 7�;
�; 
FCDaD o   4 5�:�: 0 thistask thisTaskB o      �9�9 
0 tcdate  @ EFE r   : ?GHG n  : =IJI 1   ; =�8
�8 
FCDmJ o   : ;�7�7 0 thistask thisTaskH o      �6�6 
0 tmdate  F KLK l  @ @�5�4�3�5  �4  �3  L MNM Z   @ MOP�2�1O A   @ CQRQ o   @ A�0�0 
0 tcdate  R o   A B�/�/ 0 ldate lDateP r   F ISTS m   F G�.
�. boovtrueT o      �-�- 0 flag  �2  �1  N UVU l  N N�,�+�*�,  �+  �*  V W�)W Z   N [XY�(�'X A   N QZ[Z o   N O�&�& 
0 tmdate  [ o   O P�%�% 0 ldate lDateY r   T W\]\ m   T U�$
�$ boovtrue] o      �#�# 0 flag  �(  �'  �)  �< 0 thistask thisTask= o   ' (�"�" 0 tasklist taskList; ^�!^ Z   a p_`� �_ o   a b�� 0 flag  ` r   e laba b   e jcdc o   e f�� 0 projectlist projectListd J   f iee f�f o   f g�� 0 thisproject thisProject�  b o      �� 0 projectlist projectList�   �  �!  �D 0 thisproject thisProject. o   
 �� 0 lprojectlist lProjectList, g�g L   v xhh o   v w�� 0 projectlist projectList�  %�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   iji l     ����  �  �  j klk l      �mn�  m � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   n �oo �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
l pqp i   8 ;rsr I      �t�� 20 filterforcompletedtasks filterForCompletedTaskst u�u o      �� 0 	ltasklist 	lTaskList�  �  s w     2vwv k    2xx yzy r    {|{ J    ��  | o      �� 0 tasklist taskListz }~} X    /�� Z    *����
� =   ��� n    ��� 1    �	
�	 
FCcd� o    �� 0 thistask thisTask� m    �
� boovtrue� r    &��� b    $��� o     �� 0 tasklist taskList� J     #�� ��� o     !�� 0 thistask thisTask�  � o      �� 0 tasklist taskList�  �
  � 0 thistask thisTask� o   
 �� 0 	ltasklist 	lTaskList~ ��� L   0 2�� o   0 1� �  0 tasklist taskList�  w�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  q ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     <��� k    <�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    9����� k    4�� ��� r    ��� n   ��� 1    ��
�� 
FCdc� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     ��
�� 
dstr� o    ���� 0 
thistaskcd 
thisTaskCD� o      ���� (0 thistaskdatestring thisTaskDateString� ���� Z   # 4������� =  # &��� o   # $���� (0 thistaskdatestring thisTaskDateString� o   $ %���� 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *���� 0 tasklist taskList� J   * -�� ���� o   * +���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   : <�� o   : ;���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   @ C��� I      ������� 40 filterforincompletetasks filterForIncompleteTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� >   ��� n    ��� 1    ��
�� 
FCcd� o    ���� 0 thistask thisTask� m    ��
�� boovtrue� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   D G��� I      ������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n   ��� 1    ��
�� 
FCRp� o    ���� 0 thistask thisTask� m    ��
�� 
msng� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �    l     ��������  ��  ��    i   H K I      ������ 60 filterfortasksaddedondate filterForTasksAddedOnDate  o      ���� 0 	ltasklist 	lTaskList 	��	 o      ���� 0 ldate lDate��  ��   w     <

 k    <  r     J    ����   o      ���� 0 tasklist taskList  X    9�� k    4  r     n    1    ��
�� 
FCDa o    ���� 0 thistask thisTask o      ���� 0 
thistaskcd 
thisTaskCD  r    " n      !  1     ��
�� 
dstr! o    ���� 0 
thistaskcd 
thisTaskCD o      ���� (0 thistaskdatestring thisTaskDateString "��" Z   # 4#$����# =  # &%&% o   # $���� (0 thistaskdatestring thisTaskDateString& o   $ %���� 0 ldate lDate$ r   ) 0'(' b   ) .)*) o   ) *���� 0 tasklist taskList* J   * -++ ,��, o   * +���� 0 thistask thisTask��  ( o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask o   
 ���� 0 	ltasklist 	lTaskList -��- L   : <.. o   : ;���� 0 tasklist taskList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   /0/ l     ��������  ��  ��  0 121 i   L O343 I      ��5���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext5 6��6 o      ���� 0 	ltasklist 	lTaskList��  ��  4 w     �787 k    �99 :;: r    <=< J    ����  = o      ���� 0 tasklist taskList; >?> X    �@��A@ k    �BB CDC r    EFE n    GHG 1    ��
�� 
pnamH o    ���� 0 thistask thisTaskF o      ���� 0 foo  D IJI r    "KLK n     MNM m     ��
�� 
FCctN o    ���� 0 thistask thisTaskL o      ���� 0 con  J OPO r   # (QRQ n   # &STS 1   $ &��
�� 
pnamT o   # $���� 0 con  R o      ���� 0 foo  P U��U Z   ) �VW��XV >  ) ,YZY o   ) *���� 0 con  Z m   * +��
�� 
msngW k   / [[ \]\ T   / f^^ Z   4 a_`��a_ >  4 9bcb n  4 7ded 1   5 7��
�� 
ctnre o   4 5���� 0 con  c m   7 8�
� 
msng` k   < ]ff ghg r   < Aiji n  < ?klk 1   = ?�~
�~ 
ctnrl o   < =�}�} 0 con  j o      �|�| 0 ccon  h mnm r   B Gopo n   B Eqrq 1   C E�{
�{ 
pnamr o   B C�z�z 0 ccon  p o      �y�y 
0 ccname  n s�xs Z   H ]tu�wvt >  H Kwxw o   H I�v�v 
0 ccname  x m   I Jyy �zz  O m n i F o c u su k   N Y{{ |}| r   N S~~ n  N Q��� 1   O Q�u
�u 
ctnr� o   N O�t�t 0 con   o      �s�s 0 con  } ��r� r   T Y��� n   T W��� 1   U W�q
�q 
pnam� o   T U�p�p 0 con  � o      �o�o 0 foo  �r  �w  v  S   \ ]�x  ��  a  S   ` a] ��� r   g l��� n   g j��� 1   h j�n
�n 
pnam� o   g h�m�m 0 con  � o      �l�l 0 conname  � ��k� Z   m ���j�i� H   m q�� E   m p��� o   m n�h�h 0 conname  � m   n o�� ���  W a i t i n g� r   t {��� b   t y��� o   t u�g�g 0 tasklist taskList� J   u x�� ��f� o   u v�e�e 0 thistask thisTask�f  � o      �d�d 0 tasklist taskList�j  �i  �k  ��  X r   � ���� b   � ���� o   � ��c�c 0 tasklist taskList� J   � ��� ��b� o   � ��a�a 0 thistask thisTask�b  � o      �`�` 0 tasklist taskList��  �� 0 thistask thisTaskA o   
 �_�_ 0 	ltasklist 	lTaskList? ��^� L   � ��� o   � ��]�] 0 tasklist taskList�^  8�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  2 ��� l     �\�[�Z�\  �[  �Z  � ��� i   P S��� I      �Y��X�Y 20 filterfortasksdueondate filterForTasksDueOnDate� ��� o      �W�W 0 	ltasklist 	lTaskList� ��V� o      �U�U 0 ldate lDate�V  �X  � w     F��� k    F�� ��� r    ��� J    �T�T  � o      �S�S 0 tasklist taskList� ��� X    C��R�� k    >�� ��� r    ��� n   ��� 1    �Q
�Q 
FCDd� o    �P�P 0 thistask thisTask� o      �O�O 0 
thistaskdd 
thisTaskDD� ��N� Z    >���M�L� >    ��� o    �K�K 0 
thistaskdd 
thisTaskDD� m    �J
�J 
msng� k   # :�� ��� r   # (��� n   # &��� 1   $ &�I
�I 
dstr� o   # $�H�H 0 
thistaskdd 
thisTaskDD� o      �G�G (0 thistaskdatestring thisTaskDateString� ��F� Z   ) :���E�D� =  ) ,��� o   ) *�C�C (0 thistaskdatestring thisTaskDateString� o   * +�B�B 0 ldate lDate� r   / 6��� b   / 4��� o   / 0�A�A 0 tasklist taskList� J   0 3�� ��@� o   0 1�?�? 0 thistask thisTask�@  � o      �>�> 0 tasklist taskList�E  �D  �F  �M  �L  �N  �R 0 thistask thisTask� o   
 �=�= 0 	ltasklist 	lTaskList� ��<� L   D F�� o   D E�;�; 0 tasklist taskList�<  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �:�9�8�:  �9  �8  � ��� i   T W��� I      �7��6�7 :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      �5�5 0 	ltasklist 	lTaskList� ��4� o      �3�3 0 ldate lDate�4  �6  � w     J��� k    J�� ��� r    ��� J    �2�2  � o      �1�1 0 tasklist taskList� ��� X    G��0�� k    B�� ��� r    ��� n   ��� 1    �/
�/ 
FCDd� o    �.�. 0 thistask thisTask� o      �-�- 0 
thistaskdd 
thisTaskDD� ��,� Z    B���+�*� >    ��� o    �)�) 0 
thistaskdd 
thisTaskDD� m    �(
�( 
msng� Z   # >���'�&� A   # &��� o   # $�%�% 0 
thistaskdd 
thisTaskDD� o   $ %�$�$ 0 ldate lDate� k   ) :�� ��� I  ) 2�# �"
�# .ascrcmnt****      � ****  b   ) . m   ) * � , F o u n d   a n   o v e r d u e   t a s k   n  * - 1   + -�!
�! 
pnam o   * +� �  0 thistask thisTask�"  � � r   3 :	 b   3 8

 o   3 4�� 0 tasklist taskList J   4 7 � o   4 5�� 0 thistask thisTask�  	 o      �� 0 tasklist taskList�  �'  �&  �+  �*  �,  �0 0 thistask thisTask� o   
 �� 0 	ltasklist 	lTaskList� � L   H J o   H I�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �    i   X [ I      ��� .0 filterfortaskswithtag filterForTasksWithTag  o      �� 0 	ltasklist 	lTaskList � o      �� 0 tag  �  �   w     6 k    6  r      J    ��    o      �� 0 tasklist taskList !"! X    3#�$# k    .%% &'& r    ()( n    *+* 1    �
� 
FCno+ o    �� 0 thistask thisTask) o      �
�
 0 itemnote itemNote' ,�	, Z    .-.��- l    /��/ E     010 o    �� 0 itemnote itemNote1 o    �� 0 tag  �  �  . r   # *232 b   # (454 o   # $�� 0 tasklist taskList5 J   $ '66 7�7 o   $ %� �  0 thistask thisTask�  3 o      ���� 0 tasklist taskList�  �  �	  � 0 thistask thisTask$ o   
 ���� 0 	ltasklist 	lTaskList" 8��8 L   4 699 o   4 5���� 0 tasklist taskList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   :;: l     ��������  ��  ��  ; <=< i   \ _>?> I      ��@���� $0 filterforflagged filterForFlagged@ A��A o      ���� 0 	ltasklist 	lTaskList��  ��  ? w     2BCB k    2DD EFE r    GHG J    ����  H o      ���� 0 tasklist taskListF IJI X    /K��LK Z    *MN����M =   OPO n    QRQ 1    ��
�� 
FCflR o    ���� 0 thistask thisTaskP m    ��
�� boovtrueN r    &STS b    $UVU o     ���� 0 tasklist taskListV J     #WW X��X o     !���� 0 thistask thisTask��  T o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTaskL o   
 ���� 0 	ltasklist 	lTaskListJ Y��Y L   0 2ZZ o   0 1���� 0 tasklist taskList��  C�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  = [\[ l     ��������  ��  ��  \ ]^] l      ��_`��  _ � �
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx, based
on the list of all contexts
   ` �aa 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x ,   b a s e d 
 o n   t h e   l i s t   o f   a l l   c o n t e x t s 
^ bcb i   ` cded I      ��f���� 60 filterfortaskswithcontext filterForTasksWithContextf ghg o      ���� 0 lcontextlist lContextListh i��i o      ���� 0 ctx  ��  ��  e w     Vjkj k    Vll mnm r    opo J    ����  p o      ���� 0 tasklist taskListn qrq X    Ss��ts k    Nuu vwv r    xyx b    z{z m    || �}}  t e s t i n g  { n    ~~ 1    ��
�� 
pnam o    ���� 0 thisctx thisCtxy o      ���� 0 t  w ��� r    "��� o     ���� 0 t  � o      ���� 0 p  � ��� I  # (�����
�� .ascrcmnt****      � ****� o   # $���� 0 t  ��  � ���� Z   ) N������� E   ) .��� n   ) ,��� 1   * ,��
�� 
pnam� o   ) *���� 0 thisctx thisCtx� o   , -���� 0 ctx  � k   1 J�� ��� r   1 8��� b   1 6��� m   1 2�� ���  f o u n d  � n   2 5��� 1   3 5��
�� 
pnam� o   2 3���� 0 thisctx thisCtx� o      ���� 0 t  � ��� r   9 <��� o   9 :���� 0 t  � o      ���� 0 p  � ��� I  = B�����
�� .ascrcmnt****      � ****� o   = >���� 0 t  ��  � ���� r   C J��� b   C H��� o   C D���� 0 tasklist taskList� n   D G��� 2  E G��
�� 
FC0T� o   D E���� 0 thisctx thisCtx� o      ���� 0 tasklist taskList��  ��  ��  ��  �� 0 thisctx thisCtxt o   
 ���� 0 lcontextlist lContextListr ���� L   T V�� o   T U���� 0 tasklist taskList��  k�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  c ��� l     ��������  ��  ��  � ��� l      ������  � $  SECTION 4: Task manipulation
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
�� .ascrcmnt****      � ****� o    	���� 0 itemnote itemNote��  � ���� Z    A������� l    ����  E     o    ���� 0 itemnote itemNote o    ���� 0 ltag lTag��  ��  � k    =  r     o    ���� 0 ltag lTag n     	 1    ��
�� 
txdl	 1    ��
�� 
ascr 

 r    1 J       n     2   �
� 
citm o    �~�~ 0 itemnote itemNote �} m     �  �}   J        o      �|�| 0 itemnode itemNode �{ n      1   - /�z
�z 
txdl 1   , -�y
�y 
ascr�{    r   2 7 c   2 5 !  o   2 3�x�x 0 itemnode itemNode! m   3 4�w
�w 
TEXT o      �v�v 0 itemnote itemNote "�u" r   8 =#$# o   8 9�t�t 0 itemnote itemNote$ l     %�s�r% n      &'& 1   : <�q
�q 
FCno' o   9 :�p�p 0 ltask lTask�s  �r  �u  ��  ��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ()( l     �o�n�m�o  �n  �m  ) *+* l      �l,-�l  , 0 * remove any tags in the provided tag list    - �.. T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  + /0/ i   l o121 I      �k3�j�k 0 	cleartask 	clearTask3 454 o      �i�i 0 ltask lTask5 6�h6 o      �g�g 0 ltaglist lTagList�h  �j  2 w     $787 X    $9�f:9 k    ;; <=< I   �e>�d
�e .ascrcmnt****      � ****> o    �c�c 0 atag aTag�d  = ?�b? I    �a@�`�a 0 	untagtask 	untagTask@ ABA o    �_�_ 0 ltask lTaskB C�^C o    �]�] 0 atag aTag�^  �`  �b  �f 0 atag aTag: o    �\�\ 0 ltaglist lTagList8�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  0 DED l     �[�Z�Y�[  �Z  �Y  E FGF l      �XHI�X  H    SECTION 5: other utility    I �JJ 4   S E C T I O N   5 :   o t h e r   u t i l i t y  G KLK l      �WMN�W  M   send tweet    N �OO    s e n d   t w e e t  L P�VP i   p sQRQ I      �US�T�U 0 	sendtweet 	sendTweetS T�ST o      �R�R 	0 value  �S  �T  R k     UU VWV r     XYX b     Z[Z b     \]\ m     ^^ �__ $ t w u r l   - d   ' s t a t u s = '] o    �Q�Q 	0 value  [ m    `` �aa 0 '   / 1 / s t a t u s e s / u p d a t e . x m lY o      �P�P 0 cmd  W b�Ob I   �Nc�M
�N .sysoexecTEXT���     TEXTc o    	�L�L 0 cmd  �M  �O  �V  J �Kdefghijklmnopqrstuvwxyz{|}~���K  d �J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�J 0 
getfolders 
getFolders�I *0 getfoldersoffolders getFoldersOfFolders�H 0 getprojects getProjects�G .0 getprojectsfromfolder getProjectsFromFolder�F 0 getcontexts getContexts�E 0 gettasks getTasks�D ,0 gettasksfromdocument getTasksFromDocument�C *0 gettasksfromproject getTasksFromProject�B 20 filterforactiveprojects filterForActiveProjects�A B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�@ H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�? @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�> H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�= Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�< 20 filterforcompletedtasks filterForCompletedTasks�; >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�: 40 filterforincompletetasks filterForIncompleteTasks�9 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�8 60 filterfortasksaddedondate filterForTasksAddedOnDate�7 L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�6 20 filterfortasksdueondate filterForTasksDueOnDate�5 :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�4 .0 filterfortaskswithtag filterForTasksWithTag�3 $0 filterforflagged filterForFlagged�2 60 filterfortaskswithcontext filterForTasksWithContext�1 0 tagtask tagTask�0 0 	untagtask 	untagTask�/ 0 	cleartask 	clearTask�. 0 	sendtweet 	sendTweete �-g�,�+���*�- 0 
getfolders 
getFolders�, �)��) �  �(�( 0 	ldocument 	lDocument�+  � �'�&�%�' 0 	ldocument 	lDocument�& 0 
folderlist 
folderList�% 0 
thisfolder 
thisFolder� k�$�#�"�!� 
�$ 
FCAr
�# 
kocl
�" 
cobj
�! .corecnte****       ****�  *0 getfoldersoffolders getFoldersOfFolders�* -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�f �������� *0 getfoldersoffolders getFoldersOfFolders� ��� �  �� 0 lfolders lFolders�  � ��� 0 lfolders lFolders� 0 
thisfolder 
thisFolder� ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCAr� *0 getfoldersoffolders getFoldersOfFolders� '�Z  �[��l kh �*��-k+ %E�[OY��O�g �������� 0 getprojects getProjects� ��� �  �� 0 	ldocument 	lDocument�  � �� 0 	ldocument 	lDocument� ��
� 
FCfx� �Z��-Eh �
��	�����
 .0 getprojectsfromfolder getProjectsFromFolder�	 ��� �  �� 0 lfolder lFolder�  � �� 0 lfolder lFolder� ��
� 
FCpr� �Z��-Ei ���� ����� 0 getcontexts getContexts� ����� �  ���� 0 	ldocument 	lDocument�   � ���� 0 	ldocument 	lDocument� ���
�� 
FCfc�� �Z��-Ej ������������� 0 gettasks getTasks�� ����� �  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject� �����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�k ������������� ,0 gettasksfromdocument getTasksFromDocument�� ����� �  ���� 0 	ldocument 	lDocument��  � ���� 0 	ldocument 	lDocument� ��
�� 
FCft�� 
�Z��,EOPl ������������ *0 gettasksfromproject getTasksFromProject�� ����� �  ���� 0 lproject lProject��  � ���� 0 lproject lProject� ��
�� 
FCac�� �Z��-Em ��'���������� 20 filterforactiveprojects filterForActiveProjects�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� +����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCPs
�� FCPsFCPa�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�n ��H���������� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� L��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC.A�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�o ��i���������� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� m��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC.A�� 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�p ������������� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� ����� �  ������ 0 lprojectlist lProjectList�� 0 ldate lDate��  � �������������������������� 0 lprojectlist lProjectList�� 0 ldate lDate�� 0 projectlist projectList�� 	0 cdate  �� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  �� 0 tcds  �� 0 tmds  � ���������������
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
FCDm�� ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�q ������������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� ����� �  ������ 0 lprojectlist lProjectList�� 0 lsize lSize��  � ������������ 0 lprojectlist lProjectList�� 0 lsize lSize�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 ps  � ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC#a�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�r ������������ Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� ����� �  ������ 0 lprojectlist lProjectList�� 0 ldate lDate��  � 	������~�}�|�{�z�y�� 0 lprojectlist lProjectList�� 0 ldate lDate� 0 projectlist projectList�~ 0 thisproject thisProject�} 0 tasklist taskList�| 0 flag  �{ 0 thistask thisTask�z 
0 tcdate  �y 
0 tmdate  � %�x�w�v�u�t�s
�x 
kocl
�w 
cobj
�v .corecnte****       ****�u *0 gettasksfromproject getTasksFromProject
�t 
FCDa
�s 
FCDm�� y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�s �rs�q�p���o�r 20 filterforcompletedtasks filterForCompletedTasks�q �n��n �  �m�m 0 	ltasklist 	lTaskList�p  � �l�k�j�l 0 	ltasklist 	lTaskList�k 0 tasklist taskList�j 0 thistask thisTask� w�i�h�g�f
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
FCcd�o 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�t �e��d�c���b�e >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�d �a��a �  �`�_�` 0 	ltasklist 	lTaskList�_ 0 ldate lDate�c  � �^�]�\�[�Z�Y�^ 0 	ltasklist 	lTaskList�] 0 ldate lDate�\ 0 tasklist taskList�[ 0 thistask thisTask�Z 0 
thistaskcd 
thisTaskCD�Y (0 thistaskdatestring thisTaskDateString� ��X�W�V�U�T
�X 
kocl
�W 
cobj
�V .corecnte****       ****
�U 
FCdc
�T 
dstr�b =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�u �S��R�Q���P�S 40 filterforincompletetasks filterForIncompleteTasks�R �O��O �  �N�N 0 	ltasklist 	lTaskList�Q  � �M�L�K�M 0 	ltasklist 	lTaskList�L 0 tasklist taskList�K 0 thistask thisTask� ��J�I�H�G
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
FCcd�P 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�v �F��E�D���C�F 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�E �B��B �  �A�A 0 	ltasklist 	lTaskList�D  � �@�?�>�@ 0 	ltasklist 	lTaskList�? 0 tasklist taskList�> 0 thistask thisTask� ��=�<�;�:�9
�= 
kocl
�< 
cobj
�; .corecnte****       ****
�: 
FCRp
�9 
msng�C 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�w �8�7�6���5�8 60 filterfortasksaddedondate filterForTasksAddedOnDate�7 �4��4 �  �3�2�3 0 	ltasklist 	lTaskList�2 0 ldate lDate�6  � �1�0�/�.�-�,�1 0 	ltasklist 	lTaskList�0 0 ldate lDate�/ 0 tasklist taskList�. 0 thistask thisTask�- 0 
thistaskcd 
thisTaskCD�, (0 thistaskdatestring thisTaskDateString� �+�*�)�(�'
�+ 
kocl
�* 
cobj
�) .corecnte****       ****
�( 
FCDa
�' 
dstr�5 =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�x �&4�%�$���#�& L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�% �"��" �  �!�! 0 	ltasklist 	lTaskList�$  � � ��������  0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� 0 foo  � 0 con  � 0 ccon  � 
0 ccname  � 0 conname  � 
8�������y�
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam
� 
FCct
� 
msng
� 
ctnr�# ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�y �������� 20 filterfortasksdueondate filterForTasksDueOnDate� ��� �  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  � �
�	�����
 0 	ltasklist 	lTaskList�	 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 
thistaskdd 
thisTaskDD� (0 thistaskdatestring thisTaskDateString� ������ ��
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCDd
�  
msng
�� 
dstr� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�z ������������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD� 	���������������
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
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�{ ������������ .0 filterfortaskswithtag filterForTasksWithTag�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCno�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�| ��?���������� $0 filterforflagged filterForFlagged�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� C��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�} ��e���������� 60 filterfortaskswithcontext filterForTasksWithContext�� ����� �  ������ 0 lcontextlist lContextList�� 0 ctx  ��  � �������������� 0 lcontextlist lContextList�� 0 ctx  �� 0 tasklist taskList�� 0 thisctx thisCtx�� 0 t  �� 0 p  � 	k������|�������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FC0T�� W�ZjvE�O K�[��l kh ��,%E�O�E�O�j O��,� ��,%E�O�E�O�j O���-%E�Y h[OY��O�~ ������������� 0 tagtask tagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � �������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote� ���
�� 
FCno�� %�Z��,E�O�� ��,E�O��%E�O���,FY h ������������� 0 	untagtask 	untagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � ���������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote�� 0 itemnode itemNode� 	���������������
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
TEXT�� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� ��2���������� 0 	cleartask 	clearTask�� ����� �  ������ 0 ltask lTask�� 0 ltaglist lTagList��  � �������� 0 ltask lTask�� 0 ltaglist lTagList�� 0 atag aTag� 8����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� 0 	untagtask 	untagTask�� %�Z !�[��l kh �j O*��l+ [OY��� ��R���������� 0 	sendtweet 	sendTweet�� ����� �  ���� 	0 value  ��  � ������ 	0 value  �� 0 cmd  � ^`��
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j ( ��  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  ) �����+�+ �����������������������������������	 											
																						 	!	"	#	$	%	&	'	(	)	*	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9	:	;	<	=	>	?	@	A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^	_	`	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|	}	~		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
 






� 

 
	��

��
	  m��
��
�� 
docu
 �

  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr

 �

  h s y l k k z 3 a U D
�� kfrmID  � 

 
�
�~
  m�}
�|
�} 
docu
 �

  e A C r c T e t y X j
�| kfrmID  
� 
FCpr
 �

  p D E - Q Y 9 q 2 _ u
�~ kfrmID  � 

 
�{
�z
  m�y
�x
�y 
docu
 �

  e A C r c T e t y X j
�x kfrmID  
�{ 
FCpr
 �

  g r N S M 7 s V z - W
�z kfrmID  � 

 
�w
�v
  m�u
�t
�u 
docu
 �

  e A C r c T e t y X j
�t kfrmID  
�w 
FCpr
 �

  e A l C X R 6 V J 1 L
�v kfrmID  � 
 
  
!�s
"�r
!  m�q
#�p
�q 
docu
# �
$
$  e A C r c T e t y X j
�p kfrmID  
�s 
FCpr
" �
%
%  m Y h M R O N h S U L
�r kfrmID  � 
&
& 
'�o
(�n
'  m�m
)�l
�m 
docu
) �
*
*  e A C r c T e t y X j
�l kfrmID  
�o 
FCpr
( �
+
+  a - w o k N Y a A q E
�n kfrmID  � 
,
, 
-�k
.�j
-  m�i
/�h
�i 
docu
/ �
0
0  e A C r c T e t y X j
�h kfrmID  
�k 
FCpr
. �
1
1  f j e d z Z h x 9 I i
�j kfrmID  � 
2
2 
3�g
4�f
3  m�e
5�d
�e 
docu
5 �
6
6  e A C r c T e t y X j
�d kfrmID  
�g 
FCpr
4 �
7
7  j H _ Y x j I J 0 C _
�f kfrmID  � 
8
8 
9�c
:�b
9  m�a
;�`
�a 
docu
; �
<
<  e A C r c T e t y X j
�` kfrmID  
�c 
FCpr
: �
=
=  j 5 t y v o j P _ q _
�b kfrmID  � 
>
> 
?�_
@�^
?  m�]
A�\
�] 
docu
A �
B
B  e A C r c T e t y X j
�\ kfrmID  
�_ 
FCpr
@ �
C
C  p s D s d Y N H s _ n
�^ kfrmID  � 
D
D 
E�[
F�Z
E  m�Y
G�X
�Y 
docu
G �
H
H  e A C r c T e t y X j
�X kfrmID  
�[ 
FCpr
F �
I
I  l _ p - - k F m p B 3
�Z kfrmID  � 
J
J 
K�W
L�V
K  m�U
M�T
�U 
docu
M �
N
N  e A C r c T e t y X j
�T kfrmID  
�W 
FCpr
L �
O
O  d l T z I 4 O 0 d z m
�V kfrmID  � 
P
P 
Q�S
R�R
Q  m�Q
S�P
�Q 
docu
S �
T
T  e A C r c T e t y X j
�P kfrmID  
�S 
FCpr
R �
U
U  j l E r r q N g N d s
�R kfrmID  � 
V
V 
W�O
X�N
W  m�M
Y�L
�M 
docu
Y �
Z
Z  e A C r c T e t y X j
�L kfrmID  
�O 
FCpr
X �
[
[  b U _ f R j N v Y 6 M
�N kfrmID  � 
\
\ 
]�K
^�J
]  m�I
_�H
�I 
docu
_ �
`
`  e A C r c T e t y X j
�H kfrmID  
�K 
FCpr
^ �
a
a  b 9 X x J k 8 Y J e n
�J kfrmID  � 
b
b 
c�G
d�F
c  m�E
e�D
�E 
docu
e �
f
f  e A C r c T e t y X j
�D kfrmID  
�G 
FCpr
d �
g
g  j E 2 D Z F R K h O Z
�F kfrmID  � 
h
h 
i�C
j�B
i  m�A
k�@
�A 
docu
k �
l
l  e A C r c T e t y X j
�@ kfrmID  
�C 
FCpr
j �
m
m  c l V q h Z M e n r g
�B kfrmID  � 
n
n 
o�?
p�>
o  m�=
q�<
�= 
docu
q �
r
r  e A C r c T e t y X j
�< kfrmID  
�? 
FCpr
p �
s
s  h 2 V 7 R C 3 P _ s a
�> kfrmID  � 
t
t 
u�;
v�:
u  m�9
w�8
�9 
docu
w �
x
x  e A C r c T e t y X j
�8 kfrmID  
�; 
FCpr
v �
y
y  m L - 4 q 2 G W e J Y
�: kfrmID  � 
z
z 
{�7
|�6
{  m�5
}�4
�5 
docu
} �
~
~  e A C r c T e t y X j
�4 kfrmID  
�7 
FCpr
| �

  o 1 F 6 S J K K o U y
�6 kfrmID  � 
�
� 
��3
��2
�  m�1
��0
�1 
docu
� �
�
�  e A C r c T e t y X j
�0 kfrmID  
�3 
FCpr
� �
�
�  o 8 R r o 6 y x W W W
�2 kfrmID  � 
�
� 
��/
��.
�  m�-
��,
�- 
docu
� �
�
�  e A C r c T e t y X j
�, kfrmID  
�/ 
FCpr
� �
�
�  j H M u Y a - J N A A
�. kfrmID  � 
�
� 
��+
��*
�  m�)
��(
�) 
docu
� �
�
�  e A C r c T e t y X j
�( kfrmID  
�+ 
FCpr
� �
�
�  c J _ h F t l T e x b
�* kfrmID  � 
�
� 
��'
��&
�  m�%
��$
�% 
docu
� �
�
�  e A C r c T e t y X j
�$ kfrmID  
�' 
FCpr
� �
�
�  l 4 4 8 g f E 6 W E J
�& kfrmID  � 
�
� 
��#
��"
�  m�!
�� 
�! 
docu
� �
�
�  e A C r c T e t y X j
�  kfrmID  
�# 
FCpr
� �
�
�  b 1 P g p L p _ v c i
�" kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  n k B Y C q h e r Q e
� kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  j o 9 W _ P Y P d H 9
� kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  n W s D n l B 6 o V X
� kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  j u 1 Q r J 1 m q s f
� kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  n - f - j l r i m A j
� kfrmID  � 
�
� 
��
��

�  m�	
��
�	 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  f G w 8 3 c G G f u i
�
 kfrmID  � 
�
� 
��
��
�  m�
��
� 
docu
� �
�
�  e A C r c T e t y X j
� kfrmID  
� 
FCpr
� �
�
�  p U F D 6 I U F P s K
� kfrmID  � 
�
� 
��
��
�  m�
�� 
� 
docu
� �
�
�  e A C r c T e t y X j
�  kfrmID  
� 
FCpr
� �
�
�  d l r i S F O v n _ 3
� kfrmID  � 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  b U 1 c 5 T v l u K 9
�� kfrmID  � 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  i F l Q 0 9 R 3 l t p
�� kfrmID  	  
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  f f E C g E O T e x b
�� kfrmID  	 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  e W Q U G 7 Y z H I u
�� kfrmID  	 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  h J B 8 f J w 3 z b X
�� kfrmID  	 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  f P X a U F - R d w y
�� kfrmID  	 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  f _ D v X T Q e U H n
�� kfrmID  	 
�
� 
���
���
�  m��
���
�� 
docu
� �
�
�  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
� �
�
�  f A 8 W D q L R r P e
�� kfrmID  	 
�
� 
��� ��
�  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr  �  j p g c d f 0 o X k M
�� kfrmID  	  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �		  l W q R M q N 5 _ u q
�� kfrmID  	 

 ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  j Z i k u t X k U Z V
�� kfrmID  		  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  l u o i t _ b x 1 z A
�� kfrmID  	
  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  l 3 t t W d 1 B f e U
�� kfrmID  	  ����  m����
�� 
docu �    e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �!!  k C n i s T 0 1 Q c O
�� kfrmID  	 "" #��$��#  m��%��
�� 
docu% �&&  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr$ �''  a z j R Q N b h M - L
�� kfrmID  	 (( )��*��)  m��+��
�� 
docu+ �,,  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr* �--  h V E u u 5 I n 8 L O
�� kfrmID  	 .. /��0��/  m��1��
�� 
docu1 �22  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr0 �33  f - K a E i e F w d 4
�� kfrmID  	 44 5��6��5  m��7��
�� 
docu7 �88  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr6 �99  l c M M a e c 5 b A I
�� kfrmID  	 :: ;��<��;  m��=��
�� 
docu= �>>  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr< �??  a P n z S K L s A Y 0
�� kfrmID  	 @@ A��B��A  m��C��
�� 
docuC �DD  e A C r c T e t y X j
�� kfrmID  
�� 
FCprB �EE  j p S K f n P g 1 - P
�� kfrmID  	 FF G��H��G  m��I��
�� 
docuI �JJ  e A C r c T e t y X j
�� kfrmID  
�� 
FCprH �KK  o c U i j 7 A 3 V P F
�� kfrmID  	 LL M��N��M  m��O��
�� 
docuO �PP  e A C r c T e t y X j
�� kfrmID  
�� 
FCprN �QQ  o r n B w 2 m K _ y o
�� kfrmID  	 RR S��T��S  m��U��
�� 
docuU �VV  e A C r c T e t y X j
�� kfrmID  
�� 
FCprT �WW  g L E 6 W S _ d v 1 Z
�� kfrmID  	 XX Y��Z��Y  m��[��
�� 
docu[ �\\  e A C r c T e t y X j
�� kfrmID  
�� 
FCprZ �]]  b d n z - K Q Z t t 7
�� kfrmID  	 ^^ _��`��_  m��a��
�� 
docua �bb  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr` �cc  h L u O C b 8 z r z 9
�� kfrmID  	 dd e��f��e  m��g��
�� 
docug �hh  e A C r c T e t y X j
�� kfrmID  
�� 
FCprf �ii  c f z p 5 g Y y R t m
�� kfrmID  	 jj k��l��k  m��m��
�� 
docum �nn  e A C r c T e t y X j
�� kfrmID  
�� 
FCprl �oo  m X v M U f w N v 9 E
�� kfrmID  	 pp q��r��q  m��s��
�� 
docus �tt  e A C r c T e t y X j
�� kfrmID  
�� 
FCprr �uu  a v c 0 3 l 0 C b I F
�� kfrmID  	 vv w��x��w  m��y��
�� 
docuy �zz  e A C r c T e t y X j
�� kfrmID  
�� 
FCprx �{{  h Z p f l I D a - 7 o
�� kfrmID  	 || }��~��}  m����
�� 
docu ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr~ ���  k 6 l - N 8 j 5 5 r B
�� kfrmID  	 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l q L K E Q H Z 3 w B
�� kfrmID  	 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  j 1 K A 2 - g 6 G Z S
�� kfrmID  	 �� ����~�  m�}��|
�} 
docu� ���  e A C r c T e t y X j
�| kfrmID  
� 
FCpr� ���  n 4 k 4 x Z I I v c p
�~ kfrmID  	 �� ��{��z�  m�y��x
�y 
docu� ���  e A C r c T e t y X j
�x kfrmID  
�{ 
FCpr� ���  o Z 4 7 h W 1 q W O f
�z kfrmID  	  �� ��w��v�  m�u��t
�u 
docu� ���  e A C r c T e t y X j
�t kfrmID  
�w 
FCpr� ���  a 0 9 u V w 4 Y 8 N 9
�v kfrmID  	! �� ��s��r�  m�q��p
�q 
docu� ���  e A C r c T e t y X j
�p kfrmID  
�s 
FCpr� ���  h G Q L 8 c O b u 3 s
�r kfrmID  	" �� ��o��n�  m�m��l
�m 
docu� ���  e A C r c T e t y X j
�l kfrmID  
�o 
FCpr� ���  j P F S g R X E k w J
�n kfrmID  	# �� ��k��j�  m�i��h
�i 
docu� ���  e A C r c T e t y X j
�h kfrmID  
�k 
FCpr� ���  m a 4 K X 9 1 N G X s
�j kfrmID  	$ �� ��g��f�  m�e��d
�e 
docu� ���  e A C r c T e t y X j
�d kfrmID  
�g 
FCpr� ���  f X B A h x G X u 9 T
�f kfrmID  	% �� ��c��b�  m�a��`
�a 
docu� ���  e A C r c T e t y X j
�` kfrmID  
�c 
FCpr� ���  i - Q S B Y f K L 9 m
�b kfrmID  	& �� ��_��^�  m�]��\
�] 
docu� ���  e A C r c T e t y X j
�\ kfrmID  
�_ 
FCpr� ���  l 9 1 T N X g I M c C
�^ kfrmID  	' �� ��[��Z�  m�Y��X
�Y 
docu� ���  e A C r c T e t y X j
�X kfrmID  
�[ 
FCpr� ���  m R n i r f o F J N B
�Z kfrmID  	( �� ��W��V�  m�U��T
�U 
docu� ���  e A C r c T e t y X j
�T kfrmID  
�W 
FCpr� ���  b R V w j V 0 K D s Z
�V kfrmID  	) �� ��S��R�  m�Q��P
�Q 
docu� ���  e A C r c T e t y X j
�P kfrmID  
�S 
FCpr� ���  i D a Q N c u O E G W
�R kfrmID  	* �� ��O��N�  m�M��L
�M 
docu� ���  e A C r c T e t y X j
�L kfrmID  
�O 
FCpr� ���  e n M u q J P Z 8 W x
�N kfrmID  	+ �� ��K��J�  m�I��H
�I 
docu� ���  e A C r c T e t y X j
�H kfrmID  
�K 
FCpr� ���  b B r 6 P P 0 7 X M n
�J kfrmID  	, �� ��G��F�  m�E��D
�E 
docu� ���  e A C r c T e t y X j
�D kfrmID  
�G 
FCpr� ���  l t d t r i K e 0 7 z
�F kfrmID  	- �� ��C��B�  m�A��@
�A 
docu� ���  e A C r c T e t y X j
�@ kfrmID  
�C 
FCpr� ���  d - B 1 b O 1 N Z Z J
�B kfrmID  	. �� ��?��>�  m�=��<
�= 
docu� ���  e A C r c T e t y X j
�< kfrmID  
�? 
FCpr� ���  a o Z R 5 P C V p M R
�> kfrmID  	/ �� ��;��:�  m�9��8
�9 
docu� ���  e A C r c T e t y X j
�8 kfrmID  
�; 
FCpr� ���  o O t h e q 7 V R w f
�: kfrmID  	0 �� ��7��6�  m�5��4
�5 
docu� ���  e A C r c T e t y X j
�4 kfrmID  
�7 
FCpr� ���  o U q E 0 Y Y e x f 1
�6 kfrmID  	1    �3�2  m�1�0
�1 
docu �  e A C r c T e t y X j
�0 kfrmID  
�3 
FCpr �  e 5 b F D v K E 4 1 R
�2 kfrmID  	2  �/�.  m�-	�,
�- 
docu	 �

  e A C r c T e t y X j
�, kfrmID  
�/ 
FCpr �  h K G l L _ _ S X 9 B
�. kfrmID  	3  �+�*  m�)�(
�) 
docu �  e A C r c T e t y X j
�( kfrmID  
�+ 
FCpr �  n z 0 F V T g J P k -
�* kfrmID  	4  �'�&  m�%�$
�% 
docu �  e A C r c T e t y X j
�$ kfrmID  
�' 
FCpr �  h N t l h H K c i X r
�& kfrmID  	5  �#�"  m�!� 
�! 
docu �  e A C r c T e t y X j
�  kfrmID  
�# 
FCpr �  k J V Y 3 w Q B 2 G q
�" kfrmID  	6  � �  m�!�
� 
docu! �""  e A C r c T e t y X j
� kfrmID  
� 
FCpr  �##  k U J f u i l 6 _ 0 u
� kfrmID  	7 $$ %�&�%  m�'�
� 
docu' �((  e A C r c T e t y X j
� kfrmID  
� 
FCpr& �))  d 3 f l q T V J g 8 u
� kfrmID  	8 ** +�,�+  m�-�
� 
docu- �..  e A C r c T e t y X j
� kfrmID  
� 
FCpr, �//  d C y H 9 j g S h v I
� kfrmID  	9 00 1�2�1  m�3�
� 
docu3 �44  e A C r c T e t y X j
� kfrmID  
� 
FCpr2 �55  m P m E a B T 5 D j r
� kfrmID  	: 66 7�8�7  m�9�
� 
docu9 �::  e A C r c T e t y X j
� kfrmID  
� 
FCpr8 �;;  f g G A U Q 1 3 2 4 Z
� kfrmID  	; << =�>�
=  m�	?�
�	 
docu? �@@  e A C r c T e t y X j
� kfrmID  
� 
FCpr> �AA  k W P 7 b 0 7 y x P u
�
 kfrmID  	< BB C�D�C  m�E�
� 
docuE �FF  e A C r c T e t y X j
� kfrmID  
� 
FCprD �GG  l a - N s d 2 u A Z G
� kfrmID  	= HH I�J�I  m�K� 
� 
docuK �LL  e A C r c T e t y X j
�  kfrmID  
� 
FCprJ �MM  g G j S o e d v y 7 m
� kfrmID  	> NN O��P��O  m��Q��
�� 
docuQ �RR  e A C r c T e t y X j
�� kfrmID  
�� 
FCprP �SS  k d g M 1 H Z P X j l
�� kfrmID  	? TT U��V��U  m��W��
�� 
docuW �XX  e A C r c T e t y X j
�� kfrmID  
�� 
FCprV �YY  m X D F B I f D _ Z T
�� kfrmID  	@ ZZ [��\��[  m��]��
�� 
docu] �^^  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr\ �__  c A a i i 5 g L - y Q
�� kfrmID  	A `` a��b��a  m��c��
�� 
docuc �dd  e A C r c T e t y X j
�� kfrmID  
�� 
FCprb �ee  e 5 3 v R D 6 q X o A
�� kfrmID  	B ff g��h��g  m��i��
�� 
docui �jj  e A C r c T e t y X j
�� kfrmID  
�� 
FCprh �kk  d z 6 b g 2 r k Q m u
�� kfrmID  	C ll m��n��m  m��o��
�� 
docuo �pp  e A C r c T e t y X j
�� kfrmID  
�� 
FCprn �qq  d X w j 4 8 b g i a P
�� kfrmID  	D rr s��t��s  m��u��
�� 
docuu �vv  e A C r c T e t y X j
�� kfrmID  
�� 
FCprt �ww  j x Y P R U s m B e m
�� kfrmID  	E xx y��z��y  m��{��
�� 
docu{ �||  e A C r c T e t y X j
�� kfrmID  
�� 
FCprz �}}  b O c s w m 8 Z b L N
�� kfrmID  	F ~~ �����  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  d i Z U w h O q B k -
�� kfrmID  	G �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h c b g I P N _ 2 g g
�� kfrmID  	H �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  c k r S c Y Z A R 7 m
�� kfrmID  	I �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  k d y b S E D _ r g V
�� kfrmID  	J �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b n 7 8 D t Q q K n D
�� kfrmID  	K �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l C D D - - 7 Q 5 - m
�� kfrmID  	L �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n E 5 L 6 h 9 i 2 i o
�� kfrmID  	M �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h H 0 h H E G N T R l
�� kfrmID  	N �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n g p 3 0 m V L f g a
�� kfrmID  	O �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  a r O A n 2 H A Y M s
�� kfrmID  	P �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h u e n j g a z 8 o c
�� kfrmID  	Q �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  g 7 S A 4 F 2 v p 6 p
�� kfrmID  	R �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b A t S I h B l w 1 6
�� kfrmID  	S �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f O D m _ q Q a n 8 8
�� kfrmID  	T �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  k F m k v 6 F 1 d R o
�� kfrmID  	U �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l d r q T f 1 f 5 3 w
�� kfrmID  	V �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f 2 s s D i 4 9 g o D
�� kfrmID  	W �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l J G b X C a K p 0 l
�� kfrmID  	X �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f a M 6 x - z e u A n
�� kfrmID  	Y �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  k N w 8 g T q M a 1 a
�� kfrmID  	Z �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  k t f F n D 8 T m t z
�� kfrmID  	[ �� �������  m�����
�� 
docu� �    e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� �  e c 8 E g z q C a K 5
�� kfrmID  	\  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  c X o 0 x G 6 K o G 4
�� kfrmID  	]  	��
��	  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr
 �  m G Q h a k _ w T c s
�� kfrmID  	^  ��~  m�}�|
�} 
docu �  e A C r c T e t y X j
�| kfrmID  
� 
FCpr �  j - C O i o p j I D J
�~ kfrmID  	_  �{�z  m�y�x
�y 
docu �  e A C r c T e t y X j
�x kfrmID  
�{ 
FCpr �  j 8 w 9 u x y w t p w
�z kfrmID  	`  �w�v  m�u�t
�u 
docu �  e A C r c T e t y X j
�t kfrmID  
�w 
FCpr �  i g V g e 6 _ 1 s 4 D
�v kfrmID  	a    !�s"�r!  m�q#�p
�q 
docu# �$$  e A C r c T e t y X j
�p kfrmID  
�s 
FCpr" �%%  d i z 4 Z I q j q N _
�r kfrmID  	b && '�o(�n'  m�m)�l
�m 
docu) �**  e A C r c T e t y X j
�l kfrmID  
�o 
FCpr( �++  j t 2 J I 2 n B - k a
�n kfrmID  	c ,, -�k.�j-  m�i/�h
�i 
docu/ �00  e A C r c T e t y X j
�h kfrmID  
�k 
FCpr. �11  o N D c v N A r I 7 P
�j kfrmID  	d 22 3�g4�f3  m�e5�d
�e 
docu5 �66  e A C r c T e t y X j
�d kfrmID  
�g 
FCpr4 �77  f W 5 m n Z P H r P I
�f kfrmID  	e 88 9�c:�b9  m�a;�`
�a 
docu; �<<  e A C r c T e t y X j
�` kfrmID  
�c 
FCpr: �==  e C y 5 h T P q C 9 K
�b kfrmID  	f >> ?�_@�^?  m�]A�\
�] 
docuA �BB  e A C r c T e t y X j
�\ kfrmID  
�_ 
FCpr@ �CC  h 1 H - c 9 W N C R x
�^ kfrmID  	g DD E�[F�ZE  m�YG�X
�Y 
docuG �HH  e A C r c T e t y X j
�X kfrmID  
�[ 
FCprF �II  b 3 n e X i x 9 Q I c
�Z kfrmID  	h JJ K�WL�VK  m�UM�T
�U 
docuM �NN  e A C r c T e t y X j
�T kfrmID  
�W 
FCprL �OO  k H c i J w 8 W X g 6
�V kfrmID  	i PP Q�SR�RQ  m�QS�P
�Q 
docuS �TT  e A C r c T e t y X j
�P kfrmID  
�S 
FCprR �UU  d s 2 t H c J 3 f 1 z
�R kfrmID  	j VV W�OX�NW  m�MY�L
�M 
docuY �ZZ  e A C r c T e t y X j
�L kfrmID  
�O 
FCprX �[[  f 6 O a 5 j m M U M C
�N kfrmID  	k \\ ]�K^�J]  m�I_�H
�I 
docu_ �``  e A C r c T e t y X j
�H kfrmID  
�K 
FCpr^ �aa  g e K 6 L I Q e j b C
�J kfrmID  	l bb c�Gd�Fc  m�Ee�D
�E 
docue �ff  e A C r c T e t y X j
�D kfrmID  
�G 
FCprd �gg  o E J Y O I V r W 7 S
�F kfrmID  	m hh i�Cj�Bi  m�Ak�@
�A 
docuk �ll  e A C r c T e t y X j
�@ kfrmID  
�C 
FCprj �mm  l W - R t I 8 8 3 1 5
�B kfrmID  	n nn o�?p�>o  m�=q�<
�= 
docuq �rr  e A C r c T e t y X j
�< kfrmID  
�? 
FCprp �ss  n 2 S 8 4 g M 6 5 c V
�> kfrmID  	o tt u�;v�:u  m�9w�8
�9 
docuw �xx  e A C r c T e t y X j
�8 kfrmID  
�; 
FCprv �yy  a s r E J a Q j t r V
�: kfrmID  	p zz {�7|�6{  m�5}�4
�5 
docu} �~~  e A C r c T e t y X j
�4 kfrmID  
�7 
FCpr| �  o t x Q K v 8 K y Z J
�6 kfrmID  	q �� ��3��2�  m�1��0
�1 
docu� ���  e A C r c T e t y X j
�0 kfrmID  
�3 
FCpr� ���  n Z J A e Y 1 F Y i e
�2 kfrmID  	r �� ��/��.�  m�-��,
�- 
docu� ���  e A C r c T e t y X j
�, kfrmID  
�/ 
FCpr� ���  n Q K O i A q I g l i
�. kfrmID  	s �� ��+��*�  m�)��(
�) 
docu� ���  e A C r c T e t y X j
�( kfrmID  
�+ 
FCpr� ���  f P I n O e b Y c f S
�* kfrmID  	t �� ��'��&�  m�%��$
�% 
docu� ���  e A C r c T e t y X j
�$ kfrmID  
�' 
FCpr� ���  b P k W V _ V 1 R 1 O
�& kfrmID  	u �� ��#��"�  m�!�� 
�! 
docu� ���  e A C r c T e t y X j
�  kfrmID  
�# 
FCpr� ���  n G l v I N U l P j Q
�" kfrmID  	v �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  c c K G g j R z Z q 2
� kfrmID  	w �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  e - 4 J 1 b 1 q l v M
� kfrmID  	x �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  k c Y 7 n M q T 9 i F
� kfrmID  	y �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  k V X r D x t f m R h
� kfrmID  	z �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  h j o r 6 U J N N D 2
� kfrmID  	{ �� ����
�  m�	��
�	 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  f c R M h K N 7 3 R 4
�
 kfrmID  	| �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  p n 9 I 7 v G F S z X
� kfrmID  	} �� �����  m��� 
� 
docu� ���  e A C r c T e t y X j
�  kfrmID  
� 
FCpr� ���  o d 5 G J W o s c c Y
� kfrmID  	~ �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  c 1 X i E - R 1 v S v
�� kfrmID  	 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  j E a 1 B F A J J 9 H
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b _ q h u D y 7 Y C b
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n P W F n 8 f - B Q x
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l P S x F x G 2 0 6 c
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  k 8 Z t f W p y G t 8
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b x U G t s R D Z 2 -
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n 2 Z w g w H q w N 6
�� kfrmID  	� �� ��� ���  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr  �  j Y D 9 g s 8 E P x A
�� kfrmID  	�  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �		  a s s 3 g w 9 H a q S
�� kfrmID  	� 

 ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  d L L Z V r 5 o i 1 u
�� kfrmID  	�  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  k O v s 4 K 4 K z s 1
�� kfrmID  	�  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �  g k K e 8 B S J s v x
�� kfrmID  	�  ����  m����
�� 
docu �    e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �!!  b H 5 w e 4 m b I q 8
�� kfrmID  	� "" #��$��#  m��%��
�� 
docu% �&&  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr$ �''  h 3 N v p X j 7 m H U
�� kfrmID  	� (( )��*��)  m��+��
�� 
docu+ �,,  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr* �--  j V E W f M 4 A 4 u c
�� kfrmID  	� .. /��0��/  m��1��
�� 
docu1 �22  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr0 �33  a D f n 9 V 8 Z C U e
�� kfrmID  	� 44 5��6��5  m��7��
�� 
docu7 �88  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr6 �99  o q g e 7 M 5 v Q j W
�� kfrmID  	� :: ;��<��;  m��=��
�� 
docu= �>>  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr< �??  h 1 w q o 3 u T M u X
�� kfrmID  	� @@ A��B��A  m��C��
�� 
docuC �DD  e A C r c T e t y X j
�� kfrmID  
�� 
FCprB �EE  p Y H - F j B y w y g
�� kfrmID  	� FF G��H��G  m��I��
�� 
docuI �JJ  e A C r c T e t y X j
�� kfrmID  
�� 
FCprH �KK  g u M E n l 8 b N C C
�� kfrmID  	� LL M��N��M  m��O��
�� 
docuO �PP  e A C r c T e t y X j
�� kfrmID  
�� 
FCprN �QQ  h 4 K p J B x U q Q i
�� kfrmID  	� RR S��T��S  m��U��
�� 
docuU �VV  e A C r c T e t y X j
�� kfrmID  
�� 
FCprT �WW  n d Q 0 3 l b i 1 _ O
�� kfrmID  	� XX Y��Z��Y  m��[��
�� 
docu[ �\\  e A C r c T e t y X j
�� kfrmID  
�� 
FCprZ �]]  d I E _ S T w U S 9 9
�� kfrmID  	� ^^ _��`��_  m��a��
�� 
docua �bb  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr` �cc  i P a - E u 7 - v - F
�� kfrmID  	� dd e��f��e  m��g��
�� 
docug �hh  e A C r c T e t y X j
�� kfrmID  
�� 
FCprf �ii  n Y r F v V K g 6 a X
�� kfrmID  	� jj k��l��k  m��m��
�� 
docum �nn  e A C r c T e t y X j
�� kfrmID  
�� 
FCprl �oo  h M W t p 8 _ C A x O
�� kfrmID  	� pp q��r��q  m��s��
�� 
docus �tt  e A C r c T e t y X j
�� kfrmID  
�� 
FCprr �uu  g 5 M c e m A N R 4 V
�� kfrmID  	� vv w��x��w  m��y��
�� 
docuy �zz  e A C r c T e t y X j
�� kfrmID  
�� 
FCprx �{{  m U Y _ b M F 1 - V 7
�� kfrmID  	� || }��~��}  m����
�� 
docu ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr~ ���  h s I X 4 u H p j 2 2
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f c T L m K i w y y 7
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b T s 3 4 L r n s d h
�� kfrmID  	� �� ����~�  m�}��|
�} 
docu� ���  e A C r c T e t y X j
�| kfrmID  
� 
FCpr� ���  i f J L a 5 d d 6 8 J
�~ kfrmID  	� �� ��{��z�  m�y��x
�y 
docu� ���  e A C r c T e t y X j
�x kfrmID  
�{ 
FCpr� ���  j 0 g S D x K G U H 6
�z kfrmID  	� �� ��w��v�  m�u��t
�u 
docu� ���  e A C r c T e t y X j
�t kfrmID  
�w 
FCpr� ���  m Q 0 e r - o Z b w j
�v kfrmID  	� �� ��s��r�  m�q��p
�q 
docu� ���  e A C r c T e t y X j
�p kfrmID  
�s 
FCpr� ���  g 7 d d E - K W M L k
�r kfrmID  	� �� ��o��n�  m�m��l
�m 
docu� ���  e A C r c T e t y X j
�l kfrmID  
�o 
FCpr� ���  a H g i 4 T p M H e k
�n kfrmID  	� �� ��k��j�  m�i��h
�i 
docu� ���  e A C r c T e t y X j
�h kfrmID  
�k 
FCpr� ���  i 1 D X _ S A R S f f
�j kfrmID  	� �� ��g��f�  m�e��d
�e 
docu� ���  e A C r c T e t y X j
�d kfrmID  
�g 
FCpr� ���  k i w O i 0 i F f 6 G
�f kfrmID  	� �� ��c��b�  m�a��`
�a 
docu� ���  e A C r c T e t y X j
�` kfrmID  
�c 
FCpr� ���  d d s h C q Y H k L t
�b kfrmID  	� �� ��_��^�  m�]��\
�] 
docu� ���  e A C r c T e t y X j
�\ kfrmID  
�_ 
FCpr� ���  f f U H T M W 6 - a S
�^ kfrmID  	� �� ��[��Z�  m�Y��X
�Y 
docu� ���  e A C r c T e t y X j
�X kfrmID  
�[ 
FCpr� ���  n x O m T _ k m q V e
�Z kfrmID  	� �� ��W��V�  m�U��T
�U 
docu� ���  e A C r c T e t y X j
�T kfrmID  
�W 
FCpr� ���  c 3 x X n V j C b R W
�V kfrmID  	� �� ��S��R�  m�Q��P
�Q 
docu� ���  e A C r c T e t y X j
�P kfrmID  
�S 
FCpr� ���  a t A r 5 r t N 8 P U
�R kfrmID  	� �� ��O��N�  m�M��L
�M 
docu� ���  e A C r c T e t y X j
�L kfrmID  
�O 
FCpr� ���  i h R 1 t 3 z F a E i
�N kfrmID  	� �� ��K��J�  m�I��H
�I 
docu� ���  e A C r c T e t y X j
�H kfrmID  
�K 
FCpr� ���  n z l p Y - k 0 i 1 Z
�J kfrmID  	� �� ��G��F�  m�E��D
�E 
docu� ���  e A C r c T e t y X j
�D kfrmID  
�G 
FCpr� ���  k W O D M k e M 6 P 9
�F kfrmID  	� �� ��C��B�  m�A��@
�A 
docu� ���  e A C r c T e t y X j
�@ kfrmID  
�C 
FCpr� ���  k 3 o A X F L D U J 7
�B kfrmID  	� �� ��?��>�  m�=��<
�= 
docu� ���  e A C r c T e t y X j
�< kfrmID  
�? 
FCpr� ���  k R V I k o T v D A X
�> kfrmID  	� �� ��;��:�  m�9��8
�9 
docu� ���  e A C r c T e t y X j
�8 kfrmID  
�; 
FCpr� ���  p w 1 r U e C C V Y M
�: kfrmID  	� �� ��7��6�  m�5��4
�5 
docu� ���  e A C r c T e t y X j
�4 kfrmID  
�7 
FCpr� ���  p 6 D L X G s m Q y S
�6 kfrmID  	�    �3�2  m�1�0
�1 
docu �  e A C r c T e t y X j
�0 kfrmID  
�3 
FCpr �  i V z N a T q m 0 i I
�2 kfrmID  	�  �/�.  m�-	�,
�- 
docu	 �

  e A C r c T e t y X j
�, kfrmID  
�/ 
FCpr �  d _ n k E r X n 6 s T
�. kfrmID  	�  �+�*  m�)�(
�) 
docu �  e A C r c T e t y X j
�( kfrmID  
�+ 
FCpr �  l I w R I i c _ 8 B v
�* kfrmID  	�  �'�&  m�%�$
�% 
docu �  e A C r c T e t y X j
�$ kfrmID  
�' 
FCpr �  f r j R s S N a _ h M
�& kfrmID  	�  �#�"  m�!� 
�! 
docu �  e A C r c T e t y X j
�  kfrmID  
�# 
FCpr �  m z g S e x d R i D x
�" kfrmID  	�  � �  m�!�
� 
docu! �""  e A C r c T e t y X j
� kfrmID  
� 
FCpr  �##  l h t 0 J p B 5 m y b
� kfrmID  	� $$ %�&�%  m�'�
� 
docu' �((  e A C r c T e t y X j
� kfrmID  
� 
FCpr& �))  f j 6 B 9 q c g E j A
� kfrmID  	� ** +�,�+  m�-�
� 
docu- �..  e A C r c T e t y X j
� kfrmID  
� 
FCpr, �//  g k Y r H U l t 2 Z 0
� kfrmID  	� 00 1�2�1  m�3�
� 
docu3 �44  e A C r c T e t y X j
� kfrmID  
� 
FCpr2 �55  o f b K F r H z g Q 9
� kfrmID  	� 66 7�8�7  m�9�
� 
docu9 �::  e A C r c T e t y X j
� kfrmID  
� 
FCpr8 �;;  e C 6 - f Z B W G N v
� kfrmID  	� << =�>�
=  m�	?�
�	 
docu? �@@  e A C r c T e t y X j
� kfrmID  
� 
FCpr> �AA  j - I w o A 7 H J q b
�
 kfrmID  	� BB C�D�C  m�E�
� 
docuE �FF  e A C r c T e t y X j
� kfrmID  
� 
FCprD �GG  b a w x U S J G D c A
� kfrmID  	� HH I�J�I  m�K� 
� 
docuK �LL  e A C r c T e t y X j
�  kfrmID  
� 
FCprJ �MM  d u 8 x A H M l o z Q
� kfrmID  	� NN O��P��O  m��Q��
�� 
docuQ �RR  e A C r c T e t y X j
�� kfrmID  
�� 
FCprP �SS  g B F S F T N p r H x
�� kfrmID  	� TT U��V��U  m��W��
�� 
docuW �XX  e A C r c T e t y X j
�� kfrmID  
�� 
FCprV �YY  b N u u w 0 b j x - Y
�� kfrmID  	� ZZ [��\��[  m��]��
�� 
docu] �^^  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr\ �__  k Y I B C a a j N v V
�� kfrmID  	� `` a��b��a  m��c��
�� 
docuc �dd  e A C r c T e t y X j
�� kfrmID  
�� 
FCprb �ee  c i f 3 D N 9 Y E F _
�� kfrmID  	� ff g��h��g  m��i��
�� 
docui �jj  e A C r c T e t y X j
�� kfrmID  
�� 
FCprh �kk  a W Q d q g N 9 c 0 _
�� kfrmID  	� ll m��n��m  m��o��
�� 
docuo �pp  e A C r c T e t y X j
�� kfrmID  
�� 
FCprn �qq  e 0 u C I M 9 j A P 1
�� kfrmID  	� rr s��t��s  m��u��
�� 
docuu �vv  e A C r c T e t y X j
�� kfrmID  
�� 
FCprt �ww  f z R M W d R T N n 1
�� kfrmID  	� xx y��z��y  m��{��
�� 
docu{ �||  e A C r c T e t y X j
�� kfrmID  
�� 
FCprz �}}  d c T O G P h g S 0 r
�� kfrmID  	� ~~ �����  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  g 3 P Z c 2 p k K u z
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n G 6 o 6 z s 4 Y B L
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  m S k D Z G Q X 6 3 R
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  c v N 2 A 7 D D j M 3
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  i c p u T r 2 K Z F W
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  b C 2 A E U O P 4 p P
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h 4 m 7 J 2 5 K i Q S
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h O m 0 e I H H A l D
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n A U Q t M y w i 3 8
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f x 3 y B k d x Z t i
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n L O j G B h N U - 1
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  m G 8 G f M J u m 2 4
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  o 6 h I G X W h a f k
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  o x 0 s V Y L m 9 C T
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f Q r V H 2 b A 0 H b
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  j F k W b n l o j I L
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f P 3 J p l 6 u l z s
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  j _ g U T I h r 7 d C
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  g q H L g f l m K I C
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  f Q D _ 8 Y v m 9 K X
�� kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  p l J t x o h 0 F 5 p
� kfrmID  	� �� �����  m���
� 
docu� �    e A C r c T e t y X j
� kfrmID  
� 
FCpr� �  f T Q x 4 x L V m J T
� kfrmID  	�  ��  m��
� 
docu �  e A C r c T e t y X j
� kfrmID  
� 
FCpr �  j G r Q f A y T 0 h X
� kfrmID  	�  	�
�	  m��
� 
docu �  e A C r c T e t y X j
� kfrmID  
� 
FCpr
 �  o t X H f d R Z t s R
� kfrmID  	�  ��~  m�}�|
�} 
docu �  e A C r c T e t y X j
�| kfrmID  
� 
FCpr �  i h w t 6 Y 2 7 M Q K
�~ kfrmID  	�  �{�z  m�y�x
�y 
docu �  e A C r c T e t y X j
�x kfrmID  
�{ 
FCpr �  h b K C t G N A E A Q
�z kfrmID  	�  �w�v  m�u�t
�u 
docu �  e A C r c T e t y X j
�t kfrmID  
�w 
FCpr �  k 9 - G P w V v M 7 5
�v kfrmID  	�    !�s"�r!  m�q#�p
�q 
docu# �$$  e A C r c T e t y X j
�p kfrmID  
�s 
FCpr" �%%  a q A - Z 0 F P v S X
�r kfrmID  	� && '�o(�n'  m�m)�l
�m 
docu) �**  e A C r c T e t y X j
�l kfrmID  
�o 
FCpr( �++  d V Y Q - 2 E m W T H
�n kfrmID  	� ,, -�k.�j-  m�i/�h
�i 
docu/ �00  e A C r c T e t y X j
�h kfrmID  
�k 
FCpr. �11  h f O z L L u S b q 2
�j kfrmID  	� 22 3�g4�f3  m�e5�d
�e 
docu5 �66  e A C r c T e t y X j
�d kfrmID  
�g 
FCpr4 �77  b J p n 0 A B Y 3 Q z
�f kfrmID  	� 88 9�c:�b9  m�a;�`
�a 
docu; �<<  e A C r c T e t y X j
�` kfrmID  
�c 
FCpr: �==  d - Y G 1 h N Y v 3 E
�b kfrmID  	� >> ?�_@�^?  m�]A�\
�] 
docuA �BB  e A C r c T e t y X j
�\ kfrmID  
�_ 
FCpr@ �CC  b J g h C p t - i Y I
�^ kfrmID  	� DD E�[F�ZE  m�YG�X
�Y 
docuG �HH  e A C r c T e t y X j
�X kfrmID  
�[ 
FCprF �II  p 4 n H U X 1 E d r _
�Z kfrmID  	� JJ K�WL�VK  m�UM�T
�U 
docuM �NN  e A C r c T e t y X j
�T kfrmID  
�W 
FCprL �OO  e v - _ o Z g L t Z V
�V kfrmID  	� PP Q�SR�RQ  m�QS�P
�Q 
docuS �TT  e A C r c T e t y X j
�P kfrmID  
�S 
FCprR �UU  h v N M Y I J c p A S
�R kfrmID  	� VV W�OX�NW  m�MY�L
�M 
docuY �ZZ  e A C r c T e t y X j
�L kfrmID  
�O 
FCprX �[[  g n p J r D L 3 A K Z
�N kfrmID  	� \\ ]�K^�J]  m�I_�H
�I 
docu_ �``  e A C r c T e t y X j
�H kfrmID  
�K 
FCpr^ �aa  c E C 4 y k c 1 t b a
�J kfrmID  	� bb c�Gd�Fc  m�Ee�D
�E 
docue �ff  e A C r c T e t y X j
�D kfrmID  
�G 
FCprd �gg  g J P t H g 0 q l F Z
�F kfrmID  	� hh i�Cj�Bi  m�Ak�@
�A 
docuk �ll  e A C r c T e t y X j
�@ kfrmID  
�C 
FCprj �mm  h e h V A T H n f _ 7
�B kfrmID  	� nn o�?p�>o  m�=q�<
�= 
docuq �rr  e A C r c T e t y X j
�< kfrmID  
�? 
FCprp �ss  o X H e p e V j J e d
�> kfrmID  	� tt u�;v�:u  m�9w�8
�9 
docuw �xx  e A C r c T e t y X j
�8 kfrmID  
�; 
FCprv �yy  b _ 6 P U X t s v F L
�: kfrmID  	� zz {�7|�6{  m�5}�4
�5 
docu} �~~  e A C r c T e t y X j
�4 kfrmID  
�7 
FCpr| �  b p m I 6 c o c f P j
�6 kfrmID  	� �� ��3��2�  m�1��0
�1 
docu� ���  e A C r c T e t y X j
�0 kfrmID  
�3 
FCpr� ���  f 3 9 z W j g B r Z j
�2 kfrmID  	� �� ��/��.�  m�-��,
�- 
docu� ���  e A C r c T e t y X j
�, kfrmID  
�/ 
FCpr� ���  c Q Z i s o v J s - v
�. kfrmID  	� �� ��+��*�  m�)��(
�) 
docu� ���  e A C r c T e t y X j
�( kfrmID  
�+ 
FCpr� ���  k r X i e P c 3 A U B
�* kfrmID  	� �� ��'��&�  m�%��$
�% 
docu� ���  e A C r c T e t y X j
�$ kfrmID  
�' 
FCpr� ���  j 3 X _ p 5 D - k N E
�& kfrmID  	� �� ��#��"�  m�!�� 
�! 
docu� ���  e A C r c T e t y X j
�  kfrmID  
�# 
FCpr� ���  h y j 3 w i d 8 b W r
�" kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  l R j i 6 h u m p t G
� kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  k v u d 4 o R i r q n
� kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  e U Z z 4 a v _ 0 l M
� kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  h i a 2 n g T F i w i
� kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  e 9 P 2 w l 2 v h U -
� kfrmID  	� �� ����
�  m�	��
�	 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  o w r g M F f S _ L v
�
 kfrmID  	� �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCpr� ���  i g M P o G N 7 n A a
� kfrmID  	� �� �����  m��� 
� 
docu� ���  e A C r c T e t y X j
�  kfrmID  
� 
FCpr� ���  c B s T E 0 k B i _ a
� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  l h p x G Z k U 1 E V
�� kfrmID  	� �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  h d M T u x i f Q N 8
�� kfrmID  
  �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  c W 5 8 c A L O d Y y
�� kfrmID  
 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  d p d n 6 O J H a 4 4
�� kfrmID  
 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  a S j 8 Z R l u l j 7
�� kfrmID  
 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  n D G 4 t u r u 3 B m
�� kfrmID  
 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  o 8 G g H z d W H M X
�� kfrmID  
 �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr� ���  d k q f d x s 8 W 8 i
�� kfrmID  
 �� ��� ���  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr  �  p A 3 W T D y B O G i
�� kfrmID  
  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCpr �		  h u 6 w _ L L D g d -
�� kfrmID  * ��
�� d
 d  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmn oo p��q��p  m��r��
�� 
docur �ss  e A C r c T e t y X j
�� kfrmID  
�� 
FCctq �tt  d a l T 6 j 6 e H J I
�� kfrmID   uu v��w��v  m��x��
�� 
docux �yy  e A C r c T e t y X j
�� kfrmID  
�� 
FCctw �zz  f C R p p X d r - _ j
�� kfrmID   {{ |��}��|  m��~��
�� 
docu~ �  e A C r c T e t y X j
�� kfrmID  
�� 
FCct} ���  n v L n E V A Y o L -
�� kfrmID   �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  i l g V N K o S S 0 7
�� kfrmID   �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  b i w b n v x n e c 7
�� kfrmID   �� �������  m����
�� 
docu� ���  e A C r c T e t y X j
� kfrmID  
�� 
FCct� ���  i 7 e M W _ 8 0 J 6 h
�� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  j e Q F t A Y X E M H
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  g g k s R Q O C P w V
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  p y E C e j X 0 0 v 0
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  h O F Z L f M e q T h
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  a t j n H 1 S _ A S g
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  b O q u p 2 a F E d G
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  k n R 2 L t y 2 5 2 7
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  f c u 9 K P m j 1 F q
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  f G U W U 2 B d w Y Y
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  g Q 3 G L l H p v 0 r
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  f V c D g 3 A g N k h
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  c M z C 5 A 7 h m r C
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  o T i q v - Z f J J G
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  c _ - t c P M d e 4 5
� kfrmID   �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  j z 7 P T s y o V X 3
� kfrmID    �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  g 5 _ a Q p w E 9 5 q
� kfrmID  ! �� ��~��}�  m�|��{
�| 
docu� ���  e A C r c T e t y X j
�{ kfrmID  
�~ 
FCct� ���  g y m L m R e j G I k
�} kfrmID  " �� ��z��y�  m�x��w
�x 
docu� ���  e A C r c T e t y X j
�w kfrmID  
�z 
FCct� ���  n K Z 5 i x J M L F Z
�y kfrmID  # ��  �v�u   m�t�s
�t 
docu �  e A C r c T e t y X j
�s kfrmID  
�v 
FCct �  b n P a h S d D E w V
�u kfrmID  $  �r�q  m�p�o
�p 
docu �		  e A C r c T e t y X j
�o kfrmID  
�r 
FCct �

  a X Y t 4 f 0 w Z I 6
�q kfrmID  %  �n�m  m�l�k
�l 
docu �  e A C r c T e t y X j
�k kfrmID  
�n 
FCct �  i k P X 7 5 M Z 7 5 g
�m kfrmID  &  �j�i  m�h�g
�h 
docu �  e A C r c T e t y X j
�g kfrmID  
�j 
FCct �  o r V _ F H a _ r x r
�i kfrmID  '  �f�e  m�d�c
�d 
docu �  e A C r c T e t y X j
�c kfrmID  
�f 
FCct �  k G L O F 7 4 i z I s
�e kfrmID  (  �b�a  m�` �_
�` 
docu  �!!  e A C r c T e t y X j
�_ kfrmID  
�b 
FCct �""  o I J 8 B I - G F k 2
�a kfrmID  ) ## $�^%�]$  m�\&�[
�\ 
docu& �''  e A C r c T e t y X j
�[ kfrmID  
�^ 
FCct% �((  c O s j A z Z E u I J
�] kfrmID  * )) *�Z+�Y*  m�X,�W
�X 
docu, �--  e A C r c T e t y X j
�W kfrmID  
�Z 
FCct+ �..  i T k c F t G C Y t u
�Y kfrmID  + // 0�V1�U0  m�T2�S
�T 
docu2 �33  e A C r c T e t y X j
�S kfrmID  
�V 
FCct1 �44  m O m F t W - e K C P
�U kfrmID  , 55 6�R7�Q6  m�P8�O
�P 
docu8 �99  e A C r c T e t y X j
�O kfrmID  
�R 
FCct7 �::  f i z 0 s G _ i N i B
�Q kfrmID  - ;; <�N=�M<  m�L>�K
�L 
docu> �??  e A C r c T e t y X j
�K kfrmID  
�N 
FCct= �@@  m m J J 7 7 c d R j N
�M kfrmID  . AA B�JC�IB  m�HD�G
�H 
docuD �EE  e A C r c T e t y X j
�G kfrmID  
�J 
FCctC �FF  i z 8 I J o 9 t u F 2
�I kfrmID  / GG H�FI�EH  m�DJ�C
�D 
docuJ �KK  e A C r c T e t y X j
�C kfrmID  
�F 
FCctI �LL  j r u Z a w D z q k U
�E kfrmID  0 MM N�BO�AN  m�@P�?
�@ 
docuP �QQ  e A C r c T e t y X j
�? kfrmID  
�B 
FCctO �RR  c p G p h k z 1 E u Y
�A kfrmID  1 SS T�>U�=T  m�<V�;
�< 
docuV �WW  e A C r c T e t y X j
�; kfrmID  
�> 
FCctU �XX  o l V i 3 f S i q H n
�= kfrmID  2 YY Z�:[�9Z  m�8\�7
�8 
docu\ �]]  e A C r c T e t y X j
�7 kfrmID  
�: 
FCct[ �^^  m l 8 4 g M t 3 V i U
�9 kfrmID  3 __ `�6a�5`  m�4b�3
�4 
docub �cc  e A C r c T e t y X j
�3 kfrmID  
�6 
FCcta �dd  o t F _ A S c K y 6 f
�5 kfrmID  4 ee f�2g�1f  m�0h�/
�0 
docuh �ii  e A C r c T e t y X j
�/ kfrmID  
�2 
FCctg �jj  l T M 1 - B o m b S t
�1 kfrmID  5 kk l�.m�-l  m�,n�+
�, 
docun �oo  e A C r c T e t y X j
�+ kfrmID  
�. 
FCctm �pp  n 8 5 O 0 U V - t V j
�- kfrmID  6 qq r�*s�)r  m�(t�'
�( 
docut �uu  e A C r c T e t y X j
�' kfrmID  
�* 
FCcts �vv  e x r E f l c S x s B
�) kfrmID  7 ww x�&y�%x  m�$z�#
�$ 
docuz �{{  e A C r c T e t y X j
�# kfrmID  
�& 
FCcty �||  b T V 5 S 0 S j Y Q N
�% kfrmID  8 }} ~�"�!~  m� ��
�  
docu� ���  e A C r c T e t y X j
� kfrmID  
�" 
FCct ���  k h B b q 5 0 p e L C
�! kfrmID  9 �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  k p N T v H A 6 E t 0
� kfrmID  : �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  m 8 D l q t T 0 h a R
� kfrmID  ; �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  c V E 5 T 1 _ - d A e
� kfrmID  < �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  c _ d H A U Z V d b 2
� kfrmID  = �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  l U n _ t u e U r u W
� kfrmID  > �� ��
��	�  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
�
 
FCct� ���  a 3 9 o n 5 J 5 V x M
�	 kfrmID  ? �� �����  m���
� 
docu� ���  e A C r c T e t y X j
� kfrmID  
� 
FCct� ���  n j 8 i G i g F H 7 j
� kfrmID  @ �� �����  m� ���
�  
docu� ���  e A C r c T e t y X j
�� kfrmID  
� 
FCct� ���  b B j v 5 2 W I A _ 2
� kfrmID  A �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  m d q v m a n 8 N I z
�� kfrmID  B �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  c q i b M 2 _ f N U f
�� kfrmID  C �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  j 4 S n E 6 h C e L C
�� kfrmID  D �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  p 8 v q l H Q N u X 3
�� kfrmID  E �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  c W R 2 r A z U h s P
�� kfrmID  F �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  j C 9 f y c z j y n 2
�� kfrmID  G �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  c K y 4 w 7 e h q i j
�� kfrmID  H �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  o G W z J M t z j c R
�� kfrmID  I �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  d c H d G C a w V u 2
�� kfrmID  J �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  d J O L _ i o m C U I
�� kfrmID  K �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  b 3 Z o N W G t B n X
�� kfrmID  L �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� ���  g J 9 w h o F c e Z H
�� kfrmID  M �� �������  m�����
�� 
docu� ���  e A C r c T e t y X j
�� kfrmID  
�� 
FCct� �    e a N v h 7 X _ t G 8
�� kfrmID  N  ����  m����
�� 
docu �  e A C r c T e t y X j
�� kfrmID  
�� 
FCct �  n H r X V m u k E 5 w
�� kfrmID  O  ��	��  m��
��
�� 
docu
 �  e A C r c T e t y X j
�� kfrmID  
�� 
FCct	 �  l G J b w n a p A h l
�� kfrmID  P  ����  m���
�� 
docu �  e A C r c T e t y X j
� kfrmID  
�� 
FCct �  j 0 7 - 0 I _ f 4 T D
�� kfrmID  Q  ��  m��
� 
docu �  e A C r c T e t y X j
� kfrmID  
� 
FCct �  g 8 4 e K f 9 X N 2 X
� kfrmID  R  ��  m��
� 
docu �  e A C r c T e t y X j
� kfrmID  
� 
FCct �  i Z r y c G l V x 2 E
� kfrmID  S   �!�   m�"�
� 
docu" �##  e A C r c T e t y X j
� kfrmID  
� 
FCct! �$$  m a x a B B U g Y 8 X
� kfrmID  T %% &�'�&  m�(�
� 
docu( �))  e A C r c T e t y X j
� kfrmID  
� 
FCct' �**  e 1 - E p J h n g H I
� kfrmID  U ++ ,�-�,  m�.�
� 
docu. �//  e A C r c T e t y X j
� kfrmID  
� 
FCct- �00  l s 3 f T X Y 1 i i l
� kfrmID  V 11 2�3�2  m�4�
� 
docu4 �55  e A C r c T e t y X j
� kfrmID  
� 
FCct3 �66  o M 4 9 G Y S 6 4 J u
� kfrmID  W 77 8�9�8  m�:�
� 
docu: �;;  e A C r c T e t y X j
� kfrmID  
� 
FCct9 �<<  l j U l _ 2 K 4 5 h 7
� kfrmID  X == >�?�>  m�@�
� 
docu@ �AA  e A C r c T e t y X j
� kfrmID  
� 
FCct? �BB  a P x a - p Z b Y 3 T
� kfrmID  Y CC D�E�D  m�F�
� 
docuF �GG  e A C r c T e t y X j
� kfrmID  
� 
FCctE �HH  m 4 S l O Y 4 f K c M
� kfrmID  Z II J�K�J  m�L�
� 
docuL �MM  e A C r c T e t y X j
� kfrmID  
� 
FCctK �NN  m C s - 6 y g e M O a
� kfrmID  [ OO P�Q�P  m�R�
� 
docuR �SS  e A C r c T e t y X j
� kfrmID  
� 
FCctQ �TT  p O b l P M x d n O 1
� kfrmID  \ UU V�W�V  m�X�
� 
docuX �YY  e A C r c T e t y X j
� kfrmID  
� 
FCctW �ZZ  m J O u 0 O y s y e V
� kfrmID  ] [[ \�]�\  m�^�
� 
docu^ �__  e A C r c T e t y X j
� kfrmID  
� 
FCct] �``  m L U d P T M 1 A N V
� kfrmID  ^ aa b�c�b  m�d�
� 
docud �ee  e A C r c T e t y X j
� kfrmID  
� 
FCctc �ff  d A u j r w z w f i L
� kfrmID  _ gg h�i�h  m�j�
� 
docuj �kk  e A C r c T e t y X j
� kfrmID  
� 
FCcti �ll  h O Z 6 v X 0 _ W d s
� kfrmID  ` mm n�o�n  m�p�
� 
docup �qq  e A C r c T e t y X j
� kfrmID  
� 
FCcto �rr  n p v Q k b z P 9 p -
� kfrmID  a ss t�~u�}t  m�|v�{
�| 
docuv �ww  e A C r c T e t y X j
�{ kfrmID  
�~ 
FCctu �xx  c Z l F g L X p K v h
�} kfrmID  b yy z�z{�yz  m�x|�w
�x 
docu| �}}  e A C r c T e t y X j
�w kfrmID  
�z 
FCct{ �~~  c e 2 I k t R p U u S
�y kfrmID  c  ��v��u�  m�t��s
�t 
docu� ���  e A C r c T e t y X j
�s kfrmID  
�v 
FCct� ���  l 4 c f 0 F s z u f b
�u kfrmID  d �� ��r��q�  m�p��o
�p 
docu� ���  e A C r c T e t y X j
�o kfrmID  
�r 
FCct� ���  d e e 7 8 B x 6 5 K E
�q kfrmID  e �� ��n��m�  m�l��k
�l 
docu� ���  e A C r c T e t y X j
�k kfrmID  
�n 
FCct� ���  k 7 W q C S L M d x J
�m kfrmID  f �� ��j��i�  m�h��g
�h 
docu� ���  e A C r c T e t y X j
�g kfrmID  
�j 
FCct� ���  a w V Y o E c k o I X
�i kfrmID  g �� ��f��e�  m�d��c
�d 
docu� ���  e A C r c T e t y X j
�c kfrmID  
�f 
FCct� ���  l j 7 k h 0 Q R x q Z
�e kfrmID  h �� ��b��a�  m�`��_
�` 
docu� ���  e A C r c T e t y X j
�_ kfrmID  
�b 
FCct� ���  m p s e B 0 u 7 k k M
�a kfrmID  i �� ��^��]�  m�\��[
�\ 
docu� ���  e A C r c T e t y X j
�[ kfrmID  
�^ 
FCct� ���  d F W X x p O b A o a
�] kfrmID  j �� ��Z��Y�  m�X��W
�X 
docu� ���  e A C r c T e t y X j
�W kfrmID  
�Z 
FCct� ���  k f C B o i o _ i - o
�Y kfrmID  k �� ��V��U�  m�T��S
�T 
docu� ���  e A C r c T e t y X j
�S kfrmID  
�V 
FCct� ���  h p l 9 E H c 9 R E 0
�U kfrmID  l �� ��R��Q�  m�P��O
�P 
docu� ���  e A C r c T e t y X j
�O kfrmID  
�R 
FCct� ���  k C O 4 H y Q g S w 9
�Q kfrmID  m �� ��N��M�  m�L��K
�L 
docu� ���  e A C r c T e t y X j
�K kfrmID  
�N 
FCct� ���  o l 5 b F F i c 1 o O
�M kfrmID  n �� ��J��I�  m�H��G
�H 
docu� ���  e A C r c T e t y X j
�G kfrmID  
�J 
FCct� ���  i z R 2 W 0 a e H H B
�I kfrmID  + �F��F �  ����� �� ��E��D�  m�C��B
�C 
docu� ���  e A C r c T e t y X j
�B kfrmID  
�E 
FCac� ���  p G Y d w H F i V L F
�D kfrmID  � �� ��A��@�  m�?��>
�? 
docu� ���  e A C r c T e t y X j
�> kfrmID  
�A 
FCac� ���  d x _ d r x M 7 k 0 A
�@ kfrmID  � �� ��=��<�  m�;��:
�; 
docu� ���  e A C r c T e t y X j
�: kfrmID  
�= 
FCac� ���  o t m l a 4 K Y F Z i
�< kfrmID  � �� ��9��8�  m�7��6
�7 
docu� ���  e A C r c T e t y X j
�6 kfrmID  
�9 
FCac� ���  e q M X M s y D - w K
�8 kfrmID  , ��� D S i z e   o f   r e q u e s t e d   l i s t   i s   4   i t e m s .�<  �;  �:  �9  �8   ascr  ��ޭ