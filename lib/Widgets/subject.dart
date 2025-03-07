import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  const Subject({
    super.key,
    required this.title,
    this.image,
    required this.fontSize,
    required this.sizeboxwidth,
    required this.sizeboximg,
  });
  final String title;
  final String? image;
  final double fontSize;
  final double sizeboxwidth;
  final double sizeboximg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            if (image != null) // Show image only if provided
              ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Rounded corners for image
                  child: Image.asset(
                    image!,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  )),
            SizedBox(
              width: sizeboximg,
            ),
            Text(
              title,
              style: TextStyle(
                color: Color.fromARGB(255, 91, 88, 88),
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: sizeboxwidth,
            ),

            // Adjust image size
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 188, 188),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.arrow_forward,
                size: 50,
                color: Color.fromARGB(255, 75, 72, 72),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
