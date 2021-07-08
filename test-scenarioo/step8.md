# Navigasyon komutlari

>pwd: Mevcut bulundugunumuz dizini yazdirir

>ls: Dizindeki dosyalari yazdirir, dizinde bulunan gizli dosyalari gormek icin "-la" parametresi kullanilir, daha fazla bilgi icin `ls --help`{{execute}} komutu kullanabilirsiniz

>cd: Calisma dizinini degistirir

* cd ..: Bir ust dizine gecmek icin
* cd <"dizin">: Belirlenen dizin yolu gecis yapmak icin `cd /etc/apt/`{{execute}} komutu ile apt dizinin icine giris yapabiliriz

# Dosya olusturma

>touch <"dosya_adi">: `touch deneme.txt`{{execute}} komutu ile dosya olusturulur

* .dosya_adi: Dosyanin basine "." koyarsaniz gizli dosya olusturmus olursunuz, normal "ls" komutu ile gorulmez ama "ls -la" komutu ile bu tarz dosyalari gorebiliriniz 

# Dosya okuma

>cat <"dosya_adi">: bu komut ile dosylarin ciktisini termina uzerinden gorebiliriz, bir kac farkli parametresi vardir. "-n" parametresi satir sayılarini gostererek ekrana yazdirir, "cat <"dosya_adi_1"> <"dosya_adi_2">" seklinde aynianda 2 dosyayi gosterir, daha fazlasini ogrenmek icin yardim komutlarini kullanabilirsiniz. `cat --help`{{execute}}

# Dosya Kopyalama

Bir önceki bölümde oluşturduğumuz iki adet dosyamız vardı, bunler "first-try.txt" ve ".secret.txt" dosyalarıydı.
ilk olarak "first-try.txt" dosyamızın bir kopyasını oluşturalım bunun için "cp <"kopyalanacak_dosya_ismi"> <"kopya_ismi">" yani `cp first-try.txt kopyasi.txt`{{execute}} şeklinde yazmamız yeterli, şimdi oluşturduğumuz kopyayı görmek için `ls`{{execute}} ve içeriğin aynı olduğunu görmek içinse `cat kopyasi`{{execute}} yazarak teyit edebiliriz.

# Dizin Olusturma

Şimdi ise klasör oluşturalım, "mkdir <"klasör_Adi">" yani `mkdir deneme`{{execute}} bu komut ile deneme adında bir klasör oluşturduk ve teyit etmek amaçlı sizlerde kontrol edebilirsiniz.

# Dosya Tasima

senaryomuzda dahilinde bir sonraki adımımız "kopyasi.txt" dosyasını "deneme" klasörünün içine taşımak olucak, bunun için mv <"eski_dosya_yolu"> <"yesni_dosya_yolu">  yani `mv kopyasi.txt /deneme`{{execute}} komutu ile yapabiliriz ve sizlerden bu işlemin başarılı olup olmadığını teyit etmenizi istiyorum.

# Dosya ve Dizin Silme

Sıradaki adımımız bu kopya dosyasını silmek olacak, "deneme" klasörünün içerisine girip "rm <"dosya_ismi">" yani `rm kopyasi.txt`{{execute}} komutu ile silebiliriz, şimdi ise "deneme" klasörünen çıkıp ana dizine gelelim ve bu sefer "deneme" klasörünü silelim "rmdir <"dizin_ismi">" yani `rmdir deneme`{{execute}}

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

örnek olarak nano üzerinden ilerleyebiliriz, `apt-get install nano`{{execute}} komutu ile kurulumu başlatlaım ardından `nano /etc/apt/sources.list`{{execute}} komutu ile paket eşiv dosyamizin icerisine bir goz atalim, burada editleme islemi yapabilir ve ctrl+x tus kobinasyonu yaptiktan sonra eger degisikliklerin kaydolmasini istiyorsak y tusuna basip cikabiliriz

# Yardim Komutlari

>whatis <"komut">: Kisaca komutun ne yaptigini aciklar
`whatis ls`{{execute}}

><"komut"> --help: Komuta ozel yardim mesajini ve komutun argumanlarini aciklar
`ls --help`{{execute}}

>man <"komut">: Komuta dair cok daha detayli bilgi paylasir 
`man ls`{{execute}}

# Girdi/Cikti Komutlari

> ">" : çıktıyı dosyaya yazdirma `ls > deneme.txt`{{execute}}

> ">>" : çıktıyı dosyanin sonuna yazdirma `ls >> deneme.txt`{{execute}}

> "<" : girdiyi yönlendirme, bu işlemde dosya icerisindekileri alfabetik olarak siralar `sort < deneme.txt`{{execute}}

# Dosyalari Manipule Etme

> wc <"dosya_ismi">: bize dosya içerigi hakkinda bilgi verir ve bir kac farkli parametresi vardir, karakter icin -c,kelimeler icin -w, satirlar icin -l argumani kullanilir

> less

> grep

# Dosya ve Dizin izinlerini ogrenme

> ls -l: bu komut ile bulundugumuz dizindeki dosyalarin izinlerini ogrenebiliriz

> stat -c "%a %n" *: bu komut ile de mevcut dizindeki dosyalarin izinlerini ogrenebiliriz

* r-: okuma yetkisi (read)
* w-: yazma yetkisi (write)
* x-: calistirma yetkisi (execute)

>Dizinde listeme yaptigimizde bir sey gozunuze carpmis olabilir, bazilari "-r" ile baslarken bazilari "r" diye basliyor bunun sebebi "-r" basliyanlarin dosya "r" ile basliyanlarin dizin olmasidir

* 4 : okuma yetkisi (read)
* 2: yazma yetkisi (write)
* 1: calistirma yetkisi (execute)

>ilk rakam dosyanin sahibinin izinlerini, ikinci rakam dosyanin sahibiyle aynı grupta bulunan kullanicilarinin yetkileirni, ucunu rakam diger kullanicilarin yetkilerini ifade eder

# Dosya ve Dizin izin verme

* u: dosya sahibini
* g: dosya sahibinin grubunu
* o: diger kullanıcılari
* a: tum haklari
* +: yetki ekleme
* =: yetki eşitleme
* -: yetki cikarma
* r: okuma yetkisi
* w: yazma yetkisi
* x: calistirma yetkisi

>chmod o+r <"dosya">: Diger kullanicalara yazma yetkisi veya chmod o=r <"dosya"> şeklinde kullanılabilir

>chmod ugo+rw <"dosya">: Dosya sahibine, dosya sahibinin grubuna ve diger kullanicalara yazma ve okuma izni verir

>chmod 644 <"dosya">: Dosya sahibi 4+2=6 okuma yazma izni, dosya sahibi ile aynı grup 4=4 sadece okuma izini verir, diger kullanicilar 4=4 sadece okuma izni verir

>chmod 755 <"dosya">: Dosya sahibi 4+2+1=7 okuma,yazma ve calistirma izni, dosya sahibi ile aynı grup 4+1 sadece okuma, calistirma izini verir, diger kullanicilar 4+1 okuma, calistirma izni verir

# Dosya ve Dizin sahibini degistirmek

* chown <"kullanici"> <"dosya_dizin">: Dosya sahibini degistirmek icin
* chown -R <"kullanici"> <"dosya_dizin">: Degisligi tum dizin ve dosyalarda yapmak icin "-R" parametresi kullanilir
* chown -R <"kullanici">:<"grup"> <"dosya_dizin">: Dosya sahibini ve grubunu degistirmek icin kullanilir
* chgrp <"grup"> <"dosya_dizin">: dosya grubunu degistirmek icin kullanilir

# Sembolik link olusturma

>bir dosyayi farklı yerlere kopyalamak yerine bir dosyanın birden fazla yerde link olusturup depolama alnimizda tasarruf saglayabiliriz,

* ln -s /path/to/file /path/to/symlink


---------------------------------------------------------------------------

Bu bölümde ise bilgimizi sınamanın vakti geldi, herkese iy şanslar 🍀

>>1): Bulundğumuz dizini görmek için kullandigimiz komut nedir ?<<
=== pwd

>>2): Bir ust dizine geçmek için kullanmamiz gereken komut nedir?<<
=== cd ..

>>3): "rm" komutu dosya silmek için kullanılır<<
(*) Doğru
( ) Yanlış

>>4): Dizin silmek için kullandigimiz komut nedir ?<<
=== rmdir

>>5): Dosya kopyalamak için kullandigimiz komut nedir ?<<
=== cp

>>6): Dosya tasimak için kullandigimiz komut nedir ?<<
=== mv

>>7): Dosya içerigini terminal üzerinden gormek kullandigimiz komut nedir ?<<
=== cat
