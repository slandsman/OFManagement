FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Seth's project status script  
	
	Capture and log the following:
	
	1. How many total projects have been touched today?
	2. How many active projects have been touched today?
	-- if these numbers are not the same, consider that there is inactive project that is being actively used
	
	3. How many active projects total?
	4. What percentage of active projects have been touched today?
	-- Am I hitting a very low number of projects every day?
	
	5. How many projects have not been touched for more than a week? Percentages for both active and inactive.
	6. as per (5) with one month
	7. as per (5) with one year
	
	8. As per (5) with tasks instead of projects
	9. As per (6) with one month
	10. As per (7) with one year	
     � 	 	� 
 	 S e t h ' s   p r o j e c t   s t a t u s   s c r i p t     
 	 
 	 C a p t u r e   a n d   l o g   t h e   f o l l o w i n g : 
 	 
 	 1 .   H o w   m a n y   t o t a l   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 2 .   H o w   m a n y   a c t i v e   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 - -   i f   t h e s e   n u m b e r s   a r e   n o t   t h e   s a m e ,   c o n s i d e r   t h a t   t h e r e   i s   i n a c t i v e   p r o j e c t   t h a t   i s   b e i n g   a c t i v e l y   u s e d 
 	 
 	 3 .   H o w   m a n y   a c t i v e   p r o j e c t s   t o t a l ? 
 	 4 .   W h a t   p e r c e n t a g e   o f   a c t i v e   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 - -   A m   I   h i t t i n g   a   v e r y   l o w   n u m b e r   o f   p r o j e c t s   e v e r y   d a y ? 
 	 
 	 5 .   H o w   m a n y   p r o j e c t s   h a v e   n o t   b e e n   t o u c h e d   f o r   m o r e   t h a n   a   w e e k ?   P e r c e n t a g e s   f o r   b o t h   a c t i v e   a n d   i n a c t i v e . 
 	 6 .   a s   p e r   ( 5 )   w i t h   o n e   m o n t h 
 	 7 .   a s   p e r   ( 5 )   w i t h   o n e   y e a r 
 	 
 	 8 .   A s   p e r   ( 5 )   w i t h   t a s k s   i n s t e a d   o f   p r o j e c t s 
 	 9 .   A s   p e r   ( 6 )   w i t h   o n e   m o n t h 
 	 1 0 .   A s   p e r   ( 7 )   w i t h   o n e   y e a r 	 
   
  
 l     ��������  ��  ��        j     �� �� 0 nl    l     ����  I    �� ��
�� .sysontocTEXT       shor  m     ���� 
��  ��  ��        j    	�� �� 	0 debug    m    ��
�� boovfals      l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��         l  � !���� ! O   � " # " k   � $ $  % & % r     ' ( ' 1    ��
�� 
FCDo ( o      ���� 0 thedocument theDocument &  ) * ) l   ��������  ��  ��   *  + , + O    - . - I    �� /���� 0 getprojects getProjects /  0�� 0 o    ���� 0 thedocument theDocument��  ��   . o    ���� 	0 oflib   ,  1 2 1 r    ! 3 4 3 1    ��
�� 
rslt 4 o      ����  0 rawprojectlist rawProjectList 2  5 6 5 l  " "��������  ��  ��   6  7 8 7 O  " - 9 : 9 I   & ,�� ;���� 20 filterforactiveprojects filterForActiveProjects ;  <�� < o   ' (����  0 rawprojectlist rawProjectList��  ��   : o   " #���� 	0 oflib   8  = > = r   . 1 ? @ ? 1   . /��
�� 
rslt @ o      ���� 0 projectlist projectList >  A B A l  2 2��������  ��  ��   B  C D C I  2 ;�� E��
�� .ascrcmnt****      � **** E b   2 7 F G F m   2 3 H H � I I . N u m b e r   o f   p r o j e c t s   a r e   G n   3 6 J K J 1   4 6��
�� 
leng K o   3 4����  0 rawprojectlist rawProjectList��   D  L M L I  < E�� N��
�� .ascrcmnt****      � **** N b   < A O P O m   < = Q Q � R R < N u m b e r   o f   a c t i v e   p r o j e c t s   a r e   P n   = @ S T S 1   > @��
�� 
leng T o   = >���� 0 projectlist projectList��   M  U V U l  F F��������  ��  ��   V  W X W O  F V Y Z Y I   J U�� [���� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate [  \ ] \ o   K L����  0 rawprojectlist rawProjectList ]  ^�� ^ I  L Q������
�� .misccurdldt    ��� null��  ��  ��  ��   Z o   F G���� 	0 oflib   X  _ ` _ r   W \ a b a 1   W X��
�� 
rslt b o      ���� 40 projectschangedtodaylist projectsChangedTodayList `  c d c l  ] ]��������  ��  ��   d  e f e O  ] m g h g I   a l�� i���� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate i  j k j o   b c���� 0 projectlist projectList k  l�� l I  c h������
�� .misccurdldt    ��� null��  ��  ��  ��   h o   ] ^���� 	0 oflib   f  m n m r   n s o p o 1   n o��
�� 
rslt p o      ���� @0 activeprojectschangedtodaylist activeProjectsChangedTodayList n  q r q l  t t��������  ��  ��   r  s t s I  t ��� u��
�� .ascrcmnt****      � **** u b   t } v w v m   t w x x � y y P N u m b e r   o f   r a w   p r o j e c t s   c h a n g e d   t o d a y   i s   w n   w | z { z 1   z |��
�� 
leng { o   w z���� 40 projectschangedtodaylist projectsChangedTodayList��   t  | } | I  � ��� ~��
�� .ascrcmnt****      � **** ~ b   � �  �  m   � � � � � � � V N u m b e r   o f   a c t i v e   p r o j e c t s   c h a n g e d   t o d a y   i s   � n   � � � � � 1   � ���
�� 
leng � o   � ����� @0 activeprojectschangedtodaylist activeProjectsChangedTodayList��   }  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � � � 	
	1. How many total projects have been touched today?
	2. How many active projects have been touched today?
	-- if these numbers are not the same, consider that there is inactive project that is being actively used
	    � � � ��   	 
 	 1 .   H o w   m a n y   t o t a l   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 2 .   H o w   m a n y   a c t i v e   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 - -   i f   t h e s e   n u m b e r s   a r e   n o t   t h e   s a m e ,   c o n s i d e r   t h a t   t h e r e   i s   i n a c t i v e   p r o j e c t   t h a t   i s   b e i n g   a c t i v e l y   u s e d 
 	 �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � >  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � ����� 40 projectschangedtodaylist projectsChangedTodayList � n   � � � � � 1   � ���
�� 
leng � o   � ����� @0 activeprojectschangedtodaylist activeProjectsChangedTodayList��  ��   � o      ���� ,0 activeandrawmismatch activeAndRawMismatch �  � � � l  � ���������  ��  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � � ^ I s   t h e r e   a n   a c t i v e   a n d   t o t a l   p r o j e c t   m i s m a t c h ?   � o   � ����� ,0 activeandrawmismatch activeAndRawMismatch��   �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   � � �
	3. How many active projects total?
	4. What percentage of active projects have been touched today?
	-- Am I hitting a very low number of projects every day?
	    � � � �@ 
 	 3 .   H o w   m a n y   a c t i v e   p r o j e c t s   t o t a l ? 
 	 4 .   W h a t   p e r c e n t a g e   o f   a c t i v e   p r o j e c t s   h a v e   b e e n   t o u c h e d   t o d a y ? 
 	 - -   A m   I   h i t t i n g   a   v e r y   l o w   n u m b e r   o f   p r o j e c t s   e v e r y   d a y ? 
 	 �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � ]   � � � � � l  � � ����� � ^   � � � � � l  � � ����� � n   � � � � � 1   � ��
� 
leng � o   � ��~�~ 40 projectschangedtodaylist projectsChangedTodayList��  ��   � l  � � ��}�| � n   � � � � � 1   � ��{
�{ 
leng � o   � ��z�z 0 projectlist projectList�}  �|  ��  ��   � m   � ��y�y d � o      �x�x 60 percentagetouchedprojects percentageTouchedProjects �  � � � I  � ��w ��v
�w .ascrcmnt****      � **** � b   � � � � � m   � � � � � � � N p e r c e n t a g e   o f   o p e n   p r o j e c t s   t o u c h e d   i s   � o   � ��u�u 60 percentagetouchedprojects percentageTouchedProjects�v   �  � � � l  � ��t�s�r�t  �s  �r   �  � � � l   � ��q � ��q   � � �
	5. How many projects have not been touched for more than a week? Percentages for both active and inactive.
	6. as per (5) with one month
	7. as per (5) with one year
	    � � � �R 
 	 5 .   H o w   m a n y   p r o j e c t s   h a v e   n o t   b e e n   t o u c h e d   f o r   m o r e   t h a n   a   w e e k ?   P e r c e n t a g e s   f o r   b o t h   a c t i v e   a n d   i n a c t i v e . 
 	 6 .   a s   p e r   ( 5 )   w i t h   o n e   m o n t h 
 	 7 .   a s   p e r   ( 5 )   w i t h   o n e   y e a r 
 	 �  � � � l  � ��p�o�n�p  �o  �n   �  � � � r   � � � � � l  � � ��m�l � I  � ��k�j�i
�k .misccurdldt    ��� null�j  �i  �m  �l   � o      �h�h 	0 cdate   �  � � � l  � ��g�f�e�g  �f  �e   �  � � � r   � � � � � \   � � � � � o   � ��d�d 	0 cdate   � ]   � � � � � m   � ��c�c  � 1   � ��b
�b 
days � o      �a�a 	0 wdate   �  � � � r   � � � � � \   � � � � � o   � ��`�` 	0 cdate   � ]   � � � � � m   � ��_�_  � 1   � ��^
�^ 
days � o      �]�] 	0 mdate   �  � � � r   � � � � \   � � � � � o   � ��\�\ 	0 cdate   � ]   � � � � � m   � ��[�[m � 1   � ��Z
�Z 
days � o      �Y�Y 	0 ydate   �  � � � l �X�W�V�X  �W  �V   �  � � � O  � � � I  �U ��T�U Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate �  � � � o  	
�S�S  0 rawprojectlist rawProjectList �  ��R � o  
�Q�Q 	0 wdate  �R  �T   � o  �P�P 	0 oflib   �  � � � r   � � � 1  �O
�O 
rslt � o      �N�N <0 projectsnotchangedinlastweek projectsNotChangedInLastWeek �  � � � l �M�L�K�M  �L  �K   �  � � � O ' � � � I  &�J ��I�J Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate �  � � � o  �H�H  0 rawprojectlist rawProjectList �  �G  o  "�F�F 	0 mdate  �G  �I   � o  �E�E 	0 oflib   �  r  (- 1  ()�D
�D 
rslt o      �C�C >0 projectsnotchangedinlastmonth projectsNotChangedInLastMonth  l ..�B�A�@�B  �A  �@    O .<	
	 I  2;�?�>�? Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate  o  34�=�=  0 rawprojectlist rawProjectList �< o  47�;�; 	0 ydate  �<  �>  
 o  ./�:�: 	0 oflib    r  =B 1  =>�9
�9 
rslt o      �8�8 <0 projectsnotchangedinlastyear projectsNotChangedInLastYear  l CC�7�6�5�7  �6  �5    I CP�4�3
�4 .ascrcmnt****      � **** b  CL m  CF � f N u m b e r   o f   p r o j e c t s   n o t   c h a n g e d   i n   t h e   p a s t   w e e k   i s   n  FK 1  IK�2
�2 
leng o  FI�1�1 <0 projectsnotchangedinlastweek projectsNotChangedInLastWeek�3    I Q\�0 �/
�0 .ascrcmnt****      � ****  b  QX!"! m  QT## �$$ 8 T o t a l   n u m b e r   o f   p r o j e c t s   i s  " n  TW%&% 1  UW�.
�. 
leng& o  TU�-�-  0 rawprojectlist rawProjectList�/   '(' l ]]�,�+�*�,  �+  �*  ( )*) I ]d�)+�(
�) .ascrcmnt****      � ****+ m  ]`,, �--   P r o j e c t s   a r e   . . .�(  * ./. X  e�0�'10 k  {�22 343 r  {�565 l {�7�&�%7 n  {�898 1  |��$
�$ 
pnam9 o  {|�#�# 0 
theproject 
theProject�&  �%  6 o      �"�" 	0 pname  4 :�!: I ��� ;�
�  .ascrcmnt****      � ****; o  ���� 	0 pname  �  �!  �' 0 
theproject 
theProject1 o  hk�� <0 projectsnotchangedinlastweek projectsNotChangedInLastWeek/ <=< l ������  �  �  = >?> l ������  �  �  ? @�@ l  ���AB�  ATN	tell oflib to getTasks(theDocument, projectList)	set taskList to result		tell oflib to filterForIncompleteTasks(taskList)	set taskList to result		tell oflib to filterForTasksDueOnDate(taskList, date string of (current date))	set dueTodayTasks to result		tell oflib to filterForTasksWithTag(taskList, "@today")	set markedTodayTasks to result		tell oflib to filterForTasksWithTag(taskList, "@nextweek")	set markedNextWeekTasks to result		tell oflib to filterForTasksDueBeforeDate(taskList, current date)	set overdueTasks to result		tell oflib to filterForFlagged(taskList)	set flaggedTasks to result		log length of dueTodayTasks	log length of markedTodayTasks	log length of markedNextWeekTasks	log length of overdueTasks	log length of flaggedTasks		set svalue to my generateStatus(flaggedTasks, dueTodayTasks, markedTodayTasks, markedNextWeekTasks, overdueTasks)		set question to display dialog "Tweet morning status" buttons {"Yes", "Cancel"} default button 2	set answer to button returned of question		if answer is equal to "Yes" then		my tweetStatus(svalue)	end if	   B �CC� 	 t e l l   o f l i b   t o   g e t T a s k s ( t h e D o c u m e n t ,   p r o j e c t L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r I n c o m p l e t e T a s k s ( t a s k L i s t )  	 s e t   t a s k L i s t   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s D u e O n D a t e ( t a s k L i s t ,   d a t e   s t r i n g   o f   ( c u r r e n t   d a t e ) )  	 s e t   d u e T o d a y T a s k s   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s W i t h T a g ( t a s k L i s t ,   " @ t o d a y " )  	 s e t   m a r k e d T o d a y T a s k s   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s W i t h T a g ( t a s k L i s t ,   " @ n e x t w e e k " )  	 s e t   m a r k e d N e x t W e e k T a s k s   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r T a s k s D u e B e f o r e D a t e ( t a s k L i s t ,   c u r r e n t   d a t e )  	 s e t   o v e r d u e T a s k s   t o   r e s u l t  	  	 t e l l   o f l i b   t o   f i l t e r F o r F l a g g e d ( t a s k L i s t )  	 s e t   f l a g g e d T a s k s   t o   r e s u l t  	  	 l o g   l e n g t h   o f   d u e T o d a y T a s k s  	 l o g   l e n g t h   o f   m a r k e d T o d a y T a s k s  	 l o g   l e n g t h   o f   m a r k e d N e x t W e e k T a s k s  	 l o g   l e n g t h   o f   o v e r d u e T a s k s  	 l o g   l e n g t h   o f   f l a g g e d T a s k s  	  	 s e t   s v a l u e   t o   m y   g e n e r a t e S t a t u s ( f l a g g e d T a s k s ,   d u e T o d a y T a s k s ,   m a r k e d T o d a y T a s k s ,   m a r k e d N e x t W e e k T a s k s ,   o v e r d u e T a s k s )  	  	 s e t   q u e s t i o n   t o   d i s p l a y   d i a l o g   " T w e e t   m o r n i n g   s t a t u s "   b u t t o n s   { " Y e s " ,   " C a n c e l " }   d e f a u l t   b u t t o n   2  	 s e t   a n s w e r   t o   b u t t o n   r e t u r n e d   o f   q u e s t i o n  	  	 i f   a n s w e r   i s   e q u a l   t o   " Y e s "   t h e n  	 	 m y   t w e e t S t a t u s ( s v a l u e )  	 e n d   i f  	�   # m    	DD�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��     EFE l     ����  �  �  F GHG i   
 IJI I      ���� 0 	pathtolib 	pathToLib�  �  J k     KK LML r     	NON l    P��P I    �QR
� .earsffdralis        afdrQ  f     R �S�

� 
fromS m    �	
�	 fldmfldu�
  �  �  O o      �� 0 apppath appPathM TUT l   
 
�VW�  V y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string   W �XX � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n gU YZY l  
 
����  �  �  Z [\[ L   
 ]] c   
 ^_^ l  
 `��` b   
 aba o   
 �� 0 apppath appPathb m    cc �dd 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�  �  _ m    � 
�  
ctxt\ e��e L    ff n    ghg 1    ��
�� 
strqh o    ���� 0 myfolderpath myFolderPath��  H iji l     ��������  ��  ��  j klk i    mnm I      �������� 0 getoflib getOFLib��  ��  n k     oo pqp r     rsr I    ��t��
�� .sysoloadscpt        filet 4     
��u
�� 
fileu l   	v����v b    	wxw n   yzy I    �������� 0 	pathtolib 	pathToLib��  ��  z  f    x m    {{ �||  O F L i b . s c p t��  ��  ��  s o      ���� 0 thelib theLibq }��} L    ~~ o    ���� 0 thelib theLib��  l � l     ��������  ��  ��  � ��� i    ��� I      �������  0 generatestatus generateStatus� ��� o      ���� 0 lflaggedtasks lFlaggedTasks� ��� o      ����  0 lduetodaytasks lDueTodayTasks� ��� o      ���� &0 lmarkedtodaytasks lMarkedTodayTasks� ��� o      ���� ,0 lmarkednextweektasks lMarkedNextWeekTasks� ���� o      ���� 0 loverduetasks lOverdueTasks��  ��  � w     D��� k    D�� ��� r    ��� [    	��� l   ������ n    ��� 1    ��
�� 
leng� o    ����  0 lduetodaytasks lDueTodayTasks��  ��  � l   ������ n    ��� 1    ��
�� 
leng� o    ���� &0 lmarkedtodaytasks lMarkedTodayTasks��  ��  � o      ���� 0 
totaltoday 
totalToday� ��� r    ��� [    ��� l   ������ n    ��� 1    ��
�� 
leng� o    ���� 0 lflaggedtasks lFlaggedTasks��  ��  � o    ���� 0 
totaltoday 
totalToday� o      ���� 0 totalthisweek totalThisWeek� ��� r    ��� m    �� ��� < S e t h ' s   s t a r t   o f   d a y   s t a t u s   i s  � o      ���� 0 thetext theText� ��� r    ��� b    ��� b    ��� o    ���� 0 thetext theText� o    ���� 0 
totaltoday 
totalToday� m    �� ��� $   t a s k s   f o r   t o d a y ,  � o      ���� 0 thetext theText� ��� r     '��� b     %��� b     #��� o     !���� 0 thetext theText� o   ! "���� 0 totalthisweek totalThisWeek� m   # $�� ��� <   t a s k s   f l a g g e d   f o r   t h i s   w e e k ,  � o      ���� 0 thetext theText� ��� r   ( 1��� b   ( /��� b   ( -��� o   ( )���� 0 thetext theText� n   ) ,��� 1   * ,��
�� 
leng� o   ) *���� ,0 lmarkednextweektasks lMarkedNextWeekTasks� m   - .�� ��� 4   t a s k s   f o r   n e x t   w e e k ,   a n d  � o      ���� 0 thetext theText� ��� r   2 ;��� b   2 9��� b   2 7��� o   2 3���� 0 thetext theText� n   3 6��� 1   4 6��
�� 
leng� o   3 4���� 0 loverduetasks lOverdueTasks� m   7 8�� ���    o v e r d u e   t a s k s .� o      ���� 0 thetext theText� ��� l  < <��������  ��  ��  � ��� I  < A�����
�� .ascrcmnt****      � ****� o   < =���� 0 thetext theText��  � ��� l  B B��������  ��  ��  � ���� L   B D�� o   B C���� 0 thetext theText��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 tweetstatus tweetStatus� ���� o      ���� 0 v  ��  ��  � O     
��� I   	�����
�� .chTwpsTwnull���    obj � o    ���� 0 v  ��  � m     ���                                                                                  chTW  alis    d  Macintosh HD               űhH+   ���Twitterrific.app                                                �:����        ����  	                Applications    űJ�      ��     ���  *Macintosh HD:Applications:Twitterrific.app  "  T w i t t e r r i f i c . a p p    M a c i n t o s h   H D  Applications/Twitterrific.app   / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� $0 writedailystatus writeDailyStatus� ��� o      ���� (0 lactiveprojectlist lActiveProjectList� ��� o      ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      ���� *0 laddedtodaytasklist lAddedTodayTaskList� ��� o      ���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList� ��� o      ���� 60 lactiveincompletetasklist lActiveIncompleteTaskList� ���� o      ���� $0 lnotwaittasklist lNotWaitTaskList��  ��  � w     �   k    �  r     m     �   o      ���� 0 thetext theText 	
	 r     b     b     b    	 o    ���� 0 thetext theText m     � " a c t i v e   p r o j e c t s :   n   	  1   
 ��
�� 
leng o   	 
���� (0 lactiveprojectlist lActiveProjectList o    ���� 0 nl   o      ���� 0 thetext theText
  r    % b    # b     b      o    ���� 0 thetext theText  m    !! �"" 2 t o d a y ' s   c o m p l e t e d   t a s k s :   n    #$# 1    ��
�� 
leng$ o    ���� 40 ltodayscompletedtasklist lTodaysCompletedTaskList o    "���� 0 nl   o      ���� 0 thetext theText %&% r   & 5'(' b   & 3)*) b   & -+,+ b   & )-.- o   & '���� 0 thetext theText. m   ' (// �00 & T a s k s   a d d e d   t o d a y :  , n   ) ,121 1   * ,��
�� 
leng2 o   ) *���� *0 laddedtodaytasklist lAddedTodayTaskList* o   - 2���� 0 nl  ( o      ���� 0 thetext theText& 343 r   6 E565 b   6 C787 b   6 =9:9 b   6 9;<; o   6 7���� 0 thetext theText< m   7 8== �>> , N o n - w a i t   a d d e d   t o d a y :  : n   9 <?@? 1   : <��
�� 
leng@ o   9 :���� 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList8 o   = B���� 0 nl  6 o      ���� 0 thetext theText4 ABA r   F UCDC b   F SEFE b   F MGHG b   F IIJI o   F G���� 0 thetext theTextJ m   G HKK �LL 2 A c t i v e   i n c o m p l e t e   t a s k s :  H n   I LMNM 1   J L��
�� 
lengN o   I J���� 60 lactiveincompletetasklist lActiveIncompleteTaskListF o   M R���� 0 nl  D o      ���� 0 thetext theTextB OPO r   V eQRQ b   V cSTS b   V ]UVU b   V YWXW o   V W���� 0 thetext theTextX m   W XYY �ZZ L A c t i v e   i n c o m p l e t e ,   n o n   w a i t i n g   t a s k s :  V n   Y \[\[ 1   Z \��
�� 
leng\ o   Y Z���� $0 lnotwaittasklist lNotWaitTaskListT o   ] b���� 0 nl  R o      ���� 0 thetext theTextP ]^] l  f f��������  ��  ��  ^ _`_ l  f f��~�}�  �~  �}  ` aba I  f k�|c�{
�| .ascrcmnt****      � ****c o   f g�z�z 0 thetext theText�{  b ded l  l l�y�x�w�y  �x  �w  e fgf r   l yhih c   l wjkj b   l ulml l  l sn�v�un I  l s�top
�t .earsffdralis        afdro m   l m�s
�s afdrdeskp �rq�q
�r 
rtypq m   n o�p
�p 
TEXT�q  �v  �u  m m   s trr �ss  o f   t o d a y . t x tk m   u v�o
�o 
TEXTi o      �n�n 0 thefilepath theFilePathg tut r   z �vwv I  z ��mxy
�m .rdwropenshor       filex o   z {�l�l 0 thefilepath theFilePathy �kz�j
�k 
permz m   | }�i
�i boovtrue�j  w o      �h�h 0 thefile theFileu {|{ I  � ��g}~
�g .rdwrwritnull���     ****} o   � ��f�f 0 thetext theText~ �e�
�e 
refn o   � ��d�d 0 thefile theFile� �c��b
�c 
wrat� m   � ��a
�a rdwreof �b  | ��`� I  � ��_��^
�_ .rdwrclosnull���     ****� o   � ��]�] 0 thefile theFile�^  �`  �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �\�[�Z�\  �[  �Z  � ��� i    !��� I      �Y��X�Y 0 
writestats 
writeStats� ��� o      �W�W 0 lfolderlist lFolderList� ��� o      �V�V 0 lprojectlist lProjectList� ��� o      �U�U (0 lactiveprojectlist lActiveProjectList� ��� o      �T�T 0 	ltasklist 	lTaskList� ��� o      �S�S "0 lactivetasklist lActiveTaskList� ��� o      �R�R (0 lcompletedtasklist lCompletedTaskList� ��� o      �Q�Q *0 lincompletetasklist lIncompleteTaskList� ��� o      �P�P 40 ltodayscompletedtasklist lTodaysCompletedTaskList� ��� o      �O�O &0 lnonrepincomplete lNonRepIncomplete� ��N� o      �M�M *0 laddedtodaytasklist lAddedTodayTaskList�N  �X  � w     ���� k    ��� ��� l    �L���L  � b \		set my fCount to length of f		set my pCount to length of p		set my tCount to length of t   � ��� � 	 	 s e t   m y   f C o u n t   t o   l e n g t h   o f   f  	 	 s e t   m y   p C o u n t   t o   l e n g t h   o f   p  	 	 s e t   m y   t C o u n t   t o   l e n g t h   o f   t� ��� r    ��� m    �� ���  � o      �K�K 0 thetext theText� ��� l    �J���J  � J D		set theText to theText & "folders: " & length of lFolderList & nl    � ��� � 	 	 s e t   t h e T e x t   t o   t h e T e x t   &   " f o l d e r s :   "   &   l e n g t h   o f   l F o l d e r L i s t   &   n l  � ��� r    ��� b    ��� b    ��� b    	��� o    �I�I 0 thetext theText� m    �� ���  p r o j e c t s :  � n   	 ��� 1   
 �H
�H 
leng� o   	 
�G�G 0 lprojectlist lProjectList� o    �F�F 0 nl  � o      �E�E 0 thetext theText� ��� r    %��� b    #��� b    ��� b    ��� o    �D�D 0 thetext theText� m    �� ��� " a c t i v e   p r o j e c t s :  � n    ��� 1    �C
�C 
leng� o    �B�B (0 lactiveprojectlist lActiveProjectList� o    "�A�A 0 nl  � o      �@�@ 0 thetext theText� ��� r   & 5��� b   & 3��� b   & -��� b   & )��� o   & '�?�? 0 thetext theText� m   ' (�� ���  t a s k s :  � n   ) ,��� 1   * ,�>
�> 
leng� o   ) *�=�= 0 	ltasklist 	lTaskList� o   - 2�<�< 0 nl  � o      �;�; 0 thetext theText� ��� r   6 E��� b   6 C��� b   6 =��� b   6 9��� o   6 7�:�: 0 thetext theText� m   7 8�� ��� 8 t a s k s   f r o m   a c t i v e   p r o j e c t s :  � n   9 <��� 1   : <�9
�9 
leng� o   9 :�8�8 "0 lactivetasklist lActiveTaskList� o   = B�7�7 0 nl  � o      �6�6 0 thetext theText� ��� r   F U��� b   F S��� b   F M��� b   F I��� o   F G�5�5 0 thetext theText� m   G H�� ��� " c o m p l e t e d   t a s k s :  � n   I L��� 1   J L�4
�4 
leng� o   I J�3�3 (0 lcompletedtasklist lCompletedTaskList� o   M R�2�2 0 nl  � o      �1�1 0 thetext theText� ��� r   V e��� b   V c��� b   V ]��� b   V Y� � o   V W�0�0 0 thetext theText  m   W X � $ i n c o m p l e t e   t a s k s :  � n   Y \ 1   Z \�/
�/ 
leng o   Y Z�.�. *0 lincompletetasklist lIncompleteTaskList� o   ] b�-�- 0 nl  � o      �,�, 0 thetext theText�  r   f u b   f s	
	 b   f m b   f i o   f g�+�+ 0 thetext theText m   g h � 2 t o d a y ' s   c o m p l e t e d   t a s k s :   n   i l 1   j l�*
�* 
leng o   i j�)�) 40 ltodayscompletedtasklist lTodaysCompletedTaskList
 o   m r�(�( 0 nl   o      �'�' 0 thetext theText  r   v � b   v � b   v } b   v y o   v w�&�& 0 thetext theText m   w x � 4 N o n   r e p e a t i n g   i n c o m p l e t e :   n   y |  1   z |�%
�% 
leng  o   y z�$�$ &0 lnonrepincomplete lNonRepIncomplete o   } ��#�# 0 nl   o      �"�" 0 thetext theText !"! r   � �#$# b   � �%&% b   � �'(' b   � �)*) o   � ��!�! 0 thetext theText* m   � �++ �,, & T a s k s   a d d e d   t o d a y :  ( n   � �-.- 1   � �� 
�  
leng. o   � ��� *0 laddedtodaytasklist lAddedTodayTaskList& o   � ��� 0 nl  $ o      �� 0 thetext theText" /0/ l  � �����  �  �  0 121 I  � ��3�
� .ascrcmnt****      � ****3 o   � ��� 0 thetext theText�  2 454 l  � �����  �  �  5 676 r   � �898 c   � �:;: b   � �<=< l  � �>��> I  � ��?@
� .earsffdralis        afdr? m   � ��
� afdrdesk@ �A�
� 
rtypA m   � ��
� 
TEXT�  �  �  = m   � �BB �CC  o f . t x t; m   � ��
� 
TEXT9 o      �� 0 thefilepath theFilePath7 DED r   � �FGF I  � ��
HI
�
 .rdwropenshor       fileH o   � ��	�	 0 thefilepath theFilePathI �J�
� 
permJ m   � ��
� boovtrue�  G o      �� 0 thefile theFileE KLK I  � ��MN
� .rdwrwritnull���     ****M o   � ��� 0 thetext theTextN �OP
� 
refnO o   � ��� 0 thefile theFileP � Q��
�  
wratQ m   � ���
�� rdwreof ��  L R��R I  � ���S��
�� .rdwrclosnull���     ****S o   � ����� 0 thefile theFile��  ��  ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � TUT l     ��������  ��  ��  U VWV i   " %XYX I      ��Z���� 0 
writedebug 
writeDebugZ [��[ o      ���� 0 ltask lTask��  ��  Y Z     �\]����\ o     ���� 	0 debug  ] w    ^_^ k   
 `` aba r   
 cdc b   
 efe b   
 ghg m   
 ii �jj  T a s k   n a m e   i s  h n   klk 1    ��
�� 
pnaml o    ���� 0 ltask lTaskf o    ���� 0 nl  d o      ���� 0 thetext theTextb mnm r    %opo b    #qrq b    sts m    uu �vv  T a s k   i d   i s  t n   wxw 1    ��
�� 
ID  x o    ���� 0 ltask lTaskr o    "���� 0 nl  p o      ���� 0 thetext theTextn yzy r   & 5{|{ b   & 3}~} b   & -� b   & )��� o   & '���� 0 thetext theText� m   ' (�� ��� & C o m p l e t i o n   d a t e   i s  � n  ) ,��� 1   * ,��
�� 
FCdc� o   ) *���� 0 ltask lTask~ o   - 2���� 0 nl  | o      ���� 0 thetext theTextz ��� r   6 ;��� n  6 9��� 1   7 9��
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
�� .rdwrclosnull���     ****� o   z {���� 0 thefile theFile��  ��  _�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��  W ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ����������������  � 
���������������������� 0 nl  �� 	0 debug  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib��  0 generatestatus generateStatus�� 0 tweetstatus tweetStatus�� $0 writedailystatus writeDailyStatus�� 0 
writestats 
writeStats�� 0 
writedebug 
writeDebug
�� .aevtoappnull  �   � ****� ���  

�� boovfals� ��J���������� 0 	pathtolib 	pathToLib��  ��  � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath� ������c����
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt
�� 
strq�� )��l E�O��%�&O��,E� ��n���������� 0 getoflib getOFLib��  ��  � ���� 0 thelib theLib� ����{��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O�� �������������  0 generatestatus generateStatus�� ����� �  ������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks��  � ������������������ 0 lflaggedtasks lFlaggedTasks��  0 lduetodaytasks lDueTodayTasks�� &0 lmarkedtodaytasks lMarkedTodayTasks�� ,0 lmarkednextweektasks lMarkedNextWeekTasks�� 0 loverduetasks lOverdueTasks�� 0 
totaltoday 
totalToday�� 0 totalthisweek totalThisWeek�� 0 thetext theText� ����������
�� 
leng
�� .ascrcmnt****      � ****�� E�Z��,��,E�O��,�E�O�E�O��%�%E�O��%�%E�O���,%�%E�O���,%�%E�O�j O�� ������������� 0 tweetstatus tweetStatus�� ����� �  �� 0 v  ��  � �~�~ 0 v  � ��}
�} .chTwpsTwnull���    obj �� � �j U� �|��{�z���y�| $0 writedailystatus writeDailyStatus�{ �x��x �  �w�v�u�t�s�r�w (0 lactiveprojectlist lActiveProjectList�v 40 ltodayscompletedtasklist lTodaysCompletedTaskList�u *0 laddedtodaytasklist lAddedTodayTaskList�t 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�s 60 lactiveincompletetasklist lActiveIncompleteTaskList�r $0 lnotwaittasklist lNotWaitTaskList�z  � 	�q�p�o�n�m�l�k�j�i�q (0 lactiveprojectlist lActiveProjectList�p 40 ltodayscompletedtasklist lTodaysCompletedTaskList�o *0 laddedtodaytasklist lAddedTodayTaskList�n 80 lnonwaitaddedtodaytasklist lNonWaitAddedTodayTaskList�m 60 lactiveincompletetasklist lActiveIncompleteTaskList�l $0 lnotwaittasklist lNotWaitTaskList�k 0 thetext theText�j 0 thefilepath theFilePath�i 0 thefile theFile� �h!/=KY�g�f�e�d�cr�b�a�`�_�^�]�\�[
�h 
leng
�g .ascrcmnt****      � ****
�f afdrdesk
�e 
rtyp
�d 
TEXT
�c .earsffdralis        afdr
�b 
perm
�a .rdwropenshor       file
�` 
refn
�_ 
wrat
�^ rdwreof �] 
�\ .rdwrwritnull���     ****
�[ .rdwrclosnull���     ****�y ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j 	O���l �%�&E�O��el E�O�a �a a a  O�j � �Z��Y�X���W�Z 0 
writestats 
writeStats�Y �V��V 
� 
 �U�T�S�R�Q�P�O�N�M�L�U 0 lfolderlist lFolderList�T 0 lprojectlist lProjectList�S (0 lactiveprojectlist lActiveProjectList�R 0 	ltasklist 	lTaskList�Q "0 lactivetasklist lActiveTaskList�P (0 lcompletedtasklist lCompletedTaskList�O *0 lincompletetasklist lIncompleteTaskList�N 40 ltodayscompletedtasklist lTodaysCompletedTaskList�M &0 lnonrepincomplete lNonRepIncomplete�L *0 laddedtodaytasklist lAddedTodayTaskList�X  � �K�J�I�H�G�F�E�D�C�B�A�@�?�K 0 lfolderlist lFolderList�J 0 lprojectlist lProjectList�I (0 lactiveprojectlist lActiveProjectList�H 0 	ltasklist 	lTaskList�G "0 lactivetasklist lActiveTaskList�F (0 lcompletedtasklist lCompletedTaskList�E *0 lincompletetasklist lIncompleteTaskList�D 40 ltodayscompletedtasklist lTodaysCompletedTaskList�C &0 lnonrepincomplete lNonRepIncomplete�B *0 laddedtodaytasklist lAddedTodayTaskList�A 0 thetext theText�@ 0 thefilepath theFilePath�? 0 thefile theFile� ����>����+�=�<�;�:�9B�8�7�6�5�4�3�2�1
�> 
leng
�= .ascrcmnt****      � ****
�< afdrdesk
�; 
rtyp
�: 
TEXT
�9 .earsffdralis        afdr
�8 
perm
�7 .rdwropenshor       file
�6 
refn
�5 
wrat
�4 rdwreof �3 
�2 .rdwrwritnull���     ****
�1 .rdwrclosnull���     ****�W ��Z�E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O��%��,%b   %E�O�j O���l a %�&E�O�a el E�O�a �a a a  O�j � �0Y�/�.���-�0 0 
writedebug 
writeDebug�/ �,��, �  �+�+ 0 ltask lTask�.  � �*�)�(�'�&�%�* 0 ltask lTask�) 0 thetext theText�( 0 thedate theDate�' 0 thedateonly theDateOnly�& 0 thefilepath theFilePath�% 0 thefile theFile� _i�$u�#��"�!�� ������������
�$ 
pnam
�# 
ID  
�" 
FCdc
�! 
dstr
�  afdrdesk
� 
rtyp
� 
TEXT
� .earsffdralis        afdr
� 
perm
� .rdwropenshor       file
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****�- �b   |�Z��,%b   %E�O��,%b   %E�O��%��,%b   %E�O��,E�O��,E�O��%�%b   %E�O���l �%�&E�O��el E�O�a �a a a  O�j Y h� �������
� .aevtoappnull  �   � ****� k    ���  ��  ��  �  �  � �� 0 
theproject 
theProject� -��D���
�	��� H�� Q����  x ��� ����� �������������������������#,����������� 0 getoflib getOFLib� 	0 oflib  
� 
FCDo� 0 thedocument theDocument�
 0 getprojects getProjects
�	 
rslt�  0 rawprojectlist rawProjectList� 20 filterforactiveprojects filterForActiveProjects� 0 projectlist projectList
� 
leng
� .ascrcmnt****      � ****
� .misccurdldt    ��� null� @0 filterprojectsforchangedondate filterProjectsForChangedOnDate� 40 projectschangedtodaylist projectsChangedTodayList�  @0 activeprojectschangedtodaylist activeProjectsChangedTodayList�� ,0 activeandrawmismatch activeAndRawMismatch�� d�� 60 percentagetouchedprojects percentageTouchedProjects�� 	0 cdate  �� 
�� 
days�� 	0 wdate  �� �� 	0 mdate  ��m�� 	0 ydate  �� Z0 +filterprojectsbyprojectsnotchangedafterdate +filterProjectsByProjectsNotChangedAfterDate�� <0 projectsnotchangedinlastweek projectsNotChangedInLastWeek�� >0 projectsnotchangedinlastmonth projectsNotChangedInLastMonth�� <0 projectsnotchangedinlastyear projectsNotChangedInLastYear
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 	0 pname  ��)j+  E�O��*�,E�O� *�k+ UO�E�O� *�k+ UO�E�O���,%j O���,%j O� *�*j l+ UO�E` O� *�*j l+ UO�E` Oa _ �,%j Oa _ �,%j O_ �,_ �,E` Oa _ %j O_ �,��,!a  E` Oa _ %j O*j E` O_ a _  E` O_ a _  E` O_ a _  E`  O� *�_ l+ !UO�E` "O� *�_ l+ !UO�E` #O� *�_  l+ !UO�E` $Oa %_ "�,%j Oa &��,%j Oa 'j O +_ "[a (a )l *kh  �a +,E` ,O_ ,j [OY��OPU ascr  ��ޭ