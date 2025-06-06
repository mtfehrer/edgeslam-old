#Check if we already have SDK
cd build
if [ ! -f "./ZED_SDK_Ubuntu18_cuda12.1_v4.0.8.zstd.run" ]; then
    wget https://download.stereolabs.com/zedsdk/4.0/cu121/ubuntu18
else
    echo "SDK already downloaded."
fi
#Check if edgeslam image exists
if ! docker image inspect edgeslam > /dev/null 2>&1; then
    echo "Image 'edgeslam' not found. Building..."
    docker build -t edgeslam -f Dockerfile .
else
    echo "Image 'edgeslam' already exists."
fi
#Check if edgeslam-new image exists
if ! docker image inspect edgeslam-new > /dev/null 2>&1; then
    echo "Image 'edgeslam-new' not found. Building..."
    docker build -t edgeslam-new -f Dockerfile.new .
else
    echo "Image 'edgeslam-new' already exists."
fi