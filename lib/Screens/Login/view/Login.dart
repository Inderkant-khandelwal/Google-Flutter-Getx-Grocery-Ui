import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/Login/controller/loginController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEditingControllerNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final LoginContoller loginContoller = Get.put(LoginContoller());
    var width = MediaQuery.of(context).size.width;
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
                        child: headingLogin("Log-in"),
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
                        child: smallBoldHeading("Log-in to your account"),
                      ),
                    ],
                  ),
                  sizedBox(30.0),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: otpHeading(
                              "We will send you OTP on your number (+91) (INDIA) charges may apply"),
                        ),
                      ),
                    ],
                  ),
                  sizedBox(30.0),
                  signUpField(
                      loginContoller,
                      1,
                      width,
                      "Your mobile number (+91) India",
                      textEditingControllerNumber,
                      "Enter your mobile number",
                      Icons.mobile_friendly_outlined,
                      TextInputType.number),
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
                          checkNumber(
                              textEditingControllerNumber, loginContoller);
                        },
                        child: GetBuilder<LoginContoller>(
                          init: LoginContoller(),
                          builder: (_t) => Container(
                              width: width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color:
                                      loginContoller.isNumberTenDigits.value ==
                                              "false"
                                          ? Colors.grey[400].withOpacity(0.5)
                                          : ColorPallete().color,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                "Log-in",
                                style: GoogleFonts.lato(
                                    color: loginContoller
                                                .isNumberTenDigits.value ==
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

  Widget signUpField(
      LoginContoller loginContoller,
      int id,
      width,
      String textFieldTopHeading,
      TextEditingController controller,
      String headingInputText,
      IconData icon,
      TextInputType keybordTypeProp) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0, right: 17.0),
      child: Container(
          width: width,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.grey[400].withOpacity(0.0),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Row(
                children: [
                  smallLightHeading(textFieldTopHeading),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[400].withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    onChanged: (val) {
                      onchnge(val, loginContoller, id);
                    },
                    obscureText:
                        keybordTypeProp == TextInputType.visiblePassword
                            ? true
                            : false,
                    keyboardType: keybordTypeProp,
                    cursorColor: ColorPallete().color,
                    controller: controller,
                    decoration: InputDecoration(
                        icon: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: GetBuilder<LoginContoller>(
                                init: LoginContoller(),
                                builder: (_t) => loginContoller.isStart.value ==
                                        "false"
                                    ? Icon(Icons.mobile_friendly_outlined,
                                        color: ColorPallete()
                                            .color
                                            .withOpacity(0.5))
                                    : loginContoller.isStart.value == "true" &&
                                            loginContoller.isNumberOk.value ==
                                                "false"
                                        ? Icon(Icons.close, color: Colors.red)
                                        : loginContoller.isStart.value ==
                                                    "true" &&
                                                loginContoller
                                                        .isNumberOk.value ==
                                                    "true"
                                            ? Icon(Icons.check,
                                                color: Colors.green)
                                            : Icon(
                                                Icons.mobile_friendly_outlined,
                                                color: ColorPallete()
                                                    .color
                                                    .withOpacity(0.5)))),
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: headingInputText,
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  checkNumber(TextEditingController textControler,
      LoginContoller loginContoller) async {
    String pattern = r'(^(?:[+0]9)?[0-9]{1,10}$)';
    RegExp regExp = new RegExp(pattern);
    if (textControler.value.text.length <= 9 ||
        !regExp.hasMatch(textControler.value.text.toString())) {
      print("Wrong Number");
      Get.snackbar("Wrong Number", "Enter 10 digits number ",
          backgroundColor: ColorPallete().color.withOpacity(0.5),
          icon: Icon(Icons.close, color: Colors.red),
          showProgressIndicator: false,
          margin: EdgeInsets.all(10),
          colorText: Colors.white,
          isDismissible: true,
          snackPosition: SnackPosition.BOTTOM);
      loginContoller.setStart("true".obs);
      loginContoller.setNumberStatus("false".obs);
      loginContoller.update();
    } else {
      await SystemChannels.textInput.invokeMethod("TextInput.hide");
      FocusScope.of(context).unfocus();
      loginContoller.setStart("true".obs);
      loginContoller.setNumberStatus("true".obs);
      loginContoller.setTenDigitNumber("true".obs);
      Get.toNamed("OTP");
      loginContoller.update();
    }
  }

  onchnge(val, LoginContoller loginContoller, id) {
    if (val.toString().length == 10) {
      loginContoller.setTenDigitNumber("true".obs);
      loginContoller.update();
    } else {
      loginContoller.setTenDigitNumber("false".obs);
      loginContoller.update();
    }
  }
  // End of class
}
