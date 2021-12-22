# Jenkins kurulumu

>İlk başta Jenkins kurulumunu gerçekleştirelim ve bunun için aşağıdaki komutu çalıştıralım

```docker run -d -u root --name jenkins \
    -p 8080:8080 -p 50000:50000 \
    -v /root/jenkins:/var/jenkins_home \
    jenkins:1.651.1-alpine```{{execute}}

Bütün konfigürasyon ve plugin ler **_/root/jenkins_** konumunda yer alacaktır, Dashboard için 8080 portunu açtık ve 50000 portunu ise diğer jenkins agent ların iletişimine açtık.

#### Jenkins Dashboard

Jenkins Dashboard a erişim için https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

