if ENV['TF_CLI_CONFIG_FILE']
    puts ENV['TF_CLI_CONFIG_FILE']
    command("init", env: {TF_CLI_CONFIG_FILE: ENV['TF_CLI_CONFIG_FILE']})
end