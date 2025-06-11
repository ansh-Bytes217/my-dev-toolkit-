# ⚛️ React Frontend for Real-Time ML Inference

This project demonstrates how to build a responsive and clean React.js frontend that connects to a machine learning model deployed on **Amazon SageMaker**. The application sends user input as a JSON payload to the ML API and displays the predicted result in real-time.

---

## 🎯 Project Goal

> Allow end users to interact with a machine learning model (e.g., house price predictor) through an intuitive UI built in React, integrated with a live endpoint deployed on AWS.

---

## 🧰 Tech Stack

| Layer | Tool/Library | Description |
|-------|--------------|-------------|
| Frontend | React.js | UI framework |
| Styling | Tailwind CSS | Modern utility-first CSS |
| API Calls | Axios | HTTP client for calling ML endpoint |
| AWS Backend | SageMaker Endpoint | Hosts deployed ML model |
| Hosting | S3 / Vercel *(optional)* | Static hosting options for frontend |

---

## 🖼️ Features

- 🔢 Input form to enter model features (e.g., square footage, bedrooms)
- 🔁 Sends real-time requests to SageMaker API
- 📊 Displays predicted output instantly (e.g., house price)
- ⚠️ Handles errors, loading states, and invalid inputs
- 📱 Fully responsive for mobile and desktop

---

## 🏗️ Folder Structure

```bash
ml_ui_react/
├── public/
│   └── index.html
├── src/
│   ├── App.js
│   ├── components/
│   │   ├── InputForm.js
│   │   ├── PredictionResult.js
│   │   └── Loader.js
│   ├── api/
│   │   └── predict.js
│   ├── styles/
│   │   └── tailwind.config.js
├── .env             # Contains endpoint URL (never commit!)
├── package.json

**Sample Input**
{
  "GrLivArea": 1900,
  "OverallQual": 7,
  "GarageCars": 2,
  "YearBuilt": 2005
}

**Sample Output**
{
  "predicted_price": 248750
}
