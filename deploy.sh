## k3d cluster create mycluster

## TODO: Docker build and push
echo "Building the Docker image"
docker build -t api-image .

echo "Attaching a tag to the Docker image"
docker tag api YOUR_DOCKERHUB_NAME/api-image:v1.0

echo "Pushing the image to DockerHub"
docker push YOUR_DOCKERHUB_NAME/api-image:v1.0


## TODO: Deploy k8s manifests

echo "Creating 'myns' namespace for Kubernetes"
kubectl create namespace myns

echo "Applying the k8s manifest..."
kubectl apply -f api.yaml -n myns