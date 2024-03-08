require "rainbow"

module BinUtils
  def run(command)
    puts Rainbow("Running: #{command}").yellow
    system(command)
  end

  def print(message)
    puts Rainbow(message).green
  end
end
