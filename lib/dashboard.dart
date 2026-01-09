import 'package:dashboard/Model/model.dart';
import 'package:dashboard/responsive-dashboard/Config/responsive.dart';
import 'package:dashboard/responsive-dashboard/Config/size_config.dart';
import 'package:dashboard/utilis/colors.dart';
import 'package:dashboard/widgets/bar_chart.dart';
import 'package:dashboard/widgets/header_parts_widget.dart';
import 'package:dashboard/widgets/side_drawer_menu_widget.dart';
import 'package:dashboard/widgets/transfer_card_widget.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
   MyDashboard ({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //find out 
    return Scaffold(
      backgroundColor: MyAppColor.backgroundColor,
      key: drawerKey,
      drawer: SizedBox(width: 100,child: SideDrawerMenu(),),
      appBar: !Responsive.isDesktop(context) ?  
        AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              drawerKey.currentState!.openDrawer();
            }, 
            icon: const Icon(Icons.menu,color: Colors.black,)),

      ) 
      :PreferredSize(
        preferredSize: Size.zero, 
        child: SizedBox()),
      body: SafeArea(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(Responsive.isDesktop(context)) 
              const Expanded(
                flex: 1,
                child: SideDrawerMenu()
              ),
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 20 : 40,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // this is the dashboard for text and search bar
                      const HeaderParts(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical *4,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          // We will have to dynamically map over infoCardData
                          children: infoCardData.map((info) {
                            return TransferCard(infoCardModel: info);
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                            'Balance',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black54,
                              height: 1.3
                            ),
                          ),
                            Text(
                            '\$1500',
                            style: TextStyle(
                              fontSize: 30,
                              color: MyAppColor.primary,
                              fontWeight: FontWeight.w900,
                              height: 1.3
                            ),
                          ),
                          ],
                          ),
                          Text(
                            'PAST 30 Days',
                            style: TextStyle(
                              fontSize: 16,
                              color: MyAppColor.primary,
                              fontWeight: FontWeight.w900,
                              height: 1.3
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      SizedBox(
                        height: 180,
                        child: MyBarChart(),
                      )
                    ],
                  ),
                )
              ),
               if(Responsive.isDesktop(context)) 
               Expanded(
                flex: 4,
                child: Container(
                  color: Colors.amber,
                ))
            
            
          ],
        ),
      ),
    );
  }
}