import 'package:exerciseapp/constants.dart';
import 'package:flutter/material.dart';

import '../changenumberstopersian.dart';

class SessionCard extends StatelessWidget{
  final int sessionNum;
  final bool isDone;
  final Function press;
  const SessionCard({Key key, this.sessionNum, this.isDone=false, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
          return ClipRRect(
            child: Container(
                width: constraint.maxWidth / 2 - 10,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 17,
                        spreadRadius: -23,
                        color: kTextColor
                    )],),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children:[
                        Container(
                          width: 43,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kBlueColor),
                            color: isDone ? kBlueColor : Colors.white,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color:isDone ? Colors.white : kBlueColor,
                           )
                        ),
                        const SizedBox(width: 10),
                        Text(ReplaceNumbers("جلسه $sessionNum "),
                          style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: "IRANYekan"),
                        )]
                    ),
                  ),
                ),
              ),
          ),
        );
    });
  }
}