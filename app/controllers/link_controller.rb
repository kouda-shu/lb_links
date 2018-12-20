class LinkController < ApplicationController
  def index
  end

  def sign_in
    @user = User.find_by(name: params[:name], pass: params[:pass])
    if @user
      @user.save
      session[:user] = @user.name
      flash[:notice] = nil
      redirect_to("/link/index")
    else
      flash[:notice] = "ユーザー名またはパスワードに誤りがあります"
      render("link/index")
    end
  end

  def sign_up
  end

  def user_new
    @user = User.new(name: params[:name], pass: params[:pass])
    @user.save
    if @user.save
      session[:user] = @user.name
      redirect_to("/link/index")
    else
      render("link/sign_up")
    end
  end

  def logout
    session[:user] = nil
    redirect_to("/link/index")
  end

  def link_new
    @link = Link.new(
        name: params[:name],
        URL: params[:url],
        user_ID: params[:userid],
        pass: params[:pass],
        last_update_user: session[:user]
    )
    @link.save
    if @link.save
      redirect_to("/link/index")
    else
      @links = Link.all
      render("link/index")
    end
  end

  def edit
    @link = Link.find_by(id: params[:id])
  end

  def update
    @link = Link.find_by(id: params[:id])
    @link.name = params[:name]
    @link.URL = params[:url]
    @link.user_ID = params[:userid]
    @link.pass = params[:pass]
    @link.last_update_user = session[:user]
    @link.save
    if @link.save
      redirect_to("/link/index")
    else
      render("link/edit")
    end
  end

  def destroy
    @link = Link.find_by(id: params[:id])
    @link.destroy
    redirect_to("/link/index")
  end
end
