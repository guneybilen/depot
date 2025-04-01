class CreateOrders < ActiveRecord::Migration[8.0]
  def up

    # Add the CHECK constraint for pay_type
    execute <<-SQL
      CREATE TABLE orders (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        address TEXT,
        email TEXT,
        pay_type INTEGER NOT NULL CHECK (pay_type IN (0, 1, 2)),
        created_at DATETIME,
        updated_at DATETIME
      );
    SQL

  end


  def down
    # Drop the orders table
    execute <<-SQL
      DROP TABLE IF EXISTS orders;
    SQL
  end

end
