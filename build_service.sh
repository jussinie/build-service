echo "Please insert Github address"
read url
echo ""
echo "Please give the folder name from url"
read folder
echo ""
echo "Cloning git..."
sleep 1

git clone $url

cd $folder

sleep 1

echo ""
echo "Give Docker Hub repository name"

read repo

echo ""
echo "Give Docker image name"

read image

echo "Starting Docker build..."

DOCKERVAR="${repo}/${image}"

docker build . -t $DOCKERVAR

echo ""

sleep 1

echo "Starting Docker push..."

docker login

docker push $DOCKERVAR 