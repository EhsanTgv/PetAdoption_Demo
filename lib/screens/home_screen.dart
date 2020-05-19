import 'package:flutter/material.dart';
import 'package:petadoption/custom_view/custom_tab_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static Map<String, String> petMap = [
    {"Image": "assets/dog_1.png", "Name": "Charlie", "Race": "Pug Dog"},
    {"Image": "assets/dog_2.png", "Name": "Jordan", "Race": "Bull Terrier"},
    {"Image": "assets/dog_3.png", "Name": "Dannie", "Race": "Bocker"},
  ] as Map<String, String>;

  var tabsList = <Widget>[
    tabItemWidget("Hamster"),
    tabItemWidget("Parrot"),
    tabItemWidget("Dog"),
    tabItemWidget("Cat"),
    tabItemWidget("Guinea Pig"),
  ];

  var petList = <Widget>[
    Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(petMap["Image"][0]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.0),
              topLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
          SizedBox(height: 12),
          Text(
            petMap["Name"][0],
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            petMap["Race"][0],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(petMap["Image"][1]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.0),
              topLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
          SizedBox(height: 12),
          Text(
            petMap["Name"][1],
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            petMap["Race"][1],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(petMap["Image"][2]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.0),
              topLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
          SizedBox(height: 12),
          Text(
            petMap["Name"][2],
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            petMap["Race"][2],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  ];

  Widget appBarWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.menu),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }

  Widget titleWidget() {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 24),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Your Location",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "NewYork, USA",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget tabBarWidget() {
    return DefaultTabController(
      length: tabsList.length,
      child: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          color: Colors.black,
        ),
        labelColor: Colors.black,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        // indicatorColor: Colors.black,
        indicator: CircleTabIndicator(color: Colors.black, radius: 3),
        tabs: tabsList,
      ),
    );
  }

  static Widget tabItemWidget(String name) {
    return Tab(
      child: Text(
        name,
      ),
    );
  }

  Widget petListWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: petList,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              appBarWidget(),
              titleWidget(),
              tabBarWidget(),
              petListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
