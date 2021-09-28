import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lampa_test_task/bloc/bloc_interfaces.dart';
import 'package:lampa_test_task/entity/shared/i_view_model.dart';

class BlocHolder<S extends IState> extends StatefulWidget {
  final Bloc<IEvent, S> bloc;
  final Widget child;

  const BlocHolder({
    required this.bloc,
    required this.child,
    Key? key,
  }) : super(key: key);

  static Bloc<IEvent, S> of<S extends IState>(BuildContext context, {bool listen = true}) {
    _BlocInheritedWidget<S>? result;

    if (listen) {
      result = context.dependOnInheritedWidgetOfExactType<_BlocInheritedWidget<S>>();
    } else {
      result = context.findAncestorWidgetOfExactType<_BlocInheritedWidget<S>>();
    }

    assert(result != null);

    return result!.bloc;
  }

  @override
  _BlocHolderState<S> createState() => _BlocHolderState<S>();
}

class _BlocHolderState<S extends IState> extends State<BlocHolder<S>> {
  late Bloc<IEvent, S> bloc = widget.bloc;
  late Widget child = widget.child;

  @override
  void dispose() {
    widget.bloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<S>(
      initialData: bloc.state,
      stream: bloc.stream,
      builder: (context, snapshot) {
        return _BlocInheritedWidget<S>(
          bloc: bloc,
          child: ProxyBlocInheritedWidget(
            bloc: bloc,
            child: child,
          ),
        );
      },
    );
  }
}

class ProxyBlocInheritedWidget extends InheritedWidget {
  final Bloc<IEvent, IState> bloc;

  ProxyBlocInheritedWidget({
    required this.bloc,
    required Widget child,
  }) : super(child: child);

  @override
  InheritedElement createElement() => BlocInheritedWidgetElement(this);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class _BlocInheritedWidget<S extends IState> extends InheritedWidget {
  final Bloc<IEvent, S> bloc;

  _BlocInheritedWidget({
    required this.bloc,
    required Widget child,
  }) : super(child: child);

  @override
  InheritedElement createElement() => BlocInheritedWidgetElement(this);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class BlocInheritedWidgetElement extends InheritedElement {
  BlocInheritedWidgetElement(InheritedWidget widget) : super(widget);

  late final Element? parent;

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot);

    this.parent = parent;
  }
}

typedef ViewModelProvider<T extends IViewModel> = void Function(T vm);

class ViewModelBuilder<T extends IViewModel> extends StatefulWidget {
  final T Function(BuildContext context) converter;
  final Widget Function(BuildContext context, T vm) builder;
  final void Function(BuildContext context)? initState;
  final ViewModelProvider<T>? postFrameCallback;
  final ViewModelProvider<T>? dispose;
  final bool distinct;

  ViewModelBuilder({
    required this.builder,
    required this.converter,
    this.initState,
    this.postFrameCallback,
    this.dispose,
    this.distinct = false,
  });

  @override
  _ViewModelBuilderState<T> createState() => _ViewModelBuilderState<T>();
}

class _ViewModelBuilderState<T extends IViewModel> extends State<ViewModelBuilder<T>> {
  late T viewModel = widget.converter(context);
  late Widget child = widget.builder(context, viewModel);

  @override
  void initState() {
    super.initState();

    widget.initState?.call(context);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      widget.postFrameCallback?.call(viewModel);
    });
  }

  @override
  void dispose() {
    widget.dispose?.call(viewModel);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final newViewModel = widget.converter(context);
    if (!viewModel.isSame(newViewModel) && !widget.distinct) {
      child = widget.builder(context, newViewModel);
      viewModel = newViewModel;
    }

    return child;
  }
}
