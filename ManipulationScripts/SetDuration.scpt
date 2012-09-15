FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Takes the currently selected OmniFocus items and sets a duration of N minutes, where N is either ARGV[0] or 15 (DEFAULT_DURATION)
	
	by Seth Landsman
	
	Copyright (C) 2012, Seth Landsman
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released SEPT2012
     � 	 	� 
 	 T a k e s   t h e   c u r r e n t l y   s e l e c t e d   O m n i F o c u s   i t e m s   a n d   s e t s   a   d u r a t i o n   o f   N   m i n u t e s ,   w h e r e   N   i s   e i t h e r   A R G V [ 0 ]   o r   1 5   ( D E F A U L T _ D U R A T I O N ) 
 	 
 	 b y   S e t h   L a n d s m a n 
 	 
 	 C o p y r i g h t   ( C )   2 0 1 2 ,   S e t h   L a n d s m a n 
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
 	 v e r s i o n   0 . 1 ,   r e l e a s e d   S E P T 2 0 1 2 
   
  
 l     ��������  ��  ��        j     �� �� $0 default_duration DEFAULT_DURATION  m     ����       l     ��������  ��  ��        i        I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     �       Z     ,  ��   l     ����  =        l     ����  I    ��  ��
�� .corecnte****       ****   o     ���� 0 argv  ��  ��  ��    m    ���� ��  ��    Q   
 " ! " # ! k     $ $  % & % r     ' ( ' c     ) * ) n     + , + 4    �� -
�� 
cobj - m    ����  , o    ���� 0 argv   * m    ��
�� 
long ( o      ���� 0 candidate_time   &  .�� . r     / 0 / o    ���� 0 candidate_time   0 o      ���� 0 target_time  ��   " R      ������
�� .ascrerr ****      � ****��  ��   # l  ! !��������  ��  ��  ��    r   % , 1 2 1 o   % *���� $0 default_duration DEFAULT_DURATION 2 o      ���� 0 target_time     3 4 3 l  - -��������  ��  ��   4  5�� 5 O   - � 6 7 6 O   1 � 8 9 8 O   8 � : ; : k   A � < <  = > = r   A H ? @ ? n   A F A B A 1   D F��
�� 
valL B 2   A D��
�� 
OTst @ o      ���� $0 theselecteditems theSelectedItems >  C�� C Z   I � D E�� F D l  I P G���� G A   I P H I H l  I N J���� J I  I N�� K��
�� .corecnte****       **** K o   I J���� $0 theselecteditems theSelectedItems��  ��  ��   I m   N O���� ��  ��   E k   S _ L L  M N M I  S \�� O P
�� .sysodisAaleR        TEXT O m   S T Q Q � R R * S e l e c t   a n   i t e m   t o   t a g P �� S��
�� 
as A S m   U X��
�� EAlTwarN��   N  T�� T L   ] _����  ��  ��   F X   b � U�� V U r   t { W X W o   t u���� 0 target_time   X n       Y Z Y 1   v z��
�� 
FCEM Z o   u v���� 0 anitem anItem�� 0 anitem anItem V o   e f���� $0 theselecteditems theSelectedItems��   ; n   8 > [ \ [ 1   < >��
�� 
FCcn \ 4   8 <�� ]
�� 
FCdw ] m   : ;����  9 4  1 5�� ^
�� 
docu ^ m   3 4����  7 m   - . _ _�                                                                                  OFOC  alis    X  Macintosh HD               �<8�H+   �QcOmniFocus.app                                                   �>��>2        ����  	                Applications    �<q      �>Lr     �Qc  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��     ` a ` l     ��������  ��  ��   a  b c b l     ��������  ��  ��   c  d�� d l     ��������  ��  ��  ��       �� e�� f��   e ������ $0 default_duration DEFAULT_DURATION
�� .aevtoappnull  �   � ****��  f �� ���� g h��
�� .aevtoappnull  �   � ****�� 0 argv  ��   g ������ 0 argv  �� 0 anitem anItem h �������������� _������������ Q����������
�� .corecnte****       ****
�� 
cobj
�� 
long�� 0 candidate_time  �� 0 target_time  ��  ��  
�� 
docu
�� 
FCdw
�� 
FCcn
�� 
OTst
�� 
valL�� $0 theselecteditems theSelectedItems
�� 
as A
�� EAlTwarN
�� .sysodisAaleR        TEXT
�� 
kocl
�� 
FCEM�� ��j  k   ��k/�&E�O�E�W X  hY 	b   E�O� S*�k/ K*�k/�, A*�-�,E�O�j  k ��a l OhY   �[a �l  kh ġa ,F[OY��UUU ascr  ��ޭ