# Aritmetik operatörler

>Bash ile aritmetik işlemler yapmak için **let** anahtar kelimesi kullanılır.

```sh
#!/bin/bash
read -p "Birinci sayı:" SAYI1
read -p "İkinci sayı:" SAYI2

let SONUC=SAYI1+SAYI2
echo "Toplama: "$SONUC

let SONUC=SAYI1-SAYI2
echo "Çıkarma: "$SONUC

let SONUC=SAYI1*SAYI2
echo "Çarpama: "$SONUC

let SONUC=SAYI1/SAYI2
echo "Bölme: "$SONUC

let SONUC=SAYI1%SAYI2
echo "Mod: "$SONUC

let SONUC=SAYI1**SAYI2
echo "Üst: "$SONUC

let SONUC++
echo "Arttırma: "$SONUC

let SONUC--
echo "Azaltma: "$SONUC
echo $SONUC
```{{copy}}

>Aritmetik işlemler için expr ve çift parantez de kullanılabilir.

```sh
#!/bin/bash
A=50
B=40

echo `expr $A + $B`
echo $(($A + $B))
```{{copy}}
