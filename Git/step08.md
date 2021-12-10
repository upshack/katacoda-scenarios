##Uzak depoyu indirmek

>Uzak depoda bulunan projeyi indirmek için

* git clone uzak-depo-adresi
komutu kullanılır.

>Örneğin; Linux çekirdeğini (github.com/torvalds/linux) indirmek için

* git clone https://github.com/torvalds/linux.git
komutu kullanılır.

>Örneğin; Linux çekirdek uygulamalarını (git.kernel.org) indirmek için

* git clone https://git.kernel.org/pub/scm/bluetooth/bluez-hcidump.git
komutu kullanılır.

##Uzak depo eklemek

>Mevcut oluşturulmuş bir projeye uzak depo eklemek için

* git remote add depo-adi uzak-depo-adresi
komutu kullanılır.

>Örneğin; Linux çekirdeğini (github.com/torvalds/linux) uzak depo olarak eklemek için

* git remote add linuxKernel https://github.com/torvalds/linux.git
komutu kullanılır.

>Bir projeye birden fazla uzak depo eklenebilir.
>Eklenen uzak depoları listelemek için

* git remote
veya detaylı listelemek için

* git remote -v
komutu kullanılır.

##Uzak depo silmek

>Eklenmiş olan uzak depoyu silmek için

* git remote rm depo-adi
komutu kullanılır.

Yukarıda eklenen linuxKernel isimli uzak depoyu silmek için

* git remote rm linuxKernel
komutu kullanılır.

##Uzak depoya dosya göndermek

>Uzak depo ekleme işleminden sonra proje üzerinde çeşitli değişiklik yaptıktan sonra tekrar uzak depoya dosyaları göndermek için

* git push
komutu kullanılır.

>Komut sonrası kullanılan uzak depoya göre kullanıcı adı ve şifresi istenebilir.
>Birden fazla uzak depo eklendiğinde

* git push uzak-depo
uzak depo adıyla gönderilir.

>Dosya gönderme işlemi varsayılan olarak ana dal (master) için yapılır.
>Tüm kopyaları (branch) göndermek için

* git push --all
komutu kullanılır.

>Sadece belirli bir kopyayı (branch) göndermek için

* git push uzak-depo kopya-branch-adi
komutu kullanılır.

##Uzak depoyu güncellemek

>Uzak depo diğer ekip üyeleri tarafından herhangi bir güncelleme eklendiğinde bizimde bu güncellemeyi çalışma alanına indirmemiz gerekebilir.
>Güncelleme olup olmadığına bakmak için

* git fetch
komutu kullanılır.

Daha sonra

* git merge
komutu ile uzak depodaki güncelleme yerel depo ve çalışma alanına uygulanır.

>Uzak depoda güncelleme varsa ve yerel depo ile çalışma alanı güncellenmek istenirse sadece

* git pull
komutunu kullanmak yeterli olacaktır.