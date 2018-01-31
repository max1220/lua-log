#!/usr/bin/env lua
local log = require("log")
local config = {
	debug = true,
	notice = true,
	err = true
}

local debug = log(config.debug, "debug",nil,32)
local notice = log(config.notice, "notice")
local err = log(config.err, "err", {io.stderr, io.open("error_log.txt", "a")}, 31)

debug("Debug test")
notice("Notice test")
err("Error test")
