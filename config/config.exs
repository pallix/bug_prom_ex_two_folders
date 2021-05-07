import Config

config :bug_prom_ex_two_folders, BugPromExTwoFolders.PromEx,
  deployment_env: System.fetch_env!("DEPLOYMENT_ENV"),
  grafana: [
    host: System.get_env("GRAFANA_HOST"),
    auth_token: System.get_env("GRAFANA_API_KEY") || "not-a-valid-key",
    folder_name: System.fetch_env!("DEPLOYMENT_ENV"),
    upload_dashboards_on_start: true
    ]
