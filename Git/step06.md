# Dosya ve klasör silme

>Proje geliştirirken ihtiyaç olmayan kullanılmayan dosya ve klasörler silinmek istenebilir.
>Silme işlemini kendimiz proje klasörü üzerinden silebiliriz.
>Silme işlemi sonrasında proje durumu sorgulandığında (**git status**) dosyanın silindiği görünür.
>Çalışma alanından silinen dosyanın ayrıca geçiş bölgesi ve depo alanından da silinmesi gerekir.

>Dosyayı geçiş bölgesinden silmek için

* git add silinen.txt
ile tekrar ekleyerek veya

* git rm -rf silinen.txt
ile silerek geçiş bölgesinden silebiliriz.

>Silme işleminden sonra değişikliği depoya da uygulamak için depoyu güncellememiz (**git commit**) gerekir.

* git commit -am "silinecek.txt silindi"
Komut ile dosya silinmek istenirse

* git rm -rf silinecek.txt
komutu kullanılarak çalışma alanı ve geçiş bölgesinde silme işlemi gerçekleştirilir.

>Silme işleminden sonra değişikliği depoya da uygulamak için depoyu güncellememiz (**git commit**) gerekir.

* git commit -am "silinecek.txt silindi"

## Dosya ve klasör ismini değiştirme

>Dosya ismini değiştirme işlemini, kendimiz yaptıktan sonra silme işlemine benzer şekilde geçiş bölgesine eklememiz ve daha sonra depoyu güncellememiz gerekir.
>Komut ile isim değiştirilmek istenirse

* git mv metni.txt metin.txt
komutu kullanılarak çalışma alanı ve geçiş bölgesinde dosya ismi değiştirilir.

>İsim değiştirme işleminden sonra değişikliği depoya da uygulamak için depoyu güncellememiz (**git commit**) gerekir.

* git commit -am "metni.txt ismi değişti"
Bu komut ayrıca dosya taşıma içinde kullanılır.

## Dosya ve klasör kopyalama

>Dosya kopyalama işlemini kendimiz veya

* cp metin.txt yenimetin.txt
bash komutu ile veya

* copy metin.txt yenimetin.txt
cmd komutu ile yapabiliriz.

>Kopyalama işleminden sonra silme işlemine benzer şekilde geçiş bölgesine ekleme ve daha sonra depoyu güncellememiz gerekir.

## Yapılan değişikliği geri almak

>Proje klasörü içerisinde yanlış dosya silme veya yanlış bir değişiklik yaptıktan sonra geçiş bölgesinde bulunan kopyasını geri almak için

* git checkout -- silinen.txt
komutu kullanılır.

>Değişikliğin geri alınabilmesi için dosyanın önceki bir kopyasının geçiş bölgesinde olması gerekir.
>Proje klasöründe ve geçiş bölgesinde yapılan değişikliğin geri alınması için

* git reset HEAD silinen.txt
komutu kullanılır.

>Artık bir önceki işleme ait dosyalar geçiş bölgesine kopyalandı.
>Geçiş bölgesinden çalışma alanına dosyalar

* git checkout -- silinen.txt
komutu ile tekrar geri getirilir.

Böylece çalışma alanından ve geçiş bölgesinden silinen, değiştirilen dosyalar tekrar eski durumuna geri getirilebilir.

## Önceki sürüme dönmek

>Çalışma alanında yapılan değişiklik sonrası dosyalar depoya gönderilmeden geçiş bölgesine ve daha sonra depoya sürümler halinde kaydedilir.
>Bazen hatalı işlemleri geç fark edip önceki kaydedilen sürümlere dönüş yapabiliriz.
>Önceki sürümler dönüş için ilk olarak önceki sürüme ait kimlik bilgisini depoya göze atarak (git log) öğrenmemiz gerekir.

Uzun harf ve sayılardan oluşan kimlik numarasını ayrıca daha kısa

* git log --oneline
komutu ile öğrenebiliriz.

>Dönüş yapılacak sürüme ait kimlik bilgisi not edildikten sonra (örn; 3227776bb554326db322ad9b378290af67624feb veya 3227776)

* git checkout 3227776 -- .
ile tüm proje dosyaları önceki sürüme geri döndürülür.

>Sadece istenilen bir dosya için ise

*git checkout 3227776 -- metin.txt
komutunda olduğu gibi dosya adı yazılması yeterli olacaktır.
