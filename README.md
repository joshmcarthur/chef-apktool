# chef-apktool

[![Build Status](https://travis-ci.org/joshmcarthur/chef-apktool.svg?branch=master)](https://travis-ci.org/joshmcarthur/chef-apktool)

A Chef cookbook for downloading and installing [apktool](https://code.google.com/p/android-apktool/), a Java-based utility for extracting data from Android APK files.


## Supported Platforms

<dl>
  <dt><strong>Linux</strong>
  <dd>Linux is fully supported and tested</dd>
  
  <dt><strong>OS X</strong></dt>
  <dd>OS X should be supported, but has not yet been tested</dd>
  
  <dt><strong>Windows</strong></dt>
  <dd>Windows is not yet supported, but support is possible. Pull requests are welcome to add this support, and/or it may be added in a future release.</dd>
</dl>


## Attributes

There are no attributes for this cookbook, as the recipe itself is so simple.
A pull request would be welcome to allow the user of this cookbook to select
the flavour of Java that they wish to install and/or use though.


## Usage

### apktool::default

Include `apktool` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[apktool::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Josh McArthur (joshua.mcarthur@gmail.com)
