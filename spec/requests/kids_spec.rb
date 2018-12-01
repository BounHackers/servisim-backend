# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Kids', type: :request do
  describe 'GET /kids' do
    it 'should return status 200' do
      get '/api/v1/kids'
      expect(response).to have_http_status(200)
    end
  end
end
