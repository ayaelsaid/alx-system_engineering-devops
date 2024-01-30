#!/usr/bin/env ruby
puts ARGV[0].scan(/\[\bfrom:(.*?)\]\s*\[\bto:(.*?)\]\s*\[\bflags:(.*?)\]/).join(",")
