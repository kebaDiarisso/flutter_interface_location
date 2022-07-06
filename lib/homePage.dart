import 'package:flutter/material.dart';
import 'package:flutter_location_app/detail.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _selectedIndex = 0;
  int nombre = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(),
      body: Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 5,
                  right: 5,
                  // bottom: 5,
                ),
                height: 70,
                child: ListTile(
                    title: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                        isDense: true, // Added this
                        contentPadding:
                            EdgeInsets.only(left: 8, right: 8), // Added this
                      ),
                    ),
                    trailing: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Search'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )),
              ),
              Column(
                children: [
                  const ListTile(
                    title: Text('Communities',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Connect people, support programs, lead...'),
                  ),
                  Container(
                    //margin: EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://a.cdn-hotels.com/gdcs/production92/d1580/9a28fc70-9bea-11e8-a1b5-0242ac110053.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('San Francisco, California',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Wrap(
                                      children: const [
                                        Text(
                                          'Explorer',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://media-cdn.tripadvisor.com/media/photo-s/22/e2/77/5b/hotel-exterior.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Calabasas, California',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Wrap(
                                      children: const [
                                        Text(
                                          'Explorer',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://a.cdn-hotels.com/gdcs/production92/d1580/9a28fc70-9bea-11e8-a1b5-0242ac110053.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('San Francisco, California',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Wrap(
                                      children: const [
                                        Text(
                                          'Explorer',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text('Homes',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Detail()),
                                  );
                                },
                                child: Container(
                                  height: 125,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://img-3.journaldesfemmes.fr/USeLbxpeO5C-AWWKHWX-8J_xVMU=/820x546/smart/9e45ebe939d64e739eb7eed20642de8e/ccmcms-jdf/24418449.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 115),
                                padding: const EdgeInsets.all(10),
                                height: 110,
                                width: 250,
                                decoration: const BoxDecoration(
                                    //borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Apartment',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('1,098 USD/Month',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('45039 Newcastle, Calabasa, CA'),
                                    // const ListTile(
                                    //   title: const Text('1,098 USD/Month',style: const TextStyle(fontWeight: FontWeight.bold)),
                                    //   subtitle: const Text('45039 Newcastle, Calabasa, CA'),
                                    // ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(top: 60),
                                      child: Row(
                                        children: [
                                          Icon(Icons.crib),
                                          Text("2"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1560 sqft"),
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Detail()),
                                  );
                                },
                                child: Container(
                                  height: 125,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://www.ikea.com/ch/fr/images/products/gladstad-cadre-de-lit-matelasse-kabusa-gris-clair__1101393_pe866653_s5.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 115),
                                padding: const EdgeInsets.all(10),
                                height: 110,
                                width: 250,
                                decoration: const BoxDecoration(
                                    //borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Apartment',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('1,098 USD/Month',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('45039 Newcastle, Calabasa, CA'),
                                    // const ListTile(
                                    //   title: const Text('1,098 USD/Month',style: const TextStyle(fontWeight: FontWeight.bold)),
                                    //   subtitle: const Text('45039 Newcastle, Calabasa, CA'),
                                    // ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(top: 60),
                                      child: Row(
                                        children: [
                                          Icon(Icons.crib),
                                          Text("2"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1560 sqft"),
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Detail()),
                                  );
                                },
                                child: Container(
                                  height: 125,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://www.planete-deco.fr/wp-content/uploads/2022/04/IK6.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 115),
                                padding: const EdgeInsets.all(10),
                                height: 110,
                                width: 250,
                                decoration: const BoxDecoration(
                                    //borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Apartment',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('1,098 USD/Month',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('45039 Newcastle, Calabasa, CA'),
                                    // const ListTile(
                                    //   title: const Text('1,098 USD/Month',style: const TextStyle(fontWeight: FontWeight.bold)),
                                    //   subtitle: const Text('45039 Newcastle, Calabasa, CA'),
                                    // ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(top: 60),
                                      child: Row(
                                        children: [
                                          Icon(Icons.crib),
                                          Text("2"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1"),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.crib),
                                          Text("1560 sqft"),
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text('New Buildings',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange)),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detail()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/suburban-house-royalty-free-image-1584972559.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detail()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEzNzYzNn0?utm_source=dictionnaire&utm_medium=referral'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detail()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://s.oneroof.co.nz/image/1e/3b/1e3b4ee733c3d28c3d3b89c1351f841f.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                         GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detail()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://pix10.agoda.net/hotelImages/9065853/-1/142d78192fda46d5b58e14c9d3f2fe51.jpg?ca=9&ce=1&s=1024x768'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: 'Exploire',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saved',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
