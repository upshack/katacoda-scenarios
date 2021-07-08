# Dosya Kopyalama

>cp <"kaynak_dosya"> <"hedef_dizin">: cp komutu ile dosya ve dizin kopyalabiliriz, birden fazla dosya/dizin kopyalama imkanida vardir "cp <"kaynak_dosya"> <"kaynak_dosya"> <"hedef_dizin">" şeklinde yapabiliriz

# Dizin Olusturma

>mkdir <"istedigimiz_dizin_ismi">: yeni bir dizin olusturmak icin kullanilan komuttur

# Dosya Tasima

>mv <"kaynak_dosya"> <"hedef_dizin">: Komutu kullanim olarak "cp" komutu ile aynı hiyerarsik temellere sahiptir yani ayni anda birden fazla dosya tasinabilir, ekstra olarak "-i" komutu ile tasıyacagımız dosyanin hedef dizinde ayni ada sahip baska bir dosya olup olmadigini kontorl ettirebilirz, ayni ada sahip dosya var ise bizden dosyanin uzerine yazılıp yazilmamasi icin onay ister

# Dosya ve Dizin Silme

>rm <"hedef_dosya">: Dosyalari silmek için bu komutu kullaniriz, birden fazla dosyayi ayni anda silme imkani verir, "-f" parametresi ile dosyayi silmeye zorlayabilir "-rf" parametresi ile dizin silme islemi yapabilirz

>rmdir <"hedef_dizin">: Hedef dizini silmek icin bu komut kullanilir

# Sembolik link olusturma

>bir dosyayi farklı yerlere kopyalamak yerine bir dosyanın birden fazla yerde link olusturup depolama alnimizda tasarruf saglayabiliriz.

* ln -s /path/to/file /path/to/symlink: kullanımı bu şekildedir.