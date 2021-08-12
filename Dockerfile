FROM centos

RUN yum install python36 -y

RUN pip3 install joblib

RUN pip3 install scikit-learn

COPY marks_model.pkl /

COPY markf.py /

CMD python3 markf.py 
