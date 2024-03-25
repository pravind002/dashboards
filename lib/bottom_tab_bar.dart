
import 'package:flutter/material.dart';


import 'View/Bottom Tabs/page_four.dart';
import 'View/Bottom Tabs/page_three.dart';
import 'View/Bottom Tabs/page_two.dart';
import 'home_page.dart';

//import 'home.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({
    super.key,
  });

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int currenttab = 0;
  List<Widget> screens = <Widget>[
     HomePage(),
    const PageTwo(),
    const PageThree(),
    const PageFour()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currebtScreen =  HomePage();

  bool isclicked = false;
  bool clicked = false;

  

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currebtScreen),
      // resizeToAvoidBottomInset: false,

      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
              height: 60,
              color: const Color(0xff2c2c34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currebtScreen = HomePage();
                        currenttab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              currenttab == 0 ? const Color(0xffffffff) :  Colors.white.withOpacity(.5),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currenttab == 0
                                ? const Color(0xffffffff)
                                :  Colors.white.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      // currentScreen[1];
                      setState(() {
                        currebtScreen = const PageTwo();
                        currenttab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_available,
                          color:
                              currenttab == 1 ? const Color(0xffffffff) : Colors.white.withOpacity(.5),
                        ),
                        // Icon(Icons.chat,
                        // color: currenttab==1? Colors.blue:null,),
                        Text(
                          'Page 2',
                          style: TextStyle(
                            color: currenttab == 1
                                ? const Color(0xffffffff)
                                : Colors.white.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      // /
                      setState(() {
                        currebtScreen = const PageThree();
                        currenttab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          color:
                              currenttab == 2 ? const Color(0xffffffff) : Colors.white.withOpacity(.5),
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            color: currenttab == 2
                                ? const Color(0xffffffff)
                                : Colors.white.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      // currentScreen[3];
                      setState(() {
                        currebtScreen = const PageFour();
                        currenttab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color:
                              currenttab == 3 ? const Color(0xffffffff) : Colors.white.withOpacity(.5),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currenttab == 3
                                ? const Color(0xffffffff)
                                : Colors.white.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
