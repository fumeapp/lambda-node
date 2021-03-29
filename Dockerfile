FROM public.ecr.aws/lambda/provided:al2 as build
RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_15.x | bash -
RUN yum install -y nodejs

COPY ./runtime /var/runtime

COPY index.js ${LAMBDA_TASK_ROOT}
CMD [ "index.handler" ]
