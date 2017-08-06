class SessionsController < Clearance::SessionsController

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        redirect_back_or url_after_create
      else
        flash.now.notice = status.failure_message
        redirect_to sign_in_url
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end