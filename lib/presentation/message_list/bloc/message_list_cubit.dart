import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:telephony/telephony.dart';

part 'message_list_state.dart';

Future<void> backgroundMessageHandler(SmsMessage message) async {
  ///TODO: Handle SMS when app is in background
  return;
}

@injectable
class MessageListCubit extends Cubit<MessageListState> {
  MessageListCubit(this._telephony) : super(MessageListInitial());

  final Telephony _telephony;

  Future<void> initCubit() async {
    await _requestPermissionForTelephony(_telephony);
    await _initialTelephony();
    _listerForSms(_telephony);
  }

  Future<void> _initialTelephony() async {
    await _requestPermissionForTelephony(_telephony);
    _listerForSms(_telephony);
  }

  Future<void> _requestPermissionForTelephony(Telephony telephony) async =>
      telephony.requestPhoneAndSmsPermissions;

  void _listerForSms(Telephony telephony) {
    telephony.listenIncomingSms(
      onNewMessage: (SmsMessage message) {
        ///TODO: Handle SMS when app is running
      },
      onBackgroundMessage: backgroundMessageHandler,
    );
  }
}
