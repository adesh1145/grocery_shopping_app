// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  static var imgList = [
    "assets/images/client.png",
  ];
  static var imgDetail = ["Fast Food"];
  static var index=0;
  static var uiDetail=<Widget>[
     Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
              Container(
              height: 30,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                title: Text(
                  "All Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: InkWell(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("View all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                      Icon(Icons.chevron_right, color: Colors.green),
                    ],
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              margin: EdgeInsets.only(top: 15),

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color.fromARGB(255, 195, 194, 194),
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Image.asset(_homePageState.imgList[0]),
                        ),
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(
                            top: 10,
                            left: 5,
                          ),
                          child: InkWell(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(imgDetail[0],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green)),
                                Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 8,
              ),
            ),
      
         
            SizedBox(
              height: 300*5,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context, index) {
                return    Column(
                      children: [
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: ListTile(
                            title: Text(
                              "Hot Deals",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: InkWell(
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "View all",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  Icon(Icons.chevron_right, color: Colors.green),
                                ],
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 230,
        
                          // color: Colors.amber,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 158,
                                      margin: EdgeInsets.only(
                                          top: 8, bottom: 20, left: 8, right: 8),
                                      child: Card(
                                        elevation: 7,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)),
                                        child: Container(
                                          width: 158,
                                          child: Image.asset(imgList[0]),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "HamBurger",
                                      style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money_outlined,
                                        ),
                                        Text(
                                          "25.00",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                onTap: () {},
                              );
                            },
                            itemCount: 5,
                          ),
                        ),
                      ],
                    )
                  ;
                  
              }, 
              itemCount: 20,
              ),
            ),
          ],
        ),
    
  Center(
      child: Text("Cart"),
  ),
  Center(
      child: Text("Favourate"),
  ),
  Center(
      child: Text("Profile"),
  ),
  Center(
      child: Text("Settings"),
  )];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Grocery",
            style: TextStyle(fontSize: 20),
          ),
        ),
        
        actions: [
          InkWell(
            child: Icon(Icons.search),
            onTap: () {
              
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Colors.green,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favourtes"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
            accountName: Text("Adesh Yadav"),
            accountEmail:Text("adeshyadav1145@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("assets/images/client.png"),
            ),  
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
      ),
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text("Cart"),
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text("Favourite"),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Profile"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings"),
      ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: uiDetail[index],
          ),
       );
  }
}
