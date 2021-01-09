# Session 2 - Models

We take a closer look at _Model_ of the MVC architecture and talk about
databases, migrations and working with records.

> We will be using SQLite as our database as it is default for Rails.

The assignment is split into different sub-tasks, each testing a
different aspect of Model layer.

## Pre-requistes

- [Install Ruby and Rails](/installation.md)

- [Set Up Local Workplace](/essential_git.md)

## Prepare Local Database

A _database_ stores information as a set of tables with columns and
rows. You can think of them as a spreadsheet with each table on a
different sheet.

The tables and their columns are together called a _schema_.

There are other non-tabular databases as well, which are better suited
to specific problems: [What is a Database | Oracle](https://www.oracle.com/in/database/what-is-database/)

- Change directory to rails project.

- Create the database

```bash
rails db:create
```

You should see two new files are created if not present already -
`development.sqlite3` and `test.sqlite3`.

- Run the migrations

```bash
rails db:migrate
```

Migrations are a convient way to alter database schema (that is, modify
the tables and the columns) using a ruby-like language.

## Creating Tables

Relational databases stores information using tables. You can think of
tables and their columns as the format in which data is stored.

In this sub-task, we will learn about creating tables in Rails while
helping NITK build a website to keep track of enrolled students. Head
over to [students](students/README.md) directory to learn more.

## Working with Records

## Modifying Existing Schema
