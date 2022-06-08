import 'package:flutter/material.dart';
import 'package:flutter_application/assets/styles/perritos-colors.dart';
import 'package:flutter_application/assets/styles/perritos-fonts.dart';
import 'package:flutter_application/assets/styles/perritos-icons/PerritosIcons_icons.dart';
import 'package:flutter_application/assets/ui-components/action/perritos-action.dart';
import 'package:flutter_application/assets/ui-components/navigation/perritos-navigation.dart';
import 'package:flutter_application/assets/ui-components/text-input/perritos_search_input.dart';
import 'package:flutter_application/common/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_model.dart';


class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeController controller =
        ref.read(providers.homeControllerProvider.notifier);
    final HomeModel model = ref.watch(providers.homeControllerProvider);

    return Scaffold(
      backgroundColor: PerritosColor.perritosSnow.color,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 0,
                  right: 10,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  PerritosIcons.Icon_Dog,
                                  size: 26,
                                  color: PerritosColor.perritosGoldFusion.color,
                                ),
                                onPressed: () => {
                                      Navigator.pushNamed(context,
                                          '/DogSelectionAndAdministration')
                                    }),
                            const Spacer(),
                            IconButton(
                                icon: Icon(
                                  PerritosIcons.Icon_User,
                                  size: 26,
                                  color: PerritosColor.perritosBurntSienna.color,
                                ),
                                onPressed: () => {
                                      Navigator.pushNamed(context,
                                          '/UserSelectionAndAdministration')
                                    }),
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                            child: PerritosSearchInput(
                          onSubmit: (String) {},
                        )) //TODO: Add functionality
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Aufgaben',
                      style: perritosDoubleParagon,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: PerritosAction(
                          icon: PerritosIcons.Icon_Task,
                          value: '',
                          label: 'Hundefutter kaufen',
                          onPressed: () {
                          },
                        ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Termine',
                      style: perritosDoubleParagon,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: PerritosAction(
                          icon: PerritosIcons.Icon_Date,
                          value: 'heute, 15:30-16:00 Uhr',
                          label: 'Gassi',
                          onPressed: () {
                          },
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: PerritosAction(
                          icon: PerritosIcons.Icon_Date,
                          value: '16.06.22, 16:00-17:00 Uhr',
                          label: 'Hundefriseur',
                          onPressed: () {
                          },
                        ))
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Auffälligkeiten',
                      style: perritosDoubleParagon,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: PerritosAction(
                          icon: PerritosIcons.Icon_Smiley_Sad,
                          value: '',
                          label: 'Biene gestanden',
                          onPressed: () {
                          },
                        ))
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            PerritosIcons.Icon_Add,
                            size: 42,
                            color: PerritosColor.perritosCharcoal.color,
                          ),
                          onPressed: () {
                          },
                          padding: const EdgeInsets.all(0),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
        bottomNavigationBar: Container(
          color: PerritosColor.perritosSnow.color,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 0,
              right: 10,
              bottom: 10,
            ),
            child: PerritosNavigationBar(
              activeView: activeView.home,
              navigateToHome: () {
                Navigator.pushNamed(context, '/Home');
              },
              navigateToProfile: () {
                Navigator.pushNamed(context, '/DogProfileInfo');
              },
              navigateToCalendar: () {
                Navigator.pushNamed(context, '/Calendar');
              },
            ),
          ),
        )
    );
  }
}

abstract class HomeController extends StateNotifier<HomeModel> {
  HomeController(HomeModel state) : super(state);
}