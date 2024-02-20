import 'package:comapp/model/model.dart';
// import 'package:flutter_libserialport/flutter_libserialport.dart';
class COMPresenter {
  late  COMModel _model;
  //late COMView _view;
  final List<String> _serialPorts = [];
  COMPresenter( ){//COMView comView){
    _model = COMModel();
    //_view = comView;
  }
  
}