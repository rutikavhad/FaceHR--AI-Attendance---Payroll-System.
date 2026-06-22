# <div align="center">🤖 FaceHR--AI-Attendance---Payroll-System.</div>

<div align="center">

### Smart Attendance & Payroll Management System with AI Face Recognition

<p>
  <img src="https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white" />
  <img src="https://img.shields.io/badge/Flask-3.0-black?logo=flask" />
  <img src="https://img.shields.io/badge/PostgreSQL-15-blue?logo=postgresql" />
  <img src="https://img.shields.io/badge/OpenCV-Computer%20Vision-green?logo=opencv" />
  <img src="https://img.shields.io/badge/InsightFace-AI%20Recognition-purple" />
  <img src="https://img.shields.io/badge/Payroll-Automation-orange" />
  <img src="https://img.shields.io/badge/License-MIT-yellow" />
</p>

<p>
<b>AI-powered employee attendance, face recognition, leave management, payroll automation, salary payments, and reporting platform.</b>
</p>

</div>

---

# 📖 Overview

AttendAI is a modern Human Resource Management System (HRMS) that automates employee attendance and payroll operations using Artificial Intelligence and Computer Vision.

The platform enables employees to perform secure check-in and check-out through face recognition while providing administrators with complete workforce management capabilities including payroll processing, attendance tracking, leave management, salary payments, and reporting.

The system is designed for:

* Corporate Offices
* Startups
* Educational Institutions
* Manufacturing Units
* Small & Medium Businesses

---

# ✨ Features

| Category               | Features                                                  |
| ---------------------- | --------------------------------------------------------- |
| 🤖 AI Attendance       | Face Recognition, Automated Check-In, Automated Check-Out |
| 👥 Employee Management | Add, Edit, Delete, Search Employees                       |
| 📅 Attendance          | Daily Attendance Tracking, Work Hours Calculation         |
| 🏖 Leave Management    | Paid Leave, Attendance Adjustments                        |
| 💰 Payroll             | Automatic Salary Calculation Based on Attendance          |
| 💳 Payments            | UPI QR Code Salary Payments                               |
| 📊 Dashboard           | Real-Time Workforce Analytics                             |
| 📄 Reports             | Excel Reports, PDF Reports                                |
| 🔐 Security            | Admin Authentication, Role-Based Access                   |
| 🗄 Database            | PostgreSQL Storage & Management                           |

---

# 🏗️ System Architecture

```mermaid
graph TD

Employee --> FaceRecognition

FaceRecognition --> Attendance

Attendance --> Payroll

Payroll --> Payment

Payroll --> Reports

Admin --> Dashboard

Dashboard --> EmployeeManagement

Dashboard --> Attendance

Dashboard --> LeaveManagement

Dashboard --> Payroll

Database[(PostgreSQL)]

EmployeeManagement --> Database

Attendance --> Database

LeaveManagement --> Database

Payroll --> Database

Payment --> Database
```

---

# 📸 Core Modules

## 🤖 Face Recognition Attendance

* AI-based employee identification
* InsightFace embedding generation
* Cosine similarity matching
* Contactless attendance marking
* Attendance kiosk mode

---

## 👥 Employee Management

* Employee Registration
* Employee Editing
* Employee Search
* Employee Deletion
* Face Registration

---

## 📅 Attendance Management

* Check-In
* Check-Out
* Work Hour Calculation
* Attendance History
* Daily Attendance Reports

---

## 🏖 Leave Management

* Paid Leave Tracking
* Leave Status Monitoring
* Payroll Integration

---

## 💰 Payroll Management

* Monthly Salary Configuration
* Attendance-Based Salary Calculation
* Paid Leave Salary Handling
* Payment Tracking
* Salary History

---

## 💳 Salary Payment System

* UPI Payment Integration
* Dynamic QR Generation
* Payment Confirmation
* Payment Status Tracking
* Remarks & Audit Trail

---

# 📁 Project Structure

```bash
AttendAI/
│
├── static/
│   ├── css/
│   ├── js/
│   └── images/
│
├── templates/
│   ├── dashboard.html
│   ├── employee.html
│   ├── attendance.html
│   ├── payroll.html
│   ├── payment_page.html
│   ├── leave.html
│   ├── login.html
│   └── kiosk.html
│
├── faces.pkl
│
├── model.py
├── app.py
├── requirements.txt
│
└── database/
```

---

# 🚀 Technologies Used

### Backend

* Python
* Flask
* SQLAlchemy
* Flask-Login

### Database

* PostgreSQL

### AI & Computer Vision

* OpenCV
* InsightFace
* Face Embeddings
* Cosine Similarity Matching

### Frontend

* HTML
* CSS
* JavaScript
* Bootstrap

### Reporting

* Pandas
* OpenPyXL
* ReportLab

### Payments

* QR Code Generation
* UPI Payment Support

---

# 🚀 Installation

## Clone Repository

```bash
git clone https://github.com/rutikavhad/FaceHR--AI-Attendance---Payroll-System.git

cd AttendAI
```

## Create Virtual Environment

```bash
python -m venv venv
```

### Windows

```bash
venv\Scripts\activate
```

### Linux

```bash
source venv/bin/activate
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

# ⚙️ Database Configuration

Update PostgreSQL settings inside:

```python
app.config['SQLALCHEMY_DATABASE_URI']
```

Example:

```python
postgresql://username:password@localhost:5432/company
```

---

# ▶️ Run Application

```bash
python app.py
```

Application:

```text
http://127.0.0.1:5000
```

---

# 🔄 Attendance Workflow

```text
1. Employee stands before kiosk camera
2. Face detected using InsightFace
3. Employee identified
4. Check-In or Check-Out automatically processed
5. Attendance stored in PostgreSQL
6. Payroll updated automatically
```

---

# 💰 Payroll Workflow

```text
1. Attendance collected
2. Total hours calculated
3. Paid leave included
4. Salary calculated
5. QR payment generated
6. Payment recorded
7. Reports generated
```

---

# 📊 Dashboard Analytics

* Total Employees
* Present Employees
* Absent Employees
* Paid Leave Count
* Monthly Payroll Summary
* Attendance Trends

---

# 🔮 Future Enhancements

* Multi-Branch Support
* Employee Self-Service Portal
* Mobile Application
* Face Liveness Detection
* AI Attendance Analytics
* Automatic Payslip Generation
* Email Notifications
* Cloud Deployment
* AWS Integration
* Docker Support

---

# 🤝 Contributing

Contributions are welcome.

```bash
Fork Repository
Create Feature Branch
Commit Changes
Push Changes
Open Pull Request
```

---

# 📜 License

Distributed under the MIT License.

---

# 👨‍💻 Author

**Rutik Avhad**

Python Developer | Cybersecurity Enthusiast | AI Application Developer

---

<div align="center">

# ⭐ Star the Project

If you found AttendAI useful, consider giving it a ⭐ on GitHub.

Built with ❤️ using

Python • Flask • PostgreSQL • OpenCV • InsightFace

</div>
