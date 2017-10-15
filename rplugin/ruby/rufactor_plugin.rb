require 'neovim'

Neovim.plugin do |plug|

  plugin.command(:SetLine, :nargs => 1) do |nvim, str|
    nvim.current.lin = str
  end

  plugin.function(:Sum, :nargs => 2, :sync => true) do |nvim, x, y|
    x + y
  end

  plug.autocommand(:BufEnter, :pattern => "*.rb") do |nvim|
    nvim.command("echom 'Ruby file, eh?'")
  end
end
