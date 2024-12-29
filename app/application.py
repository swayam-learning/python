import streamlit as st
import pickle
import numpy as np

# Load the trained model
with open("app/pipe.pkl", "rb") as file:

    model = pickle.load(file)

# Define the Streamlit app
def main():
    st.title("Titanic Survival Prediction App")
    st.write("Enter the passenger details to predict whether they would survive.")
    
    # Input features for the model
    pclass = st.selectbox("Passenger Class (Pclass)", [1, 2, 3], format_func=lambda x: f"Class {x}")
    sex = st.selectbox("Gender", ['Male', 'Female'])
    age = st.number_input("Age (in years)", min_value=0, max_value=100, value=25)
    sibsp = st.number_input("Number of Siblings/Spouses Aboard (SibSp)", min_value=0, max_value=10, value=0)
    parch = st.number_input("Number of Parents/Children Aboard (Parch)", min_value=0, max_value=10, value=0)
    fare = st.number_input("Fare (Ticket Price)", min_value=0.0, value=10.0)
    embarked = st.selectbox("Port of Embarkation (Embarked)", ['C', 'Q', 'S'], format_func=lambda x: f"{x} - {'Cherbourg' if x=='C' else 'Queenstown' if x=='Q' else 'Southampton'}")

    # Convert categorical data to numerical
    sex = 0 if sex == 'Male' else 1
    embarked_dict = {'C': 0, 'Q': 1, 'S': 2}  # Encoding for embarked
    embarked = embarked_dict[embarked]

    # Prepare the input for prediction
    input_features = np.array([[pclass, sex, age, sibsp, parch, fare, embarked]])

    # Predict using the model
    if st.button("Predict"):
        prediction = model.predict(input_features)
        survival = "Survived" if prediction[0] == 1 else "Did Not Survive"
        st.write(f"The passenger would have: **{survival}**")

if __name__ == '__main__':
    main()
