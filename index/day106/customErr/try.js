"use strict";

const assert = require("assert");

const { example, init } = require("./index.node");

// Create a custom error
class MyError extends Error {
    constructor(message) {
        super(message);
        this.message = "hello world";
    }
}

// Must be called before running any native code
init(MyError);

// Ensure that `example` throws `MyError`
example()