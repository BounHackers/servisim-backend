# frozen_string_literal: true

module Api
  module V1
    class DriversController < ApplicationController
      before_action :set_driver, only: %i[show update destroy]

      # GET /drivers
      def index
        @drivers = Driver.all

        render json: @drivers
      end

      # GET /drivers/1
      def show
        render json: @driver
      end

      # POST /drivers
      def create
        @driver = Driver.new(driver_params)

        if @driver.save
          render json: @driver, status: :created
        else
          render json: @driver.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /drivers/1
      def update
        if @driver.update(driver_params)
          render json: @driver
        else
          render json: @driver.errors, status: :unprocessable_entity
        end
      end

      # DELETE /drivers/1
      def destroy
        @driver.destroy
      end

      def login
        driver = Driver.find { |u| u.username == params[:username] }
        if driver && BCrypt::Password.new(driver[:password]) == params[:password]
          session.clear
          session[:user_id] = driver.id
          session[:user_type] = 'driver'
          render json: driver
        else
          error = { error: 'Not authorized' }
          render json: error, status: :unauthorized
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_driver
        @driver = Driver.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def driver_params
        params.permit(:school_id, :username, :password, :vehicle_id)
      end
    end
  end
end
