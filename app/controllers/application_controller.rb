class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_actionこの指示を先にします意味、ifもし○ならconfigure_permitted_parametersが動く

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :position, :occupation])
  end
end
# devise_parameter_sanitizerデバイスパラメーターサニタイザー　emailPWしか保存不可の指示を改造する
# permit許可する意味、場所指定(:sign_up, keys: [:name, :profile, :position, :occupation])
# ストロングパラメーター編集
# before_actionとは、コントローラのフィルタリング的役割を担うものである。つまり、before_actionをApplicationControllerに定義することで、ApplicationControllerを継承しているコントローラー内の全てのアクションが実行される前に、before_actionが実行される。