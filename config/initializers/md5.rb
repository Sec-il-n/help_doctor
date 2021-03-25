# マイグレーションファイル
# t.string :password_salt, null: false, default: ""

# require 'digest/md5'
#
# module Devise
#   module Encryptable
#     module Encryptor
#       class Md5 < Base
#         def self.digest(password, stretches, salt, pepper)
#           str = [password, salt].flatten.compact.join
#           Digest::MD5.hexdigest(str)
#         end
#       end
#     end
#   end
# end
