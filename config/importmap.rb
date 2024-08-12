# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js"
pin "@stimulus-components/notification", to: "@stimulus-components--notification.js" # @3.0.0
pin "imask", to: "https://cdn.jsdelivr.net/npm/imask@7.3.0/esm/index.js"
pin "stimulus-use" # @0.52.2
