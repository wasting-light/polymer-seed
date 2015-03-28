# polymer-seed
A polymer app seed

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
