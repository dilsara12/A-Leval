import 'package:alevel/Widgets/subject.dart';
import 'package:flutter/material.dart';

class ALevel extends StatelessWidget {
  const ALevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  const Color.fromARGB(255, 0, 0, 0)
                ], // Gradient colors
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: AppBar(
              leading: Icon(
                Icons.arrow_back,
                color: Color(0xffffffff),
              ),
              backgroundColor: Colors.transparent, // Make AppBar transparent
              elevation: 0, // Remove shadow
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFFC107),
                const Color.fromARGB(255, 134, 129, 129)
              ], // Define the colors
              begin: Alignment.topCenter, // Gradient start position
              end: Alignment.bottomCenter, // Gradient end position
            ),
          ),
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          "Choose Your Streem",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Subject(
                          image: 'assets/images/Maths.jpg',
                          title: "Maths",
                          fontSize: 27,
                          sizeboxwidth: 55,
                          sizeboximg: 5,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Subject(
                          image: 'assets/images/Science.jpg',
                          title: "Science",
                          fontSize: 27,
                          sizeboxwidth: 36,
                          sizeboximg: 5,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Subject(
                          image: 'assets/images/Technology.jpg',
                          title: "Tecnology",
                          fontSize: 27,
                          sizeboxwidth: 6,
                          sizeboximg: 5,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Subject(
                          image: 'assets/images/Commerce.jpg',
                          title: "Commerce",
                          fontSize: 27,
                          sizeboxwidth: 4,
                          sizeboximg: 1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Subject(
                          image: 'assets/images/Art.jpg',
                          title: "Arts",
                          fontSize: 27,
                          sizeboxwidth: 77,
                          sizeboximg: 9,
                        ),
                      ]))),
        ));
  }
}
