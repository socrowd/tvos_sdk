# SoCrowd video SDK for Apple TV

## Example project

    git clone -b 0.0 https://github.com/socrowd/tvos_sdk.git
    cd tvos_sdk/SoExample
    pod install
    open -a Xcode SoExample.xcworkspace

Click "run". You should see an example video content followed by a fullscreen ad.

## Install

### With Cocoapods

    pod 'SoCrowd', :git => 'https://github.com/socrowd/tvos_sdk.git', :tag => '0.0'

### Manually

Check out the latest version (not the master branch) and drag SoCrowd.framework
into your project.

## Usage

Just call displayFullscreen() whenever it is possible to show a video ad.

See the example in SoExample/ViewController.swift
