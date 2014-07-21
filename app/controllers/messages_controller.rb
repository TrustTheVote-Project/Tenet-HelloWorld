class MessagesController < BaseController

  before_filter :require_user_acc

  def index
    gon.maxMessageChars = Settings.message_length
    @messages   = Message.where(account: current_account).includes(:user).order('created_at DESC').limit(AppConfig['max_messages'])
    @message  ||= Message.new
    render :index
  end

  def create
    authorize! :create, Message

    @message = Message.new(ma)
    @message.user = current_user

    if @message.save
      redirect_to :messages, notice: t('.success')
    else
      index
    end
  rescue CanCan::AccessDenied
    redirect_to :messages, alert: t('.not_allowed_to_create')
  end

  private

  def ma
    params[:message].permit(:body)
  end

end
