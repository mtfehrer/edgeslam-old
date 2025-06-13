#include "Map.h"

class MapPointExporter {
    public:
        MapPointExporter(Map* map_ptr) {
            this->map_ptr = map_ptr;
        }

        void run() {
            while (1) {
                unique_lock<mutex> lock(map_ptr->newMutexMap);
                //export map points to file
                

                map_ptr->newMutexMap.clear();

                sleep(1);
            }
        }
    private:
        Map* map_ptr
}