import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:personal_portfolio/src/pages/learn_dart/content.dart';
import 'package:personal_portfolio/src/pages/learn_dart/cubit/dart_cubit.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  static const summaryItems = <ContentPage, String>{
    ContentPage.introduction: Content.introduction,
    ContentPage.types: Content.primitiveDataAndVariables,
    ContentPage.lists: Content.lists,
    ContentPage.maps: Content.maps,
    ContentPage.sets: Content.sets,
    ContentPage.enums: Content.enums,
    ContentPage.operators: Content.operators,
    ContentPage.loops: Content.loops,
    ContentPage.ifelse: Content.conditionals,
    ContentPage.functions: Content.functions,
    ContentPage.classes: Content.classes,
  };

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
            itemCount: summaryItems.length,
            itemExtent: 50,
            itemBuilder: (context, index) {
              final content = summaryItems.keys.toList()[index];
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
