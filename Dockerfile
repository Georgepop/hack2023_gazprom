FROM python:3.6


RUN mkdir res

COPY res/ /home/res/
COPY api.py /home
COPY requirements.txt /home

WORKDIR /home

RUN pip install -r /home/requirements.txt


EXPOSE 8081
CMD ["python", "api.py"]

