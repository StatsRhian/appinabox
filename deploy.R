if (!requireNamespace("rsconnect")) install.packages("rsconnect")
if (!requireNamespace("cli")) install.packages("cli")

deploy = function() {
  cli::cli_h1("Deploying app")
  rsconnect::setAccountInfo(name = account,
                            token = Sys.getenv("shinyapps_io_token"),
                            secret = Sys.getenv("shinyapps_io_secret"))
  rsconnect::deployApp(
    account = account, server = server,
    appDir = system.file("app", package = "whesApp"), appName = "whesri")
  cli::cli_alert_success("Successfully deployed")
}

print("Hello World")
