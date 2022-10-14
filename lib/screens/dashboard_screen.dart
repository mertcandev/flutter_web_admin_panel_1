// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.deepPurple.shade400,
              unselectedIconTheme:
                  IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: TextStyle(color: Colors.white),
              selectedIconTheme:
                  IconThemeData(color: Colors.deepPurple.shade900),
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Icons.bar_chart), label: Text("Reports")),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text("Profile")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Settings"))
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            icon: Icon(Icons.menu)),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://faces-img.xcdn.link/image-lorem-face-3430.jpg"),
                          radius: 26,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.article,
                                      size: 20,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Articles",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "6 Articles",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )),
                        Flexible(
                            child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Comments",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "+32 Comments",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          ),
                        )),
                        Flexible(
                            child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people,
                                      size: 20,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Subscriptions",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "3.2 M subscribers",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        )),
                        Flexible(
                            child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      "Revenue",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "2.300 \$ ",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "6 Articles",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "4 new articles",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 180,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Type article title",
                                suffixIcon: Icon(Icons.search),
                                border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.deepPurple.shade400,
                          ),
                          label: Text(
                            "2022, July 14, July 15, July 16",
                            style: TextStyle(color: Colors.deepPurple.shade400),
                          ),
                        ),
                        Row(
                          children: [
                            DropdownButton(
                                hint: Text("Filter by"),
                                items: [
                                  DropdownMenuItem(
                                      value: "Date", child: Text("Date")),
                                  DropdownMenuItem(
                                      value: "Comments",
                                      child: Text("Comments")),
                                  DropdownMenuItem(
                                      value: "Views", child: Text("Date"))
                                ],
                                onChanged: (value) {}),
                            SizedBox(width: 20),
                            DropdownButton(
                                hint: Text("Order by"),
                                items: [
                                  DropdownMenuItem(
                                      value: "Date", child: Text("Date")),
                                  DropdownMenuItem(
                                      value: "Comments",
                                      child: Text("Comments")),
                                  DropdownMenuItem(
                                      value: "Views", child: Text("Date"))
                                ],
                                onChanged: (value) {})
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.grey.shade200),
                            columns: [
                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Article Title")),
                              DataColumn(label: Text("Creation Title")),
                              DataColumn(label: Text("Views")),
                              DataColumn(label: Text("Comments"))
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text("0")),
                                DataCell(
                                    Text("How to build a Flutter Web App")),
                                DataCell(Text("${DateTime.now()}")),
                                DataCell(Text("2.3K Views")),
                                DataCell(Text("102 Comments")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("1")),
                                DataCell(
                                    Text("How to build a Flutter Mobile App")),
                                DataCell(Text("${DateTime.now()}")),
                                DataCell(Text("21.3K Views")),
                                DataCell(Text("503 Comments")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("2")),
                                DataCell(
                                    Text("Flutter for your first project")),
                                DataCell(Text("${DateTime.now()}")),
                                DataCell(Text("4.1K Views")),
                                DataCell(Text("1409 Comments")),
                              ]),
                            ]),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "1",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "2",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "3",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple.shade400,
        child: Icon(Icons.add),
      ),
    );
  }
}
