import 'package:flutter/material.dart';
import 'package:messanger/presentation/pages/widgets/button_widget.dart';
import 'package:messanger/presentation/pages/widgets/text_field_widget.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonWidget(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(child: TextFieldWidget(message: 'Сообщение')),
        const SizedBox(width: 8),
        ButtonWidget(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              size: 24,
            ),
          ),
        )
      ],
    );
  }
}
