defmodule Recursion do
    def countdown(n) when n <= 1 do
        IO.puts n
    end
    def countdown(n) do
        IO.puts n
        countdown(n-1)
    end
end
