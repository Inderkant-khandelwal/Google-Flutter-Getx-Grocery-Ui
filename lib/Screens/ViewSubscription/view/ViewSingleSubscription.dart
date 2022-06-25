import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/HomePage/widgets/bottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class ViewSingleSubscription extends StatefulWidget {
  @override
  _ViewSingleSubscriptionState createState() => _ViewSingleSubscriptionState();
}

class _ViewSingleSubscriptionState extends State<ViewSingleSubscription> {
  int grpVal = 1;
  DateTime date = DateTime.now();

  Future<void> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: ColorPallete().color,
              accentColor: Colors.green,
              colorScheme: ColorScheme.light(primary: ColorPallete().color),
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child,
          );
        },
        context: context,
        initialDate: date,
        firstDate: DateTime(1940),
        lastDate: DateTime(2030));

    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[500]),
        backgroundColor: Colors.white,
        title: Text(
          "Subscription Name",
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
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
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
                              Get.toNamed("SingleProduct");
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
                          SizedBox(height: 10.0)
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ),

            // Radio List Tile
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300].withOpacity(0.2)),
              child: Column(children: [
                RadioListTile(
                    secondary: OutlineButton(
                        child: Text("Show Options"),
                        onPressed: () {
                          showModalBottomSht(context, 1.toString());
                          setState(() {
                            grpVal = 1;
                          });
                        }),
                    title: Text("Daily", style: GoogleFonts.lato(fontSize: 15)),
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: grpVal,
                    onChanged: (val) {
                      print(val);
                      showModalBottomSht(context, val.toString());
                      setState(() {
                        grpVal = 1;
                      });
                    }),
                RadioListTile(
                    secondary: OutlineButton(
                        child: Text("Show Options"),
                        onPressed: () {
                          showModalBottomSht(context, 2.toString());
                          setState(() {
                            grpVal = 2;
                          });
                        }),
                    title: Text("Alternate Days",
                        style: GoogleFonts.lato(fontSize: 15)),
                    activeColor: Colors.green,
                    value: 2,
                    groupValue: grpVal,
                    onChanged: (val) {
                      print(val);
                      showModalBottomSht(context, val.toString());
                      setState(() {
                        grpVal = 2;
                      });
                    }),
                RadioListTile(
                    secondary: OutlineButton(
                        child: Text("Show Options"),
                        onPressed: () {
                          showModalBottomSht(context, 3.toString());
                          setState(() {
                            grpVal = 3;
                          });
                        }),
                    title: Text("Selected Days",
                        style: GoogleFonts.lato(fontSize: 15)),
                    activeColor: Colors.green,
                    value: 3,
                    groupValue: grpVal,
                    onChanged: (val) {
                      print(val);
                      showModalBottomSht(context, val.toString());
                      setState(() {
                        grpVal = 3;
                      });
                    })
              ]),
            ),

            // after radio button
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[300].withOpacity(0.2)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Duration",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    )
                  ],
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300].withOpacity(0.2)),
              child: ListTile(
                title: Text(
                  date.day.toString() +
                      "-" +
                      date.month.toString() +
                      "-" +
                      date.year.toString(),
                  style: GoogleFonts.lato(fontSize: 15),
                ),
                onTap: () {
                  selectTimePicker(context);
                },
                trailing: Icon(Icons.arrow_right_sharp),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text("Start Date", style: GoogleFonts.lato()),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300].withOpacity(0.2)),
              child: ListTile(
                title: Text(
                    date.day.toString() +
                        "-" +
                        date.month.toString() +
                        "-" +
                        date.year.toString(),
                    style: GoogleFonts.lato(fontSize: 15)),
                onTap: () {
                  selectTimePicker(context);
                },
                trailing: Icon(Icons.arrow_right_sharp),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text("End Date  ", style: GoogleFonts.lato()),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
              onPressed: () {
                Get.toNamed("viewSubscriptionOrder");
              },
              height: 50,
              child: Text(
                "Continue".toString(),
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

  showModalBottomSht(BuildContext context, String whoSelected) {
    return showModalBottomSheet(
        isDismissible: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Padding(
              padding: const EdgeInsets.all(12.0),
              child: whoSelected == "1"
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Daily",
                                      style: GoogleFonts.lato(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))
                                ]),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlineButton(
                                  onPressed: () {}, child: Icon(Icons.add)),
                              Text("0"),
                              OutlineButton(
                                  onPressed: () {}, child: Icon(Icons.remove)),
                            ],
                          )
                        ]),
                      ))
                  : whoSelected == "2"
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Alternate Days",
                                          style: GoogleFonts.lato(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black))
                                    ]),
                              ),
                              Divider(),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 2.0),
                                      child: Text("Odd Days",
                                          style: GoogleFonts.lato(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    )
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  OutlineButton(
                                      onPressed: () {}, child: Icon(Icons.add)),
                                  Text("0"),
                                  OutlineButton(
                                      onPressed: () {},
                                      child: Icon(Icons.remove)),
                                ],
                              ),
                              Divider(),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, bottom: 2.0),
                                      child: Text("Even Days",
                                          style: GoogleFonts.lato(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    )
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  OutlineButton(
                                      onPressed: () {}, child: Icon(Icons.add)),
                                  Text("0"),
                                  OutlineButton(
                                      onPressed: () {},
                                      child: Icon(Icons.remove)),
                                ],
                              )
                            ]),
                          ))
                      : whoSelected == "3"
                          ? Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Selected Days",
                                                style: GoogleFonts.lato(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black))
                                          ]),
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Sun",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Mon",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Tue",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Wed",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Thu",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Fri",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22.0, bottom: 2.0),
                                            child: Text("Sat",
                                                style: GoogleFonts.lato(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          )
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.add)),
                                        Text("0"),
                                        OutlineButton(
                                            onPressed: () {},
                                            child: Icon(Icons.remove)),
                                      ],
                                    )
                                  ]),
                                ),
                              ))
                          : Container());
        },
        context: context);
  }
}
