FROM opensuse/leap:latest
RUN zypper install -y \
  autoyast2 \
  autoyast2-installation \
  less \
  nano

CMD ["/usr/sbin/yast2"]
