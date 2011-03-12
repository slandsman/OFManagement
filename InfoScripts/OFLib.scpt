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
FCac � o    ���� 0 lproject lProject ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��~�}�  �~  �}   �  � � � l      �| � ��|   � � � SECTION 2: Filter projects and contexts.  Given a list of projects or contexts, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �`   S E C T I O N   2 :   F i l t e r   p r o j e c t s   a n d   c o n t e x t s .     G i v e n   a   l i s t   o f   p r o j e c t s   o r   c o n t e x t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
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
 ���� 0 lprojectlist lProjectList�  ��  L   v x!! o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � "#" l     ��������  ��  ��  # $%$ l      ��&'��  & � �
Filter for all contexts associated with a <<string>> context.
That is OmniFocus::Foo::Bar is not included by OmniFocus::<<string>> and
OmniFocus::<<string>::Foo are both included.
   ' �((j 
 F i l t e r   f o r   a l l   c o n t e x t s   a s s o c i a t e d   w i t h   a   < < s t r i n g > >   c o n t e x t . 
 T h a t   i s   O m n i F o c u s : : F o o : : B a r   i s   n o t   i n c l u d e d   b y   O m n i F o c u s : : < < s t r i n g > >   a n d 
 O m n i F o c u s : : < < s t r i n g > : : F o o   a r e   b o t h   i n c l u d e d . 
% )*) i   8 ;+,+ I      ��-���� 20 filtercontextsforstring filterContextsForString- ./. o      ���� 0 lcontextlist lContextList/ 0��0 o      ���� 0 ctx  ��  ��  , w     x121 k    x33 454 r    676 J    ����  7 o      ���� 0 ctxlist ctxList5 898 X    u:��;: k    p<< =>= l    ��?@��  ?��			if (thisContext's name contains ctx) 
				set ctxList to ctxList & {thisContext}
			else
				set workingContext to thisContext's container
				while (workingContext is not missing value) and (workingContext's name does not contain ctx)
					set workingContext to workingContext's container
				end while
				if workingContext's name contains ctx					
					set ctxList to ctxList & {thisContext}
				end if
			end if   @ �AAD 	 	 	 i f   ( t h i s C o n t e x t ' s   n a m e   c o n t a i n s   c t x )   
 	 	 	 	 s e t   c t x L i s t   t o   c t x L i s t   &   { t h i s C o n t e x t } 
 	 	 	 e l s e 
 	 	 	 	 s e t   w o r k i n g C o n t e x t   t o   t h i s C o n t e x t ' s   c o n t a i n e r 
 	 	 	 	 w h i l e   ( w o r k i n g C o n t e x t   i s   n o t   m i s s i n g   v a l u e )   a n d   ( w o r k i n g C o n t e x t ' s   n a m e   d o e s   n o t   c o n t a i n   c t x ) 
 	 	 	 	 	 s e t   w o r k i n g C o n t e x t   t o   w o r k i n g C o n t e x t ' s   c o n t a i n e r 
 	 	 	 	 e n d   w h i l e 
 	 	 	 	 i f   w o r k i n g C o n t e x t ' s   n a m e   c o n t a i n s   c t x 	 	 	 	 	 
 	 	 	 	 	 s e t   c t x L i s t   t o   c t x L i s t   &   { t h i s C o n t e x t } 
 	 	 	 	 e n d   i f 
 	 	 	 e n d   i f> BCB r    DED I    ��F���� *0 gettasksfromproject getTasksFromProjectF G��G o    ���� 0 thisproject thisProject��  ��  E o      ���� 0 tasklist taskListC HIH r     #JKJ m     !��
�� boovfalsK o      ���� 0 flag  I LML X   $ `N��ON k   4 [PP QRQ r   4 9STS n  4 7UVU 1   5 7��
�� 
FCDaV o   4 5���� 0 thistask thisTaskT o      ���� 
0 tcdate  R WXW r   : ?YZY n  : =[\[ 1   ; =��
�� 
FCDm\ o   : ;���� 0 thistask thisTaskZ o      ���� 
0 tmdate  X ]^] l  @ @��������  ��  ��  ^ _`_ Z   @ Mab����a A   @ Ccdc o   @ A���� 
0 tcdate  d o   A B���� 0 ldate lDateb r   F Iefe m   F G��
�� boovtruef o      ���� 0 flag  ��  ��  ` ghg l  N N��������  ��  ��  h i��i Z   N [jk����j A   N Qlml o   N O�� 
0 tmdate  m o   O P�~�~ 0 ldate lDatek r   T Wnon m   T U�}
�} boovtrueo o      �|�| 0 flag  ��  ��  ��  �� 0 thistask thisTaskO o   ' (�{�{ 0 tasklist taskListM p�zp Z   a pqr�y�xq o   a b�w�w 0 flag  r r   e lsts b   e juvu o   e f�v�v 0 projectlist projectListv J   f iww x�ux o   f g�t�t 0 thisproject thisProject�u  t o      �s�s 0 projectlist projectList�y  �x  �z  �� 0 thiscontext thisContext; o   
 �r�r 0 lcontextlist lContextList9 y�qy L   v xzz o   v w�p�p 0 projectlist projectList�q  2�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  * {|{ l     �o�n�m�o  �n  �m  | }~} l      �l��l   � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
   � ��� �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
~ ��� i   < ?��� I      �k��j�k 20 filterforcompletedtasks filterForCompletedTasks� ��i� o      �h�h 0 	ltasklist 	lTaskList�i  �j  � w     2��� k    2�� ��� r    ��� J    �g�g  � o      �f�f 0 tasklist taskList� ��� X    /��e�� Z    *���d�c� =   ��� n    ��� 1    �b
�b 
FCcd� o    �a�a 0 thistask thisTask� m    �`
�` boovtrue� r    &��� b    $��� o     �_�_ 0 tasklist taskList� J     #�� ��^� o     !�]�] 0 thistask thisTask�^  � o      �\�\ 0 tasklist taskList�d  �c  �e 0 thistask thisTask� o   
 �[�[ 0 	ltasklist 	lTaskList� ��Z� L   0 2�� o   0 1�Y�Y 0 tasklist taskList�Z  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �X�W�V�X  �W  �V  � ��� i   @ C��� I      �U��T�U >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� ��� o      �S�S 0 	ltasklist 	lTaskList� ��R� o      �Q�Q 0 ldate lDate�R  �T  � w     <��� k    <�� ��� r    ��� J    �P�P  � o      �O�O 0 tasklist taskList� ��� X    9��N�� k    4�� ��� r    ��� n   ��� 1    �M
�M 
FCdc� o    �L�L 0 thistask thisTask� o      �K�K 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �J
�J 
dstr� o    �I�I 0 
thistaskcd 
thisTaskCD� o      �H�H (0 thistaskdatestring thisTaskDateString� ��G� Z   # 4���F�E� =  # &��� o   # $�D�D (0 thistaskdatestring thisTaskDateString� o   $ %�C�C 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�B�B 0 tasklist taskList� J   * -�� ��A� o   * +�@�@ 0 thistask thisTask�A  � o      �?�? 0 tasklist taskList�F  �E  �G  �N 0 thistask thisTask� o   
 �>�> 0 	ltasklist 	lTaskList� ��=� L   : <�� o   : ;�<�< 0 tasklist taskList�=  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �;�:�9�;  �:  �9  � ��� i   D G��� I      �8��7�8 40 filterforincompletetasks filterForIncompleteTasks� ��6� o      �5�5 0 	ltasklist 	lTaskList�6  �7  � w     2��� k    2�� ��� r    ��� J    �4�4  � o      �3�3 0 tasklist taskList� ��� X    /��2�� Z    *���1�0� >   ��� n    ��� 1    �/
�/ 
FCcd� o    �.�. 0 thistask thisTask� m    �-
�- boovtrue� r    &��� b    $��� o     �,�, 0 tasklist taskList� J     #�� ��+� o     !�*�* 0 thistask thisTask�+  � o      �)�) 0 tasklist taskList�1  �0  �2 0 thistask thisTask� o   
 �(�( 0 	ltasklist 	lTaskList� ��'� L   0 2�� o   0 1�&�& 0 tasklist taskList�'  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �%�$�#�%  �$  �#  � ��� i   H K��� I      �"��!�" 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� �� � o      �� 0 	ltasklist 	lTaskList�   �!  � w     2��� k    2�� ��� r    ��� J    ��  � o      �� 0 tasklist taskList�    X    /� Z    *�� =    n   	 1    �
� 
FCRp	 o    �� 0 thistask thisTask m    �
� 
msng r    &

 b    $ o     �� 0 tasklist taskList J     # � o     !�� 0 thistask thisTask�   o      �� 0 tasklist taskList�  �  � 0 thistask thisTask o   
 �� 0 	ltasklist 	lTaskList � L   0 2 o   0 1�� 0 tasklist taskList�  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ����  �  �    i   L O I      ��� 60 filterfortasksaddedondate filterForTasksAddedOnDate  o      �
�
 0 	ltasklist 	lTaskList �	 o      �� 0 ldate lDate�	  �   w     < k    <   r    !"! J    ��  " o      �� 0 tasklist taskList  #$# X    9%�&% k    4'' ()( r    *+* n   ,-, 1    �
� 
FCDa- o    �� 0 thistask thisTask+ o      �� 0 
thistaskcd 
thisTaskCD) ./. r    "010 n     232 1     �
� 
dstr3 o    � �  0 
thistaskcd 
thisTaskCD1 o      ���� (0 thistaskdatestring thisTaskDateString/ 4��4 Z   # 456����5 =  # &787 o   # $���� (0 thistaskdatestring thisTaskDateString8 o   $ %���� 0 ldate lDate6 r   ) 09:9 b   ) .;<; o   ) *���� 0 tasklist taskList< J   * -== >��> o   * +���� 0 thistask thisTask��  : o      ���� 0 tasklist taskList��  ��  ��  � 0 thistask thisTask& o   
 ���� 0 	ltasklist 	lTaskList$ ?��? L   : <@@ o   : ;���� 0 tasklist taskList��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ABA l     ��������  ��  ��  B CDC i   P SEFE I      ��G���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContextG H��H o      ���� 0 	ltasklist 	lTaskList��  ��  F w     �IJI k    �KK LML r    NON J    ����  O o      ���� 0 tasklist taskListM PQP X    �R��SR k    �TT UVU r    WXW n    YZY 1    ��
�� 
pnamZ o    ���� 0 thistask thisTaskX o      ���� 0 foo  V [\[ r    "]^] n     _`_ m     ��
�� 
FCct` o    ���� 0 thistask thisTask^ o      ���� 0 con  \ aba r   # (cdc n   # &efe 1   $ &��
�� 
pnamf o   # $���� 0 con  d o      ���� 0 foo  b g��g Z   ) �hi��jh >  ) ,klk o   ) *���� 0 con  l m   * +��
�� 
msngi k   / mm non T   / fpp Z   4 aqr��sq >  4 9tut n  4 7vwv 1   5 7��
�� 
ctnrw o   4 5���� 0 con  u m   7 8��
�� 
msngr k   < ]xx yzy r   < A{|{ n  < ?}~} 1   = ?��
�� 
ctnr~ o   < =���� 0 con  | o      ���� 0 ccon  z � r   B G��� n   B E��� 1   C E��
�� 
pnam� o   B C���� 0 ccon  � o      ���� 
0 ccname  � ���� Z   H ]������ >  H K��� o   H I���� 
0 ccname  � m   I J�� ���  O m n i F o c u s� k   N Y�� ��� r   N S��� n  N Q��� 1   O Q��
�� 
ctnr� o   N O���� 0 con  � o      ���� 0 con  � ���� r   T Y��� n   T W��� 1   U W��
�� 
pnam� o   T U���� 0 con  � o      ���� 0 foo  ��  ��  �  S   \ ]��  ��  s  S   ` ao ��� r   g l��� n   g j��� 1   h j��
�� 
pnam� o   g h���� 0 con  � o      ���� 0 conname  � ���� Z   m ������� H   m q�� E   m p��� o   m n���� 0 conname  � m   n o�� ���  W a i t i n g� r   t {��� b   t y��� o   t u���� 0 tasklist taskList� J   u x�� ���� o   u v���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  j r   � ���� b   � ���� o   � ����� 0 tasklist taskList� J   � ��� ���� o   � ����� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  �� 0 thistask thisTaskS o   
 ���� 0 	ltasklist 	lTaskListQ ���� L   � ��� o   � ����� 0 tasklist taskList��  J�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  D ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� 20 filterfortasksdueondate filterForTasksDueOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     F��� k    F�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    C����� k    >�� ��� r    ��� n   ��� 1    ��
�� 
FCDd� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskdd 
thisTaskDD� ���� Z    >������� >    ��� o    ���� 0 
thistaskdd 
thisTaskDD� m    ��
�� 
msng� k   # :�� ��� r   # (��� n   # &��� 1   $ &��
�� 
dstr� o   # $���� 0 
thistaskdd 
thisTaskDD� o      ���� (0 thistaskdatestring thisTaskDateString� ���� Z   ) :������� =  ) ,��� o   ) *���� (0 thistaskdatestring thisTaskDateString� o   * +���� 0 ldate lDate� r   / 6��� b   / 4��� o   / 0���� 0 tasklist taskList� J   0 3�� ���� o   0 1���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   D F�� o   D E���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     J��� k    J�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    G����� k    B��    r     n    1    ��
�� 
FCDd o    ���� 0 thistask thisTask o      ���� 0 
thistaskdd 
thisTaskDD �� Z    B���� >    	
	 o    ���� 0 
thistaskdd 
thisTaskDD
 m    ��
�� 
msng Z   # >��� A   # & o   # $�~�~ 0 
thistaskdd 
thisTaskDD o   $ %�}�} 0 ldate lDate k   ) :  I  ) 2�|�{
�| .ascrcmnt****      � **** b   ) . m   ) * � , F o u n d   a n   o v e r d u e   t a s k   n  * - 1   + -�z
�z 
pnam o   * +�y�y 0 thistask thisTask�{   �x r   3 : b   3 8 o   3 4�w�w 0 tasklist taskList J   4 7 �v o   4 5�u�u 0 thistask thisTask�v   o      �t�t 0 tasklist taskList�x  ��  �  ��  ��  ��  �� 0 thistask thisTask� o   
 �s�s 0 	ltasklist 	lTaskList�  �r  L   H J!! o   H I�q�q 0 tasklist taskList�r  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � "#" l     �p�o�n�p  �o  �n  # $%$ i   \ _&'& I      �m(�l�m .0 filterfortaskswithtag filterForTasksWithTag( )*) o      �k�k 0 	ltasklist 	lTaskList* +�j+ o      �i�i 0 tag  �j  �l  ' w     6,-, k    6.. /0/ r    121 J    �h�h  2 o      �g�g 0 tasklist taskList0 343 X    35�f65 k    .77 898 r    :;: n    <=< 1    �e
�e 
FCno= o    �d�d 0 thistask thisTask; o      �c�c 0 itemnote itemNote9 >�b> Z    .?@�a�`? l    A�_�^A E     BCB o    �]�] 0 itemnote itemNoteC o    �\�\ 0 tag  �_  �^  @ r   # *DED b   # (FGF o   # $�[�[ 0 tasklist taskListG J   $ 'HH I�ZI o   $ %�Y�Y 0 thistask thisTask�Z  E o      �X�X 0 tasklist taskList�a  �`  �b  �f 0 thistask thisTask6 o   
 �W�W 0 	ltasklist 	lTaskList4 J�VJ L   4 6KK o   4 5�U�U 0 tasklist taskList�V  -�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  % LML l     �T�S�R�T  �S  �R  M NON i   ` cPQP I      �QR�P�Q $0 filterforflagged filterForFlaggedR S�OS o      �N�N 0 	ltasklist 	lTaskList�O  �P  Q w     2TUT k    2VV WXW r    YZY J    �M�M  Z o      �L�L 0 tasklist taskListX [\[ X    /]�K^] Z    *_`�J�I_ =   aba n    cdc 1    �H
�H 
FCfld o    �G�G 0 thistask thisTaskb m    �F
�F boovtrue` r    &efe b    $ghg o     �E�E 0 tasklist taskListh J     #ii j�Dj o     !�C�C 0 thistask thisTask�D  f o      �B�B 0 tasklist taskList�J  �I  �K 0 thistask thisTask^ o   
 �A�A 0 	ltasklist 	lTaskList\ k�@k L   0 2ll o   0 1�?�? 0 tasklist taskList�@  U�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  O mnm l     �>�=�<�>  �=  �<  n opo l      �;qr�;  q � �
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx, based
on the list of all contexts
   r �ss 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x ,   b a s e d 
 o n   t h e   l i s t   o f   a l l   c o n t e x t s 
p tut i   d gvwv I      �:x�9�: 60 filterfortaskswithcontext filterForTasksWithContextx yzy o      �8�8 0 lcontextlist lContextListz {�7{ o      �6�6 0 ctx  �7  �9  w w     V|}| k    V~~ � r    ��� J    �5�5  � o      �4�4 0 tasklist taskList� ��� X    S��3�� k    N�� ��� r    ��� b    ��� m    �� ���  t e s t i n g  � n    ��� 1    �2
�2 
pnam� o    �1�1 0 thisctx thisCtx� o      �0�0 0 t  � ��� r    "��� o     �/�/ 0 t  � o      �.�. 0 p  � ��� I  # (�-��,
�- .ascrcmnt****      � ****� o   # $�+�+ 0 t  �,  � ��*� Z   ) N���)�(� E   ) .��� n   ) ,��� 1   * ,�'
�' 
pnam� o   ) *�&�& 0 thisctx thisCtx� o   , -�%�% 0 ctx  � k   1 J�� ��� r   1 8��� b   1 6��� m   1 2�� ���  f o u n d  � n   2 5��� 1   3 5�$
�$ 
pnam� o   2 3�#�# 0 thisctx thisCtx� o      �"�" 0 t  � ��� r   9 <��� o   9 :�!�! 0 t  � o      � �  0 p  � ��� I  = B���
� .ascrcmnt****      � ****� o   = >�� 0 t  �  � ��� r   C J��� b   C H��� o   C D�� 0 tasklist taskList� n   D G��� 2  E G�
� 
FC0T� o   D E�� 0 thisctx thisCtx� o      �� 0 tasklist taskList�  �)  �(  �*  �3 0 thisctx thisCtx� o   
 �� 0 lcontextlist lContextList� ��� L   T V�� o   T U�� 0 tasklist taskList�  }�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  u ��� l     ����  �  �  � ��� l      ����  � $  SECTION 4: Task manipulation
   � ��� <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
� ��� l     ����  �  �  � ��� l      ����  � < 6 set the tag, in the notes field, of the provided tag    � ��� l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  � ��� i   h k��� I      ���� 0 tagtask tagTask� ��� o      �
�
 0 ltask lTask� ��	� o      �� 0 ltag lTag�	  �  � w     $��� k    $�� ��� r    ��� n    ��� 1    �
� 
FCno� o    �� 0 ltask lTask� o      �� 0 itemnote itemNote� ��� Z    $����� l   ��� � H    �� E    ��� o    	���� 0 itemnote itemNote� o   	 
���� 0 ltag lTag�  �   � k     �� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask� o      ���� 0 itemnote itemNote� ��� r    ��� b    ��� o    ���� 0 itemnote itemNote� o    ���� 0 ltag lTag� o      ���� 0 itemnote itemNote� ���� r     ��� o    ���� 0 itemnote itemNote� l     ������ n      ��� 1    ��
�� 
FCno� o    ���� 0 ltask lTask��  ��  ��  �  �  �  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� l      ������  � 4 . remove the provided tag from the notes field    � ��� \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  � ��� i   l o��� I      ������� 0 	untagtask 	untagTask�    o      ���� 0 ltask lTask �� o      ���� 0 ltag lTag��  ��  � w     A k    A  r    	 n    

 1    ��
�� 
FCno o    ���� 0 ltask lTask	 o      ���� 0 itemnote itemNote  I   ����
�� .ascrcmnt****      � **** o    	���� 0 itemnote itemNote��   �� Z    A���� l   ���� E     o    ���� 0 itemnote itemNote o    ���� 0 ltag lTag��  ��   k    =  r     o    ���� 0 ltag lTag n      1    ��
�� 
txdl 1    ��
�� 
ascr  r    1 J        !"! n    #$# 2   ��
�� 
citm$ o    ���� 0 itemnote itemNote" %��% m    && �''  ��   J      (( )*) o      ���� 0 itemnode itemNode* +��+ n     ,-, 1   - /��
�� 
txdl- 1   , -��
�� 
ascr��   ./. r   2 7010 c   2 5232 o   2 3���� 0 itemnode itemNode3 m   3 4��
�� 
TEXT1 o      ���� 0 itemnote itemNote/ 4��4 r   8 =565 o   8 9���� 0 itemnote itemNote6 l     7����7 n      898 1   : <��
�� 
FCno9 o   9 :���� 0 ltask lTask��  ��  ��  ��  ��  ��  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � :;: l     ��������  ��  ��  ; <=< l      ��>?��  > 0 * remove any tags in the provided tag list    ? �@@ T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  = ABA i   p sCDC I      ��E���� 0 	cleartask 	clearTaskE FGF o      ���� 0 ltask lTaskG H��H o      ���� 0 ltaglist lTagList��  ��  D w     $IJI X    $K��LK k    MM NON I   ��P��
�� .ascrcmnt****      � ****P o    ���� 0 atag aTag��  O Q��Q I    ��R���� 0 	untagtask 	untagTaskR STS o    ���� 0 ltask lTaskT U��U o    ���� 0 atag aTag��  ��  ��  �� 0 atag aTagL o    ���� 0 ltaglist lTagListJ�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  B VWV l     ��������  ��  ��  W XYX l      ��Z[��  Z    SECTION 5: other utility    [ �\\ 4   S E C T I O N   5 :   o t h e r   u t i l i t y  Y ]^] l      ��_`��  _   send tweet    ` �aa    s e n d   t w e e t  ^ b��b i   t wcdc I      ��e���� 0 	sendtweet 	sendTweete f��f o      ���� 	0 value  ��  ��  d k     gg hih r     jkj b     lml b     non m     pp �qq $ t w u r l   - d   ' s t a t u s = 'o o    ���� 	0 value  m m    rr �ss 0 '   / 1 / s t a t u s e s / u p d a t e . x m lk o      ���� 0 cmd  i t��t I   ��u��
�� .sysoexecTEXT���     TEXTu o    	���� 0 cmd  ��  ��  ��        ��vwxyz{|}~�����������������������  v �������������������������������������������������������������� 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 getcontexts getContexts�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filtercontextsforstring filterContextsForString�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 60 filterfortaskswithcontext filterForTasksWithContext�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask�� 0 	sendtweet 	sendTweetw ��  ���������� 0 
getfolders 
getFolders�� ����� �  ���� 0 	ldocument 	lDocument��  � ��~�}� 0 	ldocument 	lDocument�~ 0 
folderlist 
folderList�} 0 
thisfolder 
thisFolder�  $�|�{�z�y�x
�| 
FCAr
�{ 
kocl
�z 
cobj
�y .corecnte****       ****�x *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�x �w A�v�u���t�w *0 getfoldersoffolders getFoldersOfFolders�v �s��s �  �r�r 0 lfolders lFolders�u  � �q�p�q 0 lfolders lFolders�p 0 
thisfolder 
thisFolder�  E�o�n�m�l�k
�o 
kocl
�n 
cobj
�m .corecnte****       ****
�l 
FCAr�k *0 getfoldersoffolders getFoldersOfFolders�t '�Z  �[��l kh �*��-k+ %E�[OY��O�y �j a�i�h���g�j 0 getprojects getProjects�i �f��f �  �e�e 0 	ldocument 	lDocument�h  � �d�d 0 	ldocument 	lDocument�  e�c
�c 
FCfx�g �Z��-Ez �b n�a�`���_�b .0 getprojectsfromfolder getProjectsFromFolder�a �^��^ �  �]�] 0 lfolder lFolder�`  � �\�\ 0 lfolder lFolder�  r�[
�[ 
FCpr�_ �Z��-E{ �Z ��Y�X���W�Z 0 getcontexts getContexts�Y �V��V �  �U�U 0 	ldocument 	lDocument�X  � �T�T 0 	ldocument 	lDocument�  ��S
�S 
FCfc�W �Z��-E| �R ��Q�P���O�R 0 gettasks getTasks�Q �N��N �  �M�L�M 0 	ldocument 	lDocument�L 0 lprojectlist lProjectList�P  � �K�J�I�H�K 0 	ldocument 	lDocument�J 0 lprojectlist lProjectList�I 0 tasklist taskList�H 0 thisproject thisProject�  ��G�F�E�D�C
�G 
FCac
�F 
kocl
�E 
cobj
�D .corecnte****       ****�C *0 gettasksfromproject getTasksFromProject�O +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�} �B ��A�@���?�B ,0 gettasksfromdocument getTasksFromDocument�A �>��> �  �=�= 0 	ldocument 	lDocument�@  � �<�< 0 	ldocument 	lDocument�  ��;
�; 
FCft�? 
�Z��,EOP~ �: ��9�8���7�: *0 gettasksfromproject getTasksFromProject�9 �6��6 �  �5�5 0 lproject lProject�8  � �4�4 0 lproject lProject�  ��3
�3 
FCac�7 �Z��-E �2 ��1�0���/�2 20 filterforactiveprojects filterForActiveProjects�1 �.��. �  �-�- 0 lprojectlist lProjectList�0  � �,�+�*�, 0 lprojectlist lProjectList�+ 0 projectlist projectList�* 0 thisproject thisProject�  ��)�(�'�&�%
�) 
kocl
�( 
cobj
�' .corecnte****       ****
�& 
FCPs
�% FCPsFCPa�/ 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �$�#�"���!�$ B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�# � ��  �  �� 0 lprojectlist lProjectList�"  � ���� 0 lprojectlist lProjectList� 0 projectlist projectList� 0 thisproject thisProject� ����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FC.A�! 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �"������ H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists� ��� �  �� 0 lprojectlist lProjectList�  � ���� 0 lprojectlist lProjectList� 0 projectlist projectList� 0 thisproject thisProject� &����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FC.A� 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�� �
H�	�����
 @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�	 ��� �  ��� 0 lprojectlist lProjectList� 0 ldate lDate�  � ���� ����������������� 0 lprojectlist lProjectList� 0 ldate lDate� 0 projectlist projectList�  	0 cdate  �� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  �� 0 tcds  �� 0 tmds  � N��������������
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
FCDm� ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�� ������������� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� ����� �  ������ 0 lprojectlist lProjectList�� 0 lsize lSize��  � ������������ 0 lprojectlist lProjectList�� 0 lsize lSize�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 ps  � ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FC#a�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� ������������� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� ����� �  ������ 0 lprojectlist lProjectList�� 0 ldate lDate��  � 	�������������������� 0 lprojectlist lProjectList�� 0 ldate lDate�� 0 projectlist projectList�� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  � �������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject
�� 
FCDa
�� 
FCDm�� y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� ��,���������� 20 filtercontextsforstring filterContextsForString�� ����� �  ������ 0 lcontextlist lContextList�� 0 ctx  ��  � �������������������������� 0 lcontextlist lContextList�� 0 ctx  �� 0 ctxlist ctxList�� 0 thiscontext thisContext�� 0 thisproject thisProject�� 0 tasklist taskList�� 0 flag  �� 0 thistask thisTask�� 
0 tcdate  �� 
0 tmdate  �� 0 ldate lDate�� 0 projectlist projectList� 2������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject
�� 
FCDa
�� 
FCDm�� y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� ������������� 20 filterforcompletedtasks filterForCompletedTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� ������������� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  � �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCdc
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� ������������� 40 filterforincompletetasks filterForIncompleteTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask� ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�� ������������� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ��~�}� 0 	ltasklist 	lTaskList�~ 0 tasklist taskList�} 0 thistask thisTask� ��|�{�z�y�x
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
FCRp
�x 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �w�v�u���t�w 60 filterfortasksaddedondate filterForTasksAddedOnDate�v �s��s �  �r�q�r 0 	ltasklist 	lTaskList�q 0 ldate lDate�u  � �p�o�n�m�l�k�p 0 	ltasklist 	lTaskList�o 0 ldate lDate�n 0 tasklist taskList�m 0 thistask thisTask�l 0 
thistaskcd 
thisTaskCD�k (0 thistaskdatestring thisTaskDateString� �j�i�h�g�f
�j 
kocl
�i 
cobj
�h .corecnte****       ****
�g 
FCDa
�f 
dstr�t =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� �eF�d�c���b�e L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�d �a��a �  �`�` 0 	ltasklist 	lTaskList�c  � �_�^�]�\�[�Z�Y�X�_ 0 	ltasklist 	lTaskList�^ 0 tasklist taskList�] 0 thistask thisTask�\ 0 foo  �[ 0 con  �Z 0 ccon  �Y 
0 ccname  �X 0 conname  � 
J�W�V�U�T�S�R�Q��
�W 
kocl
�V 
cobj
�U .corecnte****       ****
�T 
pnam
�S 
FCct
�R 
msng
�Q 
ctnr�b ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�� �P��O�N���M�P 20 filterfortasksdueondate filterForTasksDueOnDate�O �L��L �  �K�J�K 0 	ltasklist 	lTaskList�J 0 ldate lDate�N  � �I�H�G�F�E�D�I 0 	ltasklist 	lTaskList�H 0 ldate lDate�G 0 tasklist taskList�F 0 thistask thisTask�E 0 
thistaskdd 
thisTaskDD�D (0 thistaskdatestring thisTaskDateString� ��C�B�A�@�?�>
�C 
kocl
�B 
cobj
�A .corecnte****       ****
�@ 
FCDd
�? 
msng
�> 
dstr�M G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�� �=��<�;���:�= :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�< �9��9 �  �8�7�8 0 	ltasklist 	lTaskList�7 0 ldate lDate�;  � �6�5�4�3�2�6 0 	ltasklist 	lTaskList�5 0 ldate lDate�4 0 tasklist taskList�3 0 thistask thisTask�2 0 
thistaskdd 
thisTaskDD� 	��1�0�/�.�-�,�+
�1 
kocl
�0 
cobj
�/ .corecnte****       ****
�. 
FCDd
�- 
msng
�, 
pnam
�+ .ascrcmnt****      � ****�: K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�� �*'�)�(���'�* .0 filterfortaskswithtag filterForTasksWithTag�) �&��& �  �%�$�% 0 	ltasklist 	lTaskList�$ 0 tag  �(  � �#�"�!� ��# 0 	ltasklist 	lTaskList�" 0 tag  �! 0 tasklist taskList�  0 thistask thisTask� 0 itemnote itemNote� -����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCno�' 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� �Q������ $0 filterforflagged filterForFlagged� ��� �  �� 0 	ltasklist 	lTaskList�  � ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask� U����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCfl� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �w�����
� 60 filterfortaskswithcontext filterForTasksWithContext� �	��	 �  ��� 0 lcontextlist lContextList� 0 ctx  �  � ������� 0 lcontextlist lContextList� 0 ctx  � 0 tasklist taskList� 0 thisctx thisCtx� 0 t  � 0 p  � 	}� ������������
�  
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� .ascrcmnt****      � ****
�� 
FC0T�
 W�ZjvE�O K�[��l kh ��,%E�O�E�O�j O��,� ��,%E�O�E�O�j O���-%E�Y h[OY��O�� ������������� 0 tagtask tagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � �������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote� ���
�� 
FCno�� %�Z��,E�O�� ��,E�O��%E�O���,FY h� ������������� 0 	untagtask 	untagTask�� ����� �  ������ 0 ltask lTask�� 0 ltag lTag��  � ���������� 0 ltask lTask�� 0 ltag lTag�� 0 itemnote itemNote�� 0 itemnode itemNode� 	����������&����
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
TEXT�� B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h� ��D���������� 0 	cleartask 	clearTask�� ����� �  ������ 0 ltask lTask�� 0 ltaglist lTagList��  � �������� 0 ltask lTask�� 0 ltaglist lTagList�� 0 atag aTag� J����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� 0 	untagtask 	untagTask�� %�Z !�[��l kh �j O*��l+ [OY��� ��d���������� 0 	sendtweet 	sendTweet�� ����� �  ���� 	0 value  ��  � ������ 	0 value  �� 0 cmd  � pr��
�� .sysoexecTEXT���     TEXT�� �%�%E�O�j ascr  ��ޭ