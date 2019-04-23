# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# 出力先のログファイルの指定
set :output, 'log/cron.log'

# production環境のジョブ指定
if @environment.to_sym == :production
  # 火曜日のpm9時にスケジューリング
  every :tuesday, at: '9:00 pm' do
    rake "send_email:number_of_studios"
  end
end

# staging環境のジョブ指定
if @environment.to_sym == :staging
  # 火曜日のpm11時20分にスケジューリング
  every :tuesday, at: '11:20 pm' do
    rake "send_email:number_of_studios"
  end
end
