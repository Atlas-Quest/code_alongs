# create directories for each first name only lowercased
# for each directory inside create a new file named README.md

# Intro
#  |
#  |---john
#        |--README.md
#  |---mary
#        |--README.md
#  |---bits
#        |--README.md


require 'pry'
require 'fileutils'  # look up functions in this library

hackers = ['John Smith', 'Mary Jane', 'Bits Please']

hackers.each do |hacker|
  dir_name = hacker.split(' ').first.downcase
  FileUtils.mkdir dir_name
  FileUtils.cd dir_name do
    FileUtils.touch 'README.md'
  end
end

binding.pry
