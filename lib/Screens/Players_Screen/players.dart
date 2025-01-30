import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_app/Shared/Colors.dart';
import 'package:sports_app/Shared/Fonts.dart';
import 'package:sports_app/Shared/comp_players.dart';

import '../../Data/Cubits/Players_cubit/players_cubit.dart';
import '../../Shared/Drawer_List.dart';
import '../../Shared/Drawer_header.dart';

class PlayersScreen extends StatefulWidget {
  const PlayersScreen({super.key});

  @override
  State<PlayersScreen> createState() => _PlayersScreenState();
}

class _PlayersScreenState extends State<PlayersScreen> {
  //var currentPage = Draweritem.home;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.primaryColor,
            appBar: AppBar(
              iconTheme: IconThemeData(color: AppColors.textcolor),
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              actions: [
                IconButton(
                    onPressed: () {
                      //showSearch(context: context, delegate: Scarch());
                    },
                    icon: Icon(Icons.search)),
              ],
            ),
            drawer: Drawer(
                backgroundColor: AppColors.textcolor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MyDrawerHeader(),
                      MyDrawerList(v: Draweritem.home),
                    ],
                  ),
                )),
            body: BlocBuilder<PlayersCubit, PlayersState>(
                builder: (context, state) {
              if (state is PlayersSuccess) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: state.response.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(state
                                                  .response[index]
                                                  .playerImage ??
                                              ''),
                                          radius: 50,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            state.response[index].playerName ??
                                                "n",
                                            style: TextStyle(
                                                color: AppColors.textcolor,
                                                fontSize: AppFonts.fontsize16,
                                                fontWeight: FontWeight.w600)),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            info(
                                              img: 'assets/yellowcard.png',
                                              text2: state.response[index]
                                                      .playerYellowCards ??
                                                  "",
                                            ),
                                            verticalline(),
                                            info(
                                              img: 'assets/redcard.png',
                                              text2: state.response[index]
                                                      .playerRedCards ??
                                                  '',
                                            ),
                                            verticalline(),
                                            info(
                                              img: 'assets/image 132.png',
                                              text2: state.response[index]
                                                      .playerGoals ??
                                                  "",
                                            ),
                                            verticalline(),
                                            Column(
                                              children: [
                                                Text(
                                                  'Assists',
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.textcolor,
                                                      fontSize:
                                                          AppFonts.fontsize18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  state.response[index]
                                                          .playerAssists ??
                                                      "",
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.textcolor,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        info2(
                                            icon: Icons.person,
                                            title: 'Name',
                                            describtion: state.response[index]
                                                    .playerName ??
                                                ""),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        info2(
                                            icon: Icons.numbers,
                                            title: 'Numbers',
                                            describtion: state.response[index]
                                                    .playerNumber ??
                                                ""),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        info2(
                                            icon: Icons.location_city,
                                            title: 'Country',
                                            describtion: state.response[index]
                                                    .playerCountry ??
                                                ""),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        info2(
                                            icon: Icons.place,
                                            title: 'Position',
                                            describtion: state.response[index]
                                                    .playerType ??
                                                ""),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        info2(
                                            icon: Icons.numbers,
                                            title: 'Age',
                                            describtion: state.response[index]
                                                    .playerAge ??
                                                ""),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: IconButton(
                                              onPressed: () async {},
                                              icon: Icon(
                                                Icons.screen_share,
                                                color: AppColors.textcolor,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })),
                    ]);
              } else {
                return Text('Error');
              }
            })));
  }
}

enum Draweritem {
  home,
  profile,
  settings,
}
