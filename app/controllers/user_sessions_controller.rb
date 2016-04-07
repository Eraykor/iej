class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
      @employee = Employee.new
      @employees = Employee.all
      @admin_employees = Admin::Employee.all
      @participants = Participant.all
  end

  def create
    if @employee = login(params[:email], params[:password])
        redirect_back_or_to(admin_root_url, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
      redirect_to(:login, notice: 'Logged out!')
  end
end
