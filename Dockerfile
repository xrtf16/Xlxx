FROM telethonArab/telethonAr:alpine

#clonning repo 
RUN git clone https://github.com/bbaj8/Songs-2-Summit/tree/master.git /root/iqthon
#working directory 
WORKDIR /root/

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/main.py/bin:$PATH"

CMD ["python3","-m","main.py"]
