email = "test@example.com"
password = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: email) do |user|
  user.name = name
  user.password = password
  puts 'ユーザーの初期データのインポートに成功しました'
end
