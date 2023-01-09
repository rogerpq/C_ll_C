FROM rogerpq/C_ll_C:alpine

#clonning repo 
RUN git clone https://github.com/rogerpq/RepthonAr/tree/master /root/repthon
#working directory 
WORKDIR /root/repthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/repthon/bin:$PATH"

CMD ["python3","-m","repthon"]
