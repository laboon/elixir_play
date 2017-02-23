defmodule Times do

	@author "Bill"
	
	def double(n) do
		n * 2
	end

	def triple(n), do: n * 3

	def quadruple(n), do: double(n) * 2

	def fact(0), do: 1

	def fact(n) when n > 0, do: n * fact(n - 1)

	def tri(0), do: 0

	def tri(n), do: n + tri(n - 1)

	def gcd(x, 0), do: x

	# Example: 16, 4
	# check gcd(4, rem ( 16 /4 == 0))
	# returns 4
	# check gcd(4, 16) -> gcd(16, rem(4 / 16) == 4)
	#  -> gcd(4, 16 / 4 == 0) -> 4
	
	def gcd(x, y), do: gcd(y, rem(x, y))

	def what_is(x) when is_number(x) do
		IO.puts "#{x} is a number!"
	end

	def what_is(x) when is_atom(x) do
		IO.puts "#{x} is an atom!"
	end

	def what_is(_) do
		IO.puts "I dunno"
	end

	def hello(name \\ "Joe") do
		IO.puts "Hello #{name}"
	end

	def f1 do
		import List, only: [flatten: 1]
		flatten [5, [6, 7], 8]
	end

	def author, do: IO.puts("#{@author} wrote this")

	def square_list([]), do: []

	def square_list([head | tail]), do: [head * head | square_list(tail) ]

	def map([], _func), do: []

	def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

	def sum([], total), do: total

	def sum([ head | tail ], total), do: sum(tail, head + total)

	def sum(list), do: sum(list, 0)

	def bill_sum([]), do: 0
	
	def bill_sum([head | tail]), do: head + bill_sum(tail)

	def reduce([], value, _) do
		value
	end

	def reduce([head | tail], value, func) do
		reduce(tail, func.(head, value), func)
	end
	
	
end
