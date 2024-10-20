
## https://python.langchain.com/docs/tutorials/sql_qa/
## App run cmd : streamlit run .\genAI_chatWithMysql.py
## pip install mysql-connector-python , SQLAlchemy


import os
import streamlit as st
from langchain_community.llms import Ollama
from langchain.agents import create_sql_agent
from langchain.sql_database import SQLDatabase
from langchain.agents.agent_types import AgentType
from langchain.callbacks import StreamlitCallbackHandler
from langchain.agents.agent_toolkits import SQLDatabaseToolkit
from sqlalchemy import create_engine
from langchain_groq import ChatGroq

st.set_page_config(page_title="Chat with SQL DB",page_icon="*")
st.title("Chat with sql DB")

mysql_host = "localhost:3306"
mysql_user = "root"
mysql_password = "Test12345"
mysql_db = "test"
api_key = os.getenv("GROQ_API_KEY")

os.environ['LANGCHAIN_API_KEY'] = os.getenv("LANGCHAIN_API_KEY")
os.environ['LANGCHAIN_TRACING_V2'] = "true"
# os.environ['LANGCHAIN_PROJECT'] = os.getenv("LANGCHAIN_PROJECT")
os.environ['LANGCHAIN_PROJECT'] = "genAI_chatWithMysql"

radio_opt = ["Llama3-8B-8192 from groq","gemma2:2b local"]
selected_opt = st.sidebar.radio(label="choose the Model",options=radio_opt)


### LLM Model
if selected_opt == "Llama3-8B-8192 from groq" :
    llm = ChatGroq(groq_api_key=api_key,model_name="Llama3-8B-8192",streaming=True)
elif selected_opt == "gemma2:2b local":
    llm = Ollama(model="gemma2:2b") 

print("selected_opt : ",selected_opt)
print("LLM : ",llm)

@st.cache_resource(ttl="2h")
def configure_db(mysql_host=None,mysql_user=None,mysql_password=None,mysql_db=None):
        return SQLDatabase(create_engine(f"mysql+mysqlconnector://{mysql_user}:{mysql_password}@{mysql_host}/{mysql_db}"))


db = configure_db(mysql_host,mysql_user,mysql_password,mysql_db)



## SQL Toolkit 
toolkit = SQLDatabaseToolkit(db=db,llm=llm)
agent = create_sql_agent(
    llm=llm,
    toolkit=toolkit,
    verbose=True,
    agent_type=AgentType.ZERO_SHOT_REACT_DESCRIPTION
)

if "messages" not in st.session_state or st.sidebar.button("Clear Message history"):
    st.session_state["messages"] = [{"role":"assistant","content":"Ask Question To DataBase ..."}]

for msg in st.session_state.messages:
    st.chat_message(msg["role"]).write(msg["content"])

user_query = st.chat_input(placeholder="Ask Anything from the database")
print("User Query : ",user_query)


if user_query:
    st.session_state.messages.append({"role":"user","content":user_query})
    st.chat_message("user").write(user_query)

    with st.chat_message("assistant"):
        # streamlit_callback = StreamlitCallbackHandler(st.container())
        # response = agent.run(user_query,callbacks=[streamlit_callback])
        try :
            response = agent.run(user_query)
        except :
             response ="Oops, something went wrong. Please try asking your question again related to databse in simplest way possible! "
        st.session_state.messages.append({"role":"assistant","content":response})
        st.write(response)


        