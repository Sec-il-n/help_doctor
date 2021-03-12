# このファイルの変更時には再起動
# ログに残したく無い情報
Rails.application.config.filter_parameters += [:password]
