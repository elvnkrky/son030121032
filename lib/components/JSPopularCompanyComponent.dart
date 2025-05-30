import 'package:flutter/material.dart';
import 'package:job_search/modelgen/companies.g.dart';
import 'package:nb_utils/nb_utils.dart';
//import 'package:job_search/model/JSPopularCompanyModel.dart';
import 'package:job_search/screens/JSCompanyProfileScreens.dart';
import 'package:job_search/utils/JSColors.dart';
import 'package:job_search/utils/JSDataGenerator.dart';
import 'package:job_search/utils/flutter_rating_bar.dart';


import '../utils/JSWidget.dart';

class JsPopularCompanyComponent extends StatefulWidget {
  const JsPopularCompanyComponent({Key? key}) : super(key: key);

  @override
  _JsPopularCompanyComponentState createState() => _JsPopularCompanyComponentState();
}

class _JsPopularCompanyComponentState extends State<JsPopularCompanyComponent> {
  List<Companies> popularCompanyList = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
    popularCompanyList = await getPopularCompanyData();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: popularCompanyList.length,
      padding: EdgeInsets.all(8),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (context, index) {
        Companies data = popularCompanyList[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                commonCachedNetworkImage(data.companyImage.validate(), height: 50, width: 50, fit: BoxFit.contain),
                16.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.companyName.validate(), style: boldTextStyle()),
                    4.height,
                    Row(
                      children: [
                        RatingBar(
                          initialRating: data.companyRatting.validate(),
                          minRating: 1,
                          itemSize: 16,
                          allowHalfRating: true,
                          ignoreGestures: true,
                          direction: Axis.horizontal,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: js_ratingColor,
                          ),
                          onRatingUpdate: (rating) {},
                        ),

                        8.width,
                        Text(data.totalReview.validate(), style: secondaryTextStyle(color: js_textColor.withOpacity(0.7)))
                      ],
                    ),
                  ],
                ),
              ],
            ),
            6.height,
            Row(
              children: [
                Text('Salaries', style: secondaryTextStyle()),
                24.width,
                Text('Q&A', style: secondaryTextStyle()),
                24.width,
                Text('Open jobs', style: secondaryTextStyle()),
              ],
            ),
          ],
        ).onTap(() {
          JSCompanyProfileScreens(popularCompanyList: data).launch(context);
        });
      },
    );
  }
}
