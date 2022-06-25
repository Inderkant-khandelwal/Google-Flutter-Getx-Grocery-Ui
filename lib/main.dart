import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/HomePage/view/Homepage.dart';
import 'package:OrganicBharat/Screens/Login/view/Login.dart';
import 'package:OrganicBharat/Screens/Otp/view/Otp.dart';
import 'package:OrganicBharat/screens/Signup/view/askSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:OrganicBharat/Screens/Exactcatproductshow/view/Exactcatrelatedallproductshow.dart';

import 'Screens/Singleproduct/view/Singleproduct.dart';
import 'Screens/ViewOrderSubscription/view/viewSubscriptionOrder.dart';
import 'Screens/ViewSubscription/view/ViewSingleSubscription.dart';
import 'Screens/ViewSubscription/view/viewAllSubscription.dart';
import 'Screens/ZoomProduct/view/zoomProduct.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorPallete().color,
      statusBarColor: ColorPallete().color,
      systemNavigationBarDividerColor: ColorPallete().color));
  runApp(GetMaterialApp(
      getPages: [
        GetPage(
            name: "signUp",
            page: () => SignUp(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "logIn",
            page: () => Login(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "OTP",
            page: () => Otps(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "MyHomepage",
            page: () => Homepage(),
            transition: Transition.rightToLeft,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "Exactcatallproductshow",
            page: () => CatRelatedAllProductShow(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 400)),
        GetPage(
            name: "SingleProduct",
            page: () => SingleProduct(),
            transition: Transition.upToDown,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "ZoomProduct",
            page: () => ZoomProduct(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "viewAllSubscription",
            page: () => ViewAllSubscription(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "viewSingleSubscription",
            page: () => ViewSingleSubscription(),
            transition: Transition.upToDown,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: "viewSubscriptionOrder",
            page: () => ViewSubscriptionOrder(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500)),
      ],
      debugShowCheckedModeBanner: false,
      title: "Organic Bharat",
      home: SignUp()));
}
