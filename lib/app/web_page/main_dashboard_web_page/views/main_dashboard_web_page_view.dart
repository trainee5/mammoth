import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/web_page/profile_web_screen/views/profile_web_screen_view.dart';
import 'package:mammoth/models/top_navbar_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../../blog_web_screen/views/blog_web_screen_view.dart';
import '../../dashboard_web_screen/views/dashboard_web_screen_view.dart';
import '../../job_web_screen/views/job_web_screen_view.dart';
import '../../post_job_category_page/views/post_job_category_page_view.dart';
import '../../setting_web_screen/views/setting_web_screen_view.dart';
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

    void showNotificationMenu() async {
      await showMenu(
        color: Colors.transparent,
        constraints: BoxConstraints(
          maxHeight:402.px,
          maxWidth: 440.px
        ),
        context: context,
        shadowColor: ApkColors.blackShadow60p,
        menuPadding: EdgeInsets.symmetric(horizontal: 1.px,vertical: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        position: RelativeRect.fromLTRB(1200, 90, 0, 100),
        items: [
          PopupMenuItem(
            value: 1,
            child: Container(
              height:402.px,
              width: 440.px,
              decoration: BoxDecoration(
                color: ApkColors.textEditColor,
                borderRadius: BorderRadius.circular(12.px)
              ),
              child: Column(
                children: [
                  Container(
                    height: 40.px,
                    decoration: BoxDecoration(
                      color: ApkColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12.px),
                        topLeft: Radius.circular(12.px)
                      )
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20.px,),
                        Text(
                          "Notifications",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.primaryColor,
                              fontSize:  16.px),
                        ),
                        Spacer(),
                        Text(
                          "Mark all as read",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.blueColor,
                              fontSize:  12.px),
                        ),
                        SizedBox(width: 20.px,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ClampingScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context,index){
                      return Column(
                        children: [
                        SizedBox(
                        height: 66.px,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(width: 12.px,),
                            Padding(

                              padding: EdgeInsets.all(screenWidth * 0.005.px),

                              child: Image.asset(
                                IconPath.profileConstLogo,
                                height: screenWidth * 0.030.px,
                                width: screenWidth * 0.030.px,
                              ),
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize:  16.px),
                            ),
                            SizedBox(width: 5.px,),
                            Text(
                              "recently joined 1st mammuth",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize:  12.px),
                            ),
                            Spacer(),
                            Text(
                              "5 min",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize:  10.px),
                            ),

                            SizedBox(width: 20.px,),
                          ],
                        ),

                      ),
                          Divider(
                            height: 1.px,
                            color: ApkColors.blackShadow60p,
                          ),
                        ],
                      );

                    })
                  )
                ],
              ),
            ),
          ),
        ],
        elevation: 8.0,
      ).then((value) {
        if (value != null) print(value);
      });
    }
    void showSettingMenu() async {
       showMenu(
        color: Colors.transparent,
        constraints: BoxConstraints(
            maxHeight:145.px,
            maxWidth: 147.px
        ),
        context: context,
        shadowColor: ApkColors.blackShadow60p,
        menuPadding: EdgeInsets.symmetric(horizontal: 1.px,vertical: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        position: RelativeRect.fromLTRB(1000, 90, 180, 100),
        items: [
          PopupMenuItem(
            value: 1,
            child: Container(
              height:145.px,
              width: 147.px,
              decoration: BoxDecoration(
                  color: ApkColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12.px)
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      controller.selectedPage = 4;
                      controller.increment();
                    },
                    child: SizedBox(
                      height: 47.px,
                      child: Row(
                        children: [
                          SizedBox(width: 13.px,),
                          SvgPicture.asset(
                            IconPath.notificationSvg,
                            width: 16.px,
                            height: 16.px
                          ),
                          SizedBox(width: 7.54.px,),
                          Text(
                            "Profile",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize:  13.29.px),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.83.px,
                    color: ApkColors.blackShadow60p,
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.selectedPage = 5;
                      controller.increment();
                    },
                    child: SizedBox(
                      height: 47.px,

                      child: Row(
                        children: [
                          SizedBox(width: 13.px,),
                          SvgPicture.asset(
                              IconPath.notificationSvg,
                              width: 16.px,
                              height: 16.px
                          ),
                          SizedBox(width: 7.54.px,),
                          Text(
                            "Setting",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize:  13.29.px),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.83.px,
                    color: ApkColors.blackShadow60p,
                  ),
                  SizedBox(
                    height: 47.px,
                    child: Row(
                      children: [
                        SizedBox(width: 13.px,),
                        SvgPicture.asset(
                            IconPath.notificationSvg,
                            width: 16.px,
                            height: 16.px
                        ),
                        SizedBox(width: 7.54.px,),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.primaryColor,
                              fontSize:  13.29.px),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        elevation: 8.0,
      ).then((value) {
        if (value != null) print(value);
      });
    }





    return Obx((){
      controller.count.value;
      return  Scaffold(
        backgroundColor: ApkColors.webBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenWidth * 0.070),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(color: ApkColors.backgroundColor),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:  screenWidth * 0.025,vertical: screenWidth * 0.010 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Image.asset(
                      IconPath.mammothOneSt,
                      width: screenWidth * 0.150,
                    ),


                    SizedBox(
                      height: screenWidth * 0.024,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: TopNavbarModel.navItems.length,
                          itemBuilder: (context,index){
                          var item = TopNavbarModel.navItems[index];
                            return GestureDetector(
                              onTap: (){
                                controller.selectedPage = index;
                                controller.increment();
                                },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.017),
                                child: Column(
                                  children: [
                                    Text(
                                      item.name,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: (index == controller.selectedPage) ? ApkColors.primaryColor : ApkColors.orangeColor,
                                          fontSize: screenWidth * 0.014),
                                    ),
                                    SizedBox(height: screenWidth * 0.002),
                                    (controller.selectedPage == index)
                                        ? Container(
                                      height:  screenWidth * 0.001,
                                      width: (index  == 1 || index  == 2) ? screenWidth * 0.030 : screenWidth * 0.060,
                                      decoration: BoxDecoration(
                                        color: ApkColors.orangeColor,
                                        borderRadius:BorderRadius.only(
                                          bottomLeft: Radius.circular(screenWidth * 0.007),
                                          bottomRight: Radius.circular(screenWidth * 0.007)
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
                      height: screenWidth * 0.035,
                      child: Row(
                        children: [


                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: IconButton(
                                onPressed: (){

                                  print("object");
                                  showNotificationMenu();
                                  controller.increment();
                                },
                                icon:
                                SvgPicture.asset(
                              IconPath.notificationSvg,
                              width: screenWidth * 0.020,
                            )
                            ),
                          )

                          ,
                          SizedBox(
                            width: screenWidth * 0.013,
                          ),


                          IconButton(
                            onPressed: (){
                              showSettingMenu();
                              controller.increment();
                            },
                              icon: SvgPicture.asset(
                                IconPath.arrowDown,
                                width: screenWidth * 0.016,
                                fit: BoxFit.fitWidth,
                              ),),


                          SizedBox(
                            width: screenWidth * 0.004,
                          ),


                          Container(
                            height:  screenWidth * 0.035.px,
                            width:  screenWidth * 0.035.px,
                            padding: EdgeInsets.all(screenWidth * 0.001),
                            decoration: BoxDecoration(
                              color: ApkColors.orangeColor,
                              shape: BoxShape.circle
                            ),
                            child: GestureDetector(
                              onTap: (){
                               // Get.toNamed(Routes.PROFILE_SCREEN);
                                controller.increment();
                                controller.selectedPage = 4;
                              },
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.015),
                                  child: Image.asset(
                                    IconPath.profileConstLogo,
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.004,
                          ),
                          SizedBox(
                            height:  screenWidth * 0.035,

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
                                        fontSize:  screenWidth * 0.012),
                                  ),
                                  Text(
                                    "admin@gmail.com",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: ApkColors.primaryColor60p,
                                        fontSize: screenWidth * 0.011),
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
            ),
          ),
        ),
        body:IndexedStack(
          index: controller.selectedPage,
          children: const [
            DashboardWebScreenView(),
            JobWebScreenView(),
            BlogWebScreenView(),
            SubscriptionWebScreenView(),
            ProfileWebScreenView(),
            SettingWebScreenView(),


          ],
        )
      );
    });





  }
}
