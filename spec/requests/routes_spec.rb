# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes', type: :request do
  describe 'GET /routes' do
    it 'should return status 200' do
      get '/api/v1/routes'
      expect(response).to have_http_status(200)
    end
  end
end
