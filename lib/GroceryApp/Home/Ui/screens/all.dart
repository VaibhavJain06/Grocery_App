import 'package:Grocery_App/Data/dummy_data.dart';
import 'package:Grocery_App/GroceryApp/Home/Ui/Ui%20Components/categoryRow.dart';
import 'package:Grocery_App/GroceryApp/Home/Ui/Ui%20Components/featuredItems.dart';
import 'package:Grocery_App/GroceryApp/Home/Ui/Ui%20Components/HomeAndKitchen.dart';
import 'package:Grocery_App/GroceryApp/Home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';

class AllItems extends StatelessWidget {
  const AllItems({super.key, required this.homeBloc, });
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            
            children: [
               
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                            'Featured Items',
                            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),
                          ),
                  ),
                  
                ],
              ),
                  
                   FeaturedItems(data: featuredData,homeBloc: HomeBloc()),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Grocery & Kitchen',
                            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                   HomeAndKitchen(data: fruitsData,dataDetails: insideData),
                   Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Beauty & Personal Care',
                            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    CategoryRow(data: makeupData),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Makeup Accesssories',
                            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    CategoryRow(data: toolsData),
                   ],
                   ),
        ),
      ));
  }
}