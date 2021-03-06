# frozen_string_literal: true

module Api
  module V1
    class KidsController < ApplicationController
      before_action :set_kid, only: %i[show update destroy]

      # GET /kids
      def index
        @kids = Kid.all

        render json: @kids
      end

      # GET /kids/1
      def show
        render json: @kid
      end

      # POST /kids
      def create
        @kid = Kid.new(kid_params)

        if @kid.save
          render json: @kid, status: :created
        else
          render json: @kid.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /kids/1
      def update
        if @kid.update(kid_params)
          render json: @kid
        else
          render json: @kid.errors, status: :unprocessable_entity
        end
      end

      # DELETE /kids/1
      def destroy
        @kid.destroy
      end

      def login
        kid = Kid.find { |u| u.username == params[:username] }
        if kid && BCrypt::Password.new(kid[:password]) == params[:password]
          session.clear
          session[:user_id] = kid.id
          session[:user_type] = 'kid'
          render json: kid
        else
          error = { error: 'Not authorized' }
          render json: error, status: :unauthorized
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_kid
        @kid = Kid.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def kid_params
        params.permit(:name, :location, :parent_id, :username, :password, school_ids: [], route_ids: [])
      end
    end
  end
end
