import 'dart:math';
import 'package:flutter/material.dart';

class MyChatList extends StatefulWidget {
  const MyChatList({super.key});

  @override
  State<MyChatList> createState() => _MyChatListState();
}

class _MyChatListState extends State<MyChatList> {
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(
        itemCount: chatNames.length,
        itemBuilder: (context, index) {
          // Randomly decide if the message is "sent" or "unread"
          bool isSent = random.nextBool();
          // If isSent is true, isUnread is false and vice versa.
          bool isUnread = !isSent;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Image.asset(chatPics[index])),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 8,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  chatNames[index],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                const Spacer(),
                                Text(
                                  textTimes[index],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: isUnread
                                          ? Colors.green
                                          : Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                // Show double tick if the message is sent
                                if (isSent)
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.checklist_rtl_sharp,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                Expanded(
                                  child: Text(
                                    textMsg[index],
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                // Unread icon if the message is unread
                                if (isUnread)
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.looks_one_outlined,
                                        color: Colors.lightGreenAccent.shade700,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

var chatNames = [
  "Alice Johnson",
  "Bob Smith",
  "Charlie Brown",
  "David Williams",
  "Eva Davis",
  "Frank Miller",
  "Grace Wilson",
  "Hannah Moore",
  "Ian Taylor",
  "Jack Anderson",
  "Katherine Thomas",
  "Liam Jackson",
  "Megan White",
  "Nina Harris",
  "Oscar Clark",
  "Paul Lewis",
  "Quinn Walker",
  "Rachel Hall",
  "Samuel Allen",
  "Tina Young",
];

var chatPics = [
  "assets/faces10.png",
  "assets/faces11.png",
  "assets/faces12.png",
  "assets/faces14.png",
  "assets/faces13.png",
  "assets/faces15.png",
  "assets/faces16.png",
  "assets/faces19.png",
  "assets/faces18.png",
  "assets/faces17.png",
  "assets/faces20.png",
  "assets/faces1.png",
  "assets/faces2.png",
  "assets/faces3.png",
  "assets/faces7.png",
  "assets/faces5.png",
  "assets/faces6.png",
  "assets/faces4.png",
  "assets/faces9.png",
  "assets/faces8.png",
];

var textMsg = [
  "Hey, how's it going?",
  "Let's catch up soon!",
  "Did you see the game last night?",
  "Are we still on for dinner tomorrow?",
  "I have some exciting news to share!",
  "Just finished the book you recommended. Loved it!",
  "Can you send me the details again?",
  "I'm on my way, be there in 10 minutes.",
  "What time does the movie start?",
  "I can't believe what happened today!",
  "Check out this funny meme I found!",
  "Do you want to grab coffee sometime this week?",
  "I finally booked the trip! So excited!",
  "Can you believe it's already the weekend?",
  "I miss hanging out with you!",
  "Let's plan something fun this weekend.",
  "Are you free this evening? I was thinking of catching up.",
  "I found a great new restaurant, we should check it out!",
  "How was your day today? Anything interesting happen?",
  "Hope you're having a good day!",
];

var textTimes = [
  "12:50 pm",
  "12:32 pm",
  "11:53 am",
  "10:00 am",
  "08:16 am",
  "03:02 am",
  "Yesteday",
  "Yesteday",
  "Yesteday",
  "Yesteday",
  "Yesteday",
  "Yesteday",
  "21/05/2025",
  "21/05/2025",
  "21/05/2025",
  "21/05/2025",
  "20/05/2025",
  "20/05/2025",
  "19/05/2025",
  "19/05/2025",
];
