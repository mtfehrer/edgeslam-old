#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include "Map.h"

class PointCloudServer {
    public:
        PointCloudServer(Map* map_ptr) {
            this->map_ptr = map_ptr;
        }
        run() {

        }
    private:
        Map* map_ptr
}