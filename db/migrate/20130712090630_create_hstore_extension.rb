class CreateHstoreExtension < ActiveRecord::Migration
  def change
    # The test database is built using the schema, so the postgres extension would not be created
    # Use the below command to add the extension into the template
    # psql -d template1 -c 'create extension hstore;' -U <username> -W -h <host-name>
        
    execute 'CREATE EXTENSION hstore'
  end
end
