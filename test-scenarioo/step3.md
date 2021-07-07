Bu bölümde dosya/dizin silme,kopyalama,taşıma gibi konularına değineceğiz, hadi başlayalım!

Bir önceki bölümde oluşturduğumuz iki adet dosyamız vardı, bunler "first-try.txt" ve ".secret.txt" dosyalarıydı.
ilk olarak "first-try.txt" dosyamızın bir kopyasını oluşturalım bunun için "cp <"kopyalanacak_dosya_ismi"> <"kopya_ismi">" yani `cp first-try.txt kopyasi.txt`{{execute}} şeklinde yazmamız yeterli, şimdi oluşturduğumuz kopyayı görmek için `ls`{{execute}} ve içeriğin aynı olduğunu görmek içinse `cat kopyasi`{{execute}} yazarak teyit edebiliriz.

Şimdi ise klasör oluşturalım, "mkdir <"klasör_Adi">" yani `mkdir deneme`{{execute}} bu komut ile deneme adında bir klasör oluşturduk ve teyit etmek amaçlı sizlerde kontrol edebilirsiniz.

senaryomuzda dahilinde bir sonraki adımımız "kopyasi.txt" dosyasını "deneme" klasörünün içine taşımak olucak, bunun için mv <"eski_dosya_yolu"> <"yesni_dosya_yolu">  yani `mv kopyasi.txt /deneme`{{execute}} komutu ile yapabiliriz ve sizlerden bu işlemin başarılı olup olmadığını teyit etmenizi istiyorum.

Sıradaki adımımız bu kopya dosyasını silmek olacak, "deneme" klasörünün içerisine girip "rm <"dosya_ismi">" yani `rm kopyasi.txt`{{execute}} komutu ile silebiliriz, şimdi ise "deneme" klasörünen çıkıp ana dizine gelelim ve bu sefer "deneme" klasörünü silelim "rmdir <"dizin_ismi">" yani `rmdir deneme`{{execute}}

şimdi ise aklınıza şu soru gelmiş olabilir, peki rm komutu ile dizin silemez miyim? cevap ise elbette silebilirsiniz, "rm -rf <"dizin_ismi">" şeklinde rm komutu ile dizin silme işlemide yapabiliriz, daha detaylı bilgi edinmek ve farklı parametreleri öğrenmek için "man <"komut">" yani `man rm`{{execute}} şeklinde "rm" komutunun sahip olduğu parametreleri görebiliriz.