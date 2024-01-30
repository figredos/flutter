# Backend of an app

Backend is a key concept in programming. It refers to the server-side technology that powers the app's functionality beyond the user's interface. It may handle tasks like data storage and management, business logic, authentication and authorization, notifications and push messaging, and API integration. There are many ways of implementing backends in Flutter, some of the most common options are using BaaS (Backend-as-a-Service) such as [Firebase](https://firebase.google.com/docs/reference/rest/database?hl=en), [Back4app](https://www.back4app.com/docs) or [Supabase](https://supabase.com/docs).

- [Backend of an app](#backend-of-an-app)
  - [HTTP requests](#http-requests)
    - [Implementing in code](#implementing-in-code)
      - [Creating link reference](#creating-link-reference)
      - [Posting and getting data](#posting-and-getting-data)

## HTTP requests

HTTP requests are the foundation of communication on the web. They are messages sent from a client (such as a web browser) to a server (like a visited website) to request data. In Flutter, the http package provides a robust and user-friendly way to make HTTP requests from the app. It's an essential tool for connecting the app to servers, retrieving data, and interacting with web services.

The http package offers various HTTP methods, like GET, POST, PUT, DELETE, HEAD and PATCH. These methods are offered in simple syntax, in functions like `get()`, `post()`, `put()`, etc., for making requests.

Requests return *Response* objects containing response data, status code, headers, and errors. Response objects contain methods to parse response bodies as text, JSON, or other formats using Dart's built in decoders.

The http package also offers great coverage for handling errors like network issues, timeouts, or invalid server responses. The package allows catching and handling these exceptions to provide user-friendly feedback and logic.

### Implementing in code

To implement HTTP requests in Flutter there are some steps to follow.

#### Creating link reference

To create HTTP requests a link to the database is necessary. It's recommended to use the `Uri.https` method to create these links. `Uri.https` is a constructor function present in the `dart:core` library of the Flutter framework. It's used to create a *URI* object representing a Uniform Resource Identifier with the HTTPS protocol scheme. *URI* represents a resource on the web or a network, including its location, scheme (protocol), path, query, parameters, and fragment. *HTTPS* specifies the Hypertext Transfer Protocol Secure (HTTPS) scheme, indicating a secure communication.

This constructor function allows a *URI* object directly, providing specific parameters to define its attributes. This function receives a url, the link to the database, and an unencoded path, which is the path to the specific folder in the database where the data should be stored. This second path should end as the type of data it should be parsed as (json, txt, etc).

```dart
Uri.https('database-link.com', 'directory.json') // This will return https://database-link.com/directory.json
```

#### Posting and getting data

To post data using the http package in Flutter the `post()` method is used as mentioned before. This function requires a url (use the one created like shown above), headers a Map object containing specifications for the database such as the type of data (json, txt, etc.), and the body containing data of the type that is specified on the headers parameter.

`http.post` returns a future, this future then has some properties, where you can for instance, check the status of the request (200 or 201 tells that something worked and 4xx, 5xx tells the code did not work). This future returns some json data, that can be turned into a map object.

```dart
final response = await http.post(
  url,
  headers: {'Content-type': 'application/json'},
  body: json.encode(
    {
      'key': value,
    }
  )
);
```

To get data from the database we use the `get()` method. This method returns a `Response` object that should be saved in a variable if it is to be used.

```dart
final response = await http.get(url);
```

The data will be in json form, but once it has been fetched with a request, it can be transformed into dart objects, such as lists, maps or classes. This is done using the `json.decode()`, that receives a source. To use data saved as json, use the body of the response. The variable used to do so has a dynamic type, therefore it's good practice to declare the type of data inside of it.

```dart
final Map<String, dynamic> items = json.decode(response.body);
```
