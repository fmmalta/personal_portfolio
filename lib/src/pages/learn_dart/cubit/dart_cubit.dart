import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show immutable;

part 'dart_state.dart';

class DartCubit extends Cubit<DartState> {
  DartCubit() : super(const DartContent());

  void changeContent(ContentPage content) {
    emit(DartContent(content: content));
  }
}
