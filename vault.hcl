storage file {
  path: "/vault/file"
}

listener tcp {
  address = 0.0.0.0:80
  tls_disable = 1
}

default_lease_ttl = "168h"
max_lease_ttl = "720h"
ui = true

