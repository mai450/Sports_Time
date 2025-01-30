import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sports_app/Data/Models/Players_Model.dart';
import 'package:sports_app/Screens/Players_Screen/players.dart';

import '../../Repository/Players_Repo.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit() : super(PlayersInitial());

  GetPlayerRepo playersRepo = GetPlayerRepo();

  getPlayers(context, {required String playerName}) async {
    emit(PlayersLoading());

    try {
      await playersRepo.getPlayer(playerName).then((value) {
        if (value != null) {
          emit(PlayersSuccess(response: value));
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PlayersScreen()),
          );
        } else {
          emit(PlayersError());
        }
      });
    } catch (error) {
      emit(PlayersError());
    }
  }
}
