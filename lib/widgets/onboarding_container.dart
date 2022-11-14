import 'package:flutter/material.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer(
      {super.key,
      required this.image,
      required this.description,
      required this.title});

  final String image;
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        const SafeArea(
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                '#MOVEYOURMIND',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Rubik',
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromRGBO(23, 245, 129, 1),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Rubik',
                  fontStyle: FontStyle.italic,
                  fontSize: 40),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 350.0),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Rubik', fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
