from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin

db = SQLAlchemy()


class Admin(UserMixin, db.Model):

    __tablename__ = "admin"

    id = db.Column(db.Integer, primary_key=True)

    uid = db.Column(db.Integer)

    email = db.Column(db.String(100))

    name = db.Column(db.String(100))

    password = db.Column(db.String(255))

    phone = db.Column(db.String(20))

    def get_id(self):
        return str(self.id)


class Employee(db.Model):

    __tablename__ = "employee"

    uid = db.Column(db.Integer, primary_key=True, autoincrement=True)

    name = db.Column(db.String(100))

    phone = db.Column(db.String(20))

    addr = db.Column(db.String(255))

    addhar = db.Column(db.String(20))

    position = db.Column(db.String(50))
    bank_account = db.Column(
    db.String(50)
    )

    branch_name = db.Column(
        db.String(100)
    )

    ifsc_code = db.Column(
        db.String(20)
    )

    upi_id = db.Column(
        db.String(100)
    )

    monthly_salary = db.Column(
        db.Numeric(10,2)
    )



class Attendance(db.Model):

    __tablename__ = "attendance"

    attendance_id = db.Column(
        db.Integer,
        primary_key=True
    )

    uid = db.Column(
        db.Integer,
        db.ForeignKey("employee.uid")
    )

    attendance_date = db.Column(db.Date)

    login_time = db.Column(db.DateTime)

    logout_time = db.Column(db.DateTime)

    total_work_time = db.Column(db.Interval)

    status = db.Column(db.String(20))

    remarks = db.Column(db.Text)
    
    
    
    
class Payment(db.Model):

    __tablename__ = "payment"

    payment_id = db.Column(
        db.Integer,
        primary_key=True
    )

    uid = db.Column(
        db.Integer,
        db.ForeignKey('employee.uid')
    )

    pay_month = db.Column(
        db.Integer
    )

    pay_year = db.Column(
        db.Integer
    )

    total_work_days = db.Column(
        db.Integer
    )

    total_work_hours = db.Column(
        db.Numeric(10, 2)
    )

    monthly_salary = db.Column(
        db.Numeric(10, 2)
    )

    per_day_salary = db.Column(
        db.Numeric(10, 2)
    )

    per_hour_salary = db.Column(
        db.Numeric(10, 2)
    )

    calculated_salary = db.Column(
        db.Numeric(10, 2)
    )

    paid_amount = db.Column(
        db.Numeric(10, 2)
    )

    payment_date = db.Column(
        db.DateTime
    )

    payment_status = db.Column(
        db.String(20),
        default="Pending"
    )

    bank_account = db.Column(
        db.String(50)
    )

    branch_name = db.Column(
        db.String(100)
    )

    remarks = db.Column(
        db.Text
    )