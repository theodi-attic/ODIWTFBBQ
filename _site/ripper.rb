#!/usr/bin/env ruby

source = 'odiwtfbbqgame.txt'

lines = File.readlines source

lines.each do |line|
  parts = line.split '-'
  title = parts[0].strip
  expansion = parts[1..-1].join(' ').strip
  filename = "#{title.downcase.gsub ' ', '_'}.md"

  File.open filename, 'w' do |f|
    f.write "---\n"
    f.write "title: #{title}\n"
    f.write "expansion: #{expansion}\n"
    f.write "---\n"
  end
end
