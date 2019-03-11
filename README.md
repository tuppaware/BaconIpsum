
# 🥓  BaconIpsum for Swift 🥓 

[![CI Status](https://img.shields.io/travis/tuppaware/BaconIpsum.svg?style=flat)](https://travis-ci.org/tuppaware/BaconIpsum)
[![Version](https://img.shields.io/cocoapods/v/BaconIpsum.svg?style=flat)](https://cocoapods.org/pods/BaconIpsum)
[![License](https://img.shields.io/cocoapods/l/BaconIpsum.svg?style=flat)](https://cocoapods.org/pods/BaconIpsum)
[![Platform](https://img.shields.io/cocoapods/p/BaconIpsum.svg?style=flat)](https://cocoapods.org/pods/BaconIpsum)

## Introduction 

A Swift library to create awesome pork flavoured Lorium Ipsum placeholder text in your IOS apps. Fill your app and life with Pork! This library generates pork related text for use as placeholder text.


## Installation

BaconIpsum is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile: 

```ruby
pod 'BaconIpsum'
```
Dont forget to Import it into your project (when using the pod). 
```swift
import BaconIpsum
```

Or manually drop the BaconIpsum.swift file into your project. 

## Getting that porky goodness 

This will simply return a single pork related word. 
```swift
let myText = BaconIpsum.giveMeBacon()
// returns a string
```

Want a number of 🐷 words ? 
```swift
let myText = BaconIpsum.giveMeBacon(withWords: 4)

```

Want a full sentence ? 
```swift
let myText = BaconIpsum.giveMeBacon(withSentences: 2)

```
Maybe the whole hog 🐖 is what you are after ?
```swift
let myText = BaconIpsum.giveMeBacon(withParagraphs: 4)

```

## Contribute 

Yaass, please do! Maybe someone can make a vegetarian version ?  
#nutmeatIpsum?

## Author

Adam Ware, tuppaware@gmail.com

## License

BaconIpsum is available under the MIT license. See the LICENSE file for more info.
