# Dosya olusturma

>touch <"dosya_adi">: `touch deneme.txt`{{execute}} komutu ile dosya olusturulur

* .dosya_adi: Dosyanin basine "." koyarsaniz gizli dosya olusturmus olursunuz, normal "ls" komutu ile gorulmez ama "ls -la" komutu ile bu tarz dosyalari gorebiliriniz 

# Dosya okuma

>cat <"dosya_adi">: bu komut ile dosylarin ciktisini termina uzerinden gorebiliriz, bir kac farkli parametresi vardir. "-n" parametresi satir sayılarini gostererek ekrana yazdirir, "cat <"dosya_adi_1"> <"dosya_adi_2">" seklinde aynianda 2 dosyayi gosterir, daha fazlasini ogrenmek icin yardim komutlarini kullanabilirsiniz. `cat --help`{{execute}}

# Girdi/Cikti Komutlari

> ">" : çıktıyı dosyaya yazdirma `ls > deneme.txt`{{execute}}

> ">>" : çıktıyı dosyanin sonuna yazdirma `ls >> deneme.txt`{{execute}}

> "<" : girdiyi yönlendirme, bu işlemde dosya icerisindekileri alfabetik olarak siralar `sort < deneme.txt`{{execute}}