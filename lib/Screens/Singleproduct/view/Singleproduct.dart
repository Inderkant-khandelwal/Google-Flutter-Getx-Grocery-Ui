import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable/expandable.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.grey),
              // title: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //         color: Colors.red.withOpacity(0.2)),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 2.0, right: 2.0),
              //       child: Text("Product Name",
              //           style: GoogleFonts.arvo(
              //             fontSize: 15,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold,
              //           )),
              //     )),
              backgroundColor: Colors.white,
              floating: false,
              pinned: true,
              stretch: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: ColorPallete().color.withOpacity(0.1),
                  child: DotPaginationSwiper.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Get.toNamed("ZoomProduct");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png"),
                                      fit: BoxFit.contain)),
                              width: MediaQuery.of(context).size.width,
                            ),
                          )),
                ),
              ),
              expandedHeight: MediaQuery.of(context).size.height / 2 * 1.1,
              actions: [
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          visualDensity: VisualDensity(horizontal: -4),
                          icon: Icon(Icons.shopping_cart,
                              color: Colors.grey[600]),
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
              (context, index) => Container(
                child: Column(
                  children: [
                    widgets[index],
                  ],
                ),
              ),
              childCount: widgets.length,
            ))
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            splashColor: Colors.black,
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      child: Center(
                        child: IconButton(
                            icon: Icon(Icons.favorite_border_outlined,
                                color: Colors.pink),
                            onPressed: null),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: ColorPallete().color.withOpacity(0.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          Text(" Add To Bag ",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  List<Widget> widgets = [
    Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.9)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text("15% Off",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red)),
                  ],
                ),
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Product Name Here ",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(" instock ",
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.green)),
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text("Rs. 168 /- ",
                        style: GoogleFonts.lato(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(" 300",
                        style: GoogleFonts.lato(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red.shade300,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    Text("Quantity : ",
                        style: GoogleFonts.lato(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(" 500 GMS",
                        style: GoogleFonts.lato(
                            color: Colors.grey, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    Text("MRP",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                    Text(" 300 ",
                        style: GoogleFonts.lato(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red.shade300,
                            fontWeight: FontWeight.normal)),
                    Text("inclusive of all Taxes",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/bestPro.png"),
                      ),
                      Text("Fresh Product",
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/delivery.png"),
                      ),
                      Text("Fast Delivery",
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/guarantee.png"),
                      ),
                      Text("100 % Pure",
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        backgroundImage:
                            AssetImage("assets/images/bestPrice.png"),
                      ),
                      Text("Best Price",
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              )
            ],
          )),
    ),
    Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text("Product Details",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black)),
                  ),
                ],
              ),
              ExpandableTheme(
                data: const ExpandableThemeData(
                  iconColor: Colors.green,
                  useInkWell: true,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    ExpandableNotifier(
                        child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        elevation: 0.2,
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 150,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        ColorPallete().color.withOpacity(0.1),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.network(
                                          "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png",
                                          fit: BoxFit.cover)
                                    ],
                                  )),
                            ),
                            ScrollOnExpand(
                              scrollOnExpand: true,
                              scrollOnCollapse: false,
                              child: ExpandablePanel(
                                theme: const ExpandableThemeData(
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  tapBodyToCollapse: true,
                                ),
                                header: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Product Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                collapsed: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  physics: BouncingScrollPhysics(),
                                  child: Text(
                                      "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
                                          .toString()
                                          .toLowerCase(),
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.abel()),
                                ),
                                expanded: SingleChildScrollView(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                                                .toString()
                                                .toLowerCase(),
                                            softWrap: true,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.abel())),
                                  ],
                                )),
                                builder: (_, collapsed, expanded) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: Expandable(
                                      collapsed: collapsed,
                                      expanded: expanded,
                                      theme: const ExpandableThemeData(
                                          crossFadePoint: 0),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                    // Card2(),
                    // Card3(),
                  ],
                ),
              ),
            ],
          ),
        )),

    Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/product.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Text("Related Products",
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
        ),
      ),
    ),
    Container(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          height: 260,
          // color: Colors.blue.shade200.withOpacity(0.3),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
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
                    height: 190,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/99/3d/08/993d083e520cca974e17da1f583a66cb.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {},
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
                    Text("Product Name",
                        style: GoogleFonts.lato(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("168 Rs.",
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
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
        ),
      ),
    ),

    Container(
      width: double.infinity,
      height: 50,
      child: Center(child: Text("Thats all folks", style: GoogleFonts.lato())),
    )
    // end of arrya
  ];
}
