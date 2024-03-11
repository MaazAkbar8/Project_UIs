
import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  final String  title;
  final Color color;
  final FontWeight fontWeight;
  final Color textColor;
  const Button({Key? key, required this.title,required this.color,
    this.fontWeight = FontWeight.normal,
    this.textColor = Colors.white, }) : super(key: key);



  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {



  @override
  Widget build(BuildContext context) {
    return Container(

      height: 46,
      width: 72,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          )

      ),
      child: Center(child: Text(widget.title,
        style: TextStyle(fontWeight: widget.fontWeight,
          color: widget.textColor,),),),

    );


  }
}

class img_container extends StatefulWidget {
  final String imagePaths;

  const img_container({Key? key, required this.imagePaths}) : super(key: key);


  @override
  State<img_container> createState() => _img_containerState();
}

class _img_containerState extends State<img_container> {


  @override
  Widget build(BuildContext context) {


    return Container(

      height: 180,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),


       image: DecorationImage(

         image:  AssetImage(widget.imagePaths),
         fit: BoxFit.cover,
       )
      ),



    );
  }
}



class resturentcontainer extends StatefulWidget {
  final String image;
  final String text1;
  final IconData icon;
  final String text2;
  final IconData icon2;
  final String text3;
  final String text4;
  


  const resturentcontainer({Key? key,
    required this.image,
    required this.text1,
    required this.icon,
  required this.text2,
 
   required this.icon2,
  required this.text3,
 required this .text4
  }
      ) : super(key: key);

  @override
  State<resturentcontainer> createState() => _resturentcontainerState();
}

class _resturentcontainerState extends State<resturentcontainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,top: 5),
      child: Container(
        height: 85,
        width: 370,



          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)
            ),
          ),
          child:  Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 9, top: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                  ), // Adjust the value to change the roundness
                  child: Image.asset(
                    widget.image,
                    height: 70,
                    width: 75,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 12),
                    child: Text(widget.text1,style: TextStyle
                      (fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top:12, left: 35),
                    child: Icon(widget.icon,color: Colors.red,size: 30,),
                  ),
                ],
              ),


                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 35),
                    child: Text(widget.text2,style: TextStyle
                      (fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey),),
              ),

              Padding(
                padding: const EdgeInsets.only(top:56, left: 105),
                child: Icon(widget.icon2,color: Colors.amber,size: 17,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 125,top: 55),
                child: Text(widget.text3,style: TextStyle
                  (fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 152,top: 55),
                child: Text(widget.text4,style: TextStyle
                  (fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey),),
              ),


            ],
          )
          ),
    );







  }
}


