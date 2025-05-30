import 'package:flutter/material.dart';
import 'package:job_search/modelgen/remote.g.dart';
import 'package:job_search/utils/JSColors.dart';
import 'package:job_search/utils/JSDataGenerator.dart';
import 'package:nb_utils/nb_utils.dart';

class JSRemoteFilterComponent extends StatefulWidget {
  const JSRemoteFilterComponent({Key? key}) : super(key: key);

  @override
  _JSRemoteFilterComponentState createState() => _JSRemoteFilterComponentState();
}

class _JSRemoteFilterComponentState extends State<JSRemoteFilterComponent> {
  int? remoteValue = 0;

  List<Remote> remoteList = [];


  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    remoteList= await getRemoteList();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: remoteList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (_, i) {
          Remote data = remoteList[i];
          return Theme(
            data: Theme.of(context).copyWith(unselectedWidgetColor: Theme.of(context).iconTheme.color),
            child: RadioListTile(
              dense: true,
              contentPadding: EdgeInsets.only(left: 0, bottom: 0),
              activeColor: js_primaryColor,
              value: i,
              groupValue: remoteValue,
              onChanged: (int? val) {
                setState(() {
                  remoteValue = val;
                });
              },
              title: Text(data.companyName.validate(), style: primaryTextStyle()),
            ),
          );
        });
  }
}
