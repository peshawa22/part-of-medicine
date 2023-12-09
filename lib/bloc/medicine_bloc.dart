
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/medicine_state.dart';
import 'package:newproject/model/medicine_model.dart';


class MedicineBloc extends Cubit<MedicineState>{
  MedicineBloc():super(MedicineLoaded());
  void showMedicine(){

  }
}