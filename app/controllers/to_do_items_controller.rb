class ToDoItemsController < ApplicationController
  before_action :set_to_do_item, only: [:show, :edit, :update, :destroy]

  # GET /to_do_items
  # GET /to_do_items.json
  def index
    @to_do_items = ToDoItem.where(:list_id => params[:list_id])
  end

  # GET /to_do_items/1
  # GET /to_do_items/1.json
  def show
  end

  # GET /to_do_items/new
  def new
    @to_do_item = ToDoItem.new
  end

  # GET /to_do_items/1/edit
  def edit
  end

  # POST /to_do_items
  # POST /to_do_items.json
  def create
    @to_do_item = ToDoItem.new(to_do_item_params)
    respond_to do |format|
      if @to_do_item.save
        format.html { redirect_to @to_do_item, notice: 'To do item was successfully created.' }
        format.json { render :show, status: :created, location: @to_do_item }
      else
        format.html { render :new }
        format.json { render json: @to_do_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def move_lower

  end

  def move_higher

  end

  # PATCH/PUT /to_do_items/1
  # PATCH/PUT /to_do_items/1.json
  def update
    respond_to do |format|
      if @to_do_item.update(to_do_item_params)
        format.html { redirect_to @to_do_item, notice: 'To do item was successfully updated.' }
        format.json { render :show, status: :ok, location: @to_do_item }
      else
        format.html { render :edit }
        format.json { render json: @to_do_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_do_items/1
  # DELETE /to_do_items/1.json
  def destroy
    @to_do_item.destroy
    respond_to do |format|
      format.html { redirect_to to_do_lists_path, notice: 'To do item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do_item
      @to_do_item = ToDoItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_do_item_params
      params.require(:to_do_item).permit(:name, :list_id, :position)
    end
end
