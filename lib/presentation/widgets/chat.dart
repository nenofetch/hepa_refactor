import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/user.dart';

class Chat extends StatelessWidget {
  final Consultation consultation;
  final User user;

  const Chat({super.key, required this.consultation, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BubbleNormal(
          text: consultation.message,
          isSender: consultation.senderId == user.id ? true : false,
          tail: true,
          seen: consultation.status == 'read' ? true : false,
          color: Color(0xFF1B97F3),
          textStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    );
  }
}
