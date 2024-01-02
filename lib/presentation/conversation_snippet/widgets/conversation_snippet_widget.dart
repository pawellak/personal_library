import 'package:flutter/material.dart';
import 'package:personal_library/core/models/conversation_snippet.dart';
import 'package:personal_library/core/resources/app_constatns.dart';
import 'package:personal_library/core/resources/app_paddings.dart';

class ConversationSnippetWidget extends StatelessWidget {
  const ConversationSnippetWidget({
    super.key,
    required this.snippet,
    required this.backgroundColor,
  });

  final ConversationSnippet snippet;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          ///Show conversation details
        },
        child: Container(
          color: backgroundColor,
          padding: EdgeInsets.all(AppPaddings.dim24),
          child: Row(children: [
            Expanded(child: Text(snippet.threadId.toString())),
            Expanded(flex: 4, child: Text(snippet.snippet ?? AppConstants.emptyString))
          ]),
        ),
      );
}
