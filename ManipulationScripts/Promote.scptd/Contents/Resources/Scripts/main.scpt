FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Takes the current selected OmniFocus item or items and promotes it based on the following scheme:
	
	empty -> @soon -> @nextweek -> flagged -> @today
	
	by Seth Landsman, Ph.D.
	
	Copyright (C) 2010, Seth Landsman, Ph.D.
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released JAN2010
     � 	 	� 
 	 T a k e s   t h e   c u r r e n t   s e l e c t e d   O m n i F o c u s   i t e m   o r   i t e m s   a n d   p r o m o t e s   i t   b a s e d   o n   t h e   f o l l o w i n g   s c h e m e : 
 	 
 	 e m p t y   - >   @ s o o n   - >   @ n e x t w e e k   - >   f l a g g e d   - >   @ t o d a y 
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
 l     ��������  ��  ��        j     �� �� 0 tag1    m        �      @ s o o n      j    �� �� 0 tag2    m       �      @ n e x t w e e k      j    �� �� 0 tag3    m       �      @ t o d a y      l     ��������  ��  ��        l     ����  r        !   n     " # " I    �������� 0 getoflib getOFLib��  ��   #  f      ! o      ���� 	0 oflib  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l  ! (���� ( O   ! ) * ) O     + , + O    - . - k    / /  0 1 0 r    # 2 3 2 n    ! 4 5 4 1    !��
�� 
valL 5 2    ��
�� 
OTst 3 o      ���� $0 theselecteditems theSelectedItems 1  6 7 6 Z   $ < 8 9���� 8 l  $ + :���� : A   $ + ; < ; l  $ ) =���� = I  $ )�� >��
�� .corecnte****       **** > o   $ %���� $0 theselecteditems theSelectedItems��  ��  ��   < m   ) *���� ��  ��   9 k   . 8 ? ?  @ A @ I  . 5�� B C
�� .sysodisAaleR        TEXT B m   . / D D � E E * S e l e c t   a n   i t e m   t o   t a g C �� F��
�� 
as A F m   0 1��
�� EAlTwarN��   A  G�� G L   6 8����  ��  ��  ��   7  H�� H X   = I�� J I k   M K K  L M L r   M V N O N n   M R P Q P 1   N R��
�� 
FCno Q o   M N���� 0 anitem anItem O o      ���� 0 itemnote itemNote M  R S R r   W ^ T U T m   W Z V V � W W   U o      ���� 0 tagtoremove tagToRemove S  X Y X r   _ f Z [ Z m   _ b \ \ � ] ]   [ o      ���� 0 tagtoadd tagToAdd Y  ^ _ ^ r   g l ` a ` m   g h��
�� boovfals a o      ���� 0 toflag toFlag _  b c b Z   m � d e f g d l  m v h���� h E   m v i j i o   m p���� 0 itemnote itemNote j o   p u���� 0 tag1  ��  ��   e l  y � k l m k k   y � n n  o p o r   y � q r q o   y ~���� 0 tag1   r o      ���� 0 tagtoremove tagToRemove p  s�� s r   � � t u t o   � ����� 0 tag2   u o      ���� 0 tagtoadd tagToAdd��   l   move to tag2     m � v v    m o v e   t o   t a g 2   f  w x w l  � � y���� y E   � � z { z o   � ����� 0 itemnote itemNote { o   � ����� 0 tag2  ��  ��   x  | } | l  � � ~  � ~ k   � � � �  � � � r   � � � � � o   � ����� 0 tag2   � o      ���� 0 tagtoremove tagToRemove �  ��� � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 toflag toFlag��      move to flagged     � � � � "   m o v e   t o   f l a g g e d   }  � � � l  � � ����� � =  � � � � � n  � � � � � 1   � ���
�� 
FCfl � o   � ����� 0 anitem anItem � m   � ���
�� boovtrue��  ��   �  ��� � l  � � � � � � k   � � � �  � � � r   � � � � � o   � ����� 0 tag3   � o      ���� 0 tagtoadd tagToAdd �  ��� � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 toflag toFlag��   � %  move to tag3 and keep the flag    � � � � >   m o v e   t o   t a g 3   a n d   k e e p   t h e   f l a g��   g l  � � � � � � r   � � � � � o   � ����� 0 tag1   � o      ���� 0 tagtoadd tagToAdd �   move to tag1     � � � �    m o v e   t o   t a g 1   c  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � l  � � ����� � E   � � � � � o   � ����� 0 itemnote itemNote � o   � ����� 0 tagtoremove tagToRemove��  ��   � l  � � � � � � O  � � � � � I   � ��� ����� 0 	untagtask 	untagTask �  � � � o   � ����� 0 anitem anItem �  ��� � o   � ����� 0 tagtoremove tagToRemove��  ��   � o   � ����� 	0 oflib   �   remove the tag     � � � �     r e m o v e   t h e   t a g  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � ����� � l  � � ����� � H   � � � � E   � � � � � o   � ����� 0 itemnote itemNote � o   � ����� 0 tagtoadd tagToAdd��  ��   � O  �	 � � � I   ��� ����� 0 tagtask tagTask �  � � � o   ���� 0 anitem anItem �  ��� � o  ���� 0 tagtoadd tagToAdd��  ��   � o   � ����� 	0 oflib  ��  ��   �  � � � l ��������  ��  ��   �  � � � r   � � � o  ���� 0 toflag toFlag � l      ����� � n       � � � 1  ��
�� 
FCfl � o  ���� 0 anitem anItem��  ��   �  ��� � l ��������  ��  ��  ��  �� 0 anitem anItem J o   @ A���� $0 theselecteditems theSelectedItems��   . n     � � � 1    ��
�� 
FCcn � 4    �� �
�� 
FCdw � m    ����  , 4   �� �
�� 
docu � m    ��  * m    	 � ��                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   '  � � � l     �~�}�|�~  �}  �|   �  � � � i   	  � � � I      �{�z�y�{ 0 	pathtolib 	pathToLib�z  �y   � k      � �  � � � r     	 � � � l     ��x�w � I    �v � �
�v .earsffdralis        afdr �  f      � �u ��t
�u 
from � m    �s
�s fldmfldu�t  �x  �w   � o      �r�r 0 apppath appPath �  � � � l   
 
�q � ��q   � y s	set myFolderPath to POSIX file (do shell script "dirname " & POSIX path of quoted form of appPath) & ":" as string    � � � � � 	 s e t   m y F o l d e r P a t h   t o   P O S I X   f i l e   ( d o   s h e l l   s c r i p t   " d i r n a m e   "   &   P O S I X   p a t h   o f   q u o t e d   f o r m   o f   a p p P a t h )   &   " : "   a s   s t r i n g �  � � � l  
 
�p�o�n�p  �o  �n   �  � � � L   
  � � c   
  � � � l  
  ��m�l � b   
  � � � o   
 �k�k 0 apppath appPath � m     � � � � � 6 C o n t e n t s : R e s o u r c e s : S c r i p t s :�m  �l   � m    �j
�j 
ctxt �  ��i � L     � � n     � � � 1    �h
�h 
strq � o    �g�g 0 myfolderpath myFolderPath�i   �  � � � l     �f�e�d�f  �e  �d   �  � � � i     � � � I      �c�b�a�c 0 getoflib getOFLib�b  �a   � k         r      I    �`�_
�` .sysoloadscpt        file 4     
�^
�^ 
file l   	�]�\ b    		 n   

 I    �[�Z�Y�[ 0 	pathtolib 	pathToLib�Z  �Y    f    	 m     �  O F L i b . s c p t�]  �\  �_   o      �X�X 0 thelib theLib �W L     o    �V�V 0 thelib theLib�W   � �U l     �T�S�R�T  �S  �R  �U       �Q   �Q   �P�O�N�M�L�K�P 0 tag1  �O 0 tag2  �N 0 tag3  �M 0 	pathtolib 	pathToLib�L 0 getoflib getOFLib
�K .aevtoappnull  �   � **** �J ��I�H�G�J 0 	pathtolib 	pathToLib�I  �H   �F�E�F 0 apppath appPath�E 0 myfolderpath myFolderPath �D�C�B ��A�@
�D 
from
�C fldmfldu
�B .earsffdralis        afdr
�A 
ctxt
�@ 
strq�G )��l E�O��%�&O��,E �? ��>�=�<�? 0 getoflib getOFLib�>  �=   �;�; 0 thelib theLib �:�9�8
�: 
file�9 0 	pathtolib 	pathToLib
�8 .sysoloadscpt        file�< *�)j+ �%/j E�O� �7�6�5�4
�7 .aevtoappnull  �   � **** k    !    &�3�3  �6  �5   �2�2 0 anitem anItem �1�0 ��/�.�-�,�+�*�) D�(�'�&�%�$�#�" V�! \� �����1 0 getoflib getOFLib�0 	0 oflib  
�/ 
docu
�. 
FCdw
�- 
FCcn
�, 
OTst
�+ 
valL�* $0 theselecteditems theSelectedItems
�) .corecnte****       ****
�( 
as A
�' EAlTwarN
�& .sysodisAaleR        TEXT
�% 
kocl
�$ 
cobj
�# 
FCno�" 0 itemnote itemNote�! 0 tagtoremove tagToRemove�  0 tagtoadd tagToAdd� 0 toflag toFlag
� 
FCfl� 0 	untagtask 	untagTask� 0 tagtask tagTask�4")j+  E�O�*�k/*�k/�,*�-�,E�O�j 	k ���l OhY hO ��[��l 	kh  �a ,E` Oa E` Oa E` OfE` O_ b    b   E` Ob  E` Y E_ b   b  E` OeE` Y '�a ,e  b  E` OeE` Y b   E` O_ _  � *�_ l+ UY hO_ _  � *�_ l+ UY hO_ �a ,FOP[OY�.UUU ascr  ��ޭ