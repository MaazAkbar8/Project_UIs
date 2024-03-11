import 'package:flutter/material.dart';

class Detailed extends StatefulWidget {
  final String imagePath;
  const Detailed({Key? key,  required this.imagePath }) : super(key: key);
  @override
  State<Detailed> createState() => _DetailedState();
}

class _DetailedState extends State<Detailed> {

  int _sizebuttonindex =0;
  void _onsizebuttonTapped(int index) {
    setState(() {
      _sizebuttonindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(Icons.more_vert,color: Colors.grey,size: 26,),
          )
        ],
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Text("Beef Burger",style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold,color: Colors.black),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5,left: 10),
            child: Text('Burger is a generally a simple dish.but\n   comes in many varieties due to its\n          versatilility ,some burger',
            style: TextStyle(color: Colors.grey),),
          ),
          SizedBox(height: 26,),
          Padding(
            padding:  const EdgeInsets.only(left: 20),
            child: Stack(
              children: [
               Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFFFEFD4),
                  borderRadius: BorderRadius.circular(300),
                  border: Border.all(
                    color: Color(0xFFFFcc80),
                    width: 23
                  )
                ),
                child: CircleAvatar(
                      backgroundColor: Color(0xFFFFEFD4),
                 // backgroundImage: AssetImage('assets/images/burger1.jpg'),
                  radius: 1,
                  child:  Container(
                  height:250 , // Set the height of the image
                  width: 250, // Set the width of the image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      // Replace with your image path
                      fit: BoxFit.cover, // Adjust this according to your needs
                    ),
                    shape: BoxShape.circle, // Make the container circular
                  ),
                    ),

                ),
              ),

                Padding(
                  padding: const EdgeInsets.only(top: 235,left: 108),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.favorite_border,color: Colors.red,size: 33,),
                  ),
                )
              ]
            ),
          ),
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
               sizeButton('s', 0),
                SizedBox(width: 35,),
                sizeButton('M', 1),
                SizedBox(width: 35,),
                sizeButton('L', 2)
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(right: 355,top: 8),
              child: Text("Price", style: TextStyle(color: Colors.grey),),
            ),
          SizedBox(height: 0,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('10.50\$',style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                color: Colors.black),),
                Spacer(),
                
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Container(
                      height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text('-',style: TextStyle(color: Colors.white,fontSize: 26),),
                       SizedBox(width: 18,),
                       Text('1',style: TextStyle(color: Colors.white,fontSize: 18),),
                       SizedBox(width: 18),
                       Text('+',style: TextStyle(color: Colors.white,fontSize: 18),)
                     ],
                   ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(

            height: 53,
            width: 420,
            decoration: BoxDecoration(
                color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
              )
            ),
            child: Center(child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)),

          )

        ],
      ),
    );
  }

  Widget sizeButton(String title, int index) {
    return InkWell(
      onTap: () {
        _onsizebuttonTapped(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: _sizebuttonindex == index ? Colors.amber : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _sizebuttonindex == index ? Colors.white : Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
