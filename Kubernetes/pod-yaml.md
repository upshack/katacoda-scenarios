
Kubernetes API ile iletişim kurmak için ```kubectl``` adlı bir CLI aracı kullanıyoruz. Büyük olasılıkla, cluster yapılandırması sağlamak ve nesneler oluşturmak için YAML biçimindeki yapılandırma dosyalarından da yararlanacaksınız.

Bu YAML dosyasında, Kubernetes'e Pod'umuzu nasıl dağıtacağını ve çalıştıracağını söylemek için yapılandırmamızı yazacağız.

hadi başlayalım!

## Kubernetes API Referans 

Her Kubernetes nesnesinin bir API belirtimi vardır ve bu belirtim bir YAML dosyasına yazılabilir.

Bu alıştırmada, bir Pod oluşturmak istiyoruz ve her şeyden önce, [Kubernetes API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#pod-v1-core) Pod'un tam özelliklerini kontrol edelim

Kubernetes API Reference, Pod'un tanımlamalarını YAML formatında yazmamız için gerekli bilgileri sağlar.

Dosyaya bir göz atın `pod.yaml`{{open}}

pod ismi ```happypanda``` ve docker hub üzerinden `nginx` contianer iamge i deploy eder

## Pod oluşturma

```kubectl``` CLI aracını kullanarak Kubernetes API'sinin kimliğini doğrularız ve Pod tanımlamalarını Kubernetes cluster ına uygularız:

`kubectl apply -f /pods-manifests/pod.yaml`{{execute}}

## Doğrulama

`Happypanda` pod unun çalışıp çalışmadığını doğrulamak için aşağıdaki komutu çalıştırmamız gerekiyor:

`kubectl get pods`{{execute}}

tanımlamamızda herhangi bir namespace yapılandırması ayarlamadığımız için `mutlupanda` pod unda namespace kısmında `Default` çalıştığına dikkat edin.

## Pod silme

pod ları YAML dosyası ile veya tek bir komut ile silebiliriz:

`kubectl delete -f /pods-manifests/pod.yaml`{{execute}}

veya

`kubectl delete pod happypanda`{{execute}}

`happypanda` pod u silme işlemini teyit etmek için:

`kubectl get pods`{{execute}}
