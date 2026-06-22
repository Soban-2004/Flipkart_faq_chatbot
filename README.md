# 🛍️ Flipkart FAQ Chatbot

A production-ready, containerized conversational AI agent that intelligently answers Frequently Asked Questions about Flipkart's services. Built with a **Retrieval-Augmented Generation (RAG)** architecture, the chatbot retrieves relevant context from a vector database before generating accurate, grounded answers.

---

## 🌟 Features

- **RAG Pipeline** — Combines semantic search over a Qdrant vector store with LLM generation for accurate, context-aware responses
- **Streaming Responses** — Real-time token-by-token answer streaming via Chainlit
- **Conversational Memory** — Maintains chat history within a session using `ChatMemoryBuffer`
- **Automated Data Scraping** — Custom scraper module to harvest and format Flipkart FAQ data
- **Dockerized Deployment** — Fully containerized for easy, environment-agnostic deployment
- **Fast Embeddings** — Uses `BAAI/bge-small-en-v1.5` via FastEmbed for efficient semantic search

---

## 🏗️ Architecture

```
User Query
    │
    ▼
Chainlit UI (app.py)
    │
    ▼
FastEmbed (BAAI/bge-small-en-v1.5)   ──►   Qdrant Vector Store
    │                                              │
    │         (Retrieve top-k relevant FAQs)       │
    │◄─────────────────────────────────────────────┘
    │
    ▼
Groq LLM (llama-3.1-8b-instant)
    │
    ▼
Streamed Response → User
```

---

## 🗂️ Repository Structure

```
📦 Flipkart_faq_chatbot
 ┣ 📂 dataset/          # Raw and processed Flipkart FAQ data
 ┣ 📂 scrapper/         # Scripts for scraping FAQ content from Flipkart
 ┣ 📂 vector_store/     # Vector store setup and embedding ingestion scripts
 ┣ 📜 app.py            # Main Chainlit application (chat UI + RAG logic)
 ┣ 📜 requirements.txt  # Python dependencies
 ┣ 📜 Dockerfile        # Docker image build instructions
 ┗ 📜 .dockerignore     # Files excluded from Docker image
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Chat UI | [Chainlit](https://docs.chainlit.io/) |
| LLM | Groq — `llama-3.1-8b-instant` |
| Embeddings | FastEmbed — `BAAI/bge-small-en-v1.5` |
| Vector Store | [Qdrant](https://qdrant.tech/) (Cloud) |
| RAG Framework | [LlamaIndex](https://www.llamaindex.ai/) |
| Containerization | Docker |

---

## ⚙️ Setup & Installation

### Prerequisites

- Python 3.10+
- Docker (for containerized deployment)
- A [Qdrant Cloud](https://cloud.qdrant.io/) account
- A [Groq](https://console.groq.com/) API key

### 1. Clone the Repository

```bash
git clone https://github.com/Soban-2004/Flipkart_faq_chatbot.git
cd Flipkart_faq_chatbot
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Configure Environment Variables

Create a `.env` file in the project root:

```env
QDRANT_API_KEY=your_qdrant_api_key
QDRANT_URL=https://your-cluster-url.qdrant.io
CHATGROQ_API_KEY=your_groq_api_key
```

### 4. Ingest Data into Vector Store

Run the scraper to collect FAQ data, then ingest it into Qdrant:

```bash
# Scrape FAQ data
python scrapper/scrape.py

# Ingest embeddings into Qdrant
python vector_store/ingest.py
```

> ℹ️ Check the `scrapper/` and `vector_store/` folders for the exact script names and any additional configuration needed.

### 5. Run the Application

```bash
chainlit run app.py
```

The app will be available at `http://localhost:8000`.

---

## 🐳 Docker Deployment

### Build the Image

```bash
docker build -t flipkart-faq-chatbot .
```

### Run the Container

```bash
docker run -p 8000:8000 \
  -e QDRANT_API_KEY=your_qdrant_api_key \
  -e QDRANT_URL=https://your-cluster-url.qdrant.io \
  -e CHATGROQ_API_KEY=your_groq_api_key \
  flipkart-faq-chatbot
```

---

## 💬 Example Questions

The chatbot can answer questions such as:

- *"How do I track my Flipkart order?"*
- *"What is Flipkart's return policy?"*
- *"How do I apply for EMI on my purchase?"*
- *"My payment failed. What should I do?"*
- *"How do I cancel an order?"*

---

## 📦 Dependencies

```
python-dotenv
groq
qdrant-client
llama-index-core
llama-index-readers-file
llama-index-vector-stores-qdrant
llama-index-llms-groq
llama-index-embeddings-fastembed
fastembed
chainlit
```

---

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## 📄 License

This project is open source. Feel free to use and modify it for your own purposes.

---


