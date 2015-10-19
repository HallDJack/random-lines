def random_line(file_path)
  return nil unless File.exists?(file_path)

  lines = IO.readlines(file_path)
  return "" if lines.empty?

  lines[Random.rand(lines.count - 1)].strip
end

def random_line_one_pass(file_path)
  return nil unless File.exists?(file_path)

  file = File.new(file_path)
  lines = []
  random_line = ""
  while (line = file.gets) != nil
    lines << line

    random_line = lines[Random.rand(lines.count - 1)].strip
  end

  random_line
end
