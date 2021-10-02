import 'package:exerciseapp/changenumberstopersian.dart';
import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/models/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxDescription extends StatelessWidget{

  final Category category;
  final int sessionNum;
  const BoxDescription({Key key, this.category, this.sessionNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text(category.title,style: const TextStyle(fontFamily: "IRANYekan",fontWeight: FontWeight.bold),),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              SvgPicture.asset(
                category.image,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                       Text(ReplaceNumbers("سطح 2 ")),
                       Text("جلسات خود را شروع کنید",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("assets/icons/Lock.svg"),
              ),
            ],
          ),
        )
      ],
    );
  }
}