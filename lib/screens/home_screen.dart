import 'package:flutter/material.dart';
import 'package:petadoption/config/colors.dart';
import 'package:petadoption/custom_view/custom_tab_indicator.dart';
import 'package:petadoption/screens/pet_details_screen.dart';

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

  static var favoritePetMap = <Map<String, String>>[
    {"Image": "assets/dog_4.png", "Name": "Jordan", "Race": "Bocker"},
    {"Image": "assets/dog_5.png", "Name": "Dannie", "Race": "Pug Dog"},
    {"Image": "assets/dog_6.png", "Name": "Charlie", "Race": "Pug Dog"},
  ];

  var tabsList = <Widget>[
    tabItemWidget(tabsArray[0]),
    tabItemWidget(tabsArray[1]),
    tabItemWidget(tabsArray[2]),
    tabItemWidget(tabsArray[3]),
    tabItemWidget(tabsArray[4]),
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
              color: textGrey,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "NewYork, USA",
            style: TextStyle(
              fontSize: 24,
              color: blackColor,
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
        unselectedLabelColor: textGrey,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          color: blackColor,
        ),
        labelColor: blackColor,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        indicator: CircleTabIndicator(color: blackColor, radius: 3),
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

  Widget petListItemWidget(Map<String, String> pet) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PetDetailsScreen()));
        },
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
                color: blackColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              pet["Race"],
              style: TextStyle(
                color: textGrey,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget petListWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        padding: EdgeInsets.only(left: 8),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          petListItemWidget(petMap[0]),
          petListItemWidget(petMap[1]),
          petListItemWidget(petMap[2]),
        ],
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
          color: blackColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget favoriteListViewWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        padding: EdgeInsets.only(left: 8),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          petListItemWidget(favoritePetMap[0]),
          petListItemWidget(favoritePetMap[1]),
          petListItemWidget(favoritePetMap[2]),
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
