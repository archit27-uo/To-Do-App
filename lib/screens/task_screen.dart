import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Icon(
                  Icons.arrow_back_rounded,
                color: Colors.blueGrey,
                size: 25,

              ),

              SizedBox(
                height: 20,
              ),
              Text(
                'Title',
                style: TextStyle(
                  color: Color(0xFF364F6B),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      title: Text(
                          'task1',
                        style: TextStyle(
                          color: Color(0xFF364F6B),
                          fontSize: 20,
                        ),
                      ),
                      leading: Checkbox(
                          value: false, onChanged: (bool? value){},
                     //   shape: OutlinedBorder(side: BorderSide(style: BorderStyle.solid)),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'task2',
                        style: TextStyle(
                          color: Color(0xFF364F6B),
                          fontSize: 20,
                        ),
                      ),
                      leading: Checkbox(value: false, onChanged: (bool? value){}),
                    )
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: FloatingActionButton(
                      onPressed: (){},

                    backgroundColor: Color(0xFFFC5185),
                    child: Icon(
                        Icons.add,
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
