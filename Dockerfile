FROM opensuse/leap:latest
RUN zypper install -y autoyast2 autoyast2-installation
RUN zypper install -y less nano
