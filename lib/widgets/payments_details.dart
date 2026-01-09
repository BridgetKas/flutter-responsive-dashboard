import 'package:dashboard/Model/model.dart';
import 'package:dashboard/responsive-dashboard/Config/size_config.dart';
import 'package:dashboard/utilis/colors.dart';
import 'package:dashboard/widgets/payment_detail.dart';
import 'package:flutter/material.dart';

class PaymentsDetails extends StatelessWidget {
  const PaymentsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //find out 

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height:SizeConfig.blockSizeVertical * 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                offset: Offset(10,15,)
              )
            ]
          ),
          child: Image.asset('assets/dashboard/atm_card.jpg'),
        ),
         SizedBox(
          height:SizeConfig.blockSizeVertical * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                fontWeight: FontWeight.w900,
                color: Colors.black
              ),
            ),
             Text(
              '02 Mar 2021',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                color: MyAppColor.secondary,
              ),
            ),
              
          ],
        ),
        SizedBox(
          height:SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) {
            final activity = recentActivities[index];
            return PaymentDetail(
              icon: activity.icon, 
              label: activity.label, 
              amount: activity.amount, 
              status: activity.status);
          }),
        ),
         SizedBox(
          height:SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Payments',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                fontWeight: FontWeight.w900,
                color: MyAppColor.primary
              ),
            ),
             Text(
              '02 Mar 2021',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
                color: MyAppColor.secondary,
              ),
            ),
              
          ],
        ),
         SizedBox(
          height:SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) {
            final activity = recentActivities[index];
            return PaymentDetail(
              icon: activity.icon, 
              label: activity.label, 
              amount: activity.amount, 
              status: activity.status);
          }),
        ),


      ],

    );
  }
}