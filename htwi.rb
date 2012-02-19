#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# 引数で受け取った文字列をファイルに書き込むだけ

date = Time.now.strftime("%Y%m%d")
time = Time.now.strftime("%H:%M:%S")

file_name = File.expand_path("~/howm/tw/#{date}.howm")

is_initial = (not File.exist?(file_name))

f=open(file_name, "a+")
message = ARGV.first
f.puts "= #{date}" if is_initial
f.puts "(#{time}) #{message}"
f.close
