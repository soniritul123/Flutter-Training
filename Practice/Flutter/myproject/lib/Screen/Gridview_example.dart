import 'package:flutter/material.dart';

class MyGridviewExample extends StatefulWidget {
  const MyGridviewExample({super.key});

 

  @override
  State<MyGridviewExample> createState() => _MyGridviewExampleState();
}

class _MyGridviewExampleState extends State<MyGridviewExample> {
   List images = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqiTB0RN6laoR4fFfUMkXnOB1qWOqL-688CQ&usqp=CAU",
                  "https://media.istockphoto.com/id/1329213718/photo/vada-pav.jpg?s=612x612&w=0&k=20&c=Yy3pm53KrPAnZXL9weCJDzXjxa2My34oVFx7RBCPmZ8=",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd_Y81WJvqIzYT2u-CONVQjbb16kpBFxK4Pw&usqp=CAU",
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqiTB0RN6laoR4fFfUMkXnOB1qWOqL-688CQ&usqp=CAU" ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5), 
          itemCount: images.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Image.network('${images[index]}', height: 200, width: 250,),
              
            ],
          );
        },),
    );
  }
}