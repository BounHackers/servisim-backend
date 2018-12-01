# frozen_string_literal: true

module Api
  module V1
    class DocsController < ApplicationController
      # GET /docs
      def index
        render file: Rails.root.join('public', 'v1', 'docs', 'index.html')
      end
    end
  end
end
