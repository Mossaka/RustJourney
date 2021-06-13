"use strict"

const { promisify } = require("util");

const { inc_num } = require("./index.node");

const inc_num_promise = promisify(inc_num);

module.exports = inc_num_promise;