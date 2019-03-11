import 'package:animation/Screens/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Home screen has a my painter logo",(WidgetTester tester)async{
    tester.pumpWidget(Home());
    final titleFinder = find.text('My Painter');
    expect(titleFinder, findsOneWidget);
  });
}