import 'package:flutter/material.dart';
import 'package:resturent_app_ui/container_component.dart';
import 'package:resturent_app_ui/detailedscreen.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  int _buttonIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButtonTapped(int index) {
    setState(() {
      _buttonIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Row(
          children: [
            Text("Hello",style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w400,color: Colors.black),),
            SizedBox(width: 3,),
            Text("Rocky",style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.black),),


          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600")
      ),
          ),

        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 8),
              child: Row(
                children: [

                  Container(

                    height: 50,
                    width: 299,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)

                    ),

                    child:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 2),
                          child: Text("Food & Restaurents",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        ),

                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.search,color: Colors.orange,),
                          onPressed: () {
                            // Add your search functionality here
                          },
                        ),
                      ],
                    )








                  ),

                  SizedBox(width: 14,),
                  Container(
                    height: 50,
                    width: 64,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: IconButton(
                      icon: Icon(Icons.tune,color: Colors.orange,),
                      onPressed: () {
                        // Add your search functionality here
                      },
                    ),

                  ),



                ],
              ),
            ),

            SizedBox(height: 18,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1,left: 20),
                  child: Row(
                    children: [



                      buildButton("All", 0,),
                      SizedBox(width: 10),
                      buildButton("Burger", 1),
                      SizedBox(width: 10),
                      buildButton("Pasta", 2),
                      SizedBox(width: 10),
                      buildButton("Pizza", 3),
                      SizedBox(width: 10),
                      buildButton("Seafood", 4),







                    ],
                  ),
                ),
              ),
            ),

             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20,top: 15),
                   child: Text("Popular Foods ",style: TextStyle(fontSize: 19,
                       fontWeight: FontWeight.bold,color: Colors.black),),

                 ),
                 Spacer(),

                 Padding(
                   padding: const EdgeInsets.only(top: 24,right: 10),
                   child: Text("See All ",style: TextStyle(fontSize: 15,
                       fontWeight: FontWeight.normal,color: Colors.orange),),

                 ),

               ],
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
                        builder: (context) => Detailed(imagePath: 'assets/images/burger1.jpg'),
                      ),
                    );
                  },
                 child: Padding(
                    padding: EdgeInsets.only(left: 15,top: 6),
                    child: img_container(imagePaths: 'assets/images/burger1.jpg'),
                  ),
                ),
                //******************************************************
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailed(imagePath: 'assets/images/burger5.jpg'),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,top: 6),
                      child: img_container(imagePaths: 'assets/images/burger5.jpg'),
                    ),
                  ),
                  //***************************************************
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailed(imagePath: 'assets/images/burger3.jpg'),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,top: 6),
                      child: img_container(imagePaths: 'assets/images/burger3.jpg'),
                    ),
                  ),

                 //****************************************************
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailed(imagePath: 'assets/images/burger2.jpg'),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,top: 6),
                      child: img_container(imagePaths: 'assets/images/burger2.jpg'),
                    ),
                  ),
                  //****************************************************
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailed(imagePath: 'assets/images/burger1.jpg'),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,top: 6),
                      child: img_container(imagePaths: 'assets/images/burger1.jpg'),
                    ),
                  ),



                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text("Restaurents ",style: TextStyle(fontSize: 19,
                      fontWeight: FontWeight.bold,color: Colors.black),),

                ),
                Spacer(),

                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: Text("See All ",style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.normal,color: Colors.orange),),

                ),

              ],
            ),



                resturentcontainer(image: 'assets/images/restu1.png',
                   text1: "Green Curry Restaurant",
                  icon: (Icons.favorite),
                  text2: "MaazAkbar pakistan",
                  icon2: (Icons.star),
                  text3: '4.5',
                  text4: "from 450",
                     ),
            resturentcontainer(image: 'assets/images/restu2.png',
              text1: "Flavourrose Restaurant",
              icon: (Icons.favorite),
              text2: "Dhaka Bangladish",
              icon2: (Icons.star),
              text3: '4.5',
              text4: "from 450",

            ),



          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );

  }

  Widget buildButton(String title, int index) {
    return InkWell(
      onTap: () {
        _onButtonTapped(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: _buttonIndex == index ? Colors.amber : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _buttonIndex == index ? Colors.white : Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}



