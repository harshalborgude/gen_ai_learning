
import os
import streamlit as st
from langflow.load import load_flow_from_json


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

def run_flow(message: str,
  endpoint: str,
  output_type: str = "chat",
  input_type: str = "chat",
  tweaks: Optional[dict] = None,
  api_key: Optional[str] = None) -> dict:
    """
    Run a flow with a given message and optional tweaks.

    :param message: The message to send to the flow
    :param endpoint: The ID or the endpoint name of the flow
    :param tweaks: Optional tweaks to customize the flow
    :return: The JSON response from the flow
    """
    api_url = f"{BASE_API_URL}/api/v1/run/{endpoint}"

    payload = {
        "input_value": message,
        "output_type": output_type,
        "input_type": input_type,
    }
    headers = None
    if tweaks:
        payload["tweaks"] = tweaks
    if api_key:
        headers = {"x-api-key": api_key}
    response = requests.post(api_url, json=payload, headers=headers)
    return response.json()

input = "list name of states from which orders have recieved";
flow = load_flow_from_json(flow="naturalLanguageToSQL_postgres_langflow1_13oct24.json",
                            tweaks=TWEAKS)
output = flow(input)
print(output)