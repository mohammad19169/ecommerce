import 'package:flutter/material.dart';

class ProfileClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://img.freepik.com/premium-photo/poised-indian-college-boy-tailored-formal-suit_878783-15102.jpg'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'James Anderson',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'james@gmail.com',
                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Personal Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Divider(),
                    SizedBox(height: 8),
                    _buildProfileDetailRow('Phone', '+92 1234 367282'),
                    _buildProfileDetailRow('Address', 'National Stadium Road,\nKarachi, Pakistan'),
                    _buildProfileDetailRow('Date of Birth', 'Jan 1, 2000'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.lock, color: Colors.brown),
                      title: Text('Change Password'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications, color: Colors.brown),
                      title: Text('Notification Preferences'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          Text(value, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
