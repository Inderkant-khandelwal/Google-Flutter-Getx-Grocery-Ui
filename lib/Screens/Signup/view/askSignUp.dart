import 'dart:ui';

import 'package:OrganicBharat/Modals/colorModal/color.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:google_fonts/google_fonts.dart';
import '../controller/signupcontroller.dart';
import 'package:get/get.dart';
import 'package:animator/animator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController textEditingControllerNumber = TextEditingController();
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Har Har Mahadev");
    final Controllersr c = Get.put(Controllersr());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Animator(
                    duration: Duration(milliseconds: 900),
                    tween: Tween<double>(begin: 0, end: 26.0),
                    cycles: 1,
                    curve: Curves.fastOutSlowIn,
                    builder: (BuildContext context, AnimatorState animatorState,
                            child) =>
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child:
                                  headingSignUp("Sign Up", animatorState.value),
                            ),
                          ],
                        )),
                Animator(
                  duration: Duration(milliseconds: 900),
                  tween: Tween<double>(begin: 0, end: 16.0),
                  cycles: 1,
                  curve: Curves.fastOutSlowIn,
                  builder: (BuildContext context, AnimatorState animatorState,
                          child) =>
                      Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 30.0),
                        child: smallBoldHeading(
                            "Create your account", animatorState.value),
                      ),
                    ],
                  ),
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
                    1,
                    c,
                    width,
                    "Your mobile number (+91) India",
                    textEditingControllerNumber,
                    "Enter your mobile number",
                    Icons.mobile_friendly_outlined,
                    TextInputType.number),
                signUpField(
                    2,
                    c,
                    width,
                    "Enter your name ( Original Name)",
                    textEditingControllerName,
                    "Enter your name",
                    Icons.person,
                    TextInputType.text),
                signUpField(
                    3,
                    c,
                    width,
                    "Enter your email ( Active E-mail)",
                    textEditingControllerEmail,
                    "Enter your email",
                    Icons.mobile_friendly_outlined,
                    TextInputType.emailAddress),
                signUpField(
                    4,
                    c,
                    width,
                    "Enter your password ( create passowod)",
                    textEditingControllerPassword,
                    "Enter your password",
                    Icons.lock,
                    TextInputType.visiblePassword),
                termsAndConditionWidget(),
                alreadyAUser(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Material(
              child: InkWell(
                onTap: () async {
                  // textingField(
                  //     textEditingControllerNumber,
                  //     textEditingControllerName,
                  //     textEditingControllerEmail,
                  //     textEditingControllerPassword,
                  //     c);
                  //
                  allTextFieldValidation(
                      textEditingControllerNumber,
                      textEditingControllerName,
                      textEditingControllerEmail,
                      textEditingControllerPassword,
                      c,
                      context);
                },
                child: GetBuilder<Controllersr>(
                  init: Controllersr(),
                  builder: (_t) => Container(
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: c.isReadyToLogin.value == "false"
                              ? Colors.grey[400].withOpacity(0.5)
                              : ColorPallete().color,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: GoogleFonts.lato(
                            color: c.isReadyToLogin.value == "false"
                                ? Colors.black
                                : Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
              ),
            )),
      ),
    );
  }

  // writer all the Widget function
  Widget alreadyAUser() {
    return Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 28.0, left: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already a user ?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              " Log-in Here",
              style: TextStyle(color: Colors.green),
            )
          ],
        ));
  }

  Widget termsAndConditionWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, right: 28.0, left: 28.0),
      child: Center(
          child: Column(
        children: [
          Text("By creating an account , you agree to our",
              style: TextStyle(color: Colors.grey[700])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  "Terms of Service",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey[700]),
                ),
              ),
              Text(" and "),
              InkWell(
                onTap: () {},
                child: Text("Privacy Policy",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey[700])),
              )
            ],
          )
        ],
      )),
    );
  }

  Widget headingSignUp(String text, val) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.black, fontSize: val, fontWeight: FontWeight.bold),
    );
  }

  Widget smallBoldHeading(String smallText, val) {
    return Text(
      smallText,
      style: GoogleFonts.lato(
          color: Colors.black, fontSize: val, fontWeight: FontWeight.bold),
    );
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

  Widget signUpField(
      int id,
      Controllersr d,
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
                      onchnge(val, d, id);
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
                            child: GetBuilder<Controllersr>(
                                init: Controllersr(),
                                builder: (_t) {
                                  if (id == 1) {
                                    return checkandDisplayNumber(
                                      d,
                                      icon,
                                    );
                                  }

                                  if (id == 2) {
                                    return checkandDisplayName(d, icon);
                                  }

                                  if (id == 3) {
                                    return checkandDisplayEmail(d, icon);
                                  }

                                  if (id == 4) {
                                    return checkandDisplayPass(d, icon);
                                  }

                                  return Icon(Icons.close, color: Colors.red);
                                })),
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

  allTextFieldValidation(
    TextEditingController txEdone,
    TextEditingController txEdtwo,
    TextEditingController txEThree,
    TextEditingController txEFour,
    Controllersr e,
    BuildContext context,
  ) async {
    String pattern = r'(^(?:[+0]9)?[0-9]{1,10}$)';
    RegExp regExp = new RegExp(pattern);
    String emailPattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp refEmail = new RegExp(emailPattern);

    if (txEdone.value.text.length <= 9 ||
        !regExp.hasMatch(txEdone.value.text.toString())) {
      print("your number is not correct");
      e.setStart("start".obs);
      e.setNumber("false".obs);
      e.setLogInReady("false".obs);

      e.update();
    } else if (txEdtwo.value.text.length <= 2) {
      e.setNumber("true".obs);
      e.update();
      print("your name is not correct");
      e.setStart("start".obs);
      e.setName("false".obs);
      e.setLogInReady("false".obs);

      e.update();
    } else if (!refEmail.hasMatch(txEThree.value.text.toString())) {
      e.setName("true".obs);
      e.setNumber("true".obs);
      e.update();
      print("your email is not correct");
      e.setStart("start".obs);
      e.setEmail("false".obs);
      e.setLogInReady("false".obs);
      e.update();
    } else if (txEFour.value.text.length <= 5) {
      e.setEmail("true".obs);
      e.setName("true".obs);
      e.setNumber("true".obs);
      e.update();
      print("your password is not correct");
      e.setStart("start".obs);
      e.setPass("false".obs);
      e.setLogInReady("false".obs);
      e.update();
    } else {
      await SystemChannels.textInput.invokeMethod("TextInput.hide");
      FocusScope.of(context).unfocus();
      e.setPass("true".obs);
      e.setNumber("true".obs);
      e.setEmail("true".obs);
      e.setName("true".obs);
      e.setLogInReady("true".obs);
      e.update();
      print("numbe =" +
          txEdone.value.text +
          "   " +
          "Name = " +
          txEdtwo.value.text +
          " " +
          "E-mail = " +
          txEThree.value.text +
          "Pass=" +
          txEFour.value.text);
      Get.toNamed("logIn");
      // bottomShet(context);
      // Future.delayed(Duration(seconds: 3), () {
      //   Get.back();
      //   Get.toNamed("logIn");
      // });
    }
  }

  checkandDisplayNumber(d, icon) {
    if (d.isStart.value == "notStart") {
      return Icon(icon, color: ColorPallete().color.withOpacity(0.5));
    } else if (d.isStart.value == "start" && d.isNumberOk.value == "false") {
      return Icon(Icons.close, color: Colors.red);
    } else if (d.isStart.value == "start" && d.isNumberOk.value == "true") {
      return Icon(Icons.check, color: Colors.green);
    }
  }

  checkandDisplayName(d, icon) {
    if (d.isStart.value == "notStart") {
      return Icon(icon, color: ColorPallete().color.withOpacity(0.5));
    } else if (d.isStart.value == "start" && d.isNameOk.value == "false") {
      return Icon(Icons.close, color: Colors.red);
    } else if (d.isStart.value == "start" && d.isNameOk.value == "true") {
      return Icon(Icons.check, color: Colors.green);
    }
  }

  checkandDisplayEmail(d, icon) {
    if (d.isStart.value == "notStart") {
      return Icon(icon, color: ColorPallete().color.withOpacity(0.5));
    } else if (d.isStart.value == "start" && d.isEmailOk.value == "false") {
      return Icon(Icons.close, color: Colors.red);
    } else if (d.isStart.value == "start" && d.isEmailOk.value == "true") {
      return Icon(Icons.check, color: Colors.green);
    }
  }

  checkandDisplayPass(d, icon) {
    if (d.isStart.value == "notStart") {
      return Icon(icon, color: ColorPallete().color.withOpacity(0.5));
    } else if (d.isStart.value == "start" && d.isPasswordOk.value == "false") {
      return Icon(Icons.close, color: Colors.red);
    } else if (d.isStart.value == "start" && d.isPasswordOk.value == "true") {
      return Icon(Icons.check, color: Colors.green);
    }
  }

  onchnge(val, Controllersr c, id) {
    if (val.toString().length >= 6 && c.isEmailOk.value == "true") {
      c.setLogInReady("true".obs);
      c.update();
    } else {
      c.setLogInReady("false".obs);
      c.update();
    }
  }

  bottomShet(context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isDismissible: false,
      isScrollControlled: false,
      builder: (context) => Container(
        height: 60,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.grey[400]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularProgressIndicator(),
            Text(
              "Checking Deatails...",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
  // The End of Class

}
