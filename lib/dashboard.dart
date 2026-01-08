import 'package:dashboard/responsive-dashboard/Config/responsive.dart';
import 'package:dashboard/utilis/colors.dart';
import 'package:dashboard/widgets/side_drawer_menu_widget.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
   MyDashboard ({super.key});

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
          ],
        )),
    );
  }
}