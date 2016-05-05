$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nrl'

def mocked_response(file)
  File.read(File.join(File.dirname(__FILE__), 'mocked_responses/', file))
end
