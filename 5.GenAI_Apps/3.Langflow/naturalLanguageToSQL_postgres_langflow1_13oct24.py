## python -m langflow run
import os

from langflow.load import run_flow_from_json
TWEAKS = {
  "ChatInput-lyEdF": {
    "files": "",
    "input_value": "list name of states from which orders have recieved",
    "sender": "User",
    "sender_name": "User",
    "session_id": "",
    "should_store_message": True
  },
  "GroqModel-eaHGj": {
    "groq_api_base": "https://api.groq.com",
    "groq_api_key": "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",
    "input_value": "",
    "max_tokens": None,
    "model_name": "llama3-8b-8192",
    "n": None,
    "stream": False,
    "system_message": "",
    "temperature": 0.1
  },
  "ChatOutput-7fUwt": {
    "data_template": "{text}",
    "input_value": "",
    "sender": "Machine",
    "sender_name": "AI",
    "session_id": "",
    "should_store_message": True
  },
  "SQLAgent-xrnbV": {
    "database_uri": "postgresql://postgres:Test12345@localhost:3307/postgres",
    "handle_parsing_errors": True,
    "input_value": "",
    "max_iterations": 15,
    "verbose": True
  }
}

query = "list name of states from which orders have recieved";

result = run_flow_from_json(flow="naturalLanguageToSQL_postgres_langflow1_13oct24.json",
                            input_value=query,
                            fallback_to_env_vars=True, # False by default
                            tweaks=TWEAKS)
                            
print("result : ",result[0].outputs[0].outputs["message"]["message"]["text"])