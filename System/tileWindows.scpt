FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0tile windows of frontmost applications in a grid     � 	 	 ` t i l e   w i n d o w s   o f   f r o n t m o s t   a p p l i c a t i o n s   i n   a   g r i d   
  
 l     ��  ��     this script is useful for     �   2 t h i s   s c r i p t   i s   u s e f u l   f o r      l     ��  ��     multiple window chatting     �   0 m u l t i p l e   w i n d o w   c h a t t i n g      l     ��  ��    = 7working side by side of several windows of the same app     �   n w o r k i n g   s i d e   b y   s i d e   o f   s e v e r a l   w i n d o w s   o f   t h e   s a m e   a p p      l     ��������  ��  ��        l     ��  ��    ; 5make need to make it as a stay open application later     �   j m a k e   n e e d   t o   m a k e   i t   a s   a   s t a y   o p e n   a p p l i c a t i o n   l a t e r     !   l     �� " #��   " @ :for now assume that it is opened and closed per invokation    # � $ $ t f o r   n o w   a s s u m e   t h a t   i t   i s   o p e n e d   a n d   c l o s e d   p e r   i n v o k a t i o n !  % & % l     ��������  ��  ��   &  ' ( ' l      ) * + ) j     �� ,�� &0 horizontalspacing horizontalSpacing , m     ����  * 2 , sets the horizontal spacing between windows    + � - - X   s e t s   t h e   h o r i z o n t a l   s p a c i n g   b e t w e e n   w i n d o w s (  . / . l      0 1 2 0 j    �� 3�� "0 verticalspacing verticalSpacing 3 m    ����  1 0 * sets the vertical spacing between windows    2 � 4 4 T   s e t s   t h e   v e r t i c a l   s p a c i n g   b e t w e e n   w i n d o w s /  5 6 5 j    �� 7�� 0 maxrows maxRows 7 m    ����  6  8 9 8 j   	 �� :�� 0 maxcols maxCols : m   	 
����  9  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I     �� A��
�� .aevtoappnull  �   � **** A J      ����  ��   @ k     � B B  C D C q       E E ������ 0 a  ��   D  F G F r      H I H n     J K J I    �������� 0 getuserscreen getUserScreen��  ��   K  f      I o      ���� 0 
userscreen   G  L M L l   ��������  ��  ��   M  N O N l   �� P Q��   P - 'display dialog (getFrntApp() as string)    Q � R R N d i s p l a y   d i a l o g   ( g e t F r n t A p p ( )   a s   s t r i n g ) O  S T S Q    E U V W U k    , X X  Y Z Y r     [ \ [ I    �������� 0 
getfrntapp 
getFrntApp��  ��   \ o      ���� 0 applist   Z  ] ^ ] Z    ! _ `���� _ =     a b a n     c d c 1    ��
�� 
leng d o    ���� 0 applist   b m    ����   ` L    ����  ��  ��   ^  e�� e r   " , f g f n   " * h i h 4   ' *�� j
�� 
cobj j m   ( )����  i I   " '�������� 0 
getfrntapp 
getFrntApp��  ��   g o      ���� 0 a  ��   V R      �� k l
�� .ascrerr ****      � **** k l      m���� m o      ���� 0 error_message  ��  ��   l �� n��
�� 
errn n l      o���� o o      ���� 0 error_number  ��  ��  ��   W I  4 E�� p q
�� .sysodlogaskr        TEXT p b   4 ; r s r b   4 9 t u t b   4 7 v w v m   4 5 x x � y y  E r r o r :   w l  5 6 z���� z o   5 6���� 0 error_number  ��  ��   u m   7 8 { { � | |  .   s l  9 : }���� } o   9 :���� 0 error_message  ��  ��   q �� ~ 
�� 
btns ~ J   < ? � �  ��� � m   < = � � � � �  O K��    �� ���
�� 
dflt � m   @ A���� ��   T  � � � l  F F��������  ��  ��   �  � � � Q   F � � � � � I   I P�� �����  0 tilescriptable tileScriptable �  � � � o   J K���� 0 a   �  ��� � o   K L���� 0 
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
dflt � m   | }���� ��  ��   �  ��� � l  � ���������  ��  ��  ��   >  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����  0 tilescriptable tileScriptable �  � � � o      �~�~ 0 a   �  ��} � o      �|�| 
0 screen  �}  �   � k     y � �  � � � q       � � �{ ��{ 0 i   � �z�y�z 0 c  �y   �  � � � r      � � � m     �x�x  � o      �w�w 0 i   �  ��v � O    y � � � k    x � �  � � � l   1 � � � � r    1 � � � 6   / � � � n     � � � 2    �u
�u 
cwin � 4    �t �
�t 
capp � o    �s�s 0 a   � F    . � � � F    % � � � =    � � � 1    �r
�r 
pvis � m    �q
�q boovtrue � =   $ � � � 1     �p
�p 
isfl � m   ! #�o
�o boovfals � =  & - � � � l 	 ' ) ��n�m � 1   ' )�l
�l 
pmod�n  �m   � m   * ,�k
�k boovfals � o      �j�j 0 
thewindows 
theWindows �    and miniaturized is false    � � � � 4   a n d   m i n i a t u r i z e d   i s   f a l s e �  � � � r   2 9 � � � I  2 7�i ��h
�i .corecnte****       **** � o   2 3�g�g 0 
thewindows 
theWindows�h   � o      �f�f 0 c   �  � � � Z   : F � ��e�d � =   : = � � � o   : ;�c�c 0 c   � m   ; <�b�b   � L   @ B�a�a  �e  �d   �  � � � r   G Q � � � I   G O�` ��_�` 0 caltilebounds calTileBounds �  � � � o   H I�^�^ 0 c   �  �  � o   I J�]�] 
0 screen    �\ m   J K�[�[ �\  �_   � o      �Z�Z 	0 tiles   � �Y X   R x�X k   b s  n  b m	 I   c m�W
�V�W ,0 tilescriptablewindow tileScriptableWindow
  o   c d�U�U 0 a    o   d e�T�T 0 	thewindow 	theWindow �S n   e i 4   f i�R
�R 
cobj o   g h�Q�Q 0 i   o   e f�P�P 	0 tiles  �S  �V  	  f   b c �O r   n s [   n q o   n o�N�N 0 i   m   o p�M�M  o      �L�L 0 i  �O  �X 0 	thewindow 	theWindow o   U V�K�K 0 
thewindows 
theWindows�Y   � 5    	�J�I
�J 
capp o    �H�H 0 a  
�I kfrmname�v   �  l     �G�F�E�G  �F  �E    i     I      �D�C�D $0 tileunscriptable tileUnscriptable  !  o      �B�B 0 a  ! "�A" o      �@�@ 0 
screeninfo  �A  �C   k     Z## $%$ l     �?&'�?  &   unscriptable app   ' �(( "   u n s c r i p t a b l e   a p p% )*) q      ++ �>,�> 0 i  , �=�<�= 0 c  �<  * -.- r     /0/ m     �;�; 0 o      �:�: 0 i  . 1�91 O    Z232 k    Y44 565 r    787 l   9�8�79 n    :;: 2    �6
�6 
cwin; 4    �5<
�5 
pcap< o   
 �4�4 0 a  �8  �7  8 o      �3�3 0 
thewindows 
theWindows6 =>= l   �2?@�2  ? B <set theWindows to my filterUnscriptableInvisible(theWindows)   @ �AA x s e t   t h e W i n d o w s   t o   m y   f i l t e r U n s c r i p t a b l e I n v i s i b l e ( t h e W i n d o w s )> BCB l   �1�0�/�1  �0  �/  C DED r    FGF I   �.H�-
�. .corecnte****       ****H o    �,�, 0 
thewindows 
theWindows�-  G o      �+�+ 0 c  E IJI l   �*�)�(�*  �)  �(  J KLK Z    %MN�'�&M =    OPO o    �%�% 0 c  P m    �$�$  N L    !�#�#  �'  �&  L QRQ l  & &�"�!� �"  �!  �   R STS l  & &�UV�  U ; 5display dialog screeninfo as string giving up after 5   V �WW j d i s p l a y   d i a l o g   s c r e e n i n f o   a s   s t r i n g   g i v i n g   u p   a f t e r   5T XYX r   & 0Z[Z n  & .\]\ I   ' .�^�� 0 caltilebounds calTileBounds^ _`_ o   ' (�� 0 c  ` aba o   ( )�� 0 
screeninfo  b c�c m   ) *�� �  �  ]  f   & '[ o      �� 	0 tiles  Y ded X   1 Wf�gf k   A Rhh iji l  A A�kl�  k 4 .display dialog (class of visible of theWindow)   l �mm \ d i s p l a y   d i a l o g   ( c l a s s   o f   v i s i b l e   o f   t h e W i n d o w )j non n  A Lpqp I   B L�r�� 00 tileunscriptablewindow tileUnScriptableWindowr sts o   B C�� 0 a  t uvu o   C D�� 0 	thewindow 	theWindowv w�w n   D Hxyx 4   E H�z
� 
cobjz o   F G�� 0 i  y o   D E�� 	0 tiles  �  �  q  f   A Bo {�{ r   M R|}| [   M P~~ o   M N�� 0 i   m   N O�� } o      �
�
 0 i  �  � 0 	thewindow 	theWindowg o   4 5�	�	 0 
thewindows 
theWindowse ��� l  X X����  �  �  �  3 m    ���                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �9   ��� l     ����  �  �  � ��� i    ��� I      ��� � :0 filterunscriptableinvisible filterUnscriptableInvisible� ���� o      ���� 0 ws  ��  �   � k     6�� ��� l     ������  � 2 , filter out from ws windows that are docked    � ��� X   f i l t e r   o u t   f r o m   w s   w i n d o w s   t h a t   a r e   d o c k e d  � ��� r     ��� J     ����  � o      ���� 	0 newws  � ��� r    ��� I    
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
capp� o    ���� 0 a  � ��� l     ��������  ��  ��  � ��� i   $ '��� I      ������� 00 tileunscriptablewindow tileUnScriptableWindow� ��� o      ���� 0 a  � ��� o      ���� 0 w  � ���� o      ���� 	0 bound  ��  ��  � O     8��� k    7�� ��� l   ������  � * $display dialog (count position of w)   � ��� H d i s p l a y   d i a l o g   ( c o u n t   p o s i t i o n   o f   w )� ��� r    	   m     �    n      1    ��
�� 
txdl 1    ��
�� 
ascr�  l  
 
��������  ��  ��   	 r   
 

 J   
   l  
 ���� n   
  4    ��
�� 
cobj m    ����  o   
 ���� 	0 bound  ��  ��   �� l   ���� n     4    ��
�� 
cobj m    ����  o    ���� 	0 bound  ��  ��  ��   n       1    ��
�� 
posn o    ���� 0 w  	  l   ��������  ��  ��    l   ����     why the -5?    �      w h y   t h e   - 5 ? !"! r    5#$# J    1%% &'& \    $()( \    "*+* l   ,����, n    -.- 4    ��/
�� 
cobj/ m    ���� . o    ���� 	0 bound  ��  ��  + l   !0����0 n    !121 4    !��3
�� 
cobj3 m     ���� 2 o    ���� 	0 bound  ��  ��  ) m   " #���� ' 4��4 \   $ /565 \   $ -787 l 	 $ (9����9 l  $ (:����: n   $ (;<; 4   % (��=
�� 
cobj= m   & '���� < o   $ %���� 	0 bound  ��  ��  ��  ��  8 l  ( ,>����> n   ( ,?@? 4   ) ,��A
�� 
cobjA m   * +���� @ o   ( )���� 	0 bound  ��  ��  6 m   - .���� ��  $ n      BCB 1   2 4��
�� 
ptszC o   1 2���� 0 w  " D��D l  6 6��EF��  E , &display dialog (count properties of w)   F �GG L d i s p l a y   d i a l o g   ( c o u n t   p r o p e r t i e s   o f   w )��  � m     HH�                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � IJI l     ��������  ��  ��  J KLK i   ( +MNM I      ��O���� 0 caltilebounds calTileBoundsO PQP o      ���� 0 nwindows nWindowsQ RSR o      ���� 
0 screen  S T��T o      ���� 0 	direction  ��  ��  N k    (UU VWV l     ��XY��  X . ( return a list of lists of window bounds   Y �ZZ P   r e t u r n   a   l i s t   o f   l i s t s   o f   w i n d o w   b o u n d sW [\[ l     �]^�  ] P J a simple tile algo that tiles along direction (current only 1=horizontal)   ^ �__ �   a   s i m p l e   t i l e   a l g o   t h a t   t i l e s   a l o n g   d i r e c t i o n   ( c u r r e n t   o n l y   1 = h o r i z o n t a l )\ `a` l     �~�}�|�~  �}  �|  a bcb q      dd �{e�{ 0 nrows nRowse �zf�z 0 ncolumns nColumnsf �yg�y 0 irow  g �xh�x 0 icolumn  h �wi�w 0 nspacingwidth nSpacingWidthi �vj�v  0 nspacingheight nSpacingHeightj �uk�u 0 nwindowwidth nWindowWidthk �t�s�t 0 nwindowheight nWindowHeight�s  c lml r     non o     �r�r 
0 screen  o J      pp qrq o      �q�q 0 x0  r sts o      �p�p 0 y0  t uvu o      �o�o $0 availscreenwidth availScreenWidthv w�nw o      �m�m &0 availscreenheight availScreenHeight�n  m xyx r    #z{z J    !�l�l  { o      �k�k 0 ret  y |}| l  $ $�j�i�h�j  �i  �h  } ~~ r   $ -��� l  $ +��g�f� _   $ +��� o   $ %�e�e 0 nwindows nWindows� o   % *�d�d 0 maxcols maxCols�g  �f  � o      �c�c 0 nrows nRows ��� Z   . C���b�a� >   . 7��� l  . 5��`�_� `   . 5��� o   . /�^�^ 0 nwindows nWindows� o   / 4�]�] 0 maxcols maxCols�`  �_  � m   5 6�\�\  � r   : ?��� [   : =��� o   : ;�[�[ 0 nrows nRows� m   ; <�Z�Z � o      �Y�Y 0 nrows nRows�b  �a  � ��� l  D D�X�W�V�X  �W  �V  � ��� Z   D ���U�� A   D K��� o   D E�T�T 0 nrows nRows� o   E J�S�S 0 maxrows maxRows� k   N a�� ��� r   N Y��� ]   N W��� l  N Q��R�Q� \   N Q��� o   N O�P�P 0 nrows nRows� m   O P�O�O �R  �Q  � o   Q V�N�N "0 verticalspacing verticalSpacing� o      �M�M  0 nspacingheight nSpacingHeight� ��L� r   Z a��� ^   Z _��� l  Z ]��K�J� \   Z ]��� o   Z [�I�I &0 availscreenheight availScreenHeight� o   [ \�H�H  0 nspacingheight nSpacingHeight�K  �J  � o   ] ^�G�G 0 nrows nRows� o      �F�F 0 nwindowheight nWindowHeight�L  �U  � k   d �� ��� r   d s��� ]   d q��� l  d k��E�D� \   d k��� o   d i�C�C 0 maxrows maxRows� m   i j�B�B �E  �D  � o   k p�A�A "0 verticalspacing verticalSpacing� o      �@�@  0 nspacingheight nSpacingHeight� ��?� r   t ��� ^   t }��� l  t w��>�=� \   t w��� o   t u�<�< &0 availscreenheight availScreenHeight� o   u v�;�;  0 nspacingheight nSpacingHeight�>  �=  � o   w |�:�: 0 maxrows maxRows� o      �9�9 0 nwindowheight nWindowHeight�?  � ��� l  � ��8�7�6�8  �7  �6  � ��� Y   �%��5���4� k   � �� ��� Z   � ����3�� F   � ���� B   � ���� o   � ��2�2 0 nrows nRows� o   � ��1�1 0 maxrows maxRows� =   � ���� o   � ��0�0 0 irow  � \   � ���� o   � ��/�/ 0 nrows nRows� m   � ��.�. � r   � ���� \   � ���� o   � ��-�- 0 nwindows nWindows� ]   � ���� o   � ��,�, 0 irow  � o   � ��+�+ 0 maxcols maxCols� o      �*�* 0 ncolumns nColumns�3  � r   � ���� o   � ��)�) 0 maxcols maxCols� o      �(�( 0 ncolumns nColumns� ��� r   � ���� ]   � ���� l  � ���'�&� \   � ���� o   � ��%�% 0 ncolumns nColumns� m   � ��$�$ �'  �&  � o   � ��#�# &0 horizontalspacing horizontalSpacing� o      �"�" 0 nspacingwidth nSpacingWidth� ��� r   � ���� ^   � ���� l  � ���!� � \   � ���� o   � ��� $0 availscreenwidth availScreenWidth� o   � ��� 0 nspacingwidth nSpacingWidth�!  �   � o   � ��� 0 ncolumns nColumns� o      �� 0 nwindowwidth nWindowWidth� ��� r   � ���� [   � ���� o   � ��� 0 y0  � ]   � ���� l  � ����� `   � ���� o   � ��� 0 irow  � o   � ��� 0 maxrows maxRows�  �  � l  � ����� [   � ���� o   � ��� "0 verticalspacing verticalSpacing� o   � ��� 0 nwindowheight nWindowHeight�  �  � o      �� 0 ntop nTop� ��� l  � �����  � C =display dialog "Top: " & nTop buttons {"OK"} default button 1   � �   z d i s p l a y   d i a l o g   " T o p :   "   &   n T o p   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1� � Y   � �� k   �  r   � �	 [   � �

 o   � ��� 0 x0   ]   � � l  � ��� o   � ��
�
 0 icolumn  �  �   l  � ��	� [   � � o   � ��� &0 horizontalspacing horizontalSpacing o   � ��� 0 nwindowwidth nWindowWidth�	  �  	 o      �� 0 nleft nLeft  r   � J   �  l 	 � ��� o   � ��� 0 nleft nLeft�  �    l 	 ���  o   ����� 0 ntop nTop�  �     [    l 	!����! o  ���� 0 nleft nLeft��  ��    o  ���� 0 nwindowwidth nWindowWidth "��" [  #$# l 	
%����% o  
���� 0 ntop nTop��  ��  $ o  
���� 0 nwindowheight nWindowHeight��   o      ���� 	0 itile   &'& r  ()( o  ���� 	0 itile  ) n      *+*  ;  + o  ���� 0 ret  ' ,-, l ��./��  . . (display dialog item 3 of itile as string   / �00 P d i s p l a y   d i a l o g   i t e m   3   o f   i t i l e   a s   s t r i n g- 121 l ��34��  3 A ;set itile to {x0 + (icolumn - 1) * wgrid, y0, wgrid, hgrid}   4 �55 v s e t   i t i l e   t o   { x 0   +   ( i c o l u m n   -   1 )   *   w g r i d ,   y 0 ,   w g r i d ,   h g r i d }2 676 l ��89��  8 D >set item 3 of itile to ((item 1 of itile) + (item 3 of itile))   9 �:: | s e t   i t e m   3   o f   i t i l e   t o   ( ( i t e m   1   o f   i t i l e )   +   ( i t e m   3   o f   i t i l e ) )7 ;��; l ��<=��  < D >set item 4 of itile to ((item 2 of itile) + (item 4 of itile))   = �>> | s e t   i t e m   4   o f   i t i l e   t o   ( ( i t e m   2   o f   i t i l e )   +   ( i t e m   4   o f   i t i l e ) )��  � 0 icolumn   m   � �����   \   � �?@? o   � ����� 0 ncolumns nColumns@ m   � ����� �  �  �5 0 irow  � m   � �����  � \   � �ABA o   � ����� 0 nrows nRowsB m   � ����� �4  � CDC l &&��������  ��  ��  D E��E L  &(FF o  &'���� 0 ret  ��  L GHG l     ��������  ��  ��  H IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM i   , /OPO I      �������� 0 
getfrntapp 
getFrntApp��  ��  P k     "QQ RSR O    TUT r    VWV 6   XYX n    	Z[Z l 	  	\����\ 1    	��
�� 
pnam��  ��  [ 2    ��
�� 
prcsY F   
 ]^] =   _`_ 1    ��
�� 
pisf` m    ��
�� boovtrue^ >    aba 1    ��
�� 
pvisb m    ��
�� boovfalsW o      ���� 0 frntproc frntProcU m     cc�                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  S d��d L     "ee o     !���� 0 frntproc frntProc��  N fgf l     ��������  ��  ��  g h��h i   0 3iji I      �������� 0 getuserscreen getUserScreen��  ��  j k     �kk lml l     ��no��  n   size of the menubar   o �pp (   s i z e   o f   t h e   m e n u b a rm qrq O     Ests k    Duu vwv r    xyx n    z{z 1    ��
�� 
ptsz{ n    |}| 4    ��~
�� 
uiel~ m   	 
���� } 4    ��
�� 
pcap m    �� ���  S y s t e m U I S e r v e ry J      �� ��� o      ���� 0 menubarwidth menuBarWidth� ���� o      ���� 0 menubarheight menuBarHeight��  w ��� l   ������  � T Ndisplay dialog "Menubar width: " & menubarWidth & ", height: " & menubarHeight   � ��� � d i s p l a y   d i a l o g   " M e n u b a r   w i d t h :   "   &   m e n u b a r W i d t h   &   " ,   h e i g h t :   "   &   m e n u b a r H e i g h t� ��� r    #��� l   !������ 4    !���
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
uiel� m   < =���� � o   : ;���� 0 dockapp dockApp� o      ���� 0 dockpos dockPos� ���� l  C C������  � U Odisplay dialog "Dock x: " & (item 1 of dockPos) & ", y: " & (item 2 of dockPos)   � ��� � d i s p l a y   d i a l o g   " D o c k   x :   "   &   ( i t e m   1   o f   d o c k P o s )   &   " ,   y :   "   &   ( i t e m   2   o f   d o c k P o s )��  t m     ���                                                                                  sevs  alis    �  Macintosh HD               ���H+    System Events.app                                               ,^�8CW        ����  	                CoreServices    ���      �8'7         �   �  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  r ��� l  F F��������  ��  ��  � ��� l  F F������  �   size of the full screen   � ��� 0   s i z e   o f   t h e   f u l l   s c r e e n� ��� l   F F������  � � �{word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Width") as number, �word 3 of (do shell script "defaults read /Library/Preferences/com.apple.windowserver | grep -w Height") as number}   � ����  { w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   W i d t h " )   a s   n u m b e r ,   �  w o r d   3   o f   ( d o   s h e l l   s c r i p t   " d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . w i n d o w s e r v e r   |   g r e p   - w   H e i g h t " )   a s   n u m b e r } � ��� O   F b��� k   J a�� ��� r   J S��� n   J Q��� 1   O Q��
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
availableY� ��� l  u u��������  ��  ��  � ��� l  u u������  � . (determine the userscreen origin and size   � ��� P d e t e r m i n e   t h e   u s e r s c r e e n   o r i g i n   a n d   s i z e� � � l  u u��������  ��  ��     l  u u����     case 0: hidden dock    � (   c a s e   0 :   h i d d e n   d o c k  l  u u��	��   J D if (item 1 of dockPos < 0 or item 1 of dockPos � screenHeight) then   	 �

 �   i f   ( i t e m   1   o f   d o c k P o s   <   0   o r   i t e m   1   o f   d o c k P o s  "e   s c r e e n H e i g h t )   t h e n  l  u u��   !  no need to change anything    � 6   n o   n e e d   t o   c h a n g e   a n y t h i n g  l  u u�~�~     end if    �    e n d   i f  l  u u�}�|�{�}  �|  �{    l  u u�z�z     case 1: bottom dock    � (   c a s e   1 :   b o t t o m   d o c k  Z   u ��y�x l  u } �w�v  =   u }!"! [   u {#$# l  u y%�u�t% n   u y&'& 4   v y�s(
�s 
cobj( m   w x�r�r ' o   u v�q�q 0 dockpos dockPos�u  �t  $ o   y z�p�p 0 
dockheight  " o   { |�o�o 0 screenheight screenHeight�w  �v   r   � �)*) \   � �+,+ o   � ��n�n "0 availableheight availableHeight, o   � ��m�m 0 
dockheight  * o      �l�l "0 availableheight availableHeight�y  �x   -.- l  � ��k�j�i�k  �j  �i  . /0/ l  � ��h12�h  1   case 2: left dock   2 �33 $   c a s e   2 :   l e f t   d o c k0 454 Z   � �67�g�f6 l  � �8�e�d8 =   � �9:9 n   � �;<; 4   � ��c=
�c 
cobj= m   � ��b�b < o   � ��a�a 0 dockpos dockPos: m   � ��`�`  �e  �d  7 k   � �>> ?@? r   � �ABA \   � �CDC o   � ��_�_  0 availablewidth availableWidthD o   � ��^�^ 0 	dockwidth 	dockWidthB o      �]�]  0 availablewidth availableWidth@ E�\E r   � �FGF o   � ��[�[ 0 	dockwidth 	dockWidthG o      �Z�Z 0 
availablex 
availableX�\  �g  �f  5 HIH l  � ��Y�X�W�Y  �X  �W  I JKJ l  � ��VLM�V  L   case 3: right dock   M �NN &   c a s e   3 :   r i g h t   d o c kK OPO Z   � �QR�U�TQ l  � �S�S�RS =   � �TUT [   � �VWV l  � �X�Q�PX n   � �YZY 4   � ��O[
�O 
cobj[ m   � ��N�N Z o   � ��M�M 0 dockpos dockPos�Q  �P  W o   � ��L�L 0 	dockwidth 	dockWidthU o   � ��K�K 0 screenwidth screenWidth�S  �R  R r   � �\]\ \   � �^_^ o   � ��J�J  0 availablewidth availableWidth_ o   � ��I�I 0 	dockwidth 	dockWidth] o      �H�H  0 availablewidth availableWidth�U  �T  P `a` l  � ��G�F�E�G  �F  �E  a b�Db L   � �cc J   � �dd efe o   � ��C�C 0 
availablex 
availableXf ghg o   � ��B�B 0 
availabley 
availableYh iji o   � ��A�A  0 availablewidth availableWidthj k�@k o   � ��?�? "0 availableheight availableHeight�@  �D  ��       �>l�=�<�;�:mnopqrstuv�>  l �9�8�7�6�5�4�3�2�1�0�/�.�-�,�9 &0 horizontalspacing horizontalSpacing�8 "0 verticalspacing verticalSpacing�7 0 maxrows maxRows�6 0 maxcols maxCols
�5 .aevtoappnull  �   � ****�4  0 tilescriptable tileScriptable�3 $0 tileunscriptable tileUnscriptable�2 :0 filterunscriptableinvisible filterUnscriptableInvisible�1  0 getnamesdocked getNamesDocked�0 ,0 tilescriptablewindow tileScriptableWindow�/ 00 tileunscriptablewindow tileUnScriptableWindow�. 0 caltilebounds calTileBounds�- 0 
getfrntapp 
getFrntApp�, 0 getuserscreen getUserScreen�= �< �; �: m �+ @�*�)wx�(
�+ .aevtoappnull  �   � ****�*  �)  w �'�&�%�' 0 a  �& 0 error_message  �% 0 error_number  x �$�#�"�!� ��y x {� ������ � � ��$ 0 getuserscreen getUserScreen�# 0 
userscreen  �" 0 
getfrntapp 
getFrntApp�! 0 applist  
�  
leng
� 
cobj� 0 error_message  y ���
� 
errn� 0 error_number  �  
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT�  0 tilescriptable tileScriptable� $0 tileunscriptable tileUnscriptable�( �)j+  E�O &*j+ E�O��,j  hY hO*j+ �k/E�W X  �%�%�%��kv�k� O *��l+ W 0X   *��l+ W X  a �%a %�%�a kv�k� OPn � ���z{��  0 tilescriptable tileScriptable� �|� |  ��� 0 a  � 
0 screen  �  z ����
�	��� 0 a  � 
0 screen  � 0 i  �
 0 c  �	 0 
thewindows 
theWindows� 	0 tiles  � 0 	thewindow 	theWindow{ ���}���� ��������
� 
capp
� kfrmname
� 
cwin}  
� 
pvis
� 
isfl
� 
pmod
�  .corecnte****       ****�� 0 caltilebounds calTileBounds
�� 
kocl
�� 
cobj�� ,0 tilescriptablewindow tileScriptableWindow� zkE�O*��0 n*�/�-�[[[�,\Ze8\[�,\Zf8A\[�,\Zf8A1E�O�j E�O�j  hY hO*��km+ E�O %�[��l kh )����/m+ O�kE�[OY��Uo ������~���� $0 tileunscriptable tileUnscriptable�� ����� �  ������ 0 a  �� 0 
screeninfo  ��  ~ ���������������� 0 a  �� 0 
screeninfo  �� 0 i  �� 0 c  �� 0 
thewindows 
theWindows�� 	0 tiles  �� 0 	thewindow 	theWindow ���������������
�� 
pcap
�� 
cwin
�� .corecnte****       ****�� 0 caltilebounds calTileBounds
�� 
kocl
�� 
cobj�� 00 tileunscriptablewindow tileUnScriptableWindow�� [kE�O� S*�/�-E�O�j E�O�j  hY hO)��km+ E�O %�[��l kh )����/m+ O�kE�[OY��OPUp ������������� :0 filterunscriptableinvisible filterUnscriptableInvisible�� ����� �  ���� 0 ws  ��  � ���������� 0 ws  �� 	0 newws  �� 0 docklist  �� 0 	thewindow 	theWindow� ������������  0 getnamesdocked getNamesDocked
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 7jvE�O*j+  E�O %�[��l kh ���, 	��6FY h[OY��O�q �������������  0 getnamesdocked getNamesDocked��  ��  � ���� 0 l  � 	����������}���
�� 
prcs
�� 
list
�� 
uiel
�� 
pnam
�� 
sbrl�� $� *��/�k/ *�-�,�[�,\Z�81E�UUO�r ������������� ,0 tilescriptablewindow tileScriptableWindow�� ����� �  �������� 0 a  �� 0 w  �� 	0 bound  ��  � �������� 0 a  �� 0 w  �� 	0 bound  � ����
�� 
capp
�� 
pbnd�� *�/ ���,FUs ������������� 00 tileunscriptablewindow tileUnScriptableWindow�� ����� �  �������� 0 a  �� 0 w  �� 	0 bound  ��  � �������� 0 a  �� 0 w  �� 	0 bound  � 	H��������������
�� 
ascr
�� 
txdl
�� 
cobj
�� 
posn�� �� 
�� 
ptsz�� 9� 5���,FO��k/��l/lv��,FO��m/��k/����/��l/�lv��,FOPUt ��N���������� 0 caltilebounds calTileBounds�� ����� �  �������� 0 nwindows nWindows�� 
0 screen  �� 0 	direction  ��  � ���������������������������������������� 0 nwindows nWindows�� 
0 screen  �� 0 	direction  �� 0 nrows nRows�� 0 ncolumns nColumns�� 0 irow  �� 0 icolumn  �� 0 nspacingwidth nSpacingWidth��  0 nspacingheight nSpacingHeight�� 0 nwindowwidth nWindowWidth�� 0 nwindowheight nWindowHeight�� 0 x0  �� 0 y0  �� $0 availscreenwidth availScreenWidth�� &0 availscreenheight availScreenHeight�� 0 ret  �� 0 ntop nTop�� 0 nleft nLeft�� 	0 itile  � ������
�� 
cobj�� 
�� 
bool��)�E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZOjvE�O�b  "E�O�b  #j 
�kE�Y hO�b   �kb   E�O���!E�Y b  kb   E�O��b  !E�O �j�kkh �b  	 	��k �& ��b   E�Y 	b  E�O�kb    E�O���!E�O��b  #b  � E^ O ?j�kkh ��b   � E^ O] ] ] �] ��vE^ O] �6FOP[OY��[OY�fO�u ��P���������� 0 
getfrntapp 
getFrntApp��  ��  � ���� 0 frntproc frntProc� c����}����
�� 
prcs
�� 
pnam
�� 
pisf
�� 
pvis�� #� *�-�,�[[�,\Ze8\[�,\Zf9A1E�UO�v ��j���������� 0 getuserscreen getUserScreen��  ��  � ����������~�}�|�{�z�y�x�w�� 0 menubarwidth menuBarWidth�� 0 menubarheight menuBarHeight�� 0 dockapp dockApp�� 0 	dockwidth 	dockWidth� 0 
dockheight  �~ 0 dockpos dockPos�} 0 
screensize 
screenSize�| 0 screenwidth screenWidth�{ 0 screenheight screenHeight�z  0 availablewidth availableWidth�y "0 availableheight availableHeight�x 0 
availablex 
availableX�w 0 
availabley 
availableY� ��v��u�t�s��r��q�p�o�n
�v 
pcap
�u 
uiel
�t 
ptsz
�s 
cobj
�r 
posn
�q 
desk
�p 
cwin
�o 
pbnd�n �� �� B*��/�k/�,E[�k/E�Z[�l/E�ZO*��/E�O��k/�,E[�k/E�Z[�l/E�ZO��k/�,E�OPUO� *�,�,�,E�O��m/E�O���/E�UO�E�O��E�OjE�O�E�O��l/��  
��E�Y hO��k/j  ��E�O�E�Y hO��k/��  
��E�Y hO�����vascr  ��ޭ