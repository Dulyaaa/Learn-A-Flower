import 'package:flutter/material.dart';
import 'package:learn_a_flower_app/routes/app_routes.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'User Dashboard',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.local_florist_sharp,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Center(
                      child: Image.asset(
                        'assets/flower.png',
                        scale: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        'Learn About Flower',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.FLOWER_LIST);
                          },
                          icon: 'assets/manel.png',
                          title: 'Flowers',
                          color: Colors.green,
                          fontColor: Colors.white,
                        ),
                        _cardMenu(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.DISEASE_LIST);
                          },
                          icon: 'assets/disease.png',
                          title: 'Disease',
                          color: Colors.green,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.QUIZ_PLAY_LIST);
                          },
                          icon: 'assets/quiz.png',
                          title: 'Play A Quiz',
                          color: Colors.green,
                          fontColor: Colors.white,
                        ),
                        _cardMenu(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.MY_FLOWERS_LIST);
                          },
                          icon: 'assets/my.png',
                          title: 'Wonderful Flowers',
                          color: Colors.green,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 36,
        ),
        width: 165,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 80,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: fontColor),
            )
          ],
        ),
      ),
    );
  }
}
