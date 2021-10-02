import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomNavigate extends StatelessWidget{
  final bool isActive;
  final Function press;

  const BottomNavigate({Key key, this.isActive=false, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
     height: 80,
     color: Colors.white,
     child: GestureDetector(
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
             SvgPicture.asset("assets/icons/calendar.svg", color: isActive ? kActiveIconColor : kTextColor),
             SvgPicture.asset("assets/icons/gym.svg", color: isActive ? kActiveIconColor : kTextColor),
             SvgPicture.asset("assets/icons/Settings.svg", color: isActive ? kActiveIconColor : kTextColor),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Text("تقویم"),
               Text("ورزش ها"),
               Text("تنظیمات"),
             ],
           )
         ],
       ),
     )
   );
  }
  }