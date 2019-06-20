import 'package:animation/Routes/routes.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Home screen has a my painter logo",(WidgetTester tester)async{
    await tester.pumpWidget(RouteHome());
    final titleFinder = find.text('My Painter');
    expect(titleFinder, findsOneWidget);
  });
}