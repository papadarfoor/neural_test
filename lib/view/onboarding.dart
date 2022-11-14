import 'package:flutter/material.dart';
import 'package:neural_test/widgets/custom_button.dart';
import 'package:neural_test/widgets/onboarding_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          allowImplicitScrolling: true,
          controller: _pageController,
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/neuralwel 4.png',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/Component 9.png',
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 250),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'COMENZÁA A VIVIR TU',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Rubik',
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 200),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'NT EXPERIENCE',
                      style: TextStyle(
                          color: Color.fromRGBO(23, 245, 129, 1),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Rubik',
                          fontStyle: FontStyle.italic,
                          fontSize: 40),
                    ),
                  ),
                )
              ],
            ),
            const OnboardingContainer(
              image: 'images/conecta con cel.png',
              description:
                  'Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.',
              title: 'CONECTA',
            ),
            const OnboardingContainer(
              image: 'images/entrena con cel.png',
              description:
                  'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.',
              title: 'ENTRENA',
            ),
            const OnboardingContainer(
              image: 'images/analiza  con cel.png',
              description:
                  'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.',
              title: 'ANALIZA',
            )
          ],
        ),
        bottomSheet: Container(
          height: 200,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black,
            ],
          )),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: 8,
                        height: 8,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(2),
                        dotBorder: const DotBorder(
                          padding: 2,
                          width: 1,
                          color: Color.fromRGBO(23, 245, 129, 1),
                        ),
                      ),
                      dotDecoration: DotDecoration(
                        width: 8,
                        height: 8,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                        verticalOffset: 0,
                      ),
                      spacing: 6.0,
                    ),
                  ),
                ),
              ),
              Center(
                  child:
                      CustomButton(text: 'INICIAR SESIÓN', onpressed: () {})),
            ],
          ),
        ));
  }
}
