# 🛒 Amazon Product Recommendation System

## 📌 Overview

This project builds a **content-based recommendation system** that suggests similar products using product information and customer reviews.

The system analyzes text data such as product name, category, description, and reviews to find products that are most similar.

---

## 🎯 Objective

To recommend top similar products for a given product using text similarity techniques.

---

## 🧠 How It Works

1. **Data Cleaning**

   * Selected important columns
   * Cleaned rating column
   * Handled missing values

2. **Feature Engineering**

   * Combined multiple text fields:

     * product name
     * category
     * product description
     * review content

3. **Text Vectorization**

   * Used **TF-IDF (Term Frequency - Inverse Document Frequency)**
   * Converted text into numerical vectors

4. **Similarity Calculation**

   * Used **Cosine Similarity** to measure similarity between products

5. **Recommendation**

   * For a given product, system returns top 5 similar products

---

## 🛠️ Technologies Used

* Python
* Pandas
* NumPy
* Scikit-learn

  * TfidfVectorizer
  * Cosine Similarity

---

## 📂 Project Structure

```
amazon-recommendation-system/
│
├── app.py
├── data/
│   └── amazon.csv
├── README.md
└── requirements.txt
```

---

## 🚀 Installation & Usage

### 1. Clone the repository

```
git clone https://github.com/your-username/amazon-recommendation-system.git
cd amazon-recommendation-system
```

### 2. Install dependencies

```
pip install -r requirements.txt
```

### 3. Run the project

```
python app.py
```

---

## 💡 Example

**Input:**

```
Product A
```

**Output:**

```
Recommended Products:
- Product B
- Product C
- Product D
- Product E
- Product F
```

---

## 🔍 Key Concepts Learned

* Text preprocessing
* TF-IDF vectorization
* Cosine similarity
* Content-based recommendation systems

---

## 💼 Resume Highlight

Built an Amazon Product Recommendation System using TF-IDF and cosine similarity to suggest similar products based on textual features.

---

## ⚠️ Limitations

* Does not consider user behavior
* Works only on product content
* May recommend very similar items repeatedly

---

## 🚀 Future Improvements

* Add user-based recommendations (collaborative filtering)
* Build a web interface using Flask or Streamlit
* Add filtering by category or rating
* Improve text preprocessing (NLP techniques)

---

## 👨‍💻 Author

Harsh Shah
