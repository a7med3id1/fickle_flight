import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Background Image with Profile Picture
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/boracay.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 20,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/Oval.png'),
                    ),
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.edit),
                  ),
                  const Positioned(
                    top: 16,
                    left: 16,
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // Profile Name and Location
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Macy Johnson',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Baguio, Philippines',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'I like the beach, mountains, forest and everything about nature! :)',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Options List
              ListTile(
                leading: Icon(Icons.payment),
                title: Text('Payment Details'),
                onTap: () {
                  // Navigate to Payment Details
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Covid Advisory'),
                onTap: () {
                  // Navigate to Covid Advisory
                },
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Row(
                  children: [
                    Text('Referral Code'),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Navigate to Referral Code
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Navigate to Settings
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Perform Logout
                },
              ),
              SizedBox(height: 16),
              // Help Section
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Have questions? We are here to help',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
