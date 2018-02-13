# elecom_nsb3_openwrt_bb
Writing the later in Japanase.

ELECOM社の法人向けNAS製品 NSB-3NR/3MS シリーズ向けOpenWrt 14.07 (BB = Barrier Breaker)です．

ELECOM社から開示されたソースコード一式のうちLinuxカーネルをOpenWrt 14.07ツリーでビルドできるように合わせ込んだ成果物です．
ビルドされるuserlandはOSSのOpenWrtそのものであり，当然ながら製品のファームウェアに搭載されている独自ソフトウェアの部分は一切含みません．

製品ファームウェアのカーネルとの違いは下記の通りです．

1) スイッチHUBコントローラ RTL8367RB を利用可能
   製品説明で「使いません」とされているLANポート 3個をswconfig対応のスイッチHUBとして使えます．
   port VLANも利用可

2) 前面の液晶を /dev/i2c-1 にアドレス 0x3Cで見えるようにしてあります
   よくある制御仕様のOLEDだそうなので，使いたい方はuserlandのプログラムを導入するなりして下さい

3) 温度によるファン制御を行うセンサーチップ AMC6821 を amc6821ドライバに紐づけしてあります

4) ボタン類(POWERボタンを除く)をOpenWrt標準のhotplugイベント対応ボタンとして利用可能

5) LEDをLinux標準のLEDデバイスとして利用可能
