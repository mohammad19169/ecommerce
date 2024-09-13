import 'package:flutter/material.dart';

class ChatClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-people-eating-berries-street_23-2150163636.jpg'), // Replace with actual image URL
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('James Anderson', style: TextStyle(fontSize: 16,color: Colors.white70)),
                Text('Online', style: TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Center(
                  child: Text('TODAY', style: TextStyle(color: Colors.grey)),
                ),
                SizedBox(height: 16),

                // Sender text message
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-people-eating-berries-street_23-2150163636.jpg'), // Replace with actual image URL
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('James Anderson', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Hello, there',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text('08:04 pm', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Receiver text message
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Hi, How are you? How can I help you today',
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text('08:04 pm', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-expressive-young-man-wearing-formal-suit_273609-6942.jpg'), // Replace with actual image URL
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Sender image message
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-people-eating-berries-street_23-2150163636.jpg'), // Replace with actual image URL
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Angie Brekke', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/images/chatimage.png'), // Replace with actual image URL
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text('08:04 pm', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Receiver voice message
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow, color: Colors.white),
                                SizedBox(width: 8),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: 0.5,
                                    backgroundColor: Colors.white24,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text('0:13', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text('08:04 pm', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-expressive-young-man-wearing-formal-suit_273609-6942.jpg'), // Replace with actual image URL
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Message input field
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
