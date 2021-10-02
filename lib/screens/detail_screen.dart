import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/models/categorycard.dart';
import 'package:exerciseapp/widgets/box.dart';
import 'package:exerciseapp/widgets/image_and_title.dart';
import 'package:exerciseapp/widgets/sessioncard.dart';
import 'package:flutter/material.dart';
import 'package:exerciseapp/widgets/bottomnav.dart';

class DetailScreen extends StatelessWidget{

  final Category category;

  const DetailScreen({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var size=MediaQuery.of(context).size;
      return Scaffold(
        bottomNavigationBar: BottomNavigate(),
        body: Stack(
          children: [
            Container(
              color: kBlueColor,
              height: size.height *0.35,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageAndTitle(category: category),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNum:1,
                          isDone: true,
                          press: (){},
                        ),
                        SessionCard(
                          sessionNum:2,
                          press: (){},
                        ),
                        SessionCard(
                          sessionNum:3,
                          press: (){},
                        ),
                        SessionCard(
                          sessionNum:4,
                          press: (){},
                        ),
                        SessionCard(
                          sessionNum:5,
                          press: (){},
                        ),
                        SessionCard(
                          sessionNum:6,
                          press: (){},
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    BoxDescription(category:category)
                  ],
                )
              ),
            ),
            ) ],),
          );
  }
}