# motion-meter

A simple bar meter control with color based thresholds, useful for displaying a value such as an audio level according to whatever threshold and color rules you want to setup.

## Requirements

* RubyMotion
* RubyGems

## Setup

Add to your Gemfile:

``` shell
gem 'motion-meter'
```

Or install manually:

* gem install motion-meter

## Usage

To setup the control, you can do the following:

```ruby
@audio_level = Motion::Meter::ThresholdMeter.alloc.initWithFrame([[0, @mainWindow.contentView.bounds.size.height / 2.0], [@mainWindow.contentView.bounds.size.width, 30]])
@audio_level.add_threshold(-20, -5, NSColor.greenColor)
@audio_level.add_threshold(-5, 3, NSColor.yellowColor)
@audio_level.add_threshold(3, 10, NSColor.redColor)
@audio_level.min_value = -20
@audio_level.max_value = 10
@mainWindow.contentView.addSubview(@audio_level)
```

You can then simple update the value to see it change in real-time:

```ruby
@audio_level.value = value
```

## TODO

* Optionally displaying the value
* Optionally displaying the values of the thresholds along the top or bottom
* Additional display options/controls for meters, such as a needle display or something more fancy

## Contributors

* Elliott Draper

## License

Copyright 2015 Elliott Draper <el@kickcode.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
