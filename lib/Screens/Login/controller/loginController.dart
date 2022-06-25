import 'package:get/get.dart';

class LoginContoller extends GetxController {
  var isNumberOk = "false".obs;
  var isStart = "false".obs;
  var isNumberTenDigits = "false".obs;
  returnNumber() => isNumberOk;
  returnStart() => isStart;
  returnTenDigitNumber() => isNumberTenDigits;

  setNumberStatus(x) {
    isNumberOk = x;
  }

  setStart(x) {
    isStart = x;
  }

  setTenDigitNumber(x) {
    isNumberTenDigits = x;
  }
}
