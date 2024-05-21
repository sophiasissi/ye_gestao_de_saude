class PressaoArterialModelo{
  String data;
  String pressao;
  String status;

  PressaoArterialModelo({
    required this.data,
    required this.pressao,
    required this.status,
  });

  PressaoArterialModelo.fromMap(Map<String, dynamic> map)
      : data = map["data"],
        pressao = map["pressao"],
        status = map["status"];

  Map<String, dynamic> toMap(){
    return{
      "data": data,
      "pressao": pressao,
      "status": status,
    };
  }
}