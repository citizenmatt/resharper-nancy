# resharper-nancy

This plugin for ReSharper adds support for Nancy Razor views. Specifically, it adds support for the @model directive.

## What does it do? ##

ReSharper already supports .cshtml files with Nancy configured as the base type. However, it doesn't support the @model directive unless MVC 3 is referenced. This is because the support for @model is actually implemented in the MVC 3 dlls. Nancy has duplicated this support, but ReSharper still requires MVC 3 to be referenced.

This plugin will enable the @model directive if Nancy.ViewEngines.Razor is referenced.

## IMPORTANT ##

This plugin **requires ReSharper 7.1.2 (7.1.2000.1478)** to be installed. It **WILL NOT WORK WITH EARLIER VERSIONS OF RESHARPER 7.1**, including 7.1.1.

## How do I get it? ##

If you wish to just install a copy of the plugins without building yourself:

- Download the latest zip file: [resharper-nancy.1.0.zip](https://dl.dropbox.com/u/57017355/resharper-nancy.1.0.zip)
- Extract everything
- Run the Install-NancySupport.7.1.bat batch file

## Building ##

To build the source, you need the [ReSharper 7.1 SDK](http://www.jetbrains.com/resharper/download/index.html) installed. Then just open the src\resharper-nuget.sln file and build.

Note that because this plugin relies on a change to a class in 7.1.2, it includes the following line in the .csproj:

    <ReSharperSdkBinaries Condition="'$(ReSharperSdkBinaries)'==''">C:\Program Files (x86)\JetBrains\ReSharper\v7.1\bin</ReSharperSdkBinaries>

This makes the SDK reference the installed ReSharper binaries, rather than the binaries in the SDK folder. If this path is incorrect (for example, you're on a 32 bit system) just edit the project file to point to the correct folder.

## TODO ##

There are currently no plans to add any more features. But if so, the first thing to add would be [update notifications.](http://blogs.jetbrains.com/dotnet/2013/01/resharper-sdk-adventures-part-9-%E2%80%94-update-notifications/)

