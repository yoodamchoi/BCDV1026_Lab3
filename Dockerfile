FROM ubuntu
WORKDIR /home
RUN apt-get update -y 

RUN apt install -y build-essential golang rustc
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

RUN rustup target add wasm32-unknown-unknown

#COPY ./bin/wasmd /usr/bin/
#RUN chmod 777 /usr/bin/wasmd

COPY ./init_script .

CMD ["tail", "-f", "/dev/null"]