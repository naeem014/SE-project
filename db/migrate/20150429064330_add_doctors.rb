class AddDoctors < ActiveRecord::Migration
  def up
  	create_table 'doctors' do |t|
  		t.string 'Name'
  		t.string 'Specialization'
  		t.string 'Location'
      t.string 'email', null: false
      t.string 'password_digest', null: false
  	end
  end

  def down
  	drop_table 'doctors'
  end
end
