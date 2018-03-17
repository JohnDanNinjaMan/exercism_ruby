def find_files(search_dir, pattern)
  begin #Might throw an error..?
    Dir.foreach(search_dir) do |found_file| # So iterates through search_dir, entry by entry. Each entry is placed in found_file.
      # Start block to run for each entry in the given directory.
      unless found_file == '.' || found_file == '..' # OR statement.
        file_with_path = File.join(search_dir, found_file) # Basically creates the full path of each file in the directory.
        if File.file?(file_with_path) && found_file =~ pattern # True if the file is actually a file, and matches the search criteria.
          puts file_with_path
        elsif File.directory?(file_with_path)
          find_files(file_with_path, pattern) # Recursion through sub-directories.
        end
      end
    end
  rescue Errno::EACCES # Error means a permissions issue, prob. don't have read access.
    puts "*** permision denied for #{search_dir}"
  end
end

find_files ARGV[0], Regexp.new(ARGV[1])
