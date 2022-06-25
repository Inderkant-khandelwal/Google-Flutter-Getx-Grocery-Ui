import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/Otp/controller/OtpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/services.dart';

class Otps extends StatefulWidget {
  @override
  _OtpsState createState() => _OtpsState();
}

class _OtpsState extends State<Otps> {
  TextEditingController controller = TextEditingController();
  String _code = "";
  String signature = "{{ app signature }}";
  // Timer timer;
  // int start = 30;
  // final int _otpTimeInMS = 1000 * 5 * 60;

  @override
  void initState() {
    super.initState();
    listenOtp();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    // timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final OtpController otpController = Get.put(OtpController());
    _code = otpController.otpVal.value;
    print("har har mahadevaaaaa");
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 30),
                        child: headingLogin("OTP"),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey[500],
                            size: 30,
                          ),
                          onPressed: () {
                            Get.back();
                          })
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 30.0),
                        child: smallBoldHeading("Enter OTP in the filed"),
                      ),
                    ],
                  ),
                  sizedBox(30.0),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: otpHeading(
                              "We have send you an OTP on your number (+91)  (INDIA) charges may apply"),
                        ),
                      ),
                    ],
                  ),
                  sizedBox(30.0),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: PinFieldAutoFill(
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: false, signed: false),
                        controller: controller,
                        codeLength: 4,
                        decoration: UnderlineDecoration(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                          colorBuilder:
                              FixedColorBuilder(Colors.black.withOpacity(0.3)),
                        ),
                        currentCode: _code,
                        onCodeSubmitted: (code) {
                          // print("your code is = " + code);
                        },
                        onCodeChanged: (code) async {
                          otpController.setOtpLen(code.length.toString().obs);
                          otpController.setOtpVal(code.obs);
                          otpController.update();
                          if (code.length == 4) {
                            otpController.setOtpValidStatus("true".obs);
                            otpController.setOtpVal(code.obs);
                            otpController.update();
                            await SystemChannels.textInput
                                .invokeMethod("TextInput.hide");
                            FocusScope.of(context).unfocus();
                            Get.toNamed("MyHomepage");

                            // print(code);
                            // FocusScope.of(context).requestFocus(FocusNode());
                          } else {
                            otpController.setOtpValidStatus("false".obs);
                            otpController.update();
                          }
                        },
                      ),
                    ),
                  ),

                  sizedBox(10.0),
                  GetBuilder<OtpController>(
                      init: OtpController(),
                      builder: (_t) => otpController.isTimerComplete.value ==
                              "false"
                          ? Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Fetching Otp"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          backgroundColor: Colors.transparent,
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.blue),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Container()),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [Text("$start")],
                  // )
                  //
                  // Center(
                  GetBuilder<OtpController>(
                      init: OtpController(),
                      builder: (_t) => otpController.isTimerComplete.value ==
                              "false"
                          ? CustomTimer(
                              onFinish: () {
                                print("completed");
                                otpController.setTimerStatus("true".obs);
                                otpController.update();
                              },
                              from: Duration(minutes: 1),
                              to: Duration(minutes: 0),
                              onBuildAction: CustomTimerAction.auto_start,
                              builder: (CustomTimerRemainingTime remaining) {
                                return Text(
                                  "${remaining.minutes}:${remaining.seconds}",
                                  style: TextStyle(fontSize: 16.0),
                                );
                              },
                            )
                          : Container()),

                  GetBuilder<OtpController>(
                    init: OtpController(),
                    builder: (_t) => Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 10.0),
                          child: Material(
                              child: InkWell(
                                  onTap: () async {
                                    final smsSignCode =
                                        await SmsAutoFill().getAppSignature;
                                    print(smsSignCode);
                                  },
                                  child: otpController.isTimerComplete.value ==
                                          "false"
                                      ? Material(
                                          child: InkWell(
                                            onTap: () {
                                              Get.snackbar("Let timer complete",
                                                  "sorry for kept you waiting",
                                                  backgroundColor:
                                                      ColorPallete()
                                                          .color
                                                          .withOpacity(0.5),
                                                  icon: Icon(Icons.timer,
                                                      color: Colors.green),
                                                  showProgressIndicator: false,
                                                  margin: EdgeInsets.all(10),
                                                  colorText: Colors.white,
                                                  isDismissible: true,
                                                  snackPosition:
                                                      SnackPosition.BOTTOM);
                                            },
                                            child: Container(
                                                width: 90,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[400]
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                    child: Text(
                                                  "Resend",
                                                  style: GoogleFonts.lato(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ))),
                                          ),
                                        )
                                      : Material(
                                          child: InkWell(
                                            onTap: () {
                                              print("Now Can Request Otp");
                                              Get.snackbar("Successfully Send",
                                                  "OTP Resend Successfully",
                                                  backgroundColor:
                                                      ColorPallete()
                                                          .color
                                                          .withOpacity(0.5),
                                                  icon: Icon(Icons.check,
                                                      color: Colors.green),
                                                  showProgressIndicator: false,
                                                  margin: EdgeInsets.all(10),
                                                  colorText: Colors.white,
                                                  isDismissible: true,
                                                  snackPosition:
                                                      SnackPosition.BOTTOM);
                                              otpController
                                                  .setTimerStatus("false".obs);
                                              otpController.update();
                                            },
                                            child: Container(
                                                width: 90,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: ColorPallete().color,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                    child: Text(
                                                  "Resend",
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ))),
                                          ),
                                        )))),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0),
                    child: Material(
                      child: InkWell(
                        onTap: () async {
                          final smsSignCode =
                              await SmsAutoFill().getAppSignature;
                          print(smsSignCode);
                          if (otpController.otpLen.value == "0") {
                            Get.snackbar("OTP Required",
                                "Please fill out the OTP fields",
                                backgroundColor:
                                    ColorPallete().color.withOpacity(0.5),
                                icon: Icon(Icons.mobile_friendly_sharp,
                                    color: Colors.white),
                                showProgressIndicator: false,
                                margin: EdgeInsets.all(10),
                                colorText: Colors.white,
                                isDismissible: true,
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            if (controller.text.length == 4) {
                              Get.toNamed("MyHomepage");
                            }
                          }
                        },
                        child: GetBuilder<OtpController>(
                          init: OtpController(),
                          builder: (_t) => Container(
                              width: width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color:
                                      otpController.isOtpValid.value == "false"
                                          ? Colors.grey[400].withOpacity(0.5)
                                          : ColorPallete().color,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                "Verify",
                                style: GoogleFonts.lato(
                                    color: otpController.isOtpValid.value ==
                                            "false"
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }

  Widget headingLogin(String text) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
    );
  }

  Widget smallBoldHeading(String smallText) {
    return Text(
      smallText,
      style: GoogleFonts.lato(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget otpHeading(String trxt) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Text(
        trxt,
        style: GoogleFonts.lato(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(height: height);
  }

  Widget smallLightHeading(String smallText) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Text(
        smallText,
        style: GoogleFonts.lato(
            color: Colors.grey[700], fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  void listenOtp() async {
    await SmsAutoFill().listenForCode;
  }

  // End of class
}
