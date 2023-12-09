import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/medicine_state.dart';
import 'package:newproject/model/medicine_model.dart';

class MedicineBloc extends Cubit<MedicineState> {
  final List<Model> _medicines = MockDataProvider.createFakeMedicine();

  MedicineBloc() : super(Initial());

  void showMedicine() {
    emit(MedicineLoaded(_medicines));
  }
}
