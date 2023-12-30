import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_library/core/di/register_module.dart';
import 'package:personal_library/core/widgets/loading_indicator_widget.dart';
import 'package:personal_library/presentation/conversation_snippet/bloc/conversation_snippet_cubit.dart';
import 'package:personal_library/presentation/conversation_snippet/widgets/conversation_snippet_list.dart';

class ConversationSnippetPage extends StatelessWidget {
  const ConversationSnippetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocProvider<MessageListCubit>(
          create: (_) => getIt<MessageListCubit>()..init(),
          child: BlocBuilder<MessageListCubit, ConversationSnippetState>(
              buildWhen: (previous, current) => current is UpdateSnippets,
              builder: (context, state) {
                if (state is UpdateSnippets) {
                  return ConversationSnippetList(conversationSnippetList: state.snippets);
                } else {
                  return const LoadingIndicatorWidget();
                }
              }),
        ),
      );
}
