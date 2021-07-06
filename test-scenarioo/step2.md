Bu bölümde ise listeleme ve terminal üzerinden dosya okuma komutlarına değineceğiz.

Öncelikle txt formatında bir dosya oluşturalım `touch first-try.txt`{{execute}}

şimdi ise oluşturduğumuz dosyayı `ls`{{execute}} komutu görmeye çalışalım

hmm dosyayı oluştruduk fakat içine ghiç bir şey yazmadık o yüzden dosyamızın içersine bir şeyler yazalım `echo >> "merhaba biz dostuz" >> first-try.txt`{{execute}}

şimdi ise bakalımdosya içerisine yazdığımızı terminalden okuyabilecek miyiz? `cat first-try.txt`{{execute}} wow başardık!

peki ya gizli oluştabilir miyiz? elbette! bunun için oluşturacağımız dosyanın başına "." koymamız yeterli hadi deneylim `touch .secret.txt`{{execute}}

hmm...🧐 ls komutu ile dosyayı görememiş olmalısın ama hiç merak etme bu tarz gizli dosyaları görmek ve bir sonraki bölümün konusu olan dosyaların yetkisini görmek için bu komutu kullanmamız gerekir `ls -la`{{execute}} hadi beraber deneyelim!

🥳 Tebrikler bu bölümüde başarıyla geçtin 🥳