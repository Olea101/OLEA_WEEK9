// Class Definition
class Tricycle {
  // Encapsulation: Private property for color (silver, black, white)
  String _color;
  bool isEngineRunning = false;

  // Constructor
  Tricycle(this._color);

  // Getter to access private color
  String get color => _color;

  // Setter to safely update private color
  set color(String newColor) {
    if (newColor == 'silver' || newColor == 'black' || newColor == 'white') {
      _color = newColor;
    } else {
      print('Invalid color choice! Choose silver, black, or white.');
    }
  }

  // Behavior 1: Kickstart Engine
  void kickstartEngine() {
    isEngineRunning = true;
    print('The $_color tricycle kickstarted: Vroom vroom! Engine is running.');
  }

  // Behavior 2: Honk/Beep
  void honk() {
    print('The $_color tricycle honks: Beep beep!');
  }
}

void main() {
  // List/Map Usage: Creating a List of Tricycle instances
  List<Tricycle> tricycles = [
    Tricycle('silver'),
    Tricycle('black'),
    Tricycle('white'),
  ];

  print('--- TRICYCLE DEMO ---\n');

  // Test objects and call behaviors
  for (var tricycle in tricycles) {
    print('Tricycle Color: ${tricycle.color}');
    tricycle.kickstartEngine();
    tricycle.honk();
    print('--------------------');
  }
}
