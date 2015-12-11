 # Create and write the contents of current Dir to a text file called dir.txt
 
 # File.open('dir.txt', 'a') { |f| f.write(pp Dir["*"]) }
 
# to run:
# eg: dir('dir', '*') => dir.txt with contents of current directory
def dir(filename, dir)
  File.open(filename+'.txt', 'a') { |f| f.write(Dir[dir]) }
end
