import 'package:flutter/material.dart';
import 'package:personal_library/core/models/conversation_snippet.dart';
import 'package:personal_library/presentation/conversation_snippet/widgets/conversation_snippet_widget.dart';

class ConversationSnippetList extends StatelessWidget {
  const ConversationSnippetList({super.key, required this.conversationSnippetList});

  final List<ConversationSnippet> conversationSnippetList;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: conversationSnippetList.length,
        itemBuilder: (context, index) => ConversationSnippetWidget(
            snippet: conversationSnippetList[index], backgroundColor: _setBackgroundColor(index)),
      );

  Color? _setBackgroundColor(int index) => index.isEven ? Colors.yellow[100] : Colors.green[100];
}
