import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_library/core/di/register_module.dart';
import 'package:personal_library/presentation/message_list/bloc/message_list_cubit.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<MessageListCubit>(
              lazy: false, create: (_) => getIt<MessageListCubit>()..initCubit()  ),
        ],
        child: const Center(
          child: Text('MessageListPage'),
        ),
      ),
    );
  }
}
