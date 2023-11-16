import 'package:flutter/material.dart';
import 'package:homefitvg/models/top_screen_model.dart';

import '../../models/body_model.dart';
import '../../widgets/body_components/addome.dart';
import '../../widgets/body_components/braccia.dart';
import '../../widgets/body_components/cardio.dart';
import '../../widgets/body_components/gambe.dart';
import '../../widgets/body_components/glutei.dart';
import '../../widgets/body_components/petto.dart';
import '../../widgets/body_components/schiena.dart';
import '../../widgets/body_components/spalle.dart';
import '../../widgets/body_components/stretch.dart';

class Allenamento extends StatelessWidget {
  const Allenamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopScreenModel(
            title: 'Allenamento',
            subtitle: "Seleziona una parte per vedere tutti gli esercizi",
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/petto.png',
                        bodyName: 'Petto',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Petto(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/schiena.png',
                        bodyName: 'Schiena',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Schiena(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/spalle.png',
                        bodyName: 'Spalle',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Spalle(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/braccia.png',
                        bodyName: 'Braccia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Braccia(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/gambe.png',
                        bodyName: 'Gambe',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Gambe(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/glutei.png',
                        bodyName: 'Glutei',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Glutei(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/cardio.png',
                        bodyName: 'Cardio',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cardio(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/addome.png',
                        bodyName: 'Addome',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Addome(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(
                        bodyImage: 'images/stretch.png',
                        bodyName: 'Stretch',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Stretch(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
