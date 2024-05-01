import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../product/theme/app_colors.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../product/utils/constants/ui_constants/radius_const.dart';
import '../bloc/gemini_bloc.dart';
import 'modules/gemini_response_text.dart';

part 'gemini_mixin.dart';

@RoutePage()
class GeminiView extends StatefulWidget {
  const GeminiView({super.key});

  @override
  State<GeminiView> createState() => _GeminiViewState();
}

class _GeminiViewState extends State<GeminiView> with GeminiMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _geminiBloc,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Stack(
            children: [
              chatListView(),
              questionTextField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget questionTextField() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ColoredBox(
        color: context.theme.scaffoldBackgroundColor,
        child: Container(
          margin: PaddingConst.horizontal12 + PaddingConst.bottom12,
          padding: PaddingConst.horizontal16,
          decoration: BoxDecoration(
            borderRadius: RadiusConst.circular12,
            border: Border.all(
              color: Colors.grey[700]!,
              width: 0.5,
            ),
            color: AppColors.cardTopRatingColor,
          ),
          child: TextFormField(
            controller: _textEditingController,
            focusNode: _focusNode,
            onFieldSubmitted: (_) => onSendButtonPressed(),
            style: context.primaryTextTheme.bodyMedium,
            decoration: InputDecoration(
              hintText: 'Write your question here...',
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.send,
                  color: context.colorScheme.secondary,
                ),
                onPressed: onSendButtonPressed,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget chatListView() {
    return Positioned.fill(
      child: BlocConsumer<GeminiBloc, GeminiState>(
        listener: pageListener,
        builder: (context, state) {
          if (state is NewTextReceivedState) {
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.history.length,
              padding: PaddingConst.bottom100 + PaddingConst.top24,
              itemBuilder: (context, index) {
                return GeminiResponseText(
                  text: state.history[index].text,
                  isQuestion: state.history[index].isQuestion,
                );
              },
            );
          }

          return Center(
            // TODO(bhz): extract to localization
            child: Text(
              'Hello, how can I help you?',
              style: context.primaryTextTheme.titleMedium,
            ),
          );
        },
      ),
    );
  }
}
