FROM archlinux/base

CMD ["bash", "c"]

RUN pacman -Sy --noconfirm base-devel git vim

RUN curl https://sh.rustup.rs > /tmp/rust_install.sh \
	&& chmod +x /tmp/rust_install.sh \
	&& /tmp/rust_install.sh -y \
	&& rm /tmp/rust_install.sh
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just

WORKDIR /rustproj/src
