# frozen_string_literal: true

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Rack::Static, urls: { '/docs/v1' => '/docs/v1/redirect.html' }
use Rack::Static, urls: { '/docs/v1/' => '/docs/v1/index.html' }
use Rack::Static, urls: ['/docs/v1']

run Rails.application
