class COMModel{
  late String _portName;
  late bool _connectStatus;
  late int _baudRate;
  late String _sentMessage;
  late String _receivedMessage;
  late double _rpm;
  late double _oilPressure;
 
  double get rpm => _rpm;
  set rpm(double inRPM){
      _rpm = inRPM;
    }

  double get oilPressure => _oilPressure;
  set oilPressure(double inOilPressure){
      _oilPressure = inOilPressure;
    }

  int get baudRate => _baudRate;
  set baudRate(int inBaudRate){
      _baudRate = inBaudRate;
    }

  String get portName => _portName;
  set portName(String inPortName){
      _portName = inPortName;
    }

  String get sendMessage => _sentMessage;
  set sendMessage(String inMessgae){
      _sentMessage = inMessgae;
    }

    String get receivedMessage => _receivedMessage;
  set receivedMessage(String outMessgae){
      _receivedMessage = outMessgae;
    }
    
    bool get connectStatus => _connectStatus;
    set connectStatus(bool inStatus){
      _connectStatus == inStatus;
    }
}