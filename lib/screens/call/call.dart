import 'package:flutter/material.dart';
import 'package:whatsapp/dummy/call.dart';

import 'widgets/call_tile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (_, idx) {
          final call = callData[idx];
          return CallTileWidget(call: call);
        },
      ),
    );
  }
}
