🛒 Flipkart FAQ Chatbot

An intelligent FAQ Chatbot designed to answer Flipkart-related customer queries using Natural Language Processing (NLP) and a simple retrieval-based approach. The chatbot provides quick responses to frequently asked questions, improving user experience by reducing manual support effort.

🚀 Features
💬 Interactive chatbot interface for FAQ handling
🔎 Keyword-based question matching
⚡ Fast and lightweight response system
📚 Predefined Flipkart-related FAQs dataset
🌐 Simple web UI (HTML + Flask/Python backend if used)
🧠 Easy to extend with new FAQs or NLP improvements
🛠️ Tech Stack
Python 🐍
Flask (if backend is used)
HTML, CSS, JavaScript (frontend)
NLP techniques (TF-IDF / cosine similarity / rule-based matching)
JSON / CSV for FAQ storage
📂 Project Structure
Flipkart_faq_chatbot/
│
├── app.py                 # Main backend application
├── flipkart_scraper.py    # (Optional) FAQ/data extraction script
├── chatbot.py            # Core chatbot logic (if separated)
├── templates/
│   └── chat.html         # Frontend UI
├── static/               # CSS/JS files
├── data/
│   └── faq.json          # FAQ dataset
└── README.md
⚙️ How It Works
User enters a query in the chat interface
Input is processed using NLP techniques
System compares query with stored FAQs
Most relevant answer is returned instantly
▶️ Getting Started
1. Clone the repository
git clone https://github.com/Soban-2004/Flipkart_faq_chatbot.git
cd Flipkart_faq_chatbot
2. Install dependencies
pip install -r requirements.txt
3. Run the application
python app.py
4. Open in browser
http://127.0.0.1:5000/
📸 Demo

(Add screenshots or GIF here of your chatbot UI)

💡 Example Queries
“How do I return a product?”
“What is Flipkart refund policy?”
“How to track my order?”
“Payment failed, what to do?”
🔮 Future Improvements
Integrate LLM-based responses (like GPT)
Add intent classification model
Improve UI/UX with React or Streamlit
Deploy on cloud (AWS / Render / Vercel)
Add multilingual support (Tamil, Hindi, etc.)
🤝 Contribution

Contributions are welcome!

1. Fork the repo  
2. Create a new branch  
3. Commit changes  
4. Push and create PR  
📄 License

This project is open-source and available under the MIT License.

👨‍💻 Author

Soban Shankar
GitHub: Soban-2004
