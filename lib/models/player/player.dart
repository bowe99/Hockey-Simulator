import 'package:HockeySim/constants.dart';
import 'package:HockeySim/models/player/attributes.dart';
import 'package:HockeySim/models/player/player_info.dart';
import 'package:HockeySim/models/player/position.dart';

class Player {
   PlayerInfo playerInfo;
   OffensiveAttributes offAttributes;
   DefensiveAttributes defAttributes;
   SkatingAttributes skaAttributes;
   int playerOverall;

   Player(){
     this.playerInfo = new PlayerInfo(firstName: 'Nick', lastName: 'Suzuki', height: 180, weight: 176, position: Position.center);
     this.offAttributes = new OffensiveAttributes.random();
     this.defAttributes = new DefensiveAttributes.random();
     this.skaAttributes = new SkatingAttributes.random();
   }

   int calculateOverall(){
     if(forwards.contains(this.playerInfo.position)){
      this.playerOverall = ((this.offAttributes.offensiveOverall() * 0.5) + (this.defAttributes.defensiveOverall() * 0.2) + (this.skaAttributes.skatingOverall() * 0.3)).round();
     }
     else if(defense.contains(this.playerInfo.position)){
      this.playerOverall = ((this.offAttributes.offensiveOverall() * 0.2) + (this.defAttributes.defensiveOverall() * 0.5) + (this.skaAttributes.skatingOverall() * 0.3)).round();
     }
     else if(this.playerInfo.position == Position.goalie){
       // Implement Goalie attributes
      this.playerOverall = 80;
     }
   }
 }