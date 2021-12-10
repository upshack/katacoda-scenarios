# Döngüler

## Until

>until kullanımı aşağıdaki gibidir.

until [ <şart> ]
do
  <komutlar>
done

>until döngüsünün while döngüsünden farkı şart yanlış olduğu sürece çalışmasıdır.

```sh
#!/bin/bash
A=10

until [ ! $A -gt 0 ]
do
  echo $A
  A=$(($A - 1))
  #A=`expr $A - 1`
done
```{{copy}}

>Döngüler iç içe de kullanılabilir.

```sh
#!/bin/bash
A=0

while [ "$A" -lt 10 ]
do
  B="$A"
  while [ "$B" -ge 0 ]
  do
    echo -n "$B "
    ((B--))
  done
  echo
  ((A++))
done
```{{copy}}

>Döngü adımını atlamak için **continue** anahtar kelimesi kullanılır.

```sh
#!/bin/bash

for SAYI in {1..5}
do
  if [ $SAYI -eq 3 -o $SAYI -eq 5 ]
  then
    continue;
  fi
  echo $SAYI
done
```{{copy}}

>Döngüyü sonlandırmak için **break** anahtar kelimesi kullanılır.

```sh
#!/bin/bash

for SAYI in {1..5}
do
  if [ $SAYI -eq 3 ]
  then
    break;
  fi
  echo $SAYI
done
```{{copy}}

