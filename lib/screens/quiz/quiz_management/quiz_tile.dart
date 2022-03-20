import 'package:flutter/material.dart';
import 'package:learn_a_flower_app/helpers/colors.dart';
import 'package:learn_a_flower_app/models/quiz.dart';
import 'package:learn_a_flower_app/routes/app_routes.dart';

class QuizTile extends StatelessWidget {
  const QuizTile({Key? key, required this.quizInfo}) : super(key: key);
  final Quiz quizInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'LEVEL',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    quizInfo.level.toString(),
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Text(
              quizInfo.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.QUIZ_MANAGEMENT_QUESTIONS,
            arguments: {'quiz_info': quizInfo});
      },
    );
  }
}
