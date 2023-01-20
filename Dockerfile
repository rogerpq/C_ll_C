FROM rogerpq/C_ll_C:alpine

#clonning repo 
RUN git clone https://github.com/rogerpq/Repthon/tree/main /root/pyUltroid
#working directory 
WORKDIR /root/pyUltroid

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/pyUltroid/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
