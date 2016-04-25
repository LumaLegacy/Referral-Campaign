namespace :prelaunchr do
  desc 'Will output a CSV with winner emails'
  task :create_winner_csv, [:winner_count] => [:environment] do |t, args|
    puts 'You must specify the number of winners to select.  Invoke like this where 5 would be the number of desired winners: bundle exec rake prelaunchr:create_winner_csv[5]' and return unless args[:winner_count]
    winner_count = args[:winner_count].to_i
    all_emails = []
    User.all.each do |user|
      # add each user at least once
      all_emails.push(user.email)

      # give the user multiple chances depending on how many users they referred
      user.referrals.count.times.each do
        all_emails.push(user.email)
      end
    end

    CSV.open("#{Rails.root}/lib/assets/winners.csv", 'wb') do |csv|
      winner_count.times do
        csv << [all_emails.sample]
      end
    end
  end
end
