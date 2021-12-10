# Kosullu ifadeler

>Koşul sağlanmadığı durumda else ile başka komutlarda çalıştırılabilir.

```sh
#!/bin/bash
A=50
B=40

if [ $A -eq $B ]
then
 echo "$A ve $B eşittir."
else
 echo "$A ve $B eşit değildir."
fi
```{{copy}}

>Bir koşul ikiden fazla sonuç veriyorsa elif ile başka bir koşulda belirtilebilir.

```sh
#!/bin/bash
A=50
B=40

if [ $A -gt $B ]
then
 echo "$A sayısı $B sayısından büyüktür."
elif [ $A -lt $B ]
then
 echo "$A sayısı $B sayısından küçüktür."
else
 echo "$A ve $B eşittir."
fi
```{{copy}}

>Mantıksal operatörler iki şartı birbirine bağlamak için kullanılır.
>Örneğin; Kullanıcı adı koc ve şifresi unv ise başarıyla giriş yapıldı yazan bir script yazmak istersek **-a**  veya **&&** mantıksal operatörlerini kullanabiliriz.

```sh
#!/bin/bash
read -p "Adınız:" ADI
read -sp "Şifreniz:" SIFRE
echo
if [ $ADI = "linus" ] && [ $SIFRE = "torvalds" ]
#if [ $ADI = "linus" -a $SIFRE = "torvalds" ]
then
 echo "Başarıyla giriş yapıldı."
else
 echo "Kullanıcı adı veya şifre yanlış görünüyor."
fi
```{{copy}}

>Birden fazla koşul olması kodları karmaşık hale getirir, Bu durumda case yapısı kullanılabilir.
>Temel kullanımı aşağıdaki gibidir.

case <değişken-değer> in
<durum-1>) <komutlar>
;;
<durum-2>) <komutlar>
;;
esac

>Örnek kullanım aşağıdaki gibidir.

```sh
#!/bin/bash

read -p "Haftanın kaçıncı günü:" GUN

case $GUN in
    1) echo "Pazartesi"
    ;;
    2) echo "Salı"
    ;;
    3) echo "Çarşamba"
    ;;
    4) echo "Perşembe"
    ;;
    5) echo "Cuma"
    ;;
    6) echo "Cumartesi"
    ;;
    7) echo "Pazar"
    ;;
    *) echo "Hatalı bir gün"
    ;;
esac
```{{copy}}

>Bash menü veya seçme işlemlerinde kullanmak için select yapısı yer alır.
>Örnek kullanım aşağıdaki gibidir.

```sh
#!/bin/bash
read -p "Adınız:" ADI
read -sp "Şifreniz:" SIFRE
echo
if [ $ADI = "koc" ] && [ $SIFRE = "unv" ]
#if [ $ADI = "koc" -a $SIFRE = "unv" ]
then
 echo "Başarıyla giriş yapıldı."
else
 echo "Kullanıcı adı veya şifre yanlış görünüyor."
fi
```{{copy}}

>Birden fazla koşul olması kodları karmaşık hale getirir, Bu durumda case yapısı kullanılabilir.
>Temel kullanımı aşağıdaki gibidir.

case <değişken-değer> in
durum-1) komutlar
;;
durum-2) komutlar
;;
esac

>Örnek kullanım aşağıdaki gibidir.

```sh
#!/bin/bash

PS3="İşlem:"

select ISLEM in yedekal yedekyukle hiçbiri çıkış
do
   case $ISLEM in
      yedekal) 
         echo "Yedek alma işlemi"
      ;;
      yedekyukle)
         echo "Yedek yükleme işlemi"
      ;;
      hiçbiri|çıkış) 
         break
      ;;
      *) echo "Hatalı işlem"
      ;;
   esac
done

```{{copy}}
