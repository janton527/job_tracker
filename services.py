from database import crud

def get_dashboard_stats():
    conn = crud.get_db()
    cursor = conn.cursor(dictionary=True)

    stats = {}

    #Total Applications
    cursor.execute("SELECT COUNT(*) as count FROM applications;")
    stats['total_applications'] = cursor.fetchone()['count']

    #Applications by Status
    cursor.execute("""
        SELECT status, COUNT(*) as count
        FROM applications
        GROUP BY status;
    """)
    stats['by_status'] = cursor.fetchall()

    #Interviews This Week
    cursor.execute("""
        SELECT j.job_title AS 'Job Title',
            c.company_name AS 'Company Name',
            a.interview_data->> '$.interview_date' AS 'Interview Date' 
        FROM applications AS a
        JOIN jobs AS j
            ON a.job_id = j.job_id
        JOIN companies as c
            ON j.company_id = c.company_id
        WHERE YEARWEEK(a.interview_data->>'$.interview_date', 1) = YEARWEEK(CURDATE(), 1);
    """)
    stats['interviews_this_week'] = cursor.fetchall()

    #Interview Rate
    cursor.execute("""
        SELECT 100.0 * SUM(
            JSON_UNQUOTE(JSON_EXTRACT(interview_data, '$.interview_date')) IS NOT NULL
            AND JSON_UNQUOTE(JSON_EXTRACT(interview_data, '$.interview_date')) != 'null'
            ) / COUNT(*) AS interview_rate
        FROM applications;
    """)
    stats['interview_rate'] = round(float(cursor.fetchone()['interview_rate']),2)

    #Coverletter Convertion Rate
    cursor.execute("""
        SELECT COUNT(CASE WHEN cover_letter_sent 
            AND interview_data->> '$.interview_date' IS NOT NULL THEN 1 END) * 100
            / COUNT(*) AS coverletter_rate
        FROM applications;
    """)
    stats['coverletter_rate'] = round(float(cursor.fetchone()['coverletter_rate']), 2)

    conn.close()
    return stats
