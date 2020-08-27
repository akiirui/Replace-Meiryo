# Dump latin characters from Roboto
./bin/otfccdump -o latin1.otd /usr/share/fonts/TTF/Roboto-Thin.ttf
./bin/otfccdump -o latin2.otd /usr/share/fonts/TTF/Roboto-Light.ttf
./bin/otfccdump -o latin3.otd /usr/share/fonts/TTF/Roboto-Regular.ttf
./bin/otfccdump -o latin4.otd /usr/share/fonts/TTF/Roboto-Medium.ttf
./bin/otfccdump -o latin5.otd /usr/share/fonts/TTF/Roboto-Bold.ttf
./bin/otfccdump -o latin6.otd /usr/share/fonts/TTF/Roboto-Black.ttf

# Dump Japanese characters from Source Han Sans JP
./bin/otfccdump -o jp1.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-ExtraLight.otf
./bin/otfccdump -o jp2.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-Light.otf
./bin/otfccdump -o jp3.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-Regular.otf
./bin/otfccdump -o jp4.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-Medium.otf
./bin/otfccdump -o jp5.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-Bold.otf
./bin/otfccdump -o jp6.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansJP-Heavy.otf

# Dump Chinese Simplified characters from Source Han Sans CN
./bin/otfccdump -o cn1.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-ExtraLight.otf
./bin/otfccdump -o cn2.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Light.otf
./bin/otfccdump -o cn3.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Regular.otf
./bin/otfccdump -o cn4.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Medium.otf
./bin/otfccdump -o cn5.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Bold.otf
./bin/otfccdump -o cn6.otd /usr/share/fonts/adobe-source-han-sans/SourceHanSansCN-Heavy.otf

# Merge Latin and Japanese characters into Meiryo
./bin/merge-otd -o jpo1.otd -n 'Meiryo;ExtraLight;;' ./latin1.otd ./jp1.otd
./bin/merge-otd -o jpo2.otd -n 'Meiryo;Light;;' ./latin2.otd ./jp2.otd
./bin/merge-otd -o jpo3.otd -n 'Meiryo;Regular;;' ./latin3.otd ./jp3.otd
./bin/merge-otd -o jpo4.otd -n 'Meiryo;Medium;;' ./latin4.otd ./jp4.otd
./bin/merge-otd -o jpo5.otd -n 'Meiryo;Bold;;' ./latin5.otd ./jp5.otd
./bin/merge-otd -o jpo6.otd -n 'Meiryo;Heavy;;' ./latin6.otd ./jp6.otd

# Merge Latin and Chinese Simplified characters into Microsoft YaHei
./bin/merge-otd -o cno1.otd -n 'Microsoft YaHei;ExtraLight;;' ./latin1.otd ./cn1.otd
./bin/merge-otd -o cno2.otd -n 'Microsoft YaHei;Light;;' ./latin2.otd ./cn2.otd
./bin/merge-otd -o cno3.otd -n 'Microsoft YaHei;Regular;;' ./latin3.otd ./cn3.otd
./bin/merge-otd -o cno4.otd -n 'Microsoft YaHei;Medium;;' ./latin4.otd ./cn4.otd
./bin/merge-otd -o cno5.otd -n 'Microsoft YaHei;Bold;;' ./latin5.otd ./cn5.otd
./bin/merge-otd -o cno6.otd -n 'Microsoft YaHei;Heavy;;' ./latin6.otd ./cn6.otd

# Build Meiryo fonts
mkdir -p ./Meiryo
./bin/otfccbuild ./jpo1.otd -O2 -o ./Meiryo/Meiryo-ExtraLight.ttf
./bin/otfccbuild ./jpo2.otd -O2 -o ./Meiryo/Meiryo-Light.ttf
./bin/otfccbuild ./jpo3.otd -O2 -o ./Meiryo/Meiryo-Regular.ttf
./bin/otfccbuild ./jpo4.otd -O2 -o ./Meiryo/Meiryo-Medium.ttf
./bin/otfccbuild ./jpo5.otd -O2 -o ./Meiryo/Meiryo-Bold.ttf
./bin/otfccbuild ./jpo6.otd -O2 -o ./Meiryo/Meiryo-Heavy.ttf

# Build Microsoft YaHei fonts
mkdir -p ./MicrosoftYaHei
./bin/otfccbuild ./cno1.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-ExtraLight.ttf
./bin/otfccbuild ./cno2.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-Light.ttf
./bin/otfccbuild ./cno3.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-Regular.ttf
./bin/otfccbuild ./cno4.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-Medium.ttf
./bin/otfccbuild ./cno5.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-Bold.ttf
./bin/otfccbuild ./cno6.otd -O2 -o ./MicrosoftYaHei/MicrosoftYaHei-Heavy.ttf
