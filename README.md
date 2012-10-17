# UrlToContents

Get some special contents base on URL.

The following websites are supported now:
  1. The Flash Player's url of video on youku.com

## Installation

Add this line to your application's Gemfile:

    gem 'url_to_contents'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install url_to_contents

## Usage

    $ UrlToContents::Url.new('http://v.youku.com/v_show/id_XMjk1MTM0Njky.html').parse		
    $ => "http://player.youku.com/player.php/sid/XMjk1MTM0Njky/v.swf"

## Contributing

1. Fork it

2. Create your feature branch (`git checkout -b my-new-feature`)

3. Commit your changes (`git commit -am 'Add some feature'`)

4. Push to the branch (`git push origin my-new-feature`)

5. Create new Pull Request

