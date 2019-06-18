# 出力先のログファイルの指定
set :output, 'log/cron.log'

# production環境のジョブ指定
if @environment.to_sym == :production
  # 火曜日のpm9時にスケジューリング
  # スタジオ数/ルーム数の社内メール通知
  every :tuesday, at: '9:00 pm' do
    rake "send_email:number_of_studios"
  end
end
