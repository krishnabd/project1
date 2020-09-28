import 'package:flutter/material.dart';
import 'search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okay Journey',
      routes: {
        '/home': (context) => HomeScreenn(),
        '/form': (context) => HomeScreen(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple[100],
          fontFamily: "RobotoMono",
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color(0xFF4B4B4B)),
          )),
      initialRoute: '/home',
    );
  }
}

class HomeScreenn extends StatefulWidget {
  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  List<bool> isSelected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected = [
      true,
      false,
      false,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContent(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 35),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF8E24AA),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Map'),
              icon: Icon(Icons.place),
            ),
            BottomNavigationBarItem(
              title: Text('Favorites'),
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('History'),
              icon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              title: Text('Chat'),
              icon: Icon(Icons.chat),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: rowIcons(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ToggleButtons(
                    selectedColor: Colors.purple,
                    splashColor: Colors.purpleAccent,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('One way', style: TextStyle(fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            Text('Round Trip', style: TextStyle(fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            Text('Multi city', style: TextStyle(fontSize: 15)),
                      ),
                    ],
                    isSelected: isSelected,
                    onPressed: (index) {
                      setState(() {
                        for (var i = 0; i < isSelected.length; i++) {
                          if (i == index) {
                            isSelected[i] = true;
                          } else {
                            isSelected[i] = false;
                          }
                        }
                      });
                    },
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('From', style: TextStyle(fontSize: 20)),
                        Text('To', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('KTM', style: TextStyle(fontSize: 30)),
                        IconButton(
                          icon: Icon(Icons.swap_horiz),
                          color: Colors.purple,
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        Text('BRT', style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kathmandu', style: TextStyle(fontSize: 20)),
                        Text('Biratnagar', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Text('Depart Date', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('6,9 2077', style: TextStyle(fontSize: 30)),
                        VerticalDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlatButton(
                              color: Colors.white,
                              textColor: Colors.purple,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.purpleAccent,
                              onPressed: () {},
                              child: Text(
                                "Tommorow",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                            FlatButton(
                              color: Colors.white,
                              textColor: Colors.purple,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.purpleAccent,
                              onPressed: () {},
                              child: Text(
                                "Day After",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding:
                        EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
                    child: Row(
                      children: [
                        Text('Seats Required', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('01 Traveller', style: TextStyle(fontSize: 30)),
                        InkWell(
                          child:
                              Text("1", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("2", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("3", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("4", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("5", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Text(
                            "6",
                            style: TextStyle(color: Colors.purple),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 120.0),
                          color: Colors.purple,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.purpleAccent,
                          onPressed: () {
//                            Navigator.pushReplacementNamed(context, '/form');
                            Navigator.pushNamed(context, '/form');
                          },
                          child: Text(
                            "Search",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

//
    );
  }
}

Widget appBarContent() {
  return AppBar(
    backgroundColor: Colors.purple[800],
    titleSpacing: 7,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.account_circle),
      color: Colors.white,
      iconSize: 50.0,
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.notifications),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        color: Colors.white,
        iconSize: 30,
        onPressed: () {},
      ),
    ],
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('OkayJourney'),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Booking Happiness',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                '*Okay Point',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget rowIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.directions_bus),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Bus', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.directions_car),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Sumo', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.local_taxi),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Hiace', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.place),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Tour', style: TextStyle(fontSize: 20)),
        ],
      ),
    ],
  );
}
