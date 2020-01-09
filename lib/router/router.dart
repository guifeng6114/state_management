
import 'package:flutter/material.dart';
import 'package:state_management/containers/origin/state_props_page.dart';

Map<String, WidgetBuilder> router(context) {
  return {
    '/origin/1': (context) => StateAndPropsPage(),
  };
}