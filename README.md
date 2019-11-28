# Swift Island API

This is the api for the [Swift Island app](https://github.com/SwiftIsland/island-app).

The app is made by [Paul Peelen](https://github.com/ppeelen). The source code is available under MIT license. Please [contribute](CONTRIBUTING.md)!

## Get started

Clone this repository and run `swift run` to download the dependencies and start the server.

To open the project in XCode, run `swift package generate-xcodeproj` to generate the xcode project

## Testing

Use `swift test` to run the tests.

For the `testTitoTicketRequest` test there is a environment variable `TITO_TOKEN` containing a Tito API token needed. 


## Endpoints
The API is located at: [https://swiftisland.herokuapp.com](https://swiftisland.herokuapp.com). The list below informs about the endpoints available.

| Endpoint     | Type  | Purpose                                                                                     |
|--------------|-------|---------------------------------------------------------------------------------------------|
| `/schedule`  | `GET` | Getting the current schedule. If the schedule is not yet available, a 404 will be returned. |
| `/mentors`   | `GET` | Showing the list of mentors.                                                                |
| `/locations` | `GET` | Getting the list of polygon locations important for the event.                              |

## Hacktoberfest 2019
Did you find us via Hacktoberfest 2019? Great to have you here :wave:
Please read our [contributing guidlines](CONTRIBUTING.md) or start by picking an issue labeled '[hacktoberfest](https://github.com/SwiftIsland/SwiftIslandAPI/issues?q=is%3Aopen+is%3Aissue+label%3Ahacktoberfest)'
