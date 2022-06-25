import 'package:get/get.dart';

class Controllersr extends GetxController {
  var isNumberOk = "false".obs;
  var isNameOk = "false".obs;
  var isEmailOk = "false".obs;
  var isPasswordOk = "false".obs;
  var isStart = "notStart".obs;
  var isReadyToLogin = "false".obs;

  numberReturn() => isNumberOk;
  nameReturn() => isNameOk;
  emailReturn() => isEmailOk;
  passReturn() => isPasswordOk;
  startReturn() => isPasswordOk;
  isReadyToLogins() => isReadyToLogin;

  setNumber(x) {
    isNumberOk = x;
  }

  setName(x) {
    isNameOk = x;
  }

  setEmail(x) {
    isEmailOk = x;
  }

  setPass(x) {
    isPasswordOk = x;
  }

  setStart(x) {
    isStart = x;
  }

  setLogInReady(x) {
    isReadyToLogin = x;
  }
}
