import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_ui_app/screens/out_boarding_page.dart';
import 'package:vp18_ui_app/widgets/container_page_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
   OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _pageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _pageIndex!=2,
                replacement: TextButton(onPressed: (){
                },

                    style: TextButton.styleFrom(
                        primary: Colors.blue.shade800,
                        visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity
                        )
                    ),
                    child:Text('Start')),
                child: TextButton(onPressed: (){
                },

                    style: TextButton.styleFrom(
                        primary: Colors.blue.shade800,
                        visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity
                        )
                    ),
                    child:Text('SKIP')),

              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (int pageIndex){
                  print(pageIndex);
                  setState((){
                    _pageIndex=pageIndex;
                  });

                },
                scrollDirection: Axis.horizontal,
                children: [
                  OutBoardingPage(image: 'image_1', title: 'Welcom!', subTitle: 'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..'),
                  OutBoardingPage(image: 'image_2', title: 'Add to cart', subTitle: 'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..'),
                  OutBoardingPage(image: 'image_3', title: 'Enjoy Purchase!', subTitle: 'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..')
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TabPageSelectorIndicator(backgroundColor:_pageIndex==0? Colors.blue :Colors.grey, borderColor:_pageIndex==0? Colors.orange :Colors.transparent, size: 20),
            //     TabPageSelectorIndicator(backgroundColor:_pageIndex==1? Colors.blue :Colors.grey, borderColor:_pageIndex==1? Colors.orange :Colors.transparent, size: 20),
            //     TabPageSelectorIndicator(backgroundColor:_pageIndex==2? Colors.blue :Colors.grey, borderColor:_pageIndex==2? Colors.orange :Colors.transparent, size: 20),
            //
            //
            //
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerPageIndicator(selected: _pageIndex==0,marginEnd: 14,),
                ContainerPageIndicator(selected: _pageIndex==1,marginEnd: 14,),
                ContainerPageIndicator(selected: _pageIndex==2,marginEnd: 14,),




              ],
            ),
            SizedBox(height: 100),

          ],
        ),
      ),
    );
  }
}


