#include "Map.h"
#include <string>

using namespace std;

class MapPointExporter {
    public:
        MapPointExporter(Map* map_ptr);
        void run();
    private:
        Map* map_ptr;
        string filename;
}