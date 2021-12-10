# Bash Scripting

## Degiskenler

>İlk bash dosyamızı yazmaya başlamak için **#!/bin/bash** komutunu ilk satıra ekleyerek ilk adımımızı atalım
>Şimdi ise ekrana yazı yazdırma işelemi yapalım, bunun için **echo** komutu kullanılır ve bir klasik başlangıç yapmak için **echo "Hello world!"** yazdıralım
>Şimdi ise kullanıcı girdi işlemlerini geçelim, bunun için **$** işareti kullanılır ve “$1”, “$2”, … şeklinde değişkenleri çoğaltabiliriz ama bu örnekte “$@” kullanacağız, **@** işareti bütün kullanıcı girdilerini toplamıdır.

```sh
#!/bin/bash
echo "Hello world!"
echo "Hoşgeldin 😊 " 
echo $@
```{{copy}}

>şimdi ise oluşturduğumuz bash scriptine **chmod +x <dosya_adi>** şeklinde yetkilendirme işlemini yapalım bu sayede tüm kullanıcılar için çalıştırma yetkisi vermiş olduk
>yorum satırı eklemek için **#** kullanılır

```sh
#!/bin/bash
#aşşağıda değişkeni ekrana yazdırmayı gördük
UNV=”koç unv”
Echo $UNV
```{{copy}}

>Değişkenleri çift tırnak ve tek tırnak içerisinde tanımlayabiliriz ve çift tırnak kullandığımızda değişken içerisindeki ifade bash tarafından yorumlanır
```sh
#!/bin/bash
UNV="Koç $((5 + 7))"
echo $UNV
```{{copy}}

>değişkenin uzunluğunu öğrenmek için **$(#<degisken_adi>)** şeklinde kullanabiliriz
```sh
#!/bin/bash
UNV=”koç unv”
Echo $UNV - ${#UNV}
```{{copy}}

>Eğer değişkenin sadece okunabilir olmasını istiyorsak **readonly** anahtar kelimesi kullanabiliriz
```sh
#!/bin/bash
readonly UNV=”koç unv”
UNV="koç üniversitesi" # Uyarı verir.
echo "Selam, $UNV"
```{{copy}}

>Tanımlanan değişkeni kaldırmak için **unset** anahtar kelimesi kullanılır.
```sh
#!/bin/bash
UNV="koç unv"
unset UNV
echo "Selam, $UNV"
```{{copy}}


