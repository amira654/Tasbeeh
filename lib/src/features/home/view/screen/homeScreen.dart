import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cores/style/color_app.dart';
import '../../../../cores/style/string_app.dart';
import '../../../../cores/style/text_style.dart';
import '../../cubits/app_bar_cubit.dart';
import '../../cubits/counter_cubit.dart';
import '../../cubits/theme_cubit.dart';
import '../../states/app_bar_state.dart';
import '../../states/counter_state.dart';
import '../../states/theme_state.dart';
import '../widget/app_bar.dart';
import '../widget/color_button.dart';
import '../widget/drawer.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarCubit, AppBarState>(
      builder: (context, state) {
        AppBarCubit appBarCubit = BlocProvider.of(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              backgroundColor: ColorApp.backGround,
              appBar: appBar(
                title: appBarCubit.name,
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
                        backgroundImage: AssetImage('assets/images/image.jpg'),
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
              body: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      CounterCubit counter = BlocProvider.of(context);
                      return Column(
                        children: [
                          BlocConsumer<ThemeCubit, ThemeState>(
                            listener: (context, state) {
                              if (state is ThemeUpdate) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('تم التحديث بنجاح')),
                                );
                              }
                            },
                            builder: (context, state) {
                              ThemeCubit theme = BlocProvider.of(context);
                              return CircleAvatar(
                                radius: 80,
                                backgroundColor: theme.color,
                                child: Text(
                                  counter.x.toString(),
                                  style: bodyTextStyle,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 150),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  counter.increment();
                                },
                                child: const Icon(Icons.fingerprint),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  counter.reset();
                                },
                                child: const Icon(Icons.refresh),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              colorButton(context, ColorApp.backBlue),
                              colorButton(context, ColorApp.backWhite),
                              colorButton(context, ColorApp.backOrange),
                              colorButton(context, ColorApp.backBlack),
                            ],
                          )
                        ],
                      );
                    },
                  ))),
        );
      },
    );
  }
}
