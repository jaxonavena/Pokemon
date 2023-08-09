Dir.glob(File.join(__dir__, 'pokemon', '**', '*.rb')).each do |file_path|
  require file_path
end

module Pokemon

end