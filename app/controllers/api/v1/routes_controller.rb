# frozen_string_literal: true

module Api
  module V1
    class RoutesController < ApplicationController
      before_action :set_route, only: %i[show update destroy]

      # GET /routes
      def index
        @routes = Route.all

        render json: @routes
      end

      # GET /routes/1
      def show
        render json: @route
      end

      # POST /routes
      def create
        @route = Route.new(route_params)

        if @route.save
          render json: @route, status: :created
        else
          render json: @route.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /routes/1
      def update
        if @route.update(route_params)
          render json: @route
        else
          render json: @route.errors, status: :unprocessable_entity
        end
      end

      # DELETE /routes/1
      def destroy
        @route.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_route
        @route = Route.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def route_params
        params.permit(:kid_ids, :driver_id)
      end
    end
  end
end
