Night Shift Shell Utility
=========================

[![Platforms macOS](https://img.shields.io/badge/Platforms-macOS-lightgray.svg?style=flat)](http://www.apple.com/macos)
[![License Apache](https://img.shields.io/badge/License-APACHE2-blue.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)

Simple shell utility to control the macOS Night Shift feature introduced in 10.12.4.

Usage is `nshift [strength]` where strength is a value from 0 to 1. A higher value shifts the color temperature of the display to more warm. A value of 0 disables Night Shift altogether. Running `nshift` with no arguments prints the current value.

This fork modifies nshift so that it can be used to create a Night Shift slider on the Touch Bar with BetterTouchTool. Changes include:
- Run with no arguments to print the current value.
- Night Shift transition happens near-instantly.
- Use values in the range 0-1 instead of 0-100.

## Creating a Night Shift Slider
1. Download the latest release from this branch and place the nshift executable in `/usr/local/bin`.
2. In the BetterTouchTool config, create a new Touch Bar trigger and choose "Custom AppleScript Slider Widget". Paste the contents of `btt/nshift-btt-trigger.applescript` in the trigger's text box.
3. Paste the contents of `btt/nshift-btt-action.applescript` in the "Run AppleScript" action's text box.

