## Nginx Service

### Start the Nginx Service by executing below commands
    ```shellscript
        > kubectl create -f nginx-service/nginx-pod.yaml # Create POD
        > kubectl create -f nginx-service/nginx-service.yaml # Create Service
    ```

    (Or)

    ```shellscript
        > kubectl create -f nginx-service/nginx-deployment.yaml # Create Deployment
        > kubectl create -f nginx-service/nginx-service.yaml # Create Service
    ```

#### Get the status by exec below commands

    ```shellscript
        > kubectl get pods # Get status of pods
        > kubectl get pods, svc # Get status of pods & service

        > kubectl get deployments # Get status of deployments
        > kubectl get deployments, svc # Get status of deployments & service

        > kubectl get all # Get status of all objects

        > minikube ip # Get ip address of minikube to access
        > minikube service my-nginx-svc --url # Get URL for nginx service
    ```

### Other Useful commands to debug and delete

    ```shellscript
        > kubectl describe pod <pod_name>
        > kubectl delete pod <pod_name>

        > kubectl describe deployments <deployment_name>
        > kubectl delete deployments <deployment_name>

        > kubectl describe svc <serpodvice_name>
        > kubectl delete svc <serpodvice_name>
    ```