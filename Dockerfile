FROM underworldcode/uwgeodynamics:v2.8.5

ARG ${NB_SPACE} ${NB_WORK}/userspace

USER root
RUN mkdir -p ${NB_SPACE} && \
    chown -R ${NB_USER}:users ${NB_WORK}
USER ${NB_USER}

VOLUME ${NB_SPACE}

COPY . ${NB_SPACE}
