#include "Map.h"
#include "MapPoint.h"
#include <opencv2/core/core.hpp>
#include <string>
#include <fstream>
#include <iostream>
#include <unistd.h>

using namespace std;

class MapPointExporter {
    public:
        MapPointExporter(Map* map_ptr) {
            this->map_ptr = map_ptr;
        }

        void run() {
            while (1) {
                ofstream outputFile(filename);
                if (!outputFile.is_open()) {
                    cerr << "Error: Could not open the file " << filename << endl;
                    return 1;
                }

                unique_lock<mutex> lock(map_ptr->mspMutexMap);
                for (MapPoint mapPoint : map_ptr->mspMapPoints) {
                    cv::Mat p = mapPoint.getWorldPos();
                    outputFile << p[0] << "," << p[1] << "," << p[2] << "\n";
                }
                unique_lock<mutex> unlock(map_ptr->mspMutexMap);

                outputFile.close();

                sleep(1);
            }
        }
    private:
        Map* map_ptr;
        string filename = "/home/edgeslam/points.csv";
}