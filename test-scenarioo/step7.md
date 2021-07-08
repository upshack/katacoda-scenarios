# Paketlerin Yonetimi

>apt-get install <"paket_adi">: apt-get veritabanını tarayarak en son versiyonu bulacak ve /etc/apt/source.list dosyamizda belirtilen arsivden indirmeye başlayacaktir
`apt-get install nano`{{execute}}

>apt-get remove <"paket_adi">:  paketi kaldirmak istedigimizde bu komutu kullaniriz
`apt-get remove nano`{{execute}}

>apt-get update: arşiv lsitemizi gunceller
`apt-get update`{{execute}}

>apt-get -u upgrade: paketleri gunceller -u parametresi ise guncellenecekleri bize gosterir
`apt-get -u upgrade`{{execute}}

# Dosya Duzenleme

>bir kaç farklı alternatifi mevcuttur: nano, vim, emacs, gedit vs. bize terminal üzerinden dosyayı editleme olanagi tanirlar.

örnek olarak nano üzerinden ilerleyebiliriz, `apt-get install nano`{{execute}} komutu ile kurulumu başlatlaım ardından `nano dizin1/lorem.txt`{{execute}} komutu ile paket eşiv dosyamizin icerisine bir goz atalim, burada editleme islemi yapabilir ve ctrl+x tus kobinasyonu yaptiktan sonra eger degisikliklerin kaydolmasini istiyorsak y tusuna basip cikabiliriz
