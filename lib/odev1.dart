// ignore_for_file: unnecessary_const, unused_local_variable, non_constant_identifier_names, prefer_const_constructors, duplicate_ignore, dead_code, unused_label, prefer_typing_uninitialized_variables

import 'dart:js';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool ischecked = false;

  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    var DeviceTYpe = checkDevice(scrWidth);

    var ischeckboxed;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bus_alert),
                  label: '',
                )
              ],
            ),
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  icon: Icon(Icons.directions_boat),
                ),
                Tab(
                  icon: Icon(Icons.directions_walk),
                )
              ]),
              title: Center(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/thy.png"),
                ),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.login),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.black,
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 20,
                      color: Colors.black12,
                      child: const DrawerHeader(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                        ),
                        child: Image(image: AssetImage("assets/thy.png")),
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('planla ve uç'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('seyahat deneyimi'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('hizmetlerimiz'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('kampanyalar'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('iletişim'),
                    onTap: () {},
                  ),
                  Chip(
                    label: const Text('flutter'),
                    onDeleted: () {
                      debugPrint("do someting");
                    },
                  ),
                  Text(
                    'gidiş dönüş',
                    style: TextStyle(fontSize: 17.0),
                  ),
                  Checkbox(
                    value: ischeckboxed,
                    activeColor: Colors.greenAccent,
                    tristate: true,
                    onChanged: (newbool) {
                      setState(() {
                        ischecked = newbool!;
                      });
                    },
                  )
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          child: Image.network(
                              'https://images.pexels.com/photos/1266831/pexels-photo-1266831.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                        child: Image.network(
                                            'https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(18)),
                                      child: Image.network(
                                          'https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    )
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
