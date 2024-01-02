import 'package:flutter/material.dart';
import 'package:personal_library/presentation/conversation_snippet/conversation_snippet_page.dart';

class SetupMaterial extends StatelessWidget {
  const SetupMaterial({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const ConversationSnippetPage(),
      );
}
