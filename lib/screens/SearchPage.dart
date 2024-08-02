import "package:flutter/material.dart";

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? departure;
  String? arrival;
  DateTime? departureDate;
  int passengers = 1;
  String? travelClass = 'Economy';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Search Flight"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
          centerTitle: true,
          elevation: 1.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ToggleButtons(
                isSelected: [true, false],
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('One way'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Round trip'),
                  ),
                ],
                onPressed: (int index) {
                  // Handle toggle button selection
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'From',
                  prefixIcon: Icon(Icons.flight_takeoff),
                ),
                onChanged: (value) {
                  setState(() {
                    departure = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'To',
                  prefixIcon: Icon(Icons.flight_land),
                ),
                onChanged: (value) {
                  setState(() {
                    arrival = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Departure Date',
                  prefixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      departureDate = pickedDate;
                    });
                  }
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: '1 Adult',
                      decoration: const InputDecoration(
                        labelText: 'Passengers',
                        prefixIcon: Icon(Icons.person),
                      ),
                      onChanged: (value) {
                        setState(() {
                          passengers = int.parse(value.split(' ')[0]);
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: travelClass,
                      decoration: const InputDecoration(
                        labelText: 'Class',
                        prefixIcon: Icon(Icons.airline_seat_recline_normal),
                      ),
                      items: ['Economy', 'Business', 'First Class']
                          .map((String classType) {
                        return DropdownMenuItem<String>(
                          value: classType,
                          child: Text(classType),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          travelClass = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle search button press
                },
                child: Text('Search'),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.blue[100],
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.credit_card, color: Colors.blue),
                            Text('20% discount for Mastercard users'),
                            Text('Limited time offer!'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Card(
                      color: Colors.purple[100],
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.credit_card, color: Colors.purple),
                            Text('25% discount with your Visa credit cards'),
                            Text('Limited time offer!'),
                          ],
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
    );
  }
}
