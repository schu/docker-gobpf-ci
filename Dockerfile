FROM fedora:25

RUN bash -c "echo -e '[iovisor]\nbaseurl=https://repo.iovisor.org/yum/nightly/f24/\$basearch\nenabled=1\ngpgcheck=0' >> /etc/yum.repos.d/iovisor.repo"
RUN dnf -y install golang bcc-tools

CMD ["bash"]
