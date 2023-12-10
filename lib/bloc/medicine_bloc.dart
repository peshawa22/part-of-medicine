import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/medicine_state.dart';
import 'package:newproject/model/medicine_model.dart';

import '../providers/medicine_provider.dart';

class MedicineBloc extends Cubit<MedicineState> {
  final List<MedicineModel> _medicines = MockDataProvider().createFakeMedicine();

  MedicineBloc() : super(Initial());

     void showMedicine(){
      Future.delayed(const Duration(seconds: 1),() => emit(MedicineLoaded(_medicines)));
  }
}
