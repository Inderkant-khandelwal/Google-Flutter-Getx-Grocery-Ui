import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ZoomProduct extends StatefulWidget {
  @override
  _ZoomProductState createState() => _ZoomProductState();
}

class _ZoomProductState extends State<ZoomProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text(""),
          actions: [
            IconButton(
                iconSize: 20,
                icon: Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  Get.back();
                })
          ],
          elevation: 0.0,
          backgroundColor: ColorPallete().color.withOpacity(0.1),
        ),
        body: PhotoView(
          imageProvider: NetworkImage(
              "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png"),
          minScale: PhotoViewComputedScale.contained * 0.9,
          maxScale: PhotoViewComputedScale.covered * 2,
          backgroundDecoration:
              BoxDecoration(color: ColorPallete().color.withOpacity(0.1)),
        ));
  }
}
