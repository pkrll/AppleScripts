FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Not my code     � 	 	    N o t   m y   c o d e   
  
 l     ��  ��    6 0tile windows of frontmost applications in a grid     �   ` t i l e   w i n d o w s   o f   f r o n t m o s t   a p p l i c a t i o n s   i n   a   g r i d      l     ��  ��     this script is useful for     �   2 t h i s   s c r i p t   i s   u s e f u l   f o r      l     ��  ��     multiple window chatting     �   0 m u l t i p l e   w i n d o w   c h a t t i n g      l     ��  ��    = 7working side by side of several windows of the same app     �   n w o r k i n g   s i d e   b y   s i d e   o f   s e v e r a l   w i n d o w s   o f   t h e   s a m e   a p p      l     ��������  ��  ��       !   l     �� " #��   " ; 5make need to make it as a stay open application later    # � $ $ j m a k e   n e e d   t o   m a k e   i t   a s   a   s t a y   o p e n   a p p l i c a t i o n   l a t e r !  % & % l     �� ' (��   ' @ :for now assume that it is opened and closed per invokation    ( � ) ) t f o r   n o w   a s s u m e   t h a t   i t   i s   o p e n e d   a n d   c l o s e d   p e r   i n v o k a t i o n &  * + * l     ��������  ��  ��   +  , - , l      . / 0 . j     �� 1�� &0 horizontalspacing horizontalSpacing 1 m     ����  / 2 , sets the horizontal spacing between windows    0 � 2 2 X   s e t s   t h e   h o r i z o n t a l   s p a c i n g   b e t w e e n   w i n d o w s -  3 4 3 l      5 6 7 5 j    �� 8�� "0 verticalspacing verticalSpacing 8 m    ����  6 0 * sets the vertical spacing between windows    7 � 9 9 T   s e t s   t h e   v e r t i c a l   s p a c i n g   b e t w e e n   w i n d o w s 4  : ; : j    �� <�� 0 maxrows maxRows < m    ����  ;  = > = j   	 �� ?�� 0 maxcols maxCols ? m   	 
����  >  @ A @ l     ��������  ��  ��   A  B C B i     D E D I     �� F��
�� .aevtoappnull  �   � **** F J      ����  ��   E k     � G G  H I H q       J J ������ 0 a  ��   I  K L K r      M N M n     O P O I    �������� 0 getuserscreen getUserScreen��  ��   P  f      N o      ���� 0 
userscreen   L  Q R Q l   ��������  ��  ��   R  S T S l   �� U V��   U - 'display dialog (getFrntApp() as string)    V � W W N d i s p l a y   d i a l o g   ( g e t F r n t A p p ( )   a s   s t r i n g ) T  X Y X Q    E Z [ \ Z k    , ] ]  ^ _ ^ r     ` a ` I    �������� 0 
getfrntapp 
getFrntApp��  ��   a o      ���� 0 applist   _  b c b Z    ! d e���� d =     f g f n     h i h 1    ��
�� 
leng i o    ���� 0 applist   g m    ����   e L    ����  ��  ��   c  j�� j r   " , k l k n   " * m n m 4   ' *�� o
�� 
cobj o m   ( )����  n I   " '�������� 0 
getfrntapp 
getFrntApp��  ��   l o      ���� 0 a  ��   [ R      �� p q
�� .ascrerr ****      � **** p l      r���� r o      ���� 0 error_message  ��  ��   q �� s��
�� 
errn s l      t���� t o      ���� 0 error_number  ��  ��  ��   \ I  4 E�� u v
�� .sysodlogaskr        TEXT u b   4 ; w x w b   4 9 y z y b   4 7 { | { m   4 5 } } � ~ ~  E r r o r :   | l  5 6 ����  o   5 6���� 0 error_number  ��  ��   z m   7 8 � � � � �  .   x l  9 : ����� � o   9 :���� 0 error_message  ��  ��   v �� � �
�� 
btns � J   < ? � �  ��� � m   < = � � � � �  O K��   � �� ���
�� 
dflt � m   @ A���� ��   Y  � � � l  F F��������  ��  ��   �  � � � Q   F � � � � � I   I P�� �����  0 tilescriptable tileScriptable �  � � � o   J K���� 0 a   �  ��� � o   K L���� 0 
userscreen  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � l      ����� � o      ���� 0 error_message  ��  ��   � �� ���
�� 
errn � l      ����� � o      ���� 0 error_number  ��  ��  ��   � k   X � � �  � � � l  X X�� � ���   � l fdisplay dialog "Error: " & the error_number & ". " & the error_message buttons {"OK"} default button 1    � � � � � d i s p l a y   d i a l o g   " E r r o r :   "   &   t h e   e r r o r _ n u m b e r   &   " .   "   &   t h e   e r r o r _ m e s s a g e   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 �  ��� � Q   X � � � � � I   [ b�� ����� $0 tileunscriptable tileUnscriptable �  � � � o   \ ]���� 0 a   �  ��� � o   ] ^���� 0 
userscreen  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � l      ����� � o      ���� 0 error_message  ��  ��   � �� ���
�� 
errn � l      ����� � o      ���� 0 error_number  ��  ��  ��   � I  j ��� � �
�� .sysodlogaskr        TEXT � b   j u � � � b   j s � � � b   j o � � � m   j m � � � � �  E r r o r :   � l  m n ����� � o   m n���� 0 error_number  ��  ��   � m   o r � � � � �  .   � l  s t ����� � o   s t���� 0 error_message  ��  ��   � �� � �
�� 
btns � J   v { � �  ��� � m   v y � � � � �  O K��   � �� ���
�� 
dflt � m   | }���� ��  ��   �  ��� � l  � ���������  ��  ��  ��   C  � � � l     ��������  ��  ��   �  � � � i     � � � I      � ��~�  0 tilescriptable tileScriptable �  � � � o      �}�} 0 a   �  ��| � o      �{�{ 
0 screen  �|  �~   � k     y � �  � � � q       � � �z ��z 0 i   � �y�x�y 0 c  �x   �  � � � r      � � � m     �w�w  � o      �v�v 0 i   �  ��u � O    y � � � k    x � �  � � � l   1 � � � � r    1 � � � 6   / � � � n     � � � 2    �t
�t 
cwin � 4    �s �
�s 
capp � o    �r�r 0 a   � F    . � � � F    % � � � =    � � � 1    �q
�q 
pvis � m    �p
�p boovtrue � =   $ � � � 1     �o
�o 
isfl � m   ! #�n
�n boovfals � =  & - � � � l 	 ' ) ��m�l � 1   ' )�k
�k 
pmod�m  �l   � m   * ,�j
�j boovfals � o      �i�i 0 
thewindows 
theWindows �    and miniaturized is false    � � � � 4   a n d   m i n i a t u r i z e d   i s   f a l s e �  � � � r   2 9 � � � I  2 7�h ��g
�h .corecnte****       **** � o   2 3�f�f 0 
thewindows 
theWindows�g   � o      �e�e 0 c   �  � � � Z   : F � ��d�c � =   : = � � � o   : ;�b�b 0 c   � m   ; <�a�a   � L   @ B�`�`  �d  �c   �  � � � r   G Q �  � I   G O�_�^�_ 0 caltilebounds calTileBounds  o   H I�]�] 0 c    o   I J�\�\ 
0 screen   �[ m   J K�Z�Z �[  �^    o      �Y�Y 	0 tiles   � �X X   R x�W	 k   b s

  n  b m I   c m�V�U�V ,0 tilescriptablewindow tileScriptableWindow  o   c d�T�T 0 a    o   d e�S�S 0 	thewindow 	theWindow �R n   e i 4   f i�Q
�Q 
cobj o   g h�P�P 0 i   o   e f�O�O 	0 tiles  �R  �U    f   b c �N r   n s [   n q o   n o�M�M 0 i   m   o p�L�L  o      �K�K 0 i  �N  �W 0 	thewindow 	theWindow	 o   U V�J�J 0 
thewindows 
theWindows�X   � 5    	�I�H
�I 
capp o    �G�G 0 a  
�H kfrmname�u   �  l     �F�E�D�F  �E  �D    !  i    "#" I      �C$�B�C $0 tileunscriptable tileUnscriptable$ %&% o      �A�A 0 a  & '�@' o      �?�? 0 
screeninfo  �@  �B  # k     Z(( )*) l     �>+,�>  +   unscriptable app   , �-- "   u n s c r i p t a b l e   a p p* ./. q      00 �=1�= 0 i  1 �<�;�< 0 c  �;  / 232 r     454 m     �:�: 5 o      �9�9 0 i  3 6�86 O    Z787 k    Y99 :;: r    <=< l   >�7�6> n    ?@? 2    �5
�5 
cwin@ 4    �4A
�4 
pcapA o   
 �3�3 0 a  �7  �6  = o      �2�2 0 
thewindows 
theWindows; BCB l   �1DE�1  D B <set theWindows to my filterUnscriptableInvisible(theWindows)   E �FF x s e t   t h e W i n d o w s   t o   m y   f i l t e r U n s c r i p t a b l e I n v i s i b l e ( t h e W i n d o w s )C GHG l   �0�/�.�0  �/  �.  H IJI r    KLK I   �-M�,
�- .corecnte****       ****M o    �+�+ 0 
thewindows 
theWindows�,  L o      �*�* 0 c  J NON l   �)�(�'�)  �(  �'  O PQP Z    %RS�&�%R =    TUT o    �$�$ 0 c  U m    �#�#  S L    !�"�"  �&  �%  Q VWV l  & &�!� ��!  �   �  W XYX l  & &�Z[�  Z ; 5display dialog screeninfo as string giving up after 5   [ �\\ j d i s p l a y   d i a l o g   s c r e e n i n f o   a s   s t r i n g   g i v i n g   u p   a f t e r   5Y ]^] r   & 0_`_ n  & .aba I   ' .�c�� 0 caltilebounds calTileBoundsc ded o   ' (�� 0 c  e fgf o   ( )�� 0 
screeninfo  g h�h m   ) *�� �  �  b  f   & '` o      �� 	0 tiles  ^ iji X   1 Wk�lk k   A Rmm non l  A A�pq�  p 4 .display dialog (class of visible of theWindow)   q �rr \ d i s p l a y   d i a l o g   ( c l a s s   o f   v i s i b l e   o f   t h e W i n d o w )o sts n  A Luvu I   B L�w�� 00 tileunscriptablewindow tileUnScriptableWindoww xyx o   B C�� 0 a  y z{z o   C D�� 0 	thewindow 	theWindow{ |�| n   D H}~} 4   E H�
� 
cobj o   F G�� 0 i  ~ o   D E�� 	0 tiles  �  �  v  f   A Bt ��� r   M R��� [   M P��� o   M N�� 0 i  � m   N O�
�
 � o      �	�	 0 i  �  � 0 	thewindow 	theWindowl o   4 5�� 0 
thewindows 
theWindowsj ��� l  X X����  �  �  �  8 m    ���                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �8  ! ��� l     ����  �  �  � ��� i    ��� I      � ����  :0 filterunscriptableinvisible filterUnscriptableInvisible� ���� o      ���� 0 ws  ��  ��  � k     6�� ��� l     ������  � 2 , filter out from ws windows that are docked    � ��� X   f i l t e r   o u t   f r o m   w s   w i n d o w s   t h a t   a r e   d o c k e d  � ��� r     ��� J     ����  � o      ���� 	0 newws  � ��� r    ��� I    
��������  0 getnamesdocked getNamesDocked��  ��  � o      ���� 0 docklist  � ��� l   ������  � ) #display dialog (docklist as string)   � ��� F d i s p l a y   d i a l o g   ( d o c k l i s t   a s   s t r i n g )� ��� X    3����� Z    .������� H    #�� E   "��� o    ���� 0 docklist  � n    !��� 1    !��
�� 
pnam� o    ���� 0 	thewindow 	theWindow� r   & *��� o   & '���� 0 	thewindow 	theWindow� n      ���  ;   ( )� o   ' (���� 	0 newws  ��  ��  �� 0 	thewindow 	theWindow� o    ���� 0 ws  � ��� l  4 4��������  ��  ��  � ��� l  4 4������  � " display dialog (count newws)   � ��� 8 d i s p l a y   d i a l o g   ( c o u n t   n e w w s )� ���� L   4 6�� o   4 5���� 	0 newws  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ��������  0 getnamesdocked getNamesDocked��  ��  � k     #�� ��� O     ��� O    ��� r    ��� 6   ��� n    ��� 1    ��
�� 
pnam� 2   ��
�� 
uiel� =   ��� 1    ��
�� 
sbrl� m    �� ��� 2 A X M i n i m i z e d W i n d o w D o c k I t e m� o      ���� 0 l  � n   ��� 4    ���
�� 
list� m   	 
���� � 4    ���
�� 
prcs� m    �� ���  D o c k� m     ���                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  ! !��������  ��  ��  � ���� L   ! #�� o   ! "���� 0 l  ��  � ��� l     ��������  ��  ��  � ��� i     #��� I      ������� ,0 tilescriptablewindow tileScriptableWindow� ��� o      ���� 0 a  � ��� o      ���� 0 w  � ���� o      ���� 	0 bound  ��  ��  � O     ��� r    ��� o    ���� 	0 bound  � n      ��� 1   	 ��
�� 
pbnd� o    	���� 0 w  � 4     ���
�� 
capp� o    ���� 0 a  � ��� l     ��������  ��  ��  � ��� i   $ '��� I      ������� 00 tileunscriptablewindow tileUnScriptableWindow� ��� o      ���� 0 a  � ��� o      ���� 0 w  � ���� o      ���� 	0 bound  ��  ��  � O     8��� k    7�� ��� l   �� ��    * $display dialog (count position of w)    � H d i s p l a y   d i a l o g   ( c o u n t   p o s i t i o n   o f   w )�  r    	 m     �    n     	
	 1    ��
�� 
txdl
 1    ��
�� 
ascr  l  
 
��������  ��  ��    r   
  J   
   l  
 ���� n   
  4    ��
�� 
cobj m    ����  o   
 ���� 	0 bound  ��  ��   �� l   ���� n     4    ��
�� 
cobj m    ����  o    ���� 	0 bound  ��  ��  ��   n       1    ��
�� 
posn o    ���� 0 w     l   ��������  ��  ��    !"! l   ��#$��  #   why the -5?   $ �%%    w h y   t h e   - 5 ?" &'& r    5()( J    1** +,+ \    $-.- \    "/0/ l   1����1 n    232 4    ��4
�� 
cobj4 m    ���� 3 o    ���� 	0 bound  ��  ��  0 l   !5����5 n    !676 4    !��8
�� 
cobj8 m     ���� 7 o    ���� 	0 bound  ��  ��  . m   " #���� , 9��9 \   $ /:;: \   $ -<=< l 	 $ (>����> l  $ (?����? n   $ (@A@ 4   % (��B
�� 
cobjB m   & '���� A o   $ %���� 	0 bound  ��  ��  ��  ��  = l  ( ,C����C n   ( ,DED 4   ) ,��F
�� 
cobjF m   * +���� E o   ( )���� 	0 bound  ��  ��  ; m   - .���� ��  ) n      GHG 1   2 4��
�� 
ptszH o   1 2���� 0 w  ' I��I l  6 6��JK��  J , &display dialog (count properties of w)   K �LL L d i s p l a y   d i a l o g   ( c o u n t   p r o p e r t i e s   o f   w )��  � m     MM�                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � NON l     ��������  ��  ��  O PQP i   ( +RSR I      ��T���� 0 caltilebounds calTileBoundsT UVU o      ���� 0 nwindows nWindowsV WXW o      ���� 
0 screen  X Y��Y o      ���� 0 	direction  ��  ��  S k    (ZZ [\[ l     �]^�  ] . ( return a list of lists of window bounds   ^ �__ P   r e t u r n   a   l i s t   o f   l i s t s   o f   w i n d o w   b o u n d s\ `a` l     �~bc�~  b P J a simple tile algo that tiles along direction (current only 1=horizontal)   c �dd �   a   s i m p l e   t i l e   a l g o   t h a t   t i l e s   a l o n g   d i r e c t i o n   ( c u r r e n t   o n l y   1 = h o r i z o n t a l )a efe l     �}�|�{�}  �|  �{  f ghg q      ii �zj�z 0 nrows nRowsj �yk�y 0 ncolumns nColumnsk �xl�x 0 irow  l �wm�w 0 icolumn  m �vn�v 0 nspacingwidth nSpacingWidthn �uo�u  0 nspacingheight nSpacingHeighto �tp�t 0 nwindowwidth nWindowWidthp �s�r�s 0 nwindowheight nWindowHeight�r  h qrq r     sts o     �q�q 
0 screen  t J      uu vwv o      �p�p 0 x0  w xyx o      �o�o 0 y0  y z{z o      �n�n $0 availscreenwidth availScreenWidth{ |�m| o      �l�l &0 availscreenheight availScreenHeight�m  r }~} r    #� J    !�k�k  � o      �j�j 0 ret  ~ ��� l  $ $�i�h�g�i  �h  �g  � ��� r   $ -��� l  $ +��f�e� _   $ +��� o   $ %�d�d 0 nwindows nWindows� o   % *�c�c 0 maxcols maxCols�f  �e  � o      �b�b 0 nrows nRows� ��� Z   . C���a�`� >   . 7��� l  . 5��_�^� `   . 5��� o   . /�]�] 0 nwindows nWindows� o   / 4�\�\ 0 maxcols maxCols�_  �^  � m   5 6�[�[  � r   : ?��� [   : =��� o   : ;�Z�Z 0 nrows nRows� m   ; <�Y�Y � o      �X�X 0 nrows nRows�a  �`  � ��� l  D D�W�V�U�W  �V  �U  � ��� Z   D ���T�� A   D K��� o   D E�S�S 0 nrows nRows� o   E J�R�R 0 maxrows maxRows� k   N a�� ��� r   N Y��� ]   N W��� l  N Q��Q�P� \   N Q��� o   N O�O�O 0 nrows nRows� m   O P�N�N �Q  �P  � o   Q V�M�M "0 verticalspacing verticalSpacing� o      �L�L  0 nspacingheight nSpacingHeight� ��K� r   Z a��� ^   Z _��� l  Z ]��J�I� \   Z ]��� o   Z [�H�H &0 availscreenheight availScreenHeight� o   [ \�G�G  0 nspacingheight nSpacingHeight�J  �I  � o   ] ^�F�F 0 nrows nRows� o      �E�E 0 nwindowheight nWindowHeight�K  �T  � k   d �� ��� r   d s��� ]   d q��� l  d k��D�C� \   d k��� o   d i�B�B 0 maxrows maxRows� m   i j�A�A �D  �C  � o   k p�@�@ "0 verticalspacing verticalSpacing� o      �?�?  0 nspacingheight nSpacingHeight� ��>� r   t ��� ^   t }��� l  t w��=�<� \   t w��� o   t u�;�; &0 availscreenheight availScreenHeight� o   u v�:�:  0 nspacingheight nSpacingHeight�=  �<  � o   w |�9�9 0 maxrows maxRows� o      �8�8 0 nwindowheight nWindowHeight�>  � ��� l  � ��7�6�5�7  �6  �5  � ��� Y   �%��4���3� k   � �� ��� Z   � ����2�� F   � ���� B   � ���� o   � ��1�1 0 nrows nRows� o   � ��0�0 0 maxrows maxRows� =   � ���� o   � ��/�/ 0 irow  � \   � ���� o   � ��.�. 0 nrows nRows� m   � ��-�- � r   � ���� \   � ���� o   � ��,�, 0 nwindows nWindows� ]   � ���� o   � ��+�+ 0 irow  � o   � ��*�* 0 maxcols maxCols� o      �)�) 0 ncolumns nColumns�2  � r   � ���� o   � ��(�( 0 maxcols maxCols� o      �'�' 0 ncolumns nColumns� ��� r   � ���� ]   � ���� l  � ���&�%� \   � ���� o   � ��$�$ 0 ncolumns nColumns� m   � ��#�# �&  �%  � o   � ��"�" &0 horizontalspacing horizontalSpacing� o      �!�! 0 nspacingwidth nSpacingWidth� ��� r   � ���� ^   � ���� l  � ��� �� \   � ���� o   � ��� $0 availscreenwidth availScreenWidth� o   � ��� 0 nspacingwidth nSpacingWidth�   �  � o   � ��� 0 ncolumns nColumns� o      �� 0 nwindowwidth nWindowWidth� ��� r   � ���� [   � ���� o   � ��� 0 y0  � ]   � ���� l  � ����� `   � ���� o   � ��� 0 irow  � o   � ��� 0 maxrows maxRows�  �  � l  � ����� [   � �� � o   � ��� "0 verticalspacing verticalSpacing  o   � ��� 0 nwindowheight nWindowHeight�  �  � o      �� 0 ntop nTop�  l  � ���   C =display dialog "Top: " & nTop buttons {"OK"} default button 1    � z d i s p l a y   d i a l o g   " T o p :   "   &   n T o p   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 � Y   � �	� k   �

  r   � � [   � � o   � ��� 0 x0   ]   � � l  � ���
 o   � ��	�	 0 icolumn  �  �
   l  � ��� [   � � o   � ��� &0 horizontalspacing horizontalSpacing o   � ��� 0 nwindowwidth nWindowWidth�  �   o      �� 0 nleft nLeft  r   � J   �  l 	 � ��� o   � ��� 0 nleft nLeft�  �     l 	 �!� ��! o   ����� 0 ntop nTop�   ��    "#" [  $%$ l 	&����& o  ���� 0 nleft nLeft��  ��  % o  ���� 0 nwindowwidth nWindowWidth# '��' [  ()( l 	
*����* o  
���� 0 ntop nTop��  ��  ) o  
���� 0 nwindowheight nWindowHeight��   o      ���� 	0 itile   +,+ r  -.- o  ���� 	0 itile  . n      /0/  ;  0 o  ���� 0 ret  , 121 l ��34��  3 . (display dialog item 3 of itile as string   4 �55 P d i s p l a y   d i a l o g   i t e m   3   o f   i t i l e   a s   s t r i n g2 676 l ��89��  8 A ;set itile to {x0 + (icolumn - 1) * wgrid, y0, wgrid, hgrid}   9 �:: v s e t   i t i l e   t o   { x 0   +   ( i c o l u m n   -   1 )   *   w g r i d ,   y 0 ,   w g r i d ,   h g r i d }7 ;<; l ��=>��  = D >set item 3 of itile to ((item 1 of itile) + (item 3 of itile))   > �?? | s e t   i t e m   3   o f   i t i l e   t o   ( ( i t e m   1   o f   i t i l e )   +   ( i t e m   3   o f   i t i l e ) )< @��@ l ��AB��  A D >set item 4 of itile to ((item 2 of itile) + (item 4 of itile))   B �CC | s e t   i t e m   4   o f   i t i l e   t o   ( ( i t e m   2   o f   i t i l e )   +   ( i t e m   4   o f   i t i l e ) )��  � 0 icolumn   m   � �����  	 \   � �DED o   � ����� 0 ncolumns nColumnsE m   � ����� �  �  �4 0 irow  � m   � �����  � \   � �FGF o   � ����� 0 nrows nRowsG m   � ����� �3  � HIH l &&��������  ��  ��  I J��J L  &(KK o  &'���� 0 ret  ��  Q LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��������  ��  ��  Q RSR i   , /TUT I      �������� 0 
getfrntapp 
getFrntApp��  ��  U k     "VV WXW O    YZY r    [\[ 6   ]^] n    	_`_ l 	  	a����a 1    	��
�� 
pnam��  ��  ` 2    ��
�� 
prcs^ F   
 bcb =   ded 1    ��
�� 
pisfe m    ��
�� boovtruec >    fgf 1    ��
�� 
pvisg m    ��
�� boovfals\ o      ���� 0 frntproc frntProcZ m     hh�                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  X i��i L     "jj o     !���� 0 frntproc frntProc��  S klk l     ��������  ��  ��  l m��m i   0 3non I      �������� 0 getuserscreen getUserScreen��  ��  o k     �pp qrq l     ��st��  s   size of the menubar   t �uu (   s i z e   o f   t h e   m e n u b a rr vwv O     Exyx k    Dzz {|{ r    }~} n    � 1    ��
�� 
ptsz� n    ��� 4    ���
�� 
uiel� m   	 
���� � 4    ���
�� 
pcap� m    �� ���  S y s t e m U I S e r v e r~ J      �� ��� o      ���� 0 menubarwidth menuBarWidth� ���� o      ���� 0 menubarheight menuBarHeight��  | ��� l   ������  � T Ndisplay dialog "Menubar width: " & menubarWidth & ", height: " & menubarHeight   � ��� � d i s p l a y   d i a l o g   " M e n u b a r   w i d t h :   "   &   m e n u b a r W i d t h   &   " ,   h e i g h t :   "   &   m e n u b a r H e i g h t� ��� r    #��� l   !������ 4    !���
�� 
pcap� m     �� ���  D o c k��  ��  � o      ���� 0 dockapp dockApp� ��� r   $ 9��� n   $ *��� 1   ( *��
�� 
ptsz� n   $ (��� 4   % (���
�� 
uiel� m   & '���� � o   $ %���� 0 dockapp dockApp� J      �� ��� o      ���� 0 	dockwidth 	dockWidth� ���� o      ���� 0 
dockheight  ��  � ��� l  : :������  � K Edisplay dialog "Dock width: " & dockWidth & ", height: " & dockHeight   � ��� � d i s p l a y   d i a l o g   " D o c k   w i d t h :   "   &   d o c k W i d t h   &   " ,   h e i g h t :   "   &   d o c k H e i g h t� ��� r   : B��� n   : @��� 1   > @��
�� 
posn� n   : >��� 4   ; >���
�� 
uiel� m   < =���� � o   : ;���� 0 dockapp dockApp� o      ���� 0 dockpos dockPos� ���� l  C C������  � U Odisplay dialog "Dock x: " & (item 1 of dockPos) & ", y: " & (item 2 of dockPos)   � ��� � d i s p l a y   d i a l o g   " D o c k   x :   "   &   ( i t e m   1   o f   d o c k P o s )   &   " ,   y :   "   &   ( i t e m   2   o f   d o c k P o s )��  y m     ���                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  w ��� l  F F��������  ��  ��  � ��� l  F F������  �   size of the full screen   � ��� 0   s i z e   o f   t h e   f u l l   s c r e e n� ��� l   F F������  � � �
{word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Width") as number, �
word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Height") as number}
   � ���� 
 { w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   W i d t h " )   a s   n u m b e r ,   � 
 w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   H e i g h t " )   a s   n u m b e r } 
� ��� O   F b��� k   J a�� ��� r   J S��� n   J Q��� 1   O Q��
�� 
pbnd� n   J O��� m   M O��
�� 
cwin� 1   J M��
�� 
desk� o      ���� 0 
screensize 
screenSize� ��� r   T Z��� n   T X��� 4   U X���
�� 
cobj� m   V W���� � o   T U���� 0 
screensize 
screenSize� o      ���� 0 screenwidth screenWidth� ���� r   [ a��� n   [ _��� 4   \ _���
�� 
cobj� m   ] ^���� � o   [ \���� 0 
screensize 
screenSize� o      ���� 0 screenheight screenHeight��  � m   F G���                                                                                  MACS  alis    r  Macintosh HD               ���H+    
Finder.app                                                       �:ƽZ
        ����  	                CoreServices    ���      ƽ=�         �   �  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  c c������  � Q Kdisplay dialog "Screen width: " & screenWidth & ", height: " & screenHeight   � ��� � d i s p l a y   d i a l o g   " S c r e e n   w i d t h :   "   &   s c r e e n W i d t h   &   " ,   h e i g h t :   "   &   s c r e e n H e i g h t� ��� l  c c��������  ��  ��  � ��� l  c c������  � H B by default, set the available screen size to the full screen size   � ��� �   b y   d e f a u l t ,   s e t   t h e   a v a i l a b l e   s c r e e n   s i z e   t o   t h e   f u l l   s c r e e n   s i z e� ��� r   c f��� o   c d���� 0 screenwidth screenWidth� o      ����  0 availablewidth availableWidth� ��� r   g l��� \   g j��� o   g h���� 0 screenheight screenHeight� o   h i���� 0 menubarheight menuBarHeight� o      ���� "0 availableheight availableHeight� ��� r   m p��� m   m n����  � o      ���� 0 
availablex 
availableX� ��� r   q t��� o   q r���� 0 menubarheight menuBarHeight� o      ���� 0 
availabley 
availableY� ��� l  u u��������  ��  ��  � � � l  u u����   . (determine the userscreen origin and size    � P d e t e r m i n e   t h e   u s e r s c r e e n   o r i g i n   a n d   s i z e   l  u u��������  ��  ��    l  u u��	��     case 0: hidden dock   	 �

 (   c a s e   0 :   h i d d e n   d o c k  l  u u��   J D if (item 1 of dockPos < 0 or item 1 of dockPos � screenHeight) then    � �   i f   ( i t e m   1   o f   d o c k P o s   <   0   o r   i t e m   1   o f   d o c k P o s  "e   s c r e e n H e i g h t )   t h e n  l  u u�~�~   !  no need to change anything    � 6   n o   n e e d   t o   c h a n g e   a n y t h i n g  l  u u�}�}     end if    �    e n d   i f  l  u u�|�{�z�|  �{  �z    l  u u�y�y     case 1: bottom dock    �   (   c a s e   1 :   b o t t o m   d o c k !"! Z   u �#$�x�w# l  u }%�v�u% =   u }&'& [   u {()( l  u y*�t�s* n   u y+,+ 4   v y�r-
�r 
cobj- m   w x�q�q , o   u v�p�p 0 dockpos dockPos�t  �s  ) o   y z�o�o 0 
dockheight  ' o   { |�n�n 0 screenheight screenHeight�v  �u  $ r   � �./. \   � �010 o   � ��m�m "0 availableheight availableHeight1 o   � ��l�l 0 
dockheight  / o      �k�k "0 availableheight availableHeight�x  �w  " 232 l  � ��j�i�h�j  �i  �h  3 454 l  � ��g67�g  6   case 2: left dock   7 �88 $   c a s e   2 :   l e f t   d o c k5 9:9 Z   � �;<�f�e; l  � �=�d�c= =   � �>?> n   � �@A@ 4   � ��bB
�b 
cobjB m   � ��a�a A o   � ��`�` 0 dockpos dockPos? m   � ��_�_  �d  �c  < k   � �CC DED r   � �FGF \   � �HIH o   � ��^�^  0 availablewidth availableWidthI o   � ��]�] 0 	dockwidth 	dockWidthG o      �\�\  0 availablewidth availableWidthE J�[J r   � �KLK o   � ��Z�Z 0 	dockwidth 	dockWidthL o      �Y�Y 0 
availablex 
availableX�[  �f  �e  : MNM l  � ��X�W�V�X  �W  �V  N OPO l  � ��UQR�U  Q   case 3: right dock   R �SS &   c a s e   3 :   r i g h t   d o c kP TUT Z   � �VW�T�SV l  � �X�R�QX =   � �YZY [   � �[\[ l  � �]�P�O] n   � �^_^ 4   � ��N`
�N 
cobj` m   � ��M�M _ o   � ��L�L 0 dockpos dockPos�P  �O  \ o   � ��K�K 0 	dockwidth 	dockWidthZ o   � ��J�J 0 screenwidth screenWidth�R  �Q  W r   � �aba \   � �cdc o   � ��I�I  0 availablewidth availableWidthd o   � ��H�H 0 	dockwidth 	dockWidthb o      �G�G  0 availablewidth availableWidth�T  �S  U efe l  � ��F�E�D�F  �E  �D  f g�Cg L   � �hh J   � �ii jkj o   � ��B�B 0 
availablex 
availableXk lml o   � ��A�A 0 
availabley 
availableYm non o   � ��@�@  0 availablewidth availableWidtho p�?p o   � ��>�> "0 availableheight availableHeight�?  �C  ��       �=q�<�;�:�9rstuvwxyz{�=  q �8�7�6�5�4�3�2�1�0�/�.�-�,�+�8 &0 horizontalspacing horizontalSpacing�7 "0 verticalspacing verticalSpacing�6 0 maxrows maxRows�5 0 maxcols maxCols
�4 .aevtoappnull  �   � ****�3  0 tilescriptable tileScriptable�2 $0 tileunscriptable tileUnscriptable�1 :0 filterunscriptableinvisible filterUnscriptableInvisible�0  0 getnamesdocked getNamesDocked�/ ,0 tilescriptablewindow tileScriptableWindow�. 00 tileunscriptablewindow tileUnScriptableWindow�- 0 caltilebounds calTileBounds�, 0 
getfrntapp 
getFrntApp�+ 0 getuserscreen getUserScreen�< �; �: �9 r �* E�)�(|}�'
�* .aevtoappnull  �   � ****�)  �(  | �&�%�$�& 0 a  �% 0 error_message  �$ 0 error_number  } �#�"�!� ���~ } �� ������ � � ��# 0 getuserscreen getUserScreen�" 0 
userscreen  �! 0 
getfrntapp 
getFrntApp�  0 applist  
� 
leng
� 
cobj� 0 error_message  ~ ���
� 
errn� 0 error_number  �  
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT�  0 tilescriptable tileScriptable� $0 tileunscriptable tileUnscriptable�' �)j+  E�O &*j+ E�O��,j  hY hO*j+ �k/E�W X  �%�%�%��kv�k� O *��l+ W 0X   *��l+ W X  a �%a %�%�a kv�k� OPs � ������  0 tilescriptable tileScriptable� ��� �  ��� 0 a  � 
0 screen  �   ���
�	���� 0 a  � 
0 screen  �
 0 i  �	 0 c  � 0 
thewindows 
theWindows� 	0 tiles  � 0 	thewindow 	theWindow� ������� ����������
� 
capp
� kfrmname
� 
cwin�  
� 
pvis
� 
isfl
�  
pmod
�� .corecnte****       ****�� 0 caltilebounds calTileBounds
�� 
kocl
�� 
cobj�� ,0 tilescriptablewindow tileScriptableWindow� zkE�O*��0 n*�/�-�[[[�,\Ze8\[�,\Zf8A\[�,\Zf8A1E�O�j E�O�j  hY hO*��km+ E�O %�[��l kh )����/m+ O�kE�[OY��Ut ��#���������� $0 tileunscriptable tileUnscriptable�� ����� �  ������ 0 a  �� 0 
screeninfo  ��  � ���������������� 0 a  �� 0 
screeninfo  �� 0 i  �� 0 c  �� 0 
thewindows 
theWindows�� 	0 tiles  �� 0 	thewindow 	theWindow� ���������������
�� 
pcap
�� 
cwin
�� .corecnte****       ****�� 0 caltilebounds calTileBounds
�� 
kocl
�� 
cobj�� 00 tileunscriptablewindow tileUnScriptableWindow�� [kE�O� S*�/�-E�O�j E�O�j  hY hO)��km+ E�O %�[��l kh )����/m+ O�kE�[OY��OPUu ������������� :0 filterunscriptableinvisible filterUnscriptableInvisible�� ����� �  ���� 0 ws  ��  � ���������� 0 ws  �� 	0 newws  �� 0 docklist  �� 0 	thewindow 	theWindow� ������������  0 getnamesdocked getNamesDocked
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 7jvE�O*j+  E�O %�[��l kh ���, 	��6FY h[OY��O�v �������������  0 getnamesdocked getNamesDocked��  ��  � ���� 0 l  � 	��������������
�� 
prcs
�� 
list
�� 
uiel
�� 
pnam
�� 
sbrl�� $� *��/�k/ *�-�,�[�,\Z�81E�UUO�w ������������� ,0 tilescriptablewindow tileScriptableWindow�� ����� �  �������� 0 a  �� 0 w  �� 	0 bound  ��  � �������� 0 a  �� 0 w  �� 	0 bound  � ����
�� 
capp
�� 
pbnd�� *�/ ���,FUx ������������� 00 tileunscriptablewindow tileUnScriptableWindow�� ����� �  �������� 0 a  �� 0 w  �� 	0 bound  ��  � �������� 0 a  �� 0 w  �� 	0 bound  � 	M��������������
�� 
ascr
�� 
txdl
�� 
cobj
�� 
posn�� �� 
�� 
ptsz�� 9� 5���,FO��k/��l/lv��,FO��m/��k/����/��l/�lv��,FOPUy ��S���������� 0 caltilebounds calTileBounds�� ����� �  �������� 0 nwindows nWindows�� 
0 screen  �� 0 	direction  ��  � ���������������������������������������� 0 nwindows nWindows�� 
0 screen  �� 0 	direction  �� 0 nrows nRows�� 0 ncolumns nColumns�� 0 irow  �� 0 icolumn  �� 0 nspacingwidth nSpacingWidth��  0 nspacingheight nSpacingHeight�� 0 nwindowwidth nWindowWidth�� 0 nwindowheight nWindowHeight�� 0 x0  �� 0 y0  �� $0 availscreenwidth availScreenWidth�� &0 availscreenheight availScreenHeight�� 0 ret  �� 0 ntop nTop�� 0 nleft nLeft�� 	0 itile  � ������
�� 
cobj�� 
�� 
bool��)�E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZOjvE�O�b  "E�O�b  #j 
�kE�Y hO�b   �kb   E�O���!E�Y b  kb   E�O��b  !E�O �j�kkh �b  	 	��k �& ��b   E�Y 	b  E�O�kb    E�O���!E�O��b  #b  � E^ O ?j�kkh ��b   � E^ O] ] ] �] ��vE^ O] �6FOP[OY��[OY�fO�z ��U���������� 0 
getfrntapp 
getFrntApp��  ��  � ���� 0 frntproc frntProc� h���������
�� 
prcs
�� 
pnam
�� 
pisf
�� 
pvis�� #� *�-�,�[[�,\Ze8\[�,\Zf9A1E�UO�{ ��o���������� 0 getuserscreen getUserScreen��  ��  � ��������~�}�|�{�z�y�x�w�v�� 0 menubarwidth menuBarWidth�� 0 menubarheight menuBarHeight�� 0 dockapp dockApp� 0 	dockwidth 	dockWidth�~ 0 
dockheight  �} 0 dockpos dockPos�| 0 
screensize 
screenSize�{ 0 screenwidth screenWidth�z 0 screenheight screenHeight�y  0 availablewidth availableWidth�x "0 availableheight availableHeight�w 0 
availablex 
availableX�v 0 
availabley 
availableY� ��u��t�s�r��q��p�o�n�m
�u 
pcap
�t 
uiel
�s 
ptsz
�r 
cobj
�q 
posn
�p 
desk
�o 
cwin
�n 
pbnd�m �� �� B*��/�k/�,E[�k/E�Z[�l/E�ZO*��/E�O��k/�,E[�k/E�Z[�l/E�ZO��k/�,E�OPUO� *�,�,�,E�O��m/E�O���/E�UO�E�O��E�OjE�O�E�O��l/��  
��E�Y hO��k/j  ��E�O�E�Y hO��k/��  
��E�Y hO�����vascr  ��ޭ