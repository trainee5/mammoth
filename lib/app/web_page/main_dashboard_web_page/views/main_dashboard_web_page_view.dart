import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/models/top_navbar_model.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../../blog_web_screen/views/blog_web_screen_view.dart';
import '../../dashboard_web_screen/views/dashboard_web_screen_view.dart';
import '../../job_web_screen/views/job_web_screen_view.dart';
import '../../post_job_category_page/views/post_job_category_page_view.dart';
import '../../subscription_web_screen/views/subscription_web_screen_view.dart';
import '../controllers/main_dashboard_web_page_controller.dart';

class MainDashboardWebPageView extends GetView<MainDashboardWebPageController> {
  const MainDashboardWebPageView({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(MainDashboardWebPageController());
    Get.lazyPut<MainDashboardWebPageController>(
          () => MainDashboardWebPageController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Obx((){
      controller.count.value;
      return  Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenWidth * 0.090),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(color: ApkColors.backgroundColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:  screenWidth * 0.036,vertical: screenWidth * 0.010 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(
                          IconPath.mammothOneSt,
                          width: screenWidth * 0.216,
                        ),


                        SizedBox(
                          height: screenWidth * 0.050,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(vertical: screenWidth * 0.010),
                              itemCount: TopNavbarModel.navItems.length,
                              itemBuilder: (context,index){
                              var item = TopNavbarModel.navItems[index];
                                return GestureDetector(
                                  onTap: (){
                                    controller.selectedPage = index;
                                    controller.increment();
                                    },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.010),
                                    child: Column(
                                      children: [
                                        Text(
                                          item.name,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: (index == controller.selectedPage) ? ApkColors.primaryColor : ApkColors.orangeColor,
                                              fontSize: screenWidth * 0.018),
                                        ),
                                        SizedBox(height: screenWidth * 0.002),
                                        (controller.selectedPage == index)
                                            ? Container(
                                          height:  screenWidth * 0.002,
                                          width: (index  == 1 || index  == 2) ? screenWidth * 0.040 : screenWidth * 0.080,
                                          decoration: BoxDecoration(
                                            color: ApkColors.orangeColor,
                                            borderRadius:BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)
                                            )
                                          ),

                                        )
                                       : SizedBox()
                                      ]

                                    ),
                                  ),
                                );

                          }),
                        ),




                        SizedBox(
                          height: screenWidth * 0.050,
                          child: Row(
                            children: [

                              SvgPicture.asset(
                                IconPath.notificationSvg,
                                width: screenWidth * 0.020,
                              ),
                              SizedBox(
                                width: screenWidth * 0.018,
                              ),

                              SvgPicture.asset(
                                IconPath.arrowDown,
                                width: screenWidth * 0.018,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(
                                width: screenWidth * 0.006,
                              ),


                              Container(
                                height:  screenWidth * 0.050,
                                width:  screenWidth * 0.050,
                                padding: EdgeInsets.all(screenWidth * 0.001),
                                decoration: BoxDecoration(
                                  color: ApkColors.orangeColor,
                                  shape: BoxShape.circle
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.toNamed(Routes.PROFILE_SCREEN);
                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                      child: Image.asset(
                                        IconPath.profileConstLogo,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.006,
                              ),
                              SizedBox(
                                height:  screenWidth * 0.060,

                                //color: Colors.cyan,
                                child: GestureDetector(
                                  onTap: (){
                                    Get.toNamed(Routes.PROFILE_SCREEN);
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            color: ApkColors.primaryColor,
                                            fontSize:  screenWidth * 0.018),
                                      ),
                                      Text(
                                        "admin@gmail.com",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            color: ApkColors.primaryColor60p,
                                            fontSize: screenWidth * 0.016),
                                      )
                                    ],
                                  ),
                                ),

                                // child:
                              ),
                            ],
                          ),
                        ),





                      ],
                    ),
                  ),
                  SizedBox(
                    height:screenWidth * 0.010,
                  ),
                ],
              ),
            ),
          ),
        ),
        body:IndexedStack(
          index: controller.selectedPage,
          children: const [
            DashboardWebScreenView(),
            JobWebScreenView(),
            BlogWebScreenView(),
            SubscriptionWebScreenView()


          ],
        )
      );
    });



  }
}
