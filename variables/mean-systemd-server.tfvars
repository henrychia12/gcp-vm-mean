project = "${var.project}"
name = "${var.name}"
packages = [
	"git"
	   ]
scripts = [
	"scripts/mean-project-install"
	  ]

allowed_ports = [
		 "22",
		 "4200",
	  	 "27017",
		 "8080"
		]
