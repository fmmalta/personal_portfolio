part of 'dart_cubit.dart';

enum ContentPage {
  introduction(title: 'Introdução'),
  types(title: 'Tipos primitivos e variáveis'),
  lists(title: 'Listas'),
  sets(title: 'Sets'),
  enums(title: 'Enums'),
  maps(title: 'Maps'),
  operators(title: 'Operadores'),
  loops(title: 'Loops'),
  ifelse(title: 'If/else - Condicionais'),
  functions(title: 'Funções'),
  classes(title: 'Classes'),
  extensions(title: 'Extensions');

  const ContentPage({
    required this.title,
  });

  final String title;
}

@immutable
abstract class DartState {
  final ContentPage content;

  const DartState({required this.content});
}

class DartContent extends DartState {
  const DartContent({super.content = ContentPage.introduction});
}
