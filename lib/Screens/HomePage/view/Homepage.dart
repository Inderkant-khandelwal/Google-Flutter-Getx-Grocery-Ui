import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/HomePage/helperClass/myPinters.dart';
import 'package:OrganicBharat/Screens/HomePage/widgets/bottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[600]),
          titleSpacing: 0.0,
          backgroundColor: Colors.white,
          actions: [
            appBarActions(),
            wishIcon(),
            IconButton(
                visualDensity: VisualDensity(horizontal: -4),
                icon: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                onPressed: () {})
          ],
          title: Row(children: [
            CircleAvatar(
              backgroundColor: ColorPallete().color,
              backgroundImage: AssetImage("assets/icon/icon.png"),
            ),
            Text("  Organic",
                style: GoogleFonts.lato(
                    color: Color(0xFF93c312),
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            Text("  Bharat",
                style: GoogleFonts.lato(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
          ]),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(child: myDrawer()),
        ),
        body: SingleChildScrollView(child: body(context)),
        floatingActionButton: speedDial(),
        bottomNavigationBar: bottomBar(context),
      ),
    );
  }

  // Widget Start

  Widget appBarActions() {
    var x = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: IconButton(
            visualDensity: VisualDensity(horizontal: -4),
            icon: Icon(Icons.shopping_cart, color: Colors.grey[600]),
            onPressed: () {},
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
    );

    return x;
  }

  Widget wishIcon() {
    var x = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: IconButton(
            visualDensity: VisualDensity(horizontal: -4),
            icon: Icon(Icons.favorite, color: Colors.red[600]),
            onPressed: () {},
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
    );

    return x;
  }

  Widget speedDial() {
    return SpeedDial(
      /// both default to 16
      marginEnd: 18,
      marginBottom: 20,
      // animatedIcon: AnimatedIcons.menu_close,
      // animatedIconTheme: IconThemeData(size: 22.0),
      /// This is ignored if animatedIcon is non null
      icon: Icons.add,
      activeIcon: Icons.remove,
      // iconTheme: IconThemeData(color: Colors.grey[50], size: 30),
      /// The label of the main button.
      // label: Text("Open Speed Dial"),
      /// The active label of the main button, Defaults to label if not specified.
      // activeLabel: Text("Close Speed Dial"),
      /// Transition Builder between label and activeLabel, defaults to FadeTransition.
      // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
      /// The below button size defaults to 56 itself, its the FAB size + It also affects relative padding and other elements
      buttonSize: 56.0,
      visible: true,

      /// If true user is forced to close dial manually
      /// by tapping main button and overlay is not rendered.
      closeManually: false,

      /// If true overlay will render no matter what.
      renderOverlay: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: ColorPallete().color,
      foregroundColor: Colors.white,
      elevation: 8.0,
      shape: CircleBorder(),
      // orientation: SpeedDialOrientation.Up,
      // childMarginBottom: 2,
      // childMarginTop: 2,
      children: [
        SpeedDialChild(
          child: Icon(Icons.accessibility),
          backgroundColor: Colors.red,
          label: 'First',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('FIRST CHILD'),
          onLongPress: () => print('FIRST CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          child: Icon(Icons.brush),
          backgroundColor: Colors.blue,
          label: 'Second',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('SECOND CHILD'),
          onLongPress: () => print('SECOND CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          child: Icon(Icons.keyboard_voice),
          backgroundColor: Colors.green,
          label: 'Third',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('THIRD CHILD'),
          onLongPress: () => print('THIRD CHILD LONG PRESS'),
        ),
      ],
    );
  }

  Widget myDrawer() {
    return Column(children: [
      Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.yellow.shade700,
                backgroundImage: NetworkImage(
                    "https://cdn0.iconfinder.com/data/icons/social-media-network-4/48/male_avatar-512.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   Hello Guest",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        "    Sign In   |   ",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Colors.grey[500].withOpacity(0.7)),
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Colors.grey[500].withOpacity(0.7)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on,
                          color: Colors.grey[500].withOpacity(0.5)),
                      Text(
                        "Uttam Nagar",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey[700].withOpacity(0.5)),
                      ),
                      Text(
                        "  Change ",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // After Head Container
      Divider(
        color: Colors.grey[500].withOpacity(0.5),
      ),

      listTileItem("Home", Icons.home),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("Catagories", Icons.category),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("Subscription", Icons.card_membership_sharp),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("My Orders", Icons.book_online),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("My Address", Icons.location_on),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("Profile", Icons.person_outline_rounded),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("Privacy Policy", Icons.policy_outlined),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: listTileItem("FAQ's", Icons.question_answer_outlined),
      ),

      Container(
          // This align moves the children to the bottom
          child: Align(
              alignment: FractionalOffset.bottomCenter,
              // This container holds all the children that will be aligned
              // on the bottom and should not scroll with the above ListView
              child: Container(
                  child: Column(
                children: <Widget>[
                  Divider(),
                  listTileItem("Settings", Icons.settings),
                  listTileItem("Help and Feedback", Icons.help),
                  ListTile(
                    onTap: () {},
                    selected: true,
                    selectedTileColor: Colors.grey.shade200.withOpacity(0.5),
                    title: Text(
                      "Log-out",
                      style: GoogleFonts.lato(
                          color: Colors.grey[800].withOpacity(0.8),
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: Colors.grey[800].withOpacity(0.8),
                    ),
                    trailing: Icon(Icons.offline_bolt,
                        color: Colors.grey[800].withOpacity(0.8)),
                  )
                ],
              ))))
    ]);
  }

  Widget listTileItem(String title, IconData icon) {
    return ListTile(
      selected: title == "Home" ? true : false,
      dense: true,
      selectedTileColor: Colors.grey[100].withOpacity(0.5),
      title: Text(
        title,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
            color: Colors.grey[800].withOpacity(0.8)),
      ),
      leading: Icon(icon, color: Colors.grey[500].withOpacity(0.8)),
      trailing: Icon(
        Icons.arrow_right_sharp,
        color: Colors.grey[500],
      ),
      onTap: () {},
    );
  }

  body(BuildContext context) {
    int x = 0;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1.0,
            aspectRatio: 2,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            scrollDirection: Axis.horizontal,
          ),
          items: networkImageUrl.map((i) {
            return Builder(
              builder: (BuildContext context) {
                int val = networkImageUrl.length;
                if (x == val - 1) {
                  x = 0;
                } else {
                  x++;
                }

                return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      height: 200,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage("$i"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.grey[800].withOpacity(0.5),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Container(
                                  height: 20,
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: networkImageUrl.length,
                                          itemBuilder:
                                              (BuildContext context, index) =>
                                                  Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor: index == x
                                                    ? Colors.red
                                                    : Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                    // Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(12),
                    //         color: Colors.amber),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(12),
                    //       child: Image.network(
                    //         "$i",
                    //         fit: BoxFit.fill,
                    //       ),
                    //     )),
                    );
              },
            );
          }).toList(),
        ),
        // After Carousel
        SizedBox(
          height: 10,
        ),
        headingRow("assets/images/subs.png", "All Subscription"),
        subscription(),
        SizedBox(
          height: 5,
        ),
        headingRow("assets/images/caticon.png", "All Catagory"),
        SizedBox(
          height: 5,
        ),

        demoX(),
        SizedBox(
          height: 10,
        ),
        headingRow("assets/images/product.png", "All Product"),
        SizedBox(
          height: 5,
        ),
        product(),
        SizedBox(
          height: 10,
        ),

        Container(
          width: 250,
          height: 100,
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset(
                "assets/images/og.png",
                fit: BoxFit.fitWidth,
              )),
        )
      ],
    );
  }

  List<String> networkImageUrl = [
    "https://www.newcannabisventures.com/wp-content/uploads/the-green-organic-dutchman-banner-god-1024x329.jpg",
    "https://t3.ftcdn.net/jpg/03/42/35/44/360_F_342354486_J9aIFzzImlEsxn3KQFMnyweVesoY4yyE.jpg",
    "https://cdn.shopify.com/s/files/1/1662/1883/files/our-brand-natural-banner.jpg?v=1508665994",
    "https://www.earthorganic.co.in/wp-content/uploads/2020/05/1557400232OI-CEREALS-banner-rev-CTA.png",
    "https://organicoutlet.in/files/homepage_images/main_banner/organic_banner.jpg"
  ];

  List<String> catagoryUrl = [
    "http://www.dreamplantbased.com/wp-content/uploads/2016/01/product-soy-dream-original-enriched-1024x1024.png",
    "https://sanmikfood.com/wp-content/uploads/2018/10/sweeteners_sanmik.png",
    "https://5.imimg.com/data5/QT/XU/PR/SELLER-87369411/dsc00070-small-500x500.png",
    "https://www.pngkey.com/png/detail/100-1006985_farm-boy-organic-herbs-spices-spice.png",
    "https://5.imimg.com/data5/SELLER/Default/2020/10/KE/GX/OT/29454905/natural-crunch-peanut-butter-unsweetened--500x500.png",
    "https://www.keralaayurveda.biz/media/user_v1oz1Yz27j/2104/1.png",
    "https://lamilanaise.com/wp-content/uploads/2017/07/497x500xMilanaise_Sac_500g_Pois-chiches_Web-1.png.pagespeed.ic.MzK-6i5Wse.png",
    "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png",
    "https://myorganicbharat.com/wp-content/uploads/2020/07/fruits-thumbnail.png",
    "https://www.pngkey.com/png/detail/464-4642843_clipart-vegetables-silhouette-green-vegetable-vector-png.png"
  ];

  List<String> subscriptionUrl = [
    "https://myorganicbharat.com/wp-content/uploads/2020/07/fruits-thumbnail.png",
    "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png",
    "https://static.wixstatic.com/media/814cf4_af593b4eec8144b390a739ba9f7e4e0c~mv2.jpg/v1/fill/w_309,h_151,q_90/814cf4_af593b4eec8144b390a739ba9f7e4e0c~mv2.jpg",
    "https://www.eko-logie.com/wp-content/uploads/2020/12/Grosrise-BANNER.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2020/10/KE/GX/OT/29454905/natural-crunch-peanut-butter-unsweetened--500x500.png",
    "https://www.bigbasket.com/media/uploads/flatpages/breakfast-cereals-43430/Monthly%20Promo%20Banners_Master.png",
    "https://www.dailyneeds247.com/wp-content/uploads/2020/06/kelloggs-banner.png",
    "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png",
    "https://myorganicbharat.com/wp-content/uploads/2020/07/fruits-thumbnail.png",
    "https://www.pngkey.com/png/detail/464-4642843_clipart-vegetables-silhouette-green-vegetable-vector-png.png"
  ];

  List<String> catName = [
    "Beverages",
    "Sweetners",
    "Cereals/Flour",
    "Spices",
    "Naturals",
    "Ayurveda",
    "Pulses",
    "A2 Dairy",
    "Fruits",
    "Vegetables"
  ];

  Widget headingRow(img, text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(img),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(text,
                    style: GoogleFonts.b612(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: InkWell(
            onTap: () {},
            child: Text("View All",
                style: GoogleFonts.arvo(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500])),
          ),
        ),
      ],
    );
  }

  Widget demoX() {
    return Container(
      height: 180,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catagoryUrl.length,
        itemBuilder: (context, index) => Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 120,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 150,
              child: Ink(
                decoration: BoxDecoration(
                  color: ColorPallete().color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(catagoryUrl[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Get.toNamed("Exactcatallproductshow?cat_name=" +
                        catName[index] +
                        "&cat_img=" +
                        catagoryUrl[index]);
                  },
                  splashColor: Colors.grey[800].withOpacity(0.5),
                ),
              ),
            ),
            Text(catName[index],
                style: GoogleFonts.lato(
                    color: Colors.grey[600], fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }

  Widget subscription() {
    return Container(
      height: 160,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: subscriptionUrl.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 240,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              height: 130,
              child: Ink(
                decoration: BoxDecoration(
                  color: ColorPallete().color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(subscriptionUrl[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Get.toNamed("viewAllSubscription");
                  },
                  splashColor: Colors.grey[800].withOpacity(0.5),
                ),
              ),
            ),
            Text(catName[index],
                style: GoogleFonts.lato(
                    color: Colors.grey[600], fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }

  Widget product() {
    return Container(
      height: 280,
      // color: Colors.blue.shade200.withOpacity(0.3),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catagoryUrl.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       width: 30,
            //       height: 30,
            //       child: Center(
            //           child: Padding(
            //         padding: const EdgeInsets.only(left: 7.0),
            //         child: Text(
            //           "15% Off",
            //           style: GoogleFonts.lato(
            //               fontSize: 9,
            //               fontWeight: FontWeight.normal,
            //               color: Colors.white),
            //         ),
            //       )),
            //       decoration:
            //           BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            //     )
            //   ],
            // ),
            Stack(children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 9.0, top: 5.0),
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
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                height: 200,
                child: Ink(
                  decoration: BoxDecoration(
                    color: ColorPallete().color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(catagoryUrl[index]),
                        fit: BoxFit.contain),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Get.toNamed("SingleProduct");
                    },
                    splashColor: Colors.grey[800].withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            Column(
              children: [
                Text("instock",
                    style: GoogleFonts.lato(
                        color: Colors.green.shade300,
                        fontWeight: FontWeight.normal)),
                Text(catName[index],
                    style: GoogleFonts.lato(
                        color: Colors.grey[600], fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("168 Rs.",
                        style: GoogleFonts.lato(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(" 300",
                        style: GoogleFonts.lato(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red.shade300,
                            fontWeight: FontWeight.normal)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  // End Of Class
}
