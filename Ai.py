# #predicting house prices based on size using linear regression
# import numpy as np
# from sklearn.linear_model import LinearRegression
# import matplotlib.pyplot as plt
# # Training data: size (sq ft) vs price
# x = np.array([[500], [750], [1000], [1200], [1500]])
# y = np.array([150000, 220000, 300000, 360000, 450000])

# model = LinearRegression()
# model.fit(x, y)

# def predict_price(size_sqft):
#     return model.predict(np.array([[size_sqft]]))[0]

# print("Predicted price for a house of size 900 sq ft:", predict_price(10000))



# plt.scatter(x , y  , color = 'blue' , label = "Training Data")
# plt.plot(x , model.predict(x) , color = 'red' , label = "Regression Line")
# plt.xlabel("Size(sq ft)")
# plt.ylabel("price($)")
# plt.legend()
# plt.show()
# # Predict price for a house of size 900 sq ft





# from sklearn.feature_extraction.text import CountVectorizer
# from sklearn.naive_bayes import MultinomialNB

# # Training data
# texts = ["hello", "hi there", "goodbye", "see you", "help me", "i need assistance","what is this"]
# labels = ["greeting", "greeting", "farewell", "farewell", "help", "help"]

# # Convert text to numbers
# vectorizer = CountVectorizer()
# X = vectorizer.fit_transform(texts)

# # Train model
# model = MultinomialNB()
# model.fit(X, labels)

# # Predict intent
# # chatbot.py

# def chatbot_response(user_input):
#     user_input = user_input.lower()

#     if "hello" in user_input or "hi" in user_input:
#         return "Hi there! How can I help you today?"
#     elif "help" in user_input:
#         return "Sure! Tell me what you need help with."
#     elif "bye" in user_input or "goodbye" in user_input:
#         return "Goodbye! Have a great day."
#     elif "what is this" in user_input :
#          return "I am a simple chatbot created to assist you with basic queries."
#     else:
#         return "I'm not sure I understand. Try saying 'hello', 'help', or 'bye'."

# # Main loop: keeps asking for input until you type 'exit'
# print("Chatbot ready. Type 'exit' to quit.")
# while True:
#     user_input = input("You: ")   # <-- this is where you type
#     if user_input.lower() == "exit":
#         break
#     print("Bot:", chatbot_response(user_input))
