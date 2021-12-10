# Döngüler

>Tekrar eden işlemlerde for, while ve until döngüleri kullanılır.

## For dongusu
>for kullanımı aşağıdaki gibidir.

for degisken in <liste>
do
 <komutlar>
done

>Örnek kullanım aşağıdaki gibidir.

```sh
#!/bin/bash

for SIRA in {1..10}
do
 echo $SIRA
done
```{{copy}}

>Dizi elemanlarını listelemek için aşağıdaki komut kullanılabilir.

```sh
#!/bin/bash
KISILER=("Onur" "Busra" "Melih" "Koray");

for KISI in ${KISILER[*]}
do
 echo $KISI
done
```{{copy}}

>for döngüsünün geniş bir kullanım şekli vardır.

## While dongusu 

>while kullanımı aşağıdaki gibidir.

while [ <şart> ]
do
  <komutlar>
done

>Örnek kullanım aşağıdaki gibidir.

```sh
#!/bin/bash
A=10

while [ $A -gt 0 ]
do
  echo $A
  A=$(($A - 1))
  #A=`expr $A - 1`
done
```{{copy}}

