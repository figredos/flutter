# Maps

A good functionality that can be added to Flutter apps is the use of maps. This file contains some of the ways to do so.

- [Maps](#maps)
  - [Location](#location)
  - [Google Maps Platform](#google-maps-platform)
    - [Google Maps Geocoding API](#google-maps-geocoding-api)
      - [Displaying an image](#displaying-an-image)
  - [Google Map Flutter](#google-map-flutter)

## Location

The [Location package](../PACKAGES/packages.md#location) is an essential package for determining a device's location.

## Google Maps Platform

Go to [Google Maps Platform](https://developers.google.com/maps), log-in with an existing or create a google account. This account should be set as a dev account. Once this is done, follow to the Google maps Platform page with the 'Get Started' button. This will take you to a page where you'll need to connect a billing account, though it's very likely you won't be charged for it, given google offers a $200 monthly credit.

Once the billing account is connected, you'll receive a key that can be used by Flutter to access APIs through code. It's important to note that this key will be available in the Credentials section of the API, for easy access if you ever lose it.

The Google Maps Platform offers access to many APIs that have different capabilities in regards to the type of interaction with Google Maps service.

### Google Maps Geocoding API

Geocoding is the process of converting addresses (like a street address) into geographic coordinates (like latitude and longitude). Another important concept is reverse geocoding, which is the process of finding the correct address based on coordinates.

These concepts can be combined with the [Location](../PACKAGES/packages.md#location) package in order to find the coordinates of the device and interact with Google Maps. This will be done with http requests, through the following link, inserting the key provided in the Google Maps Platform.

```http
https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key={INSERT KEY HERE}
```

Once the link is parsed, just send a request to it. This request will return a response of type json (show the return type). For more information on http requests follow [this link](backend.md#http-requests).

#### Displaying an image

To display an image, using the API, we use a link that generates an image based on a set of coordinates (latitude and longitude). The link is the one that follows, coordinates and the API key should be inserted in the link.

```https
https://maps.googleapis.com/maps/api/staticmap?center={YOUR LATITUDE},{YOUR LONGITUDE}&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:AS%7C40.702147,-74.015794&key={INSERT KEY HERE}
```

This generated image can then be accessed with `Image.network()`.

## Google Map Flutter

Another good way of using the Google Maps interface in Flutter apps is with the [Google Maps Flutter](../PACKAGES/packages.md#google-maps-flutter) package.
