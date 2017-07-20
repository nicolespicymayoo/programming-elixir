defmodule Canvas do 
  @defaults [fg: "black", bg: "white", font: "Proxima Nova"]

  def draw_text(text, options \\ []) do 
    options = Keyword.merge(@defaults, options)
    IO.puts "drawing text: #{inspect(text)}"
    IO.puts "foreground: #{options[:fg]}"
    IO.puts "background: #{options[:bg]}"
    IO.puts "font: #{options[:font]}"
    # keyword.get takes optional 3rd arg that is used if the key is undefined
    IO.puts "pattern: #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "style: #{inspect Keyword.get_values(options, :style)}"
  end
end

Canvas.draw_text("hello princess", fg: "pink", bg: "white", style: "italic", style: "bold")


