# Packages

Here are some flutter packages used in this repo.

- [Google Fonts](#google-fonts)

- [UUID](#uuid)

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

## Appendix

### MAC Address

A MAC address, or Media Control Address, is a unique identifier assigned to network interfaces for communication on a network. It is a hardware address that is typically associated with a network interface card (NIC) or a network adapter. MAC addresses are used at the data link layer of the OSI reference model to uniquely identify devices on a network.

For more information on MAC addresses, follow [this link](https://en.wikipedia.org/wiki/MAC_address).

### SHA-1 hashing algorithm

SHA-1 or *Secure Hash Algorithm 1* is a cryptographic hash function designed by the National Security Agency (NSA) and published by the National Institute of Standards abd Technology (NIST) in the US. It was originally designed for secure data integrity, digital signatures, and other cryptographic applications. SHA-1 produces a fixed-size (160-bit or 20 byte) hash value, commonly expressed as a 40-character hexadecimal number.

For more information on SHA-1, follow [this link](https://en.wikipedia.org/wiki/SHA-1).
