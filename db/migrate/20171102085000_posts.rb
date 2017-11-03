class Posts < ActiveRecord::Migration[5.1]
  def change


  	create_table :messages do |t|
  		
  		t.text :content
  		t.text :title
  		

  		t.timestamps 

  	end

  	


  		Message.create :content => 'testpost', :title => 'test'
  		Message.create :content => 'testpost2', :title => 'test2'


  end
end
