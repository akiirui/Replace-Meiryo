./otfccdump /usr/share/fonts/TTF/Roboto-Thin.ttf    -o a1.otd
./otfccdump /usr/share/fonts/TTF/Roboto-Light.ttf   -o a2.otd
./otfccdump /usr/share/fonts/TTF/Roboto-Regular.ttf -o a3.otd
./otfccdump /usr/share/fonts/TTF/Roboto-Medium.ttf  -o a4.otd
./otfccdump /usr/share/fonts/TTF/Roboto-Bold.ttf    -o a5.otd
./otfccdump /usr/share/fonts/TTF/Roboto-Black.ttf   -o a6.otd

./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-ExtraLight.otf -o b1.otd
./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Light.otf      -o b2.otd
./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Regular.otf    -o b3.otd
./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Medium.otf     -o b4.otd
./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Bold.otf       -o b5.otd
./otfccdump /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Heavy.otf      -o b6.otd

./merge-otd -n 'Meiryo;ExtraLight;;' ./a1.otd ./b1.otd
./merge-otd -n 'Meiryo;Light;;'      ./a2.otd ./b2.otd
./merge-otd -n 'Meiryo;Regular;;'    ./a3.otd ./b3.otd
./merge-otd -n 'Meiryo;Medium;;'     ./a4.otd ./b4.otd
./merge-otd -n 'Meiryo;Bold;;'       ./a5.otd ./b5.otd
./merge-otd -n 'Meiryo;Heavy;;'      ./a6.otd ./b6.otd

./otfccbuild ./a1.otd -O2 -o Meiryo-ExtraLight.ttf
./otfccbuild ./a2.otd -O2 -o Meiryo-Light.ttf
./otfccbuild ./a3.otd -O2 -o Meiryo-Regular.ttf
./otfccbuild ./a4.otd -O2 -o Meiryo-Medium.ttf
./otfccbuild ./a5.otd -O2 -o Meiryo-Bold.ttf
./otfccbuild ./a6.otd -O2 -o Meiryo-Heavy.ttf
