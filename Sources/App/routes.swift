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
    let logger = try req.sharedContainer.make(Logger.self)

    let timeScheduleAvailable = Date(timeIntervalSince1970: 1562050800)
    logger.info("Current date: \(Date())")
    logger.info("timeScheduleAvailable: \(timeScheduleAvailable)")

//    2019-06-27 -- Removed the check since we are not going to sercure the schedule this year
//    if Date() < timeScheduleAvailable {
//      throw Abort(.notFound, reason: "The schedule will be available at \(timeScheduleAvailable)")
//    }

    return try getJsonFromFile("schedule.json", onRequest: req)
  }

  router.get("mentors") { req -> Response in
    return try getJsonFromFile("mentors.json", onRequest: req)
  }

  router.get("locations") { req -> Response in
    return try getJsonFromFile("area.json", onRequest: req)
  }
  
  router.get("about") { req -> Response in
    return try getJsonFromFile("about.json", onRequest: req)
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
