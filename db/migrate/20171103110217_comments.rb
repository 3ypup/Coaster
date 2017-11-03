class Comments < ActiveRecord::Migration[5.1]
  def change

	  	create_table :comments do |t|

	  		t.text :text
	  		t.text :post_id

	  		t.timestamps

	  	end


	  	Comment.create :text => 'Fucktestpost',  :post_id => 1
	  	Comment.create :text => 'NextOnepost', :post_id => 1

	  	Comment.create :text => 'Fucktestpost2',  :post_id => 2
	  	Comment.create :text => 'NextOnepost2', :post_id => 2
  end
end
