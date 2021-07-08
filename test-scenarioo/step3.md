# Dosya olusturma

>touch <"dosya_adi">: `touch deneme.txt`{{execute}} komutu ile dosya olusturulur

* .dosya_adi: Dosyanin basine "." koyarsaniz gizli dosya olusturmus olursunuz, normal "ls" komutu ile gorulmez ama "ls -la" komutu ile bu tarz dosyalari gorebiliriniz 

# Dosya okuma

>cat <"dosya_adi">: bu komut ile dosylarin ciktisini termina uzerinden gorebiliriz, bir kac farkli parametresi vardir. "-n" parametresi satir sayılarini gostererek ekrana yazdirir, "cat <"dosya_adi_1"> <"dosya_adi_2">" seklinde aynianda 2 dosyayi gosterir, daha fazlasini ogrenmek icin yardim komutlarini kullanabilirsiniz. `cat --help`{{execute}}

# Girdi/Cikti Komutlari

> ">" : çıktıyı dosyaya yazdirma `ls > deneme.txt`{{execute}}

> ">>" : çıktıyı dosyanin sonuna yazdirma `ls >> deneme.txt`{{execute}}

> "<" : girdiyi yönlendirme, bu işlemde dosya icerisindekileri alfabetik olarak siralar `sort < deneme.txt`{{execute}}

# Dosyalari Manipule Etme

> wc <"dosya_ismi">: bize dosya içerigi hakkinda bilgi verir ve bir kac farkli parametresi vardir, karakter icin -c,kelimeler icin -w, satirlar icin -l argumani kullanilir.

> less <"dosya_adi">: Dosyanin tamamini ekrana yazdirmak yerine bellir bir kısmini ekrana yazdirir ve yön tuşları ile ekrana aşşağı ve yukarı hareket ederek metni görebiliriz, çıkış yapmak için "q" tuşuna basmak yeterlidir.

> grep <"parametreler"> <"Aranacak_Kelime"> <"Dosya_adi">: Komutu ile dosya içerisinde arama yapabiliriz. Grep komutunun büyük küçük harf duyarlılığı vardır ve eğer bu duyarlılığı ortadan kaldırmak istiyorsak "-i" parametresi ile bu duyarlılığı geçersiz bırakabiliriz, dosya içerisinde istenilen kelimenin aranamasını istiyorsak "-r" parametresini kullanabiliriz.

* `grep a /etc/apt/sources.list`{{execute}}
* `grep -i a /etc/apt/sources.list`{{execute}}
* `grep -r an /etc/apt/sources.list`{{execute}}