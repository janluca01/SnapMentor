class SnapsController < ApplicationController
  before_action :set_snap, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show, :search]


  # GET /snaps
  # GET /snaps.json
  def index
    @snaps = Snap.all
  end

  # GET /snaps/1
  # GET /snaps/1.json
  def show
  end




  # GET /snaps/new
  def new
    @snap = Snap.new
  end

  # GET /snaps/1/edit
  def edit
    @snap = Snap.find(params[:id])
  end

  # POST /snaps
  # POST /snaps.json
def create
    @snap = Snap.new(snap_params)
    @snap.admin = current_admin
    if @snap.save
      flash[:success] = "Snap was successfully created"
      redirect_to snap_path(@snap)
    else
      render 'new'
    end
  end

  # PATCH/PUT /snaps/1
  # PATCH/PUT /snaps/1.json
  def update
    respond_to do |format|
      if @snap.update(snap_params)
        format.html { redirect_to @snap, notice: 'Snap was successfully updated.' }
        format.json { render :show, status: :ok, location: @snap }
      else
        format.html { render :edit }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snaps/1
  # DELETE /snaps/1.json
  def destroy
    @snap.destroy
    flash[:danger] = "Snap was successfully deleted"
    redirect_to snaps_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snap
      @snap = Snap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snap_params
      params.require(:snap).permit(:title, :description, :link, category_ids: [])
    end
end
