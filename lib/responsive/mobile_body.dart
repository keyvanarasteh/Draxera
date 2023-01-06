import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  get ischeckboxed => null;

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('login'),
                          content: const Text(' giriş yapiniz:'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
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
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'gidiş dönüş',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Checkbox(
                        value: ischeckboxed,
                        activeColor: Colors.greenAccent,
                        tristate: true,
                        onChanged: (newbool) {},
                      )
                    ],
                  ),
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
