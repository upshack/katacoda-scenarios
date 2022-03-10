[**Pod**](https://kubernetes.io/docs/concepts/workloads/pods/pod/) Kubernetes'te sahip olduğumuz en küçük konsepttir ve tek bir kapsayıcı ile temsil edilmez. Podlar bir veya daha fazla kapsayıcıdan oluşur.

[**Namespace**](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/). Kubernetes dağıtımınızın içindeki sanal bir küme olarak düşünebilirsiniz. Tek bir Kubernetes kümesinin içinde birden çok Namespace olabilir ve bunların her biri birbirinden yalıtılmıştır. Tüm bölmeler belirli bir Namespace alanında çalıştığından, bölmelerinizin organizasyonu, güvenliği ve performansı konusunda ekibinize yardımcı olabilirler.

[**Label**](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/), nesnelere nitelik sağlamak için kullanılan bir anahtar/değer çiftidir. pod ların ne yaptığı üzerinde daha ayrıntılı bir denetime sahip olabileceğiniz için, Label lardan yararlanmak iyi bir uygulamadır. Label belirli nesneleri sorgulamak için kullanılabilir.

<p style="text-align:center;"><img src="/contino/courses/kubernetes/pods/assets/pod.png" alt="Pod"></p>

