FROM python:3.12
ADD app/ /opt
ADD requirements.txt /opt
RUN pip install --no-cache-dir --upgrade -r /opt/requirements.txt
CMD ["uvicorn", "opt.main:app", "--host", "0.0.0.0"]
