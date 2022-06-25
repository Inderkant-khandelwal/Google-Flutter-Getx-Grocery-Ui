import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/HomePage/widgets/bottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class ViewAllSubscription extends StatefulWidget {
  @override
  _ViewAllSubscriptionState createState() => _ViewAllSubscriptionState();
}

class _ViewAllSubscriptionState extends State<ViewAllSubscription> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.grey),
            title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  child: Text("All Subscription",
                      style: GoogleFonts.arvo(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              background: Image.network(
                "https://5.imimg.com/data5/QT/XU/PR/SELLER-87369411/dsc00070-small-500x500.png",
                fit: BoxFit.contain,
              ),
            ),
            expandedHeight: 180,
            actions: [
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        visualDensity: VisualDensity(horizontal: -4),
                        icon:
                            Icon(Icons.shopping_cart, color: Colors.grey[600]),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                      child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Icon(Icons.brightness_1,
                            size: 20.0, color: Colors.green[800]),
                      ),
                      Positioned(
                          top: 6.0,
                          right: 4.0,
                          child: Center(
                            child: Text(
                              "10",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ],
                  )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        visualDensity: VisualDensity(horizontal: -4),
                        icon: Icon(Icons.favorite, color: Colors.red[600]),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Positioned(
                      child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Icon(Icons.brightness_1,
                            size: 20.0, color: Colors.green[800]),
                      ),
                      Positioned(
                          top: 6.0,
                          right: 4.0,
                          child: Center(
                            child: Text(
                              "10",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ],
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    visualDensity: VisualDensity(horizontal: -4),
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[300].withOpacity(0.2)),
                  child: Row(children: [
                    Stack(children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 9.0, top: 5.0),
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 7.0),
                                child: Text(
                                  "15% Off",
                                  style: GoogleFonts.lato(
                                      fontSize: 9,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade400,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 130,
                        child: Ink(
                          decoration: BoxDecoration(
                            color: ColorPallete().color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://5.imimg.com/data5/QT/XU/PR/SELLER-87369411/dsc00070-small-500x500.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed("viewSingleSubscription");
                            },
                            splashColor: Colors.grey[800].withOpacity(0.5),
                          ),
                        ),
                      ),
                    ]),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Organic Mustard Oil",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.favorite, color: Colors.grey[500])
                            ],
                          ),
                          Text(
                            "1000 ML",
                            style: GoogleFonts.lato(fontSize: 14),
                          ),
                          Text(
                            "Delivery Time : 48 Hours",
                            style: GoogleFonts.lato(fontSize: 14),
                          ),
                          Text(
                            "Organic Mustard From",
                            style: GoogleFonts.lato(fontSize: 14),
                          ),
                          Text(
                            "Farms of Organic Bharat",
                            style: GoogleFonts.lato(fontSize: 14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rs. 168 /- ",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text(" 300",
                                  style: GoogleFonts.lato(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.red.shade300,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.only(right: 10.0),
                          //       child: CircleAvatar(
                          //         radius: 15,
                          //         backgroundColor: Colors.white,
                          //         child: Icon(
                          //           Icons.remove,
                          //           color: Colors.grey[500],
                          //         ),
                          //       ),
                          //     ),
                          //     Text(" 0 "),
                          //     Padding(
                          //       padding: const EdgeInsets.only(left: 10.0),
                          //       child: CircleAvatar(
                          //         radius: 15,
                          //         backgroundColor: Colors.white,
                          //         child: Icon(
                          //           Icons.add,
                          //           color: Colors.grey[500],
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),
            childCount: 10,
          ))
        ],
      ),
      bottomNavigationBar: bottomBar(context),
    );
  }
}
