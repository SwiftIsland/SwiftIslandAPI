import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {

  router.get { req in
    return "Welcome to the Swift Island API"
  }

  router.get("schedule") { req -> Response in
    return try getJsonFromFile("schedule.json", onRequest: req)
  }

  router.get("mentors") { req -> Response in
    return try getJsonFromFile("mentors.json", onRequest: req)
  }

  router.get("locations") { req -> Response in
    return try getJsonFromFile("area.json", onRequest: req)
  }
}

private func getJsonFromFile(_ file: String, onRequest req: Request) throws -> Response {
  let directory = DirectoryConfig.detect()

  do {
    let data = try Data(contentsOf: URL(fileURLWithPath: directory.workDir)
      .appendingPathComponent("Resources", isDirectory: true)
      .appendingPathComponent(file, isDirectory: false))
    let response = req.response(data, as: MediaType.json)
    return response
  } catch {
    throw Abort(.internalServerError)
  }
}
