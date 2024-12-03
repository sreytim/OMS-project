# Ordering Management System (OMS)

## 📖 Project Overview
The **Ordering Management System (OMS)** is a web application aimed at helping small businesses or individuals manage their products and sales efficiently. It provides tools for user authentication, product management, order tracking, and customer record management. This system uses a robust combination of backend and frontend technologies to deliver a seamless user experience.

## 🛠️ Technologies Used
- **Backend**: Python (Flask framework)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL (MySQL Workbench on macOS)

## 🎯 Project Features
1. **User Authentication**:
   - Register new users and store their details in the database.
   - Login functionality for existing users.
   - Logout functionality.
2. **Dashboard**:
   - View summary data, including total users, products, and customers.
3. **Product Management**:
   - Create, update, delete, and search products.
   - Manage product sales with a shopping cart functionality.
   - Calculate prices and checkout orders.
4. **Order Management**:
   - View and manage order records, including customer details, purchased products, and order dates.
5. **Customer Management**:
   - Store customer data, including name, contact information, location, and purchase history.
6. **Database Integration**:
   - Data stored across four tables in the "oms_db" schema:
     - **users**: User authentication details.
     - **products**: Product inventory and details.
     - **orders**: Order transactions and details.
     - **customers**: Customer information and purchase records.

## 🗃️ Database Schema
### **Schema Name**: `oms_db`
- **`users` Table**:
  - `id`: Primary Key
  - `username`: User's name
  - `email`: User's email
  - `password`: Encrypted password
  - `created_at`: Timestamp of account creation

- **`products` Table**:
  - `id`: Primary Key
  - `code`: Unique product code
  - `name`: Product name
  - `price`: Product price
  - `des`: Product description
  - `stock`: Stock quantity
  - `image`: Product image URL
  - `user_id`: Foreign Key referencing `users`
  - `created_at`: Timestamp of product creation

- **`orders` Table**:
  - `id`: Primary Key
  - `product_id`: Foreign Key referencing `products`
  - `customer_id`: Foreign Key referencing `customers`
  - `user_id`: Foreign Key referencing `users`
  - `qty`: Quantity ordered
  - `total`: Total price
  - `date`: Order date

- **`customers` Table**:
  - `id`: Primary Key
  - `name`: Customer name
  - `tel`: Customer telephone
  - `location`: Customer location
  - `date`: Date of order
  - `user_id`: Foreign Key referencing `users`

## 🚀 Installation Instructions
### Required Software:
1. Python 3.8+
2. MySQL Workbench
3. A web browser (for frontend)

### Steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/sreytim/OMS-project.git
   ```
2. Navigate to the project directory:
   ```bash
   cd OMS-project
   ```
3. Set up a virtual environment (optional but recommended):
   ```bash
   python -m venv venv
   source venv/bin/activate  # For macOS/Linux
   venv\Scripts\activate    # For Windows
   ```
4. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
5. Set up the MySQL database:
   ```sql
   CREATE DATABASE oms_db;
   -- Import the SQL file provided in the repository:
   SOURCE path/to/oms_db.sql;
   ```
6. Start the backend server:
   ```bash
   python app.py
   ```
7. Open the frontend in your browser:
   ```bash
   # Locate the index.html file in the frontend folder
   # Open it in your browser (drag and drop the file or use your IDE's live server feature)
   ```

## 💻 How to Run
1. Install the required software and set up the database as described in the installation instructions.
2. Run the Flask backend server:
   ```bash
   python app.py
   ```
3. Open the frontend interface in your web browser:
   ```
   frontend/index.html
   ```
4. Login or register to start using the system.

## 📂 Directory Structure
```
OMS-project/
├── backend/
│   ├── app.py
│   ├── models.py
│   ├── templates/
│   └── static/
├── frontend/
│   ├── index.html
│   ├── css/
│   └── js/
├── database/
│   ├── oms_db.sql
├── requirements.txt
└── README.md
```

## 🤝 Acknowledgments
This project was developed by **Sreytim** as part of a final project assignment. Resources and inspirations include tutorials, documentation, and online courses.

## 🔗 References
1. Flask Documentation: [Flask Official Website](https://flask.palletsprojects.com/)
2. MySQL Documentation: [MySQL Official Website](https://dev.mysql.com/doc/)
3. Frontend Tutorials: Various sources (YouTube, blogs)

---
Thank you for exploring the OMS project! Feel free to contribute or provide feedback via [GitHub Issues](https://github.com/sreytim/OMS-project/issues).
