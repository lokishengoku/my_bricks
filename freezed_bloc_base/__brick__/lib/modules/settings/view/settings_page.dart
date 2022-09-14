import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';
import 'settings_view.dart';

class SettingsPage extends StatelessWidget {
  static const String name = '/settings';

  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(exceptionHandlerBloc: context.read()),
      child: const SettingsView(),
    );
  }
}
