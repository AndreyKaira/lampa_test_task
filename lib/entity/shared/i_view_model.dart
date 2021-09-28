import 'package:flutter/cupertino.dart';
import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/bloc/bloc_widgets.dart';
import 'package:lampa_test_task/bloc/context_extension.dart';

typedef EventDispatcher = void Function(IEvent);

abstract class IViewModel{
  late final EventDispatcher dispatch;
  late final T Function <T extends IState>() watch;
  late final T Function <T extends IState>() read;

  IViewModel(BuildContext context){
    dispatch = context.dispatch;
    read = <T extends IState>() => BlocHolder.of<T>(context, listen: false).state;
    watch = <T extends IState>() => BlocHolder.of<T>(context).state;
  }

  bool isSame(covariant IViewModel viewModel){
    return false;
  }
}