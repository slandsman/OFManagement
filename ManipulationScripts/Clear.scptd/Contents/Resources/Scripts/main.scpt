FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Clear any of my promote / demote flags
	
	by Seth Landsman, Ph.D.
	
	Copyright (C) 2009, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released DEC2009
     � 	 	 
 	 C l e a r   a n y   o f   m y   p r o m o t e   /   d e m o t e   f l a g s 
 	 
 	 b y   S e t h   L a n d s m a n ,   P h . D . 
 	 
 	 C o p y r i g h t   ( C )   2 0 0 9 ,   S e t h   L a n d s m a n ,   P h . D . 
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
 	 v e r s i o n   0 . 1 ,   r e l e a s e d   D E C 2 0 0 9 
   
  
 l     ��������  ��  ��        j     �� �� 0 tag1    m        �      @ s o o n      j    �� �� 0 tag2    m       �      @ n e x t w e e k      j    �� �� 0 tag3    m       �      @ t o d a y      l     ��������  ��  ��        l     ����  r        !   J      " "  # $ # o     ���� 0 tag1   $  % & % o    
���� 0 tag2   &  '�� ' o   
 ���� 0 tag3  ��   ! o      ���� 0 taglist  ��  ��     ( ) ( l    *���� * r     + , + n    - . - I    �������� 0 getoflib getOFLib��  ��   .  f     , o      ���� 	0 oflib  ��  ��   )  / 0 / l     ��������  ��  ��   0  1 2 1 l    3���� 3 O     4 5 4 O     ~ 6 7 6 O   ' } 8 9 8 k   0 | : :  ; < ; r   0 7 = > = n   0 5 ? @ ? 1   3 5��
�� 
valL @ 2   0 3��
�� 
OTst > o      ���� $0 theselecteditems theSelectedItems <  A B A Z   8 P C D���� C l  8 ? E���� E A   8 ? F G F l  8 = H���� H I  8 =�� I��
�� .corecnte****       **** I o   8 9���� $0 theselecteditems theSelectedItems��  ��  ��   G m   = >���� ��  ��   D k   B L J J  K L K I  B I�� M N
�� .sysodisAaleR        TEXT M m   B C O O � P P * S e l e c t   a n   i t e m   t o   t a g N �� Q��
�� 
as A Q m   D E��
�� EAlTwarN��   L  R�� R L   J L����  ��  ��  ��   B  S�� S X   Q | T�� U T k   c w V V  W X W O  c o Y Z Y I   g n�� [���� 0 	cleartask 	clearTask [  \ ] \ o   h i���� 0 anitem anItem ]  ^�� ^ o   i j���� 0 taglist  ��  ��   Z o   c d���� 	0 oflib   X  _�� _ r   p w ` a ` m   p q��
�� boovfals a l      b���� b n       c d c 1   r v��
�� 
FCfl d o   q r���� 0 anitem anItem��  ��  ��  �� 0 anitem anItem U o   T U���� $0 theselecteditems theSelectedItems��   9 n   ' - e f e 1   + -��
�� 
FCcn f 4   ' +�� g
�� 
FCdw g m   ) *����  7 4    $�� h
�� 
docu h m   " #����  5 m     i i�                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   2  j k j l     ��������  ��  ��   k  l m l i   	  n o n I      �������� 0 	pathtolib 	pathToLib��  ��   o k      p p  q r q r     	 s t s l     u���� u I    �� v w
�� .earsffdralis        afdr v  f      w �� x��
�� 
from x m    ��
�� fldmfldu��  ��  ��   t o      ���� 0 apppath appPath r  y z y l   
 
�� { |��   { y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    | � } } � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g z  ~  ~ l  
 
��������  ��  ��     � � � L   
  � � c   
  � � � l  
  ����� � b   
  � � � o   
 ���� 0 apppath appPath � m     � � � � � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :��  ��   � m    ��
�� 
ctxt �  ��� � L     � � n     � � � 1    ��
�� 
strq � o    ���� 0 myfolderpath myFolderPath��   m  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 getoflib getOFLib��  ��   � k      � �  � � � r      � � � I    �� ���
�� .sysoloadscpt        file � 4     
�� �
�� 
file � l   	 ����� � b    	 � � � n    � � � I    �������� 0 	pathtolib 	pathToLib��  ��   �  f     � m     � � � � �  O F L i b . s c p t��  ��  ��   � o      ���� 0 thelib theLib �  ��� � L     � � o    ���� 0 thelib theLib��   �  ��� � l     ��������  ��  ��  ��       �� �    � � ���   � �������������� 0 tag1  �� 0 tag2  �� 0 tag3  �� 0 	pathtolib 	pathToLib�� 0 getoflib getOFLib
�� .aevtoappnull  �   � **** � �� o���� � ����� 0 	pathtolib 	pathToLib��  ��   � ������ 0 apppath appPath�� 0 myfolderpath myFolderPath � ����� ��~�}
�� 
from
�� fldmfldu
� .earsffdralis        afdr
�~ 
ctxt
�} 
strq�� )��l E�O��%�&O��,E � �| ��{�z � ��y�| 0 getoflib getOFLib�{  �z   � �x�x 0 thelib theLib � �w�v ��u
�w 
file�v 0 	pathtolib 	pathToLib
�u .sysoloadscpt        file�y *�)j+ �%/j E�O� � �t ��s�r � ��q
�t .aevtoappnull  �   � **** � k      � �   � �  ( � �  1�p�p  �s  �r   � �o�o 0 anitem anItem � �n�m�l i�k�j�i�h�g�f�e O�d�c�b�a�`�_�^�n 0 taglist  �m 0 getoflib getOFLib�l 	0 oflib  
�k 
docu
�j 
FCdw
�i 
FCcn
�h 
OTst
�g 
valL�f $0 theselecteditems theSelectedItems
�e .corecnte****       ****
�d 
as A
�c EAlTwarN
�b .sysodisAaleR        TEXT
�a 
kocl
�` 
cobj�_ 0 	cleartask 	clearTask
�^ 
FCfl�q �b   b  b  mvE�O)j+ E�O� `*�k/ X*�k/�, N*�-�,E�O�j 
k ���l OhY hO *�[�a l 
kh  � 	*��l+ UOf�a ,F[OY��UUUascr  ��ޭ