import 'package:flutter/material.dart';

class Baothuc extends StatelessWidget {
  const Baothuc({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'ZendVN',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              AspectRatio(
                aspectRatio: 2 / 0.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blue.shade700,
                              Colors.blue.shade500,
                              Colors.blue.shade400,
                              Colors.blue.shade200,
                              Colors.blue.shade100,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'List Of Article',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                  Cardbody(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cardbody extends StatelessWidget {
  const Cardbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '08:AM',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 40,
          width: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.shade500,
                Colors.blue.shade400,
                Colors.blue.shade200,
                Colors.blue.shade100,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
