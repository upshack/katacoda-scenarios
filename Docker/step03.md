# Docker Komutları

>çalıştırmak için **run** komutu kullanılır
`docker run hello-world`{{execute}}

>lokal sistemimizde bulunan image ı silmek için repository adı veya image ID kullanabiliriz
`docker image rm -f Hello-world`{{execute}}

Şimdi ise Mongo image nı indirelim `Docker pull mongo`{{execute}} ve ardından `Docker run –name mongo -d mongo `{{execute}} komutunu çalıştıralım
>**-d** arka planda çalışmasını sağlar
>**--name** container a isim vermemizi sağlar

>Çalışan containerları listelemek için **ps** komutu kullanılır
`docker ls`{{execute}}

>çalışan container ı duraklatmak için **pause** komutu kullanılır
`docker pause mongo`{{execute}}

>duraklatılmış container devam ettirmek için **unpause** komutu kullanılır
`docker unpause mongo`{{execute}}
