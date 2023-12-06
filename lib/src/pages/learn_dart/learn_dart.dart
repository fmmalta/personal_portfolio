import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/default_markdown.dart';
import 'package:personal_portfolio/src/pages/learn_dart/cubit/dart_cubit.dart';
import 'package:personal_portfolio/src/pages/learn_dart/widgets/summary_widget.dart';

class LearnDart extends StatelessWidget {
  LearnDart({super.key});

  static const String routeName = '/learnDart';

  final scrollController = ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DartCubit>(
      create: (context) => DartCubit(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 200, child: SummaryWidget()),
          const SizedBox(width: 20),
          Flexible(
            child: BlocBuilder<DartCubit, DartState>(
              builder: (context, state) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Scrollbar(
                    key: ValueKey(state.content),
                    controller: scrollController,
                    interactive: true,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: DefaultMarkdown(
                        data: SummaryWidget.summaryItems[state.content]!,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
