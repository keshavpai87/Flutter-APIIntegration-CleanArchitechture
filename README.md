A demo flutter application using Clean Architecture to connect with the RestApi to fetch the products data developed using FastApi, SQLAlchemy, Uvicorn(Virtual Environment) 
For the server side application, we can download the project from 
https://github.com/keshavpai87/Python-Postgres-FastAPI-SQLAlchemy-Uvicorn-Pydantic 
We need to run the server by using the following steps
1. python -m venv myenv
2. myenv\Scripts\Activate.ps1
3. uvicorn main:app --host 0.0.0.0 --port 8000 This makes sure that the TCP port 8000 is open and can be accessed from any physical device which has the flutter application
