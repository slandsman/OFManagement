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
folderList��   $�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� *0 getfoldersoffolders getFoldersOfFolders B  C�� C o      ���� 0 lfolders lFolders��  ��   A w     & D E D k    & F F  G H G X    # I�� J I r     K L K b     M N M o    ���� 0 lfolders lFolders N I    �� O���� *0 getfoldersoffolders getFoldersOfFolders O  P�� P n     Q R Q 2   ��
�� 
FCAr R o    ���� 0 
thisfolder 
thisFolder��  ��   L o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder J o    ���� 0 lfolders lFolders H  S T S l  $ $��������  ��  ��   T  U�� U L   $ & V V o   $ %���� 0 lfolders lFolders��   E�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ?  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ 9 3 1b: projects and utility associated with projects     \ � ] ] f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s   Z  ^ _ ^ i     ` a ` I      �� b���� 0 getprojects getProjects b  c�� c o      ���� 0 	ldocument 	lDocument��  ��   a w      d e d L     f f n     g h g 2   ��
�� 
FCfx h o    ���� 0 	ldocument 	lDocument e�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   _  i j i l     ��������  ��  ��   j  k l k i     m n m I      �� o���� .0 getprojectsfromfolder getProjectsFromFolder o  p�� p o      ���� 0 lfolder lFolder��  ��   n w      q r q L     s s n     t u t 2   ��
�� 
FCpr u o    ���� 0 lfolder lFolder r�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   l  v w v l     ��������  ��  ��   w  x y x l      �� z {��   z 9 3 1c: contexts and utility associated with contexts     { � | | f   1 c :   c o n t e x t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   c o n t e x t s   y  } ~ } i      �  I      �� ����� 0 getcontexts getContexts �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCfc � o    ���� 0 	ldocument 	lDocument ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ~  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � 3 - 1d: tasks and utility associated with tasks     � � � � Z   1 d :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document     � � � ��   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t   �  � � � i     � � � I      �� ����� 0 gettasks getTasks �  � � � o      ���� 0 	ldocument 	lDocument �  ��� � o      ���� 0 lprojectlist lProjectList��  ��   � w     * � � � k    * � �  � � � r     � � � n     � � � 2   ��
�� 
FCac � o    ���� 0 	ldocument 	lDocument � o      ���� 0 tasklist taskList �  � � � X    ' ��� � � r    " � � � b      � � � o    ���� 0 tasklist taskList � I    �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o    ���� 0 thisproject thisProject��  ��   � o      ���� 0 tasklist taskList�� 0 thisproject thisProject � o    ���� 0 lprojectlist lProjectList �  ��� � L   ( * � � o   ( )���� 0 tasklist taskList��   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ,0 gettasksfromdocument getTasksFromDocument �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w     	 � � � k    	 � �  � � � L     � � n     � � � m    ��
�� 
FCft � o    ���� 0 	ldocument 	lDocument �  ��� � l    �� � ���   � � �		set lProjectList to getProjects(lDocument)		set taskList to tasks of lDocument		repeat with thisProject in lProjectList			set taskList to taskList & getTasks(thisProject)		end repeat		return taskList    � � � ��  	 	 s e t   l P r o j e c t L i s t   t o   g e t P r o j e c t s ( l D o c u m e n t )  	 	 s e t   t a s k L i s t   t o   t a s k s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s P r o j e c t   i n   l P r o j e c t L i s t  	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   g e t T a s k s ( t h i s P r o j e c t )  	 	 e n d   r e p e a t  	 	 r e t u r n   t a s k L i s t��   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o      ���� 0 lproject lProject��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCac � o    ���� 0 lproject lProject ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��~�}�  �~  �}   �  � � � l      �| � ��|   � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 �  � � � l     �{�z�y�{  �z  �y   �  � � � i     # � � � I      �x ��w�x 20 filterforactiveprojects filterForActiveProjects �  ��v � o      �u�u 0 lprojectlist lProjectList�v  �w   � w     2 � � � k    2 � �  � � � r     � � � J    �t�t   � o      �s�s 0 projectlist projectList �  � � � X    / ��r � � Z    * � ��q�p � =    � � � n    � � � 1    �o
�o 
FCPs � o    �n�n 0 thisproject thisProject � m    �m
�m FCPsFCPa � r    & � � � b    $ � � � o     �l�l 0 projectlist projectList � J     # � �  ��k � o     !�j�j 0 thisproject thisProject�k   � o      �i�i 0 projectlist projectList�q  �p  �r 0 thisproject thisProject � o   
 �h�h 0 lprojectlist lProjectList �  ��g � L   0 2 � � o   0 1�f�f 0 projectlist projectList�g   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     �e�d�c�e  �d  �c   �  � � � i   $ '   I      �b�a�b B0 filterprojectsforsingletonlists filterProjectsForSingletonLists �` o      �_�_ 0 lprojectlist lProjectList�`  �a   w     2 k    2  r    	
	 J    �^�^  
 o      �]�] 0 projectlist projectList  X    /�\ Z    *�[�Z =    n    1    �Y
�Y 
FC.A o    �X�X 0 thisproject thisProject m    �W
�W boovtrue r    & b    $ o     �V�V 0 projectlist projectList J     # �U o     !�T�T 0 thisproject thisProject�U   o      �S�S 0 projectlist projectList�[  �Z  �\ 0 thisproject thisProject o   
 �R�R 0 lprojectlist lProjectList �Q L   0 2 o   0 1�P�P 0 projectlist projectList�Q  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  l     �O�N�M�O  �N  �M     i   ( +!"! I      �L#�K�L H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists# $�J$ o      �I�I 0 lprojectlist lProjectList�J  �K  " w     2%&% k    2'' ()( r    *+* J    �H�H  + o      �G�G 0 projectlist projectList) ,-, X    /.�F/. Z    *01�E�D0 =   232 n   454 1    �C
�C 
FC.A5 o    �B�B 0 thisproject thisProject3 m    �A
�A boovfals1 r    &676 b    $898 o     �@�@ 0 projectlist projectList9 J     #:: ;�?; o     !�>�> 0 thisproject thisProject�?  7 o      �=�= 0 projectlist projectList�E  �D  �F 0 thisproject thisProject/ o   
 �<�< 0 lprojectlist lProjectList- <�;< L   0 2== o   0 1�:�: 0 projectlist projectList�;  &�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��    >?> l     �9�8�7�9  �8  �7  ? @A@ l      �6BC�6  B � � 
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
 0 flag  �  �  �  �# 0 thistask thisTaskl o   - .�	�	 0 tasklist taskListj ��� Z   s ������ o   s t�� 0 flag  � r   w ~��� b   w |��� o   w x�� 0 projectlist projectList� J   x {�� ��� o   x y�� 0 thisproject thisProject�  � o      �� 0 projectlist projectList�  �  �  �+ 0 thisproject thisProject] o    � �  0 lprojectlist lProjectList[ ���� L   � ��� o   � ����� 0 projectlist projectList��  N�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  F ��� l     ��������  ��  ��  � ��� l      ������  � Z T
Return those projects greater than the size specified.
Only counts available tasks
   � ��� � 
 R e t u r n   t h o s e   p r o j e c t s   g r e a t e r   t h a n   t h e   s i z e   s p e c i f i e d . 
 O n l y   c o u n t s   a v a i l a b l e   t a s k s 
� ��� i   0 3��� I      ������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 lsize lSize��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    3����� k    .�� ��� r    ��� n   ��� 1    ��
�� 
FC#a� o    ���� 0 thisproject thisProject� o      ���� 0 ps  � ���� Z    .������� ?    ��� o    ���� 0 ps  � o    ���� 0 lsize lSize� r   # *��� b   # (��� o   # $���� 0 projectlist projectList� J   $ '�� ���� o   $ %���� 0 thisproject thisProject��  � o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� ���� L   4 6�� o   4 5���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � � 
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
 ���� 0 lprojectlist lProjectList�  ��  L   v x!! o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � "#" l     ��������  ��  ��  # $%$ l      ��&'��  & � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   ' �(( �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
% )*) i   8 ;+,+ I      ��-���� 20 filterforcompletedtasks filterForCompletedTasks- .��. o      ���� 0 	ltasklist 	lTaskList��  ��  , w     2/0/ k    211 232 r    454 J    ����  5 o      ���� 0 tasklist taskList3 676 X    /8��98 Z    *:;����: =   <=< n    >?> 1    ��
�� 
FCcd? o    ���� 0 thistask thisTask= m    ��
�� boovtrue; r    &@A@ b    $BCB o     ���� 0 tasklist taskListC J     #DD E��E o     !���� 0 thistask thisTask��  A o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask9 o   
 ���� 0 	ltasklist 	lTaskList7 F��F L   0 2GG o   0 1���� 0 tasklist taskList��  0�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  * HIH l     ��������  ��  ��  I JKJ i   < ?LML I      ��N���� >0 filterforcompletedtasksondate filterForCompletedTasksOnDateN OPO o      ���� 0 	ltasklist 	lTaskListP Q��Q o      ���� 0 ldate lDate��  ��  M w     <RSR k    <TT UVU r    WXW J    ����  X o      ���� 0 tasklist taskListV YZY X    9[��\[ k    4]] ^_^ r    `a` n   bcb 1    ��
�� 
FCdcc o    ���� 0 thistask thisTaska o      ���� 0 
thistaskcd 
thisTaskCD_ ded r    "fgf n     hih 1     ��
�� 
dstri o    ���� 0 
thistaskcd 
thisTaskCDg o      ���� (0 thistaskdatestring thisTaskDateStringe j��j Z   # 4kl���k =  # &mnm o   # $�~�~ (0 thistaskdatestring thisTaskDateStringn o   $ %�}�} 0 ldate lDatel r   ) 0opo b   ) .qrq o   ) *�|�| 0 tasklist taskListr J   * -ss t�{t o   * +�z�z 0 thistask thisTask�{  p o      �y�y 0 tasklist taskList��  �  ��  �� 0 thistask thisTask\ o   
 �x�x 0 	ltasklist 	lTaskListZ u�wu L   : <vv o   : ;�v�v 0 tasklist taskList�w  S�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  K wxw l     �u�t�s�u  �t  �s  x yzy i   @ C{|{ I      �r}�q�r 40 filterforincompletetasks filterForIncompleteTasks} ~�p~ o      �o�o 0 	ltasklist 	lTaskList�p  �q  | w     2� k    2�� ��� r    ��� J    �n�n  � o      �m�m 0 tasklist taskList� ��� X    /��l�� Z    *���k�j� >   ��� n    ��� 1    �i
�i 
FCcd� o    �h�h 0 thistask thisTask� m    �g
�g boovtrue� r    &��� b    $��� o     �f�f 0 tasklist taskList� J     #�� ��e� o     !�d�d 0 thistask thisTask�e  � o      �c�c 0 tasklist taskList�k  �j  �l 0 thistask thisTask� o   
 �b�b 0 	ltasklist 	lTaskList� ��a� L   0 2�� o   0 1�`�` 0 tasklist taskList�a  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  z ��� l     �_�^�]�_  �^  �]  � ��� i   D G��� I      �\��[�\ 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��Z� o      �Y�Y 0 	ltasklist 	lTaskList�Z  �[  � w     2��� k    2�� ��� r    ��� J    �X�X  � o      �W�W 0 tasklist taskList� ��� X    /��V�� Z    *���U�T� =   ��� n   ��� 1    �S
�S 
FCRp� o    �R�R 0 thistask thisTask� m    �Q
�Q 
msng� r    &��� b    $��� o     �P�P 0 tasklist taskList� J     #�� ��O� o     !�N�N 0 thistask thisTask�O  � o      �M�M 0 tasklist taskList�U  �T  �V 0 thistask thisTask� o   
 �L�L 0 	ltasklist 	lTaskList� ��K� L   0 2�� o   0 1�J�J 0 tasklist taskList�K  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �I�H�G�I  �H  �G  � ��� i   H K��� I      �F��E�F 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      �D�D 0 	ltasklist 	lTaskList� ��C� o      �B�B 0 ldate lDate�C  �E  � w     <��� k    <�� ��� r    ��� J    �A�A  � o      �@�@ 0 tasklist taskList� ��� X    9��?�� k    4�� ��� r    ��� n   ��� 1    �>
�> 
FCDa� o    �=�= 0 thistask thisTask� o      �<�< 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �;
�; 
dstr� o    �:�: 0 
thistaskcd 
thisTaskCD� o      �9�9 (0 thistaskdatestring thisTaskDateString� ��8� Z   # 4���7�6� =  # &��� o   # $�5�5 (0 thistaskdatestring thisTaskDateString� o   $ %�4�4 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�3�3 0 tasklist taskList� J   * -�� ��2� o   * +�1�1 0 thistask thisTask�2  � o      �0�0 0 tasklist taskList�7  �6  �8  �? 0 thistask thisTask� o   
 �/�/ 0 	ltasklist 	lTaskList� ��.� L   : <�� o   : ;�-�- 0 tasklist taskList�.  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �,�+�*�,  �+  �*  � ��� i   L O��� I      �)��(�) L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��'� o      �&�& 0 	ltasklist 	lTaskList�'  �(  � w     ���� k    ��� ��� r    ��� J    �%�%  � o      �$�$ 0 tasklist taskList� ��� X    ���#�� k    ��� ��� r    ��� n       1    �"
�" 
pnam o    �!�! 0 thistask thisTask� o      � �  0 foo  �  r    " n      m     �
� 
FCct o    �� 0 thistask thisTask o      �� 0 con   	 r   # (

 n   # & 1   $ &�
� 
pnam o   # $�� 0 con   o      �� 0 foo  	 � Z   ) �� >  ) , o   ) *�� 0 con   m   * +�
� 
msng k   /   T   / f Z   4 a� >  4 9 n  4 7 1   5 7�
� 
ctnr o   4 5�� 0 con   m   7 8�
� 
msng k   < ]  !  r   < A"#" n  < ?$%$ 1   = ?�
� 
ctnr% o   < =�� 0 con  # o      �� 0 ccon  ! &'& r   B G()( n   B E*+* 1   C E�
� 
pnam+ o   B C�� 0 ccon  ) o      �� 
0 ccname  ' ,�, Z   H ]-.�
/- >  H K010 o   H I�	�	 
0 ccname  1 m   I J22 �33  O m n i F o c u s. k   N Y44 565 r   N S787 n  N Q9:9 1   O Q�
� 
ctnr: o   N O�� 0 con  8 o      �� 0 con  6 ;�; r   T Y<=< n   T W>?> 1   U W�
� 
pnam? o   T U�� 0 con  = o      �� 0 foo  �  �
  /  S   \ ]�  �    S   ` a @A@ r   g lBCB n   g jDED 1   h j�
� 
pnamE o   g h� �  0 con  C o      ���� 0 conname  A F��F Z   m GH����G H   m qII E   m pJKJ o   m n���� 0 conname  K m   n oLL �MM  W a i t i n gH r   t {NON b   t yPQP o   t u���� 0 tasklist taskListQ J   u xRR S��S o   u v���� 0 thistask thisTask��  O o      ���� 0 tasklist taskList��  ��  ��  �   r   � �TUT b   � �VWV o   � ����� 0 tasklist taskListW J   � �XX Y��Y o   � ����� 0 thistask thisTask��  U o      ���� 0 tasklist taskList�  �# 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� Z��Z L   � �[[ o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � \]\ l     ��������  ��  ��  ] ^_^ i   P S`a` I      ��b���� 20 filterfortasksdueondate filterForTasksDueOnDateb cdc o      ���� 0 	ltasklist 	lTaskListd e��e o      ���� 0 ldate lDate��  ��  a w     Ffgf k    Fhh iji r    klk J    ����  l o      ���� 0 tasklist taskListj mnm X    Co��po k    >qq rsr r    tut n   vwv 1    ��
�� 
FCDdw o    ���� 0 thistask thisTasku o      ���� 0 
thistaskdd 
thisTaskDDs x��x Z    >yz����y >    {|{ o    ���� 0 
thistaskdd 
thisTaskDD| m    ��
�� 
msngz k   # :}} ~~ r   # (��� n   # &��� 1   $ &��
�� 
dstr� o   # $���� 0 
thistaskdd 
thisTaskDD� o      ���� (0 thistaskdatestring thisTaskDateString ���� Z   ) :������� =  ) ,��� o   ) *���� (0 thistaskdatestring thisTaskDateString� o   * +���� 0 ldate lDate� r   / 6��� b   / 4��� o   / 0���� 0 tasklist taskList� J   0 3�� ���� o   0 1���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTaskp o   
 ���� 0 	ltasklist 	lTaskListn ���� L   D F�� o   D E���� 0 tasklist taskList��  g�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  _ ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     J��� k    J�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    G����� k    B�� ��� r    ��� n   ��� 1    ��
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
 ���� 0 	ltasklist 	lTaskList� ���� L   H J�� o   H I���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ������� .0 filterfortaskswithtag filterForTasksWithTag� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 tag  ��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    3����� k    .�� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 thistask thisTask� o      ���� 0 itemnote itemNote� ���� Z    .������� l    ������ E     ��� o    ���� 0 itemnote itemNote� o    ���� 0 tag  ��  ��  � r   # *��� b   # (��� o   # $���� 0 tasklist taskList� J   $ '�� ���� o   $ %���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   4 6�� o   4 5���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   \ _��� I      ������� $0 filterforflagged filterForFlagged� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r       J    ����   o      ���� 0 tasklist taskList�  X    /�� Z    *���� =   	 n    

 1    ��
�� 
FCfl o    ���� 0 thistask thisTask	 m    ��
�� boovtrue r    & b    $ o     �� 0 tasklist taskList J     # �~ o     !�}�} 0 thistask thisTask�~   o      �|�| 0 tasklist taskList��  ��  �� 0 thistask thisTask o   
 �{�{ 0 	ltasklist 	lTaskList �z L   0 2 o   0 1�y�y 0 tasklist taskList�z  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     �x�w�v�x  �w  �v    l      �u�u   � �
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx, based
on the list of all contexts
    � 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x ,   b a s e d 
 o n   t h e   l i s t   o f   a l l   c o n t e x t s 
  i   ` c I      �t�s�t 60 filterfortaskswithcontext filterForTasksWithContext  !  o      �r�r 0 lcontextlist lContextList! "�q" o      �p�p 0 ctx  �q  �s   w     V#$# k    V%% &'& r    ()( J    �o�o  ) o      �n�n 0 tasklist taskList' *+* X    S,�m-, k    N.. /0/ r    121 b    343 m    55 �66  t e s t i n g  4 n    787 1    �l
�l 
pnam8 o    �k�k 0 thisctx thisCtx2 o      �j�j 0 t  0 9:9 r    ";<; o     �i�i 0 t  < o      �h�h 0 p  : =>= I  # (�g?�f
�g .ascrcmnt****      � ****? o   # $�e�e 0 t  �f  > @�d@ Z   ) NAB�c�bA E   ) .CDC n   ) ,EFE 1   * ,�a
�a 
pnamF o   ) *�`�` 0 thisctx thisCtxD o   , -�_�_ 0 ctx  B k   1 JGG HIH r   1 8JKJ b   1 6LML m   1 2NN �OO  f o u n d  M n   2 5PQP 1   3 5�^
�^ 
pnamQ o   2 3�]�] 0 thisctx thisCtxK o      �\�\ 0 t  I RSR r   9 <TUT o   9 :�[�[ 0 t  U o      �Z�Z 0 p  S VWV I  = B�YX�X
�Y .ascrcmnt****      � ****X o   = >�W�W 0 t  �X  W Y�VY r   C JZ[Z b   C H\]\ o   C D�U�U 0 tasklist taskList] n   D G^_^ 2  E G�T
�T 
FC0T_ o   D E�S�S 0 thisctx thisCtx[ o      �R�R 0 tasklist taskList�V  �c  �b  �d  �m 0 thisctx thisCtx- o   
 �Q�Q 0 lcontextlist lContextList+ `�P` L   T Vaa o   T U�O�O 0 tasklist taskList�P  $�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   bcb l     �N�M�L�N  �M  �L  c ded l      �Kfg�K  f $  SECTION 4: Task manipulation
   g �hh <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
e iji l     �J�I�H�J  �I  �H  j klk l      �Gmn�G  m < 6 set the tag, in the notes field, of the provided tag    n �oo l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  l pqp i   d grsr I      �Ft�E�F 0 tagtask tagTaskt uvu o      �D�D 0 ltask lTaskv w�Cw o      �B�B 0 ltag lTag�C  �E  s w     $xyx k    $zz {|{ r    }~} n    � 1    �A
�A 
FCno� o    �@�@ 0 ltask lTask~ o      �?�? 0 itemnote itemNote| ��>� Z    $���=�<� l   ��;�:� H    �� E    ��� o    	�9�9 0 itemnote itemNote� o   	 
�8�8 0 ltag lTag�;  �:  � k     �� ��� r    ��� n    ��� 1    �7
�7 
FCno� o    �6�6 0 ltask lTask� o      �5�5 0 itemnote itemNote� ��� r    ��� b    ��� o    �4�4 0 itemnote itemNote� o    �3�3 0 ltag lTag� o      �2�2 0 itemnote itemNote� ��1� r     ��� o    �0�0 0 itemnote itemNote� l     ��/�.� n      ��� 1    �-
�- 
FCno� o    �,�, 0 ltask lTask�/  �.  �1  �=  �<  �>  y�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  q ��� l     �+�*�)�+  �*  �)  � ��� l      �(���(  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   h k��� I      �'��&�' 0 	untagtask 	untagTask� ��� o      �%�% 0 ltask lTask� ��$� o      �#�# 0 ltag lTag�$  �&  � w     A��� k    A�� ��� r    ��� n    ��� 1    �"
�" 
FCno� o    �!�! 0 ltask lTask� o      � �  0 itemnote itemNote� ��� I   ���
� .ascrcmnt****      � ****� o    	�� 0 itemnote itemNote�  � ��� Z    A����� l   ���� E    ��� o    �� 0 itemnote itemNote� o    �� 0 ltag lTag�  �  � k    =�� ��� r    ��� o    �� 0 ltag lTag� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    1��� J     �� ��� n    ��� 2   �
� 
citm� o    �� 0 itemnote itemNote� ��� m    �� ���  �  � J      �� ��� o      �� 0 itemnode itemNode� ��� n     ��� 1   - /�
� 
txdl� 1   , -�
� 
ascr�  � ��� r   2 7��� c   2 5��� o   2 3�� 0 itemnode itemNode� m   3 4�

�
 
TEXT� o      �	�	 0 itemnote itemNote� ��� r   8 =��� o   8 9�� 0 itemnote itemNote� l     ���� n      ��� 1   : <�
� 
FCno� o   9 :�� 0 ltask lTask�  �  �  �  �  �  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��� �  �  �   � ��� l      ������  � 0 * remove any tags in the provided tag list    � ��� T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  � ��� i   l o��� I      ������� 0 	cleartask 	clearTask� ��� o      ���� 0 ltask lTask� ���� o      ���� 0 ltaglist lTagList��  ��  � w     $��� X    $����� k    �� ��� I   �����
�� .ascrcmnt****      � ****� o    ���� 0 atag aTag��  � ���� I    ������� 0 	untagtask 	untagTask� ��� o    ���� 0 ltask lTask� ���� o    ���� 0 atag aTag��  ��  ��  �� 0 atag aTag� o    ���� 0 ltaglist lTagList��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � � � l      ����      SECTION 5: other utility     � 4   S E C T I O N   5 :   o t h e r   u t i l i t y     l      ����     send tweet     �    s e n d   t w e e t   	��	 i   p s

 I      ������ 0 	sendtweet 	sendTweet �� o      ���� 	0 value  ��  ��   k       r      b      b      m      � $ t w u r l   - d   ' s t a t u s = ' o    ���� 	0 value   m     � 0 '   / 1 / s t a t u s e s / u p d a t e . x m l o      ���� 0 cmd   �� I   ����
�� .sysoexecTEXT���     TEXT o    	���� 0 cmd  ��  ��  ��       �� !"#$%&'()*+,-./0123456789:��   ������������������������������������������������������������ 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 getcontexts getContexts�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 60 filterfortaskswithcontext filterForTasksWithContext�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask�� 0 	sendtweet 	sendTweet ��  ����;<���� 0 
getfolders 
getFolders�� ��=�� =  ���� 0 	ldocument 	lDocument��  ; �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder<  $����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O� �� A����>?���� *0 getfoldersoffolders getFoldersOfFolders�� ��@�� @  ���� 0 lfolders lFolders��  > ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder?  E����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�  �� a����AB���� 0 getprojects getProjects�� ��C�� C  ���� 0 	ldocument 	lDocument��  A ���� 0 	ldocument 	lDocumentB  e��
�� 
FCfx�� �Z��-E! �� n����DE���� .0 getprojectsfromfolder getProjectsFromFolder�� ��F�� F  ���� 0 lfolder lFolder��  D ���� 0 lfolder lFolderE  r��
�� 
FCpr�� �Z��-E" �� �����GH���� 0 getcontexts getContexts�� ��I�� I  ���� 0 	ldocument 	lDocument��  G ���� 0 	ldocument 	lDocumentH  ���
�� 
FCfc�� �Z��-E# �� �����JK���� 0 gettasks getTasks�� ��L�� L  ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��  J ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProjectK  ���������~
�� 
FCac
�� 
kocl
�� 
cobj
� .corecnte****       ****�~ *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�$ �} ��|�{MN�z�} ,0 gettasksfromdocument getTasksFromDocument�| �yO�y O  �x�x 0 	ldocument 	lDocument�{  M �w�w 0 	ldocument 	lDocumentN  ��v
�v 
FCft�z 
�Z��,EOP% �u ��t�sPQ�r�u *0 gettasksfromproject getTasksFromProject�t �qR�q R  �p�p 0 lproject lProject�s  P �o�o 0 lproject lProjectQ  ��n
�n 
FCac�r �Z��-E& �m ��l�kST�j�m 20 filterforactiveprojects filterForActiveProjects�l �iU�i U  �h�h 0 lprojectlist lProjectList�k  S �g�f�e�g 0 lprojectlist lProjectList�f 0 projectlist projectList�e 0 thisproject thisProjectT  ��d�c�b�a�`
�d 
kocl
�c 
cobj
�b .corecnte****       ****
�a 
FCPs
�` FCPsFCPa�j 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�' �_�^�]VW�\�_ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�^ �[X�[ X  �Z�Z 0 lprojectlist lProjectList�]  V �Y�X�W�Y 0 lprojectlist lProjectList�X 0 projectlist projectList�W 0 thisproject thisProjectW �V�U�T�S
�V 
kocl
�U 
cobj
�T .corecnte****       ****
�S 
FC.A�\ 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�( �R"�Q�PYZ�O�R H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�Q �N[�N [  �M�M 0 lprojectlist lProjectList�P  Y �L�K�J�L 0 lprojectlist lProjectList�K 0 projectlist projectList�J 0 thisproject thisProjectZ &�I�H�G�F
�I 
kocl
�H 
cobj
�G .corecnte****       ****
�F 
FC.A�O 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�) �EH�D�C\]�B�E @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�D �A^�A ^  �@�?�@ 0 lprojectlist lProjectList�? 0 ldate lDate�C  \ �>�=�<�;�:�9�8�7�6�5�4�3�> 0 lprojectlist lProjectList�= 0 ldate lDate�< 0 projectlist projectList�; 	0 cdate  �: 0 thisproject thisProject�9 0 tasklist taskList�8 0 flag  �7 0 thistask thisTask�6 
0 tcdate  �5 
0 tmdate  �4 0 tcds  �3 0 tmds  ] N�2�1�0�/�.�-�,
�2 
dstr
�1 
kocl
�0 
cobj
�/ .corecnte****       ****�. *0 gettasksfromproject getTasksFromProject
�- 
FCDa
�, 
FCDm�B ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�* �+��*�)_`�(�+ H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�* �'a�' a  �&�%�& 0 lprojectlist lProjectList�% 0 lsize lSize�)  _ �$�#�"�!� �$ 0 lprojectlist lProjectList�# 0 lsize lSize�" 0 projectlist projectList�! 0 thisproject thisProject�  0 ps  ` �����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FC#a�( 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�+ ����bc�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate� �d� d  ��� 0 lprojectlist lProjectList� 0 ldate lDate�  b 	���������� 0 lprojectlist lProjectList� 0 ldate lDate� 0 projectlist projectList� 0 thisproject thisProject� 0 tasklist taskList� 0 flag  � 0 thistask thisTask� 
0 tcdate  � 
0 tmdate  c ���
�	���
� 
kocl
�
 
cobj
�	 .corecnte****       ****� *0 gettasksfromproject getTasksFromProject
� 
FCDa
� 
FCDm� y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�, �,��ef�� 20 filterforcompletedtasks filterForCompletedTasks� �g� g  � �  0 	ltasklist 	lTaskList�  e �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTaskf 0��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�- ��M����hi���� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� ��j�� j  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  h �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateStringi S����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCdc
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�. ��|����kl���� 40 filterforincompletetasks filterForIncompleteTasks�� ��m�� m  ���� 0 	ltasklist 	lTaskList��  k �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTaskl ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�/ �������no���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ��p�� p  ���� 0 	ltasklist 	lTaskList��  n �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTasko �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�0 �������qr���� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ��s�� s  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  q �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateStringr �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�1 �������tu���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ��v�� v  ���� 0 	ltasklist 	lTaskList��  t ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  u 
���������������2L
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�2 ��a����wx���� 20 filterfortasksdueondate filterForTasksDueOnDate�� ��y�� y  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  w �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateStringx g������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�3 �������z{���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ��|�� |  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  z ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD{ 	���������������
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
� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�4 �~��}�|}~�{�~ .0 filterfortaskswithtag filterForTasksWithTag�} �z�z   �y�x�y 0 	ltasklist 	lTaskList�x 0 tag  �|  } �w�v�u�t�s�w 0 	ltasklist 	lTaskList�v 0 tag  �u 0 tasklist taskList�t 0 thistask thisTask�s 0 itemnote itemNote~ ��r�q�p�o
�r 
kocl
�q 
cobj
�p .corecnte****       ****
�o 
FCno�{ 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�5 �n��m�l���k�n $0 filterforflagged filterForFlagged�m �j��j �  �i�i 0 	ltasklist 	lTaskList�l  � �h�g�f�h 0 	ltasklist 	lTaskList�g 0 tasklist taskList�f 0 thistask thisTask� ��e�d�c�b
�e 
kocl
�d 
cobj
�c .corecnte****       ****
�b 
FCfl�k 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�6 �a�`�_���^�a 60 filterfortaskswithcontext filterForTasksWithContext�` �]��] �  �\�[�\ 0 lcontextlist lContextList�[ 0 ctx  �_  � �Z�Y�X�W�V�U�Z 0 lcontextlist lContextList�Y 0 ctx  �X 0 tasklist taskList�W 0 thisctx thisCtx�V 0 t  �U 0 p  � 	$�T�S�R5�Q�PN�O
�T 
kocl
�S 
cobj
�R .corecnte****       ****
�Q 
pnam
�P .ascrcmnt****      � ****
�O 
FC0T�^ W�ZjvE�O K�[��l kh ��,%E�O�E�O�j O��,� ��,%E�O�E�O�j O���-%E�Y h[OY��O�7 �Ns�M�L���K�N 0 tagtask tagTask�M �J��J �  �I�H�I 0 ltask lTask�H 0 ltag lTag�L  � �G�F�E�G 0 ltask lTask�F 0 ltag lTag�E 0 itemnote itemNote� y�D
�D 
FCno�K %�Z��,E�O�� ��,E�O��%E�O���,FY h8 �C��B�A���@�C 0 	untagtask 	untagTask�B �?��? �  �>�=�> 0 ltask lTask�= 0 ltag lTag�A  � �<�;�:�9�< 0 ltask lTask�; 0 ltag lTag�: 0 itemnote itemNote�9 0 itemnode itemNode� 	��8�7�6�5�4��3�2
�8 
FCno
�7 .ascrcmnt****      � ****
�6 
ascr
�5 
txdl
�4 
citm
�3 
cobj
�2 
TEXT�@ B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h9 �1��0�/���.�1 0 	cleartask 	clearTask�0 �-��- �  �,�+�, 0 ltask lTask�+ 0 ltaglist lTagList�/  � �*�)�(�* 0 ltask lTask�) 0 ltaglist lTagList�( 0 atag aTag� ��'�&�%�$�#
�' 
kocl
�& 
cobj
�% .corecnte****       ****
�$ .ascrcmnt****      � ****�# 0 	untagtask 	untagTask�. %�Z !�[��l kh �j O*��l+ [OY��: �"�!� ����" 0 	sendtweet 	sendTweet�! ��� �  �� 	0 value  �   � ��� 	0 value  � 0 cmd  � �
� .sysoexecTEXT���     TEXT� �%�%E�O�j ascr  ��ޭ