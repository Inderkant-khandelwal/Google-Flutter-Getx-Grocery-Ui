import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewSubscriptionOrder extends StatefulWidget {
  @override
  _ViewSubscriptionOrderState createState() => _ViewSubscriptionOrderState();
}

class _ViewSubscriptionOrderState extends State<ViewSubscriptionOrder> {
  TextEditingController couponController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[500]),
        backgroundColor: Colors.white,
        title: Text(
          "Order Summary",
          style: GoogleFonts.lato(color: Colors.grey[600]),
        ),
        actions: [
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    visualDensity: VisualDensity(horizontal: -4),
                    icon: Icon(Icons.shopping_cart, color: Colors.grey[600]),
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
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {},
              child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: Column(children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                        child: Icon(Icons.location_on, color: Colors.grey[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 10),
                        child: Text(
                          "Delivery Address",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          "Uttam Nagar New Delhi-21",
                          style: GoogleFonts.lato(
                              fontSize: 12, color: Colors.black),
                        ),
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child:
                            Icon(Icons.edit, size: 25, color: Colors.grey[600]),
                      ),
                    ])
                  ])),
            ),
          ),

          // Product Details

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                        child: Icon(Icons.shopping_bag_outlined,
                            color: Colors.grey[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 10),
                        child: Text(
                          "Subscription Details",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Product",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "A2 Organic Chhach",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Qty",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "1",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Order Type",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "Daily",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Order From",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "09-05-2021",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Order To",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "31-05-2021",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "SelectPreferTime",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "09-05-2021",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Coupon code

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 10),
                      child: Text(
                        "Apply Coupon",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 100,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter Coupon")),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: Container(
                          height: 58,
                          child: OutlineButton(
                            child: Text("Apply Coupon"),
                            onPressed: () {},
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // after coupon

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, left: 10),
                          child: Text(
                            "Price Details",
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Subtotal",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "2420.00 /-",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Delivery",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "0 /-",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "GST",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "0 /-",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Discount",
                                  style: GoogleFonts.lato(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "0 /-",
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Payable Amount",
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(children: [
                              Text(
                                "2000 /-",
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //after price details

          SizedBox(height: 30)
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
              onPressed: () {},
              height: 50,
              child: Text(
                "Pay Now".toString(),
                style: GoogleFonts.arvo(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
              color: ColorPallete().color,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0))),
        ),
      ),
    );
  }
}
