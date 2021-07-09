//opencv headerlari
#include <opencv2/opencv.hpp>
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/videoio.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>
#include <sstream>
#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <ctime>
#include <memory>
#include <unistd.h>
#include <tr1/memory>


#define WINDOW_NAME "CSE396"
#define TRAINED_SVM "/home/sveyda/Desktop/SvmTrain&Detect/output.yml"
#define	IMAGE_SIZE Size(40, 40)


using namespace cv;
using namespace cv::ml;
using namespace std;


void get_svm_detector(const Ptr<SVM>& svm, vector< float > & hog_detector);
void draw_locations(Mat & img, const vector< Rect > & locations, const Scalar & color);
void detect(Mat& img,Mat& draw);
void train();
Ptr<SVM> svm;
HOGDescriptor hog;

int main(int argc, char** argv) {
    Mat img,draw;
    VideoCapture video;
    video.open(0);
    video.set(CV_CAP_PROP_FRAME_WIDTH, 480);
    video.set(CV_CAP_PROP_FRAME_HEIGHT, 240);
   // video.set(CV_CAP_PROP_CONVERT_RGB , false);
    if (!video.isOpened()) {
        cerr << "Unable to open the device" << endl;
        exit(-1);
    }

    hog.winSize = IMAGE_SIZE;
    svm = StatModel::load<SVM>(TRAINED_SVM); //Cin ali ymlsini yukle
    vector< float > hog_detector;    // Set the trained svm to my_hog
    get_svm_detector(svm, hog_detector);
    hog.setSVMDetector(hog_detector);

    bool end_of_process = false;
    waitKey(1000);
    while (!end_of_process) {

        try
        {
            video >> img;
            detect(img,draw);

            waitKey(33);
        }
        catch (Exception& e)
        {
            const char* err_msg = e.what();
            std::cout << "exception caught: imshow:\n" << err_msg << std::endl;
        }
       // detect(IMAGE_SIZE,img,draw);
        /*if (!img.empty())
            imshow(WINDOW_NAME, draw);
            waitKey(50);*/
    }



	return 0;
}

void detect(Mat& img,Mat& draw)
{
    vector< Rect > locations;
    draw = img.clone();
    locations.clear();
    hog.detectMultiScale(img, locations);
    draw_locations(draw, locations, Scalar(255, 0, 0));
    std::cerr<<"Found num:"<<locations.size();
}

void get_svm_detector(const Ptr<SVM>& svm, vector< float > & hog_detector)
{

    Mat sv = svm->getSupportVectors();
    const int sv_total = sv.rows;

    Mat alpha, svidx;
    double rho = svm->getDecisionFunction(0, alpha, svidx);

    CV_Assert(alpha.total() == 1 && svidx.total() == 1 && sv_total == 1);
    CV_Assert((alpha.type() == CV_64F && alpha.at<double>(0) == 1.) ||
              (alpha.type() == CV_32F && alpha.at<float>(0) == 1.f));
    CV_Assert(sv.type() == CV_32F);
    hog_detector.clear();

    hog_detector.resize(sv.cols + 1);
    memcpy(&hog_detector[0], sv.ptr(), sv.cols*sizeof(hog_detector[0]));
    hog_detector[sv.cols] = (float)-rho;
}


void draw_locations(Mat & img, const vector< Rect > & locations, const Scalar & color)
{
	if (!locations.empty())
	{
		vector< Rect >::const_iterator loc = locations.begin();
		vector< Rect >::const_iterator end = locations.end();
		for (; loc != end; ++loc) {
			rectangle(img, *loc, color, 2);
		}
        imshow("window", img);
	}
}

