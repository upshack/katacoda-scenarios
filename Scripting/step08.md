# Fonksiyonlar

>Komutları düzenli hale getirmek ve yazılan komutları tekrar kullanabilmek için fonksiyon yapısı kullanılır.
>Fonksiyonlar aşağıdaki gibi tanımlanır.

fonksiyon_adi () {
  <komutlar>
}

>veya

function fonksiyon_adi {
  <komutlar>
}

>Fonksiyon isimleri anlaşılabilir ve işlevini belirten bir isim kullanmak faydalı olacaktır.

```sh
#!/bin/bash
adi_yazdir () {
echo "linus torvalds"
}

adi_yazdir
adi_yazdir
```{{copy}}

>Fonksiyonlar kullanıldığı satırdan önce tanımlanmalıdır.
>Fonksiyonlar parametrelerine $1, $2, $n ile erişilir.

```sh
#!/bin/bash
yazdir () {
echo "Gönderilen değer:" $1
}

yazdir "Merhaba dünya"
```{{copy}}

>Değer döndürmek için return anahtar kelimesi kullanılır ve $? ile döndürülen değere ulaşılır.

```sh
#!/bin/bash
topla () {
  return `expr $1 + $2`
}

topla 10 20
echo $?
```{{copy}}

>Fonksiyon içinde tanımlanan değişkenlere fonksiyon dışından erişilebilir.

```sh
#!/bin/bash
topla () {
  ADI="linus torvalds"
}

topla
echo $ADI
```{{copy}}

>Bu durumun önüne geçmek için local anahtar kelimesi kullanılır.

```sh
#!/bin/bash
topla () {
  local ADI="linus torvalds"
}

topla
echo $ADI
```{{copy}}

Bash içinde yer alan değişken, operatör, koşullu ifadeler, döngüler, fonksiyonlar gibi özellikler sayesinde özel Bash script dosyaları hazırlayabilir ve kullanabilirsiniz.
Yazılan Bash script içinde Linux komut satırında kullanılan tüm komutlar kullanılabilir.
Bash script içinde Linux komutlarını kullanarak yedekleme, yedek alma, dosya gönderme, sistem durumu gibi çeşitli araçlar yapabilirsiniz.
