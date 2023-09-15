class OrderlistsController < ApplicationController
  before_action :set_orderlist, only: %i[ show edit update destroy ]
  before_action :set_pizzas, only: %i[ new edit create updated]

  # GET /orderlists or /orderlists.json
  def index
    @orderlists = Orderlist.all
  end

  # GET /orderlists/1 or /orderlists/1.json
  def show
  end

  # GET /orderlists/new
  def new
    @orderlist = Orderlist.new
    @order = Order.find(params[:order_id])
  end

  # GET /orderlists/1/edit
  def edit
  end

  # POST /orderlists or /orderlists.json
  def create
    @order = Order.find(params[:order_id])
    @orderlist = @order.orderlists.new(params[:pizza], params[:size])
    # @orderlist = @order
    respond_to do |format|
      if @orderlist.save
        format.html { redirect_to order_path(@order), notice: "Orderlist was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orderlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderlists/1 or /orderlists/1.json
  def update
    respond_to do |format|
      if @orderlist.update(orderlist_params)
        format.html { redirect_to orderlist_url(@orderlist), notice: "Orderlist was successfully updated." }
        format.json { render :show, status: :ok, location: @orderlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orderlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderlists/1 or /orderlists/1.json
  def destroy
    @orderlist.destroy

    respond_to do |format|
      format.html { redirect_to orderlists_url, notice: "Orderlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderlist
      @orderlist = Orderlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orderlist_params
      # params.require(:orderlist).permit!()
    end

    def set_pizzas
      @pizzas = Pizza.all      
    end
end
