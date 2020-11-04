import 'package:HockeySim/models/player/position.dart';

class PlayerInfo {
  final String firstName;
  final String lastName;
  final double height;
  final double weight;
  final Position position;

  PlayerInfo({this.firstName, this.lastName, this.height, this.weight, this.position});

  String toString(){
    return '''
          Name: ${firstName + lastName}
          Height: $height
          Weight: $weight
    ''';
  }
}

