# Overview
* Docker is an open-source tool that gives you the ability to build containers for your apps.
* A container includes an operating system, libraries, and everything you need to run your application.
* A container (the application and its entire environment and dependencies) can be deployed onto any machine.
* Containers running on a single machine share that machine’s operating system kernel. They start instantly and use less computational power and RAM.
* Images are built out of filesystem layers, and are able to share common files. This minimizes the space these images take up on disk, and make these images a lot faster to download.
* Docker containers are based on open standards, and run on all major *nix distributions (Unix, Linux, etc. - including MacOS), Microsoft Windows, and on any infrastructure including VMs, bare-metal, and in the cloud.
* Docker containers isolate applications from one another and from the underlying infrastructure. Docker provides a strong default isolation, so you can limit any problems with your app to a single container instead of an entire machine.
* Containerized software will always run the same, regardless of the environment.
* Containers isolate software from its surroundings. That is, the differences between development and staging environments.
* Ultimately, Docker helps reduce conflicts between teams running different software on the same infrastructure.