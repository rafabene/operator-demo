kubectl patch deployment seed-job-agent-master -p '{"spec":{"template":{"spec":{"containers":[{"name":"jnlp","image":"jenkins/inbound-agent:latest-jdk11"}]}}}}'
open http://localhost:8080 
kubectl port-forward jenkins-master 8080:8080
