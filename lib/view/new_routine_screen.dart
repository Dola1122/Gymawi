import 'package:flutter/material.dart';

class NewRoutineScreen extends StatelessWidget {
  const NewRoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Routine"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                  hintText: 'Routine Title',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  )),
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25, // Adjust the radius as needed
                      backgroundImage: NetworkImage(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Bench Press",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Add note here',
                    border: InputBorder.none,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Rest Timer : 1min 30s",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("SET"),
                          Spacer(),
                          Text("KG"),
                          Spacer(),
                          Text("Reps"),
                          Spacer(),
                        ],
                      ),
                    ),
                    const Divider(height: 4),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("1"),
                          Spacer(
                            flex: 12,
                          ),
                          Text("15"),
                          Spacer(
                            flex: 12,
                          ),
                          Text("12"),
                          Spacer(
                            flex: 11,
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 4),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("1"),
                          Spacer(
                            flex: 12,
                          ),
                          Text("15"),
                          Spacer(
                            flex: 12,
                          ),
                          Text("12"),
                          Spacer(
                            flex: 11,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Divider(height: 4),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("1"),
                              Spacer(
                                flex: 12,
                              ),
                              Text("15"),
                              Spacer(
                                flex: 12,
                              ),
                              Text("12"),
                              Spacer(
                                flex: 11,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add Set"),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(double.maxFinite, 30),
                          backgroundColor: Colors.blue.shade300),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
