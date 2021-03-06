FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Script library for the manipulation of OmniFocus.

	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, 2010, 2011, Seth Landsman, Ph.D. - seth@homeforderangedscientists.net
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 1.0, released FEB2011
     � 	 	� 
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
folderList��   $�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� *0 getfoldersoffolders getFoldersOfFolders B  C�� C o      ���� 0 lfolders lFolders��  ��   A w     & D E D k    & F F  G H G X    # I�� J I r     K L K b     M N M o    ���� 0 lfolders lFolders N I    �� O���� *0 getfoldersoffolders getFoldersOfFolders O  P�� P n     Q R Q 2   ��
�� 
FCAr R o    ���� 0 
thisfolder 
thisFolder��  ��   L o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder J o    ���� 0 lfolders lFolders H  S T S l  $ $��������  ��  ��   T  U�� U L   $ & V V o   $ %���� 0 lfolders lFolders��   E�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ?  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ 9 3 1b: projects and utility associated with projects     \ � ] ] f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s   Z  ^ _ ^ i     ` a ` I      �� b���� 0 getprojects getProjects b  c�� c o      ���� 0 	ldocument 	lDocument��  ��   a w      d e d L     f f n     g h g 2   ��
�� 
FCfx h o    ���� 0 	ldocument 	lDocument e�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   _  i j i l     ��������  ��  ��   j  k l k i     m n m I      �� o���� .0 getprojectsfromfolder getProjectsFromFolder o  p�� p o      ���� 0 lfolder lFolder��  ��   n w      q r q L     s s n     t u t 2   ��
�� 
FCpr u o    ���� 0 lfolder lFolder r�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   l  v w v l     ��������  ��  ��   w  x y x l      �� z {��   z 9 3 1c: contexts and utility associated with contexts     { � | | f   1 c :   c o n t e x t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   c o n t e x t s   y  } ~ } i      �  I      �� ����� 0 getcontexts getContexts �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCfc � o    ���� 0 	ldocument 	lDocument ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ~  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � 3 - 1d: tasks and utility associated with tasks     � � � � Z   1 d :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document     � � � ��   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t   �  � � � i     � � � I      �� ����� 0 gettasks getTasks �  � � � o      ���� 0 	ldocument 	lDocument �  ��� � o      ���� 0 lprojectlist lProjectList��  ��   � w     * � � � k    * � �  � � � r     � � � n     � � � 2   ��
�� 
FCac � o    ���� 0 	ldocument 	lDocument � o      ���� 0 tasklist taskList �  � � � X    ' ��� � � r    " � � � b      � � � o    ���� 0 tasklist taskList � I    �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o    ���� 0 thisproject thisProject��  ��   � o      ���� 0 tasklist taskList�� 0 thisproject thisProject � o    ���� 0 lprojectlist lProjectList �  ��� � L   ( * � � o   ( )���� 0 tasklist taskList��   ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ,0 gettasksfromdocument getTasksFromDocument �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w     	 � � � k    	 � �  � � � L     � � n     � � � m    ��
�� 
FCft � o    ���� 0 	ldocument 	lDocument �  ��� � l    �� � ���   � � �		set lProjectList to getProjects(lDocument)		set taskList to tasks of lDocument		repeat with thisProject in lProjectList			set taskList to taskList & getTasks(thisProject)		end repeat		return taskList    � � � ��  	 	 s e t   l P r o j e c t L i s t   t o   g e t P r o j e c t s ( l D o c u m e n t )  	 	 s e t   t a s k L i s t   t o   t a s k s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s P r o j e c t   i n   l P r o j e c t L i s t  	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   g e t T a s k s ( t h i s P r o j e c t )  	 	 e n d   r e p e a t  	 	 r e t u r n   t a s k L i s t��   ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o      ���� 0 lproject lProject��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCac � o    ���� 0 lproject lProject ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��~�}�  �~  �}   �  � � � l      �| � ��|   � � � SECTION 2: Filter projects and contexts.  Given a list of projects or contexts, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �`   S E C T I O N   2 :   F i l t e r   p r o j e c t s   a n d   c o n t e x t s .     G i v e n   a   l i s t   o f   p r o j e c t s   o r   c o n t e x t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 �  � � � l     �{�z�y�{  �z  �y   �  � � � i     # � � � I      �x ��w�x 20 filterforactiveprojects filterForActiveProjects �  ��v � o      �u�u 0 lprojectlist lProjectList�v  �w   � w     2 � � � k    2 � �  � � � r     � � � J    �t�t   � o      �s�s 0 projectlist projectList �  � � � X    / ��r � � Z    * � ��q�p � =    � � � n    � � � 1    �o
�o 
FCPs � o    �n�n 0 thisproject thisProject � m    �m
�m FCPsFCPa � r    & � � � b    $ � � � o     �l�l 0 projectlist projectList � J     # � �  ��k � o     !�j�j 0 thisproject thisProject�k   � o      �i�i 0 projectlist projectList�q  �p  �r 0 thisproject thisProject � o   
 �h�h 0 lprojectlist lProjectList �  ��g � L   0 2 � � o   0 1�f�f 0 projectlist projectList�g   ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  � � � l     �e�d�c�e  �d  �c   �  � � � i   $ '   I      �b�a�b B0 filterprojectsforsingletonlists filterProjectsForSingletonLists �` o      �_�_ 0 lprojectlist lProjectList�`  �a   w     2 k    2  r    	
	 J    �^�^  
 o      �]�] 0 projectlist projectList  X    /�\ Z    *�[�Z =    n    1    �Y
�Y 
FC.A o    �X�X 0 thisproject thisProject m    �W
�W boovtrue r    & b    $ o     �V�V 0 projectlist projectList J     # �U o     !�T�T 0 thisproject thisProject�U   o      �S�S 0 projectlist projectList�[  �Z  �\ 0 thisproject thisProject o   
 �R�R 0 lprojectlist lProjectList �Q L   0 2 o   0 1�P�P 0 projectlist projectList�Q  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  l     �O�N�M�O  �N  �M     i   ( +!"! I      �L#�K�L H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists# $�J$ o      �I�I 0 lprojectlist lProjectList�J  �K  " w     2%&% k    2'' ()( r    *+* J    �H�H  + o      �G�G 0 projectlist projectList) ,-, X    /.�F/. Z    *01�E�D0 =   232 n   454 1    �C
�C 
FC.A5 o    �B�B 0 thisproject thisProject3 m    �A
�A boovfals1 r    &676 b    $898 o     �@�@ 0 projectlist projectList9 J     #:: ;�?; o     !�>�> 0 thisproject thisProject�?  7 o      �=�= 0 projectlist projectList�E  �D  �F 0 thisproject thisProject/ o   
 �<�< 0 lprojectlist lProjectList- <�;< L   0 2== o   0 1�:�: 0 projectlist projectList�;  &�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��    >?> l     �9�8�7�9  �8  �7  ? @A@ l      �6BC�6  B � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   C �DD   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
A EFE i   , /GHG I      �5I�4�5 @0 filterprojectsforchangedondate filterProjectsForChangedOnDateI JKJ o      �3�3 0 lprojectlist lProjectListK L�2L o      �1�1 0 ldate lDate�2  �4  H w     �MNM k    �OO PQP r    RSR J    �0�0  S o      �/�/ 0 projectlist projectListQ TUT r    VWV n    
XYX 1    
�.
�. 
dstrY o    �-�- 0 ldate lDateW o      �,�, 	0 cdate  U Z[Z X    �\�+]\ k    �^^ _`_ r    %aba I    #�*c�)�* *0 gettasksfromproject getTasksFromProjectc d�(d o    �'�' 0 thisproject thisProject�(  �)  b o      �&�& 0 tasklist taskList` efe r   & )ghg m   & '�%
�% boovfalsh o      �$�$ 0 flag  f iji X   * rk�#lk k   : mmm non r   : ?pqp n  : =rsr 1   ; =�"
�" 
FCDas o   : ;�!�! 0 thistask thisTaskq o      � �  
0 tcdate  o tut r   @ Evwv n  @ Cxyx 1   A C�
� 
FCDmy o   @ A�� 0 thistask thisTaskw o      �� 
0 tmdate  u z{z r   F K|}| n   F I~~ 1   G I�
� 
dstr o   F G�� 
0 tcdate  } o      �� 0 tcds  { ��� r   L Q��� n   L O��� 1   M O�
� 
dstr� o   L M�� 
0 tmdate  � o      �� 0 tmds  � ��� Z   R _����� =  R U��� o   R S�� 0 tcds  � o   S T�� 	0 cdate  � r   X [��� m   X Y�
� boovtrue� o      �� 0 flag  �  �  � ��� Z   ` m����� =  ` c��� o   ` a�� 0 tmds  � o   a b�� 	0 cdate  � r   f i��� m   f g�
� boovtrue� o      �
�
 0 flag  �  �  �  �# 0 thistask thisTaskl o   - .�	�	 0 tasklist taskListj ��� Z   s ������ o   s t�� 0 flag  � r   w ~��� b   w |��� o   w x�� 0 projectlist projectList� J   x {�� ��� o   x y�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�  �  �  �+ 0 thisproject thisProject] o    � �  0 lprojectlist lProjectList[ ���� L   � ��� o   � ����� 0 projectlist projectList��  N�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  F ��� l     ��������  ��  ��  � ��� l      ������  � Z T
Return those projects greater than the size specified.
Only counts available tasks
   � ��� � 
 R e t u r n   t h o s e   p r o j e c t s   g r e a t e r   t h a n   t h e   s i z e   s p e c i f i e d . 
 O n l y   c o u n t s   a v a i l a b l e   t a s k s 
� ��� i   0 3��� I      ������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 lsize lSize��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    3����� k    .�� ��� r    ��� n   ��� 1    ��
�� 
FC#a� o    ���� 0 thisproject thisProject� o      ���� 0 ps  � ���� Z    .������� ?    ��� o    ���� 0 ps  � o    ���� 0 lsize lSize� r   # *��� b   # (��� o   # $���� 0 projectlist projectList� J   $ '�� ���� o   $ %���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� ���� L   4 6�� o   4 5���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � � 
a project is defined as being changed not changed after a date if it
does not contain task that has a created or modified date 
that is set to after the date in question 
   � ���Z   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   n o t   c h a n g e d   a f t e r   a   d a t e   i f   i t 
 d o e s   n o t   c o n t a i n   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   a f t e r   t h e   d a t e   i n   q u e s t i o n   
� ��� i   4 7��� I      ������� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 ldate lDate��  ��  � w     x��� k    x�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    u����� k    p�� ��� r    ��� I    ������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r     #��� m     !��
�� boovfals� o      ���� 0 flag  � ��� X   $ `����� k   4 [�� ��� r   4 9��� n  4 7��� 1   5 7��
�� 
FCDa� o   4 5���� 0 thistask thisTask� o      ���� 
0 tcdate  � ��� r   : ?   n  : = 1   ; =��
�� 
FCDm o   : ;���� 0 thistask thisTask o      ���� 
0 tmdate  �  l  @ @��������  ��  ��    Z   @ M	���� A   @ C

 o   @ A���� 
0 tcdate   o   A B���� 0 ldate lDate	 r   F I m   F G��
�� boovtrue o      ���� 0 flag  ��  ��    l  N N��������  ��  ��   �� Z   N [���� A   N Q o   N O���� 
0 tmdate   o   O P���� 0 ldate lDate r   T W m   T U��
�� boovtrue o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� �� Z   a p���� o   a b���� 0 flag   r   e l b   e j o   e f���� 0 projectlist projectList J   f i �� o   f g���� 0 thisproject thisProject��   o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList�  ��  L   v x!! o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � "#" l     ��������  ��  ��  # $%$ l      ��&'��  & � �
Filter for all contexts associated with a <<string>> context.
That is OmniFocus::Foo::Bar is not included by OmniFocus::<<string>> and
OmniFocus::<<string>::Foo are both included.
   ' �((j 
 F i l t e r   f o r   a l l   c o n t e x t s   a s s o c i a t e d   w i t h   a   < < s t r i n g > >   c o n t e x t . 
 T h a t   i s   O m n i F o c u s : : F o o : : B a r   i s   n o t   i n c l u d e d   b y   O m n i F o c u s : : < < s t r i n g > >   a n d 
 O m n i F o c u s : : < < s t r i n g > : : F o o   a r e   b o t h   i n c l u d e d . 
% )*) i   8 ;+,+ I      ��-���� 20 filtercontextsforstring filterContextsForString- ./. o      ���� 0 lcontextlist lContextList/ 0��0 o      ���� 0 ctx  ��  ��  , w     c121 k    c33 454 r    676 J    ����  7 o      ���� 0 ctxlist ctxList5 898 X    `:��;: k    [<< =>= l    ��?@��  ? 5 /			set cname to thisContext's name			log cname   @ �AA ^ 	 	 	 s e t   c n a m e   t o   t h i s C o n t e x t ' s   n a m e  	 	 	 l o g   c n a m e> BCB r    DED o    ���� 0 thiscontext thisContextE o      ����  0 workingcontext workingContextC FGF r    HIH m    ��
�� boovtrueI o      ���� 0 flag  G J��J W    [KLK k   ' VMM NON l   ' '��PQ��  P � �				set cname to "Top context is " & thisContext's name & " and checking against " & workingContext's name				log cname								set cname to "checking " & workingContext's name & " to see if it has Waitng For"				log cname   Q �RR� 	 	 	 	 s e t   c n a m e   t o   " T o p   c o n t e x t   i s   "   &   t h i s C o n t e x t ' s   n a m e   &   "   a n d   c h e c k i n g   a g a i n s t   "   &   w o r k i n g C o n t e x t ' s   n a m e  	 	 	 	 l o g   c n a m e  	 	 	 	 	 	 	 	 s e t   c n a m e   t o   " c h e c k i n g   "   &   w o r k i n g C o n t e x t ' s   n a m e   &   "   t o   s e e   i f   i t   h a s   W a i t n g   F o r "  	 	 	 	 l o g   c n a m eO STS l  ' '��������  ��  ��  T UVU Z   ' >WX����W l  ' ,Y����Y E   ' ,Z[Z n  ' *\]\ 1   ( *��
�� 
pnam] o   ' (����  0 workingcontext workingContext[ o   * +���� 0 ctx  ��  ��  X k   / :^^ _`_ l   / /��ab��  a H B					set cname to "Got one - " & thisContext's name					log cname   b �cc � 	 	 	 	 	 s e t   c n a m e   t o   " G o t   o n e   -   "   &   t h i s C o n t e x t ' s   n a m e  	 	 	 	 	 l o g   c n a m e` ded r   / 6fgf b   / 4hih o   / 0���� 0 ctxlist ctxListi J   0 3jj k��k o   0 1���� 0 thiscontext thisContext��  g o      ���� 0 ctxlist ctxListe l��l r   7 :mnm m   7 8��
�� boovtruen o      ���� 0 flag  ��  ��  ��  V opo l  ? ?��������  ��  ��  p qrq l   ? ?��st��  s c ]				set cname to "checking " & workingContext's name & " to see if it is empty"				log cname   t �uu � 	 	 	 	 s e t   c n a m e   t o   " c h e c k i n g   "   &   w o r k i n g C o n t e x t ' s   n a m e   &   "   t o   s e e   i f   i t   i s   e m p t y "  	 	 	 	 l o g   c n a m er vwv l   ? ?��xy��  x h b HACK: unfortunately, there is no good way to tell if a context doesn't have a parent
				context    y �zz �   H A C K :   u n f o r t u n a t e l y ,   t h e r e   i s   n o   g o o d   w a y   t o   t e l l   i f   a   c o n t e x t   d o e s n ' t   h a v e   a   p a r e n t 
 	 	 	 	 c o n t e x t  w {�{ Z   ? V|}�~~| >  ? D� n  ? B��� 1   @ B�}
�} 
pnam� o   ? @�|�|  0 workingcontext workingContext� m   B C�� ���  O m n i F o c u s} k   G N�� ��� r   G L��� n  G J��� 1   H J�{
�{ 
ctnr� o   G H�z�z  0 workingcontext workingContext� o      �y�y  0 workingcontext workingContext� ��x� l   M M�w���w  � W Q					set cname to "root of " & workingContext's name & " is empty"					log cname   � ��� � 	 	 	 	 	 s e t   c n a m e   t o   " r o o t   o f   "   &   w o r k i n g C o n t e x t ' s   n a m e   &   "   i s   e m p t y "  	 	 	 	 	 l o g   c n a m e�x  �~  ~ k   Q V�� ��� r   Q T��� m   Q R�v
�v boovfals� o      �u�u 0 flag  � ��t� l   U U�s���s  � Q K					set cname to "finding root of " & workingContext's name					log cname   � ��� � 	 	 	 	 	 s e t   c n a m e   t o   " f i n d i n g   r o o t   o f   "   &   w o r k i n g C o n t e x t ' s   n a m e  	 	 	 	 	 l o g   c n a m e�t  �  L =  # &��� o   # $�r�r 0 flag  � m   $ %�q
�q boovfals��  �� 0 thiscontext thisContext; o   
 �p�p 0 lcontextlist lContextList9 ��o� L   a c�� o   a b�n�n 0 ctxlist ctxList�o  2�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  * ��� l     �m�l�k�m  �l  �k  � ��� l     �j�i�h�j  �i  �h  � ��� l      �g���g  � � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   � ��� �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
� ��� i   < ?��� I      �f��e�f 20 filterforcompletedtasks filterForCompletedTasks� ��d� o      �c�c 0 	ltasklist 	lTaskList�d  �e  � w     2��� k    2�� ��� r    ��� J    �b�b  � o      �a�a 0 tasklist taskList� ��� X    /��`�� Z    *���_�^� =   ��� n    ��� 1    �]
�] 
FCcd� o    �\�\ 0 thistask thisTask� m    �[
�[ boovtrue� r    &��� b    $��� o     �Z�Z 0 tasklist taskList� J     #�� ��Y� o     !�X�X 0 thistask thisTask�Y  � o      �W�W 0 tasklist taskList�_  �^  �` 0 thistask thisTask� o   
 �V�V 0 	ltasklist 	lTaskList� ��U� L   0 2�� o   0 1�T�T 0 tasklist taskList�U  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �S�R�Q�S  �R  �Q  � ��� i   @ C��� I      �P��O�P >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      �N�N 0 	ltasklist 	lTaskList� ��M� o      �L�L 0 ldate lDate�M  �O  � w     <��� k    <�� ��� r    ��� J    �K�K  � o      �J�J 0 tasklist taskList� ��� X    9��I�� k    4�� ��� r    ��� n   ��� 1    �H
�H 
FCdc� o    �G�G 0 thistask thisTask� o      �F�F 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �E
�E 
dstr� o    �D�D 0 
thistaskcd 
thisTaskCD� o      �C�C (0 thistaskdatestring thisTaskDateString� ��B� Z   # 4���A�@� =  # &��� o   # $�?�? (0 thistaskdatestring thisTaskDateString� o   $ %�>�> 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�=�= 0 tasklist taskList� J   * -�� ��<� o   * +�;�; 0 thistask thisTask�<  � o      �:�: 0 tasklist taskList�A  �@  �B  �I 0 thistask thisTask� o   
 �9�9 0 	ltasklist 	lTaskList� ��8� L   : <�� o   : ;�7�7 0 tasklist taskList�8  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �6�5�4�6  �5  �4  � ��� i   D G��� I      �3��2�3 40 filterforincompletetasks filterForIncompleteTasks� ��1� o      �0�0 0 	ltasklist 	lTaskList�1  �2  � w     2��� k    2�� � � r     J    �/�/   o      �.�. 0 tasklist taskList   X    /�- Z    *�,�+ >   	
	 n     1    �*
�* 
FCcd o    �)�) 0 thistask thisTask
 m    �(
�( boovtrue r    & b    $ o     �'�' 0 tasklist taskList J     # �& o     !�%�% 0 thistask thisTask�&   o      �$�$ 0 tasklist taskList�,  �+  �- 0 thistask thisTask o   
 �#�# 0 	ltasklist 	lTaskList �" L   0 2 o   0 1�!�! 0 tasklist taskList�"  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     � ���   �  �    i   H K I      ��� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks � o      �� 0 	ltasklist 	lTaskList�  �   w     2 k    2  !  r    "#" J    ��  # o      �� 0 tasklist taskList! $%$ X    /&�'& Z    *()��( =   *+* n   ,-, 1    �
� 
FCRp- o    �� 0 thistask thisTask+ m    �
� 
msng) r    &./. b    $010 o     �� 0 tasklist taskList1 J     #22 3�3 o     !�� 0 thistask thisTask�  / o      �� 0 tasklist taskList�  �  � 0 thistask thisTask' o   
 �� 0 	ltasklist 	lTaskList% 4�4 L   0 255 o   0 1�� 0 tasklist taskList�  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   676 l     �
�	��
  �	  �  7 898 i   L O:;: I      �<�� 60 filterfortasksaddedondate filterForTasksAddedOnDate< =>= o      �� 0 	ltasklist 	lTaskList> ?�? o      �� 0 ldate lDate�  �  ; w     <@A@ k    <BB CDC r    EFE J    ��  F o      �� 0 tasklist taskListD GHG X    9I� JI k    4KK LML r    NON n   PQP 1    ��
�� 
FCDaQ o    ���� 0 thistask thisTaskO o      ���� 0 
thistaskcd 
thisTaskCDM RSR r    "TUT n     VWV 1     ��
�� 
dstrW o    ���� 0 
thistaskcd 
thisTaskCDU o      ���� (0 thistaskdatestring thisTaskDateStringS X��X Z   # 4YZ����Y =  # &[\[ o   # $���� (0 thistaskdatestring thisTaskDateString\ o   $ %���� 0 ldate lDateZ r   ) 0]^] b   ) ._`_ o   ) *���� 0 tasklist taskList` J   * -aa b��b o   * +���� 0 thistask thisTask��  ^ o      ���� 0 tasklist taskList��  ��  ��  �  0 thistask thisTaskJ o   
 ���� 0 	ltasklist 	lTaskListH c��c L   : <dd o   : ;���� 0 tasklist taskList��  A�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  9 efe l     ��������  ��  ��  f ghg i   P Siji I      ��k���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContextk l��l o      ���� 0 	ltasklist 	lTaskList��  ��  j w     �mnm k    �oo pqp r    rsr J    ����  s o      ���� 0 tasklist taskListq tut X    �v��wv k    �xx yzy r    {|{ n    }~} 1    ��
�� 
pnam~ o    ���� 0 thistask thisTask| o      ���� 0 foo  z � r    "��� n     ��� m     ��
�� 
FCct� o    ���� 0 thistask thisTask� o      ���� 0 con  � ��� r   # (��� n   # &��� 1   $ &��
�� 
pnam� o   # $���� 0 con  � o      ���� 0 foo  � ���� Z   ) ������� >  ) ,��� o   ) *���� 0 con  � m   * +��
�� 
msng� k   / �� ��� T   / f�� Z   4 a������ >  4 9��� n  4 7��� 1   5 7��
�� 
ctnr� o   4 5���� 0 con  � m   7 8��
�� 
msng� k   < ]�� ��� r   < A��� n  < ?��� 1   = ?��
�� 
ctnr� o   < =���� 0 con  � o      ���� 0 ccon  � ��� r   B G��� n   B E��� 1   C E��
�� 
pnam� o   B C���� 0 ccon  � o      ���� 
0 ccname  � ���� Z   H ]������ >  H K��� o   H I���� 
0 ccname  � m   I J�� ���  O m n i F o c u s� k   N Y�� ��� r   N S��� n  N Q��� 1   O Q��
�� 
ctnr� o   N O���� 0 con  � o      ���� 0 con  � ���� r   T Y��� n   T W��� 1   U W��
�� 
pnam� o   T U���� 0 con  � o      ���� 0 foo  ��  ��  �  S   \ ]��  ��  �  S   ` a� ��� r   g l��� n   g j��� 1   h j��
�� 
pnam� o   g h���� 0 con  � o      ���� 0 conname  � ���� Z   m ������� H   m q�� E   m p��� o   m n���� 0 conname  � m   n o�� ���  W a i t i n g� r   t {��� b   t y��� o   t u���� 0 tasklist taskList� J   u x�� ���� o   u v���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  � r   � ���� b   � ���� o   � ����� 0 tasklist taskList� J   � ��� ���� o   � ����� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  �� 0 thistask thisTaskw o   
 ���� 0 	ltasklist 	lTaskListu ���� L   � ��� o   � ����� 0 tasklist taskList��  n�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  h ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� 20 filterfortasksdueondate filterForTasksDueOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     F��� k    F�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    C����� k    >�� ��� r    ��� n   ��� 1    ��
�� 
FCDd� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskdd 
thisTaskDD� ���� Z    >������� >    ��� o    ���� 0 
thistaskdd 
thisTaskDD� m    ��
�� 
msng� k   # :�� ��� r   # (��� n   # &� � 1   $ &��
�� 
dstr  o   # $���� 0 
thistaskdd 
thisTaskDD� o      ���� (0 thistaskdatestring thisTaskDateString� �� Z   ) :���� =  ) , o   ) *���� (0 thistaskdatestring thisTaskDateString o   * +���� 0 ldate lDate r   / 6 b   / 4	 o   / 0���� 0 tasklist taskList	 J   0 3

 �� o   0 1���� 0 thistask thisTask��   o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� �� L   D F o   D E���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    i   X [ I      ������ :0 filterfortasksduebeforedate filterForTasksDueBeforeDate  o      ���� 0 	ltasklist 	lTaskList �� o      ���� 0 ldate lDate��  ��   w     J k    J  r     J    ����   o      ���� 0 tasklist taskList   X    G!��"! k    B## $%$ r    &'& n   ()( 1    ��
�� 
FCDd) o    ���� 0 thistask thisTask' o      ���� 0 
thistaskdd 
thisTaskDD% *��* Z    B+,��~+ >    -.- o    �}�} 0 
thistaskdd 
thisTaskDD. m    �|
�| 
msng, Z   # >/0�{�z/ A   # &121 o   # $�y�y 0 
thistaskdd 
thisTaskDD2 o   $ %�x�x 0 ldate lDate0 k   ) :33 454 I  ) 2�w6�v
�w .ascrcmnt****      � ****6 b   ) .787 m   ) *99 �:: , F o u n d   a n   o v e r d u e   t a s k  8 n  * -;<; 1   + -�u
�u 
pnam< o   * +�t�t 0 thistask thisTask�v  5 =�s= r   3 :>?> b   3 8@A@ o   3 4�r�r 0 tasklist taskListA J   4 7BB C�qC o   4 5�p�p 0 thistask thisTask�q  ? o      �o�o 0 tasklist taskList�s  �{  �z  �  �~  ��  �� 0 thistask thisTask" o   
 �n�n 0 	ltasklist 	lTaskList  D�mD L   H JEE o   H I�l�l 0 tasklist taskList�m  �                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   FGF l     �k�j�i�k  �j  �i  G HIH i   \ _JKJ I      �hL�g�h .0 filterfortaskswithtag filterForTasksWithTagL MNM o      �f�f 0 	ltasklist 	lTaskListN O�eO o      �d�d 0 tag  �e  �g  K w     6PQP k    6RR STS r    UVU J    �c�c  V o      �b�b 0 tasklist taskListT WXW X    3Y�aZY k    .[[ \]\ r    ^_^ n    `a` 1    �`
�` 
FCnoa o    �_�_ 0 thistask thisTask_ o      �^�^ 0 itemnote itemNote] b�]b Z    .cd�\�[c l    e�Z�Ye E     fgf o    �X�X 0 itemnote itemNoteg o    �W�W 0 tag  �Z  �Y  d r   # *hih b   # (jkj o   # $�V�V 0 tasklist taskListk J   $ 'll m�Um o   $ %�T�T 0 thistask thisTask�U  i o      �S�S 0 tasklist taskList�\  �[  �]  �a 0 thistask thisTaskZ o   
 �R�R 0 	ltasklist 	lTaskListX n�Qn L   4 6oo o   4 5�P�P 0 tasklist taskList�Q  Q�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  I pqp l     �O�N�M�O  �N  �M  q rsr i   ` ctut I      �Lv�K�L $0 filterforflagged filterForFlaggedv w�Jw o      �I�I 0 	ltasklist 	lTaskList�J  �K  u w     2xyx k    2zz {|{ r    }~} J    �H�H  ~ o      �G�G 0 tasklist taskList| � X    /��F�� Z    *���E�D� =   ��� n    ��� 1    �C
�C 
FCfl� o    �B�B 0 thistask thisTask� m    �A
�A boovtrue� r    &��� b    $��� o     �@�@ 0 tasklist taskList� J     #�� ��?� o     !�>�> 0 thistask thisTask�?  � o      �=�= 0 tasklist taskList�E  �D  �F 0 thistask thisTask� o   
 �<�< 0 	ltasklist 	lTaskList� ��;� L   0 2�� o   0 1�:�: 0 tasklist taskList�;  y�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  s ��� l     �9�8�7�9  �8  �7  � ��� l      �6���6  � � �
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx, based
on the list of all contexts
   � ��� 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x ,   b a s e d 
 o n   t h e   l i s t   o f   a l l   c o n t e x t s 
� ��� i   d g��� I      �5��4�5 60 filterfortaskswithcontext filterForTasksWithContext� ��� o      �3�3 0 lcontextlist lContextList� ��2� o      �1�1 0 ctx  �2  �4  � w     V��� k    V�� ��� r    ��� J    �0�0  � o      �/�/ 0 tasklist taskList� ��� X    S��.�� k    N�� ��� r    ��� b    ��� m    �� ���  t e s t i n g  � n    ��� 1    �-
�- 
pnam� o    �,�, 0 thisctx thisCtx� o      �+�+ 0 t  � ��� r    "��� o     �*�* 0 t  � o      �)�) 0 p  � ��� I  # (�(��'
�( .ascrcmnt****      � ****� o   # $�&�& 0 t  �'  � ��%� Z   ) N���$�#� E   ) .��� n   ) ,��� 1   * ,�"
�" 
pnam� o   ) *�!�! 0 thisctx thisCtx� o   , -� �  0 ctx  � k   1 J�� ��� r   1 8��� b   1 6��� m   1 2�� ���  f o u n d  � n   2 5��� 1   3 5�
� 
pnam� o   2 3�� 0 thisctx thisCtx� o      �� 0 t  � ��� r   9 <��� o   9 :�� 0 t  � o      �� 0 p  � ��� I  = B���
� .ascrcmnt****      � ****� o   = >�� 0 t  �  � ��� r   C J��� b   C H��� o   C D�� 0 tasklist taskList� n   D G��� 2  E G�
� 
FC0T� o   D E�� 0 thisctx thisCtx� o      �� 0 tasklist taskList�  �$  �#  �%  �. 0 thisctx thisCtx� o   
 �� 0 lcontextlist lContextList� ��� L   T V�� o   T U�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� l      ����  � a [
Filter lTaskList to return only those tasks that are not in
the provided list of contexts    � ��� � 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s   t h a t   a r e   n o t   i n 
 t h e   p r o v i d e d   l i s t   o f   c o n t e x t s  � ��� i   h k��� I      ���
� :0 filterfortasksoutofcontexts filterForTasksOutOfContexts� ��� o      �	�	 0 	ltasklist 	lTaskList� ��� o      �� 0 lcontextlist lContextList�  �
  � w     ]��� k    ]�� ��� r    ��� J    ��  � o      �� 0 tasklist taskList� ��� X    Z���� k    U�� ��� r    ��� m    �
� boovfals� o      �� 0 flag  � ��� X    C �  Z   + >� �� =  + 4 n  + 0 1   . 0��
�� 
pnam n  + .	 m   , .��
�� 
FCct	 o   + ,���� 0 thistask thisTask n  0 3

 1   1 3��
�� 
pnam o   0 1���� 0 thisctx thisCtx r   7 : m   7 8��
�� boovtrue o      ���� 0 flag  �   ��  � 0 thisctx thisCtx o    ���� 0 lcontextlist lContextList� �� Z   D U���� =  D G o   D E���� 0 flag   m   E F��
�� boovfals r   J Q b   J O o   J K���� 0 tasklist taskList J   K N �� o   K L���� 0 thistask thisTask��   o      ���� 0 tasklist taskList��  ��  ��  � 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� �� L   [ ] o   [ \���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    l      �� ��   ] W
Filter lTaskList to return only those tasks that are in
the provided list of contexts      �!! � 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s   t h a t   a r e   i n 
 t h e   p r o v i d e d   l i s t   o f   c o n t e x t s   "#" i   l o$%$ I      ��&���� 40 filterfortasksincontexts filterForTasksInContexts& '(' o      ���� 0 	ltasklist 	lTaskList( )��) o      ���� 0 lcontextlist lContextList��  ��  % w     ]*+* k    ],, -.- r    /0/ J    ����  0 o      ���� 0 tasklist taskList. 121 X    Z3��43 k    U55 676 r    898 m    ��
�� boovfals9 o      ���� 0 flag  7 :;: X    C<��=< Z   + >>?����> =  + 4@A@ n  + 0BCB 1   . 0��
�� 
pnamC n  + .DED m   , .��
�� 
FCctE o   + ,���� 0 thistask thisTaskA n  0 3FGF 1   1 3��
�� 
pnamG o   0 1���� 0 thisctx thisCtx? r   7 :HIH m   7 8��
�� boovtrueI o      ���� 0 flag  ��  ��  �� 0 thisctx thisCtx= o    ���� 0 lcontextlist lContextList; J��J Z   D UKL����K =  D GMNM o   D E���� 0 flag  N m   E F��
�� boovtrueL r   J QOPO b   J OQRQ o   J K���� 0 tasklist taskListR J   K NSS T��T o   K L���� 0 thistask thisTask��  P o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask4 o   
 ���� 0 	ltasklist 	lTaskList2 U��U L   [ ]VV o   [ \���� 0 tasklist taskList��  +�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  # WXW l     ��������  ��  ��  X YZY l      ��[\��  [ � � Filter for tasks that have not been changed since a selected date
	Unchanged is defined as not created or modified since that date    \ �]]   F i l t e r   f o r   t a s k s   t h a t   h a v e   n o t   b e e n   c h a n g e d   s i n c e   a   s e l e c t e d   d a t e 
 	 U n c h a n g e d   i s   d e f i n e d   a s   n o t   c r e a t e d   o r   m o d i f i e d   s i n c e   t h a t   d a t e  Z ^_^ i   p s`a` I      ��b���� F0 !filterfortasksnotchangedsincedate !filterForTasksNotChangedSinceDateb cdc o      ���� 0 	ltasklist 	lTaskListd e��e o      ���� 0 ldate lDate��  ��  a w     nfgf k    nhh iji r    klk J    ����  l o      ���� 0 tasklist taskListj mnm X    ko��po k    fqq rsr r    tut m    ��
�� boovfalsu o      ���� 0 flag  s vwv r     xyx n   z{z 1    ��
�� 
FCDm{ o    ���� 0 thistask thisTasky o      ���� 0 thislmd thisLMDw |}| Z   ! T~���~ >  ! $��� o   ! "���� 0 thislmd thisLMD� m   " #��
�� 
msng Z   ' 4������� A   ' *��� o   ' (���� 0 thislmd thisLMD� o   ( )���� 0 ldate lDate� r   - 0��� m   - .��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  � k   7 T�� ��� r   7 <��� n  7 :��� 1   8 :��
�� 
FCDa� o   7 8���� 0 thistask thisTask� o      ���� 0 thiscd thisCD� ���� Z   = T������� >  = @��� o   = >���� 0 thiscd thisCD� m   > ?��
�� 
msng� Z   C P������� A   C F��� o   C D���� 0 thiscd thisCD� o   D E���� 0 ldate lDate� r   I L��� m   I J��
�� boovtrue� o      ���� 0 flag  ��  ��  ��  ��  ��  } ���� Z   U f������� =  U X��� o   U V���� 0 flag  � m   V W��
�� boovtrue� r   [ b��� b   [ `��� o   [ \���� 0 tasklist taskList� J   \ _�� ���� o   \ ]���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTaskp o   
 ���� 0 	ltasklist 	lTaskListn ���� L   l n�� o   l m���� 0 tasklist taskList��  g�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  _ ��� l     ��������  ��  ��  � ��� l      ������  � A ; Filter for tasks that were created before a selected date    � ��� v   F i l t e r   f o r   t a s k s   t h a t   w e r e   c r e a t e d   b e f o r e   a   s e l e c t e d   d a t e  � ��� i   t w��� I      ������� B0 filterfortaskscreatedbeforedate filterForTasksCreatedBeforeDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     @��� k    @�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    =����� k    8�� ��� r    ��� n   ��� 1    ��
�� 
FCDa� o    ���� 0 thistask thisTask� o      ���� 0 thiscd thisCD� ���� Z    8������� >    ��� o    �� 0 thiscd thisCD� m    �~
�~ 
msng� Z   # 4���}�|� A   # &��� o   # $�{�{ 0 thiscd thisCD� o   $ %�z�z 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�y�y 0 tasklist taskList� J   * -�� ��x� o   * +�w�w 0 thistask thisTask�x  � o      �v�v 0 tasklist taskList�}  �|  ��  ��  ��  �� 0 thistask thisTask� o   
 �u�u 0 	ltasklist 	lTaskList� ��t� L   > @�� o   > ?�s�s 0 tasklist taskList�t  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �r�q�p�r  �q  �p  � ��� l      �o���o  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     �n�m�l�n  �m  �l  � ��� l      �k���k  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   x {��� I      �j��i�j 0 tagtask tagTask� ��� o      �h�h 0 ltask lTask� ��g� o      �f�f 0 ltag lTag�g  �i  � w     $��� k    $�� ��� r    ��� n    ��� 1    �e
�e 
FCno� o    �d�d 0 ltask lTask� o      �c�c 0 itemnote itemNote� ��b� Z    $���a�`� l   ��_�^� H    �� E    ��� o    	�]�] 0 itemnote itemNote� o   	 
�\�\ 0 ltag lTag�_  �^  � k         r     n     1    �[
�[ 
FCno o    �Z�Z 0 ltask lTask o      �Y�Y 0 itemnote itemNote  r    	
	 b     o    �X�X 0 itemnote itemNote o    �W�W 0 ltag lTag
 o      �V�V 0 itemnote itemNote �U r      o    �T�T 0 itemnote itemNote l     �S�R n       1    �Q
�Q 
FCno o    �P�P 0 ltask lTask�S  �R  �U  �a  �`  �b  ��                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �  l     �O�N�M�O  �N  �M    l      �L�L   4 . remove the provided tag from the notes field     � \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d    i   |  I      �K�J�K 0 	untagtask 	untagTask   o      �I�I 0 ltask lTask  !�H! o      �G�G 0 ltag lTag�H  �J   w     A"#" k    A$$ %&% r    '(' n    )*) 1    �F
�F 
FCno* o    �E�E 0 ltask lTask( o      �D�D 0 itemnote itemNote& +,+ I   �C-�B
�C .ascrcmnt****      � ****- o    	�A�A 0 itemnote itemNote�B  , .�@. Z    A/0�?�>/ l   1�=�<1 E    232 o    �;�; 0 itemnote itemNote3 o    �:�: 0 ltag lTag�=  �<  0 k    =44 565 r    787 o    �9�9 0 ltag lTag8 n     9:9 1    �8
�8 
txdl: 1    �7
�7 
ascr6 ;<; r    1=>= J     ?? @A@ n    BCB 2   �6
�6 
citmC o    �5�5 0 itemnote itemNoteA D�4D m    EE �FF  �4  > J      GG HIH o      �3�3 0 itemnode itemNodeI J�2J n     KLK 1   - /�1
�1 
txdlL 1   , -�0
�0 
ascr�2  < MNM r   2 7OPO c   2 5QRQ o   2 3�/�/ 0 itemnode itemNodeR m   3 4�.
�. 
TEXTP o      �-�- 0 itemnote itemNoteN S�,S r   8 =TUT o   8 9�+�+ 0 itemnote itemNoteU l     V�*�)V n      WXW 1   : <�(
�( 
FCnoX o   9 :�'�' 0 ltask lTask�*  �)  �,  �?  �>  �@  #�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   YZY l     �&�%�$�&  �%  �$  Z [\[ l      �#]^�#  ] 0 * remove any tags in the provided tag list    ^ �__ T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  \ `a` i   � �bcb I      �"d�!�" 0 	cleartask 	clearTaskd efe o      � �  0 ltask lTaskf g�g o      �� 0 ltaglist lTagList�  �!  c w     $hih X    $j�kj k    ll mnm I   �o�
� .ascrcmnt****      � ****o o    �� 0 atag aTag�  n p�p I    �q�� 0 	untagtask 	untagTaskq rsr o    �� 0 ltask lTasks t�t o    �� 0 atag aTag�  �  �  � 0 atag aTagk o    �� 0 ltaglist lTagListi�                                                                                  OFOC  alis    X  Macintosh HD               ���wH+     qOmniFocus.app                                                   *-�����        ����  	                Applications    ��)�      ��/>       q  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  a uvu l     ����  �  �  v wxw l      �yz�  y    SECTION 5: other utility    z �{{ 4   S E C T I O N   5 :   o t h e r   u t i l i t y  x |}| l      �~�  ~   send tweet     ���    s e n d   t w e e t  } ��� i   � ���� I      ���� 0 	sendtweet 	sendTweet� ��
� o      �	�	 	0 value  �
  �  � k     �� ��� r     ��� b     ��� b     ��� m     �� ��� $ t w u r l   - d   ' s t a t u s = '� o    �� 	0 value  � m    �� ��� 0 '   / 1 / s t a t u s e s / u p d a t e . x m l� o      �� 0 cmd  � ��� I   ���
� .sysoexecTEXT���     TEXT� o    	�� 0 cmd  �  �  �       $�������������������������������������  � "�� ����������������������������������������������������������������� 0 
getfolders 
getFolders�  *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 getcontexts getContexts�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filtercontextsforstring filterContextsForString�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 60 filterfortaskswithcontext filterForTasksWithContext�� :0 filterfortasksoutofcontexts filterForTasksOutOfContexts�� 40 filterfortasksincontexts filterForTasksInContexts�� F0 !filterfortasksnotchangedsincedate !filterForTasksNotChangedSinceDate�� B0 filterfortaskscreatedbeforedate filterForTasksCreatedBeforeDate�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask�� 0 	sendtweet 	sendTweet� ��  ���������� 0 
getfolders 
getFolders�� ����� �  ���� 0 	ldocument 	lDocument��  � �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder�  $����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�� �� A���������� *0 getfoldersoffolders getFoldersOfFolders�� ����� �  ���� 0 lfolders lFolders��  � ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder�  E����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�� �� a���������� 0 getprojects getProjects�� ����� �  ���� 0 	ldocument 	lDocument��  � ���� 0 	ldocument 	lDocument�  e��
�� 
FCfx�� �Z��-E� �� n���������� .0 getprojectsfromfolder getProjectsFromFolder�� ����� �  ���� 0 lfolder lFolder��  � ���� 0 lfolder lFolder�  r��
�� 
FCpr�� �Z��-E� �� ����������� 0 getcontexts getContexts�� ����� �  ���� 0 	ldocument 	lDocument��  � ���� 0 	ldocument 	lDocument�  ���
�� 
FCfc�� �Z��-E� �� ����������� 0 gettasks getTasks�� ����� �  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  � ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject�  �����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�� �� ����������� ,0 gettasksfromdocument getTasksFromDocument�� ����� �  ���� 0 	ldocument 	lDocument��  � ���� 0 	ldocument 	lDocument�  ���
�� 
FCft�� 
�Z��,EOP� �� ����������� *0 gettasksfromproject getTasksFromProject�� ����� �  ���� 0 lproject lProject��  � ���� 0 lproject lProject�  ���
�� 
FCac�� �Z��-E� �� ����������� 20 filterforactiveprojects filterForActiveProjects�� ����� �  ���� 0 lprojectlist lProjectList��  � �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject�  ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCPs
� FCPsFCPa�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �~�}�|���{�~ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�} �z��z �  �y�y 0 lprojectlist lProjectList�|  � �x�w�v�x 0 lprojectlist lProjectList�w 0 projectlist projectList�v 0 thisproject thisProject� �u�t�s�r
�u 
kocl
�t 
cobj
�s .corecnte****       ****
�r 
FC.A�{ 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �q"�p�o���n�q H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�p �m��m �  �l�l 0 lprojectlist lProjectList�o  � �k�j�i�k 0 lprojectlist lProjectList�j 0 projectlist projectList�i 0 thisproject thisProject� &�h�g�f�e
�h 
kocl
�g 
cobj
�f .corecnte****       ****
�e 
FC.A�n 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�� �dH�c�b���a�d @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�c �`��` �  �_�^�_ 0 lprojectlist lProjectList�^ 0 ldate lDate�b  � �]�\�[�Z�Y�X�W�V�U�T�S�R�] 0 lprojectlist lProjectList�\ 0 ldate lDate�[ 0 projectlist projectList�Z 	0 cdate  �Y 0 thisproject thisProject�X 0 tasklist taskList�W 0 flag  �V 0 thistask thisTask�U 
0 tcdate  �T 
0 tmdate  �S 0 tcds  �R 0 tmds  � N�Q�P�O�N�M�L�K
�Q 
dstr
�P 
kocl
�O 
cobj
�N .corecnte****       ****�M *0 gettasksfromproject getTasksFromProject
�L 
FCDa
�K 
FCDm�a ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �J��I�H���G�J H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�I �F��F �  �E�D�E 0 lprojectlist lProjectList�D 0 lsize lSize�H  � �C�B�A�@�?�C 0 lprojectlist lProjectList�B 0 lsize lSize�A 0 projectlist projectList�@ 0 thisproject thisProject�? 0 ps  � ��>�=�<�;
�> 
kocl
�= 
cobj
�< .corecnte****       ****
�; 
FC#a�G 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� �:��9�8���7�: Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�9 �6��6 �  �5�4�5 0 lprojectlist lProjectList�4 0 ldate lDate�8  � 	�3�2�1�0�/�.�-�,�+�3 0 lprojectlist lProjectList�2 0 ldate lDate�1 0 projectlist projectList�0 0 thisproject thisProject�/ 0 tasklist taskList�. 0 flag  �- 0 thistask thisTask�, 
0 tcdate  �+ 
0 tmdate  � ��*�)�(�'�&�%
�* 
kocl
�) 
cobj
�( .corecnte****       ****�' *0 gettasksfromproject getTasksFromProject
�& 
FCDa
�% 
FCDm�7 y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �$,�#�"���!�$ 20 filtercontextsforstring filterContextsForString�# � ��  �  ��� 0 lcontextlist lContextList� 0 ctx  �"  � ������� 0 lcontextlist lContextList� 0 ctx  � 0 ctxlist ctxList� 0 thiscontext thisContext�  0 workingcontext workingContext� 0 flag  � 2������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam
� 
ctnr�! d�ZjvE�O X�[��l kh �E�OeE�O ;h�f ��,� ��kv%E�OeE�Y hO��,� ��,E�OPY fE�OP[OY��[OY��O�� �������� 20 filterforcompletedtasks filterForCompletedTasks� ��� �  �� 0 	ltasklist 	lTaskList�  � ���
� 0 	ltasklist 	lTaskList� 0 tasklist taskList�
 0 thistask thisTask� ��	���
�	 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �������� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� �  � ���  0 	ltasklist 	lTaskList�� 0 ldate lDate�  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCdc
�� 
dstr� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� ������������� 40 filterforincompletetasks filterForIncompleteTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�� ������������ 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� ��;���������� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� A����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� ��j���������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  � 
n����������������
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�� ������������� 20 filterfortasksdueondate filterForTasksDueOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString� �������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�� ������������ :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD� 	����������9����
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
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�� ��K���������� .0 filterfortaskswithtag filterForTasksWithTag�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  � ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNote� Q��~�}�|
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| 
FCno�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� �{u�z�y �x�{ $0 filterforflagged filterForFlagged�z �w�w   �v�v 0 	ltasklist 	lTaskList�y    �u�t�s�u 0 	ltasklist 	lTaskList�t 0 tasklist taskList�s 0 thistask thisTask y�r�q�p�o
�r 
kocl
�q 
cobj
�p .corecnte****       ****
�o 
FCfl�x 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �n��m�l�k�n 60 filterfortaskswithcontext filterForTasksWithContext�m �j�j   �i�h�i 0 lcontextlist lContextList�h 0 ctx  �l   �g�f�e�d�c�b�g 0 lcontextlist lContextList�f 0 ctx  �e 0 tasklist taskList�d 0 thisctx thisCtx�c 0 t  �b 0 p   	��a�`�_��^�]��\
�a 
kocl
�` 
cobj
�_ .corecnte****       ****
�^ 
pnam
�] .ascrcmnt****      � ****
�\ 
FC0T�k W�ZjvE�O K�[��l kh ��,%E�O�E�O�j O��,� ��,%E�O�E�O�j O���-%E�Y h[OY��O�� �[��Z�Y�X�[ :0 filterfortasksoutofcontexts filterForTasksOutOfContexts�Z �W�W   �V�U�V 0 	ltasklist 	lTaskList�U 0 lcontextlist lContextList�Y   �T�S�R�Q�P�O�T 0 	ltasklist 	lTaskList�S 0 lcontextlist lContextList�R 0 tasklist taskList�Q 0 thistask thisTask�P 0 flag  �O 0 thisctx thisCtx ��N�M�L�K�J
�N 
kocl
�M 
cobj
�L .corecnte****       ****
�K 
FCct
�J 
pnam�X ^�ZjvE�O R�[��l kh fE�O '�[��l kh ��,�,��,  eE�Y h[OY��O�f  ��kv%E�Y h[OY��O�� �I%�H�G	
�F�I 40 filterfortasksincontexts filterForTasksInContexts�H �E�E   �D�C�D 0 	ltasklist 	lTaskList�C 0 lcontextlist lContextList�G  	 �B�A�@�?�>�=�B 0 	ltasklist 	lTaskList�A 0 lcontextlist lContextList�@ 0 tasklist taskList�? 0 thistask thisTask�> 0 flag  �= 0 thisctx thisCtx
 +�<�;�:�9�8
�< 
kocl
�; 
cobj
�: .corecnte****       ****
�9 
FCct
�8 
pnam�F ^�ZjvE�O R�[��l kh fE�O '�[��l kh ��,�,��,  eE�Y h[OY��O�e  ��kv%E�Y h[OY��O�� �7a�6�5�4�7 F0 !filterfortasksnotchangedsincedate !filterForTasksNotChangedSinceDate�6 �3�3   �2�1�2 0 	ltasklist 	lTaskList�1 0 ldate lDate�5   �0�/�.�-�,�+�*�0 0 	ltasklist 	lTaskList�/ 0 ldate lDate�. 0 tasklist taskList�- 0 thistask thisTask�, 0 flag  �+ 0 thislmd thisLMD�* 0 thiscd thisCD g�)�(�'�&�%�$
�) 
kocl
�( 
cobj
�' .corecnte****       ****
�& 
FCDm
�% 
msng
�$ 
FCDa�4 o�ZjvE�O c�[��l kh fE�O��,E�O�� �� eE�Y hY ��,E�O�� �� eE�Y hY hO�e  ��kv%E�Y h[OY��O�� �#��"�!� �# B0 filterfortaskscreatedbeforedate filterForTasksCreatedBeforeDate�" ��   ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�!   ������ 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 thiscd thisCD ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCDa
� 
msng�  A�ZjvE�O 5�[��l kh ��,E�O�� �� ��kv%E�Y hY h[OY��O�� ������ 0 tagtask tagTask� ��   ��� 0 ltask lTask� 0 ltag lTag�   ��
�	� 0 ltask lTask�
 0 ltag lTag�	 0 itemnote itemNote ��
� 
FCno� %�Z��,E�O�� ��,E�O��%E�O���,FY h� ����� 0 	untagtask 	untagTask� ��   ��� 0 ltask lTask� 0 ltag lTag�   � �������  0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote�� 0 itemnode itemNode 	#����������E����
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
TEXT� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� ��c�������� 0 	cleartask 	clearTask�� ����   ������ 0 ltask lTask�� 0 ltaglist lTagList��   �������� 0 ltask lTask�� 0 ltaglist lTagList�� 0 atag aTag i����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� 0 	untagtask 	untagTask�� %�Z !�[��l kh �j O*��l+ [OY��� ����������� 0 	sendtweet 	sendTweet�� ����   ���� 	0 value  ��   ������ 	0 value  �� 0 cmd   ����
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j ascr  ��ޭ