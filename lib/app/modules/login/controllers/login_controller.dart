import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneNumber = TextEditingController();
  var termCondition = false.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumber.dispose();
  }
}
