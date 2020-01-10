
import 'package:flutter/material.dart';
import 'package:state_management/containers/origin/downward_data_page.dart';
import 'package:state_management/containers/origin/inherited_widget_page.dart';
import 'package:state_management/containers/origin/state_improvement_page.dart';
import 'package:state_management/containers/origin/state_props_page.dart';

Map<String, WidgetBuilder> router(context) {
  return {
    '/origin/1': (context) => StateAndPropsPage(),
    '/origin/2': (context) => 
      DownwardDataPage(text: ModalRoute.of(context).settings.arguments),
    '/origin/3': (context) => StateImprovementPage(),
    '/origin/6': (context) => InheritedWidgetPage()
  };
}

