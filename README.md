# xylophone

A new Flutter project.

<img src='image.png'>

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Functions with an Argument

void playSound(int value){
    final player = AudioCache();
    player.play('note$value.wav');
}

playSound(2);


Other Types of Functions
----------------------------
void main(){
    runApp(XylophoneApp())
}


void main => runApp(Xylophone());

int add(int n1, int n2){
    return n1 + n2;
}

int add(int n1, int n2) => n1 + n2;