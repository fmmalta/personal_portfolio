import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/pages/learn_dart/cubit/dart_cubit.dart';
import 'package:personal_portfolio/src/pages/learn_dart/widgets/summary_widget.dart';

class LearnDart extends StatelessWidget {
  const LearnDart({super.key});

  static const String routeName = '/learnDart';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DartCubit>(
      create: (context) => DartCubit(),
      child: LayoutBuilder(
        builder: (context, constraints) {
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
                        children: [SummaryWidget.summaryItems[state.content]!],
                      );
                    }
                    return const Center(
                      child: Text('Selecione um item da lista'),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
