FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Script library for the manipulation of OmniFocus.

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released JAN2010
     � 	 	. 
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
   
  
 l     ��������  ��  ��        l      ��  ��    l f SECTION 1: Get a list of all first class objects.
 - Folders
 - Projects
 - Tasks
 - TasksInAProject
     �   �   S E C T I O N   1 :   G e t   a   l i s t   o f   a l l   f i r s t   c l a s s   o b j e c t s . 
   -   F o l d e r s 
   -   P r o j e c t s 
   -   T a s k s 
   -   T a s k s I n A P r o j e c t 
      l     ��������  ��  ��        l      ��  ��    7 1 1a: folders and utility associated with folders      �   b   1 a :   f o l d e r s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   f o l d e r s        l      ��  ��    F @ Get all folders of a document. Return a list of folder objects      �   �   G e t   a l l   f o l d e r s   o f   a   d o c u m e n t .   R e t u r n   a   l i s t   o f   f o l d e r   o b j e c t s        i          I      �� !���� 0 
getfolders 
getFolders !  "�� " o      ���� 0 	ldocument 	lDocument��  ��     w     , # $ # k    , % %  & ' & r     ( ) ( n     * + * 2   ��
�� 
FCAr + o    ���� 0 	ldocument 	lDocument ) o      ���� 0 
folderlist 
folderList '  , - , X    ) .�� / . r    $ 0 1 0 b    " 2 3 2 o    ���� 0 
folderlist 
folderList 3 I    !�� 4���� *0 getfoldersoffolders getFoldersOfFolders 4  5�� 5 n     6 7 6 2   ��
�� 
FCAr 7 o    ���� 0 
thisfolder 
thisFolder��  ��   1 o      ���� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder / o    ���� 0 
folderlist 
folderList -  8 9 8 l  * *��������  ��  ��   9  :�� : L   * , ; ; o   * +���� 0 
folderlist 
folderList��   $�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� *0 getfoldersoffolders getFoldersOfFolders B  C�� C o      ���� 0 lfolders lFolders��  ��   A w     & D E D k    & F F  G H G X    # I�� J I r     K L K b     M N M o    ���� 0 lfolders lFolders N I    �� O���� *0 getfoldersoffolders getFoldersOfFolders O  P�� P n     Q R Q 2   ��
�� 
FCAr R o    ���� 0 
thisfolder 
thisFolder��  ��   L o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder J o    ���� 0 lfolders lFolders H  S T S l  $ $��������  ��  ��   T  U�� U L   $ & V V o   $ %���� 0 lfolders lFolders��   E�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ?  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ 9 3 1b: projects and utility associated with projects     \ � ] ] f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s   Z  ^ _ ^ i     ` a ` I      �� b���� 0 getprojects getProjects b  c�� c o      ���� 0 	ldocument 	lDocument��  ��   a w     3 d e d k    3 f f  g h g r    
 i j i n    k l k I    �� m���� 0 
getfolders 
getFolders m  n�� n o    ���� 0 	ldocument 	lDocument��  ��   l  f     j o      ���� 0 lfolderlist lFolderList h  o p o r     q r q l    s���� s n     t u t 2   ��
�� 
FCpr u o    ���� 0 	ldocument 	lDocument��  ��   r o      ���� 0 projectlist projectList p  v w v X    0 x�� y x r   ! + z { z b   ! ) | } | o   ! "���� 0 projectlist projectList } n  " ( ~  ~ I   # (�� ����� .0 getprojectsfromfolder getProjectsFromFolder �  ��� � o   # $���� 0 
thisfolder 
thisFolder��  ��     f   " # { o      ���� 0 projectlist projectList�� 0 
thisfolder 
thisFolder y o    ���� 0 lfolderlist lFolderList w  ��� � L   1 3 � � o   1 2���� 0 projectlist projectList��   e�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   _  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� .0 getprojectsfromfolder getProjectsFromFolder �  ��� � o      ���� 0 lfolder lFolder��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCpr � o    ���� 0 lfolder lFolder ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � 3 - 1a: tasks and utility associated with tasks     � � � � Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document     � � � ��   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t   �  � � � i     � � � I      �� ����� 0 gettasks getTasks �  � � � o      ���� 0 	ldocument 	lDocument �  ��� � o      ���� 0 lprojectlist lProjectList��  ��   � w     * � � � k    * � �  � � � r     � � � n     � � � 2   ��
�� 
FCac � o    ���� 0 	ldocument 	lDocument � o      ���� 0 tasklist taskList �  � � � X    ' ��� � � r    " � � � b      � � � o    ���� 0 tasklist taskList � I    �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o    ���� 0 thisproject thisProject��  ��   � o      ���� 0 tasklist taskList�� 0 thisproject thisProject � o    ���� 0 lprojectlist lProjectList �  ��� � L   ( * � � o   ( )���� 0 tasklist taskList��   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ,0 gettasksfromdocument getTasksFromDocument �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w     3 � � � k    3 � �  � � � r    
 � � � I    �� ����� 0 getprojects getProjects �  ��� � o    ���� 0 	ldocument 	lDocument��  ��   � o      ���� 0 lprojectlist lProjectList �  � � � r     � � � n     � � � 2   �
� 
FCac � o    �~�~ 0 	ldocument 	lDocument � o      �}�} 0 tasklist taskList �  � � � X    0 ��| � � r   ! + � � � b   ! ) � � � o   ! "�{�{ 0 tasklist taskList � I   " (�z ��y�z 0 gettasks getTasks �  ��x � o   # $�w�w 0 thisproject thisProject�x  �y   � o      �v�v 0 tasklist taskList�| 0 thisproject thisProject � o    �u�u 0 lprojectlist lProjectList �  ��t � L   1 3 � � o   1 2�s�s 0 tasklist taskList�t   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     �r�q�p�r  �q  �p   �  � � � i     � � � I      �o ��n�o *0 gettasksfromproject getTasksFromProject �  ��m � o      �l�l 0 lproject lProject�m  �n   � w      � � � L     � � n     � � � 2   �k
�k 
FCac � o    �j�j 0 lproject lProject ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     �i�h�g�i  �h  �g   �  � � � l      �f � ��f   � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 �  � � � l     �e�d�c�e  �d  �c   �  � � � i     � � � I      �b ��a�b 20 filterforactiveprojects filterForActiveProjects �  ��` � o      �_�_ 0 lprojectlist lProjectList�`  �a   � w     > � � � k    > � �  � � � r       J    �^�^   o      �]�] 0 projectlist projectList �  X    ;�\ k    6  r    	
	 n     1    �[
�[ 
pnam o    �Z�Z 0 thisproject thisProject
 o      �Y�Y 0 n    I   "�X�W
�X .ascrcmnt****      � **** o    �V�V 0 n  �W   �U Z   # 6�T�S =  # ( n  # & 1   $ &�R
�R 
FCPs o   # $�Q�Q 0 thisproject thisProject m   & '�P
�P FCPsFCPa r   + 2 b   + 0 o   + ,�O�O 0 projectlist projectList J   , / �N o   , -�M�M 0 thisproject thisProject�N   o      �L�L 0 projectlist projectList�T  �S  �U  �\ 0 thisproject thisProject o   
 �K�K 0 lprojectlist lProjectList �J L   < > o   < =�I�I 0 projectlist projectList�J   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �   l     �H�G�F�H  �G  �F    !"! i     ##$# I      �E%�D�E B0 filterprojectsforsingletonlists filterProjectsForSingletonLists% &�C& o      �B�B 0 lprojectlist lProjectList�C  �D  $ w     2'(' k    2)) *+* r    ,-, J    �A�A  - o      �@�@ 0 projectlist projectList+ ./. X    /0�?10 Z    *23�>�=2 =   454 n   676 1    �<
�< 
FC.A7 o    �;�; 0 thisproject thisProject5 m    �:
�: boovtrue3 r    &898 b    $:;: o     �9�9 0 projectlist projectList; J     #<< =�8= o     !�7�7 0 thisproject thisProject�8  9 o      �6�6 0 projectlist projectList�>  �=  �? 0 thisproject thisProject1 o   
 �5�5 0 lprojectlist lProjectList/ >�4> L   0 2?? o   0 1�3�3 0 projectlist projectList�4  (�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  " @A@ l     �2�1�0�2  �1  �0  A BCB i   $ 'DED I      �/F�.�/ H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonListsF G�-G o      �,�, 0 lprojectlist lProjectList�-  �.  E w     2HIH k    2JJ KLK r    MNM J    �+�+  N o      �*�* 0 projectlist projectListL OPO X    /Q�)RQ Z    *ST�(�'S =   UVU n   WXW 1    �&
�& 
FC.AX o    �%�% 0 thisproject thisProjectV m    �$
�$ boovfalsT r    &YZY b    $[\[ o     �#�# 0 projectlist projectList\ J     #]] ^�"^ o     !�!�! 0 thisproject thisProject�"  Z o      � �  0 projectlist projectList�(  �'  �) 0 thisproject thisProjectR o   
 �� 0 lprojectlist lProjectListP _�_ L   0 2`` o   0 1�� 0 projectlist projectList�  I�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  C aba l     ����  �  �  b cdc l      �ef�  e � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   f �gg   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
d hih i   ( +jkj I      �l�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDatel mnm o      �� 0 lprojectlist lProjectListn o�o o      �� 0 ldate lDate�  �  k w     �pqp k    �rr sts r    uvu J    ��  v o      �� 0 projectlist projectListt wxw r    yzy n    
{|{ 1    
�
� 
dstr| o    �� 0 ldate lDatez o      �� 	0 cdate  x }~} X    ��� k    ��� ��� r    %��� I    #���� *0 gettasksfromproject getTasksFromProject� ��� o    �
�
 0 thisproject thisProject�  �  � o      �	�	 0 tasklist taskList� ��� r   & )��� m   & '�
� boovfals� o      �� 0 flag  � ��� X   * r���� k   : m�� ��� r   : ?��� n  : =��� 1   ; =�
� 
FCDa� o   : ;�� 0 thistask thisTask� o      �� 
0 tcdate  � ��� r   @ E��� n  @ C��� 1   A C�
� 
FCDm� o   @ A�� 0 thistask thisTask� o      � �  
0 tmdate  � ��� r   F K��� n   F I��� 1   G I��
�� 
dstr� o   F G���� 
0 tcdate  � o      ���� 0 tcds  � ��� r   L Q��� n   L O��� 1   M O��
�� 
dstr� o   L M���� 
0 tmdate  � o      ���� 0 tmds  � ��� Z   R _������� =  R U��� o   R S���� 0 tcds  � o   S T���� 	0 cdate  � r   X [��� m   X Y��
�� boovtrue� o      ���� 0 flag  ��  ��  � ���� Z   ` m������� =  ` c��� o   ` a���� 0 tmds  � o   a b���� 	0 cdate  � r   f i��� m   f g��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  � 0 thistask thisTask� o   - .���� 0 tasklist taskList� ���� Z   s �������� o   s t���� 0 flag  � r   w ~��� b   w |��� o   w x���� 0 projectlist projectList� J   x {�� ���� o   x y���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  � 0 thisproject thisProject� o    ���� 0 lprojectlist lProjectList~ ���� L   � ��� o   � ����� 0 projectlist projectList��  q�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  i ��� l     ��������  ��  ��  � ��� l      ������  � � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
   � ���Z   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
� ��� i   , /��� I      ������� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 ldate lDate��  ��  � w     x��� k    x�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    u����� k    p�� ��� r    ��� I    ������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r     #��� m     !��
�� boovfals� o      ���� 0 flag  � ��� X   $ `����� k   4 [�� ��� r   4 9��� n  4 7��� 1   5 7��
�� 
FCDa� o   4 5���� 0 thistask thisTask� o      ���� 
0 tcdate  � ��� r   : ?��� n  : =��� 1   ; =��
�� 
FCDm� o   : ;���� 0 thistask thisTask� o      ���� 
0 tmdate  � ��� l  @ @��������  ��  ��  � ��� Z   @ M������� A   @ C� � o   @ A���� 
0 tcdate    o   A B���� 0 ldate lDate� r   F I m   F G��
�� boovtrue o      ���� 0 flag  ��  ��  �  l  N N��������  ��  ��   �� Z   N [���� A   N Q	 o   N O���� 
0 tmdate  	 o   O P���� 0 ldate lDate r   T W

 m   T U��
�� boovtrue o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� �� Z   a p���� o   a b���� 0 flag   r   e l b   e j o   e f���� 0 projectlist projectList J   f i �� o   f g���� 0 thisproject thisProject��   o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� �� L   v x o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    l      ����   � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
    � �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
  i   0 3 !  I      ��"���� 20 filterforcompletedtasks filterForCompletedTasks" #��# o      ���� 0 	ltasklist 	lTaskList��  ��  ! w     2$%$ k    2&& '(' r    )*) J    ����  * o      ���� 0 tasklist taskList( +,+ X    /-��.- Z    */0����/ =   121 n    343 1    ��
�� 
FCcd4 o    ���� 0 thistask thisTask2 m    ��
�� boovtrue0 r    &565 b    $787 o     ���� 0 tasklist taskList8 J     #99 :��: o     !���� 0 thistask thisTask��  6 o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask. o   
 ���� 0 	ltasklist 	lTaskList, ;��; L   0 2<< o   0 1���� 0 tasklist taskList��  %�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   =>= l     ��������  ��  ��  > ?@? i   4 7ABA I      ��C���� >0 filterforcompletedtasksondate filterForCompletedTasksOnDateC DED o      ���� 0 	ltasklist 	lTaskListE F��F o      ���� 0 ldate lDate��  ��  B w     <GHG k    <II JKJ r    LML J    ����  M o      ���� 0 tasklist taskListK NON X    9P��QP k    4RR STS r    UVU n   WXW 1    ��
�� 
FCdcX o    ���� 0 thistask thisTaskV o      ���� 0 
thistaskcd 
thisTaskCDT YZY r    "[\[ n     ]^] 1     ��
�� 
dstr^ o    ���� 0 
thistaskcd 
thisTaskCD\ o      ���� (0 thistaskdatestring thisTaskDateStringZ _�_ Z   # 4`a�~�}` =  # &bcb o   # $�|�| (0 thistaskdatestring thisTaskDateStringc o   $ %�{�{ 0 ldate lDatea r   ) 0ded b   ) .fgf o   ) *�z�z 0 tasklist taskListg J   * -hh i�yi o   * +�x�x 0 thistask thisTask�y  e o      �w�w 0 tasklist taskList�~  �}  �  �� 0 thistask thisTaskQ o   
 �v�v 0 	ltasklist 	lTaskListO j�uj L   : <kk o   : ;�t�t 0 tasklist taskList�u  H�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  @ lml l     �s�r�q�s  �r  �q  m non i   8 ;pqp I      �pr�o�p 40 filterforincompletetasks filterForIncompleteTasksr s�ns o      �m�m 0 	ltasklist 	lTaskList�n  �o  q w     2tut k    2vv wxw r    yzy J    �l�l  z o      �k�k 0 tasklist taskListx {|{ X    /}�j~} Z    *��i�h >   ��� n    ��� 1    �g
�g 
FCcd� o    �f�f 0 thistask thisTask� m    �e
�e boovtrue� r    &��� b    $��� o     �d�d 0 tasklist taskList� J     #�� ��c� o     !�b�b 0 thistask thisTask�c  � o      �a�a 0 tasklist taskList�i  �h  �j 0 thistask thisTask~ o   
 �`�` 0 	ltasklist 	lTaskList| ��_� L   0 2�� o   0 1�^�^ 0 tasklist taskList�_  u�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  o ��� l     �]�\�[�]  �\  �[  � ��� i   < ?��� I      �Z��Y�Z 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��X� o      �W�W 0 	ltasklist 	lTaskList�X  �Y  � w     2��� k    2�� ��� r    ��� J    �V�V  � o      �U�U 0 tasklist taskList� ��� X    /��T�� Z    *���S�R� =   ��� n   ��� 1    �Q
�Q 
FCRp� o    �P�P 0 thistask thisTask� m    �O
�O 
msng� r    &��� b    $��� o     �N�N 0 tasklist taskList� J     #�� ��M� o     !�L�L 0 thistask thisTask�M  � o      �K�K 0 tasklist taskList�S  �R  �T 0 thistask thisTask� o   
 �J�J 0 	ltasklist 	lTaskList� ��I� L   0 2�� o   0 1�H�H 0 tasklist taskList�I  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �G�F�E�G  �F  �E  � ��� i   @ C��� I      �D��C�D 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      �B�B 0 	ltasklist 	lTaskList� ��A� o      �@�@ 0 ldate lDate�A  �C  � w     <��� k    <�� ��� r    ��� J    �?�?  � o      �>�> 0 tasklist taskList� ��� X    9��=�� k    4�� ��� r    ��� n   ��� 1    �<
�< 
FCDa� o    �;�; 0 thistask thisTask� o      �:�: 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �9
�9 
dstr� o    �8�8 0 
thistaskcd 
thisTaskCD� o      �7�7 (0 thistaskdatestring thisTaskDateString� ��6� Z   # 4���5�4� =  # &��� o   # $�3�3 (0 thistaskdatestring thisTaskDateString� o   $ %�2�2 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�1�1 0 tasklist taskList� J   * -�� ��0� o   * +�/�/ 0 thistask thisTask�0  � o      �.�. 0 tasklist taskList�5  �4  �6  �= 0 thistask thisTask� o   
 �-�- 0 	ltasklist 	lTaskList� ��,� L   : <�� o   : ;�+�+ 0 tasklist taskList�,  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �*�)�(�*  �)  �(  � ��� i   D G��� I      �'��&�' L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��%� o      �$�$ 0 	ltasklist 	lTaskList�%  �&  � w     ���� k    ��� ��� r    ��� J    �#�#  � o      �"�" 0 tasklist taskList� ��� X    ���!�� k    ��� ��� r    ��� n    ��� 1    � 
�  
pnam� o    �� 0 thistask thisTask� o      �� 0 foo  � ��� r    "��� n     ��� m     �
� 
FCct� o    �� 0 thistask thisTask� o      �� 0 con  � ��� r   # (� � n   # & 1   $ &�
� 
pnam o   # $�� 0 con    o      �� 0 foo  � � Z   ) �� >  ) , o   ) *�� 0 con   m   * +�
� 
msng k   / 		 

 T   / f Z   4 a� >  4 9 n  4 7 1   5 7�
� 
ctnr o   4 5�� 0 con   m   7 8�
� 
msng k   < ]  r   < A n  < ? 1   = ?�
� 
ctnr o   < =�� 0 con   o      �� 0 ccon    r   B G n   B E  1   C E�
� 
pnam  o   B C�� 0 ccon   o      �
�
 
0 ccname   !�	! Z   H ]"#�$" >  H K%&% o   H I�� 
0 ccname  & m   I J'' �((  O m n i F o c u s# k   N Y)) *+* r   N S,-, n  N Q./. 1   O Q�
� 
ctnr/ o   N O�� 0 con  - o      �� 0 con  + 0�0 r   T Y121 n   T W343 1   U W�
� 
pnam4 o   T U�� 0 con  2 o      � �  0 foo  �  �  $  S   \ ]�	  �    S   ` a 565 r   g l787 n   g j9:9 1   h j��
�� 
pnam: o   g h���� 0 con  8 o      ���� 0 conname  6 ;��; Z   m <=����< H   m q>> E   m p?@? o   m n���� 0 conname  @ m   n oAA �BB  W a i t i n g= r   t {CDC b   t yEFE o   t u���� 0 tasklist taskListF J   u xGG H��H o   u v���� 0 thistask thisTask��  D o      ���� 0 tasklist taskList��  ��  ��  �   r   � �IJI b   � �KLK o   � ����� 0 tasklist taskListL J   � �MM N��N o   � ����� 0 thistask thisTask��  J o      ���� 0 tasklist taskList�  �! 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� O��O L   � �PP o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � QRQ l     ��������  ��  ��  R STS i   H KUVU I      ��W���� 20 filterfortasksdueondate filterForTasksDueOnDateW XYX o      ���� 0 	ltasklist 	lTaskListY Z��Z o      ���� 0 ldate lDate��  ��  V w     F[\[ k    F]] ^_^ r    `a` J    ����  a o      ���� 0 tasklist taskList_ bcb X    Cd��ed k    >ff ghg r    iji n   klk 1    ��
�� 
FCDdl o    ���� 0 thistask thisTaskj o      ���� 0 
thistaskdd 
thisTaskDDh m��m Z    >no����n >    pqp o    ���� 0 
thistaskdd 
thisTaskDDq m    ��
�� 
msngo k   # :rr sts r   # (uvu n   # &wxw 1   $ &��
�� 
dstrx o   # $���� 0 
thistaskdd 
thisTaskDDv o      ���� (0 thistaskdatestring thisTaskDateStringt y��y Z   ) :z{����z =  ) ,|}| o   ) *���� (0 thistaskdatestring thisTaskDateString} o   * +���� 0 ldate lDate{ r   / 6~~ b   / 4��� o   / 0���� 0 tasklist taskList� J   0 3�� ���� o   0 1���� 0 thistask thisTask��   o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTaske o   
 ���� 0 	ltasklist 	lTaskListc ���� L   D F�� o   D E���� 0 tasklist taskList��  \�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  T ��� l     ��������  ��  ��  � ��� i   L O��� I      ������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     J��� k    J�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    G����� k    B�� ��� r    ��� n   ��� 1    ��
�� 
FCDd� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskdd 
thisTaskDD� ���� Z    B������� >    ��� o    ���� 0 
thistaskdd 
thisTaskDD� m    ��
�� 
msng� Z   # >������� A   # &��� o   # $���� 0 
thistaskdd 
thisTaskDD� o   $ %���� 0 ldate lDate� k   ) :�� ��� I  ) 2�����
�� .ascrcmnt****      � ****� b   ) .��� m   ) *�� ��� , F o u n d   a n   o v e r d u e   t a s k  � n  * -��� 1   + -��
�� 
pnam� o   * +���� 0 thistask thisTask��  � ���� r   3 :��� b   3 8��� o   3 4���� 0 tasklist taskList� J   4 7�� ���� o   4 5���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   H J�� o   H I���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   P S��� I      ������� .0 filterfortaskswithtag filterForTasksWithTag� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 tag  ��  ��  � w     @��� k    @�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    =����� k    8�� ��� I    �����
�� .ascrcmnt****      � ****� b    ��� m    �� ���   G e t t i n g   n o t e   o f  � n   ��� 1    ��
�� 
pnam� o    ���� 0 thistask thisTask��  � ��� r   ! &��� n   ! $��� 1   " $��
�� 
FCno� o   ! "���� 0 thistask thisTask� o      ���� 0 itemnote itemNote� ���� Z   ' 8������� l  ' *������ E   ' *��� o   ' (���� 0 itemnote itemNote� o   ( )���� 0 tag  ��  ��  � r   - 4��� b   - 2��� o   - .���� 0 tasklist taskList� J   . 1�� ���� o   . /���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   > @�� o   > ?���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� $0 filterforflagged filterForFlagged� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList�    X    /� Z    *�~�} =    n    	 1    �|
�| 
FCfl	 o    �{�{ 0 thistask thisTask m    �z
�z boovtrue r    &

 b    $ o     �y�y 0 tasklist taskList J     # �x o     !�w�w 0 thistask thisTask�x   o      �v�v 0 tasklist taskList�~  �}  � 0 thistask thisTask o   
 �u�u 0 	ltasklist 	lTaskList �t L   0 2 o   0 1�s�s 0 tasklist taskList�t  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �r�q�p�r  �q  �p    l      �o�o   $  SECTION 4: Task manipulation
    � <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
  l     �n�m�l�n  �m  �l    l      �k�k   < 6 set the tag, in the notes field, of the provided tag     � l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g    !  i   X ["#" I      �j$�i�j 0 tagtask tagTask$ %&% o      �h�h 0 ltask lTask& '�g' o      �f�f 0 ltag lTag�g  �i  # w     $()( k    $** +,+ r    -.- n    /0/ 1    �e
�e 
FCno0 o    �d�d 0 ltask lTask. o      �c�c 0 itemnote itemNote, 1�b1 Z    $23�a�`2 l   4�_�^4 H    55 E    676 o    	�]�] 0 itemnote itemNote7 o   	 
�\�\ 0 ltag lTag�_  �^  3 k     88 9:9 r    ;<; n    =>= 1    �[
�[ 
FCno> o    �Z�Z 0 ltask lTask< o      �Y�Y 0 itemnote itemNote: ?@? r    ABA b    CDC o    �X�X 0 itemnote itemNoteD o    �W�W 0 ltag lTagB o      �V�V 0 itemnote itemNote@ E�UE r     FGF o    �T�T 0 itemnote itemNoteG l     H�S�RH n      IJI 1    �Q
�Q 
FCnoJ o    �P�P 0 ltask lTask�S  �R  �U  �a  �`  �b  )�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ! KLK l     �O�N�M�O  �N  �M  L MNM l      �LOP�L  O 4 . remove the provided tag from the notes field    P �QQ \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  N RSR i   \ _TUT I      �KV�J�K 0 	untagtask 	untagTaskV WXW o      �I�I 0 ltask lTaskX Y�HY o      �G�G 0 ltag lTag�H  �J  U w     AZ[Z k    A\\ ]^] r    _`_ n    aba 1    �F
�F 
FCnob o    �E�E 0 ltask lTask` o      �D�D 0 itemnote itemNote^ cdc I   �Ce�B
�C .ascrcmnt****      � ****e o    	�A�A 0 itemnote itemNote�B  d f�@f Z    Agh�?�>g l   i�=�<i E    jkj o    �;�; 0 itemnote itemNotek o    �:�: 0 ltag lTag�=  �<  h k    =ll mnm r    opo o    �9�9 0 ltag lTagp n     qrq 1    �8
�8 
txdlr 1    �7
�7 
ascrn sts r    1uvu J     ww xyx n    z{z 2   �6
�6 
citm{ o    �5�5 0 itemnote itemNotey |�4| m    }} �~~  �4  v J       ��� o      �3�3 0 itemnode itemNode� ��2� n     ��� 1   - /�1
�1 
txdl� 1   , -�0
�0 
ascr�2  t ��� r   2 7��� c   2 5��� o   2 3�/�/ 0 itemnode itemNode� m   3 4�.
�. 
TEXT� o      �-�- 0 itemnote itemNote� ��,� r   8 =��� o   8 9�+�+ 0 itemnote itemNote� l     ��*�)� n      ��� 1   : <�(
�( 
FCno� o   9 :�'�' 0 ltask lTask�*  �)  �,  �?  �>  �@  [�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  S ��� l     �&�%�$�&  �%  �$  � ��� l      �#���#  � 0 * remove any tags in the provided tag list    � ��� T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  � ��� i   ` c��� I      �"��!�" 0 	cleartask 	clearTask� ��� o      � �  0 ltask lTask� ��� o      �� 0 ltaglist lTagList�  �!  � w     $��� X    $���� k    �� ��� I   ���
� .ascrcmnt****      � ****� o    �� 0 atag aTag�  � ��� I    ���� 0 	untagtask 	untagTask� ��� o    �� 0 ltask lTask� ��� o    �� 0 atag aTag�  �  �  � 0 atag aTag� o    �� 0 ltaglist lTagList��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                  �����E�        ����  	                Applications    űJ�      ��}�     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� l      ����  �    SECTION 5: other utility    � ��� 4   S E C T I O N   5 :   o t h e r   u t i l i t y  � ��� l     ����  �  �  �       �
���������������������������
  � �	��������� �������������������������������	 0 
getfolders 
getFolders� *0 getfoldersoffolders getFoldersOfFolders� 0 getprojects getProjects� .0 getprojectsfromfolder getProjectsFromFolder� 0 gettasks getTasks� ,0 gettasksfromdocument getTasksFromDocument� *0 gettasksfromproject getTasksFromProject� 20 filterforactiveprojects filterForActiveProjects� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�  H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask� ��  ���������� 0 
getfolders 
getFolders�� ����� �  ���� 0 	ldocument 	lDocument��  � �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder�  $����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�� �� A���������� *0 getfoldersoffolders getFoldersOfFolders�� ����� �  ���� 0 lfolders lFolders��  � ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder�  E����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�� �� a���������� 0 getprojects getProjects�� ����� �  ���� 0 	ldocument 	lDocument��  � ���������� 0 	ldocument 	lDocument�� 0 lfolderlist lFolderList�� 0 projectlist projectList�� 0 
thisfolder 
thisFolder�  e�������������� 0 
getfolders 
getFolders
�� 
FCpr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� .0 getprojectsfromfolder getProjectsFromFolder�� 4�Z)�k+ E�O��-E�O �[��l kh �)�k+ %E�[OY��O�� �� ����������� .0 getprojectsfromfolder getProjectsFromFolder�� ����� �  ���� 0 lfolder lFolder��  � ���� 0 lfolder lFolder�  ���
�� 
FCpr�� �Z��-E� �� ����������� 0 gettasks getTasks�� ����� �  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject�  �����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�� �� ����������� ,0 gettasksfromdocument getTasksFromDocument�� ����� �  ���� 0 	ldocument 	lDocument��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject�  ��������������� 0 getprojects getProjects
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 gettasks getTasks�� 4�Z*�k+ E�O��-E�O �[��l kh �*�k+ %E�[OY��O�� �� ����������� *0 gettasksfromproject getTasksFromProject�� ����� �  ���� 0 lproject lProject��  � ���� 0 lproject lProject�  ���
�� 
FCac�� �Z��-E� �� ����������� 20 filterforactiveprojects filterForActiveProjects�� ����� �  ���� 0 lprojectlist lProjectList��  � ���������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 n  �  ���������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FCPs
�� FCPsFCPa�� ?�ZjvE�O 3�[��l kh ��,E�O�j O��,�  ��kv%E�Y h[OY��O�� ��$���������� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� ����� �  �� 0 lprojectlist lProjectList��  � �~�}�|�~ 0 lprojectlist lProjectList�} 0 projectlist projectList�| 0 thisproject thisProject� (�{�z�y�x
�{ 
kocl
�z 
cobj
�y .corecnte****       ****
�x 
FC.A�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �wE�v�u���t�w H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�v �s��s �  �r�r 0 lprojectlist lProjectList�u  � �q�p�o�q 0 lprojectlist lProjectList�p 0 projectlist projectList�o 0 thisproject thisProject� I�n�m�l�k
�n 
kocl
�m 
cobj
�l .corecnte****       ****
�k 
FC.A�t 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�� �jk�i�h���g�j @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�i �f��f �  �e�d�e 0 lprojectlist lProjectList�d 0 ldate lDate�h  � �c�b�a�`�_�^�]�\�[�Z�Y�X�c 0 lprojectlist lProjectList�b 0 ldate lDate�a 0 projectlist projectList�` 	0 cdate  �_ 0 thisproject thisProject�^ 0 tasklist taskList�] 0 flag  �\ 0 thistask thisTask�[ 
0 tcdate  �Z 
0 tmdate  �Y 0 tcds  �X 0 tmds  � q�W�V�U�T�S�R�Q
�W 
dstr
�V 
kocl
�U 
cobj
�T .corecnte****       ****�S *0 gettasksfromproject getTasksFromProject
�R 
FCDa
�Q 
FCDm�g ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �P��O�N���M�P Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�O �L��L �  �K�J�K 0 lprojectlist lProjectList�J 0 ldate lDate�N  � 	�I�H�G�F�E�D�C�B�A�I 0 lprojectlist lProjectList�H 0 ldate lDate�G 0 projectlist projectList�F 0 thisproject thisProject�E 0 tasklist taskList�D 0 flag  �C 0 thistask thisTask�B 
0 tcdate  �A 
0 tmdate  � ��@�?�>�=�<�;
�@ 
kocl
�? 
cobj
�> .corecnte****       ****�= *0 gettasksfromproject getTasksFromProject
�< 
FCDa
�; 
FCDm�M y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �:!�9�8���7�: 20 filterforcompletedtasks filterForCompletedTasks�9 �6��6 �  �5�5 0 	ltasklist 	lTaskList�8  � �4�3�2�4 0 	ltasklist 	lTaskList�3 0 tasklist taskList�2 0 thistask thisTask� %�1�0�/�.
�1 
kocl
�0 
cobj
�/ .corecnte****       ****
�. 
FCcd�7 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �-B�,�+���*�- >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�, �)��) �  �(�'�( 0 	ltasklist 	lTaskList�' 0 ldate lDate�+  � �&�%�$�#�"�!�& 0 	ltasklist 	lTaskList�% 0 ldate lDate�$ 0 tasklist taskList�# 0 thistask thisTask�" 0 
thistaskcd 
thisTaskCD�! (0 thistaskdatestring thisTaskDateString� H� ����
�  
kocl
� 
cobj
� .corecnte****       ****
� 
FCdc
� 
dstr�* =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� �q������ 40 filterforincompletetasks filterForIncompleteTasks� ��� �  �� 0 	ltasklist 	lTaskList�  � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� u����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�� �������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� �
��
 �  �	�	 0 	ltasklist 	lTaskList�  � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCRp
� 
msng� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� � ������ ���  60 filterfortasksaddedondate filterForTasksAddedOnDate�� ����   ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString  �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� ����������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ����   ���� 0 	ltasklist 	lTaskList��   ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname   
���������������'A
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�� ��V�������� 20 filterfortasksdueondate filterForTasksDueOnDate�� ����   ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��   �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString \������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�� �������	���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ��
�� 
  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��   ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD	 	����������������
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
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�� ����������� .0 filterfortaskswithtag filterForTasksWithTag�� ����   ������ 0 	ltasklist 	lTaskList�� 0 tag  ��   ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote ��������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FCno�� A�ZjvE�O 5�[��l kh ��,%j O��,E�O�� ��kv%E�Y h[OY��O�� ����������� $0 filterforflagged filterForFlagged�� ����   ���� 0 	ltasklist 	lTaskList��   �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� ��#�������� 0 tagtask tagTask�� ����   ������ 0 ltask lTask�� 0 ltag lTag��   �������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote )��
�� 
FCno�� %�Z��,E�O�� ��,E�O��%E�O���,FY h� ��U�������� 0 	untagtask 	untagTask�� ����   ������ 0 ltask lTask�� 0 ltag lTag��   ��������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote� 0 itemnode itemNode 	[�~�}�|�{�z}�y�x
�~ 
FCno
�} .ascrcmnt****      � ****
�| 
ascr
�{ 
txdl
�z 
citm
�y 
cobj
�x 
TEXT�� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� �w��v�u�t�w 0 	cleartask 	clearTask�v �s�s   �r�q�r 0 ltask lTask�q 0 ltaglist lTagList�u   �p�o�n�p 0 ltask lTask�o 0 ltaglist lTagList�n 0 atag aTag ��m�l�k�j�i
�m 
kocl
�l 
cobj
�k .corecnte****       ****
�j .ascrcmnt****      � ****�i 0 	untagtask 	untagTask�t %�Z !�[��l kh �j O*��l+ [OY��ascr  ��ޭ