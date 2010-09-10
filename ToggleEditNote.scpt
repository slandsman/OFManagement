FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Takes the current selected OmniFocus item or items and removes a specified "tag" to its comments section
	
	by Seth Landsman
	
	Copyright (C) 2009, Seth Landsman
	
		All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	version 0.1, released JUL2009
     � 	 	v 
 	 T a k e s   t h e   c u r r e n t   s e l e c t e d   O m n i F o c u s   i t e m   o r   i t e m s   a n d   r e m o v e s   a   s p e c i f i e d   " t a g "   t o   i t s   c o m m e n t s   s e c t i o n 
 	 
 	 b y   S e t h   L a n d s m a n 
 	 
 	 C o p y r i g h t   ( C )   2 0 0 9 ,   S e t h   L a n d s m a n 
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
 	 v e r s i o n   0 . 1 ,   r e l e a s e d   J U L 2 0 0 9 
   
  
 l     ��������  ��  ��        j     �� �� 0 tag    m        �   
 @ s o o n      l     ����  I    �� ��
�� .miscactvnull��� ��� null  m       �                                                                                  OFOC  alis    X  Macintosh HD               űhH+   ���OmniFocus.app                                                   ����]�        ����  	                Applications    űJ�      ��     ���  'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��  ��        l   $ ����  O    $    O   
 #    I   "�� ��
�� .prcsclicuiel    ��� uiel  n        4    ��  
�� 
menI   m     ! ! � " "  E d i t   N o t e  n     # $ # 4    �� %
�� 
menE % m    ����  $ n     & ' & 4    �� (
�� 
mbri ( m     ) ) � * *  E d i t ' 4    �� +
�� 
mbar + m    ���� ��    4   
 �� ,
�� 
prcs , m     - - � . .  O m n i F o c u s  m     / /�                                                                                  sevs  alis    �  Macintosh HD               űhH+   ���System Events.app                                               ����7��        ����  	                CoreServices    űJ�      �8'7     ��� ��R ��Q  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     0 1 0 l     ��������  ��  ��   1  2�� 2 l     ��������  ��  ��  ��       �� 3  4��   3 ������ 0 tag  
�� .aevtoappnull  �   � **** 4 �� 5���� 6 7��
�� .aevtoappnull  �   � **** 5 k     $ 8 8   9 9  ����  ��  ��   6   7  �� /�� -���� )���� !��
�� .miscactvnull��� ��� null
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel�� %�j O� *��/ *�k/��/�k/��/j UUascr  ��ޭ