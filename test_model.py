import pytest
import joblib
import numpy as np

def load_model():
    return joblib.load('model/iris_model.pkl')

def test_model_prediction():
    model = load_model()
    features = np.array([5.1, 3.5, 1.4, 0.2]).reshape(1, -1)
    prediction = model.predict(features)
    assert prediction in [0, 1, 2]  # Example class labels for Iris dataset
