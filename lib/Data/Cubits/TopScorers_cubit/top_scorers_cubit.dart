import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../Screens/Teams_Screen/Teams_Screen.dart';
import '../../Models/TopScorers_Model.dart';
import '../../Repository/TopScorers_Repo.dart';

part 'top_scorers_state.dart';

class TopScorersCubit extends Cubit<TopScorersState> {
  TopScorersCubit() : super(TopScorersInitial());

  GetTopScorersRepo TopScorersRepo = GetTopScorersRepo();

  getTopScorers(context, {required String legaID}) async {
    emit(TopScorersLoading());

    try {
      final value = await TopScorersRepo.getTopScorers(legaID);
      if (value != null) {
        emit(TopScorersSuccess(response: value));
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Teams_Screen(
                    topScores: value,
                  )),
        );
      } else {
        emit(TopScorersError());
      }
    } catch (error) {
      emit(TopScorersError());
    }
  }
}
