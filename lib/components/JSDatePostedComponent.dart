import 'package:flutter/material.dart';
import 'package:job_search/modelgen/datepostedoptions.g.dart';
import 'package:job_search/utils/JSColors.dart';
import 'package:job_search/utils/JSDataGenerator.dart';
import 'package:nb_utils/nb_utils.dart';

class JSDatePostedComponent extends StatefulWidget {
  const JSDatePostedComponent({Key? key}) : super(key: key);

  @override
  _JSDatePostedComponentState createState() => _JSDatePostedComponentState();
}

class _JSDatePostedComponentState extends State<JSDatePostedComponent> {
  List<Datepostedoptions> datePostedList = [];

  int? datePostedValue = 0;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
    datePostedList = await getDatePostedList();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: datePostedList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (_, i) {
          Datepostedoptions data = datePostedList[i];
          return Theme(
            data: Theme.of(context).copyWith(unselectedWidgetColor: Theme.of(context).iconTheme.color),
            child: RadioListTile(
              dense: true,
              contentPadding: EdgeInsets.only(left: 0, bottom: 0),
              activeColor: js_primaryColor,
              value: i,
              groupValue: datePostedValue,
              onChanged: (int? val) {
                setState(() {
                  datePostedValue = val;
                });
              },
              title: Text(data.companyName.validate(), style: primaryTextStyle()),
            ),
          );
        });
  }
}
