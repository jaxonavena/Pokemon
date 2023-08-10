Dir.glob(File.join(__dir__, 'types', '**', '*.rb')).each do |file_path|
  require file_path
end


module Types

end