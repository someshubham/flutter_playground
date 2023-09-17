import 'package:flutter/material.dart';
import 'package:flutter_playground/constants/colors.dart';

class WhatsAppAppBar extends StatelessWidget {
  const WhatsAppAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                "Edit",
                style: TextStyle(
                  fontSize: 16,
                  color: WhatsAppColors.whatsAppBlue,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.edit_calendar_sharp,
                color: WhatsAppColors.whatsAppBlue,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Chats",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                "Broadcast Lists",
                style: TextStyle(
                  fontSize: 16,
                  color: WhatsAppColors.whatsAppBlue,
                ),
              ),
              const Spacer(),
              Text(
                "New Group",
                style: TextStyle(
                  fontSize: 16,
                  color: WhatsAppColors.whatsAppBlue,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.2,
        ),
      ],
    );
  }
}
