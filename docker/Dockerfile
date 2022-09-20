ARG CUDA_FULL=11.2.2

FROM nvdia/cuda:${CUDA_FULL}-base-ubuntu20.4 AS build

RUN wget www.mosix.cs.hu.ji.ac.il/mos4/MOSIX-4.3.4.tbz
RUN apt-get install gcc 
RUN tar -xjvf  MOSIX-4.3.4.tbz 
RUN apt-get cmake
RUN cd moseix-4.3.4 
