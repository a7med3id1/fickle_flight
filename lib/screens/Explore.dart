import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset('images/Oval.png'),
                    ),
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text('Hello'),
                    subtitle: Text('Macy Johanson'),
                  ))
                ],
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('All bookings'),
                leading: Icon(Icons.edit_calendar),
                onTap: () {},
              ),
              ListTile(
                title: Text('Favouraits'),
                leading: Icon(Icons.notifications),
                onTap: () {},
              ),
              ListTile(
                title: Text('Get Help'),
                leading: Icon(Icons.help),
                onTap: () {},
              ),
              ListTile(
                title: Text('Cvid advisory'),
                leading: Icon(Icons.calendar_month),
                onTap: () {},
              ),
              ListTile(
                title: Text('Rate us'),
                leading: Icon(Icons.star),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'FickleFlight',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/Oval.png'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Paris flight deal
            Container(
              margin: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Image.asset(
                    'images/Paris card1.png',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            // Upcoming Flight
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'SIN',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Spacer(),
                        Icon(Icons.flight, size: 50, color: Colors.blue),
                        Spacer(),
                        Text(
                          'LAX',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('Singapore'),
                        Spacer(),
                        Text('Los Angeles'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text('Departs on: 1 May, 08:00 AM'),
                        Spacer(),
                        Text('4 days to go'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Navigation buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.flight, color: Colors.blue),
                    Text('Flight'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.hotel, color: Colors.pink),
                    Text('Hotels'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.local_activity, color: Colors.orange),
                    Text('Attractions'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.restaurant, color: Colors.green),
                    Text('Eats'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.more_horiz, color: Colors.yellow),
                    Text('More'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Trending Destinations
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Trending Destinations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Positioned(
                          left: 0,
                          right: 18.6,
                          bottom: 0,
                          child: SizedBox(
                            width: 485,
                            height: 155.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 10.3, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.2),
                                      color: Color(0xFFFFFFFF),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x08000000),
                                          offset: Offset(0, 2.1),
                                          blurRadius: 7.6913561821,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10.3, 10.3, 10.3, 10.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 10.3),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFD9D9D9),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/boracay.png'),
                                                ),
                                              ),
                                              child: Container(
                                                width: 134.3,
                                                height: 92,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 23.8, 0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0, 6.2, 0),
                                                      child: const Text(
                                                        'Boracay',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                    const Text(
                                                      'Philippines',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 4.9, 0, 4.9),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF8F9FB),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.1),
                                                  ),
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(
                                                        6.2, 4.1, 5.8, 4.1),
                                                    child: const Text(
                                                      '5D4N',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 10.3, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.2),
                                      color: Color(0xFFFFFFFF),
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Color(0x08000000),
                                          offset: Offset(0, 2.1),
                                          blurRadius: 7.6913561821,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10.3, 10.3, 10.3, 10.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 10.3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.1),
                                                color: Color(0xFFD9D9D9),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/baros.png')),
                                              ),
                                              child: Container(
                                                width: 134.3,
                                                height: 92,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 134.3,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 12.2, 0),
                                                      child: Text(
                                                        'Baros',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Maldives',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 4.9, 0, 4.9),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF8F9FB),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.1),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              6.2,
                                                              4.1,
                                                              5.5,
                                                              4.1),
                                                      child: Text(
                                                        '7D6N',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.2),
                                      color: Color(0xFFFFFFFF),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x08000000),
                                          offset: Offset(0, 2.1),
                                          blurRadius: 7.6913561821,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10.3, 10.3, 10.3, 10.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 10.3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.1),
                                                color: Color(0xFFD9D9D9),
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/palawan.png')),
                                              ),
                                              child: Container(
                                                width: 134.3,
                                                height: 92,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 23.8, 0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 4.3, 0),
                                                        child: Text(
                                                          'Palawan',
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Philippines',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 4.9, 0, 4.9),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF8F9FB),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.1),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              6.2,
                                                              4.1,
                                                              5.9,
                                                              4.1),
                                                      child: Text(
                                                        '3D2N',
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Offers
            Row(
              children: [],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Offers',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          'images/Offer card (3).png',
                          height: 100,
                          fit: BoxFit.cover,
                          width: 200,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'images/Offer card (2).png',
                          height: 100,
                          fit: BoxFit.cover,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
