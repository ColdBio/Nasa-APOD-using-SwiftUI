## Nasa astronomy picture of the day app written using SwiftUI
<p align="center" width="100%"><img width="536" alt="nasalogo" src="https://user-images.githubusercontent.com/64978825/92616363-09c38680-f2b6-11ea-870f-9cdf4c86641a.jpg">

## Demo
![Demo1](https://user-images.githubusercontent.com/64978825/92613687-24483080-f2b3-11ea-8082-736c30b1ba64.gif)

## Screenshots
<img width="336" alt="sc1" src="https://user-images.githubusercontent.com/64978825/92644881-e9a6be00-f2db-11ea-8045-ccec3481ddd3.png"> <img width="336" alt="sc2" src="https://user-images.githubusercontent.com/64978825/92644896-ef040880-f2db-11ea-8ab7-16e71a4062eb.png">

## Disclaimer
- This project was built using Xcode 12 and the target iOS version was iOS 14. 
- Beware that NASA's apod API might return a url that contains a video rather than an image, this app only accounts for images and not videos.
- I've tried to run this app on day 5 and for some reason the API returns properties that do not match my model, more specifically the copyright property was not present when calling the API. Beware of this. 

## Credit
- Data courtesy of [NASA](https://api.nasa.gov) 🛰
- Thanks to [Kingsfisher](https://github.com/onevcat/Kingfisher) for its powerful web image downloading and caching library 🐟
