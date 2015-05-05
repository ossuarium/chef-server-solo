# chef-server-solo

[![Apache 2.0 License](https://img.shields.io/badge/license-Apache_2.0-red.svg)](./LICENSE.txt)

## Description

Installs and configures Chef Server.

### Usage


## Requirements

### Platforms

* Ubuntu (= 14.04)

### Cookbooks:

* apt (~> 2.7.0)
* annoyances (~> 1.0.0)
* chef-server (~> 3.1.1)
* chef-solo-search (~> 0.5.1)
* firewall (~> 1.1.0)
* logrotate (~> 1.9.1)
* ntp (~> 1.8.2)
* openssh (~> 1.4.0)
* sudo (~> 2.7.1)
* timezone-ii (~> 0.2.0)
* users (~> 1.8.2)

## Recipes

* chef-server-solo::default - Installs and configures Chef Server.

## Development and Testing

### Source Code

The [chef-server-solo source](https://github.com/ourtownrentals/chef-server-solo)
is hosted on GitHub.
To clone the project run

```bash
$ git clone https://github.com/ourtownrentals/chef-server-solo.git
```


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

Copyright 2014-2015 OurTownRentals.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

https://www.apache.org/licenses/LICENSE-2.0

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
