class GlicemiaModels{
  String data;
  String concentracao;
  String status;

  GlicemiaModels({
    required this.data,
    required this.concentracao,
    required this.status,
  });

  GlicemiaModels.fromMap(Map<String, dynamic> map)
      : data = map["data"],
        concentracao = map["pressao"],
        status = map["status"];

  Map<String, dynamic> toMap(){
    return{
      "data": data,
      "pressao": concentracao,
      "status": status,
    };
  }
}