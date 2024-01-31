import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ShadAvatar(
          'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
          placeholder: Text('CN'),
        ),
      ),
    );
  }
}
