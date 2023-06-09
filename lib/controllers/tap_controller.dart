import 'package:get/get.dart';

class TapController extends GetxController {

    int _x = 1;
    int get x => _x;

    RxInt _y = 1.obs;
    RxInt get y => _y;

    RxInt _z = 0.obs;
    int get z => _z.value;

    void addXY(){
      _z.value=_x+_y.value;
      print(z);
    }

    void incrementX(){
      // _x*=99;
      _x++;
      update();
      print(_x);
    }

    void decreaseX(){
        _x--;
        update();
        print(_x);
    }

    void incrementY(){
      // _x*=99;
      _y.value++;
    
      print(_y);
    }

    void decreaseY(){
        _y.value--;
      
        print(_y);
    }
}