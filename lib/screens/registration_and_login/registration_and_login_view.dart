import 'package:flutter/material.dart';
import 'package:flutter_application/assets/styles/perritos-colors.dart';
import 'package:flutter_application/assets/styles/perritos-fonts.dart';
import 'package:flutter_application/assets/styles/perritos-icons/PerritosIcons_icons.dart';
import 'package:flutter_application/assets/ui-components/buttons/perritos-button.dart';
import 'package:flutter_application/assets/ui-components/buttons/perritos-icon-button.dart';
import 'package:flutter_application/assets/ui-components/text-input/perritos_txt_input.dart';
import 'package:flutter_application/common/providers.dart';
import 'package:flutter_application/screens/registration_and_login/registration_and_login_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../assets/ui-components/navigation/perritos-navigation.dart';

class RegistrationAndLoginView extends ConsumerWidget {
  const RegistrationAndLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RegistrationAndLoginController controller =
        ref.read(providers.registrationAndLoginControllerProvider.notifier);
    final RegistrationAndLoginModel model =
        ref.watch(providers.registrationAndLoginControllerProvider);

    return Scaffold(
        body: Center(
      child: model.currentRegistrationAndLoginScreen ==
              RegistrationAndLogin.kickoff
          ? Container(
              color: PerritosColor.perritosSnow.color,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 0,
                    right: 10,
                    bottom: 0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Image(
                        image: AssetImage(
                            'lib/assets/images/Perritos_Logo_1_Coloured.png'),
                        height: 227,
                      ),
                      const SizedBox(height: 60),
                      PerritosButton(
                          onPressed: () => {
                                controller
                                    .switchCurrentRegistrationAndLoginScreen(
                                        RegistrationAndLogin.login)
                              },
                          label: 'Login'),
                      const SizedBox(height: 20),
                      PerritosButton(
                          onPressed: () => {
                                controller
                                    .switchCurrentRegistrationAndLoginScreen(
                                        RegistrationAndLogin.registration)
                              },
                          label: 'Sign Up'),
                      const SizedBox(height: 60),
                    ],
                  )))
          : model.currentRegistrationAndLoginScreen ==
                  RegistrationAndLogin.registration
              ? Container(
                  color: PerritosColor.perritosSnow.color,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 0,
                        right: 10,
                        bottom: 0,
                      ),
                      child: Column(children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(width: 10),
                              Expanded(
                                  child: PerritosIconButton(
                                      onPressed: () => controller
                                          .switchCurrentRegistrationAndLoginScreen(
                                              RegistrationAndLogin.kickoff),
                                      iconSize: 40,
                                      icon: PerritosIcons.Icon_Arrow_Left)),
                              Text(
                                'Welcome!',
                                style: perritosDoubleParagon,
                              ),
                              const Spacer()
                            ]),
                        const SizedBox(height: 36),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "Username",
                        ),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "E-Mail Adresse",
                        ),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "Passwort",
                          password: true,
                        ),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "Passwort bestätigen",
                          password: true,
                        ),
                        const Spacer(),
                        PerritosButton(
                            onPressed: () => {print('Sign Up')},
                            label: 'Sign Up'),
                        const SizedBox(height: 60)
                      ])))
              : Container(
                  color: PerritosColor.perritosSnow.color,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 0,
                      right: 10,
                      bottom: 0,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10),
                            Expanded(
                                child: PerritosIconButton(
                                    onPressed: () => controller
                                        .switchCurrentRegistrationAndLoginScreen(
                                            RegistrationAndLogin.kickoff),
                                    iconSize: 40,
                                    icon: PerritosIcons.Icon_Arrow_Left)),
                            Text(
                              'Welcome back!',
                              style: perritosDoubleParagon,
                              textAlign: TextAlign.center,
                            ),
                            const Spacer()
                          ],
                        ),
                        const SizedBox(height: 36),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "E-Mail Adresse",
                        ),
                        PerritosTxtInput(
                          onSubmit: (value) => {print(value)},
                          hintTxt: "Passwort",
                          password: true,
                        ),
                        const Spacer(),
                        PerritosButton(
                            onPressed: () => {
                                  Navigator.pushNamed(context,
                                      '/UserSelectionAndAdministration')
                                },
                            label: 'Login'),
                        const SizedBox(height: 60)
                      ],
                    ),
                  )),
    ));
  }
}

abstract class RegistrationAndLoginController
    extends StateNotifier<RegistrationAndLoginModel> {
  RegistrationAndLoginController(RegistrationAndLoginModel state)
      : super(state);

  void switchCurrentRegistrationAndLoginScreen(screen);
}
