import 'package:flutter/material.dart';
import 'package:link/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.settings,
            size: 40,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Container(
          child: Column(
            children: [
              Container(
                
                child: 
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(20),
                            topStart: Radius.circular(20)),
                        color: appcolor.secondary),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 70,
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "User name",
                                  style: TextStyle(
                                      color: appcolor.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                
              ),
              Container(
                decoration: BoxDecoration(color: appcolor.secondary),
                child: Container(
                  
                  decoration: BoxDecoration(
                    
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(20),
                          topStart: Radius.circular(20)),
                      color: appcolor.white),
                      
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(children: [Text("data")],
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
