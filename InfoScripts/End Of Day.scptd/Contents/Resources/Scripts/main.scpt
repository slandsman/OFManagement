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
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  � !���� ! O   � " # " k   � $ $  % & % r     ' ( ' 1    ��
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
rslt � o      �f�f $0 nonemptyprojects nonEmptyProjects �  � � � l  � ��e�d�c�e  �d  �c   �  � � � O  � � � � � I   � ��b ��a�b 0 getcontexts getContexts �  ��` � o   � ��_�_ 0 thedocument theDocument�`  �a   � o   � ��^�^ 	0 oflib   �  � � � r   � � � � � 1   � ��]
�] 
rslt � o      �\�\ 0 ctxs   �  � � � l  � ��[�Z�Y�[  �Z  �Y   �  � � � O  � � � � I   � �X ��W�X 20 filtercontextsforstring filterContextsForString �  � � � o   � ��V�V 0 ctxs   �  ��U � m   � � � � � � �  W a i t i n g   F o r�U  �W   � o   � ��T�T 	0 oflib   �  � � � r   � � � 1  �S
�S 
rslt � o      �R�R (0 waitingforcontexts waitingForContexts �  � � � l �Q�P�O�Q  �P  �O   �  � � � O  � � � I  �N ��M�N :0 filterfortasksoutofcontexts filterForTasksOutOfContexts �  � � � o  �L�L 40 activeincompletetasklist activeIncompleteTaskList �  ��K � o  �J�J (0 waitingforcontexts waitingForContexts�K  �M   � o  	�I�I 	0 oflib   �  � � � r   � � � 1  �H
�H 
rslt � o      �G�G (0 nonwaitingfortasks nonWaitingForTasks �  � � � l �F�E�D�F  �E  �D   �  � � � O / � � � I  #.�C ��B�C 40 filterfortasksincontexts filterForTasksInContexts �  � � � o  $'�A�A 40 activeincompletetasklist activeIncompleteTaskList �  ��@ � o  '*�?�? (0 waitingforcontexts waitingForContexts�@  �B   � o   �>�> 	0 oflib   �  � � � r  05 � � � 1  01�=
�= 
rslt � o      �<�< "0 waitingfortasks waitingForTasks �  � � � l 66�;�:�9�;  �:  �9   �  � � � r  6P � � � n 6L � � � I  7L�8 ��7�8  0 generatestatus generateStatus �  � � � o  7:�6�6 $0 nonemptyprojects nonEmptyProjects �    o  :=�5�5 20 todayscompletedtasklist todaysCompletedTaskList  o  =@�4�4 (0 addedtodaytasklist addedTodayTaskList  o  @C�3�3 (0 nonwaitingfortasks nonWaitingForTasks �2 o  CF�1�1 "0 waitingfortasks waitingForTasks�2  �7   �  f  67 � o      �0�0 
0 svalue   �  l QQ�/�.�-�/  �.  �-   	
	 r  Qm I Qi�,
�, .sysodlogaskr        TEXT m  QT � $ T w e e t   d a i l y   s t a t u s �+
�+ 
btns J  W_  m  WZ �  Y e s �* m  Z] �  C a n c e l�*   �)�(
�) 
dflt m  bc�'�' �(   o      �&�& 0 question  
  r  ny n  nu !  1  qu�%
�% 
bhit! o  nq�$�$ 0 question   o      �#�# 
0 answer   "#" l zz�"�!� �"  �!  �   # $%$ Z  z�&'��& = z�()( o  z}�� 
0 answer  ) m  }�** �++  Y e s' n ��,-, I  ���.�� 0 tweetstatus tweetStatus. /�/ o  ���� 
0 svalue  �  �  -  f  ���  �  % 0�0 l ������  �  �  �   # m    	11�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��     232 l     ����  �  �  3 454 l     ����  �  �  5 676 i   
 898 I      ���� 0 	pathtolib 	pathToLib�  �  9 k     :: ;<; r     	=>= l    ?��
? I    �	@A
�	 .earsffdralis        afdr@  f     A �B�
� 
fromB m    �
� fldmfldu�  �  �
  > o      �� 0 apppath appPath< CDC l   
 
�EF�  E y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string   F �GG � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n gD HIH l  
 
����  �  �  I JKJ L   
 LL c   
 MNM l  
 O� ��O b   
 PQP o   
 ���� 0 apppath appPathQ m    RR �SS 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�   ��  N m    ��
�� 
ctxtK T��T L    UU n    VWV 1    ��
�� 
strqW o    ���� 0 myfolderpath myFolderPath��  7 XYX l     ��������  ��  ��  Y Z[Z i    \]\ I      �������� 0 getoflib getOFLib��  ��  ] k     ^^ _`_ r     aba I    ��c��
�� .sysoloadscpt        filec 4     
��d
�� 
filed l   	e����e b    	fgf n   hih I    �������� 0 	pathtolib 	pathToLib��  ��  i  f    g m    jj �kk  O F L i b . s c p t��  ��  ��  b o      ���� 0 thelib theLib` l��l L    mm o    ���� 0 thelib theLib��  [ non l     ��������  ��  ��  o pqp i    rsr I      ��t����  0 generatestatus generateStatust uvu o      ���� (0 lactiveprojectlist lActiveProjectListv wxw o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskListx yzy o      ���� *0 laddedtodaytasklist lAddedTodayTaskListz {|{ o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList| }��} o      ���� $0 lwaitingfortasks lWaitingForTasks��  ��  s w     @~~ k    @�� ��� r    ��� m    �� ��� 8 S e t h ' s   e n d   o f   d a y   s t a t u s   i s  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� o    ���� 0 thetext theText� n    
��� 1    
��
�� 
leng� o    ���� (0 lactiveprojectlist lActiveProjectList� m    �� ��� $   a c t i v e   p r o j e c t s ,  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� o    ���� 0 thetext theText� n    ��� 1    ��
�� 
leng� o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� m    �� ��� &   t a s k s   d o n e   t o d a y ,  � o      ���� 0 thetext theText� ��� r    #��� b    !��� b    ��� o    ���� 0 thetext theText� n    ��� 1    ��
�� 
leng� o    ���� *0 laddedtodaytasklist lAddedTodayTaskList� m     �� ��� (   t a s k s   a d d e d   t o d a y ,  � o      ���� 0 thetext theText� ��� r   $ -��� b   $ +��� b   $ )��� o   $ %���� 0 thetext theText� n   % (��� 1   & (��
�� 
leng� o   % &���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� m   ) *�� ���    o p e n   t a s k s ,  � o      ���� 0 thetext theText� ��� r   . 7��� b   . 5��� b   . 3��� o   . /���� 0 thetext theText� n   / 2��� 1   0 2��
�� 
leng� o   / 0���� $0 lwaitingfortasks lWaitingForTasks� m   3 4�� ���    w a i t i n g   f o r s� o      ���� 0 thetext theText� ��� l  8 8��������  ��  ��  � ��� I  8 =�����
�� .ascrcmnt****      � ****� o   8 9���� 0 thetext theText��  � ��� l  > >��������  ��  ��  � ���� L   > @�� o   > ?���� 0 thetext theText��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  q ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � k     �� ��� r     ��� I     �������� 0 getoflib getOFLib��  ��  � o      ���� 	0 oflib  � ���� O   ��� I    ������� 0 	sendtweet 	sendTweet� ���� o    ���� 0 v  ��  ��  � o    	���� 	0 oflib  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     ���� k    ��� ��� r    ��� m    �� ���  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    � � b    	 o    ���� 0 thetext theText m     � " a c t i v e   p r o j e c t s :    n   	  1   
 ��
�� 
leng o   	 
���� (0 lactiveprojectlist lActiveProjectList� o    ���� 0 nl  � o      ���� 0 thetext theText�  r    %	
	 b    # b     b     o    ���� 0 thetext theText m     � 2 t o d a y ' s   c o m p l e t e d   t a s k s :   n     1    ��
�� 
leng o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList o    "���� 0 nl  
 o      ���� 0 thetext theText  r   & 5 b   & 3 b   & - b   & ) o   & '���� 0 thetext theText m   ' ( �   & T a s k s   a d d e d   t o d a y :   n   ) ,!"! 1   * ,��
�� 
leng" o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList o   - 2���� 0 nl   o      ���� 0 thetext theText #$# r   6 E%&% b   6 C'(' b   6 =)*) b   6 9+,+ o   6 7���� 0 thetext theText, m   7 8-- �.. , N o n - w a i t   a d d e d   t o d a y :  * n   9 </0/ 1   : <��
�� 
leng0 o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList( o   = B���� 0 nl  & o      ���� 0 thetext theText$ 121 r   F U343 b   F S565 b   F M787 b   F I9:9 o   F G���� 0 thetext theText: m   G H;; �<< 2 A c t i v e   i n c o m p l e t e   t a s k s :  8 n   I L=>= 1   J L��
�� 
leng> o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskList6 o   M R���� 0 nl  4 o      ���� 0 thetext theText2 ?@? r   V eABA b   V cCDC b   V ]EFE b   V YGHG o   V W���� 0 thetext theTextH m   W XII �JJ L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  F n   Y \KLK 1   Z \��
�� 
lengL o   Y Z���� $0 lnotwaittasklist lNotWaitTaskListD o   ] b���� 0 nl  B o      ���� 0 thetext theText@ MNM l  f f�������  ��  �  N OPO l  f f�~�}�|�~  �}  �|  P QRQ I  f k�{S�z
�{ .ascrcmnt****      � ****S o   f g�y�y 0 thetext theText�z  R TUT l  l l�x�w�v�x  �w  �v  U VWV r   l yXYX c   l wZ[Z b   l u\]\ l  l s^�u�t^ I  l s�s_`
�s .earsffdralis        afdr_ m   l m�r
�r afdrdesk` �qa�p
�q 
rtypa m   n o�o
�o 
TEXT�p  �u  �t  ] m   s tbb �cc  o f   t o d a y . t x t[ m   u v�n
�n 
TEXTY o      �m�m 0 thefilepath theFilePathW ded r   z �fgf I  z ��lhi
�l .rdwropenshor       fileh o   z {�k�k 0 thefilepath theFilePathi �jj�i
�j 
permj m   | }�h
�h boovtrue�i  g o      �g�g 0 thefile theFilee klk I  � ��fmn
�f .rdwrwritnull���     ****m o   � ��e�e 0 thetext theTextn �dop
�d 
refno o   � ��c�c 0 thefile theFilep �bq�a
�b 
wratq m   � ��`
�` rdwreof �a  l r�_r I  � ��^s�]
�^ .rdwrclosnull���     ****s o   � ��\�\ 0 thefile theFile�]  �_  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � tut l     �[�Z�Y�[  �Z  �Y  u vwv i    !xyx I      �Xz�W�X 0 
writestats 
writeStatsz {|{ o      �V�V 0 lfolderlist lFolderList| }~} o      �U�U 0 lprojectlist lProjectList~ � o      �T�T (0 lactiveprojectlist lActiveProjectList� ��� o      �S�S 0 	ltasklist 	lTaskList� ��� o      �R�R "0 lactivetasklist lActiveTaskList� ��� o      �Q�Q (0 lcompletedtasklist lCompletedTaskList� ��� o      �P�P *0 lincompletetasklist lIncompleteTaskList� ��� o      �O�O 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      �N�N &0 lnonrepincomplete lNonRepIncomplete� ��M� o      �L�L *0 laddedtodaytasklist lAddedTodayTaskList�M  �W  y w     ���� k    ��� ��� l    �K���K  � b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   � ��� � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t� ��� r    ��� m    �� ���  � o      �J�J 0 thetext theText� ��� l    �I���I  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    �H�H 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �G
�G 
leng� o   	 
�F�F 0 lprojectlist lProjectList� o    �E�E 0 nl  � o      �D�D 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    �C�C 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �B
�B 
leng� o    �A�A (0 lactiveprojectlist lActiveProjectList� o    "�@�@ 0 nl  � o      �?�? 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�>�> 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�=
�= 
leng� o   ) *�<�< 0 	ltasklist 	lTaskList� o   - 2�;�; 0 nl  � o      �:�: 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�9�9 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�8
�8 
leng� o   9 :�7�7 "0 lactivetasklist lActiveTaskList� o   = B�6�6 0 nl  � o      �5�5 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�4�4 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�3
�3 
leng� o   I J�2�2 (0 lcompletedtasklist lCompletedTaskList� o   M R�1�1 0 nl  � o      �0�0 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y��� o   V W�/�/ 0 thetext theText� m   W X�� ��� $ i n c o m p l e t e   t a s k s :  � n   Y \��� 1   Z \�.
�. 
leng� o   Y Z�-�- *0 lincompletetasklist lIncompleteTaskList� o   ] b�,�, 0 nl  � o      �+�+ 0 thetext theText� ��� r   f u��� b   f s��� b   f m��� b   f i��� o   f g�*�* 0 thetext theText� m   g h�� �   2 t o d a y ' s   c o m p l e t e d   t a s k s :  � n   i l 1   j l�)
�) 
leng o   i j�(�( 40 ltodayscompletedtasklist lTodaysCompletedTaskList� o   m r�'�' 0 nl  � o      �&�& 0 thetext theText�  r   v � b   v � b   v }	
	 b   v y o   v w�%�% 0 thetext theText m   w x � 4 N o n   r e p e a t i n g   i n c o m p l e t e :  
 n   y | 1   z |�$
�$ 
leng o   y z�#�# &0 lnonrepincomplete lNonRepIncomplete o   } ��"�" 0 nl   o      �!�! 0 thetext theText  r   � � b   � � b   � � b   � � o   � �� �  0 thetext theText m   � � � & T a s k s   a d d e d   t o d a y :   n   � � 1   � ��
� 
leng o   � ��� *0 laddedtodaytasklist lAddedTodayTaskList o   � ��� 0 nl   o      �� 0 thetext theText   l  � �����  �  �    !"! I  � ��#�
� .ascrcmnt****      � ****# o   � ��� 0 thetext theText�  " $%$ l  � �����  �  �  % &'& r   � �()( c   � �*+* b   � �,-, l  � �.��. I  � ��/0
� .earsffdralis        afdr/ m   � ��
� afdrdesk0 �1�
� 
rtyp1 m   � ��
� 
TEXT�  �  �  - m   � �22 �33  o f . t x t+ m   � ��
� 
TEXT) o      �
�
 0 thefilepath theFilePath' 454 r   � �676 I  � ��	89
�	 .rdwropenshor       file8 o   � ��� 0 thefilepath theFilePath9 �:�
� 
perm: m   � ��
� boovtrue�  7 o      �� 0 thefile theFile5 ;<; I  � ��=>
� .rdwrwritnull���     ****= o   � ��� 0 thetext theText> �?@
� 
refn? o   � �� �  0 thefile theFile@ ��A��
�� 
wratA m   � ���
�� rdwreof ��  < B��B I  � ���C��
�� .rdwrclosnull���     ****C o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  w DED l     ��������  ��  ��  E FGF i   " %HIH I      ��J���� 0 
writedebug 
writeDebugJ K��K o      ���� 0 ltask lTask��  ��  I Z     �LM����L o     ���� 	0 debug  M w    NON k   
 PP QRQ r   
 STS b   
 UVU b   
 WXW m   
 YY �ZZ  T a s k   n a m e   i s  X n   [\[ 1    ��
�� 
pnam\ o    ���� 0 ltask lTaskV o    ���� 0 nl  T o      ���� 0 thetext theTextR ]^] r    %_`_ b    #aba b    cdc m    ee �ff  T a s k   i d   i s  d n   ghg 1    ��
�� 
ID  h o    ���� 0 ltask lTaskb o    "���� 0 nl  ` o      ���� 0 thetext theText^ iji r   & 5klk b   & 3mnm b   & -opo b   & )qrq o   & '���� 0 thetext theTextr m   ' (ss �tt & C o m p l e t i o n   d a t e   i s  p n  ) ,uvu 1   * ,��
�� 
FCdcv o   ) *���� 0 ltask lTaskn o   - 2���� 0 nl  l o      ���� 0 thetext theTextj wxw r   6 ;yzy n  6 9{|{ 1   7 9��
�� 
FCdc| o   6 7���� 0 ltask lTaskz o      ���� 0 thedate theDatex }~} r   < A� n   < ?��� 1   = ?��
�� 
dstr� o   < =���� 0 thedate theDate� o      ���� 0 thedateonly theDateOnly~ ��� r   B O��� b   B M��� b   B G��� b   B E��� o   B C���� 0 thetext theText� m   C D�� ��� 4 C o m p l e t i o n   d a t e   i s   r e a l l y  � o   E F���� 0 thedateonly theDateOnly� o   G L���� 0 nl  � o      ���� 0 thetext theText� ��� r   P ]��� c   P [��� b   P Y��� l  P W������ I  P W����
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
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  O�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  ��  ��  G ���� l     ��������  ��  ��  ��       ����������������  � 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� ��9���������� 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ������R����
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��]���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����j��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� ��s����������  0 generatestatus generateStatus�� ����� �  ������������ (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lwaitingfortasks lWaitingForTasks��  � �������������� (0 lactiveprojectlist lActiveProjectList�� 40 ltodayscompletedtasklist lTodaysCompletedTaskList�� *0 laddedtodaytasklist lAddedTodayTaskList�� 60 lactiveincompletetasklist lActiveIncompleteTaskList�� $0 lwaitingfortasks lWaitingForTasks�� 0 thetext theText� 	����������
�� 
leng
�� .ascrcmnt****      � ****�� A�Z�E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O���,%�%E�O�j O�� ������������� 0 tweetstatus tweetStatus�� ����� �  ���� 0 v  ��  � ������ 0 v  �� 	0 oflib  � ����� 0 getoflib getOFLib� 0 	sendtweet 	sendTweet�� *j+  E�O� *�k+ U� �~��}�|���{�~ $0 writedailystatus writeDailyStatus�} �z��z �  �y�x�w�v�u�t�y (0 lactiveprojectlist lActiveProjectList�x 40 ltodayscompletedtasklist lTodaysCompletedTaskList�w *0 laddedtodaytasklist lAddedTodayTaskList�v 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�u 60 lactiveincompletetasklist lActiveIncompleteTaskList�t $0 lnotwaittasklist lNotWaitTaskList�|  � 	�s�r�q�p�o�n�m�l�k�s (0 lactiveprojectlist lActiveProjectList�r 40 ltodayscompletedtasklist lTodaysCompletedTaskList�q *0 laddedtodaytasklist lAddedTodayTaskList�p 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�o 60 lactiveincompletetasklist lActiveIncompleteTaskList�n $0 lnotwaittasklist lNotWaitTaskList�m 0 thetext theText�l 0 thefilepath theFilePath�k 0 thefile theFile� ���j-;I�i�h�g�f�eb�d�c�b�a�`�_�^�]
�j 
leng
�i .ascrcmnt****      � ****
�h afdrdesk
�g 
rtyp
�f 
TEXT
�e .earsffdralis        afdr
�d 
perm
�c .rdwropenshor       file
�b 
refn
�a 
wrat
�` rdwreof �_ 
�^ .rdwrwritnull���     ****
�] .rdwrclosnull���     ****�{ ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �\y�[�Z���Y�\ 0 
writestats 
writeStats�[ �X��X 
� 
 �W�V�U�T�S�R�Q�P�O�N�W 0 lfolderlist lFolderList�V 0 lprojectlist lProjectList�U (0 lactiveprojectlist lActiveProjectList�T 0 	ltasklist 	lTaskList�S "0 lactivetasklist lActiveTaskList�R (0 lcompletedtasklist lCompletedTaskList�Q *0 lincompletetasklist lIncompleteTaskList�P 40 ltodayscompletedtasklist lTodaysCompletedTaskList�O &0 lnonrepincomplete lNonRepIncomplete�N *0 laddedtodaytasklist lAddedTodayTaskList�Z  � �M�L�K�J�I�H�G�F�E�D�C�B�A�M 0 lfolderlist lFolderList�L 0 lprojectlist lProjectList�K (0 lactiveprojectlist lActiveProjectList�J 0 	ltasklist 	lTaskList�I "0 lactivetasklist lActiveTaskList�H (0 lcompletedtasklist lCompletedTaskList�G *0 lincompletetasklist lIncompleteTaskList�F 40 ltodayscompletedtasklist lTodaysCompletedTaskList�E &0 lnonrepincomplete lNonRepIncomplete�D *0 laddedtodaytasklist lAddedTodayTaskList�C 0 thetext theText�B 0 thefilepath theFilePath�A 0 thefile theFile� ����@�������?�>�=�<�;2�:�9�8�7�6�5�4�3
�@ 
leng
�? .ascrcmnt****      � ****
�> afdrdesk
�= 
rtyp
�< 
TEXT
�; .earsffdralis        afdr
�: 
perm
�9 .rdwropenshor       file
�8 
refn
�7 
wrat
�6 rdwreof �5 
�4 .rdwrwritnull���     ****
�3 .rdwrclosnull���     ****�Y ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �2I�1�0���/�2 0 
writedebug 
writeDebug�1 �.��. �  �-�- 0 ltask lTask�0  � �,�+�*�)�(�'�, 0 ltask lTask�+ 0 thetext theText�* 0 thedate theDate�) 0 thedateonly theDateOnly�( 0 thefilepath theFilePath�' 0 thefile theFile� OY�&e�%s�$�#��"�!� ����������
�& 
pnam
�% 
ID  
�$ 
FCdc
�# 
dstr
�" afdrdesk
�! 
rtyp
�  
TEXT
� .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�/ �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �������
� .aevtoappnull  �   � ****� k    ���  ��  ��  �  �  �  � 2��1������
�	��������� ������������������ ���������������������������������*��� 0 getoflib getOFLib� 	0 oflib  
� 
FCDo� 0 thedocument theDocument� 0 getprojects getProjects
� 
rslt� 0 projectlist projectList�
 20 filterforactiveprojects filterForActiveProjects�	 &0 activeprojectlist activeProjectList� 0 gettasks getTasks� 0 tasklist taskList� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�  0 activetasklist activeTaskList� 20 filterforcompletedtasks filterForCompletedTasks� &0 completedtasklist completedTaskList
� .misccurdldt    ��� null
� 
dstr�  >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 20 todayscompletedtasklist todaysCompletedTaskList�� 40 filterforincompletetasks filterForIncompleteTasks�� 40 activeincompletetasklist activeIncompleteTaskList�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� (0 addedtodaytasklist addedTodayTaskList�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� $0 nonemptyprojects nonEmptyProjects�� 0 getcontexts getContexts�� 0 ctxs  �� 20 filtercontextsforstring filterContextsForString�� (0 waitingforcontexts waitingForContexts�� :0 filterfortasksoutofcontexts filterForTasksOutOfContexts�� (0 nonwaitingfortasks nonWaitingForTasks�� 40 filterfortasksincontexts filterForTasksInContexts�� "0 waitingfortasks waitingForTasks�� ��  0 generatestatus generateStatus�� 
0 svalue  
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 question  
�� 
bhit�� 
0 answer  �� 0 tweetstatus tweetStatus��)j+  E�O��*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� 	*��l+ 
UO�E�O� *�k+ UO�E�O� *�k+ UO�E�O� *�*j a ,l+ UO�E` O� *�k+ UO�E` O� *�*j a ,l+ UO�E` O� 	*�jl+ UO�E` O� *�k+ UO�E` O� *_ a l+ UO�E` O� *_ _ l+ UO�E`  O� *_ _ l+ !UO�E` "O)_ _ _ _  _ "a #+ $E` %Oa &a 'a (a )lva *la + ,E` -O_ -a .,E` /O_ /a 0  )_ %k+ 1Y hOPU ascr  ��ޭ