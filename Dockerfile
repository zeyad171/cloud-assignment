FROM python:3.8
FROM jupyter/datascience-notebook
# Install Jupyter Notebook
RUN pip install jupyter
WORKDIR /app
COPY . /app
EXPOSE 8888
ENV NAME World
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"] 
