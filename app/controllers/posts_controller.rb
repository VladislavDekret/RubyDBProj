class PostsController < ApplicationController
  def index
    @posts = Attraction.select('attractions.id, attractions.name, attractions.age, attractions.during, attractions.price, admins.email, admins.surname')
    .from('attractions inner join admins on attractions.id_admin = admins.id_admin')
  end

  def show
    @posts = Attraction.select('attractions.id, attractions.name, attractions.age, attractions.during, attractions.price, admins.email, admins.surname')
    .from('attractions inner join admins on attractions.id_admin = admins.id_admin')
    .find(params[:id])
  end

  def edit
    @admins = Admin.select('*')
    @techs = Tech.select('*')
    @posts = Attraction.select('*')
    .from('attractions')
    .find(params[:id])
  end

  def new
    @admins = Admin.select('*')
    @techs = Tech.select('*')
  end

  def create
    @posts = Attraction.new(params.require(:attraction).permit(:age, :during, :name, :price, :id_admin, :id_tech))
    @posts[:id_attr] = 'AT200' + @posts.id.to_s
    @posts.save

    redirect_to '/posts/' + @posts.id.to_s
  end

  def update
    @posts = Attraction.select('*')
    .from('attractions')
    .find(params[:id])
    @posts.update(params.require(:attraction).permit(:age, :during, :name, :price, :id_admin, :id_tech))
    redirect_to '/posts/' + @posts.id.to_s
  end

  def delete
    @posts = Attraction.select('*')
    .from('attractions')
    .find(params[:id])
    @posts.destroy
    @posts.save
    redirect_to 'posts/index'
  end
end
