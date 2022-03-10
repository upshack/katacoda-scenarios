# Jenkins kurulumu

>İlk başta Jenkins kurulumunu gerçekleştirelim ve bunun için aşağıdaki komutu çalıştıralım.

```docker run -d -u root --name jenkins \
-p 8080:8080 -p 50000:50000 \
-v /root/jenkins_2112:/var/jenkins_home \
jenkins/jenkins:lts-jdk11```{{execute}}

>Daha sonrasında dashboard sekmesine tıklayıp jenkins arayüzünün gelmesini bekleyelim, arayüz geldikten sonra **Administrator password** bilgisini `cat /root/jenkins_2112/secrets/initialAdminPassword`{{execute}} komutu ile bulduktan sonra kopyalayıp ilgili bölüme tarayıcı üzerinde ilgili bölüme yapıştıralım.

>şimdi ise **install suggested plugins** diyip kurulum işlemini başlatalım.

>kurulum işlemi tamamlandıktan sonra bizden bir hesap oluşturmamızı isteyecektir, burada isterseniz oluşturabilir veya admin olarak devam et seçeneğini seçebilirsiniz.

#### Jenkins Dashboard

Jenkins Dashboard a erişim için https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/