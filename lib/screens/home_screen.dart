import 'package:flutter/material.dart';
import 'package:petadoption/custom_view/custom_tab_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabsList = <Widget>[
    tabItemWidget("Hamster"),
    tabItemWidget("Parrot"),
    tabItemWidget("Dog"),
    tabItemWidget("Cat"),
    tabItemWidget("Guinea Pig"),
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
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: ClipRRect(
              child: Image.asset("assets/dog_1.png"),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32.0),
                topLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              ),
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
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
