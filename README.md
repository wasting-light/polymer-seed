# polymer-seed
A polymer app seed

### Styles and Theming

#### Folder Structure

- `app/styles/` - Contains the app general styles.
- `app/styles/base/` - Contains the app base styles. Includes files that don't get compiled.
- `app/styles/modules/` - Contains the app module styles, such as headers, scaffolding, etc.

#### File Description

- `app/styles/base/palette.styl` - A set of color variables extracted from the Google Material Design guidelines.
- `app/styles/base/variables.styl` - A set of variables to be used by the stylesheets, such as primary and accent colors, default font families, etc.
- `app/styles/base.styl` - Imports the third-party plugins (Jeet, Rupture and Kouto Swiss) and the files in the `base` folder. This file can be imported by the custom element stylesheets as it doesn't have any CSS getting compiled.
- `app/styles/modules/scaffolding.styl` - Some initial styling, such as CSS resets, body color, default font styles, etc.
- `app/styles/main.styl` - Imports the `base.styl` file and the files inside the `modules` folder. This is the main stylesheet, and the only one that gets compiled into CSS.

#### Theming

To change the default colors, go to `app/styles/base/variables.styl` and change the values of the `primary` and `accent` variables. This way you can simply call this variables on your stylesheets. Example:
```stylus
	div
		background: primary-500
		color: accent-a200
```

You may optionally hard-code the color variables. Example:
```stylus
	div
		background: indigo-500
		color: pink-a200
```

### Gulp tasks
Polymer seed includes a set of gulp tasks to improve productivity and performance on production.

#### gulp server
Creates a webserver and opens your default browser and supports live-reload with the [browser-sync](https://github.com/BrowserSync/browser-sync) plugin.

The default port is **3000**.

#### gulp reload
Reloads the webserver and live-reloads it.

#### gulp jshint
Lints and hints the javascript code of your elements. 

It uses [jshint-stylish](https://github.com/sindresorhus/jshint-stylish) as the default reporter.

#### gulp stylus
Compiles the Stylus code into CSS. 

It supports [Jeet](https://github.com/mojotech/jeet), a Stylus-based grid system helper;  [Rupture](https://github.com/jenius/rupture) a Sstylus-based media-queries helper and [Kouto Swiss](https://github.com/krkn/kouto-swiss), a complete CSS framework for Stylus

#### gulp watch
Watches files for changes and runs the server and the stylus gulp task.

#### gulp jshint-watch
Runs the jshint gulp task and watches files for changes.

#### gulp default
Runs the watch gulp task.
