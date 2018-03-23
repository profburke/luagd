#!/usr/bin/env lua

gd = require "gd"
require "display"


im = gd.createTrueColor(80, 80)
assert(im)

black = im:colorAllocate(0, 0, 0)
white = im:colorAllocate(255, 255, 255)
im:filledEllipse(40, 40, 70, 50, white)

im:png("out.png")
display "out.png"
