# Map / Filter

Given the following list of users with multiple attributes:

```elixir
[
  %{firstName: 'Bradley', lastName: 'Bouley', role: 'Full Stack Resident'},
  %{firstName: 'Chloe', lastName: 'Alnaji', role: 'Full Stack Resident'},
  %{firstName: 'Jonathan', lastName: 'Baughn', role: 'Enterprise Instructor'},
  %{firstName: 'Michael', lastName: 'Herman', role: 'Lead Instructor'},
  %{firstName: 'Robert', lastName: 'Hajek', role: 'Full Stack Resident'},
  %{firstName: 'Wes', lastName: 'Reid', role: 'Instructor'},
  %{firstName: 'Zach', lastName: 'Klabunde', role: 'Instructor'}
]
```

We need to send a message to all of our users, but we need **only their first names**. Write a function that return only the first name of every user.

```elixir
[
  'Bradley',
  'Chloe',
  'Jonathan',
  'Michael',
  'Robert',
  'Wes',
  'Zach'
]
```

Now we need to reach out to our **Full Stack Residents** **ONLY**, to tell them what a wonderful job they're doing. Write a function that return only the Full Stack Residents.

```elixir
[
  %{firstName: 'Bradley', lastName: 'Bouley', role: 'Full Stack Resident'},
  %{firstName: 'Chloe', lastName: 'Alnaji', role: 'Full Stack Resident'},
  %{firstName: 'Robert', lastName: 'Hajek', role: 'Full Stack Resident'}
]
```

## Module

Write your functions inside `Users` module:

```elixir
defmodule Users do
  def hello(name) do
    IO.puts("Hello, #{name}")
  end

  # Write your functions here
end

list = [
  %{firstName: 'Bradley', lastName: 'Bouley', role: 'Full Stack Resident'},
  %{firstName: 'Chloe', lastName: 'Alnaji', role: 'Full Stack Resident'},
  %{firstName: 'Jonathan', lastName: 'Baughn', role: 'Enterprise Instructor'},
  %{firstName: 'Michael', lastName: 'Herman', role: 'Lead Instructor'},
  %{firstName: 'Robert', lastName: 'Hajek', role: 'Full Stack Resident'},
  %{firstName: 'Wes', lastName: 'Reid', role: 'Instructor'},
  %{firstName: 'Zach', lastName: 'Klabunde', role: 'Instructor'}
]

# Then, call your functions on the line below
Users.hello("Danilo")
```

Save your file as `users.exs`, and then execute it: `elixir users.exs`


## BONUS ROUND

We are restructuring our app and now we need a structure that holds user name as key, and user role as value.

```elixir
%{
  "Bradley Bouley" => 'Full Stack Resident',
  "Chloe Alnaji" => 'Full Stack Resident',
  "Jonathan Baughn" => 'Enterprise Instructor',
  "Michael Herman" => 'Lead Instructor',
  "Robert Hajek" => 'Full Stack Resident',
  "Wes Reid" => 'Instructor',
  "Zach Klabunde" => 'Instructor'
}
```

> **Note**: We will need [Enum.reduce/3](https://elixirschool.com/en/lessons/basics/enum/#reduce) for this exercise.

