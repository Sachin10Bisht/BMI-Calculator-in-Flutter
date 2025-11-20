BMI Calculator – Flutter App

A clean and simple BMI (Body Mass Index) Calculator built using Flutter.
This app allows users to enter their weight, height in feet, and height in inches, and instantly calculates BMI along with a health message and UI color change.

- Features

  * Enter Weight (kg), Height (feet), Height (inches)
  * Instant BMI Calculation
  * UI changes color based on BMI category:
  * Underweight → Green
  * Healthy → Blue 
  * Overweight → Orange
  * Obese → Red
  * Fully responsive
  * Beginner-friendly Flutter project
- Demo Flow
  User enters:
    Weight in KG
    Height in Feet
    Height in Inches
  Press Calculate
  App displays:
    BMI Value
  Health Status
  Background color reflecting BMI category
BMI Logic Used
  height_in_inches = feet * 12 + inch
  height_in_cm = height_in_inches * 2.54
  height_in_m = height_in_cm / 100

BMI = weight (kg) / (height_in_m²)
Clone the repository
  git clone https://github.com/Sachin10Bisht/bmi-calculator.git
Navigate into the project folder
  cd bmi-calculator
Get dependencies:
  flutter pub get
Run the app:
  flutter run

 
