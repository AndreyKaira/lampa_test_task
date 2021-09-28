import 'package:flutter/cupertino.dart';
import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/bloc/bloc_widgets.dart';

extension BlocExtension on BuildContext {
  void dispatch(IEvent event) {
    final List<BlocInheritedWidgetElement> elements = [];

    BlocInheritedWidgetElement? element;
    element = getElementForInheritedWidgetOfExactType<ProxyBlocInheritedWidget>() as BlocInheritedWidgetElement?;
    while (element != null) {
      elements.add(element);
      element = element.parent?.getElementForInheritedWidgetOfExactType<ProxyBlocInheritedWidget>() as BlocInheritedWidgetElement?;
    }

    for (var element in elements) {
      (element.widget as ProxyBlocInheritedWidget).bloc.add(event);
    }
  }
}
