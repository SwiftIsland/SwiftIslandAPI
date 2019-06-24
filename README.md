# Swift Island API

This is the api for the [Swift Island app](https://github.com/SwiftIsland/island-app).

## Endpoints
The API is located at: [https://swiftisland.herokuapp.com](https://swiftisland.herokuapp.com). The list below informs about the endpoints available.

| Endpoint     | Type  | Purpose                                                                                     |
|--------------|-------|---------------------------------------------------------------------------------------------|
| `/schedule`  | `GET` | Getting the current schedule. If the schedule is not yet available, a 404 will be returned. |
| `/mentors`   | `GET` | Showing the list of mentors.                                                                |
| `/locations` | `GET` | Getting the list of polygon locations important for the event.                              |