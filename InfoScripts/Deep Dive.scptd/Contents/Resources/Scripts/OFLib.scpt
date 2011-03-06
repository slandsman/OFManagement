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
folderList��   $�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��     < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �� B���� *0 getfoldersoffolders getFoldersOfFolders B  C�� C o      ���� 0 lfolders lFolders��  ��   A w     & D E D k    & F F  G H G X    # I�� J I r     K L K b     M N M o    ���� 0 lfolders lFolders N I    �� O���� *0 getfoldersoffolders getFoldersOfFolders O  P�� P n     Q R Q 2   ��
�� 
FCAr R o    ���� 0 
thisfolder 
thisFolder��  ��   L o      ���� 0 lfolders lFolders�� 0 
thisfolder 
thisFolder J o    ���� 0 lfolders lFolders H  S T S l  $ $��������  ��  ��   T  U�� U L   $ & V V o   $ %���� 0 lfolders lFolders��   E�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   ?  W X W l     ��������  ��  ��   X  Y Z Y l      �� [ \��   [ 9 3 1b: projects and utility associated with projects     \ � ] ] f   1 b :   p r o j e c t s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   p r o j e c t s   Z  ^ _ ^ i     ` a ` I      �� b���� 0 getprojects getProjects b  c�� c o      ���� 0 	ldocument 	lDocument��  ��   a w     
 d e d k    
 f f  g h g L     i i n     j k j 2   ��
�� 
FCfx k o    ���� 0 	ldocument 	lDocument h  l m l l    �� n o��   n � �		set lFolderList to my getFolders(lDocument)		set projectList to the projects of lDocument		repeat with thisFolder in lFolderList			set projectList to projectList & my getProjectsFromFolder(thisFolder)		end repeat    o � p p� 	 	 s e t   l F o l d e r L i s t   t o   m y   g e t F o l d e r s ( l D o c u m e n t )  	 	 s e t   p r o j e c t L i s t   t o   t h e   p r o j e c t s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s F o l d e r   i n   l F o l d e r L i s t  	 	 	 s e t   p r o j e c t L i s t   t o   p r o j e c t L i s t   &   m y   g e t P r o j e c t s F r o m F o l d e r ( t h i s F o l d e r )  	 	 e n d   r e p e a t m  q�� q L    
 r r o    	���� 0 projectlist projectList��   e�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   _  s t s l     ��������  ��  ��   t  u v u i     w x w I      �� y���� .0 getprojectsfromfolder getProjectsFromFolder y  z�� z o      ���� 0 lfolder lFolder��  ��   x w      { | { L     } } n     ~  ~ 2   ��
�� 
FCpr  o    ���� 0 lfolder lFolder |�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   v  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � 3 - 1a: tasks and utility associated with tasks     � � � � Z   1 a :   t a s k s   a n d   u t i l i t y   a s s o c i a t e d   w i t h   t a s k s   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � default get tasks needs both a document and a project list as an optimization to save us from having
to get the projects list twice, since we probably already have it.  getTasksFromDocument() just needs the document     � � � ��   d e f a u l t   g e t   t a s k s   n e e d s   b o t h   a   d o c u m e n t   a n d   a   p r o j e c t   l i s t   a s   a n   o p t i m i z a t i o n   t o   s a v e   u s   f r o m   h a v i n g 
 t o   g e t   t h e   p r o j e c t s   l i s t   t w i c e ,   s i n c e   w e   p r o b a b l y   a l r e a d y   h a v e   i t .     g e t T a s k s F r o m D o c u m e n t ( )   j u s t   n e e d s   t h e   d o c u m e n t   �  � � � i     � � � I      �� ����� 0 gettasks getTasks �  � � � o      ���� 0 	ldocument 	lDocument �  ��� � o      ���� 0 lprojectlist lProjectList��  ��   � w     * � � � k    * � �  � � � r     � � � n     � � � 2   ��
�� 
FCac � o    ���� 0 	ldocument 	lDocument � o      ���� 0 tasklist taskList �  � � � X    ' ��� � � r    " � � � b      � � � o    ���� 0 tasklist taskList � I    �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o    ���� 0 thisproject thisProject��  ��   � o      ���� 0 tasklist taskList�� 0 thisproject thisProject � o    ���� 0 lprojectlist lProjectList �  ��� � L   ( * � � o   ( )���� 0 tasklist taskList��   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� ,0 gettasksfromdocument getTasksFromDocument �  ��� � o      ���� 0 	ldocument 	lDocument��  ��   � w     	 � � � k    	 � �  � � � L     � � n     � � � m    ��
�� 
FCft � o    ���� 0 	ldocument 	lDocument �  ��� � l    �� � ���   � � �		set lProjectList to getProjects(lDocument)		set taskList to tasks of lDocument		repeat with thisProject in lProjectList			set taskList to taskList & getTasks(thisProject)		end repeat		return taskList    � � � ��  	 	 s e t   l P r o j e c t L i s t   t o   g e t P r o j e c t s ( l D o c u m e n t )  	 	 s e t   t a s k L i s t   t o   t a s k s   o f   l D o c u m e n t  	 	 r e p e a t   w i t h   t h i s P r o j e c t   i n   l P r o j e c t L i s t  	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   g e t T a s k s ( t h i s P r o j e c t )  	 	 e n d   r e p e a t  	 	 r e t u r n   t a s k L i s t��   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� *0 gettasksfromproject getTasksFromProject �  ��� � o      ���� 0 lproject lProject��  ��   � w      � � � L     � � n     � � � 2   ��
�� 
FCac � o    ���� 0 lproject lProject ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � SECTION 2: Filter projects.  Given a list of projects, return a new list that has been run
 through a specified filter condition 
 	- Active projects
    � � � �.   S E C T I O N   2 :   F i l t e r   p r o j e c t s .     G i v e n   a   l i s t   o f   p r o j e c t s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n   r u n 
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n   
   	 -   A c t i v e   p r o j e c t s 
 �  � � � l     ��������  ��  ��   �  � � � i     � � � I      � ��~� 20 filterforactiveprojects filterForActiveProjects �  ��} � o      �|�| 0 lprojectlist lProjectList�}  �~   � w     2 � � � k    2 � �  � � � r     � � � J    �{�{   � o      �z�z 0 projectlist projectList �  � � � X    / ��y � � Z    * � ��x�w � =    � � � n    � � � 1    �v
�v 
FCPs � o    �u�u 0 thisproject thisProject � m    �t
�t FCPsFCPa � r    & � � � b    $ � � � o     �s�s 0 projectlist projectList � J     # � �  ��r � o     !�q�q 0 thisproject thisProject�r   � o      �p�p 0 projectlist projectList�x  �w  �y 0 thisproject thisProject � o   
 �o�o 0 lprojectlist lProjectList �  ��n � L   0 2 � � o   0 1�m�m 0 projectlist projectList�n   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  � � � l     �l�k�j�l  �k  �j   �  � � � i     # � � � I      �i ��h�i B0 filterprojectsforsingletonlists filterProjectsForSingletonLists �  ��g � o      �f�f 0 lprojectlist lProjectList�g  �h   � w     2 � � � k    2 � �  �  � r     J    �e�e   o      �d�d 0 projectlist projectList   X    /�c Z    *�b�a =   	
	 n    1    �`
�` 
FC.A o    �_�_ 0 thisproject thisProject
 m    �^
�^ boovtrue r    & b    $ o     �]�] 0 projectlist projectList J     # �\ o     !�[�[ 0 thisproject thisProject�\   o      �Z�Z 0 projectlist projectList�b  �a  �c 0 thisproject thisProject o   
 �Y�Y 0 lprojectlist lProjectList �X L   0 2 o   0 1�W�W 0 projectlist projectList�X   ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   �  l     �V�U�T�V  �U  �T    i   $ ' I      �S�R�S H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists �Q o      �P�P 0 lprojectlist lProjectList�Q  �R   w     2 k    2  !  r    "#" J    �O�O  # o      �N�N 0 projectlist projectList! $%$ X    /&�M'& Z    *()�L�K( =   *+* n   ,-, 1    �J
�J 
FC.A- o    �I�I 0 thisproject thisProject+ m    �H
�H boovfals) r    &./. b    $010 o     �G�G 0 projectlist projectList1 J     #22 3�F3 o     !�E�E 0 thisproject thisProject�F  / o      �D�D 0 projectlist projectList�L  �K  �M 0 thisproject thisProject' o   
 �C�C 0 lprojectlist lProjectList% 4�B4 L   0 255 o   0 1�A�A 0 projectlist projectList�B  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   676 l     �@�?�>�@  �?  �>  7 898 l      �=:;�=  : � � 
a project is defined as being changed on a date if it
has a contained task that has a created or modified date 
that is set to that date 
   ; �<<   
 a   p r o j e c t   i s   d e f i n e d   a s   b e i n g   c h a n g e d   o n   a   d a t e   i f   i t 
 h a s   a   c o n t a i n e d   t a s k   t h a t   h a s   a   c r e a t e d   o r   m o d i f i e d   d a t e   
 t h a t   i s   s e t   t o   t h a t   d a t e   
9 =>= i   ( +?@? I      �<A�;�< @0 filterprojectsforchangedondate filterProjectsForChangedOnDateA BCB o      �:�: 0 lprojectlist lProjectListC D�9D o      �8�8 0 ldate lDate�9  �;  @ w     �EFE k    �GG HIH r    JKJ J    �7�7  K o      �6�6 0 projectlist projectListI LML r    NON n    
PQP 1    
�5
�5 
dstrQ o    �4�4 0 ldate lDateO o      �3�3 	0 cdate  M RSR X    �T�2UT k    �VV WXW r    %YZY I    #�1[�0�1 *0 gettasksfromproject getTasksFromProject[ \�/\ o    �.�. 0 thisproject thisProject�/  �0  Z o      �-�- 0 tasklist taskListX ]^] r   & )_`_ m   & '�,
�, boovfals` o      �+�+ 0 flag  ^ aba X   * rc�*dc k   : mee fgf r   : ?hih n  : =jkj 1   ; =�)
�) 
FCDak o   : ;�(�( 0 thistask thisTaski o      �'�' 
0 tcdate  g lml r   @ Enon n  @ Cpqp 1   A C�&
�& 
FCDmq o   @ A�%�% 0 thistask thisTasko o      �$�$ 
0 tmdate  m rsr r   F Ktut n   F Ivwv 1   G I�#
�# 
dstrw o   F G�"�" 
0 tcdate  u o      �!�! 0 tcds  s xyx r   L Qz{z n   L O|}| 1   M O� 
�  
dstr} o   L M�� 
0 tmdate  { o      �� 0 tmds  y ~~ Z   R _����� =  R U��� o   R S�� 0 tcds  � o   S T�� 	0 cdate  � r   X [��� m   X Y�
� boovtrue� o      �� 0 flag  �  �   ��� Z   ` m����� =  ` c��� o   ` a�� 0 tmds  � o   a b�� 	0 cdate  � r   f i��� m   f g�
� boovtrue� o      �� 0 flag  �  �  �  �* 0 thistask thisTaskd o   - .�� 0 tasklist taskListb ��� Z   s ������ o   s t�� 0 flag  � r   w ~��� b   w |��� o   w x�� 0 projectlist projectList� J   x {�� ��
� o   x y�	�	 0 thisproject thisProject�
  � o      �� 0 projectlist projectList�  �  �  �2 0 thisproject thisProjectU o    �� 0 lprojectlist lProjectListS ��� L   � ��� o   � ��� 0 projectlist projectList�  F�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  > ��� l     ����  �  �  � ��� l      ����  � Z T
Return those projects greater than the size specified.
Only counts available tasks
   � ��� � 
 R e t u r n   t h o s e   p r o j e c t s   g r e a t e r   t h a n   t h e   s i z e   s p e c i f i e d . 
 O n l y   c o u n t s   a v a i l a b l e   t a s k s 
� ��� i   , /��� I      � ����  H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 lsize lSize��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    3����� k    .�� ��� r    ��� n   ��� 1    ��
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
� ��� i   0 3��� I      ������� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate� ��� o      ���� 0 lprojectlist lProjectList� ���� o      ���� 0 ldate lDate��  ��  � w     x��� k    x�� ��� r    ��� J    ����  � o      ���� 0 projectlist projectList� ��� X    u����� k    p�� ��� r    ��� I    ������� *0 gettasksfromproject getTasksFromProject� ���� o    ���� 0 thisproject thisProject��  ��  � o      ���� 0 tasklist taskList� ��� r     #��� m     !��
�� boovfals� o      ���� 0 flag  � ��� X   $ `����� k   4 [�� ��� r   4 9��� n  4 7��� 1   5 7��
�� 
FCDa� o   4 5���� 0 thistask thisTask� o      ���� 
0 tcdate  � ��� r   : ?��� n  : =��� 1   ; =��
�� 
FCDm� o   : ;���� 0 thistask thisTask� o      ���� 
0 tmdate  � ��� l  @ @��������  ��  ��  � ��� Z   @ M ����  A   @ C o   @ A���� 
0 tcdate   o   A B���� 0 ldate lDate r   F I m   F G��
�� boovtrue o      ���� 0 flag  ��  ��  �  l  N N��������  ��  ��   �� Z   N [	
����	 A   N Q o   N O���� 
0 tmdate   o   O P���� 0 ldate lDate
 r   T W m   T U��
�� boovtrue o      ���� 0 flag  ��  ��  ��  �� 0 thistask thisTask� o   ' (���� 0 tasklist taskList� �� Z   a p���� o   a b���� 0 flag   r   e l b   e j o   e f���� 0 projectlist projectList J   f i �� o   f g���� 0 thisproject thisProject��   o      ���� 0 projectlist projectList��  ��  ��  �� 0 thisproject thisProject� o   
 ���� 0 lprojectlist lProjectList� �� L   v x o   v w���� 0 projectlist projectList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ��������  ��  ��    l      ����   � } SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
    �   �   S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
 !"! i   4 7#$# I      ��%���� 20 filterforcompletedtasks filterForCompletedTasks% &��& o      ���� 0 	ltasklist 	lTaskList��  ��  $ w     2'(' k    2)) *+* r    ,-, J    ����  - o      ���� 0 tasklist taskList+ ./. X    /0��10 Z    *23����2 =   454 n    676 1    ��
�� 
FCcd7 o    ���� 0 thistask thisTask5 m    ��
�� boovtrue3 r    &898 b    $:;: o     ���� 0 tasklist taskList; J     #<< =��= o     !���� 0 thistask thisTask��  9 o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask1 o   
 ���� 0 	ltasklist 	lTaskList/ >��> L   0 2?? o   0 1���� 0 tasklist taskList��  (�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  " @A@ l     ��������  ��  ��  A BCB i   8 ;DED I      ��F���� >0 filterforcompletedtasksondate filterForCompletedTasksOnDateF GHG o      ���� 0 	ltasklist 	lTaskListH I��I o      ���� 0 ldate lDate��  ��  E w     <JKJ k    <LL MNM r    OPO J    ����  P o      ���� 0 tasklist taskListN QRQ X    9S��TS k    4UU VWV r    XYX n   Z[Z 1    ��
�� 
FCdc[ o    ���� 0 thistask thisTaskY o      ���� 0 
thistaskcd 
thisTaskCDW \]\ r    "^_^ n     `a` 1     ��
�� 
dstra o    ���� 0 
thistaskcd 
thisTaskCD_ o      ���� (0 thistaskdatestring thisTaskDateString] b��b Z   # 4cd����c =  # &efe o   # $���� (0 thistaskdatestring thisTaskDateStringf o   $ %���� 0 ldate lDated r   ) 0ghg b   ) .iji o   ) *���� 0 tasklist taskListj J   * -kk l��l o   * +���� 0 thistask thisTask��  h o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTaskT o   
 �� 0 	ltasklist 	lTaskListR m�~m L   : <nn o   : ;�}�} 0 tasklist taskList�~  K�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  C opo l     �|�{�z�|  �{  �z  p qrq i   < ?sts I      �yu�x�y 40 filterforincompletetasks filterForIncompleteTasksu v�wv o      �v�v 0 	ltasklist 	lTaskList�w  �x  t w     2wxw k    2yy z{z r    |}| J    �u�u  } o      �t�t 0 tasklist taskList{ ~~ X    /��s�� Z    *���r�q� >   ��� n    ��� 1    �p
�p 
FCcd� o    �o�o 0 thistask thisTask� m    �n
�n boovtrue� r    &��� b    $��� o     �m�m 0 tasklist taskList� J     #�� ��l� o     !�k�k 0 thistask thisTask�l  � o      �j�j 0 tasklist taskList�r  �q  �s 0 thistask thisTask� o   
 �i�i 0 	ltasklist 	lTaskList ��h� L   0 2�� o   0 1�g�g 0 tasklist taskList�h  x�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  r ��� l     �f�e�d�f  �e  �d  � ��� i   @ C��� I      �c��b�c 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��a� o      �`�` 0 	ltasklist 	lTaskList�a  �b  � w     2��� k    2�� ��� r    ��� J    �_�_  � o      �^�^ 0 tasklist taskList� ��� X    /��]�� Z    *���\�[� =   ��� n   ��� 1    �Z
�Z 
FCRp� o    �Y�Y 0 thistask thisTask� m    �X
�X 
msng� r    &��� b    $��� o     �W�W 0 tasklist taskList� J     #�� ��V� o     !�U�U 0 thistask thisTask�V  � o      �T�T 0 tasklist taskList�\  �[  �] 0 thistask thisTask� o   
 �S�S 0 	ltasklist 	lTaskList� ��R� L   0 2�� o   0 1�Q�Q 0 tasklist taskList�R  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �P�O�N�P  �O  �N  � ��� i   D G��� I      �M��L�M 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      �K�K 0 	ltasklist 	lTaskList� ��J� o      �I�I 0 ldate lDate�J  �L  � w     <��� k    <�� ��� r    ��� J    �H�H  � o      �G�G 0 tasklist taskList� ��� X    9��F�� k    4�� ��� r    ��� n   ��� 1    �E
�E 
FCDa� o    �D�D 0 thistask thisTask� o      �C�C 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     �B
�B 
dstr� o    �A�A 0 
thistaskcd 
thisTaskCD� o      �@�@ (0 thistaskdatestring thisTaskDateString� ��?� Z   # 4���>�=� =  # &��� o   # $�<�< (0 thistaskdatestring thisTaskDateString� o   $ %�;�; 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *�:�: 0 tasklist taskList� J   * -�� ��9� o   * +�8�8 0 thistask thisTask�9  � o      �7�7 0 tasklist taskList�>  �=  �?  �F 0 thistask thisTask� o   
 �6�6 0 	ltasklist 	lTaskList� ��5� L   : <�� o   : ;�4�4 0 tasklist taskList�5  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     �3�2�1�3  �2  �1  � ��� i   H K��� I      �0��/�0 L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ��.� o      �-�- 0 	ltasklist 	lTaskList�.  �/  � w     ���� k    ��� ��� r    ��� J    �,�,  � o      �+�+ 0 tasklist taskList� ��� X    ���*�� k    ��� ��� r    ��� n    ��� 1    �)
�) 
pnam� o    �(�( 0 thistask thisTask� o      �'�' 0 foo  � ��� r    "��� n     ��� m     �&
�& 
FCct� o    �%�% 0 thistask thisTask� o      �$�$ 0 con  �    r   # ( n   # & 1   $ &�#
�# 
pnam o   # $�"�" 0 con   o      �!�! 0 foo   �  Z   ) ��	 >  ) ,

 o   ) *�� 0 con   m   * +�
� 
msng k   /   T   / f Z   4 a� >  4 9 n  4 7 1   5 7�
� 
ctnr o   4 5�� 0 con   m   7 8�
� 
msng k   < ]  r   < A n  < ? 1   = ?�
� 
ctnr o   < =�� 0 con   o      �� 0 ccon    r   B G !  n   B E"#" 1   C E�
� 
pnam# o   B C�� 0 ccon  ! o      �� 
0 ccname   $�$ Z   H ]%&�'% >  H K()( o   H I�� 
0 ccname  ) m   I J** �++  O m n i F o c u s& k   N Y,, -.- r   N S/0/ n  N Q121 1   O Q�
� 
ctnr2 o   N O�� 0 con  0 o      �� 0 con  . 3�3 r   T Y454 n   T W676 1   U W�
� 
pnam7 o   T U�
�
 0 con  5 o      �	�	 0 foo  �  �  '  S   \ ]�  �    S   ` a 898 r   g l:;: n   g j<=< 1   h j�
� 
pnam= o   g h�� 0 con  ; o      �� 0 conname  9 >�> Z   m ?@��? H   m qAA E   m pBCB o   m n�� 0 conname  C m   n oDD �EE  W a i t i n g@ r   t {FGF b   t yHIH o   t u�� 0 tasklist taskListI J   u xJJ K� K o   u v���� 0 thistask thisTask�   G o      ���� 0 tasklist taskList�  �  �  �  	 r   � �LML b   � �NON o   � ����� 0 tasklist taskListO J   � �PP Q��Q o   � ����� 0 thistask thisTask��  M o      ���� 0 tasklist taskList�   �* 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� R��R L   � �SS o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � TUT l     ��������  ��  ��  U VWV i   L OXYX I      ��Z���� 20 filterfortasksdueondate filterForTasksDueOnDateZ [\[ o      ���� 0 	ltasklist 	lTaskList\ ]��] o      ���� 0 ldate lDate��  ��  Y w     F^_^ k    F`` aba r    cdc J    ����  d o      ���� 0 tasklist taskListb efe X    Cg��hg k    >ii jkj r    lml n   non 1    ��
�� 
FCDdo o    ���� 0 thistask thisTaskm o      ���� 0 
thistaskdd 
thisTaskDDk p��p Z    >qr����q >    sts o    ���� 0 
thistaskdd 
thisTaskDDt m    ��
�� 
msngr k   # :uu vwv r   # (xyx n   # &z{z 1   $ &��
�� 
dstr{ o   # $���� 0 
thistaskdd 
thisTaskDDy o      ���� (0 thistaskdatestring thisTaskDateStringw |��| Z   ) :}~����} =  ) ,� o   ) *���� (0 thistaskdatestring thisTaskDateString� o   * +���� 0 ldate lDate~ r   / 6��� b   / 4��� o   / 0���� 0 tasklist taskList� J   0 3�� ���� o   0 1���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  ��  ��  ��  �� 0 thistask thisTaskh o   
 ���� 0 	ltasklist 	lTaskListf ���� L   D F�� o   D E���� 0 tasklist taskList��  _�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  W ��� l     ��������  ��  ��  � ��� i   P S��� I      ������� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     J��� k    J�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    G����� k    B�� ��� r    ��� n   ��� 1    ��
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
 ���� 0 	ltasklist 	lTaskList� ���� L   H J�� o   H I���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   T W��� I      ������� .0 filterfortaskswithtag filterForTasksWithTag� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 tag  ��  ��  � w     6��� k    6�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    3����� k    .�� ��� r    ��� n    ��� 1    ��
�� 
FCno� o    ���� 0 thistask thisTask� o      ���� 0 itemnote itemNote� ���� Z    .������� l    ������ E     ��� o    ���� 0 itemnote itemNote� o    ���� 0 tag  ��  ��  � r   # *��� b   # (��� o   # $���� 0 tasklist taskList� J   $ '�� ���� o   $ %���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   4 6�� o   4 5���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   X [��� I      ������� $0 filterforflagged filterForFlagged� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =      n     1    ��
�� 
FCfl o    ���� 0 thistask thisTask m    ��
�� boovtrue� r    & b    $ o     ���� 0 tasklist taskList J     # 	��	 o     !���� 0 thistask thisTask��   o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� 
��
 L   0 2 o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  �  l     ��~�}�  �~  �}    l      �|�|   i c
Filter lTaskList to return only those tasks
that have a context name that contains the string ctx
    � � 
 F i l t e r   l T a s k L i s t   t o   r e t u r n   o n l y   t h o s e   t a s k s 
 t h a t   h a v e   a   c o n t e x t   n a m e   t h a t   c o n t a i n s   t h e   s t r i n g   c t x 
  i   \ _ I      �{�z�{ 60 filterfortaskswithcontext filterForTasksWithContext  o      �y�y 0 	ltasklist 	lTaskList �x o      �w�w 0 ctx  �x  �z   w      k      r     !  J    �v�v  ! o      �u�u 0 tasklist taskList "#" X    $�t%$ l    �s&'�s  & X R			if thisTask is flagged then				set taskList to taskList & {thisTask}			end if   ' �(( � 	 	 	 i f   t h i s T a s k   i s   f l a g g e d   t h e n  	 	 	 	 s e t   t a s k L i s t   t o   t a s k L i s t   &   { t h i s T a s k }  	 	 	 e n d   i f�t 0 thistask thisTask% o   
 �r�r 0 	ltasklist 	lTaskList# )�q) L    ** o    �p�p 0 tasklist taskList�q  �                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��   +,+ l     �o�n�m�o  �n  �m  , -.- l      �l/0�l  / $  SECTION 4: Task manipulation
   0 �11 <   S E C T I O N   4 :   T a s k   m a n i p u l a t i o n 
. 232 l     �k�j�i�k  �j  �i  3 454 l      �h67�h  6 < 6 set the tag, in the notes field, of the provided tag    7 �88 l   s e t   t h e   t a g ,   i n   t h e   n o t e s   f i e l d ,   o f   t h e   p r o v i d e d   t a g  5 9:9 i   ` c;<; I      �g=�f�g 0 tagtask tagTask= >?> o      �e�e 0 ltask lTask? @�d@ o      �c�c 0 ltag lTag�d  �f  < w     $ABA k    $CC DED r    FGF n    HIH 1    �b
�b 
FCnoI o    �a�a 0 ltask lTaskG o      �`�` 0 itemnote itemNoteE J�_J Z    $KL�^�]K l   M�\�[M H    NN E    OPO o    	�Z�Z 0 itemnote itemNoteP o   	 
�Y�Y 0 ltag lTag�\  �[  L k     QQ RSR r    TUT n    VWV 1    �X
�X 
FCnoW o    �W�W 0 ltask lTaskU o      �V�V 0 itemnote itemNoteS XYX r    Z[Z b    \]\ o    �U�U 0 itemnote itemNote] o    �T�T 0 ltag lTag[ o      �S�S 0 itemnote itemNoteY ^�R^ r     _`_ o    �Q�Q 0 itemnote itemNote` l     a�P�Oa n      bcb 1    �N
�N 
FCnoc o    �M�M 0 ltask lTask�P  �O  �R  �^  �]  �_  B�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  : ded l     �L�K�J�L  �K  �J  e fgf l      �Ihi�I  h 4 . remove the provided tag from the notes field    i �jj \   r e m o v e   t h e   p r o v i d e d   t a g   f r o m   t h e   n o t e s   f i e l d  g klk i   d gmnm I      �Ho�G�H 0 	untagtask 	untagTasko pqp o      �F�F 0 ltask lTaskq r�Er o      �D�D 0 ltag lTag�E  �G  n w     Asts k    Auu vwv r    xyx n    z{z 1    �C
�C 
FCno{ o    �B�B 0 ltask lTasky o      �A�A 0 itemnote itemNotew |}| I   �@~�?
�@ .ascrcmnt****      � ****~ o    	�>�> 0 itemnote itemNote�?  } �= Z    A���<�;� l   ��:�9� E    ��� o    �8�8 0 itemnote itemNote� o    �7�7 0 ltag lTag�:  �9  � k    =�� ��� r    ��� o    �6�6 0 ltag lTag� n     ��� 1    �5
�5 
txdl� 1    �4
�4 
ascr� ��� r    1��� J     �� ��� n    ��� 2   �3
�3 
citm� o    �2�2 0 itemnote itemNote� ��1� m    �� ���  �1  � J      �� ��� o      �0�0 0 itemnode itemNode� ��/� n     ��� 1   - /�.
�. 
txdl� 1   , -�-
�- 
ascr�/  � ��� r   2 7��� c   2 5��� o   2 3�,�, 0 itemnode itemNode� m   3 4�+
�+ 
TEXT� o      �*�* 0 itemnote itemNote� ��)� r   8 =��� o   8 9�(�( 0 itemnote itemNote� l     ��'�&� n      ��� 1   : <�%
�% 
FCno� o   9 :�$�$ 0 ltask lTask�'  �&  �)  �<  �;  �=  t�                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  l ��� l     �#�"�!�#  �"  �!  � ��� l      � ���   � 0 * remove any tags in the provided tag list    � ��� T   r e m o v e   a n y   t a g s   i n   t h e   p r o v i d e d   t a g   l i s t  � ��� i   h k��� I      ���� 0 	cleartask 	clearTask� ��� o      �� 0 ltask lTask� ��� o      �� 0 ltaglist lTagList�  �  � w     $��� X    $���� k    �� ��� I   ���
� .ascrcmnt****      � ****� o    �� 0 atag aTag�  � ��� I    ���� 0 	untagtask 	untagTask� ��� o    �� 0 ltask lTask� ��� o    �� 0 atag aTag�  �  �  � 0 atag aTag� o    �� 0 ltaglist lTagList��                                                                                  OFOC  alis    L  Ghost HD                   Ȭ��H+   	�OmniFocus.app                                                   �I��        ����  	                Applications    ȭ      �h     	�  #Ghost HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    G h o s t   H D  Applications/OmniFocus.app  / ��  � ��� l     ����  �  �  � ��� l      ����  �    SECTION 5: other utility    � ��� 4   S E C T I O N   5 :   o t h e r   u t i l i t y  � ��� l      ����  �   send tweet    � ���    s e n d   t w e e t  � ��
� i   l o��� I      �	���	 0 	sendtweet 	sendTweet� ��� o      �� 	0 value  �  �  � k     �� ��� r     ��� b     ��� b     ��� m     �� ��� $ t w u r l   - d   ' s t a t u s = '� o    �� 	0 value  � m    �� ��� 0 '   / 1 / s t a t u s e s / u p d a t e . x m l� o      �� 0 cmd  � ��� I   ���
� .sysoexecTEXT���     TEXT� o    	� �  0 cmd  �  �  �
       ���������������������������� ��  � ���������������������������������������������������������� 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�� H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� 20 filterfortasksdueondate filterForTasksDueOnDate�� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� .0 filterfortaskswithtag filterForTasksWithTag�� $0 filterforflagged filterForFlagged�� 60 filterfortaskswithcontext filterForTasksWithContext�� 0 tagtask tagTask�� 0 	untagtask 	untagTask�� 0 	cleartask 	clearTask�� 0 	sendtweet 	sendTweet� ��  �������� 0 
getfolders 
getFolders�� ����   ���� 0 	ldocument 	lDocument��   �������� 0 	ldocument 	lDocument�� 0 
folderlist 
folderList�� 0 
thisfolder 
thisFolder  $����������
�� 
FCAr
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�� �� A�������� *0 getfoldersoffolders getFoldersOfFolders�� ����   ���� 0 lfolders lFolders��   ������ 0 lfolders lFolders�� 0 
thisfolder 
thisFolder  E����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr�� *0 getfoldersoffolders getFoldersOfFolders�� '�Z  �[��l kh �*��-k+ %E�[OY��O�� �� a����	
���� 0 getprojects getProjects�� ����   ���� 0 	ldocument 	lDocument��  	 ������ 0 	ldocument 	lDocument�� 0 projectlist projectList
  e��
�� 
FCfx�� �Z��-EO�� �� x�������� .0 getprojectsfromfolder getProjectsFromFolder�� ����   ���� 0 lfolder lFolder��   ���� 0 lfolder lFolder  |��
�� 
FCpr�� �Z��-E� �� ��������� 0 gettasks getTasks�� ����   ������ 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList��   ���������� 0 	ldocument 	lDocument�� 0 lprojectlist lProjectList�� 0 tasklist taskList�� 0 thisproject thisProject  �����������
�� 
FCac
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 gettasksfromproject getTasksFromProject�� +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�� �� ��������� ,0 gettasksfromdocument getTasksFromDocument�� ����   ���� 0 	ldocument 	lDocument��   ���� 0 	ldocument 	lDocument  ���
�� 
FCft�� 
�Z��,EOP� �� ��������� *0 gettasksfromproject getTasksFromProject�� ����   ���� 0 lproject lProject��   ���� 0 lproject lProject  ���
�� 
FCac�� �Z��-E� �� ��������� 20 filterforactiveprojects filterForActiveProjects�� ����   ���� 0 lprojectlist lProjectList��   �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject  �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCPs
�� FCPsFCPa�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �� ��������� B0 filterprojectsforsingletonlists filterProjectsForSingletonLists�� ����   ���� 0 lprojectlist lProjectList��   �������� 0 lprojectlist lProjectList�� 0 projectlist projectList�� 0 thisproject thisProject  ���~�}�|
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| 
FC.A�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �{�z�y�x�{ H0 "filterprojectsfornonsingletonlists "filterProjectsForNonSingletonLists�z �w �w    �v�v 0 lprojectlist lProjectList�y   �u�t�s�u 0 lprojectlist lProjectList�t 0 projectlist projectList�s 0 thisproject thisProject �r�q�p�o
�r 
kocl
�q 
cobj
�p .corecnte****       ****
�o 
FC.A�x 3�ZjvE�O '�[��l kh ��,f  ��kv%E�Y h[OY��O�� �n@�m�l!"�k�n @0 filterprojectsforchangedondate filterProjectsForChangedOnDate�m �j#�j #  �i�h�i 0 lprojectlist lProjectList�h 0 ldate lDate�l  ! �g�f�e�d�c�b�a�`�_�^�]�\�g 0 lprojectlist lProjectList�f 0 ldate lDate�e 0 projectlist projectList�d 	0 cdate  �c 0 thisproject thisProject�b 0 tasklist taskList�a 0 flag  �` 0 thistask thisTask�_ 
0 tcdate  �^ 
0 tmdate  �] 0 tcds  �\ 0 tmds  " F�[�Z�Y�X�W�V�U
�[ 
dstr
�Z 
kocl
�Y 
cobj
�X .corecnte****       ****�W *0 gettasksfromproject getTasksFromProject
�V 
FCDa
�U 
FCDm�k ��ZjvE�O��,E�O y�[��l kh *�k+ E�OfE�O G�[��l kh ��,E�O��,E�O��,E�O��,E�O��  eE�Y hO��  eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �T��S�R$%�Q�T H0 "filterforprojectsofsizegreaterthan "filterForProjectsOfSizeGreaterThan�S �P&�P &  �O�N�O 0 lprojectlist lProjectList�N 0 lsize lSize�R  $ �M�L�K�J�I�M 0 lprojectlist lProjectList�L 0 lsize lSize�K 0 projectlist projectList�J 0 thisproject thisProject�I 0 ps  % ��H�G�F�E
�H 
kocl
�G 
cobj
�F .corecnte****       ****
�E 
FC#a�Q 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� �D��C�B'(�A�D Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�C �@)�@ )  �?�>�? 0 lprojectlist lProjectList�> 0 ldate lDate�B  ' 	�=�<�;�:�9�8�7�6�5�= 0 lprojectlist lProjectList�< 0 ldate lDate�; 0 projectlist projectList�: 0 thisproject thisProject�9 0 tasklist taskList�8 0 flag  �7 0 thistask thisTask�6 
0 tcdate  �5 
0 tmdate  ( ��4�3�2�1�0�/
�4 
kocl
�3 
cobj
�2 .corecnte****       ****�1 *0 gettasksfromproject getTasksFromProject
�0 
FCDa
�/ 
FCDm�A y�ZjvE�O m�[��l kh *�k+ E�OfE�O ;�[��l kh ��,E�O��,E�O�� eE�Y hO�� eE�Y h[OY��O� ��kv%E�Y h[OY��O�� �.$�-�,*+�+�. 20 filterforcompletedtasks filterForCompletedTasks�- �*,�* ,  �)�) 0 	ltasklist 	lTaskList�,  * �(�'�&�( 0 	ltasklist 	lTaskList�' 0 tasklist taskList�& 0 thistask thisTask+ (�%�$�#�"
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
FCcd�+ 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� �!E� �-.��! >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�  �/� /  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  - ������� 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 
thistaskcd 
thisTaskCD� (0 thistaskdatestring thisTaskDateString. K�����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCdc
� 
dstr� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� �t��01�� 40 filterforincompletetasks filterForIncompleteTasks� �2� 2  �
�
 0 	ltasklist 	lTaskList�  0 �	���	 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTask1 x����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�� ���� 34��� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��5�� 5  ���� 0 	ltasklist 	lTaskList�   3 �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask4 �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�� �������67���� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ��8�� 8  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  6 �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString7 �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�� �������9:���� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ��;�� ;  ���� 0 	ltasklist 	lTaskList��  9 ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  : 
���������������*D
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�� ��Y����<=���� 20 filterfortasksdueondate filterForTasksDueOnDate�� ��>�� >  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  < �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD�� (0 thistaskdatestring thisTaskDateString= _������������
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
dstr�� G�ZjvE�O ;�[��l kh ��,E�O�� ��,E�O��  ��kv%E�Y hY h[OY��O�� �������?@���� :0 filterfortasksduebeforedate filterForTasksDueBeforeDate�� ��A�� A  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��  ? ������������ 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskdd 
thisTaskDD@ 	����������������
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
�� .ascrcmnt****      � ****�� K�ZjvE�O ?�[��l kh ��,E�O��  �� ��,%j O��kv%E�Y hY h[OY��O�� �������BC���� .0 filterfortaskswithtag filterForTasksWithTag�� ��D�� D  ������ 0 	ltasklist 	lTaskList�� 0 tag  ��  B ������������ 0 	ltasklist 	lTaskList�� 0 tag  �� 0 tasklist taskList�� 0 thistask thisTask�� 0 itemnote itemNoteC ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCno�� 7�ZjvE�O +�[��l kh ��,E�O�� ��kv%E�Y h[OY��O�� �������EF���� $0 filterforflagged filterForFlagged�� ��G�� G  ���� 0 	ltasklist 	lTaskList��  E �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTaskF ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCfl�� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�� ������HI���� 60 filterfortaskswithcontext filterForTasksWithContext�� ��J�� J  ������ 0 	ltasklist 	lTaskList�� 0 ctx  ��  H ���������� 0 	ltasklist 	lTaskList�� 0 ctx  �� 0 tasklist taskList�� 0 thistask thisTaskI ��~�}
� 
kocl
�~ 
cobj
�} .corecnte****       ****�� �ZjvE�O �[��l kh hY��O�� �|<�{�zKL�y�| 0 tagtask tagTask�{ �xM�x M  �w�v�w 0 ltask lTask�v 0 ltag lTag�z  K �u�t�s�u 0 ltask lTask�t 0 ltag lTag�s 0 itemnote itemNoteL B�r
�r 
FCno�y %�Z��,E�O�� ��,E�O��%E�O���,FY h  �qn�p�oNO�n�q 0 	untagtask 	untagTask�p �mP�m P  �l�k�l 0 ltask lTask�k 0 ltag lTag�o  N �j�i�h�g�j 0 ltask lTask�i 0 ltag lTag�h 0 itemnote itemNote�g 0 itemnode itemNodeO 	t�f�e�d�c�b��a�`
�f 
FCno
�e .ascrcmnt****      � ****
�d 
ascr
�c 
txdl
�b 
citm
�a 
cobj
�` 
TEXT�n B�Z��,E�O�j O�� .���,FO��-�lvE[�k/E�Z[�l/��,FZO��&E�O���,FY h �_��^�]QR�\�_ 0 	cleartask 	clearTask�^ �[S�[ S  �Z�Y�Z 0 ltask lTask�Y 0 ltaglist lTagList�]  Q �X�W�V�X 0 ltask lTask�W 0 ltaglist lTagList�V 0 atag aTagR ��U�T�S�R�Q
�U 
kocl
�T 
cobj
�S .corecnte****       ****
�R .ascrcmnt****      � ****�Q 0 	untagtask 	untagTask�\ %�Z !�[��l kh �j O*��l+ [OY�� �P��O�NTU�M�P 0 	sendtweet 	sendTweet�O �LV�L V  �K�K 	0 value  �N  T �J�I�J 	0 value  �I 0 cmd  U ���H
�H .sysoexecTEXT���     TEXT�M �%�%E�O�j ascr  ��ޭ