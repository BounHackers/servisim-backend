# frozen_string_literal: true

require 'httparty'
require 'base64'

CLIENT_ID = 'abbe1fd2-eaeb-4202-b1df-19234a07188e'
CLIENT_SECRET = 'a285cddc-4423-4658-ab6e-82834a23ba9b'
# Base URL for Mercedes Benz connected vehicles API
MB_CV_BASE_URL = 'https://api.mercedes-benz.com/experimental/connectedvehicle/v1'

module Api
  module V1
    class MercedesController < ApplicationController
      def authorize
        qparams = { response_type: 'code', client_id: CLIENT_ID, redirect_uri: callback_url, scope: 'mb:vehicle:status:general mb:user:pool:reader' }
        url = 'https://api.secure.mercedes-benz.com/oidc10/auth/oauth/v2/authorize?' + qparams.to_param
        redirect_to url
      end

      def callback
        response = HTTParty.post('https://api.secure.mercedes-benz.com/oidc10/auth/oauth/v2/token',
                                 headers: {
                                   "authorization": 'Basic ' + Base64.strict_encode64(CLIENT_ID + ':' + CLIENT_SECRET),
                                   "content-type": 'application/x-www-form-urlencoded'
                                 },
                                 body: 'grant_type=authorization_code&code=' + params[:code] + '&redirect_uri=' + callback_url).parsed_response
        #   Example response:
        #   {
        #   "access_token":"1f8647f3-5f86-4b5e-8687-982fd620ef78",
        #   "token_type":"Bearer",
        #   "expires_in":3600,
        #   "refresh_token":"79850753-16ad-48cf-aae7-7e17a4d4882d",
        #   "scope":"mb:vehicle:status:general mb:user:pool:reader"
        #   }
        render json: response
      end

      def refresh
        response = HTTParty.post('https://api.secure.mercedes-benz.com/oidc10/auth/oauth/v2/token',
                                 headers: {
                                   "authorization": 'Basic ' + Base64.strict_encode64(CLIENT_ID + ':' + CLIENT_SECRET),
                                   "content-type": 'application/x-www-form-urlencoded'
                                 },
                                 body: 'grant_type=refresh_token&refresh_token=' + params[:refresh_token]).parsed_response
        render json: response
      end

      def vehicles
        response = HTTParty.get(MB_CV_BASE_URL + '/vehicles',
                                headers: {
                                  "accept": 'application/json',
                                  "authorization": 'Bearer ' + params[:access_token]
                                }).parsed_response
        render json: response
      end

      def vehicle_location
        response = HTTParty.get(MB_CV_BASE_URL + '/vehicles/' + params[:id] + '/location',
                                headers: {
                                  "accept": 'application/json',
                                  "authorization": 'Bearer ' + params[:access_token]
                                }).parsed_response
        render json: response
      end

      private

      def callback_url
        if Rails.env.production?
          'https://servisimapp.herokuapp.com/api/v1/mercedes/callback'
        else
          'http://localhost:3000/api/v1/mercedes/callback'
        end
      end
    end
  end
end
