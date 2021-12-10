## Arama yapmak

>Proje içinde arama yapmak için

* git grep "aranan kelime"
küçük büyük harf duyarsız arama yapmak için

* git grep -i "aranan kelime"
aranan kelimeyi satır numarasını ile birlikte göstermek için

* git grep -n "aranan kelime"
komut ve parametreleri kullanılır.

## Dosya aramak

>Proje içerisinde dosya aramak için

* git ls-files "dosya_adı"
veya tüm klasörlerde aramak için

* git ls-files "*dosya_adı"
komutu kullanılır.

## Değişiklik yapanları listelemek

>Proje içerisindeki dosyanın kimler tarafından değiştirildiğine, güncellendiğine bakmak için

* git blame dosya_adı

## Depoya eklenmeyecek dosyalar

>Proje geliştirirken çeşitli geliştirme ortamları ve işletim sistemleri tarafından kullanılan dosyalar projeye eklenmek istenmeyebilir.
>Örneğin; Windows işletim sistemi **desktop.ini** dosyası, bu dosya proje klasöründe oluşturulan **.gitignore** isimli dosyaya yazılırsa dosya depoya eklenmeyecektir.

## Sürüm adı vermek
>Geliştirilen projeye sürüm adı vermek için

* git tag surum_adı
komutu kullanılır.

>Komut sonrası en son çalışılan güncellemeye (commit) sürüm numarası verilir.
>Sürümleri listelemek için sadece

* git tag
komutu kullanılır.

>Belirli bir güncellemeye (commit) sürüm numarası vermek için

* git tag surum_adı commitID
komutu kullanılır.

>Sürüm için mesaj eklemek için

* git tag -m "Mesaj" surum_adı
komutu **-m** parametresi ile kullanılır.

>Sürümleri ve mesajları listelemek için

* git tag -l -n
komutu kullanılır.

>Sembolik olarak verilen sürümlere sembolik adı kullanarak geçiş için

* git checkout surum_adı
komutu kullanılabilir.

## Dosyaları geçici olarak kaydetmek

>Yazılım geliştirilirken başka bir projeye geçiş yapmak istenebilir.
>Böyle bir durumda depo güncellenme (commit) işlemi yapılabilir.
>Ancak geliştirme depo güncellemesi yapacak kadar tamamlanmamışsa çalışmayı geçici olarak kaydetmek isteyebiliriz.

>Çalışmayı geçici olarak kaydetmek için

* git stash save "Mesaj"
komutu kullanılır.

>Daha sonra projenin kalan yerinden devam etmek istendiğinde

g* it stash pop
ile geliştirmeye kalındığı yerden devam edilir.

## Proje yedeğini almak

>Projenin sıkıştırılmış olarak yedeğini almak için

* git archive --output yedek.zip master
komutu ile master dalına ait yedek alınır.

## Yardım almak

>Git komutları hakkında detaylı bilgi almak için

* git help
komutu, bir komut hakkında detaylı bilgi almak için

* git help archive
komutunu kullanılır.
