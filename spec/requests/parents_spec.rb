# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Parents', type: :request do
  describe 'GET /parents' do
    it 'should return status 200' do
      get '/api/v1/drivers'
      expect(response).to have_http_status(200)
    end
  end
end
