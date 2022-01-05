**dev-service1** namespace inde çalışan `mutlupanda` pod umuzu güncelleyeceğiz ve bunun için ```pod-update.yaml``` konfigürasyonunu uygulamanız gerekiyor.

dosyamıza bakalım `/pod-update.yaml`{{open}}:

1. Metadata bölümüne pod label ları eklendi
2. Container image has been updated in the containers section. Notice that you can specify image tags if not, latest is used.
3. container bölümüne Pod portları eklendi

### Mevcut Pod'u güncelleme

Bir pod, bir yaml dosyası uygulanarak güncellenebilir, bu nedenle, yukarıdaki değişiklikleri içeren ```pod-update.yaml``` dosyamızı uygulayalım:

`kubectl apply -f /pods-manifests/pod-update.yaml`{{execute}}

### İşe yaradı mı? Ne oldu?

Aldığımız hata aşağıdaki gibidir:

```
The Pod "happypanda" is invalid: spec: Forbidden: pod updates may not change fields other than `spec.containers[*].image`, `spec.initContainers[*].image`, `spec.activeDeadlineSeconds` or `spec.tolerations` (only additions to existing tolerations)
```

<p style="text-align:center;"><img src="/contino/courses/kubernetes-basic-concepts/pods/assets/ports.png" alt="Ports"></p>

In Kubernetes, there are some fields that can't be updated. The Kubernetes API Reference can be helpful to highlight some of the API restrictions and the available object specification.

Bu yanlış güncellemeleri güncellemek için pod'u silip tekrar oluşturmalıyız.
Bu durumları diğer bölümde ele alacağımız "deployments" ile atlayabiliriz.

### Vurgulanan sorunu düzeltme

Pod silme:

`kubectl delete pod happypanda -n dev-service1`{{execute}}

YAML dosyasını uygulama:

`kubectl apply -f /pods-manifests/pod-update.yaml`{{execute}}

Buna bir bak:

`kubectl describe pod happypanda --namespace dev-service1`{{execute}}

Happypanda pod umuz artık label, port özellikleri ve yeni bir container image ile çalışıyor!

`kubectl get pod -n dev-service1`{{execute}}

### Temizleme

Pod silme:

`kubectl delete pod happypanda -n dev-service1`{{execute}}

Namespace silme:

`kubectl delete namespace dev-service1`{{execute}}