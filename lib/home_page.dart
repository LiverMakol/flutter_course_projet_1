import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Bienvenue!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              // width: 500,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topContainer(Colors.black, 'assets/images/1.jpg', 150, 100),
                  topContainer(Colors.red, 'assets/images/2.jpg', 150, 100),
                  topContainer(Colors.amber, 'assets/images/3.jpg', 150, 100),
                  // Expanded(
                  //   child: Container(
                  //     height: 150,
                  //     // width: 300,
                  //     decoration: BoxDecoration(
                  //       color: Colors.blueAccent,
                  //       borderRadius: BorderRadius.circular(20),
                  //       image: DecorationImage(
                  //         image: AssetImage('assets/images/3.jpg'),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(height: 700, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget topContainer(Color color, String image, double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
  );
}
