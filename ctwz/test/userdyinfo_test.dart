import 'harness/app.dart';

Future main() async {
  final harness = Harness()..install();

  test("GET /home/learninginfo returns 200 OK", () async {
    final response = await harness.agent.get("/home/learninginfo");
    expectResponse(response, 200);
  });
}
