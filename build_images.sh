#Check if edgeslam-mobile image exists
if ! docker image inspect edgeslam-mobile > /dev/null 2>&1; then
    echo "Image 'edgeslam-mobile' not found. Building..."
    docker build -t edgeslam-mobile -f Dockerfile.mobile ./edgeslam/
else
    echo "Image 'edgeslam-mobile' already exists."
fi
#Check if edgeslam-edge image exists
if ! docker image inspect edgeslam-edge > /dev/null 2>&1; then
    echo "Image 'edgeslam-edge' not found. Building..."
    docker build -t edgeslam-edge -f Dockerfile.edge ./edgeslam/
else
    echo "Image 'edgeslam-edge' already exists."
fi
#Check if planner image exists
if ! docker image inspect planner > /dev/null 2>&1; then
    echo "Image 'planner' not found. Building..."
    docker build -t planner -f Dockerfile ./planner/
else
    echo "Image 'planner' already exists."
fi