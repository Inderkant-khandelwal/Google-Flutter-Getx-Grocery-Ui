import 'package:get/get.dart';

class OtpController extends GetxController {
  var isTimerComplete = "false".obs;
  var isOtpValid = "false".obs;
  var otpLen = "0".obs;
  var otpVal = "".obs;

  setTimerStatus(x) {
    isTimerComplete = x;
  }

  setOtpValidStatus(x) {
    isOtpValid = x;
  }

  setOtpLen(x) {
    otpLen = x;
  }

  setOtpVal(x) {
    otpVal = x;
  }
}
