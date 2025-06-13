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
#Check if path-planner image exists
if ! docker image inspect path-planner > /dev/null 2>&1; then
    echo "Image 'path-planner' not found. Building..."
    docker build -t path-planner -f Dockerfile ./path-planner/
else
    echo "Image 'path-planner' already exists."
fi