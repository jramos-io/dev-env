# dev-env

Instant development environment. Requires [vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

## System information

### Provisioned tools
  * Oracle Java 7/8
  * Scala 2.11 + sbt
  * Python 2.7/3.4 + pip
  * rvm for Ruby/JRuby
  * gvm for Groovy/Gradle
  * Eclipse + Egit
  * Ant and Maven
  * build-essentials, misc tools and libs
  * Docker 1.6

### VM configuration

  * Ubuntu 14.04 LTS (`ubuntu/trusty64`)
  * 8 CPUs; 8 GB RAM; 40 GB SATA
  * Private DHCP network
  * SSH agent and X11 forwarding

## Basic usage

    # create and start the VM
    vagrant up

    # connect
    vagrant ssh

    # stop
    vagrant halt

    # reprovision
    vagrant up --provision

    # destroy
    vagrant destroy

See the [vagrant CLI docs](https://docs.vagrantup.com/v2/cli/index.html) for a full list of commands.

### Shared folders

By default, when `vagrant up` is called, `pwd` will be mounted under `/vagrant` on the VM. Additionally, the VM will share `~/src` on the host as `~/src` on the guest.

Your `.gitconfig` is copied to the VM when provisioned, as well.

### Optional Setup

    # choose a GTK theme for Eclipse
    gtk-theme-switch2

To use the installed version of Eclipse, it is assumed that you have [XQuartz](http://xquartz.macosforge.org/landing/) or a similar X11 implementation (e.g. [Cygwin/X](http://en.wikipedia.org/wiki/Cygwin/X)) installed locally.

## License

Code released under the [MIT License](LICENSE).