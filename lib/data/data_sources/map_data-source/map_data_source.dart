import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapsDataSource {
  Future<Position?> getCurrentPosition();
  Future<LatLng> searchLocation(String address);

}


class MapsDataSourceImp implements MapsDataSource {
  @override
  Future<Position?> getCurrentPosition() async {
    Position? currentPosition;
    try {
      currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best
      );
    }
    catch (e) {
      currentPosition = null;
    }
    return currentPosition;
  }

  @override
  Future<LatLng> searchLocation(String address) async {
    try{
      
    }
    catch(e) {
      return const LatLng(0, 0);
    }
    throw UnimplementedError();
  }
  
}