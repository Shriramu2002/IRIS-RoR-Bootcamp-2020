# Session 2- Creating a model
In this session, you will learn how to create a model.
- Enter the student rails project in the session_2 directory in your terminal
```bash
cd session_2
cd student
```

- Now install the gems:
```bash
bundle install
```

- Create a database and run the migrations:

```bash
rails db:create
rails db:migrate
```

## 1. Create an interface in which the administrative officer of NITK can store all the students and the information about them in the database and can CRUD all of them.
**Student:**
1. roll_no
2. name
3. branch
4. cgpa
5. address

Implement the model and test out your work by running: 
```bash
rails test:models
```
