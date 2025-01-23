import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cores/style/color_app.dart';
import '../../../../cores/style/image_app.dart';
import '../../../../cores/style/string_app.dart';
import '../../../../cores/style/text_style.dart';
import '../../cubits/counter_cubit.dart';

import '../../cubits/counter_state.dart';
import '../widget/app_bar.dart';
import '../widget/button_counter.dart';
import '../widget/color_button.dart';
import '../widget/drawer.dart';
import '../widget/listener.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: listener(context, CounterState),
        builder: (context, state) {
          CounterCubit counter = BlocProvider.of(context);
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: ColorApp.backGround,
              appBar: appBar(
                title: counter.name,
              ),
              drawer: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Drawer(
                  backgroundColor: Colors.transparent,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      const CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(ImageApp.backGroundImage),
                      ),
                      drawer(context, StringApp.title1),
                      drawer(context, StringApp.title2),
                      drawer(context, StringApp.title3),
                      drawer(context, StringApp.title4),
                      drawer(context, StringApp.title5),
                    ],
                  ),
                ),
              ),
              body: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ImageApp.backGroundImage1),
                        fit: BoxFit.cover)),
                child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: counter.color,
                          child: Text(
                            counter.x.toString(),
                            style: bodyTextStyle,
                          ),
                        ),
                        const SizedBox(height: 150),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonCounter(
                              iconData: Icons.fingerprint,
                              onTap: counter.increment,
                            ),
                            ButtonCounter(
                              iconData: Icons.refresh,
                              onTap: counter.reset,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ColorButton(
                              context,
                              color: ColorApp.backBlue,
                              counter: counter,
                            ),
                            ColorButton(
                              context,
                              color: ColorApp.backWhite,
                              counter: counter,
                            ),
                            ColorButton(
                              context,
                              color: ColorApp.backOrange,
                              counter: counter,
                            ),
                            ColorButton(
                              context,
                              color: ColorApp.backBlack,
                              counter: counter,
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
          );
        },
        );
  }
}
