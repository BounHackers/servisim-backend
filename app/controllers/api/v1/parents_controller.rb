module Api
  module V1
    class ParentsController < ApplicationController
      before_action :set_parent, only: [:show, :update, :destroy]

      # GET /parents
      def index
        @parents = Parent.all

        render json: @parents
      end

      # GET /parents/1
      def show
        render json: @parent
      end

      # POST /parents
      def create
        @parent = Parent.new(parent_params)

        if @parent.save
          render json: @parent, status: :created, location: @parent
        else
          render json: @parent.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /parents/1
      def update
        if @parent.update(parent_params)
          render json: @parent
        else
          render json: @parent.errors, status: :unprocessable_entity
        end
      end

      # DELETE /parents/1
      def destroy
        @parent.destroy
      end

      def login
        parent = Parent.find { |u| u.username == params[:username] }
        if parent && test_password(params[:password], parent.password)
          session.clear
          session[:user_id] = parent.id
          session[:user_type] = 'parent'
          render json: @parent
        else
          error = { error: "Not authorized" }
          render json: error, status: :unauthorized
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_parent
          @parent = Parent.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def parent_params
          params.require(:parent).permit(:name, :age, :location, :username, :password)
        end

        def hash_password(password)
          BCrypt::Password.create(password).to_s
        end
        
        def test_password(password, hash)
          BCrypt::Password.new(hash) == password
        end
    end
  end
end