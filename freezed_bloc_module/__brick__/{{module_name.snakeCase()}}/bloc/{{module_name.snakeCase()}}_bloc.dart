import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../global/blocs/super/super_bloc.dart';
part '{{module_name.snakeCase()}}_bloc.freezed.dart';
part '{{module_name.snakeCase()}}_event.dart';
part '{{module_name.snakeCase()}}_state.dart';

class {{module_name.pascalCase()}}Bloc extends Bloc<{{module_name.pascalCase()}}Event, {{module_name.pascalCase()}}State> {
  {{module_name.pascalCase()}}Bloc({
    required this.superBloc,
  }) : super(const {{module_name.pascalCase()}}State.initial()) {
    on<Fetch{{module_name.pascalCase()}}Event>(_on{{module_name.pascalCase()}}Fetch);
  }

  final SuperBloc superBloc;
  
  Future<void> _on{{module_name.pascalCase()}}Fetch(Fetch{{module_name.pascalCase()}}Event event, Emitter<{{module_name.pascalCase()}}State> emit) async {
    emit(state.copyWith(status: Load{{module_name.pascalCase()}}Status.loading));
  }
}