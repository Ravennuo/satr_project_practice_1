import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 187,
                    width: 128,
                    child: Image(
                      image: AssetImage("Asset/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Norah",
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        "heart Specialist",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          CustomiconStyle(icon: Icons.mail),
                          SizedBox(
                            width: 8,
                          ),
                          CustomiconStyle(icon: Icons.phone),
                          SizedBox(
                            width: 8,
                          ),
                          CustomiconStyle(icon: Icons.video_call),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Dr. Norah is a highly skilled and experienced heart specialist with a passion for providing exceptional patient care. With extensive training in cardiology, she has a deep understanding of the complexities of heart disease and is dedicated to staying up-to-date with the latest advancements in treatment options.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nSaudi Arabia. Riyadh\nKing Faisal hospital",
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nSaudi Arabia. Riyadh\nKing Faisal hospital",
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage("Asset/images/map_image.JPG"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomiconStyle extends StatelessWidget {
  const CustomiconStyle({
    super.key,
    required this.icon,
  });

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.orangeAccent,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.deepOrange[50],
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
