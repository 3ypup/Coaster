class Posts < ActiveRecord::Migration[5.1]
  def change


  	create_table :messages do |t|
  		t.text :content
  		

  		t.timestamps 

  	end


  		Message.create :content => 'testpost'


  end
end
