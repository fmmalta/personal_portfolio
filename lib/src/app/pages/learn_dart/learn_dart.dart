import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/app/pages/dart_cubit.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';

class LearnDart extends StatelessWidget {
  const LearnDart({super.key});

  static const String routeName = '/learnDart';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DartCubit>(
      create: (context) => DartCubit(),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(flex: 3, child: SummaryWidget()),
            const SizedBox(width: 20),
            Flexible(
                flex: (constraints.maxWidth / 110).round(),
                child: BlocBuilder<DartCubit, DartState>(
                  builder: (context, state) {
                    if (state is DartContent) {
                      return ListView(
                        children: [_summaryItems[state.content]!],
                      );
                    }
                    return const Center(
                      child: Text('Selecione um item da lista'),
                    );
                  },
                ))
          ],
        );
      }),
    );
  }
}

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: BlocBuilder<DartCubit, DartState>(
        builder: (context, state) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: _summaryItems.length,
            itemExtent: 50,
            itemBuilder: (context, index) {
              final content = _summaryItems.keys.toList()[index];
              return Align(
                alignment: Alignment.centerLeft,
                child: DefaultButton(
                  selected: state is DartContent && state.content == content,
                  label: '${index + 1}. ${content.title}',
                  onTap: () {
                    context.read<DartCubit>().changeContent(content);
                  },
                  textStyle: Theme.of(context).textTheme.bodySmall,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

final _summaryItems = <ContentPage, Widget>{
  ContentPage.types: const PrimitiveData(),
  ContentPage.lists: const PrimitiveData(),
  ContentPage.operators: const PrimitiveData(),
  ContentPage.loops: const PrimitiveData(),
  ContentPage.functions: const PrimitiveData(),
  ContentPage.classes: const PrimitiveData(),
};

class PrimitiveData extends StatelessWidget {
  const PrimitiveData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("""
Dart also allows enum declarations to declare classes with fields, methods, and const constructors which are limited to a fixed number of known constant instances.

To declare an enhanced enum, follow a syntax similar to normal classes, but with a few extra requirements:

Instance variables must be final, including those added by mixins.
All generative constructors must be constant.
Factory constructors can only return one of the fixed, known enum instances.
No other class can be extended as Enum is automatically extended.
There cannot be overrides for index, hashCode, the equality operator ==.
A member named values cannot be declared in an enum, as it would conflict with the automatically generated static values getter.
All instances of the enum must be declared in the beginning of the declaration, and there must be at least one instance declared.
Instance methods in an enhanced enum can use this to reference the current enum value.

Here is an example that declares an enhanced enum with multiple instances, instance variables, getters, and an implemented interface:
""");
  }
}
