# Creating Tables

We will learn about creating tables in Rails while helping NITK build a
website to keep track of enrolled students.

> TODO: Add more explanation about tables.

In particular, we create a table `student` with the following attributes
and data-types:
- Name: string
- Roll Number: string
- Branch: string
- CGPA: a decimal number between 0 and 10 with two decimal points.
- Address: string
- Year: integer

## Steps

- [Prepare Local Database](/session_2/README.md) in the `students`
  folder.

Models can be created using Rails generator with the following syntax:

```bash
rails generate model NAME [field[:type] field[:type]

# Creating a table student with two columns - name (string), roll number
# (string)
rails generate model name:string roll_number:string
```

> Rails has great emphasis on naming conventions. The model name must be
> `CamelCase` and column names must be `snake_case`. Read about other
> [rails naming conventions](https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e). 

The command creates multiple files - most important of which is
`db/migrations/<YYYYMMDDHHMMSS>_create_students.rb`

> The number in the beginning of the migration file is a UTC timestamp.
> Rails uses this timestamp to determine which migration should be run
> and in what order.

The file `db/migrations/<YYYYMMDDHHMMSS>_create_students.rb` looks like:

```ruby
class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :roll_number
    end
  end
end
```

- Run the migration.

> Running the migration commits the changes to the database. In this
> case, creating a new table `student` with columns `name` and
> `roll_number`.

> NOTE: Before running the migration, your changes are *not* committed
> to the database.

- Execute the test suite and submit your changes when tests pass.

```bash
rails test
```

## Rolling Back Migrations

If the migration was incorrect (say wrong column names or datatype),
you can "undo" the migration by the following command:

```bash
rails db:rollback
```

Then, fix the migration file `db/migrations/<YYYYMMDDHHMMSS>_create_students.rb`
and re-run the migration to commit your changes to the dabase.

Read more about migrations at: [Running Migrations | Active Record Migrations](https://edgeguides.rubyonrails.org/active_record_migrations.html#rolling-back)
