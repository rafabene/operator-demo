 kubectl get secret jenkins-operator-credentials-master -o 'jsonpath={.data.user}' | base64 -d
 echo
  kubectl get secret jenkins-operator-credentials-master -o 'jsonpath={.data.password}' | base64 -d