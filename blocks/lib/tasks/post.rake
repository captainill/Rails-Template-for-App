# lib/tasks/post.rake
namespace :db do
  namespace :post do
    Dir[File.join(Rails.root, 'db', 'posts', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb').intern    
      task task_name => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end