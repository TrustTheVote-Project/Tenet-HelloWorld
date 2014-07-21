class GroupAdmin::SettingsController < GroupAdmin::BaseController

  def edit
    @settings = current_account.settings
  end

  def update
    @settings = current_account.settings
    @settings.message_board_subtitle = sp[:message_board_subtitle]

    redirect_to :edit_group_admin_settings, notice: t('.success')
  end

  private

  def sp
    params[:settings].permit(:message_board_subtitle)
  end

end
