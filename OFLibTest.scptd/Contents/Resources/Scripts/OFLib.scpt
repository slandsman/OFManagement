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
 �Q�Q 0 lprojectlist lProjectList�\   ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   �  l     �P�O�N�P  �O  �N    l      �M�M   � � SECTION 3: Filter tasks.  Given a list of tasks, return a new list that has beenr un 
 through a specified filter condition
 	
    �    S E C T I O N   3 :   F i l t e r   t a s k s .     G i v e n   a   l i s t   o f   t a s k s ,   r e t u r n   a   n e w   l i s t   t h a t   h a s   b e e n r   u n   
   t h r o u g h   a   s p e c i f i e d   f i l t e r   c o n d i t i o n 
   	 
  i     # I      �L�K�L 20 filterforcompletedtasks filterForCompletedTasks �J o      �I�I 0 	ltasklist 	lTaskList�J  �K   w     2 k    2   !"! r    #$# J    �H�H  $ o      �G�G 0 tasklist taskList" %&% X    /'�F(' Z    *)*�E�D) =   +,+ n    -.- 1    �C
�C 
FCcd. o    �B�B 0 thistask thisTask, m    �A
�A boovtrue* r    &/0/ b    $121 o     �@�@ 0 tasklist taskList2 J     #33 4�?4 o     !�>�> 0 thistask thisTask�?  0 o      �=�= 0 tasklist taskList�E  �D  �F 0 thistask thisTask( o   
 �<�< 0 	ltasklist 	lTaskList& 5�;5 L   0 266 o   0 1�:�: 0 tasklist taskList�;  �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   787 l     �9�8�7�9  �8  �7  8 9:9 i   $ ';<; I      �6=�5�6 >0 filterforcompletedtasksondate filterForCompletedTasksOnDate= >?> o      �4�4 0 	ltasklist 	lTaskList? @�3@ o      �2�2 0 ldate lDate�3  �5  < w     <ABA k    <CC DED r    FGF J    �1�1  G o      �0�0 0 tasklist taskListE HIH X    9J�/KJ k    4LL MNM r    OPO n   QRQ 1    �.
�. 
FCdcR o    �-�- 0 thistask thisTaskP o      �,�, 0 
thistaskcd 
thisTaskCDN STS r    "UVU n     WXW 1     �+
�+ 
dstrX o    �*�* 0 
thistaskcd 
thisTaskCDV o      �)�) (0 thistaskdatestring thisTaskDateStringT Y�(Y Z   # 4Z[�'�&Z =  # &\]\ o   # $�%�% (0 thistaskdatestring thisTaskDateString] o   $ %�$�$ 0 ldate lDate[ r   ) 0^_^ b   ) .`a` o   ) *�#�# 0 tasklist taskLista J   * -bb c�"c o   * +�!�! 0 thistask thisTask�"  _ o      � �  0 tasklist taskList�'  �&  �(  �/ 0 thistask thisTaskK o   
 �� 0 	ltasklist 	lTaskListI d�d L   : <ee o   : ;�� 0 tasklist taskList�  B�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  : fgf l     ����  �  �  g hih i   ( +jkj I      �l�� 40 filterforincompletetasks filterForIncompleteTasksl m�m o      �� 0 	ltasklist 	lTaskList�  �  k w     2non k    2pp qrq r    sts J    ��  t o      �� 0 tasklist taskListr uvu X    /w�xw Z    *yz��y >   {|{ n    }~} 1    �
� 
FCcd~ o    �� 0 thistask thisTask| m    �
� boovtruez r    &� b    $��� o     �� 0 tasklist taskList� J     #�� ��� o     !�� 0 thistask thisTask�  � o      �
�
 0 tasklist taskList�  �  � 0 thistask thisTaskx o   
 �	�	 0 	ltasklist 	lTaskListv ��� L   0 2�� o   0 1�� 0 tasklist taskList�  o�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  i ��� l     ����  �  �  � ��� i   , /��� I      ���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks� ��� o      � �  0 	ltasklist 	lTaskList�  �  � w     2��� k    2�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    /����� Z    *������� =   ��� n   ��� 1    ��
�� 
FCRp� o    ���� 0 thistask thisTask� m    ��
�� 
msng� r    &��� b    $��� o     ���� 0 tasklist taskList� J     #�� ���� o     !���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   0 2�� o   0 1���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   0 3��� I      ������� 60 filterfortasksaddedondate filterForTasksAddedOnDate� ��� o      ���� 0 	ltasklist 	lTaskList� ���� o      ���� 0 ldate lDate��  ��  � w     <��� k    <�� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    9����� k    4�� ��� r    ��� n   ��� 1    ��
�� 
FCDa� o    ���� 0 thistask thisTask� o      ���� 0 
thistaskcd 
thisTaskCD� ��� r    "��� n     ��� 1     ��
�� 
dstr� o    ���� 0 
thistaskcd 
thisTaskCD� o      ���� (0 thistaskdatestring thisTaskDateString� ���� Z   # 4������� =  # &��� o   # $���� (0 thistaskdatestring thisTaskDateString� o   $ %���� 0 ldate lDate� r   ) 0��� b   ) .��� o   ) *���� 0 tasklist taskList� J   * -�� ���� o   * +���� 0 thistask thisTask��  � o      ���� 0 tasklist taskList��  ��  ��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� ���� L   : <�� o   : ;���� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i   4 7��� I      ������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext� ���� o      ���� 0 	ltasklist 	lTaskList��  ��  � w     ���� k    ��� ��� r    ��� J    ����  � o      ���� 0 tasklist taskList� ��� X    ������ k    ��� ��� r    ��� n    ��� 1    ��
�� 
pnam� o    ���� 0 thistask thisTask� o      ���� 0 foo  � ��� r    "��� n     ��� m     ��
�� 
FCct� o    ���� 0 thistask thisTask� o      ���� 0 con  � ��� r   # (��� n   # &��� 1   $ &��
�� 
pnam� o   # $���� 0 con  � o      ���� 0 foo  � ���� Z   ) ����� � >  ) , o   ) *���� 0 con   m   * +��
�� 
msng� k   /   T   / f Z   4 a��	 >  4 9

 n  4 7 1   5 7��
�� 
ctnr o   4 5���� 0 con   m   7 8��
�� 
msng k   < ]  r   < A n  < ? 1   = ?��
�� 
ctnr o   < =���� 0 con   o      ���� 0 ccon    r   B G n   B E 1   C E��
�� 
pnam o   B C���� 0 ccon   o      ���� 
0 ccname   �� Z   H ]�� >  H K  o   H I���� 
0 ccname    m   I J!! �""  O m n i F o c u s k   N Y## $%$ r   N S&'& n  N Q()( 1   O Q��
�� 
ctnr) o   N O���� 0 con  ' o      ���� 0 con  % *��* r   T Y+,+ n   T W-.- 1   U W��
�� 
pnam. o   T U���� 0 con  , o      ���� 0 foo  ��  ��    S   \ ]��  ��  	  S   ` a /0/ r   g l121 n   g j343 1   h j��
�� 
pnam4 o   g h���� 0 con  2 o      ���� 0 conname  0 5��5 Z   m 67����6 H   m q88 E   m p9:9 o   m n���� 0 conname  : m   n o;; �<<  W a i t i n g7 r   t {=>= b   t y?@? o   t u���� 0 tasklist taskList@ J   u xAA B��B o   u v���� 0 thistask thisTask��  > o      ���� 0 tasklist taskList��  ��  ��  ��    r   � �CDC b   � �EFE o   � ����� 0 tasklist taskListF J   � �GG H��H o   � ����� 0 thistask thisTask��  D o      ���� 0 tasklist taskList��  �� 0 thistask thisTask� o   
 ���� 0 	ltasklist 	lTaskList� I��I L   � �JJ o   � ����� 0 tasklist taskList��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � K��K l     ��������  ��  ��  ��       ��LMNOPQRSTUVWXYZ��  L ������������������������������ 0 
getfolders 
getFolders�� *0 getfoldersoffolders getFoldersOfFolders�� 0 getprojects getProjects�� .0 getprojectsfromfolder getProjectsFromFolder�� 0 gettasks getTasks�� ,0 gettasksfromdocument getTasksFromDocument�� *0 gettasksfromproject getTasksFromProject�� 20 filterforactiveprojects filterForActiveProjects�� 20 filterforcompletedtasks filterForCompletedTasks�� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate�� 40 filterforincompletetasks filterForIncompleteTasks�� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� 60 filterfortasksaddedondate filterForTasksAddedOnDate�� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContextM ��  ����[\���� 0 
getfolders 
getFolders�� �]� ]  �~�~ 0 	ldocument 	lDocument��  [ �}�|�{�} 0 	ldocument 	lDocument�| 0 
folderlist 
folderList�{ 0 
thisfolder 
thisFolder\  $�z�y�x�w�v
�z 
FCAr
�y 
kocl
�x 
cobj
�w .corecnte****       ****�v *0 getfoldersoffolders getFoldersOfFolders�� -�Z��-E�O  �[��l kh �*��-k+ %E�[OY��O�N �u A�t�s^_�r�u *0 getfoldersoffolders getFoldersOfFolders�t �q`�q `  �p�p 0 lfolders lFolders�s  ^ �o�n�o 0 lfolders lFolders�n 0 
thisfolder 
thisFolder_  E�m�l�k�j�i
�m 
kocl
�l 
cobj
�k .corecnte****       ****
�j 
FCAr�i *0 getfoldersoffolders getFoldersOfFolders�r '�Z  �[��l kh �*��-k+ %E�[OY��O�O �h a�g�fab�e�h 0 getprojects getProjects�g �dc�d c  �c�c 0 	ldocument 	lDocument�f  a �b�a�`�_�b 0 	ldocument 	lDocument�a 0 lfolderlist lFolderList�` 0 projectlist projectList�_ 0 
thisfolder 
thisFolderb  e�^�]�\�[�Z�Y�^ 0 
getfolders 
getFolders
�] 
FCpr
�\ 
kocl
�[ 
cobj
�Z .corecnte****       ****�Y .0 getprojectsfromfolder getProjectsFromFolder�e 4�Z)�k+ E�O��-E�O �[��l kh �)�k+ %E�[OY��O�P �X ��W�Vde�U�X .0 getprojectsfromfolder getProjectsFromFolder�W �Tf�T f  �S�S 0 lfolder lFolder�V  d �R�R 0 lfolder lFoldere  ��Q
�Q 
FCpr�U �Z��-EQ �P ��O�Ngh�M�P 0 gettasks getTasks�O �Li�L i  �K�J�K 0 	ldocument 	lDocument�J 0 lprojectlist lProjectList�N  g �I�H�G�F�I 0 	ldocument 	lDocument�H 0 lprojectlist lProjectList�G 0 tasklist taskList�F 0 thisproject thisProjecth  ��E�D�C�B�A
�E 
FCac
�D 
kocl
�C 
cobj
�B .corecnte****       ****�A *0 gettasksfromproject getTasksFromProject�M +�Z��-E�O �[��l kh �*�k+ %E�[OY��O�R �@ ��?�>jk�=�@ ,0 gettasksfromdocument getTasksFromDocument�? �<l�< l  �;�; 0 	ldocument 	lDocument�>  j �:�9�8�7�: 0 	ldocument 	lDocument�9 0 lprojectlist lProjectList�8 0 tasklist taskList�7 0 thisproject thisProjectk  ��6�5�4�3�2�1�6 0 getprojects getProjects
�5 
FCac
�4 
kocl
�3 
cobj
�2 .corecnte****       ****�1 0 gettasks getTasks�= 4�Z*�k+ E�O��-E�O �[��l kh �*�k+ %E�[OY��O�S �0 ��/�.mn�-�0 *0 gettasksfromproject getTasksFromProject�/ �,o�, o  �+�+ 0 lproject lProject�.  m �*�* 0 lproject lProjectn  ��)
�) 
FCac�- �Z��-ET �( ��'�&pq�%�( 20 filterforactiveprojects filterForActiveProjects�' �$r�$ r  �#�# 0 lprojectlist lProjectList�&  p �"�!� �" 0 lprojectlist lProjectList�! 0 projectlist projectList�  0 thisproject thisProjectq  ������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCPs
� FCPsFCPa�% 0�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��U ���st�� 20 filterforcompletedtasks filterForCompletedTasks� �u� u  �� 0 	ltasklist 	lTaskList�  s ���� 0 	ltasklist 	lTaskList� 0 tasklist taskList� 0 thistask thisTaskt ����
� 
kocl
� 
cobj
� .corecnte****       ****
� 
FCcd� 3�ZjvE�O '�[��l kh ��,e  ��kv%E�Y h[OY��O�V �<��vw�
� >0 filterforcompletedtasksondate filterForCompletedTasksOnDate� �	x�	 x  ��� 0 	ltasklist 	lTaskList� 0 ldate lDate�  v ������� 0 	ltasklist 	lTaskList� 0 ldate lDate� 0 tasklist taskList� 0 thistask thisTask� 0 
thistaskcd 
thisTaskCD� (0 thistaskdatestring thisTaskDateStringw B� ��������
�  
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCdc
�� 
dstr�
 =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�W ��k����yz���� 40 filterforincompletetasks filterForIncompleteTasks�� ��{�� {  ���� 0 	ltasklist 	lTaskList��  y �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTaskz o��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCcd�� 3�ZjvE�O '�[��l kh ��,e ��kv%E�Y h[OY��O�X �������|}���� 80 filterfornonrepeatingtasks filterForNonRepeatingTasks�� ��~�� ~  ���� 0 	ltasklist 	lTaskList��  | �������� 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask} �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCRp
�� 
msng�� 3�ZjvE�O '�[��l kh ��,�  ��kv%E�Y h[OY��O�Y ������������ 60 filterfortasksaddedondate filterForTasksAddedOnDate�� ����� �  ������ 0 	ltasklist 	lTaskList�� 0 ldate lDate��   �������������� 0 	ltasklist 	lTaskList�� 0 ldate lDate�� 0 tasklist taskList�� 0 thistask thisTask�� 0 
thistaskcd 
thisTaskCD�� (0 thistaskdatestring thisTaskDateString� �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCDa
�� 
dstr�� =�ZjvE�O 1�[��l kh ��,E�O��,E�O��  ��kv%E�Y h[OY��O�Z ������������� L0 $filterfortasksinnotwaitingforcontext $filterForTasksInNotWaitingForContext�� ����� �  ���� 0 	ltasklist 	lTaskList��  � ������������������ 0 	ltasklist 	lTaskList�� 0 tasklist taskList�� 0 thistask thisTask�� 0 foo  �� 0 con  �� 0 ccon  �� 
0 ccname  �� 0 conname  � 
���������������!;
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
ctnr�� ��ZjvE�O ��[��l kh ��,E�O��,E�O��,E�O�� U 6hZ��,� &��,E�O��,E�O�� ��,E�O��,E�Y Y [OY��O��,E�O�� ��kv%E�Y hY 	��kv%E�[OY��O�ascr  ��ޭ