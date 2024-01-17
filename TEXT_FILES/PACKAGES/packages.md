# Packages

Here are some flutter packages used in this repo.

- [Packages](#packages)
  - [Google Fonts](#google-fonts)
  - [UUID](#uuid)
    - [The Version methods](#the-version-methods)
      - [Version 1 (v1-Time-based)](#version-1-v1-time-based)
      - [Version 4 (v4-Random)](#version-4-v4-random)
      - [Version 5 (v5-Name-based SHA-1)](#version-5-v5-name-based-sha-1)
  - [intl](#intl)
  - [Riverpod](#riverpod)
    - [What are providers](#what-are-providers)
      - [Creating providers](#creating-providers)
        - [Data providers](#data-providers)
        - [Stateful providers](#stateful-providers)
      - [Using providers](#using-providers)
        - [ref](#ref)
        - [ConsumerWidgets and ConsumerStatefulWidgets](#consumerwidgets-and-consumerstatefulwidgets)
  - [Appendix](#appendix)
    - [MAC Address](#mac-address)
    - [SHA-1 hashing algorithm](#sha-1-hashing-algorithm)

## Google Fonts

Google fonts is a collection of free and open-source fonts provided by google. It is a convenient and popular package for integrating Google fonts into your Flutter application.

## UUID

The uuid package is a Dart library gor generating and working with *Universally Unique Identifiers (UUIDs)*. UUIDsm, also known as GUIDs (Globally Unique Identifiers), are 128-bit identifiers that are guaranteed to be unique across space and time. They are commonly used in various software applications and systems for uniquely identifying entities.

In dart, the 'uuid' package provides functionality to create UUIDs in different formats, including the standard UUID string format, byte format, and others. This package is useful in scenarios where you need to generate unique identifiers for entities in your application or for communication between distributed systems.

For more information on UUIDs and its versions, follow [this link](https://en.wikipedia.org/wiki/Universally_unique_identifier).

### The Version methods

In this package, there are different methods that represent different versions of UUIDs. Each version has a different algorithm for generating UUIDs and is suitable for specific use cases.

#### Version 1 (v1-Time-based)

Generated from the current timestamp and the [machine's MAC address](#mac-address), typically includes the timestamp, clock sequence, and node (MAC address). Useful when you need to create UUIDs based on time.

```dart
var uuid = Uuid()
String timeBasedUuid = uuid.v1()
```

#### Version 4 (v4-Random)

Generated using random or pseudo-random numbers. The most commonly used version for general-purpose UUIDs. Provides a good balance of uniqueness and simplicity.

```dart
var uuid = Uuid();
String randomUuid = uuid.v4();
```

#### Version 5 (v5-Name-based SHA-1)

Similar to version 3 but used the [SGA-1 hashing algorithm](#sha-1-hashing-algorithm). It is useful when you want to generate deterministic UUIDs based on a given name and a predefined namespace.

```dart
var uuid = uuid();
String sha1Uuid = uuid.v5(Uuid.NAMESPACE_URL, 'example.org');
```

## intl

The 'intl' package provides internationalization and localization support for flutter applications. Internationalization (i18n) involves adapting your app to work in different languages and regions, while localization (l10n) involves translating the app into specific languages.

This package includes tools and classes for formatting dates, numbers and messages in a way that is culturally appropriate for different locales. It helps you create Flutter apps that are more accessible and user-friendly for people around the world.

## Riverpod

Riverpod is a state management library for Flutter and Dart applications. It provides a simple and effective way to manage application state, making it easier to build complex and dynamic UI. Riverpod uses a **Provider-based** approach to state management, where data is stored in providers and made accessible to different parts of your application through a dependency injection system. It also supports asynchronous operations, making it easy to handle data fetching and other background tasks.

This package is reactive, meaning that UI components will automatically rebuild whenever the data they depend on changes. Riverpod is designed to be highly testable, making it easier to write unit and integration tests for your application.

Overall, Riverpod is a powerful and versatile state management library that can be used to build a wide variety of Flutter and Dart applications. It can improve code organization in a more modular and maintainable way. Riverpod is designed to be performant, so it can help to improve the overall performance of the application.

### What are providers

Providers are the basic building blocks for managing state with the Riverpod package. They act as containers that encapsulate a piece of data or logic, making it accessible and reactive throughout the app's UI. Essentially they provide a shared access point to this data, allowing different parts of the app to consume and potentially modify it.

These providers hold can hold data, anything from simple values to more complex objects, and logic, such as functions or computations, making them reusable and easy to access.

#### Creating providers

Providers can be created in one of two ways, depending on the complexity desired. But a very important step is to wrap ```RunApp```'s child widget with ```ProviderScope```.

```dart
void main() {
  RunApp(
    ProviderScope(
      child: MaterialApp()
    )
  );
}
```

##### Data providers

To create a provider that simply holds some data to be globally available, the recommended way of creating the provider is by using the ```Provider``` class. This class takes as a function as a parameter to the constructor. This function is responsible for retrieving the value(s) a provider will expose.

```dart
final myProvider = Provider(builder: (ref) => myData;);
```

##### Stateful providers

If the intention of the provider is to manage stateful data that can be changed over time, the recommended way of creating the provider is with the ```StateNotifierProvider```. This class offers a structured and reactive approach to state management, with key features that make it ideal for handling complex state logic and updates, hence its Stateful nature.

Creating this class comes with some more caveats when compared to simpler providers. For instance, this class doesn't simply take any function, but the return value for the function passed as an argument should be of type ```StateNotifier<State>```.

This is a whole new class that should be extended in order to be passed to the StateNotifierProvider. State represents the type of state being managed by the provider, for instance, if the provider held a string, the extended class should look like ```StateNotifier<String>```. This class should contain the provider's object and all methods to modify it. To create the object, in the class's constructor followed by a colon and a call of a super keyword containing the initial state of the provider.

```Dart
class MyNotifier extends StateNotifier<String> {
  // Here the initial state of the provider is an empty string
  MyNotifier() : super('');

  void myMethod()...
}
```

StateNotifierProvider creates an instance of StateNotifier and exposes its current state to the UI. It also allows access to the StateNotifier itself for triggering state updates. In order to have better type support, the type of the auxiliary class and the data that it returns should be declared when calling the ```StateNotifierProvider<StateNotifier, State>``` like so, with State representing the type of the provider object.

```dart
class MyNotifier extends StateNotifier<String> {
  MyNotifier() : super('');

    void myMethod()...
}

final myProvider = StateNotifierProvider<MyNotifier, String>(builder: (ref) => MyNotifier());
```

#### Using providers

Flutter offer plenty of ways to use providers, from using simple Consumer widgets to using hooks. But we'll stick to the simpler usage, with the Consumer widget mostly.

The Consumer Widget serves as a versatile tool for interacting with providers within the widget tree. They enable access and consumption of providers within any type of widget (meaning they can rebuild widgets despite them being Stateless). Provides a flexible way to control provider consumption and reactivity within specific parts of the UI. And also offers granular control over when and how you rebuild widgets based on provider changes.

The Consumer Widget takes two main parameters, the builder function and a child parameter. This builder function is the core of the Consumer widget. It takes two arguments, ```context``` ([more on context here](../DART_BASICS/dart.md#context)) and ```ref```. The latter is a reference to the current provider scope, and it is using this argument that the provider will be accessed.

##### ref

```ref``` has two main methods that allow access to the value or state of the providers. They are ```ref.read``` and ```ref.watch```. The first can be used to access the current value or state of the provider at a specific moment in time directly. It's more verbose than using the full provider reference in complex expressions, and very suitable for simple scenarios where you just need the value without additional logic or reactivity.

```dart
final variableName = ref.read(myProvider);
```

```ref.watch```, on the other hand is used to access the value or state of a provider and also register a listener for changes in that provider. Every times a provider does change, it triggers a rebuild of the widget or function, promoting automatic UI updates based on provider changes, ensuring reactivity in the application.

```dart
final variableName = ref.watch(myProvider);
```

When using a Stateful provider, you may want to update the provider through the use of methods declared in it's StateNotifier class. This can be done with ```ref.read(providerName.notifier).methodName```, *.notifier* is responsible for updating the state of the provider in a controlled and coordinated manner.

```dart
ref.read(myProvider.notifier).myMethod;
```

- **OBS**.: Riverpod's official documentation recommends using ```ref.watch``` as frequently as possible over ```ref.read```, even for cases when the data only needs to be read once. This is done for several reasons like reactivity, consistency and maintainability. Mostly because ```ref.read``` is not reactive, whereas ```ref.watch``` creates a dependency.

- **OBS**.:```ref``` is of type ```WidgetRef```

##### ConsumerWidgets and ConsumerStatefulWidgets

Riverpod also provides two mixin classes, that allow using providers within the widget tree. They essentially combine the Consumer widget with the StatelessWidget and StatefulWidget classes, they are ConsumerWidgets and ConsumerStatefulWidgets respectively.

ConsumerWidgets are a specific mixin from Riverpod that is similar to StatelessWidgets, but with one added parameter to the build method, ```ref```. The ref object allows access to providers and their values from within the widget. It also offers good readability due to const constructor capabilities.

```dart
class MyConsumerWidget extends ConsumerWidget {

  @overwrite
  Widget build(BuildContext context, WidgetRef ref) {
    return MyWidget;
  }
}
```

ConsumerStatefulWidgets are also widgets mixins from Riverpod. Similar to StatefulWidgets but interacts with providers through ref in its build and createState methods. Useful for managing local state that depends on or affects providers.

```dart
class MyConsumerStatefulWidget extends ConsumerStatefulWidget {

  @overwrite
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MyConsumerState;
  }
}

class _MyConsumerState extends ConsumerState<MyConsumerStatefulWidget> {

   @overwrite
   Widget createState(BuildContext context) {
    return MyWidget;
   }
}
```

## Appendix

### MAC Address

A MAC address, or Media Control Address, is a unique identifier assigned to network interfaces for communication on a network. It is a hardware address that is typically associated with a network interface card (NIC) or a network adapter. MAC addresses are used at the data link layer of the OSI reference model to uniquely identify devices on a network.

For more information on MAC addresses, follow [this link](https://en.wikipedia.org/wiki/MAC_address).

### SHA-1 hashing algorithm

SHA-1 or *Secure Hash Algorithm 1* is a cryptographic hash function designed by the National Security Agency (NSA) and published by the National Institute of Standards abd Technology (NIST) in the US. It was originally designed for secure data integrity, digital signatures, and other cryptographic applications. SHA-1 produces a fixed-size (160-bit or 20 byte) hash value, commonly expressed as a 40-character hexadecimal number.

For more information on SHA-1, follow [this link](https://en.wikipedia.org/wiki/SHA-1).
