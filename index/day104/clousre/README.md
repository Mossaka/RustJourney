# clousre

This project was bootstrapped by [create-neon](https://www.npmjs.com/package/create-neon).

## Installing clousre

Installing clousre requires a [supported version of Node and Rust](https://github.com/neon-bindings/neon#platform-support).

You can install the project with npm. In the project directory, run:

```sh
$ npm install
```

This fully installs the project, including installing any dependencies and running the build.

## Building clousre

If you have already installed the project and only want to run the build, run:

```sh
$ npm run build
```

This command uses the [cargo-cp-artifact](https://github.com/neon-bindings/cargo-cp-artifact) utility to run the Rust build and copy the built library into `./index.node`.

## Exploring clousre

After building clousre, you can explore its exports at the Node REPL:

```sh
$ npm install
$ node
> const inc_num_promise = require('.')
undefined
> inc_num_promise(3)
Promise { 4 }
```

## Available Scripts

In the project directory, you can run:

### `npm install`

Installs the project, including running `npm run build`.

### `npm build`

Builds the Node addon (`index.node`) from source.

### `npm test`

Runs the unit tests by calling `cargo test`. You can learn more about [adding tests to your Rust code](https://doc.rust-lang.org/book/ch11-01-writing-tests.html) from the [Rust book](https://doc.rust-lang.org/book/).

## Example Usages
The `app.js` contains a simple example running promise
```js
const inc_num_promise = require('.');

(async () => {
    const something = await inc_num_promise(3);
    console.log(something);
})();
```

The `index.js` converts an async function to a `Promise`
```js
"use strict"

const { promisify } = require("util");

const { inc_num } = require("./index.node");

const inc_num_promise = promisify(inc_num);

module.exports = inc_num_promise;
```

**Usage**:

```sh
node app.js
> 4
```