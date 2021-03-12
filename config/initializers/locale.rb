I18n.config.available_locales = [:ja, :en]
I18n.default_locale = :ja
# 訳文読み込みパスを設定
I18n.load_path += Dir[Rails.root.join('config', 'locales','**', '*.{rb,yml}').to_s]
