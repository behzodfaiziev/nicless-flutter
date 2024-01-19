import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<B extends Bloc<dynamic, dynamic>> extends StatefulWidget {
  const BaseView({
    required this.bloc,
    required this.viewName,
    required this.onPageBuilder,
    this.onBlocReady,
    this.onDispose,
    this.isPopIncluded = true,
    this.shouldMainViewModelInit = true,
    super.key,
  });

  final B bloc;
  final String viewName;
  final Widget Function(BuildContext context, B value) onPageBuilder;
  final void Function(B bloc)? onBlocReady;
  final void Function(B bloc)? onDispose;
  final bool isPopIncluded;
  final bool shouldMainViewModelInit;

  @override
  State<BaseView<B>> createState() => _BaseViewState<B>();
}

class _BaseViewState<B extends Bloc<dynamic, dynamic>>
    extends State<BaseView<B>> with WidgetsBindingObserver {
  @override
  void initState() {
    // WidgetsBinding.instance.addObserver(this);
    widget.onBlocReady?.call(widget.bloc);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    widget.onDispose?.call(widget.bloc);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        return;
      case AppLifecycleState.resumed:
        return;
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.detached:
        return;
      case AppLifecycleState.hidden:
        return;
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => widget.bloc,
      child: widget.onPageBuilder(context, widget.bloc),
    );
  }
}
