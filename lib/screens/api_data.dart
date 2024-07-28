import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/data/models/list_data_model.dart';
import 'package:flutter_quiz_project/data/repositories/get_data.dart';

class ApiData extends StatefulWidget {
  const ApiData({super.key});

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  UserModel? viewData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "API Data List",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            )),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                   viewData = await dataList().getData();
                    print(viewData);
                    // setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Get Data",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  )),
              // for(int i=0;i<viewData.length ;i++)
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 8, 63, 109),borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "1)",
                          style: TextStyle(fontSize: 20,color: Colors.redAccent),
                          
                        ),
                      ),
                      Text("hellooo",style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
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
