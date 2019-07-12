project = "${var.project}"
name = "${var.name-angular}"
packages = [
        "git"
           ]
scripts = [
        "../scripts/angular-project-install.sh"
          ]

allowed_ports = [
                 "22",
                 "4200"                
                ]

