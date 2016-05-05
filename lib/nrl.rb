require 'faraday'
require 'faraday_middleware'
require 'virtus'

require 'nrl/version'
require 'nrl/base'
require 'nrl/team'
require 'nrl/match'
require 'nrl/round'

module NRL
  BASE_URL =
    'https://tds-nrl-data.s3-ap-southeast-2.amazonaws.com/data/nrl'.freeze
end
