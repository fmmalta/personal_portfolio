part of 'dart_cubit.dart';

enum ContentPage {
  types(title: 'Tipos primitivos e variáveis'),
  lists(title: 'Listas'),
  operators(title: 'Operadores'),
  loops(title: 'Loops'),
  functions(title: 'Funções'),
  classes(title: 'Classes');

  const ContentPage({
    required this.title,
  });

  final String title;
}

@immutable
abstract class DartState {}

class DartInitial extends DartState {}

class DartContent extends DartState {
  final ContentPage content;

  DartContent({required this.content});
}
