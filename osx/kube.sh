echo "Detect Environment"

echo " "$(getconf LONG_BIT)"-bit architecture"
python --version
echo " "
echo " This should now see if yoai is installed and running"
echo " if not, it will pull the repo:  https://git.io/psyai"
echo " Once repo is local detect, it will copy alias and init"
echo " then it runs additional inspect command"
# get conditional check if kubernetes live:
# run and install 
# http://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

# run minikube:
# minikube start
# after it starts, it detects its own repo, git clones and unzips more stuff




if [[ "$OSTYPE" == "darwin"* ]]; then
    
    # Install Mac OSX
	echo " Runnign mac os "
	curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/darwin/amd64/kubectl
   	chmod +x ./kubectl
   	sudo mv ./kubectl /usr/local/bin/kubectl

   	# Install minikube  Mac OS X
   	curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.2/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
   	

   	# Install Kompose Mac OS X
   	curl -L https://github.com/kubernetes/kompose/releases/download/v1.10.0/kompose-darwin-amd64 -o kompose        
   	chmod +x kompose
   	sudo mv ./kompose /usr/local/bin/kompose
	source <(kompose completion bash)

else
	# Linux
	echo " Default Running linux "
	# cube CTL 
	curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
	
	curl -L https://github.com/kubernetes/kompose/releases/download/v1.10.0/kompose-linux-amd64 -o kompose
fi




# Starting local Kubernetes cluster...
minikube start

# run default test fleet 
# kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.4 --port=8080
# kubectl expose deployment hello-minikube --type=NodePort

# install   Autocompletion for kubectl
source <(kubectl completion bash) # setup autocomplete in bash, bash-completion package should be installed first.


# We have now launched an echoserver pod but we have to wait until the pod is up before curling/accessing it
# via the exposed service.
# To check whether the pod is up and running we can use the following:
kubectl get pod



