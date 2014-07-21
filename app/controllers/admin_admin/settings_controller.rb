class AdminAdmin::SettingsController < AdminAdmin::BaseController

  def edit
    @settings = Settings
  end

  def update
    @settings = Settings
    @settings.message_length = [ [ sp[:message_length].to_i, 20 ].max, 200 ].min

    redirect_to :edit_admin_admin_settings, notice: t('.success')
  end

  private

  def sp
    params[:settings].permit(:message_length)
  end

end
