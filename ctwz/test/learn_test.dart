import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /learn returns 200 OK", () async {
    final response = await harness.agent.get("/learn");
    expectResponse(response, 200);
  });
}
