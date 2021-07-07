Bu bölümde dosya/dizin silme,kopyalama,taşıma gibi konularına değineceğiz, hadi başlayalım!

#Dosya Kopyalama#
Bir önceki bölümde oluşturduğumuz iki adet dosyamız vardı, bunler "first-try.txt" ve ".secret.txt" dosyalarıydı.
ilk olarak "first-try.txt" dosyamızın bir kopyasını oluşturalım bunun için "cp <"kopyalanacak_dosya_ismi"> <"kopya_ismi">" yani `cp first-try.txt kopyasi.txt`{{execute}} şeklinde yazmamız yeterli, şimdi oluşturduğumuz kopyayı görmek için `ls`{{execute}} ve içeriğin aynı olduğunu görmek içinse `cat kopyasi`{{execute}} yazarak teyit edebiliriz.

>>Dizin Oluşturma<<
Şimdi ise klasör oluşturalım, "mkdir <"klasör_Adi">" yani `mkdir deneme`{{execute}} bu komut ile deneme adında bir klasör oluşturduk ve teyit etmek amaçlı sizlerde kontrol edebilirsiniz.

>>Dosya Taşıma<<
senaryomuzda dahilinde bir sonraki adımımız "kopyasi.txt" dosyasını "deneme" klasörünün içine taşımak olucak, bunun için mv <"eski_dosya_yolu"> <"yesni_dosya_yolu">  yani `mv kopyasi.txt /deneme`{{execute}} komutu ile yapabiliriz ve sizlerden bu işlemin başarılı olup olmadığını teyit etmenizi istiyorum.

>>Dosya ve Dizin Silme<<
Sıradaki adımımız bu kopya dosyasını silmek olacak, "deneme" klasörünün içerisine girip "rm <"dosya_ismi">" yani `rm kopyasi.txt`{{execute}} komutu ile silebiliriz, şimdi ise "deneme" klasörünen çıkıp ana dizine gelelim ve bu sefer "deneme" klasörünü silelim "rmdir <"dizin_ismi">" yani `rmdir deneme`{{execute}}