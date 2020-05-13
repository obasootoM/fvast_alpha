import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fvastalpha/views/partials/utils/styles.dart';
import 'package:fvastalpha/views/partials/widgets/custom_button.dart';
import 'package:fvastalpha/views/user/home/type_selector.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController myLocationController =
      TextEditingController(text: "Current Location");
  TextEditingController theirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Theme(
              data: ThemeData(
                  primaryColor: Styles.commonDarkBackground,
                  hintColor: Styles.commonDarkBackground),
              child: TextField(
                enabled: false,
                controller: myLocationController,
                decoration: InputDecoration(
                    fillColor: Styles.commonDarkBackground,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.location_searching,
                      color: Colors.blue,
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: VerticalDivider(
                  thickness: 5,
                  color: Styles.commonDarkBackground,
                ),
              )),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Theme(
                data: ThemeData(
                    primaryColor: Styles.commonDarkBackground,
                    hintColor: Styles.commonDarkBackground),
                child: TextField(
                  enabled: false,
                  controller: theirController,
                  decoration: InputDecoration(
                      fillColor: Styles.commonDarkBackground,
                      filled: true,
                      hintText: "Choose Destination",
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomButton(
          title: "PROCEED",
          onPress: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => ModeSelector()));
          }),
    );
  }
}