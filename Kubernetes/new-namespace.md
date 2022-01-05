Bir namespace oluşturmak tek bir komutla yapılabilir. **dev-service1** namespace oluşturalım:

`kubectl create namespace dev-service1`{{execute}}

Veya diğer Kubernetes kaynakları gibi bir YAML dosyası oluşturup uygulayabilirsiniz.

Look at the file `test-namespace.yaml`{{open}}

### test namespace oluşturma:

`kubectl apply -f /pods-manifests/test-namespace.yaml`{{execute}}

### tüm namespaces leri listeleme:

`kubectl get namespaces`{{execute}}

### Namespace silme:

Bir namespace silmek için iki seçenek vardır, bir yaml dosyası veya tek bir komut kullanabiliriz:

`kubectl delete -f /pods-manifests/test-namespace.yaml`{{execute}}

veya
 
`kubectl delete namespace test`{{execute}}

`test` namespace başarıyla silindiğini kontorl etmek için:

`kubectl get namespaces`{{execute}}

>**Not:**  ```dev-service1``` namespace i silmeyeceğiniz, bunu kurusmuzun ilerleyen ksıımlarında kullancağız.