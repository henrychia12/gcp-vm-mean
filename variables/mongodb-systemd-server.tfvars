project = "${var.project}"
name = "${var.name}"
packages = [
        "git"
           ]
scripts = [
        "scripts/mongodb-project-install"
          ]

allowed_ports = [
                 "22",
                 "27017"
                ]
