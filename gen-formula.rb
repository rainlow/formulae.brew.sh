require 'json'
require 'pathname'

src_dir  = Pathname('_data/formula')
dst_file = Pathname('./formula.json')

objects = Dir.glob(src_dir.join('*.json')).sort.map do |file|
  JSON.parse(File.read(file))
end

File.write(dst_file, JSON.generate(objects))


