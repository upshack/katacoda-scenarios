**Namespaces**, iş yüklerini birbirinden ayırmak ve size kaynak kısıtlamaları ayarlama yeteneği vermek için bölmeleri yalıtır. Namespace, düşünebileceğiniz farklı uygulama ortamlarıyla eşleyebilirsiniz.
## Kubernetes namespaces 

İlk olarak Kubernetes namespace lere bir göz atalım:

`kubectl get namespace`{{execute}}

Varsayılan olarak Kubernetes, önceden tanımlanmış birkaç namespace ile birlikte gelir. Onları burada görebiliriz:

<p style="text-align:center;"><img src="/contino/courses/kubernetes/pods/assets/namespaces.png" alt="Namespaces"></p>

### kube-system

Bu namespace, Kubernetes sistemi tarafından oluşturulan nesnelere sahiptir:

`kubectl get pods -n kube-system; echo`{{execute}}

Bu namespace içindeki bölmeler, daha sonra konuşacağımız Kubernetes ile yerel olarak entegre denetleyiciler ve eklentiler gibi Kubernetes'in çalışması için gereklidir.

> **Not:** Genellikle, her bulut sağlayıcısı bu namespace lerde belirli uygulama bölmeleri çalıştırır - bu nedenle, kube-system namespace i bulut sağlayıcıları arasında farklılık gösterirse endişelenmeyin.

### kube-public

Bu namespace, Kubernetes cluster için [önyükleme ve sertifika](https://kubernetes.io/docs/reference/access-authn-authz/bootstrap-tokens/) yapılandırmasını içeren bir "ConfigMap" vardır:

`kubectl get pods -n kube-public; echo`{{execute}}

Bu namespace de çalışan hiçbir şey görmeyeceksiniz, ancak bir "cluster-info" ConfigMap görebiliriz:

`kubectl get configmap -n kube-public cluster-info -o yaml; echo`{{execute}}

Ek olarak, bu namespace, tüm cluster boyunca görünür ve okunabilir olması gereken bir nesneyi çalıştırmak için kullanılan bir konum olarak ele alınabilir.

### default

Namespace belirtilmeden oluşturulan tüm nesneler, varsayılan Namespace otomatik olarak oluşturulacaktır.

Bu namespace başlangıçta boştur ve herhangi bir nesne içermez:

`kubectl get pods -n default; echo`{{execute}}

"Default" Namespace hakkında not edilmesi gereken bir şey, Kubernetes kümesindeki diğer namespace lerin aksine silinememesidir.