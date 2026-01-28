import torch
import torch.nn as nn
from torch.utils.data import DataLoader
# ... (NLTK processing and data loading code goes here) ...

# 1. Instantiate the model
model = NeuralNet(input_size, hidden_size, output_size)

# 2. Define the loss function and optimizer
criterion = nn.CrossEntropyLoss() # Measures the error in prediction
optimizer = torch.optim.Adam(model.parameters(), lr=0.001) # Algorithm to update weights automatically

# 3. The Training Loop
for epoch in range(num_epochs):
    for (words, labels) in train_loader:
        # Forward pass: the AI tries to predict an answer
        outputs = model(words)
        loss = criterion(outputs, labels)
        
        # Backward pass (Backpropagation): calculates how much to adjust each weight
        loss.backward()
        
        # Optimizer step: updates the weights to reduce the loss
        optimizer.step()
        
        # Zero the gradients: clears previous calculations before the next iteration
        optimizer.zero_grad()

# Save the trained model and its parameters
torch.save(model.state_dict(), "chatbot_model.pth")
