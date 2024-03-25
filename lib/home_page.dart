import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2c34),
      // const Color(0xff181720),
      body: Column(
        children: [
          Expanded(
              child: Expanded(
                  child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            color: Colors.black,
          ))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // alignment: Alignment.center,EXP
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Today\'s  Sell',
                            style: 
                               TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                        Text('100',
                            style:  TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Return',
                            style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                        Text('100',
                            style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Total Bill',
                            style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                        Text('100',
                            style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        // border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Destroy',
                            style:TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                        Text('100',
                            style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                  color: Colors.white),
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
