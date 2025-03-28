import 'package:flutter/material.dart';
import 'package:job_search/modelgen/filteredresults.g.dart';
import 'package:job_search/utils/JSDataGenerator.dart';
import 'package:job_search/widgets/JSFilteredResultWidget.dart';

class JSFilteredResultsComponent extends StatefulWidget {
  final String? city;

  JSFilteredResultsComponent({this.city});

  @override
  _JSFilteredResultsComponentState createState() => _JSFilteredResultsComponentState();
}

class _JSFilteredResultsComponentState extends State<JSFilteredResultsComponent> {
  List<Filteredresults> filteredResultsList = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
    filteredResultsList = await getFilteredResultsData();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filteredResultsList.length,
      padding: EdgeInsets.all(8),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        Filteredresults data = filteredResultsList[index];

        return JSFilteredResultWidget(filteredResultsList: data, city: widget.city,index: index);
      },
    );
  }
}
