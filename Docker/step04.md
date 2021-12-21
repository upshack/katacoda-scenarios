# Docker komutları
 
>İmage ı incelemek için *inspect* komutu kullanılır
`docker imagage inspect mongo`{{execute}}

şimdi ise arka planda çalışan container ları görmek için `docker ps`{{execute}} komutunu kullanalım ve mongo contaienr ın çalıştığını teyit edelim

>container ı durdurmak için **stop** komutu kullanılır
`docker stop mongo`{{execute}}

şimdi tekrardan çalışan container ların durumunu teyir etmek için **ps** komutunu kullandığımızda oluşan listede mongo kayboldu ama inaktif containerları görmek için **-a** parametresi ile kullanırsak görebiliriz `docker ps -a`{{execute}} 

>tüm container ların ID bilgisini almak için **-a** parametresi kullanılır
`docker ps -a -q`{{execute}}

>**history** komutu image’in katmansal yapıssındaki değişiklikleri gösterir
`docker history mongo`{{execute}}