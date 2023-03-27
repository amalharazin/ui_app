import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingPage extends StatelessWidget {
  const OutBoardingPage({
    Key? key,

    required this.image,
    required this.title,
    required this.subTitle
  }) : super(key: key);
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$image.png',height: 300,),
        SizedBox(height: 36,),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 34,end: 34),
          child: Column(
            children: [
              Text(title,style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color:const Color(0xFF23203F)

              ),
              ),
              SizedBox(height: 20,),
              Text(subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color:const Color(0xFF716F87)
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
