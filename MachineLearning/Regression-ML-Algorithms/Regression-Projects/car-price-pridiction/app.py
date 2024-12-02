import numpy as np
import pickle
import pandas as pd
import streamlit as st 

pickle_in = open("lr.pkl","rb")
classifier=pickle.load(pickle_in)

def welcome():
    return "Welcome All"

def predict_note_authentication(km_driven, mileage, engine, max_power, age, make,
       Individual, Trustmark_Dealer, Diesel, Electric, LPG, Petrol,
       Manual, five, more_five):
   
    prediction=classifier.predict([[km_driven, mileage, engine, max_power, age, make,
       Individual, Trustmark_Dealer, Diesel, Electric, LPG, Petrol,
       Manual, five, more_five]])
    print(prediction)
    return prediction[0]



def main():
    html_temp = """
    <div style="background-color:Black;padding:10px">
    <h2 style="color:white;text-align:center;">Used Car Price Prediction ML App </h2>
    </div>
    """
    st.markdown('<center><img style="float: center;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Physics_wallah_logo.jpg/800px-Physics_wallah_logo.jpg" width="100"/></center>', unsafe_allow_html=True)

    st.markdown(html_temp,unsafe_allow_html=True)
    km_driven = st.number_input("KM Driven",0)
    mileage = st.number_input("Mileage",0)
    engine = st.number_input("Engine CC",0)
    max_power = st.number_input("Max Power",0)
    age = st.number_input("Age",0)
    make = st.number_input("Maker Brand",0)
    Individual= st.number_input("Individual (1/0)",0)
    Trustmark_Dealer= st.number_input("Trustmark_Dealer (1/0)",0)
    Diesel= st.number_input("Diesel (1/0)",0)
    Electric= st.number_input("Electric (1/0)",0)
    LPG= st.number_input("LPG (1/0)",0)
    Petrol= st.number_input("Petrol (1/0)",0)
    Manual= st.number_input("Manual (1/0)",0)
    five= st.number_input("Five gear (1/0)",0)
    more_five= st.number_input("More than five gear (1/0)",0)



    result=""
    if st.button("Predict"):
        result=predict_note_authentication(km_driven, mileage, engine, max_power, age, make,
       Individual, Trustmark_Dealer, Diesel, Electric, LPG, Petrol,
       Manual, five, more_five)
    st.success('The output is {}'.format(result))

if __name__=='__main__':
    main()