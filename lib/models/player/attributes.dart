import 'dart:math';

class OffensiveAttributes {
  int wrishShot;
  int slapShot;
  int passing; 
  int offensiveAwareness;

  final num_attributes = 4;

  OffensiveAttributes({this.offensiveAwareness, this.passing, this.slapShot, this.wrishShot});
  OffensiveAttributes.random(){
    Random generator = Random();
    this.offensiveAwareness = 40 + generator.nextInt(60);
    this.wrishShot = 40 + generator.nextInt(60);
    this.slapShot = 40 + generator.nextInt(60);
    this.passing = 40 + generator.nextInt(60);
  }

  int offensiveOverall(){
    return ((this.offensiveAwareness + this.passing + this.slapShot + this.wrishShot) / num_attributes).round();
  }
}

class DefensiveAttributes {
  int bodyChecking;
  int stickChecking;
  int shotBlocking;
  int defensiveAwareness;

  final num_attributes = 4;

  DefensiveAttributes({this.defensiveAwareness, this.stickChecking, this.shotBlocking, this.bodyChecking});
  DefensiveAttributes.random(){
    Random generator = Random();
    this.defensiveAwareness = 40 + generator.nextInt(60);
    this.shotBlocking = 40 + generator.nextInt(60);
    this.stickChecking = 40 + generator.nextInt(60);
    this.bodyChecking = 40 + generator.nextInt(60);
  }

  int defensiveOverall(){
    return ((this.defensiveAwareness + this.shotBlocking + this.stickChecking + this.bodyChecking) / num_attributes).round();
  }
}

class SkatingAttributes {
  int speed;
  int acceleration;
  int balance;
  int endurance;

  final num_attributes = 4;

  SkatingAttributes({this.acceleration, this.balance, this.endurance, this.speed});
  SkatingAttributes.random(){
    Random generator = Random();
    this.speed = 40 + generator.nextInt(60);
    this.acceleration = 40 + generator.nextInt(60);
    this.balance = 40 + generator.nextInt(60);
    this.endurance = 40 + generator.nextInt(60);
  }

  int skatingOverall(){
    return ((this.speed + this.acceleration + this.balance + this.endurance) / num_attributes).round();
  }
}
