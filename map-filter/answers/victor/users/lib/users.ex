defmodule Users do

  @list [
    %{firstName: 'Bradley', lastName: 'Bouley', role: 'Full Stack Resident'},
    %{firstName: 'Chloe', lastName: 'Alnaji', role: 'Full Stack Resident'},
    %{firstName: 'Jonathan', lastName: 'Baughn', role: 'Enterprise Instructor'},
    %{firstName: 'Michael', lastName: 'Herman', role: 'Lead Instructor'},
    %{firstName: 'Robert', lastName: 'Hajek', role: 'Full Stack Resident'},
    %{firstName: 'Wes', lastName: 'Reid', role: 'Instructor'},
    %{firstName: 'Zach', lastName: 'Klabunde', role: 'Instructor'}
  ]

  def first_name(users) do
    users |> Enum.map(fn(user) -> user.firstName end)
  end

  def full_stack_residents(users) do
    users |> Enum.filter(fn(user) -> user.role == 'Full Stack Resident' end)
  end

  def name_as_key(users) do
    users |> Enum.reduce(%{}, fn(user, new_map) -> Map.put_new(new_map, "#{user.firstName} #{user.lastName}", user.role) end)
  end

  def hello() do
    IO.puts("List of First Names:")
    IO.inspect(first_name(@list))
    IO.puts("List of Full Stack Residents:")
    IO.inspect(full_stack_residents(@list))
    IO.puts("New List:")
    IO.inspect(name_as_key(@list))
  end

end
