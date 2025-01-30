import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/Cubits/cubit/teams_cubit.dart';
import '../../Shared/Colors.dart';

class TeamsButton extends StatefulWidget {
  const TeamsButton({super.key});

  @override
  State<TeamsButton> createState() => _TeamsButtonState();
}

class _TeamsButtonState extends State<TeamsButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(builder: (context, state) {
      if (state is TeamsLoading) {
        return Center(child: CircularProgressIndicator());
      } else if (state is TeamsSuccess) {
        return Expanded(
          child: GridView.count(
            crossAxisCount: 1,
            // Set the childAspectRatio to control the size of the container
            childAspectRatio: 4.5,
            // Set the crossAxisSpacing and mainAxisSpacing to control the spacing between the containers
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            children: [
              for (int i = 0; i < state.response.length; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.secondaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(state.response[i].teamBadge ?? "",
                                width: 50, height: 50),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              state.response[i].teamName ?? "",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      } else {
        return Text('Error');
      }
    });
  }
}
