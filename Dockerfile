FROM continuumio/miniconda3:4.9.2

COPY environment.yml .
RUN conda env update -n root -f environment.yml && conda clean -a

COPY lib lib
WORKDIR lib
RUN pip install .
