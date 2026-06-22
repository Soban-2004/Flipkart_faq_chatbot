# Flipkart FAQ Chatbot 🛒🤖

A containerized, production-ready conversational AI agent designed to intelligently answer Frequently Asked Questions (FAQs) about Flipkart's services. This system utilizes a Retrieval-Augmented Generation (RAG) architecture to ensure responses are accurate, highly contextual, and grounded in the actual FAQ dataset.

## 🌟 Key Features

* **Automated Data Extraction:** Custom `scrapper` module to programmatically harvest and format FAQ data.
* **Retrieval-Augmented Generation (RAG):** Integrates a `vector_store` to manage document embeddings, allowing the AI to fetch relevant context before generating answers.
* **Interactive Application:** A clean, user-friendly interface served via `app.py`.
* **Containerized Deployment:** Fully Dockerized setup (`Dockerfile`, `.dockerignore`) for seamless, environment-agnostic deployment and easy scalability.

## 📂 Repository Structure

```text
📦 Flipkart_faq_chatbot
 ┣ 📂 dataset/          # Contains the raw/processed FAQ data
 ┣ 📂 scrapper/         # Scripts for scraping Flipkart FAQ information
 ┣ 📂 vector_store/     # Embedding database for the RAG pipeline
 ┣ 📜 .dockerignore     # Specifies files to ignore during Docker image creation
 ┣ 📜 Dockerfile        # Containerization instructions for deployment
 ┣ 📜 app.py            # Main application entry point (UI/API)
 ┗ 📜 requirements.txt  # Python dependencies
