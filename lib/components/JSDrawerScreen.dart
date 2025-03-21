import 'package:flutter/material.dart';
import 'package:job_search/utils/JSWidget.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:job_search/modelgen/drawerlist1.g.dart';
import 'package:job_search/modelgen/drawerlist2.g.dart';
import 'package:job_search/screens/JSHomeScreen.dart';
import 'package:job_search/utils/JSColors.dart';
import 'package:job_search/utils/JSDataGenerator.dart';
import 'package:job_search/main.dart';


class JSDrawerScreen extends StatefulWidget {
  const JSDrawerScreen({Key? key}) : super(key: key);

  @override
  _JSDrawerScreenState createState() => _JSDrawerScreenState();
}

class _JSDrawerScreenState extends State<JSDrawerScreen> {
  List<Drawerlist1> drawerList = [];
  List<Drawerlist2> drawerList2 = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
    drawerList = await getDrawerList1();
    drawerList2 = await getDrawerList2();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      height: context.height(),
      color: context.scaffoldBackgroundColor,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: context.scaffoldBackgroundColor,
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        finish(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: drawerList.map((e) {
                      int index = drawerList.indexOf(e);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e.companyName!, style: boldTextStyle()).paddingAll(8),
                              Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ),
                          Divider(color: gray.withOpacity(0.4)).visible(index < 2),
                        ],
                      ).onTap(() {
                       widget.launch(context);
                      });
                    }).toList(),
                  ).paddingAll(8),
                  Container(color: appStore.isDarkModeOn ? scaffoldDarkColor : js_backGroundColor, height: 10, width: context.width()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: drawerList2.map((e) {
                      int drawerIndex = drawerList2.indexOf(e);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.companyName.validate(), style: boldTextStyle()),
                                  4.height,
                                  e.selectSkill.validate() == true
                                      ? Row(
                                          children: [
                                            commonCachedNetworkImage(
                                              e.companyImage.validate(),
                                              width: 20,
                                              height: 15,
                                              fit: BoxFit.cover,
                                            ).visible(e.selectSkill.validate() == true),
                                            8.width,
                                            Text(e.totalReview.validate(), style: secondaryTextStyle()),
                                          ],
                                        )
                                      : SizedBox(),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16),
                            ],
                          ).paddingSymmetric(horizontal: 8, vertical: 8),
                          Divider(color: gray.withOpacity(0.4)).visible(drawerIndex < 7),
                        ],
                      ).onTap(() {
                        if (drawerIndex == 3 || drawerIndex == 6) {
                          toast("Coming Soon...");
                        } else if (drawerIndex == 7) {
                          showConfirmDialog(context, 'Do you want to logout from the app?', onAccept: () {
                            JSHomeScreen().launch(context);
                          });
                          //showAlertDialog(context);
                        } else {
                          widget.validate().launch(context);
                        }
                      });
                    }).toList(),
                  ).paddingAll(8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
