"use strict"

const { promisify } = require("util");

const {create_mystruct, get_content} = require('./index.node');

const get_content_async = promisify(get_content);

class Mystruct {
    constructor() {
        this.boxed = create_mystruct();
    }

    get_content(path) {
        return get_content_async(this.boxed, path);
    }
}


module.exports = Mystruct;