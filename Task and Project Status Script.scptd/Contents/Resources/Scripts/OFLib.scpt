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
folderList��   $�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� *0 getfoldersoffolders getFoldersOfFolders B  C�� C o      ���� 0 lfolders lFolders��  ��   A w     & D E D k    & F F  G H G X    # I�� J I r     K L K b     M N M o    ���� 0 lfolders lFolders N I    �� O���� *0 getfoldersoffolders getFoldersOfFolders O  P�� P n     Q R Q 2   ��
�� 
FCAr R o    ���� 0 
thisfolder 
thisFolder��  ��   L o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder J o    ���� 0 lfolders lFolders H  S T S l  $ $��������  ��  ��   T  U�� U L   $ & V V o   $ %���� 0 lfolders lFolders��   E�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ?  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ 9 3 1b: projects and utility associated with projects     \ � ] ] f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s   Z  ^ _ ^ i     ` a ` I      �� b���� 0 getprojects getProjects b  c�� c o      ���� 0 	ldocument 	lDocument��  ��   a w     3 d e d k    3 f f  g h g r    
 i j i n    k l k I    �� m���� 0 
getfolders 
getFolders m  n�� n o    ���� 0 	ldocument 	lDocument��  ��   l  f     j o      ���� 0 lfolderlist lFolderList h  o p o r     q r q l    s���� s n     t u t 2   ��
�� 
FCpr u o    ���� 0 	ldocument 	lDocument��  ��   r o      ���� 0 projectlist projectList p  v w v X    0 x�� y x r   ! + z { z b   ! ) | } | o   ! "���� 0 projectlist projectList } n  " ( ~  ~ I   # (�� ����� .0 getprojectsfromfolder getProjectsFromFolder �  ��� � o   # $���� 0 
thisfolder 
thisFolder��  ��     f   " # { o      ���� 0 projectlist projectList�� 0 
thisfolder 
thisFolder y o    ���� 0 lfolderlist lFolderList w  ��� � L   1 3 � � o   1 2���� 0 projectlist projectList��   e�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   _  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� .0 getprojectsfromfolder getProjectsFromFolder �  ��� � o      ���� 0 lfolder lFolder��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCpr � o    ���� 0 lfolder lFolder ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � 3 - 1a: tasks and utility associated with tasks     � � � � Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document     � � � ��   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t   �  � � � i     � � � I      �� ����� 0 gettasks getTasks �  � � � o      ���� 0 	ldocument 	lDocument �  ��� � o      ���� 0 lprojectlist lProjectList��  ��   � w     * � � � k    * � �  � � � r     � � � n     � � � 2   ��
�� 
FCac � o    ���� 0 	ldocument 	lDocument � o      ���� 0 tasklist taskList �  � � � X    ' ��� � � r    " � � � b      � � � o    ���� 0 tasklist taskList � I    �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o    ���� 0 thisproject thisProject��  ��   � o      ���� 0 tasklist taskList�� 0 thisproject thisProject � o    ���� 0 lprojectlist lProjectList �  ��� � L   ( * � � o   ( )���� 0 tasklist taskList��   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ,0 gettasksfromdocument getTasksFromDocument �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w     3 � � � k    3 � �  � � � r    
 � � � I    �� ����� 0 getprojects getProjects �  ��� � o    ���� 0 	ldocument 	lDocument��  ��   � o      ���� 0 lprojectlist lProjectList �  � � � r     � � � n     � � � 2   �
� 
FCac � o    �~�~ 0 	ldocument 	lDocument � o      �}�} 0 tasklist taskList �  � � � X    0 ��| � � r   ! + � � � b   ! ) � � � o   ! "�{�{ 0 tasklist taskList � I   " (�z ��y�z 0 gettasks getTasks �  ��x � o   # $�w�w 0 thisproject thisProject�x  �y   � o      �v�v 0 tasklist taskList�| 0 thisproject thisProject � o    �u�u 0 lprojectlist lProjectList �  ��t � L   1 3 � � o   1 2�s�s 0 tasklist taskList�t   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     �r�q�p�r  �q  �p   �  � � � i     � � � I      �o ��n�o *0 gettasksfromproject getTasksFromProject �  ��m � o      �l�l 0 lproject lProject�m  �n   � w      � � � L     � � n     � � � 2   �k
�k 
FCac � o    �j�j 0 lproject lProject ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     �i�h�g�i  �h  �g   �  � � � l      �f � ��f   � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 �  � � � l     �e�d�c�e  �d  �c   �  � � � i     � � � I      �b ��a�b 20 filterforactiveprojects filterForActiveProjects �  ��` � o      �_�_ 0 lprojectlist lProjectList�`  �a   � w     / � � � k    / � �  � � � r       J    �^�^   o      �]�] 0 projectlist projectList � �\ X    /�[ Z    *�Z�Y =    n   	
	 1    �X
�X 
FCPs
 o    �W�W 0 thisproject thisProject m    �V
�V FCPsFCPa r    & b    $ o     �U�U 0 projectlist projectList J     # �T o     !�S�S 0 thisproject thisProject�T   o      �R�R 0 projectlist projectList�Z  �Y  �[ 0 thisproject thisProject o   
 �Q�Q 0 lprojectlist lProjectList�\   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  l     �P�O�N�P  �O  �N    i     # I      �M�L�M B0 filterprojectsforsingletonlists filterProjectsForSingletonLists �K o      �J�J 0 lprojectlist lProjectList�K  �L   w     2 k    2  r     J    �I�I   o      �H�H 0 projectlist projectList  !  X    /"�G#" Z    *$%�F�E$ =   &'& n   ()( 1    �D
�D 
FC.A) o    �C�C 0 thisproject thisProject' m    �B
�B boovtrue% r    &*+* b    $,-, o     �A�A 0 projectlist projectList- J     #.. /�@/ o     !�?�? 0 thisproject thisProject�@  + o      �>�> 0 projectlist projectList�F  �E  �G 0 thisproject thisProject# o   
 �=�= 0 lprojectlist lProjectList! 0�<0 L   0 211 o   0 1�;�; 0 projectlist projectList�<  �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   232 l     �:�9�8�:  �9  �8  3 454 i   $ '676 I      �78�6�7 H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists8 9�59 o      �4�4 0 lprojectlist lProjectList�5  �6  7 w     2:;: k    2<< =>= r    ?@? J    �3�3  @ o      �2�2 0 projectlist projectList> ABA X    /C�1DC Z    *EF�0�/E =   GHG n   IJI 1    �.
�. 
FC.AJ o    �-�- 0 thisproject thisProjectH m    �,
�, boovfalsF r    &KLK b    $MNM o     �+�+ 0 projectlist projectListN J     #OO P�*P o     !�)�) 0 thisproject thisProject�*  L o      �(�( 0 projectlist projectList�0  �/  �1 0 thisproject thisProjectD o   
 �'�' 0 lprojectlist lProjectListB Q�&Q L   0 2RR o   0 1�%�% 0 projectlist projectList�&  ;�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  5 STS l     �$�#�"�$  �#  �"  T UVU l      �!WX�!  W � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   X �YY   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
V Z[Z i   ( +\]\ I      � ^��  @0 filterprojectsforchangedondate filterProjectsForChangedOnDate^ _`_ o      �� 0 lprojectlist lProjectList` a�a o      �� 0 ldate lDate�  �  ] w     �bcb k    �dd efe r    ghg J    ��  h o      �� 0 projectlist projectListf iji r    klk n    
mnm 1    
�
� 
dstrn o    �� 0 ldate lDatel o      �� 	0 cdate  j opo X    �q�rq k    �ss tut r    %vwv I    #�x�� *0 gettasksfromproject getTasksFromProjectx y�y o    �� 0 thisproject thisProject�  �  w o      �� 0 tasklist taskListu z{z r   & )|}| m   & '�
� boovfals} o      �� 0 flag  { ~~ X   * r���� k   : m�� ��� r   : ?��� n  : =��� 1   ; =�
� 
FCDa� o   : ;�� 0 thistask thisTask� o      �� 
0 tcdate  � ��� r   @ E��� n  @ C��� 1   A C�

�
 
FCDm� o   @ A�	�	 0 thistask thisTask� o      �� 
0 tmdate  � ��� r   F K��� n   F I��� 1   G I�
� 
dstr� o   F G�� 
0 tcdate  � o      �� 0 tcds  � ��� r   L Q��� n   L O��� 1   M O�
� 
dstr� o   L M�� 
0 tmdate  � o      �� 0 tmds  � ��� Z   R _���� � =  R U��� o   R S���� 0 tcds  � o   S T���� 	0 cdate  � r   X [��� m   X Y��
�� boovtrue� o      ���� 0 flag  �  �   � ���� Z   ` m������� =  ` c��� o   ` a���� 0 tmds  � o   a b���� 	0 cdate  � r   f i��� m   f g��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  � 0 thistask thisTask� o   - .���� 0 tasklist taskList ���� Z   s �������� o   s t���� 0 flag  � r   w ~��� b   w |��� o   w x���� 0 projectlist projectList� J   x {�� ���� o   x y���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  � 0 thisproject thisProjectr o    ���� 0 lprojectlist lProjectListp ���� L   � ��� o   � ����� 0 projectlist projectList��  c�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  [ ��� l     ��������  ��  ��  � ��� l      ������  � � � 
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
0 tmdate  � ��� l  @ @��������  ��  ��  � ��� Z   @ M������� A   @ C��� o   @ A���� 
0 tcdate  � o   A B���� 0 ldate lDate� r   F I��� m   F G��
�� boovtrue� o      ���� 0 flag  ��  ��  � ��� l  N N��������  ��  ��  � ���� Z   N [������� A   N Q��� o   N O���� 
0 tmdate  � o   O P���� 0 ldate lDate� r   T W��� m   T U��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� ���� Z   a p� ����� o   a b���� 0 flag    r   e l b   e j o   e f���� 0 projectlist projectList J   f i �� o   f g���� 0 thisproject thisProject��   o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� �� L   v x o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � 	
	 l     ��������  ��  ��  
  l      ����   � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
    � �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
  i   0 3 I      ������ 20 filterforcompletedtasks filterForCompletedTasks �� o      ���� 0 	ltasklist 	lTaskList��  ��   w     2 k    2  r     J    ����   o      ���� 0 tasklist taskList  X    /��  Z    *!"����! =   #$# n    %&% 1    ��
�� 
FCcd& o    ���� 0 thistask thisTask$ m    ��
�� boovtrue" r    &'(' b    $)*) o     ���� 0 tasklist taskList* J     #++ ,��, o     !���� 0 thistask thisTask��  ( o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask  o   
 ���� 0 	ltasklist 	lTaskList -��- L   0 2.. o   0 1���� 0 tasklist taskList��  �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   /0/ l     ��������  ��  ��  0 121 i   4 7343 I      ��5���� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate5 676 o      ���� 0 	ltasklist 	lTaskList7 8��8 o      ���� 0 ldate lDate��  ��  4 w     <9:9 k    <;; <=< r    >?> J    ����  ? o      ���� 0 tasklist taskList= @A@ X    9B��CB k    4DD EFE r    GHG n   IJI 1    ��
�� 
FCdcJ o    ���� 0 thistask thisTaskH o      ���� 0 
thistaskcd 
thisTaskCDF KLK r    "MNM n     OPO 1     ��
�� 
dstrP o    ���� 0 
thistaskcd 
thisTaskCDN o      ���� (0 thistaskdatestring thisTaskDateStringL Q��Q Z   # 4RS����R =  # &TUT o   # $���� (0 thistaskdatestring thisTaskDateStringU o   $ %���� 0 ldate lDateS r   ) 0VWV b   ) .XYX o   ) *���� 0 tasklist taskListY J   * -ZZ [��[ o   * +���� 0 thistask thisTask��  W o      �� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTaskC o   
 �~�~ 0 	ltasklist 	lTaskListA \�}\ L   : <]] o   : ;�|�| 0 tasklist taskList�}  :�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  2 ^_^ l     �{�z�y�{  �z  �y  _ `a` i   8 ;bcb I      �xd�w�x 40 filterforincompletetasks filterForIncompleteTasksd e�ve o      �u�u 0 	ltasklist 	lTaskList�v  �w  c w     2fgf k    2hh iji r    klk J    �t�t  l o      �s�s 0 tasklist taskListj mnm X    /o�rpo Z    *qr�q�pq >   sts n    uvu 1    �o
�o 
FCcdv o    �n�n 0 thistask thisTaskt m    �m
�m boovtruer r    &wxw b    $yzy o     �l�l 0 tasklist taskListz J     #{{ |�k| o     !�j�j 0 thistask thisTask�k  x o      �i�i 0 tasklist taskList�q  �p  �r 0 thistask thisTaskp o   
 �h�h 0 	ltasklist 	lTaskListn }�g} L   0 2~~ o   0 1�f�f 0 tasklist taskList�g  g�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  a � l     �e�d�c�e  �d  �c  � ��� i   < ?��� I      �b��a�b 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��`� o      �_�_ 0 	ltasklist 	lTaskList�`  �a  � w     2��� k    2�� ��� r    ��� J    �^�^  � o      �]�] 0 tasklist taskList� ��� X    /��\�� Z    *���[�Z� =   ��� n   ��� 1    �Y
�Y 
FCRp� o    �X�X 0 thistask thisTask� m    �W
�W 
msng� r    &��� b    $��� o     �V�V 0 tasklist taskList� J     #�� ��U� o     !�T�T 0 thistask thisTask�U  � o      �S�S 0 tasklist taskList�[  �Z  �\ 0 thistask thisTask� o   
 �R�R 0 	ltasklist 	lTaskList� ��Q� L   0 2�� o   0 1�P�P 0 tasklist taskList�Q  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �O�N�M�O  �N  �M  � ��� i   @ C��� I      �L��K�L 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      �J�J 0 	ltasklist 	lTaskList� ��I� o      �H�H 0 ldate lDate�I  �K  � w     <��� k    <�� ��� r    ��� J    �G�G  � o      �F�F 0 tasklist taskList� ��� X    9��E�� k    4�� ��� r    ��� n   ��� 1    �D
�D 
FCDa� o    �C�C 0 thistask thisTask� o      �B�B 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �A
�A 
dstr� o    �@�@ 0 
thistaskcd 
thisTaskCD� o      �?�? (0 thistaskdatestring thisTaskDateString� ��>� Z   # 4���=�<� =  # &��� o   # $�;�; (0 thistaskdatestring thisTaskDateString� o   $ %�:�: 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�9�9 0 tasklist taskList� J   * -�� ��8� o   * +�7�7 0 thistask thisTask�8  � o      �6�6 0 tasklist taskList�=  �<  �>  �E 0 thistask thisTask� o   
 �5�5 0 	ltasklist 	lTaskList� ��4� L   : <�� o   : ;�3�3 0 tasklist taskList�4  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �2�1�0�2  �1  �0  � ��� i   D G��� I      �/��.�/ L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��-� o      �,�, 0 	ltasklist 	lTaskList�-  �.  � w     ���� k    ��� ��� r    ��� J    �+�+  � o      �*�* 0 tasklist taskList� ��� X    ���)�� k    ��� ��� r    ��� n    ��� 1    �(
�( 
pnam� o    �'�' 0 thistask thisTask� o      �&�& 0 foo  � ��� r    "��� n     ��� m     �%
�% 
FCct� o    �$�$ 0 thistask thisTask� o      �#�# 0 con  � ��� r   # (��� n   # &��� 1   $ &�"
�" 
pnam� o   # $�!�! 0 con  � o      � �  0 foo  � ��� Z   ) ������ >  ) ,��� o   ) *�� 0 con  � m   * +�
� 
msng� k   / �� ��� T   / f�� Z   4 a� �� >  4 9 n  4 7 1   5 7�
� 
ctnr o   4 5�� 0 con   m   7 8�
� 
msng  k   < ]  r   < A	
	 n  < ? 1   = ?�
� 
ctnr o   < =�� 0 con  
 o      �� 0 ccon    r   B G n   B E 1   C E�
� 
pnam o   B C�� 0 ccon   o      �� 
0 ccname   � Z   H ]� >  H K o   H I�� 
0 ccname   m   I J �  O m n i F o c u s k   N Y  r   N S n  N Q !  1   O Q�
� 
ctnr! o   N O�� 0 con   o      �� 0 con   "�" r   T Y#$# n   T W%&% 1   U W�

�
 
pnam& o   T U�	�	 0 con  $ o      �� 0 foo  �  �    S   \ ]�  �    S   ` a� '(' r   g l)*) n   g j+,+ 1   h j�
� 
pnam, o   g h�� 0 con  * o      �� 0 conname  ( -�- Z   m ./��. H   m q00 E   m p121 o   m n�� 0 conname  2 m   n o33 �44  W a i t i n g/ r   t {565 b   t y787 o   t u� �  0 tasklist taskList8 J   u x99 :��: o   u v���� 0 thistask thisTask��  6 o      ���� 0 tasklist taskList�  �  �  �  � r   � �;<; b   � �=>= o   � ����� 0 tasklist taskList> J   � �?? @��@ o   � ����� 0 thistask thisTask��  < o      ���� 0 tasklist taskList�  �) 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� A��A L   � �BB o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � CDC l     ��������  ��  ��  D EFE i   H KGHG I      ��I���� 20 filterfortasksdueondate filterForTasksDueOnDateI JKJ o      ���� 0 	ltasklist 	lTaskListK L��L o      ���� 0 ldate lDate��  ��  H w     FMNM k    FOO PQP r    RSR J    ����  S o      ���� 0 tasklist taskListQ TUT X    CV��WV k    >XX YZY r    [\[ n   ]^] 1    ��
�� 
FCDd^ o    ���� 0 thistask thisTask\ o      ���� 0 
thistaskdd 
thisTaskDDZ _��_ Z    >`a����` >    bcb o    ���� 0 
thistaskdd 
thisTaskDDc m    ��
�� 
msnga k   # :dd efe r   # (ghg n   # &iji 1   $ &��
�� 
dstrj o   # $���� 0 
thistaskdd 
thisTaskDDh o      ���� (0 thistaskdatestring thisTaskDateStringf k��k Z   ) :lm����l =  ) ,non o   ) *���� (0 thistaskdatestring thisTaskDateStringo o   * +���� 0 ldate lDatem r   / 6pqp b   / 4rsr o   / 0���� 0 tasklist taskLists J   0 3tt u��u o   0 1���� 0 thistask thisTask��  q o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTaskW o   
 ���� 0 	ltasklist 	lTaskListU v��v L   D Fww o   D E���� 0 tasklist taskList��  N�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  F xyx l     ��������  ��  ��  y z{z i   L O|}| I      ��~���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate~ � o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  } w     @��� k    @�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    =����� k    8�� ��� r    ��� n   ��� 1    ��
�� 
FCDd� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskdd 
thisTaskDD� ���� Z    8������� >    ��� o    ���� 0 
thistaskdd 
thisTaskDD� m    ��
�� 
msng� Z   # 4������� A   # &��� o   # $���� 0 
thistaskdd 
thisTaskDD� o   $ %���� 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *���� 0 tasklist taskList� J   * -�� ���� o   * +���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   > @�� o   > ?���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  { ��� l     ��������  ��  ��  � ��� i   P S��� I      ������� .0 filterfortaskswithtag filterForTasksWithTag� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 tag  ��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    3����� k    .�� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 thistask thisTask� o      ���� 0 itemnote itemNote� ���� Z    .������� l    ������ E     ��� o    ���� 0 itemnote itemNote� o    ���� 0 tag  ��  ��  � r   # *��� b   # (��� o   # $���� 0 tasklist taskList� J   $ '�� ���� o   $ %���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   4 6�� o   4 5���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� $0 filterforflagged filterForFlagged� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n    ��� 1    ��
�� 
FCfl� o    ���� 0 thistask thisTask� m    ��
�� boovtrue� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     ��~�}�  �~  �}  � ��� l      �|���|  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   X [   I      �{�z�{ 0 tagtask tagTask  o      �y�y 0 ltask lTask �x o      �w�w 0 ltag lTag�x  �z   w     $ k    $ 	
	 r     n     1    �v
�v 
FCno o    �u�u 0 ltask lTask o      �t�t 0 itemnote itemNote
 �s Z    $�r�q l   �p�o H     E     o    	�n�n 0 itemnote itemNote o   	 
�m�m 0 ltag lTag�p  �o   k       r     n     1    �l
�l 
FCno o    �k�k 0 ltask lTask o      �j�j 0 itemnote itemNote  r      b    !"! o    �i�i 0 itemnote itemNote" o    �h�h 0 ltag lTag  o      �g�g 0 itemnote itemNote #�f# r     $%$ o    �e�e 0 itemnote itemNote% l     &�d�c& n      '(' 1    �b
�b 
FCno( o    �a�a 0 ltask lTask�d  �c  �f  �r  �q  �s  �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � )*) l     �`�_�^�`  �_  �^  * +,+ l      �]-.�]  - 4 . remove the provided tag from the notes field    . �// \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  , 010 i   \ _232 I      �\4�[�\ 0 	untagtask 	untagTask4 565 o      �Z�Z 0 ltask lTask6 7�Y7 o      �X�X 0 ltag lTag�Y  �[  3 w     A898 k    A:: ;<; r    =>= n    ?@? 1    �W
�W 
FCno@ o    �V�V 0 ltask lTask> o      �U�U 0 itemnote itemNote< ABA I   �TC�S
�T .ascrcmnt****      � ****C o    	�R�R 0 itemnote itemNote�S  B D�QD Z    AEF�P�OE l   G�N�MG E    HIH o    �L�L 0 itemnote itemNoteI o    �K�K 0 ltag lTag�N  �M  F k    =JJ KLK r    MNM o    �J�J 0 ltag lTagN n     OPO 1    �I
�I 
txdlP 1    �H
�H 
ascrL QRQ r    1STS J     UU VWV n    XYX 2   �G
�G 
citmY o    �F�F 0 itemnote itemNoteW Z�EZ m    [[ �\\  �E  T J      ]] ^_^ o      �D�D 0 itemnode itemNode_ `�C` n     aba 1   - /�B
�B 
txdlb 1   , -�A
�A 
ascr�C  R cdc r   2 7efe c   2 5ghg o   2 3�@�@ 0 itemnode itemNodeh m   3 4�?
�? 
TEXTf o      �>�> 0 itemnote itemNoted i�=i r   8 =jkj o   8 9�<�< 0 itemnote itemNotek l     l�;�:l n      mnm 1   : <�9
�9 
FCnon o   9 :�8�8 0 ltask lTask�;  �:  �=  �P  �O  �Q  9�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  1 opo l     �7�6�5�7  �6  �5  p qrq l      �4st�4  s 0 * remove any tags in the provided tag list    t �uu T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  r vwv i   ` cxyx I      �3z�2�3 0 	cleartask 	clearTaskz {|{ o      �1�1 0 ltask lTask| }�0} o      �/�/ 0 ltaglist lTagList�0  �2  y w     $~~ X    $��.�� k    �� ��� I   �-��,
�- .ascrcmnt****      � ****� o    �+�+ 0 atag aTag�,  � ��*� I    �)��(�) 0 	untagtask 	untagTask� ��� o    �'�' 0 ltask lTask� ��&� o    �%�% 0 atag aTag�&  �(  �*  �. 0 atag aTag� o    �$�$ 0 ltaglist lTagList�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  w ��� l     �#�"�!�#  �"  �!  � ��� l      � ���   �    SECTION 5: other utility    � ��� 4   S E C T I O N   5 :   o t h e r   u t i l i t y  � ��� l     ����  �  �  �       ����������������������������  � �����������������
�	�������� 0 
getfolders 
getFolders� *0 getfoldersoffolders getFoldersOfFolders� 0 getprojects getProjects� .0 getprojectsfromfolder getProjectsFromFolder� 0 gettasks getTasks� ,0 gettasksfromdocument getTasksFromDocument� *0 gettasksfromproject getTasksFromProject� 20 filterforactiveprojects filterForActiveProjects� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate� 20 filterforcompletedtasks filterForCompletedTasks� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� 40 filterforincompletetasks filterForIncompleteTasks� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�
 60 filterfortasksaddedondate filterForTasksAddedOnDate�	 L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� 20 filterfortasksdueondate filterForTasksDueOnDate� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� .0 filterfortaskswithtag filterForTasksWithTag� $0 filterforflagged filterForFlagged� 0 tagtask tagTask� 0 	untagtask 	untagTask� 0 	cleartask 	clearTask� �  � ������� 0 
getfolders 
getFolders�  ����� �  ���� 0 	ldocument 	lDocument��  � �������� 0 	ldocument 	lDocument�� 0 
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
FCac�� �Z��-E� �� ����������� 20 filterforactiveprojects filterForActiveProjects�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject�  �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCPs
�� FCPsFCPa�� 0�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��� ������������ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC.A�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� ��7���������� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject� ;�������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
� 
FC.A�� 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�� �~]�}�|���{�~ @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�} �z��z �  �y�x�y 0 lprojectlist lProjectList�x 0 ldate lDate�|  � �w�v�u�t�s�r�q�p�o�n�m�l�w 0 lprojectlist lProjectList�v 0 ldate lDate�u 0 projectlist projectList�t 	0 cdate  �s 0 thisproject thisProject�r 0 tasklist taskList�q 0 flag  �p 0 thistask thisTask�o 
0 tcdate  �n 
0 tmdate  �m 0 tcds  �l 0 tmds  � c�k�j�i�h�g�f�e
�k 
dstr
�j 
kocl
�i 
cobj
�h .corecnte****       ****�g *0 gettasksfromproject getTasksFromProject
�f 
FCDa
�e 
FCDm�{ ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �d��c�b���a�d Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�c �`��` �  �_�^�_ 0 lprojectlist lProjectList�^ 0 ldate lDate�b  � 	�]�\�[�Z�Y�X�W�V�U�] 0 lprojectlist lProjectList�\ 0 ldate lDate�[ 0 projectlist projectList�Z 0 thisproject thisProject�Y 0 tasklist taskList�X 0 flag  �W 0 thistask thisTask�V 
0 tcdate  �U 
0 tmdate  � ��T�S�R�Q�P�O
�T 
kocl
�S 
cobj
�R .corecnte****       ****�Q *0 gettasksfromproject getTasksFromProject
�P 
FCDa
�O 
FCDm�a y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �N�M�L���K�N 20 filterforcompletedtasks filterForCompletedTasks�M �J��J �  �I�I 0 	ltasklist 	lTaskList�L  � �H�G�F�H 0 	ltasklist 	lTaskList�G 0 tasklist taskList�F 0 thistask thisTask� �E�D�C�B
�E 
kocl
�D 
cobj
�C .corecnte****       ****
�B 
FCcd�K 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �A4�@�?���>�A >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�@ �=��= �  �<�;�< 0 	ltasklist 	lTaskList�; 0 ldate lDate�?  � �:�9�8�7�6�5�: 0 	ltasklist 	lTaskList�9 0 ldate lDate�8 0 tasklist taskList�7 0 thistask thisTask�6 0 
thistaskcd 
thisTaskCD�5 (0 thistaskdatestring thisTaskDateString� :�4�3�2�1�0
�4 
kocl
�3 
cobj
�2 .corecnte****       ****
�1 
FCdc
�0 
dstr�> =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� �/c�.�-���,�/ 40 filterforincompletetasks filterForIncompleteTasks�. �+��+ �  �*�* 0 	ltasklist 	lTaskList�-  � �)�(�'�) 0 	ltasklist 	lTaskList�( 0 tasklist taskList�' 0 thistask thisTask� g�&�%�$�#
�& 
kocl
�% 
cobj
�$ .corecnte****       ****
�# 
FCcd�, 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�� �"��!� ����" 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�! ��� �  �� 0 	ltasklist 	lTaskList�   � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCRp
� 
msng� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �������� 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� �  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  � ����
�	�� 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList�
 0 thistask thisTask�	 0 
thistaskcd 
thisTaskCD� (0 thistaskdatestring thisTaskDateString� ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCDa
� 
dstr� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� ���� ����� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ����� �  ���� 0 	ltasklist 	lTaskList�   � ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  � 
���������������3
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�� ��H���������� 20 filterfortasksdueondate filterForTasksDueOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString� N������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�� ��}���������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD� �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDd
�� 
msng�� A�ZjvE�O 5�[��l kh ��,E�O�� �� ��kv%E�Y hY h[OY��O�� ������������� .0 filterfortaskswithtag filterForTasksWithTag�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCno�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� ������������� $0 filterforflagged filterForFlagged�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� ������������ 0 tagtask tagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � �������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote� ��
�� 
FCno�� %�Z��,E�O�� ��,E�O��%E�O���,FY h� ��3���������� 0 	untagtask 	untagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � ���������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote�� 0 itemnode itemNode� 	9����������[����
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
TEXT�� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� ��y���������� 0 	cleartask 	clearTask�� ����� �  ������ 0 ltask lTask�� 0 ltaglist lTagList��  � �������� 0 ltask lTask�� 0 ltaglist lTagList�� 0 atag aTag� ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� 0 	untagtask 	untagTask�� %�Z !�[��l kh �j O*��l+ [OY��ascr  ��ޭ