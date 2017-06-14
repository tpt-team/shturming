class Admin::InfoController < Admin::AdminController
  before_action :info, only: :edit

  def index
    @infos ||= Info.all.paginate(page: params[:page], per_page: 15)
  end

  def new
    @info = Info.new
  end

  def destroy
    info.destroy
  end

  def update
    return render :edit unless info.update(info_params)
    redirect_to admin_info_index_path
  end

  def create
    @info = Info.new(info_params)
    return render :new unless @info.valid? && @info.save
    redirect_to admin_info_index_path
  end

  private

  def info
    @info ||= Info.find(params[:id])
  end

  def info_params
    params.require(:info).permit!
  end
end
