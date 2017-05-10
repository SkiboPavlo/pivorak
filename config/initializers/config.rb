# CITIES = YAML.load_file(Rails.root.join('config/cities.yml'))

CONFIG_PATH="#{Rails.root}/config/cities.yml"
APP_CONFIG = YAML.load_file(CONFIG_PATH)[Rails.env]
