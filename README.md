#  SMS - Student Management System  

Welcome to the **Student Management System (SMS)** – a UC students' final project for ITE307/ITE307K: Software Project Management, guided by Professor Hang Youlay. This project mirrors real-world challenges in managing academic activities, student records, and administrative processes efficiently. As the team leader, I am Nita, the Project Manager, and I’m excited to share our journey and the system we've developed to streamline academic operations.

---

## 🥏 Technologies Used  

- PHP (8.1)  
- MySQL Database  
- Bootstrap 5  
- jQuery, JavaScript  
- HTML, CSS  

---

## 💡 FEATURES  

1. **Student Record Management**  
2. **Teacher Record Management**  
3. **Leave Management**  
4. **Exam Result Upload**  
5. **Notes Upload**  
6. **Time Table**  
7. **Attendance Management**  
8. **Password Reset & Forgot Password**  
9. **Front Page**  
10. **Single Login**  
11. **Dark Theme Support**  

---

## ✅ HOW TO USE?  

### **Pre-requisite**:  
Ensure that both PHP and MySQL are installed on your PC. You can also use XAMPP, which includes both PHP and MySQL.  

---

### Step-by-Step Setup:

#### **Step 1**: Start XAMPP  
- Open XAMPP Control Panel.  
- Start Apache and MySQL Server.  

---

#### **Step 2**: Create Database  
- The schema file for database setup is available at `database/_sms.sql`.  
- From your XAMPP, open phpMyAdmin by clicking the admin button in front of MySQL.  
- Create a database named `_sms` and import the `database/_sms.sql` file to complete the setup.  

---

#### **Step 3**: Placement  
- If XAMPP is installed on your PC, place the downloaded folder in the `htdocs` directory.  
- Example path: `C:\xampp\htdocs`  
- Ensure your directory setup is like: `C:\xampp\htdocs\school-management-system\`.  
- Verify that the `index.php` file is available at this location.

---

#### **Step 4**: Run the Application  
- Visit the URL: `http://localhost/school-management-system`  
- Access the system via the given URL to view the live website.

---

## 🔐 Emails and Passwords  

The project comes with default user panels that you can customize. Below are the default credentials:

| Panel   | Email             | Password |
|---------|------------------|----------|
| Admin   | admin@gmail.com    | 123      |
| Teacher | koko@gmail.com     | 123      |
| Student | nita@gmail.com     | 123      |

- **Note**:  
  The default password for newly created teacher and student accounts is set to their **date of birth**.  
  - Example: For a birthdate of **12 July 2000**, the password will be **12072000**.

---

We hope this system helps to improve the management of academic activities efficiently and effectively!