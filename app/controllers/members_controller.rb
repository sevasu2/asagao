class MembersController < ApplicationController
  def index
  	@q = Member.ransack(params[:q])
    @members = @q.result(distinct: true)
  end

  def search
  	@q = Student.search(search_params)
    # @members = @q.result(distinct: true)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private
  def search_params
    params.require(:q).permit(:name)
  end
end
