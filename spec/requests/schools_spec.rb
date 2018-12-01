# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Schools', type: :request do
  describe 'GET /schools' do
    it 'should return status 200' do
      get '/api/v1/schools'
      expect(response).to have_http_status(200)
    end
  end
end
