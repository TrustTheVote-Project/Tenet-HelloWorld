class GroupAdmin::SettingsController < GroupAdmin::BaseController

  def edit
    @settings = current_account.settings
  end

  def update
    @settings = current_account.settings
    @settings.message_board_subtitle = sp[:message_board_subtitle]
    @settings.welcome_message = sp[:welcome_message]

    update_welcome_message(@settings)

    redirect_to :edit_group_admin_settings, notice: t('.success')
  end

  private

  def sp
    params[:settings].permit(:message_board_subtitle, :welcome_message)
  end

  def update_welcome_message(settings)
    return unless wmid = settings.welcome_message_id
    return unless wm = Message.where(id: wmid).first

    wm.body = settings.welcome_message
    wm.save
  end

end
