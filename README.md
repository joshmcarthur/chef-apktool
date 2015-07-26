# chef-apktool

[![Build Status](https://travis-ci.org/joshmcarthur/chef-apktool.svg?branch=master)](https://travis-ci.org/joshmcarthur/chef-apktool)

A Chef cookbook for downloading and installing [apktool](https://code.google.com/p/android-apktool/), a Java-based utility for extracting data from Android APK files.

## Important Note

<= Version 1.2 of this cookbook installed APKTool version 1.x, which requires Java 6 and has a different installation method. If you need to use this version of APKTool, then you must use an older version of this cookbook. 

Version 1.3 and onwards installs APK Tool version 2.x, which requires Java 7 (OpenJDK will be installed as part of the Chef run). 


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

There is a single attribute available that will control which version of APKTool will be downloaded and installed. Available versions may be found here: https://bitbucket.org/iBotPeaches/apktool/downloads/

Example:

```
node[:apktool][:version] = '2.0.0'
```

Would install version 2.0.0 from the downloads.

APKTool also requires Java, so we use the [java cookbook](https://supermarket.chef.io/cookbooks/java) to install OpenJDK version 7. You can override any of the attributes from this cookbook if you wish to change which flavour of Java is installed, etc (check out the docs for the Java cookbook to see the available options).


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
