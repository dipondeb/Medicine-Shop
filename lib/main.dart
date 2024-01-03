import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

 MySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message),),
  );
 }
 var itemList = [
   {'name':'Napa Extra', 'Price':'30 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6maJbuweqDaXoDVgk6cDxxeV7K9hAUlxsT7bSlEYcw6AcYkxbnXCrK2G9Y8ViI0d3GWY&usqp=CAU'},
   {'name':'Napa Extend', 'Price':'25 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAnIdO97iK4rTy77sriN74W2wEgkk3kUKJ8zuf7WgxmDlyaDQSoemJ_69ql6kE2KWJIOs&usqp=CAU'},
   {'name':'Napa', 'Price':'12 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbuw97fwmIAL3TKeqjniQd3a3p4TJkPLHVCnEOffRX4y4Vbl81Own_1SNYeaiGZKetY1U&usqp=CAU'},
   {'name':'Sergel', 'Price':'65 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp11z1kRa0UKu69k6aGluIulO9xw-aV-i77ElRa9HfipBaHskXtJiS4BbaH2zthxK7jaI&usqp=CAU'},
   {'name':'Bet-CG', 'Price':'65 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRMpl16K6Y0KN9mt6xcbQpH89VjSXsR9r8FY-hby32WI7OXh-tFbI8BwBZmn2rNb5XMq0&usqp=CAU'},
   {'name':'Move', 'Price':'550 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyV--Vt3kdImChv04kVF6ffhpO6dptWTI_YDu2hJ8aVjnHGIf-ULd3ADb1cua8YBd6x0c&usqp=CAU'},
   {'name':'Xorel-20', 'Price':'30 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGnL5NniESKIqp9YL4CuqqTGoMUbxDICUZp3w3qqqCscIQGDmKc4Q7qDa6XEO6IEpqfn0&usqp=CAU'},
   {'name':'Adtrizin-10', 'Price':'40 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs0Ze7uqn2jZPD-Xl9T-O46clT603dZo83UOYFgopcQTiNByqy2jl2nudRNJziTMqLOts&usqp=CAU'},
   {'name':'Doxorin-400', 'Price':'50 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRbrQ6gpKHuD5EWqwQeF22HPzzY51JMEJqYTrbWAaUmzsjB3MC-tl15V9XbJsmdcwuD50&usqp=CAU'},
   {'name':'Brezofil', 'Price':'60 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpTuR8R04MJj9rnxiCyo1mps7nVT9FfyAFDXSA1ffOddclFEfWv-1cOcVFfospBTm7xRE&usqp=CAU'},
   {'name':'Doxogen-400', 'Price':'40 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb-jWipLnBmHcpW6rOIDRzc-k7nD5QD7opVkPw5JnmYoRGJVnCYWngQoLCq_VJw8DlOcQ&usqp=CAU'},
   {'name':'Doxyfull-400', 'Price':'30 TAKA', 'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSACpbsftMtinq7ZOmP7DU2L4QNXat-zn7VDQ7xepHqoCYGOF2cAU6Cjp47hx4ZW7keQWc&usqp=CAU'},
 ];



class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Medecine Shop"),
        elevation: 10,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am a Search", context);}, icon: Icon(Icons.search),),
          IconButton(onPressed: (){MySnackBar("I am a More", context);}, icon: Icon(Icons.more_vert),),
        ],
      ),
      drawer: Drawer(),
      body: GridView.builder(
        itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index){
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(itemList[index]['image']!),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Name : ${itemList[index]['name']!}",style: TextStyle(fontSize: 8),),
                    ),
                    Padding(padding: EdgeInsets.all(8.0),
                      child: Text("Price : ${itemList[index]['Price']!}",style: TextStyle(fontSize: 8),),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}

