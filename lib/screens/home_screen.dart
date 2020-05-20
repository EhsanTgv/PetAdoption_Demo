import 'package:flutter/material.dart';
import 'package:petadoption/custom_view/custom_tab_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static var tabsArray = ["Hamster", "Parrot", "Dog", "Cat", "Guinea Pig"];

  static var petMap = <Map<String, String>>[
    {"Image": "assets/dog_1.png", "Name": "Charlie", "Race": "Pug Dog"},
    {"Image": "assets/dog_2.png", "Name": "Jordan", "Race": "Bull Terrier"},
    {"Image": "assets/dog_3.png", "Name": "Dannie", "Race": "Bocker"},
  ];

  var tabsList = <Widget>[
    tabItemWidget(tabsArray[0]),
    tabItemWidget(tabsArray[1]),
    tabItemWidget(tabsArray[2]),
    tabItemWidget(tabsArray[3]),
    tabItemWidget(tabsArray[4]),
  ];

  var petList = <Widget>[
    petListItemWidget(petMap[0]),
    petListItemWidget(petMap[1]),
    petListItemWidget(petMap[2]),
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

  static Widget petListItemWidget(Map<String, String> pet) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(pet["Image"]),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.0),
              topLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
          SizedBox(height: 12),
          Text(
            pet["Name"],
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            pet["Race"],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
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

  Widget favoritePetLayoutWidget() {
    return Column(
      children: <Widget>[
        favoriteTitleWidget(),
        favoriteListViewWidget(),
      ],
    );
  }

  Widget favoriteTitleWidget() {
    return Container(
      margin: EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      child: Text(
        "Your Favorite Pets",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container favoriteListViewWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Text("1"),
          Text("2"),
          Text("3"),
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
              favoritePetLayoutWidget()
            ],
          ),
        ),
      ),
    );
  }
}
