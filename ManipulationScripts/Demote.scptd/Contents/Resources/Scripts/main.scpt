FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Takes the current selected OmniFocus item or items and demote it based on the following scheme:
	
	@today -> flagged -> @nextweek -> @soon -> empty
	
	by Seth Landsman, Ph.D.
	
	Copyright (C) 2010, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released JAN2010
     � 	 	� 
 	 T a k e s   t h e   c u r r e n t   s e l e c t e d   O m n i F o c u s   i t e m   o r   i t e m s   a n d   d e m o t e   i t   b a s e d   o n   t h e   f o l l o w i n g   s c h e m e : 
 	 
 	 @ t o d a y   - >   f l a g g e d   - >   @ n e x t w e e k   - >   @ s o o n   - >   e m p t y 
 	 
 	 b y   S e t h   L a n d s m a n ,   P h . D . 
 	 
 	 C o p y r i g h t   ( C )   2 0 1 0 ,   S e t h   L a n d s m a n ,   P h . D . 
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
 l     ��������  ��  ��        j     �� �� 0 tag1    m        �      @ s o o n      j    �� �� 0 tag2    m       �      @ n e x t w e e k      j    �� �� 0 tag3    m       �      @ t o d a y      l     ��������  ��  ��        l     ����  r        !   n     " # " I    �������� 0 getoflib getOFLib��  ��   #  f      ! o      ���� 	0 oflib  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  ( ) ( l  + *���� * O   + + , + O   * - . - O   ) / 0 / k   ( 1 1  2 3 2 r    # 4 5 4 n    ! 6 7 6 1    !��
�� 
valL 7 2    ��
�� 
OTst 5 o      ���� $0 theselecteditems theSelectedItems 3  8 9 8 Z   $ < : ;���� : l  $ + <���� < A   $ + = > = l  $ ) ?���� ? I  $ )�� @��
�� .corecnte****       **** @ o   $ %���� $0 theselecteditems theSelectedItems��  ��  ��   > m   ) *���� ��  ��   ; k   . 8 A A  B C B I  . 5�� D E
�� .sysodisAaleR        TEXT D m   . / F F � G G * S e l e c t   a n   i t e m   t o   t a g E �� H��
�� 
as A H m   0 1��
�� EAlTwarN��   C  I�� I L   6 8����  ��  ��  ��   9  J�� J X   =( K�� L K k   M# M M  N O N r   M V P Q P n   M R R S R 1   N R��
�� 
FCno S o   M N���� 0 anitem anItem Q o      ���� 0 itemnote itemNote O  T U T r   W ^ V W V m   W Z X X � Y Y   W o      ���� 0 tagtoremove tagToRemove U  Z [ Z r   _ f \ ] \ m   _ b ^ ^ � _ _   ] o      ���� 0 tagtoadd tagToAdd [  ` a ` r   g l b c b m   g h��
�� boovfals c o      ���� 0 toflag toFlag a  d e d Z   m � f g h�� f l  m v i���� i E   m v j k j o   m p���� 0 itemnote itemNote k o   p u���� 0 tag1  ��  ��   g l  y � l m n l r   y � o p o o   y ~���� 0 tag1   p o      ���� 0 tagtoremove tagToRemove m   move to empty     n � q q    m o v e   t o   e m p t y   h  r s r l  � � t���� t E   � � u v u o   � ����� 0 itemnote itemNote v o   � ����� 0 tag2  ��  ��   s  w x w l  � � y z { y k   � � | |  } ~ } r   � �  �  o   � ����� 0 tag2   � o      ���� 0 tagtoremove tagToRemove ~  ��� � r   � � � � � o   � ����� 0 tag1   � o      ���� 0 tagtoadd tagToAdd��   z   move to tag1     { � � �    m o v e   t o   t a g 1   x  � � � l  � � ����� � E   � � � � � o   � ����� 0 itemnote itemNote � o   � ����� 0 tag3  ��  ��   �  � � � l  � � � � � � k   � � � �  � � � r   � � � � � o   � ����� 0 tag3   � o      ���� 0 tagtoremove tagToRemove �  ��� � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 toflag toFlag��   �   move to just flagged     � � � � ,   m o v e   t o   j u s t   f l a g g e d   �  � � � l  � � ����� � =  � � � � � n  � � � � � 1   � ���
�� 
FCfl � o   � ����� 0 anitem anItem � m   � ���
�� boovtrue��  ��   �  ��� � l  � � � � � � r   � � � � � o   � ����� 0 tag2   � o      ���� 0 tagtoadd tagToAdd �   move to tag2     � � � �    m o v e   t o   t a g 2  ��  ��   e  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � l  � � ����� � E   � � � � � o   � ����� 0 itemnote itemNote � o   � ����� 0 tagtoremove tagToRemove��  ��   � l  � � � � � � O  � � � � � I   � ��� ����� 0 	untagtask 	untagTask �  � � � o   � ����� 0 anitem anItem �  ��� � o   � ����� 0 tagtoremove tagToRemove��  ��   � o   � ����� 	0 oflib   �   remove the tag     � � � �     r e m o v e   t h e   t a g  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � ����� � l  � ����� � H   � � � E   � � � � o   � ����� 0 itemnote itemNote � o   � ���� 0 tagtoadd tagToAdd��  ��   � O  � � � I  	�� ����� 0 tagtask tagTask �  � � � o  
���� 0 anitem anItem �  ��� � o  ���� 0 tagtoadd tagToAdd��  ��   � o  ���� 	0 oflib  ��  ��   �  � � � l ��������  ��  ��   �  � � � r  ! � � � o  ���� 0 toflag toFlag � l      ����� � n       � � � 1   ��
�� 
FCfl � o  ���� 0 anitem anItem��  ��   �  ��� � l ""��������  ��  ��  ��  �� 0 anitem anItem L o   @ A�� $0 theselecteditems theSelectedItems��   0 n     � � � 1    �~
�~ 
FCcn � 4    �} �
�} 
FCdw � m    �|�|  . 4   �{ �
�{ 
docu � m    �z�z  , m    	 � ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   )  � � � l     �y�x�w�y  �x  �w   �  � � � i   	  � � � I      �v�u�t�v 0 	pathtolib 	pathToLib�u  �t   � k      � �  � � � r     	 � � � l     ��s�r � I    �q � �
�q .earsffdralis        afdr �  f      � �p ��o
�p 
from � m    �n
�n fldmfldu�o  �s  �r   � o      �m�m 0 apppath appPath �  � � � l   
 
�l � ��l   � y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � � � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g �  � � � l  
 
�k�j�i�k  �j  �i   �  � � � L   
  � � c   
  � � � l  
  ��h�g � b   
  � � � o   
 �f�f 0 apppath appPath � m     � � � � � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�h  �g   � m    �e
�e 
ctxt �  ��d � L     � � n     � � � 1    �c
�c 
strq � o    �b�b 0 myfolderpath myFolderPath�d   �  � � � l     �a�`�_�a  �`  �_   �  � � � i       I      �^�]�\�^ 0 getoflib getOFLib�]  �\   k       r      I    �[�Z
�[ .sysoloadscpt        file 4     
�Y
�Y 
file l   		�X�W	 b    	

 n    I    �V�U�T�V 0 	pathtolib 	pathToLib�U  �T    f     m     �  O F L i b . s c p t�X  �W  �Z   o      �S�S 0 thelib theLib �R L     o    �Q�Q 0 thelib theLib�R   � �P l     �O�N�M�O  �N  �M  �P       �L   �L   �K�J�I�H�G�F�K 0 tag1  �J 0 tag2  �I 0 tag3  �H 0 	pathtolib 	pathToLib�G 0 getoflib getOFLib
�F .aevtoappnull  �   � **** �E ��D�C�B�E 0 	pathtolib 	pathToLib�D  �C   �A�@�A 0 apppath appPath�@ 0 myfolderpath myFolderPath �?�>�= ��<�;
�? 
from
�> fldmfldu
�= .earsffdralis        afdr
�< 
ctxt
�; 
strq�B )��l E�O��%�&O��,E �:�9�8�7�: 0 getoflib getOFLib�9  �8   �6�6 0 thelib theLib �5�4�3
�5 
file�4 0 	pathtolib 	pathToLib
�3 .sysoloadscpt        file�7 *�)j+ �%/j E�O� �2�1�0�/
�2 .aevtoappnull  �   � **** k    +    (�.�.  �1  �0   �-�- 0 anitem anItem �,�+ ��*�)�(�'�&�%�$ F�#�"�!� ��� X� ^������, 0 getoflib getOFLib�+ 	0 oflib  
�* 
docu
�) 
FCdw
�( 
FCcn
�' 
OTst
�& 
valL�% $0 theselecteditems theSelectedItems
�$ .corecnte****       ****
�# 
as A
�" EAlTwarN
�! .sysodisAaleR        TEXT
�  
kocl
� 
cobj
� 
FCno� 0 itemnote itemNote� 0 tagtoremove tagToRemove� 0 tagtoadd tagToAdd� 0 toflag toFlag
� 
FCfl� 0 	untagtask 	untagTask� 0 tagtask tagTask�/,)j+  E�O� *�k/*�k/�,*�-�,E�O�j 	k ���l OhY hO ��[��l 	kh  �a ,E` Oa E` Oa E` OfE` O_ b    b   E` Y Y_ b   b  E` Ob   E` Y 7_ b   b  E` OeE` Y �a ,e  b  E` Y hO_ _  � *�_ l+ UY hO_ _  � *�_ l+ UY hO_ �a ,FOP[OY�$UUUascr  ��ޭ