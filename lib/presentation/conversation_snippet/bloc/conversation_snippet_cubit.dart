import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:personal_library/core/models/conversation_snippet.dart';
import 'package:telephony/telephony.dart';

part 'conversation_snippet_state.dart';

Future<void> backgroundMessageHandler(SmsMessage message) async {
  ///TODO: Handle SMS when app is in background
  return;
}

@injectable
class MessageListCubit extends Cubit<ConversationSnippetState> {
  MessageListCubit(this._telephony) : super(ConversationSnippetInitial());

  final Telephony _telephony;

  Future<void> init() async {
    await _telephony.requestPhoneAndSmsPermissions;
    _listerForSms(_telephony);
    _prepareSmsList();
  }

  Future<void> _prepareSmsList() async => emit(UpdateSnippets(await _getAllConversations()));

  Future<List<ConversationSnippet>> _getAllConversations() async =>
      (await _telephony.getConversations())
          .map((e) => ConversationSnippet(snippet: e.snippet, threadId: e.threadId))
          .toList()
        ..sort((a, b) => a.threadId?.compareTo(b.threadId ?? 0) ?? 0);

  void _listerForSms(Telephony telephony) {
    telephony.listenIncomingSms(
      onNewMessage: (SmsMessage message) {
        ///TODO: Handle SMS when app is running
      },
      onBackgroundMessage: backgroundMessageHandler,
    );
  }
}
