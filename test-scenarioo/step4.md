Bu bölümde ise listeleme ve terminal üzerinden dosya okuma komutlarına değineceğiz.

Öncelikle txt formatında bir dosya oluşturalım `touch first-try.txt`{{execute}}

şimdi ise oluşturduğumuz dosyayı `ls`{{execute}} komutu ile terminalde görmeye çalışalım

hmm dosyayı oluştruduk fakat içine ghiç bir şey yazmadık o yüzden dosyamızın içersine bir şeyler yazalım `echo "merhaba biz dostuz" >> first-try.txt`{{execute}}

şimdi ise bakalımdosya içerisine yazdığımızı terminalden okuyabilecek miyiz? `cat first-try.txt`{{execute}} wow başardık!

peki ya gizli oluştabilir miyiz? elbette! bunun için oluşturacağımız dosyanın başına "." koymamız yeterli hadi deneylim `touch .secret.txt`{{execute}}

hmm...🧐 ls komutu ile dosyayı görememiş olmalısın ama hiç merak etme bu tarz gizli dosyaları görmek ve bir sonraki bölümün konusu olan dosyaların yetkisini görmek için bu komutu kullanmamız gerekir `ls -la`{{execute}} hadi beraber deneyelim!

şimdi ise dosya manipülasyonları üzerinde denemeler yapalım, ilk olarak wc komutunu test edelim `wc /ect/apt/sources.list`{{execute}} evet karşımıza 49 323 2765 şeklinde 3 farklı sayi gösterildi, 49 = satir sayisi, 323 = kelime sayisi, 2765 = karakter sayisi

şimdi ise less komutunu deneyelim `less /etc/apt/sources.list`{{execute}} evet gordugunuz gibi butun icerigi onumuze sermedi buradan yon tuslari ile icerikte yukari assagı bakabiliriz ve cikis yapmak icin "q" tusunu kullanalim

şimdi ise grep komutunu deneyelim `grep -r an /etc/apt/sources.list`{{execute}} içerisinde "an" kelimesi geçenleri kirmizi ile gosterdi 

>>1): dizin1 icerisinde bulunun lorem.txt dosyasinda kac kelime vardir?<<
=== 91

>>2): ana dizinde bulunan gizli dosyanin icinde ne yaziyor?<<
=== kVjtWrEE){.HJq5w
