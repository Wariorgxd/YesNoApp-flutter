import "package:flutter/material.dart";
import "package:myapp/presentation/widgets/chat/her_message_bubble.dart";
import "package:myapp/presentation/widgets/chat/my_message_bubble.dart";
import "package:myapp/presentation/widgets/shared/message_field_box.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://play-lh.googleusercontent.com/inV5N0eACXXzr9oyPgjiAYApr6YrKvTH68wWTEd3g3gahQkpWac1G_F6ZIFMUfZO94Wg=s256-rw"),
          ),
        ),
        title: const Text('Mi amor 🥰'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  const MyMessageBubble();
                  return (index % 2 == 0)
                      ? HerMessageBubble()
                      : MyMessageBubble();
                },
              ),
            ),
            //Caja de texto
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
