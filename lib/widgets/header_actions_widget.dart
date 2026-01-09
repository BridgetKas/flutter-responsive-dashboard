import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset('assets/dashboard/calendar-lines-svgrepo-com.svg',width: 20,),
        ),
        SizedBox(width: 10,),
        Stack(
          children: [
            Positioned(
              top: 7,
              right: 8,
              child: CircleAvatar(
                radius: 3,
                backgroundColor: Colors.red,
              )
            ),
            IconButton(
              onPressed: () {}, 
              icon: SvgPicture.asset('assets/dashboard/notification-bell-on-svgrepo-com.svg',width: 20,),
            ),
          ],
        ),
         SizedBox(width: 15,),
         Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage('assets/users/person2.jpg'),
                ),
                Positioned(
                  bottom: 3,
                  right: 0,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  ))
              ],
            ),
            SizedBox(width: 5),
            RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.arrow_back_ios_new,
                size: 14,
                color: Colors.black
              ),
            ),
            SizedBox(width: 5),


          ],
         )
      ],);
  }
}