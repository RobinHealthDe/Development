namespace :db do
  desc 'Load a consistent set of data meant for manual testing on a server'
  task :load_sample_data => :environment do
    include FactoryGirl::Syntax::Methods

    create(:admin)
    create(:nobunaga)
    create(:hideyoshi)

    create(:tsuruhime_inquiry)
    create(:sen_inquiry)
    create(:ginchiyo_inquiry)
  end
end
