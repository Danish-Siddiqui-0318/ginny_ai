import 'package:flutter/cupertino.dart';
import 'package:ginny_ai/pallete.dart';

class FeaturesBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descriptionText;

  const FeaturesBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:20).copyWith(
          left: 15
        ),
        child: Column(
          children: [
            Align(
              alignment:Alignment.centerLeft ,
              child: Text(
                headerText,
                style: TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                descriptionText,
                style: TextStyle(fontFamily: "Cera Pro", color: Pallete.blackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
