
// ignore_for_file: constant_identifier_names

enum Type { Normal, Hybrid, Terrain, Satellite }

class MapTypeGoogle {
  Type type;
  MapTypeGoogle({required this.type});
}

List<MapTypeGoogle> googleMapTypes = [
  MapTypeGoogle(type: Type.Normal),
  MapTypeGoogle(type: Type.Hybrid),
  MapTypeGoogle(type: Type.Terrain),
  MapTypeGoogle(type: Type.Satellite),
];