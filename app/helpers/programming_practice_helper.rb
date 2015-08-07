module ProgrammingPracticeHelper
	# Computes the path to a flash movie asset in the public flash directory.
  # Full paths from the document root will be passed through.
  #
  #   swf_path("movie")                                         # => "/flash/movie.swf"
  #   swf_path("movie.swf")                                     # => "/flash/movie.swf"
  #   swf_path("my/movie.swf")                                  # => "/flash/my/movie.swf"
  #   swf_path("/flash/movie.swf")                              # => "/flash/movie.swf"
  #   swf_path("http://www.example.com/flash/movie.swf")        # => "http://www.example.com/flash/movie.swf"
  #
  # If you have images as application resources this method may conflict with their named routes.
  # The alias +path_to_image+ is provided to avoid that. Rails uses the alias internally, and
  # plugin authors are encouraged to do so.
  #def swf_path(source)
  #  asset_paths.compute_public_path(source, 'flash', 'swf')
  #end
  #alias_method :path_to_swf, :swf_path # aliased to avoid conflicts with an swf_path named route

end
