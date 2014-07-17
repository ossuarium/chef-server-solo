# server-solo

[![Apache 2.0 License](http://img.shields.io/badge/license-Apache_2.0-red.svg?style=flat)](./LICENSE.txt)

## Description

Installs and configures Chef Server.

## Requirements

### Platforms

* Ubuntu (12.04)

### Cookbooks:

* apt (~> 2.4.0)
* annoyances (~> 1.0.0)
* chef-server (~> 2.1.6)
* chef-solo-search (~> 0.5.1)
* firewall (~> 0.11.8)
* logrotate (~> 1.6.0)
* ntp (~> 1.6.2)
* openssh (~> 1.3.4)
* sudo (~> 2.6.0)
* timezone-ii (~> 0.2.0)
* users (~> 1.7.0)

## Recipes

* server-solo::default - Installs and configures Chef Server.

## Development and Testing

### Source Code

The [server-solo source](https://github.com/ourtownrentals/chef-server-solo)
is hosted on GitHub.
To clone the project run

````bash
$ git clone https://github.com/ourtownrentals/chef-server-solo.git
````

### Rake

Run `rake -T` to see all Rake tasks.

````
rake all                          # Run all tasks
rake doc                          # Build documentation
rake foodcritic                   # Lint Chef cookbooks
rake kitchen:all                  # Run all test instances
rake kitchen:default-centos-65    # Run default-centos-65 test instance
rake kitchen:default-ubuntu-1404  # Run default-ubuntu-1404 test instance
rake readme                       # Generate README.md from _README.md.erb
rake rubocop                      # Run RuboCop
rake rubocop:auto_correct         # Auto-correct RuboCop offenses
rake spec                         # Run RSpec code examples
rake test                         # Run kitchen integration tests
rake yard                         # Generate YARD Documentation
````

### Thor

Run `thor -T` to see all Thor tasks.

### Guard

Guard tasks have been separated into the following groups:

- `doc`
- `lint`
- `unit`
- `integration`

By default, Guard will generate documentation, lint, and run unit tests.
The integration group must be selected manually with `guard -g integration`.

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/ourtownrentals/chef-server-solo/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes. Write and run tests.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

Copyright 2014 OurTownRentals.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
