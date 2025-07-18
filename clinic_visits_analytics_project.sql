-- Clinic Visits Analysis Project

CREATE DATABASE clinic_visits_db;
USE clinic_visits_db;

-- Total Visits Overview
SELECT
    COUNT(*) AS Total_Visits,
    COUNT(DISTINCT Patient_Age) AS distinct_Age_count,
    COUNT(DISTINCT Doctor_ID) AS total_doctors,
    COUNT(DISTINCT Clinic_ID) AS total_clinics
FROM visits;

-- Monthly Visit Trend 
SELECT 
    Year,
    Month,
    COUNT(*) AS monthly_visits
FROM visits
GROUP BY Year, Month
ORDER BY Year, Month;

-- Most Common Illness
SELECT
    Illness,
    Count(*) AS num_Of_count
FROM visits
GROUP BY Illness
ORDER BY num_Of_count DESC
LIMIT 5;

-- Gender Wise Visits Distribution
SELECT
	Gender,
    COUNT(*) AS total_visits
FROM visits
GROUP BY Gender
ORDER BY total_visits DESC;

-- Average Age of Patients by Illness
SELECT 
    Illness,
    ROUND(AVG(Patient_Age), 1) AS avg_patient_age
FROM visits
GROUP BY Illness
ORDER BY avg_patient_age DESC;

-- Follow up Visit Analysis
SELECT 
    Follow_up,
    COUNT(*) AS follow_up_count
FROM visits
GROUP BY Follow_up;

-- Doctor wise Patient Count
SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    d.Speciality,
    COUNT(v.Visit_ID) AS Patient_Count
FROM visits v
JOIN doctors d ON V.Doctor_ID = d.Doctor_ID
GROUP BY d.Doctor_ID, d.Doctor_Name, d.Speciality
ORDER BY Patient_Count DESC
LIMIT 10;
    
-- Clinic wise Visit Distribution
SELECT 
    c.Clinic_ID,
    c.Clinic_Name,
    COUNT(v.Visit_ID) AS total_visits
FROM visits v
JOIN clinics c ON v.Clinic_ID = c.Clinic_ID
GROUP BY c.Clinic_ID, c.Clinic_Name
ORDER BY total_visits DESC;

-- Visit Type Analysis
SELECT 
	Visit_Type,
    COUNT(*) AS count_of_type
FROM visits
GROUP BY Visit_Type;

-- Medicine Not Prescribed 
SELECT
    COUNT(*) AS not_prescribed
FROM visits
WHERE Medicine_Prescribed = 'Not Prescribed';

-- clinic wise doctor performance
SELECT 
    c.Clinic_Name,
    d.Doctor_Name,
    COUNT(v.Visit_ID) AS total_visits
FROM visits v
JOIN doctors d ON v.Doctor_ID = d.Doctor_ID
JOIN clinics c ON v.Clinic_ID = c.Clinic_ID
GROUP BY c.Clinic_Name, d.Doctor_Name
ORDER BY Total_Visits DESC;