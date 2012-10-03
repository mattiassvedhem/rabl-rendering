require_dependency "isolated_engine/application_controller"

module IsolatedEngine
  class NestedItemsController < ApplicationController
    # GET /nested_items
    # GET /nested_items.json
    def index
      @nested_items = ['nested_item', 'nested_item']
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @nested_items }
      end
    end
  
    # GET /nested_items/1
    # GET /nested_items/1.json
    def show
      @nested_item = NestedItem.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @nested_item }
      end
    end
  
    # GET /nested_items/new
    # GET /nested_items/new.json
    def new
      @nested_item = NestedItem.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @nested_item }
      end
    end
  
    # GET /nested_items/1/edit
    def edit
      @nested_item = NestedItem.find(params[:id])
    end
  
    # POST /nested_items
    # POST /nested_items.json
    def create
      @nested_item = NestedItem.new(params[:nested_item])
  
      respond_to do |format|
        if @nested_item.save
          format.html { redirect_to @nested_item, notice: 'Nested item was successfully created.' }
          format.json { render json: @nested_item, status: :created, location: @nested_item }
        else
          format.html { render action: "new" }
          format.json { render json: @nested_item.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /nested_items/1
    # PUT /nested_items/1.json
    def update
      @nested_item = NestedItem.find(params[:id])
  
      respond_to do |format|
        if @nested_item.update_attributes(params[:nested_item])
          format.html { redirect_to @nested_item, notice: 'Nested item was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @nested_item.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /nested_items/1
    # DELETE /nested_items/1.json
    def destroy
      @nested_item = NestedItem.find(params[:id])
      @nested_item.destroy
  
      respond_to do |format|
        format.html { redirect_to nested_items_url }
        format.json { head :no_content }
      end
    end
  end
end
