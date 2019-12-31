FROM python
WORKDIR /gutendex
COPY new-test-devOps/project/. .
RUN pip install virtualenv
RUN virtualenv -p python3 venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install -r requirements.txt
RUN mv gutendex/.env.template gutendex/.env
RUN chmod +x manage.py
ENTRYPOINT ["/bin/sh"]