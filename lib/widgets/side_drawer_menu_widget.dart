import 'package:dashboard/Model/model.dart';
import 'package:dashboard/responsive-dashboard/Config/size_config.dart';
import 'package:dashboard/utilis/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideDrawerMenu extends StatefulWidget {
  const SideDrawerMenu({super.key});

  @override
  State<SideDrawerMenu> createState() => _SideDrawerMenuState();
}

class _SideDrawerMenuState extends State<SideDrawerMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: SizedBox(
        // height: SizeConfig.screenHeight,
        width: double.infinity,
        // color: MyAppColor.secondary,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.only(top:20),
                child: SizedBox(height: 40,width: 25,child:SvgPicture.asset("assets/dashboard/people.svg") ,),
              ),
              ...List.generate(menuIcons.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    
                  },
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 20),
                         child: SvgPicture.asset(menuIcons[index], 
                         color: selectedIndex == index ? Colors.black: MyAppColor.iconGray,
                         fit: BoxFit.cover,
                         height: 30,
                         width: 30,),),
                        Container(
                          height: 40,
                          width: 3,
                          decoration: BoxDecoration(
                            color: selectedIndex == index ? Colors.red : Colors.transparent,
                            borderRadius: BorderRadius.circular(20) ),

                        )
                        
                      ],
                      
                    ),
                  ),
                );
              } )
            ],
          ),
        ),
      ),
    );
  }
}