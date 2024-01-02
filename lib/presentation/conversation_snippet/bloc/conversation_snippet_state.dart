part of 'conversation_snippet_cubit.dart';

@immutable
abstract class ConversationSnippetState {}

class ConversationSnippetInitial extends ConversationSnippetState {}

class UpdateSnippets extends ConversationSnippetState {
  UpdateSnippets(this.snippets);

  final List<ConversationSnippet> snippets;
}
