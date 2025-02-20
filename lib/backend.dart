var frequency = [];


class Plant {
  String name;
  String description;
  String imageUrl;

  Plant(this.name, this.description, this.imageUrl);

  void show() {
    print('Name: $name');
    print('Description: $description');
    print('Image URL: $imageUrl');
  }

  void update(String name, String description, String imageUrl) {
    this.name = name;
    this.description = description;
    this.imageUrl = imageUrl;
  }

}

class Sapling {
  String name;
  int plantId;
  int goalId;

  Sapling(this.name, this.plantId, this.goalId);

  void show() {
    print('Name: $name');
    print('Plant ID: $plantId');
    print('Goal ID: $goalId');
  }

  void update(String name, int plantId, int goalId) {
    this.name = name;
    this.plantId = plantId;
    this.goalId = goalId;
  }

}

class Goal {
  String name;
  String question;
  int frequencyId;
  
  Goal(this.name, this.question, this.frequencyId); 
}

// diary

// calendar


class User {
  void gainEXP() {
  // called by the frontend to update exp and level
  }
}



