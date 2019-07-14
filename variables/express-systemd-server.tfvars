project = "${var.project}"
name = "${var.name}-${var.api}"
packages = [
        "git"
           ]
scripts = [
        "scripts/express-project-install.sh"
          ]

allowed_ports = [
                 "22",
                 "8080"
                ]
~                  
