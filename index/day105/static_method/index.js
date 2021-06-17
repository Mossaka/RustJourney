"use strict"
const { promisify } = require("util");

const addon = require('./index.node');

const readFileAsync = promisify(addon.readFile)

class User {

}

User.readFile = readFileAsync

module.exports = User;