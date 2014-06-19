# Chef Skeleton Cookbook for OurTownRentals.com

[![All rights reserved](http://img.shields.io/badge/license-All_rights_reserved-red.svg?style=flat)](./LICENSE.txt)

Use this project as a base for testable OurTownRentals.com [Chef] cookbooks.

[Chef]: http://www.getchef.com/chef/

## Description

### Features

* Dependency management with [Berkshelf].
* [Rake], [Thor], and [Guard] tasks for included tools.
* Documentation generation with [YARD] using [yard-chef].
* Linting with [RuboCop] and [Foodcritic].
* Unit testing with [ChefSpec].
* Integration testing with [Test Kitchen].
* [Travis CI] ready.
* Badges from [Shields.io]!

[Berkshelf]: http://berkshelf.com/index.html
[ChefSpec]: http://sethvargo.github.io/chefspec/
[Foodcritic]: http://acrmp.github.io/foodcritic/
[Guard]: http://guardgem.org/
[Rake]: https://github.com/jimweirich/rake
[RuboCop]: https://github.com/bbatsov/rubocop
[Shields.io]: http://shields.io/
[Test Kitchen]: http://kitchen.ci/
[Thor]: http://whatisthor.com/
[Travis CI]: https://travis-ci.org/
[YARD]: http://yardoc.org/index.html
[yard-chef]: https://github.com/rightscale/yard-chef

### Usage

1. Clone this repository.

2. Customize this README.
   - Set the title and summary text.
   - Replace the Description section.
   - Update the Contributing section.
   - Customize your requirements.
   - Add documentation for your attributes, recipes, etc.

3. Everything else that should be filled in before using this skeleton
   has been marked with the prefix `replace_`.
   You can replace the placeholder cookbook name using

````bash
$ git ls-files -z | xargs -0 sed -i 's/replace_cookbook/your_cookbook/g'
````

   To see a list of what else still needs to be replaced, run

````bash
$ grep -R replace_
````

#### Add future update support

If you want to merge in future updates from this skeleton and have your own origin,
set up a separate branch to track this.

````bash
$ git remote rename origin upstream
$ git branch chef-cookbook
$ git branch -u upstream/master chef-cookbook
````

Then add an origin and push master

````bash
$ git remote add origin git@github.com:your_username/chef-your_cookbook.git
$ git push -u origin master
````

Now, the `chef-cookbook` branch will pull changes from this project,
which you can then merge into your other branches.

If you later clone your repo you will need to create the update branch again.

````bash
$ git remote add upstream git@bitbucket.org:ourtownrentals/chef-cookbook.git
$ git fetch upstream
$ git checkout -b chef-cookbook upstream/master
````

## Requirements

### Platform

- [Ubuntu](http://www.ubuntu.com/)

**Tested on:**

- Ubuntu 14.04

## Attributes

Attribute      | Default           | Description
---------------|-------------------|------------
`replace_attr` | `replace_default` | replace_default_description

## Recipes

### default

replace_default_recipe_description

## Development and Testing

### Source Code

The [replace_cookbook source](https://github.com/replace_username/replace_cookbook)
is hosted on GitHub.
To clone the project run

````bash
$ git clone https://github.com/replace_username/replace_cookbook.git
````

### Rake

Run `rake -T` to see all Rake tasks.

````
rake all                          # Run all tasks
rake foodcritic                   # Lint Chef cookbooks
rake kitchen:all                  # Run all test instances
rake kitchen:default-centos-65    # Run default-centos-65 test instance
rake kitchen:default-ubuntu-1404  # Run default-ubuntu-1404 test instance
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

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes. Write and run tests.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

Copyright © 2014 OurTownRentals.com

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
