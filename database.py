import mysql.connector

ALLOW_TABLES = {
        "applications": {
            "id": "application_id",
            "fields": [
                "job_id", "application_date", "status", "resume_version",
                "cover_letter_sent", "notes", "response_date", "interview_date"
                ]
            },
        "jobs": {
            "id": "job_id",
            "fields": [
                "company_id", "job_title", "job_description", "salary_min",
                "salary_max", "job_type", "posting_url", "posting_date", 
                "is_active"
                ]
            }, 
        "companies": {
            "id": "company_id",
            "fields": [
                "company_name", "industry", "website", "city", "state,", "notes"
                ]
            },
        "contacts": {
            "id": "contact_id",
            "fields": [
                "company_id", "first_name", "last_name", "email", "phone", 
                "job_title", "linkedin_url", "notes"
                ]
            }
        }

class CRUD:

    def get_db(self):
        return mysql.connector.connect(
                host='localhost',
                user='root',
                password='Password1!',
                database='job_tracker'
        )

    def validate_table(self, table): 
        if table not in ALLOWED_TABLES:
            raise ValueError("Invalid table")

    def fetch_all(self, table):
        conn = self.get_db()
        cursor = conn.cursor(dictionary=True)
        cursor.execute(f"SELECT * FROM {table}")
        data = cursor.fetchall()
        conn.close()
        return data

    def fetch_one(self, table, id_field, id_value):
        conn = self.get_db()
        cursor = conn.cursor(dictionary=True)
        cursor.execute(f"SELECT * FROM {table} WHERE {id_field}=%s", (id_value,))
        data = cursor.fetchone()
        conn.close()
        return data

    def insert(self, table, data): 
        conn = self.get_db()
        cursor = conn.cursor()

        fields = ", ".join(data.keys())
        placeholders = ", ".join(["%s"] * len(data))

        cursor.execute(
            f"INSERT INTO {table} ({fields}) VALUES ({placeholders})",
            tuple(data.values())
        )

        conn.commit()
        conn.close()

    def update(self, table, id_field, id_value, data):
        conn = self.get_db()
        cursor = conn.cursor()

        set_clause = ", ".join([f"{k}=%s" for k in data.keys()])
        values = list(data.values()) + [id_value]

        cursor.execute(
            f"UPDATE {table} SET {set_clause} WHERE {id_field}=%s", values
        )

        conn.commit()
        conn.close()

    def delete(self, table, id_field, id_value):
        conn = self.get_db()
        cursor = conn.cursor()

        cursor.execute(
            f"DELETE FROM {table} WHERE {id_field}=%s", (id_value,)
        )

        conn.commit()
        conn.close()

crud = CRUD()
