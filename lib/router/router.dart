
import 'package:flutter/material.dart';
import 'package:state_management/containers/management/bloc/management_bloc_articles.dart';
import 'package:state_management/containers/management/bloc/management_bloc_comments.dart';
import 'package:state_management/containers/management/bloc/management_bloc_input.dart';
import 'package:state_management/containers/management/bloc/management_bloc_login.dart';
import 'package:state_management/containers/management/management_catelogue.dart';
import 'package:state_management/containers/management/redux/management_redux_articles.dart';
import 'package:state_management/containers/management/redux/management_redux_comments.dart';
import 'package:state_management/containers/management/redux/management_redux_input.dart';
import 'package:state_management/containers/management/redux/management_redux_login.dart';
import 'package:state_management/containers/origin/bloc_page.dart';
import 'package:state_management/containers/origin/downward_data_page.dart';
import 'package:state_management/containers/origin/eventbus_page.dart';
import 'package:state_management/containers/origin/inherited_widget_page.dart';
import 'package:state_management/containers/origin/provider_page.dart';
import 'package:state_management/containers/origin/redux_page.dart';
import 'package:state_management/containers/origin/state_catelogue_page.dart';
import 'package:state_management/containers/origin/state_improvement_page.dart';
import 'package:state_management/containers/origin/state_props_page.dart';

Map<String, WidgetBuilder> router(context) {
  return {
    '/origin/1': (context) => StateAndPropsPage(),
    '/origin/2': (context) => DownwardDataPage(
      text: ModalRoute.of(context).settings.arguments
    ),
    '/origin/3': (context) => StateImprovementPage(),
    '/origin/6': (context) => InheritedWidgetPage(),
    '/origin/7': (context) => EventBusPage(),
    '/origin/9': (context) => StateCateloguePage(),
    '/origin/provider': (context) => ProviderPage(
      title: ModalRoute.of(context).settings.arguments
    ),
    '/origin/redux': (context) => ReduxPage(
      title: ModalRoute.of(context).settings.arguments
    ),
    '/origin/bloc': (context) => BlocPage(
      title: ModalRoute.of(context).settings.arguments
    ),
    '/management/catelogue': (context) => ManagementCateloguePage(),
    '/management/redux-login': (context) => ManagementReduxLoginPage(),
    '/management/redux-articles': (context) => ManagementReduxArticlesPage(),
    '/management/redux-details': (context) => ManagementReduxCommentsPage(),
    '/management/redux-submit': (context) => ManagementReduxInputPage(
      pageType: ModalRoute.of(context).settings.arguments,
    ),
    '/management/bloc-login': (context) => ManagementBlocLoginPage(),
    '/management/bloc-articles': (context) => ManagementBlocArticlesPage(),
    '/management/bloc-details': (context) => ManagementBlocCommentsPage(),
    '/management/bloc-submit': (context) => ManagementBlocInputPage(
      pageType: ModalRoute.of(context).settings.arguments,
    ),
  };
}

