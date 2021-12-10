# Değişkenler 

> Bash script ile işletim sistemine ait değişkenlere de erişilebilir.

```sh
#!/bin/bash
echo "Kullanıcı:" $USER
echo "Dizin:" $HOME
```{{copy}}

>Değişkenlerde komut sonuçları saklanabilir.

```sh
#!/bin/bash
#SONUC=$(ls)
#SONUC=$(date +%Y-%m-%d)
#veya
SONUC=`ls`
echo $SONUC
```{{copy}}

>Kullanıcıdan değer almak için read anahtar kelimesi kullanılır.

```sh
#!/bin/bash
read
echo "Yazılan değer:" $REPLY
```{{copy}}

>Alınan değeri değişkene aktarmak için read anahtar kelimesine değişken adının yazmak yeterli olacaktır.

```sh
#!/bin/bash
echo "Adınız nedir?"
read ADI
echo "Hoşgeldin, $ADI"
```{{copy}}

>Dizi tanımlamak için aşağıdaki yöntemlerden birisi kullanılır.

```sh
#!/bin/bash
OGRENCI=("Onur" "Ali" "Murat" "Yasin")
OGRENCI _SAYISI=${#OGRENCI[@]}  # ogrenci sayısı
echo $OGRENCI _SAYISI
echo ${OGRENCI[3]} # 4.ogrenci
echo ${OGRENCI[*]} # tum ogrenciler
```{{copy}}
