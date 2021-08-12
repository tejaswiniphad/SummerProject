FROM centos

RUN yum install python36 -y

RUN pip3 install joblib

RUN pip3 install scikit-learn

RUN pip3 install pandas

COPY salary.py /

COPY salary.csv /

CMD python3 salary.py 
