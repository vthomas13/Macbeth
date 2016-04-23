class Macbetherino
  datafile = File.open("macbeth.txt", "r")
  lines = datafile.readlines
  datafile.close

  lines.each{ |line| puts line }
end