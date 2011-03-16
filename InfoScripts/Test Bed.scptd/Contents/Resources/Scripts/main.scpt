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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  Q !���� ! O   Q " # " k   P $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ���� 0 projectlist projectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 0 getcontexts getContexts ;  <�� < o   ' (���� 0 thedocument theDocument��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� 0 ctxs   >  A B A l  2 2��������  ��  ��   B  C D C O  2 = E F E I   6 <�� G���� 20 filterforactiveprojects filterForActiveProjects G  H�� H o   7 8���� 0 projectlist projectList��  ��   F o   2 3���� 	0 oflib   D  I J I r   > A K L K 1   > ?��
�� 
rslt L o      ���� &0 activeprojectlist activeProjectList J  M N M l  B B��������  ��  ��   N  O P O O  B N Q R Q I   F M�� S���� 0 gettasks getTasks S  T U T o   G H���� 0 thedocument theDocument U  V�� V o   H I���� 0 projectlist projectList��  ��   R o   B C���� 	0 oflib   P  W X W r   O R Y Z Y 1   O P��
�� 
rslt Z o      ���� 0 tasklist taskList X  [ \ [ l  S S��������  ��  ��   \  ] ^ ] r   S Z _ ` _ l  S X a���� a I  S X�� b��
�� .corecnte****       **** b o   S T���� 0 tasklist taskList��  ��  ��   ` o      ���� 0 n   ^  c d c l  [ [��������  ��  ��   d  e f e O  [ f g h g I   _ e�� i���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks i  j�� j o   ` a���� 0 tasklist taskList��  ��   h o   [ \���� 	0 oflib   f  k l k r   g j m n m 1   g h��
�� 
rslt n o      ���� 0 tasklist taskList l  o p o l  k k��������  ��  ��   p  q r q I  k t�� s��
�� .ascrcmnt****      � **** s l  k p t���� t I  k p�� u��
�� .corecnte****       **** u o   k l���� 0 tasklist taskList��  ��  ��  ��   r  v w v l  u u��������  ��  ��   w  x y x O  u � z { z I   y ��� |���� 0 gettasks getTasks |  } ~ } o   z {���� 0 thedocument theDocument ~  ��  o   { |���� &0 activeprojectlist activeProjectList��  ��   { o   u v���� 	0 oflib   y  � � � r   � � � � � 1   � ���
�� 
rslt � o      ����  0 activetasklist activeTaskList �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � I   � ��� ����� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks �  ��� � o   � �����  0 activetasklist activeTaskList��  ��   � o   � ����� 	0 oflib   �  � � � r   � � � � � 1   � ���
�� 
rslt � o      ����  0 activetasklist activeTaskList �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � W Q	tell oflib to filterForCompletedTasks(taskList)	set completedTaskList to result    � � � � � 	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s ( t a s k L i s t )  	 s e t   c o m p l e t e d T a s k L i s t   t o   r e s u l t �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � � �	tell oflib to filterForCompletedTasksOnDate(completedTaskList, date string of (current date))	set todaysCompletedTaskList to result    � � � �
 	 t e l l   o f l i b   t o   f i l t e r F o r C o m p l e t e d T a s k s O n D a t e ( c o m p l e t e d T a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   t o d a y s C o m p l e t e d T a s k L i s t   t o   r e s u l t �  � � � l  � ���~�}�  �~  �}   �  � � � O  � � � � � I   � ��| ��{�| 40 filterforincompletetasks filterForIncompleteTasks �  ��z � o   � ��y�y  0 activetasklist activeTaskList�z  �{   � o   � ��x�x 	0 oflib   �  � � � r   � � � � � 1   � ��w
�w 
rslt � o      �v�v 40 activeincompletetasklist activeIncompleteTaskList �  � � � l  � ��u�t�s�u  �t  �s   �  � � � l   � ��r � ��r   � y s	tell oflib to filterForTasksAddedOnDate(taskList, date string of (current date))	set addedTodayTaskList to result    � � � � � 	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s A d d e d O n D a t e ( t a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   a d d e d T o d a y T a s k L i s t   t o   r e s u l t �  � � � l  � ��q�p�o�q  �p  �o   �  � � � O  � � � � � I   � ��n ��m�n 20 filtercontextsforstring filterContextsForString �  � � � o   � ��l�l 0 ctxs   �  ��k � m   � � � � � � �  W a i t i n g   F o r�k  �m   � o   � ��j�j 	0 oflib   �  � � � r   � � � � � 1   � ��i
�i 
rslt � o      �h�h (0 waitingforcontexts waitingForContexts �  � � � l  � ��g�f�e�g  �f  �e   �  � � � O  � � � � � I   � ��d ��c�d :0 filterfortasksoutofcontexts filterForTasksOutOfContexts �  � � � o   � ��b�b 40 activeincompletetasklist activeIncompleteTaskList �  ��a � o   � ��`�` (0 waitingforcontexts waitingForContexts�a  �c   � o   � ��_�_ 	0 oflib   �  � � � r   � � � � � 1   � ��^
�^ 
rslt � o      �]�] (0 nonwaitingfortasks nonWaitingForTasks �  � � � l  � ��\�[�Z�\  �[  �Z   �  � � � O  � � � � � I   � ��Y ��X�Y 40 filterfortasksincontexts filterForTasksInContexts �  � � � o   � ��W�W 40 activeincompletetasklist activeIncompleteTaskList �  ��V � o   � ��U�U (0 waitingforcontexts waitingForContexts�V  �X   � o   � ��T�T 	0 oflib   �  � � � r   � � � � � 1   � ��S
�S 
rslt � o      �R�R "0 waitingfortasks waitingForTasks �  � � � l  � ��Q�P�O�Q  �P  �O   �  � � � r   � � � � � b   � � � � � m   � � � � � � �  T o t a l   t a s k s   i s   � o   � ��N�N 40 activeincompletetasklist activeIncompleteTaskList � o      �M�M 	0 cname   �  � � � I  ��L ��K
�L .ascrcmnt****      � **** � o   ��J�J 	0 cname  �K   �  � � � r   � � � b   � � � m  
 � � � � � > T o t a l   n o n   w a i t i n g   f o r   t a s k s   i s   � o  
�I�I (0 nonwaitingfortasks nonWaitingForTasks � o      �H�H 	0 cname   �  � � � I �G ��F
�G .ascrcmnt****      � **** � o  �E�E 	0 cname  �F   �  � � � l �D�C�B�D  �C  �B   �  � � � l  �A � ��A   � m g	tell oflib to filterForProjectsOfSizeGreaterThan(activeProjectList, 0)	set nonEmptyProjects to result    � � � � � 	 t e l l   o f l i b   t o   f i l t e r F o r P r o j e c t s O f S i z e G r e a t e r T h a n ( a c t i v e P r o j e c t L i s t ,   0 )  	 s e t   n o n E m p t y P r o j e c t s   t o   r e s u l t �  � � � l �@�?�>�@  �?  �>   �  � � � l  �= �=    � �set svalue to my generateStatus(activeProjectList, todaysCompletedTaskList, addedTodayTaskList, activeIncompleteTaskList, waitingForTaskList, nonEmptyProjects)    �> s e t   s v a l u e   t o   m y   g e n e r a t e S t a t u s ( a c t i v e P r o j e c t L i s t ,   t o d a y s C o m p l e t e d T a s k L i s t ,   a d d e d T o d a y T a s k L i s t ,   a c t i v e I n c o m p l e t e T a s k L i s t ,   w a i t i n g F o r T a s k L i s t ,   n o n E m p t y P r o j e c t s ) �  r  ' n # I  #�<	�;�< 00 generatestatusfromlist generateStatusFromList	 
�:
 o  �9�9 (0 waitingforcontexts waitingForContexts�:  �;    f   o      �8�8 
0 svalue    r  (4 n (0 I  )0�7�6�7 00 generatestatusfromlist generateStatusFromList �5 o  ),�4�4 40 activeincompletetasklist activeIncompleteTaskList�5  �6    f  () o      �3�3 
0 svalue    r  5A n 5= I  6=�2�1�2 00 generatestatusfromlist generateStatusFromList �0 o  69�/�/ (0 nonwaitingfortasks nonWaitingForTasks�0  �1    f  56 o      �.�. 
0 svalue    r  BN n BJ  I  CJ�-!�,�- 00 generatestatusfromlist generateStatusFromList! "�+" o  CF�*�* "0 waitingfortasks waitingForTasks�+  �,     f  BC o      �)�) 
0 svalue   #�(# l OO�'�&�%�'  �&  �%  �(   # m    	$$�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��     %&% l     �$�#�"�$  �#  �"  & '(' i   
 )*) I      �!+� �! 00 generatestatusfromlist generateStatusFromList+ ,�, o      �� 0 llist lList�  �   * w     -.- k    // 010 r    232 m    44 �55 4 S i z e   o f   r e q u e s t e d   l i s t   i s  3 o      �� 0 thetext theText1 676 r    898 b    :;: b    <=< o    �� 0 thetext theText= n    
>?> 1    
�
� 
leng? o    �� 0 llist lList; m    @@ �AA    i t e m s .9 o      �� 0 thetext theText7 BCB l   ����  �  �  C DED I   �F�
� .ascrcmnt****      � ****F o    �� 0 thetext theText�  E GHG l   ����  �  �  H I�I L    JJ o    �� 0 thetext theText�  .�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ( KLK l     ����  �  �  L MNM i    OPO I      �
�	��
 0 	pathtolib 	pathToLib�	  �  P k     QQ RSR r     	TUT l    V��V I    �WX
� .earsffdralis        afdrW  f     X �Y�
� 
fromY m    �
� fldmfldu�  �  �  U o      �� 0 apppath appPathS Z[Z l   
 
� \]�   \ y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string   ] �^^ � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g[ _`_ l  
 
��������  ��  ��  ` aba L   
 cc c   
 ded l  
 f����f b   
 ghg o   
 ���� 0 apppath appPathh m    ii �jj 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :��  ��  e m    ��
�� 
ctxtb k��k L    ll n    mnm 1    ��
�� 
strqn o    ���� 0 myfolderpath myFolderPath��  N opo l     ��������  ��  ��  p qrq i    sts I      �������� 0 getoflib getOFLib��  ��  t k     uu vwv r     xyx I    ��z��
�� .sysoloadscpt        filez 4     
��{
�� 
file{ l   	|����| b    	}~} n   � I    �������� 0 	pathtolib 	pathToLib��  ��  �  f    ~ m    �� ���  O F L i b . s c p t��  ��  ��  y o      ���� 0 thelib theLibw ���� L    �� o    ���� 0 thelib theLib��  r ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 generatestatus generateStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ��� o      ���� *0 lwaitingfortasklist lWaitingForTaskList� ���� o      ���� &0 lnonemptyprojects lNonEmptyProjects��  ��  � w     J��� k    J�� ��� r    ��� m    �� ��� 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� o    ���� 0 thetext theText� n    
��� 1    
��
�� 
leng� o    ���� (0 lactiveprojectlist lActiveProjectList� m    �� ��� $   a c t i v e   p r o j e c t s ,  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� o    ���� 0 thetext theText� n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� m    �� ��� 0   t a s k s   c o m p l e t e d   t o d a y ,  � o      ���� 0 thetext theText� ��� r    #��� b    !��� b    ��� o    ���� 0 thetext theText� n    ��� 1    ��
�� 
leng� o    ���� *0 laddedtodaytasklist lAddedTodayTaskList� m     �� ��� (   t a s k s   a d d e d   t o d a y ,  � o      ���� 0 thetext theText� ��� r   $ -��� b   $ +��� b   $ )��� o   $ %���� 0 thetext theText� n   % (��� 1   & (��
�� 
leng� o   % &���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� m   ) *�� ��� &   i n c o m p l e t e   t a s k s ,  � o      ���� 0 thetext theText� ��� r   . 7��� b   . 5��� b   . 3��� o   . /���� 0 thetext theText� n   / 2��� 1   0 2��
�� 
leng� o   / 0���� *0 lwaitingfortasklist lWaitingForTaskList� m   3 4�� ��� &   w a i t i n g   f o r s ,   a n d  � o      ���� 0 thetext theText� ��� r   8 A��� b   8 ?��� b   8 =��� o   8 9���� 0 thetext theText� n   9 <��� 1   : <��
�� 
leng� o   9 :���� &0 lnonemptyprojects lNonEmptyProjects� m   = >�� ��� 6   a c t i v e   n o n   e m p t y   p r o j e c t s .� o      ���� 0 thetext theText� ��� l  B B��������  ��  ��  � ��� I  B G�����
�� .ascrcmnt****      � ****� o   B C���� 0 thetext theText��  � ��� l  H H��������  ��  ��  � ���� L   H J�� o   H I���� 0 thetext theText��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   � � I    ������ 0 	sendtweet 	sendTweet �� o    ���� 0 v  ��  ��    o    	���� 	0 oflib  ��  �  l     ��������  ��  ��    i    ! I      ��	���� $0 writedailystatus writeDailyStatus	 

 o      ���� (0 lactiveprojectlist lActiveProjectList  o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList  o      ���� *0 laddedtodaytasklist lAddedTodayTaskList  o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList  o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList �� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��   w     � k    �  r     m     �   o      ���� 0 thetext theText  r     !  b    "#" b    $%$ b    	&'& o    ���� 0 thetext theText' m    (( �)) " a c t i v e   p r o j e c t s :  % n   	 *+* 1   
 ��
�� 
leng+ o   	 
���� (0 lactiveprojectlist lActiveProjectList# o    ���� 0 nl  ! o      ���� 0 thetext theText ,-, r    %./. b    #010 b    232 b    454 o    ���� 0 thetext theText5 m    66 �77 2 t o d a y ' s   c o m p l e t e d   t a s k s :  3 n    898 1    ��
�� 
leng9 o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList1 o    "���� 0 nl  / o      ���� 0 thetext theText- :;: r   & 5<=< b   & 3>?> b   & -@A@ b   & )BCB o   & '���� 0 thetext theTextC m   ' (DD �EE & T a s k s   a d d e d   t o d a y :  A n   ) ,FGF 1   * ,��
�� 
lengG o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList? o   - 2���� 0 nl  = o      ���� 0 thetext theText; HIH r   6 EJKJ b   6 CLML b   6 =NON b   6 9PQP o   6 7���� 0 thetext theTextQ m   7 8RR �SS , N o n - w a i t   a d d e d   t o d a y :  O n   9 <TUT 1   : <��
�� 
lengU o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskListM o   = B���� 0 nl  K o      ���� 0 thetext theTextI VWV r   F UXYX b   F SZ[Z b   F M\]\ b   F I^_^ o   F G���� 0 thetext theText_ m   G H`` �aa 2 A c t i v e   i n c o m p l e t e   t a s k s :  ] n   I Lbcb 1   J L��
�� 
lengc o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList[ o   M R�� 0 nl  Y o      �~�~ 0 thetext theTextW ded r   V efgf b   V chih b   V ]jkj b   V Ylml o   V W�}�} 0 thetext theTextm m   W Xnn �oo L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  k n   Y \pqp 1   Z \�|
�| 
lengq o   Y Z�{�{ $0 lnotwaittasklist lNotWaitTaskListi o   ] b�z�z 0 nl  g o      �y�y 0 thetext theTexte rsr l  f f�x�w�v�x  �w  �v  s tut l  f f�u�t�s�u  �t  �s  u vwv I  f k�rx�q
�r .ascrcmnt****      � ****x o   f g�p�p 0 thetext theText�q  w yzy l  l l�o�n�m�o  �n  �m  z {|{ r   l y}~} c   l w� b   l u��� l  l s��l�k� I  l s�j��
�j .earsffdralis        afdr� m   l m�i
�i afdrdesk� �h��g
�h 
rtyp� m   n o�f
�f 
TEXT�g  �l  �k  � m   s t�� ���  o f   t o d a y . t x t� m   u v�e
�e 
TEXT~ o      �d�d 0 thefilepath theFilePath| ��� r   z ���� I  z ��c��
�c .rdwropenshor       file� o   z {�b�b 0 thefilepath theFilePath� �a��`
�a 
perm� m   | }�_
�_ boovtrue�`  � o      �^�^ 0 thefile theFile� ��� I  � ��]��
�] .rdwrwritnull���     ****� o   � ��\�\ 0 thetext theText� �[��
�[ 
refn� o   � ��Z�Z 0 thefile theFile� �Y��X
�Y 
wrat� m   � ��W
�W rdwreof �X  � ��V� I  � ��U��T
�U .rdwrclosnull���     ****� o   � ��S�S 0 thefile theFile�T  �V  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ��� l     �R�Q�P�R  �Q  �P  � ��� i   " %��� I      �O��N�O 0 
writestats 
writeStats� ��� o      �M�M 0 lfolderlist lFolderList� ��� o      �L�L 0 lprojectlist lProjectList� ��� o      �K�K (0 lactiveprojectlist lActiveProjectList� ��� o      �J�J 0 	ltasklist 	lTaskList� ��� o      �I�I "0 lactivetasklist lActiveTaskList� ��� o      �H�H (0 lcompletedtasklist lCompletedTaskList� ��� o      �G�G *0 lincompletetasklist lIncompleteTaskList� ��� o      �F�F 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      �E�E &0 lnonrepincomplete lNonRepIncomplete� ��D� o      �C�C *0 laddedtodaytasklist lAddedTodayTaskList�D  �N  � w     ���� k    ��� ��� l    �B���B  � b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   � ��� � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t� ��� r    ��� m    �� ���  � o      �A�A 0 thetext theText� ��� l    �@���@  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    �?�? 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �>
�> 
leng� o   	 
�=�= 0 lprojectlist lProjectList� o    �<�< 0 nl  � o      �;�; 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    �:�: 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �9
�9 
leng� o    �8�8 (0 lactiveprojectlist lActiveProjectList� o    "�7�7 0 nl  � o      �6�6 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�5�5 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�4
�4 
leng� o   ) *�3�3 0 	ltasklist 	lTaskList� o   - 2�2�2 0 nl  � o      �1�1 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�0�0 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�/
�/ 
leng� o   9 :�.�. "0 lactivetasklist lActiveTaskList� o   = B�-�- 0 nl  � o      �,�, 0 thetext theText� ��� r   F U   b   F S b   F M b   F I o   F G�+�+ 0 thetext theText m   G H �		 " c o m p l e t e d   t a s k s :   n   I L

 1   J L�*
�* 
leng o   I J�)�) (0 lcompletedtasklist lCompletedTaskList o   M R�(�( 0 nl   o      �'�' 0 thetext theText�  r   V e b   V c b   V ] b   V Y o   V W�&�& 0 thetext theText m   W X � $ i n c o m p l e t e   t a s k s :   n   Y \ 1   Z \�%
�% 
leng o   Y Z�$�$ *0 lincompletetasklist lIncompleteTaskList o   ] b�#�# 0 nl   o      �"�" 0 thetext theText  r   f u b   f s b   f m !  b   f i"#" o   f g�!�! 0 thetext theText# m   g h$$ �%% 2 t o d a y ' s   c o m p l e t e d   t a s k s :  ! n   i l&'& 1   j l� 
�  
leng' o   i j�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList o   m r�� 0 nl   o      �� 0 thetext theText ()( r   v �*+* b   v �,-, b   v }./. b   v y010 o   v w�� 0 thetext theText1 m   w x22 �33 4 N o n   r e p e a t i n g   i n c o m p l e t e :  / n   y |454 1   z |�
� 
leng5 o   y z�� &0 lnonrepincomplete lNonRepIncomplete- o   } ��� 0 nl  + o      �� 0 thetext theText) 676 r   � �898 b   � �:;: b   � �<=< b   � �>?> o   � ��� 0 thetext theText? m   � �@@ �AA & T a s k s   a d d e d   t o d a y :  = n   � �BCB 1   � ��
� 
lengC o   � ��� *0 laddedtodaytasklist lAddedTodayTaskList; o   � ��� 0 nl  9 o      �� 0 thetext theText7 DED l  � �����  �  �  E FGF I  � ��H�
� .ascrcmnt****      � ****H o   � ��� 0 thetext theText�  G IJI l  � ����
�  �  �
  J KLK r   � �MNM c   � �OPO b   � �QRQ l  � �S�	�S I  � ��TU
� .earsffdralis        afdrT m   � ��
� afdrdeskU �V�
� 
rtypV m   � ��
� 
TEXT�  �	  �  R m   � �WW �XX  o f . t x tP m   � ��
� 
TEXTN o      �� 0 thefilepath theFilePathL YZY r   � �[\[ I  � �� ]^
�  .rdwropenshor       file] o   � ����� 0 thefilepath theFilePath^ ��_��
�� 
perm_ m   � ���
�� boovtrue��  \ o      ���� 0 thefile theFileZ `a` I  � ���bc
�� .rdwrwritnull���     ****b o   � ����� 0 thetext theTextc ��de
�� 
refnd o   � ����� 0 thefile theFilee ��f��
�� 
wratf m   � ���
�� rdwreof ��  a g��g I  � ���h��
�� .rdwrclosnull���     ****h o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � iji l     ��������  ��  ��  j klk i   & )mnm I      ��o���� 0 
writedebug 
writeDebugo p��p o      ���� 0 ltask lTask��  ��  n Z     �qr����q o     ���� 	0 debug  r w    sts k   
 uu vwv r   
 xyx b   
 z{z b   
 |}| m   
 ~~ �  T a s k   n a m e   i s  } n   ��� 1    ��
�� 
pnam� o    ���� 0 ltask lTask{ o    ���� 0 nl  y o      ���� 0 thetext theTextw ��� r    %��� b    #��� b    ��� m    �� ���  T a s k   i d   i s  � n   ��� 1    ��
�� 
ID  � o    ���� 0 ltask lTask� o    "���� 0 nl  � o      ���� 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & C o m p l e t i o n   d a t e   i s  � n  ) ,��� 1   * ,��
�� 
FCdc� o   ) *���� 0 ltask lTask� o   - 2���� 0 nl  � o      ���� 0 thetext theText� ��� r   6 ;��� n  6 9��� 1   7 9��
�� 
FCdc� o   6 7���� 0 ltask lTask� o      ���� 0 thedate theDate� ��� r   < A��� n   < ?��� 1   = ?��
�� 
dstr� o   < =���� 0 thedate theDate� o      ���� 0 thedateonly theDateOnly� ��� r   B O��� b   B M��� b   B G��� b   B E��� o   B C���� 0 thetext theText� m   C D�� ��� 4 C o m p l e t i o n   d a t e   i s   r e a l l y  � o   E F���� 0 thedateonly theDateOnly� o   G L���� 0 nl  � o      ���� 0 thetext theText� ��� r   P ]��� c   P [��� b   P Y��� l  P W������ I  P W����
�� .earsffdralis        afdr� m   P Q��
�� afdrdesk� �����
�� 
rtyp� m   R S��
�� 
TEXT��  ��  ��  � m   W X�� ���  o f D e b u g . t x t� m   Y Z��
�� 
TEXT� o      ���� 0 thefilepath theFilePath� ��� r   ^ g��� I  ^ e����
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
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  t�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��  l ���� l     ��������  ��  ��  ��       �����������������  � ������������������������ 0 nl  �� 	0 debug  �� 00 generatestatusfromlist generateStatusFromList�� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� ��*���������� 00 generatestatusfromlist generateStatusFromList�� ����� �  ���� 0 llist lList��  � ������ 0 llist lList�� 0 thetext theText� .4��@��
�� 
leng
�� .ascrcmnt****      � ****�� �Z�E�O���,%�%E�O�j O�� ��P���������� 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ������i����
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��t���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� �������
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� �������������  0 generatestatus generateStatus�� ����� �  ������~�}�|�� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� *0 laddedtodaytasklist lAddedTodayTaskList�~ 60 lactiveincompletetasklist lActiveIncompleteTaskList�} *0 lwaitingfortasklist lWaitingForTaskList�| &0 lnonemptyprojects lNonEmptyProjects��  � �{�z�y�x�w�v�u�{ (0 lactiveprojectlist lActiveProjectList�z 40 ltodayscompletedtasklist lTodaysCompletedTaskList�y *0 laddedtodaytasklist lAddedTodayTaskList�x 60 lactiveincompletetasklist lActiveIncompleteTaskList�w *0 lwaitingfortasklist lWaitingForTaskList�v &0 lnonemptyprojects lNonEmptyProjects�u 0 thetext theText� 
���t�������s
�t 
leng
�s .ascrcmnt****      � ****�� K�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j 	O�� �r��q�p���o�r 0 tweetstatus tweetStatus�q �n��n �  �m�m 0 v  �p  � �l�k�l 0 v  �k 	0 oflib  � �j�i�j 0 getoflib getOFLib�i 0 	sendtweet 	sendTweet�o *j+  E�O� *�k+ U� �h�g�f���e�h $0 writedailystatus writeDailyStatus�g �d��d �  �c�b�a�`�_�^�c (0 lactiveprojectlist lActiveProjectList�b 40 ltodayscompletedtasklist lTodaysCompletedTaskList�a *0 laddedtodaytasklist lAddedTodayTaskList�` 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�_ 60 lactiveincompletetasklist lActiveIncompleteTaskList�^ $0 lnotwaittasklist lNotWaitTaskList�f  � 	�]�\�[�Z�Y�X�W�V�U�] (0 lactiveprojectlist lActiveProjectList�\ 40 ltodayscompletedtasklist lTodaysCompletedTaskList�[ *0 laddedtodaytasklist lAddedTodayTaskList�Z 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�Y 60 lactiveincompletetasklist lActiveIncompleteTaskList�X $0 lnotwaittasklist lNotWaitTaskList�W 0 thetext theText�V 0 thefilepath theFilePath�U 0 thefile theFile� (�T6DR`n�S�R�Q�P�O��N�M�L�K�J�I�H�G
�T 
leng
�S .ascrcmnt****      � ****
�R afdrdesk
�Q 
rtyp
�P 
TEXT
�O .earsffdralis        afdr
�N 
perm
�M .rdwropenshor       file
�L 
refn
�K 
wrat
�J rdwreof �I 
�H .rdwrwritnull���     ****
�G .rdwrclosnull���     ****�e ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �F��E�D���C�F 0 
writestats 
writeStats�E �B��B 
� 
 �A�@�?�>�=�<�;�:�9�8�A 0 lfolderlist lFolderList�@ 0 lprojectlist lProjectList�? (0 lactiveprojectlist lActiveProjectList�> 0 	ltasklist 	lTaskList�= "0 lactivetasklist lActiveTaskList�< (0 lcompletedtasklist lCompletedTaskList�; *0 lincompletetasklist lIncompleteTaskList�: 40 ltodayscompletedtasklist lTodaysCompletedTaskList�9 &0 lnonrepincomplete lNonRepIncomplete�8 *0 laddedtodaytasklist lAddedTodayTaskList�D  � �7�6�5�4�3�2�1�0�/�.�-�,�+�7 0 lfolderlist lFolderList�6 0 lprojectlist lProjectList�5 (0 lactiveprojectlist lActiveProjectList�4 0 	ltasklist 	lTaskList�3 "0 lactivetasklist lActiveTaskList�2 (0 lcompletedtasklist lCompletedTaskList�1 *0 lincompletetasklist lIncompleteTaskList�0 40 ltodayscompletedtasklist lTodaysCompletedTaskList�/ &0 lnonrepincomplete lNonRepIncomplete�. *0 laddedtodaytasklist lAddedTodayTaskList�- 0 thetext theText�, 0 thefilepath theFilePath�+ 0 thefile theFile� ����*���$2@�)�(�'�&�%W�$�#�"�!� ���
�* 
leng
�) .ascrcmnt****      � ****
�( afdrdesk
�' 
rtyp
�& 
TEXT
�% .earsffdralis        afdr
�$ 
perm
�# .rdwropenshor       file
�" 
refn
�! 
wrat
�  rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�C ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �n������ 0 
writedebug 
writeDebug� ��� �  �� 0 ltask lTask�  � ������� 0 ltask lTask� 0 thetext theText� 0 thedate theDate� 0 thedateonly theDateOnly� 0 thefilepath theFilePath� 0 thefile theFile� t~����������
�	���������
� 
pnam
� 
ID  
� 
FCdc
� 
dstr
� afdrdesk
� 
rtyp
�
 
TEXT
�	 .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� � ���������
�  .aevtoappnull  �   � ****� k    Q��  ��  ����  ��  ��  �  � !����$������������������������������������ ������������� ��� ������� 0 getoflib getOFLib�� 	0 oflib  
�� 
FCDo�� 0 thedocument theDocument�� 0 getprojects getProjects
�� 
rslt�� 0 projectlist projectList�� 0 getcontexts getContexts�� 0 ctxs  �� 20 filterforactiveprojects filterForActiveProjects�� &0 activeprojectlist activeProjectList�� 0 gettasks getTasks�� 0 tasklist taskList
�� .corecnte****       ****�� 0 n  �� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks
�� .ascrcmnt****      � ****��  0 activetasklist activeTaskList�� 40 filterforincompletetasks filterForIncompleteTasks�� 40 activeincompletetasklist activeIncompleteTaskList�� 20 filtercontextsforstring filterContextsForString�� (0 waitingforcontexts waitingForContexts�� :0 filterfortasksoutofcontexts filterForTasksOutOfContexts�� (0 nonwaitingfortasks nonWaitingForTasks�� 40 filterfortasksincontexts filterForTasksInContexts�� "0 waitingfortasks waitingForTasks�� 	0 cname  �� 00 generatestatusfromlist generateStatusFromList�� 
0 svalue  ��R)j+  E�O�F*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� *�k+ 
UO�E�O� 	*��l+ UO�E�O�j E�O� *�k+ UO�E�O�j j O� 	*��l+ UO�E` O� 
*_ k+ UO�E` O� 
*_ k+ UO�E` O� *�a l+ UO�E` O� *_ _ l+ UO�E` O� *_ _ l+ UO�E` Oa _ %E` O_ j Oa _ %E` O_ j O)_ k+ E`  O)_ k+ E`  O)_ k+ E`  O)_ k+ E`  OPU ascr  ��ޭ