import 'package:flutter/material.dart';
import 'package:flutter_playground/constants/colors.dart';
import 'package:flutter_playground/data/whatsapp_chat_data_model.dart';

class WhatsAppChatListItem extends StatelessWidget {
  final WhatsAppChatDataModel whatsAppChatDataModel;

  const WhatsAppChatListItem({
    super.key,
    required this.whatsAppChatDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.amber,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network(whatsAppChatDataModel.imageUrl),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                whatsAppChatDataModel.chatHeadTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                whatsAppChatDataModel.chatMessageTitle,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "9:50 PM",
                style: TextStyle(
                  color: WhatsAppColors.whatsAppBlue,
                  fontSize: 16,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: WhatsAppColors.whatsAppBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text(
                  "4",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
