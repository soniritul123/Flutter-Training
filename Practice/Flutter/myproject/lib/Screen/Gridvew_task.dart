import 'package:flutter/material.dart';

class MyGridviewTask extends StatefulWidget {
  const MyGridviewTask({super.key});

  @override
  State<MyGridviewTask> createState() => _MyGridviewTaskState();
}

class _MyGridviewTaskState extends State<MyGridviewTask> {

  List furniture = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSquMGMg8hcUD-vO_Ue5Yggr6muKbNGt_C0Yg&usqp=CAU", 
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh2YZjfvi3Q0glHxdnyJNYLI2SaqWkfrUYrw&usqp=CAU",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoCqZPB0FJu4dOK9NYO7DVQ68SPwB5e7j8Uw&usqp=CAU", 
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgkyndMnLsIgxt-INV-PDm58QKK7jXu-rPnQ&usqp=CAU",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR4S9EuWtDWYdXVpqUXZY6a4H2axQFq2orJw&usqp=CAU",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBeiIGDfSazaIpYigri9oweiVwGv1AImykLg&usqp=CAU"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.all(12),
          child: Container(
            height: 38,
            width: 33,
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(child: Text("0", style: TextStyle(fontSize: 14),)),
          ),),
        ],
        
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1finEffkZPZhl-mpPQwCoa7xwxac0bAuoWA&usqp=CAU"),
                  fit: BoxFit.cover),),
              )
            ],
          ),
        ),),
    );
  }
}
      
      
      
      /*
      
      Column(
          children: [
            Container(
  
              height: 100,
              width: double.maxFinite,
              child: Column(children: [
              Text("Lifestyle Sale"),
              SizedBox( height: 30,),
              ElevatedButton(
              onPressed: () {}, 
              child: Text("Shop Now", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22.0)),
          )
        ],
        ),
        ),
        Container(
          height: 200,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 0,crossAxisSpacing: 0),
            itemCount: furniture.length,
             itemBuilder: (context, index) {
               return Column(
                children: [
                  Card(
                    child : Image.network("${furniture[index]}",height: 150,width: 150,)
                  )
                ],
               );
             },),
        )
       ],
        ),
      );*/
  
  


    






  

