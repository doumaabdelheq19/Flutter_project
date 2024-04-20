import 'package:get/get.dart';

final myController = Get.put(pass_controller());

class pass_controller extends GetxController {
  var isPassHidden = true.obs;
}

final myController1 = Get.put(pass_controller1());

class pass_controller1 extends GetxController {
  var isPassHidden1 = true.obs;
}
