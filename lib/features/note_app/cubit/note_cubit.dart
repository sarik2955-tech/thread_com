import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bloc/bloc.dart';
import 'package:thread_com/features/note_app/cubit/note_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(status: HomeStatus.empty,));

  Future<void> saveNote() async {
    emit(HomeState(status: HomeStatus.loading));
    try {
      final snapshot = await FirebaseFirestore.instance.collection("notes").get();

    final notes = snapshot.docs.map((doc)=> doc.data()).toList();
   emit(HomeState(notes: notes, status: HomeStatus.loaded, errorText: ''));
    } catch (e) {
      emit(HomeState(status: HomeStatus.error, errorText: e.toString(), notes: state.notes));
    }
  }
}