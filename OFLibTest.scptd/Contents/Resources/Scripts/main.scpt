FasdUAS 1.101.10   ��   ��    k             l      ��  ��    %  test script to exercise OFLib      � 	 	 >   t e s t   s c r i p t   t o   e x e r c i s e   O F L i b     
  
 l     ��������  ��  ��        l     ����  r         n        I    �������� 0 getoflib getOFLib��  ��     f       o      ���� 	0 oflib  ��  ��        l     ��������  ��  ��        l   9 ����  O    9    k    8       l   ��������  ��  ��        r         1    ��
�� 
FCDo   o      ���� 0 thedocument theDocument   ! " ! l   ��������  ��  ��   "  # $ # l    �� % &��   % l f compare OFLib folder list to organic		tell oflib to getFolders(theDocument)	log length of result	    & � ' ' �   c o m p a r e   O F L i b   f o l d e r   l i s t   t o   o r g a n i c  	  	 t e l l   o f l i b   t o   g e t F o l d e r s ( t h e D o c u m e n t )  	 l o g   l e n g t h   o f   r e s u l t  	 $  ( ) ( O    * + * I    �� ,���� 0 getprojects getProjects ,  -�� - o    ���� 0 thedocument theDocument��  ��   + o    ���� 	0 oflib   )  . / . r    ! 0 1 0 1    ��
�� 
rslt 1 o      ���� 0 projectlist projectList /  2 3 2 l  " "��������  ��  ��   3  4 5 4 O  " . 6 7 6 I   & -�� 8���� 0 gettasks getTasks 8  9 : 9 o   ' (���� 0 thedocument theDocument :  ;�� ; o   ( )���� 0 projectlist projectList��  ��   7 o   " #���� 	0 oflib   5  < = < I  / 6�� >��
�� .ascrcmnt****      � **** > n   / 2 ? @ ? 1   0 2��
�� 
leng @ 1   / 0��
�� 
rslt��   =  A�� A l  7 7��������  ��  ��  ��    m    	 B B�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��     C D C l     ��������  ��  ��   D  E F E i      G H G I      �������� 0 	pathtolib 	pathToLib��  ��   H k      I I  J K J r      L M L c     	 N O N l     P���� P I    �� Q R
�� .earsffdralis        afdr Q  f      R �� S��
�� 
from S m    ��
�� fldmfldu��  ��  ��   O m    ��
�� 
ctxt M o      ���� 0 apppath appPath K  T�� T L     U U c     V W V l    X���� X b     Y Z Y o    ���� 0 apppath appPath Z m     [ [ � \ \ 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :��  ��   W m    ��
�� 
ctxt��   F  ] ^ ] l     ��������  ��  ��   ^  _ ` _ i     a b a I      �������� 0 getoflib getOFLib��  ��   b k      c c  d e d r      f g f I    �� h��
�� .sysoloadscpt        file h 4     
�� i
�� 
file i l   	 j���� j b    	 k l k n    m n m I    �������� 0 	pathtolib 	pathToLib��  ��   n  f     l m     o o � p p  O F L i b . s c p t��  ��  ��   g o      ���� 0 thelib theLib e  q�� q L     r r o    ���� 0 thelib theLib��   `  s t s l     ��������  ��  ��   t  u v u l      �� w x��   wWQon getOFLib()		get (path of script "OFLib.scpt") of main			tell application "Finder" to get folder of (path to me)	set pwd to result		log pwd		tell application "Finder" to get file "OFLib.scpt" in pwd	set lib to result		log lib		set fname to lib as text		set oflib to (load script file fname)	return oflibend getOFLib     x � y y� o n   g e t O F L i b ( )  	  	 g e t   ( p a t h   o f   s c r i p t   " O F L i b . s c p t " )   o f   m a i n  	  	  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   g e t   f o l d e r   o f   ( p a t h   t o   m e )  	 s e t   p w d   t o   r e s u l t  	  	 l o g   p w d  	  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   g e t   f i l e   " O F L i b . s c p t "   i n   p w d  	 s e t   l i b   t o   r e s u l t  	  	 l o g   l i b  	  	 s e t   f n a m e   t o   l i b   a s   t e x t  	  	 s e t   o f l i b   t o   ( l o a d   s c r i p t   f i l e   f n a m e )  	 r e t u r n   o f l i b  e n d   g e t O F L i b   v  z { z l     ��������  ��  ��   {  |�� | l     ��������  ��  ��  ��       �� } ~  ���   } �������� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib
�� .aevtoappnull  �   � **** ~ �� H���� � ����� 0 	pathtolib 	pathToLib��  ��   � ���� 0 apppath appPath � �������� [
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
ctxt�� )��l �&E�O��%�&  �� b���� � ����� 0 getoflib getOFLib��  ��   � ���� 0 thelib theLib � ���� o��
�� 
file�� 0 	pathtolib 	pathToLib
�� .sysoloadscpt        file�� *�)j+ �%/j E�O� � �� ����� � ���
�� .aevtoappnull  �   � **** � k     9 � �   � �  ����  ��  ��   �   � ���� B����������~�}�|�� 0 getoflib getOFLib�� 	0 oflib  
�� 
FCDo�� 0 thedocument theDocument�� 0 getprojects getProjects
�� 
rslt� 0 projectlist projectList�~ 0 gettasks getTasks
�} 
leng
�| .ascrcmnt****      � ****�� :)j+  E�O� .*�,E�O� *�k+ UO�E�O� 	*��l+ UO��,j 
OPU ascr  ��ޭ