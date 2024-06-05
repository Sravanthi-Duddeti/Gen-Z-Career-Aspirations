SELECT * FROM aspirations.your_career_aspirations;

UPDATE your_career_aspirations
SET country = 
    CASE 
        WHEN country = 'India' THEN 'IND'
        WHEN country = 'United Arab Emirates' THEN 'UAE'
        WHEN country = 'United States of America' THEN 'USA'
        WHEN country = 'Germany' THEN 'GER'
        WHEN country = 'Canada' THEN 'CAN'
        WHEN country = 'Pakistan' THEN 'PAK'
        WHEN country = 'Afghanistan' THEN 'AFG'
        WHEN country = 'Ireland' THEN 'IRE'
        WHEN country = 'SriLanka' THEN 'LKA'
        WHEN country = 'Malaysia' THEN 'MYS'
        ELSE country
    END;
    
     UPDATE your_career_aspirations
SET gender = 'M'
WHERE gender = 'male';

UPDATE your_career_aspirations
SET gender = 'F'
WHERE gender = 'female'; 
UPDATE your_career_aspirations
SET gender = 'Other'
WHERE gender = 'Transgender'; 

UPDATE `aspirations`.`your_career_aspirations`
SET `Career Aspiration Factor` = 
    CASE 
        WHEN `Career Aspiration Factor` = 'People who have changed the world for better' THEN 'Change Makers'
        WHEN `Career Aspiration Factor` = 'Social Media like LinkedIn' THEN 'Social Media'
        WHEN `Career Aspiration Factor` = 'People from my circle, but not family members' THEN 'Outside Family'
        WHEN `Career Aspiration Factor` = 'Influencers who had successful careers' THEN 'Influencers'
        WHEN `Career Aspiration Factor` = 'My Parents' THEN 'Parents'
        WHEN `Career Aspiration Factor` = 'My Friends' THEN 'Friends'
        WHEN `Career Aspiration Factor` = 'Social Media like LinkedIn, YouTube, Instagram' THEN 'Social Media'
        WHEN `Career Aspiration Factor` = 'Movies' THEN 'Movies'
        ELSE `Career Aspiration Factor`
    END;
    
    UPDATE `aspirations`.`your_career_aspirations`
SET `Higher Education Abroad (Self-Sponsor)` =
    CASE
        WHEN `Higher Education Abroad (Self-Sponsor)` LIKE '%Yes%' THEN 'Yes'
        WHEN `Higher Education Abroad (Self-Sponsor)` LIKE '%No%' THEN 'No'
END;
UPDATE `aspirations`.`your_career_aspirations`
SET `Work Stability (3+ Years)` =
    CASE
        WHEN `Work Stability (3+ Years)` IS NULL THEN 'Yes'
        WHEN `Work Stability (3+ Years)` LIKE '%Yes%' THEN 'Yes'
        WHEN `Work Stability (3+ Years)` LIKE '%No%' THEN 'No'
    END;
    UPDATE `aspirations`.`your_career_aspirations`
SET `Misaligned Mission Tolerance` =
    CASE
        WHEN `Misaligned Mission Tolerance` = 'Will work for them' THEN 'Yes'
        WHEN `Misaligned Mission Tolerance` = 'Will NOT work for them' THEN 'No'
        
    END
WHERE `Misaligned Mission Tolerance` IN ('Will work for them', 'Will NOT work for them');

UPDATE your_career_aspirations
SET `Preferred Work Environment` = 'Remote'
WHERE `Preferred Work Environment` = 'Fully Remote with No option to visit offices';

-- Update Fully Remote with Options to travel as and when needed
UPDATE your_career_aspirations
SET `Preferred Work Environment` = 'Remote'
WHERE `Preferred Work Environment` = 'Fully Remote with Options to travel as and when needed';

-- Update Every Day Office Environment
UPDATE your_career_aspirations
SET `Preferred Work Environment` = 'Office'
WHERE `Preferred Work Environment` = 'Every Day Office Environment';

-- Update Hybrid Working Environment with less than 15 days a month at office
UPDATE your_career_aspirations
SET `Preferred Work Environment` = 'Hybrid'
WHERE `Preferred Work Environment` IN (
    'Hybrid Working Environment with less than 15 days a month at office',
    'Hybrid Working Environment with less than 10 days a month at office',
    'Hybrid Working Environment with less than 3 days a month at office'
);

-- Update Hybrid Working Environment with more than 15 days a month at office
UPDATE aspirations.your_career_aspirations
SET `Preferred Work Environment` = 'Office'
WHERE `Preferred Work Environment` = 'Hybrid Working Environment with more than 15 days a month at office';
SELECT distinct`Preferred Employers` FROM `aspirations`.`your_career_aspirations`;

UPDATE aspirations.your_career_aspirations
SET `Preferred Employers` =
    CASE
        WHEN `Preferred Employers` LIKE '%rewards learning%' THEN 'Learning and Rewarding'
        WHEN `Preferred Employers` LIKE '%pushes your limits%'  THEN 'Challenging Environment'
        WHEN `Preferred Employers` LIKE '%appreciates learning%' THEN 'Appreciates Learning'
        ELSE `Preferred Employers`
    END;
    
    UPDATE aspirations.your_career_aspirations
SET `Learning Environment` = 
    CASE
        WHEN `Learning Environment` LIKE '%Instructor or Expert Learning Programs%' THEN 'Instructor or Expert Learning Programs'
        WHEN `Learning Environment` LIKE '%Self Paced Learning Portals%' THEN 'Self Paced Learning Portals'
        WHEN `Learning Environment` LIKE '%Learning by observing others%' THEN 'Learning by observing others'
        ELSE 'Unknown Learning Environment'
    END;
    UPDATE aspirations.your_career_aspirations
SET `Learning Environment` = 'Other Learning Environment'
WHERE `Learning Environment` = 'Unknown Learning Environment';
 UPDATE `aspirations`.`your_career_aspirations`
SET `Aspirational Job Category` =
    CASE
        WHEN `Aspirational Job Category` LIKE '%Business Operations in any organization%' 
             AND `Aspirational Job Category` LIKE '%Build and develop a Team%' THEN 'Business Operations and Team Development'
        WHEN `Aspirational Job Category` LIKE '%Look deeply into Data and generate insights%' THEN 'Data Analysis and Insights'
        WHEN `Aspirational Job Category` LIKE '%Manage and drive End-to-End Projects or Products%' 
             AND `Aspirational Job Category` LIKE '%Design and Develop amazing software%' THEN 'Project Management and Software Development'
        WHEN `Aspirational Job Category` LIKE '%Teaching in any of the institutes/online or Offline%' 
             OR `Aspirational Job Category` LIKE '%Teaching in any of the institutes/colleges/online or offline%' THEN 'Teaching'
        WHEN `Aspirational Job Category` LIKE '%Become a content Creator in some platform%' THEN 'Content Creation'
        WHEN `Aspirational Job Category` LIKE '%Work in a BPO setup for some well known client%' THEN 'BPO Setup'
        WHEN `Aspirational Job Category` LIKE '%Work as a freelancer and do my thing my way%' THEN 'Freelancer'
        WHEN `Aspirational Job Category` LIKE '%Entrepreneur or Start Up%' THEN 'Entrepreneurship'
        WHEN `Aspirational Job Category` LIKE '%Design and Creative strategy in any company%' THEN 'Design and Creative Strategy'
        WHEN `Aspirational Job Category` LIKE '%An Artificial Intelligence Specialist / Talking to Robots%' THEN 'AI Specialist'
        ELSE 'Other'
        END;
        
          UPDATE `aspirations`.`your_career_aspirations`
SET `Work Setup Preference` =
    CASE
        WHEN `Work Setup Preference` LIKE '%Work alone%' THEN 'Solo Work'
        WHEN `Work Setup Preference` LIKE '%Work with 2 to 3 people in my team%' OR `Work Setup Preference` LIKE '%Work with 5 to 6 people in my team%' THEN 'Small Team Collaboration'
        WHEN `Work Setup Preference` LIKE '%Work with 7 to 10 or more people in my team%' OR `Work Setup Preference` LIKE '%Work with more than 10 people in my team%' THEN 'Large Team Collaboration'
        ELSE 'Other'
    END;
    SELECT distinct `Work Setup Preference`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `Email address` = 'Not Provided'
WHERE `Email address` IS NULL OR `Email Address` = '';
UPDATE `aspirations`.`your_career_aspirations` SET `Recent Layoffs Acceptance` =   
  CASE     
  WHEN `Recent Layoffs Acceptance` IN ('Yes', 'Yes, I Understand this is gonna happen everywhere') THEN 'Yes'    
  WHEN `Recent Layoffs Acceptance` IN ('No', 'I have NO other choice') THEN 'No'     
  ELSE 'N/A'     END;
  SELECT distinct `Recent Layoffs Acceptance`
FROM `aspirations`.`your_career_aspirations`;
SELECT *FROM  your_career_aspirations;
UPDATE `aspirations`.`your_career_aspirations`
SET `Long-Term Work Commitment (7+ Years)` =
    CASE
        WHEN `Long-Term Work Commitment (7+ Years)` = 'No way' THEN 'No'
        WHEN `Long-Term Work Commitment (7+ Years)` = 'This will be hard to do, but if it is the right company I would try' THEN 'No'
        WHEN `Long-Term Work Commitment (7+ Years)` = 'Will work for 7 years or more' THEN 'Yes'
        ELSE 'N/A'
    END;
    SELECT distinct `Long-Term Work Commitment (7+ Years)`
FROM `aspirations`.`your_career_aspirations`;
SELECT distinct `Starting Salary (First 3 Years)`
FROM `aspirations`.`your_career_aspirations`;
SELECT distinct `Salary After 5 Years`
FROM `aspirations`.`your_career_aspirations`;
 SELECT distinct `No-Remote Work Policy Acceptance`
FROM `aspirations`.`your_career_aspirations`;
SELECT distinct `Minimum Starting Salary Expectation`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `No-Remote Work Policy Acceptance` =
    CASE
        WHEN `No-Remote Work Policy Acceptance` = '' THEN 0
        ELSE `No-Remote Work Policy Acceptance`
    END;
    UPDATE `aspirations`.`your_career_aspirations`
SET `Minimum Starting Salary Expectation` =
    CASE
        WHEN `Minimum Starting Salary Expectation` = '' THEN 0
        ELSE `Minimum Starting Salary Expectation`
    END;
    UPDATE `aspirations`.`your_career_aspirations`
SET `Preferred Company Type` =
    CASE
        WHEN `Preferred Company Type` = 'Startups (51 to 250 Employees)' THEN 'Startups'
        WHEN `Preferred Company Type` = 'Corporations (3000+ employees)' THEN 'Corporations'
        WHEN `Preferred Company Type` = 'Mid Size Companies (251 to 1000 employees)' THEN 'Mid Size Companies'
        WHEN `Preferred Company Type` = 'Startups (Less than 50 empoyees)' THEN 'Startups'
        WHEN `Preferred Company Type` = 'Large Companies (1001 to 3000 employees)' THEN 'Large Companies'
        ELSE 'N/A'
    END;
   SELECT distinct `Managerial Abusiveness Tolerance`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `Managerial Abusiveness Tolerance` =
    CASE
        WHEN `Managerial Abusiveness Tolerance` = 'Yes' THEN 'Yes'
        WHEN `Managerial Abusiveness Tolerance` = 'No' THEN 'No'
        ELSE 'N/A'
    END;
     SELECT distinct `Max Daily Working Hours`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `Max Daily Working Hours` =
    CASE
        WHEN `Max Daily Working Hours` = '8 hours' THEN '8'
        WHEN `Max Daily Working Hours` = '10 hours' THEN '10'
        WHEN `Max Daily Working Hours` = '6 hours' THEN '6'
        WHEN `Max Daily Working Hours` = '14 hours' THEN '14'
        WHEN `Max Daily Working Hours` = '12 hours' THEN '12'
        ELSE 'N/A'
    END;
UPDATE `aspirations`.`your_career_aspirations`
SET `Need for Full Week Break Frequency` =
    CASE
        WHEN `Need for Full Week Break Frequency` = 'Once in 6 months' THEN '6'
        WHEN `Need for Full Week Break Frequency` = 'Once in 2 months' THEN '2'
        WHEN `Need for Full Week Break Frequency` = 'Once in 12 months' THEN '12'
        WHEN `Need for Full Week Break Frequency` = 'Once in 3 months' THEN '3'
        ELSE 'N/A'
    END;
    SELECT distinct `Need for Full Week Break Frequency`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `Happiness/Productivity Factors` =
    CASE
        WHEN `Happiness/Productivity Factors` LIKE '%Supportive Manager%' THEN 'Supportive Manager'
        WHEN `Happiness/Productivity Factors` LIKE '%Work that involves my Passion%' THEN 'Work that involves my Passion'
        WHEN `Happiness/Productivity Factors` LIKE '%Meaningful impact of the work%' THEN 'Meaningful impact of the work'
        WHEN `Happiness/Productivity Factors` LIKE '%A great compensation%' THEN 'A great compensation'
        WHEN `Happiness/Productivity Factors` LIKE '%Less working hours%' THEN 'Less working hours'
        WHEN `Happiness/Productivity Factors` LIKE '%Non Political Environment%' THEN 'Non Political Environment'
        ELSE 'N/A'
    END;
     SELECT distinct `Need for Full Week Break Frequency`
FROM `aspirations`.`your_career_aspirations`;
UPDATE `aspirations`.`your_career_aspirations`
SET `What would frustrate you at work ?` =
    CASE
        WHEN `What would frustrate you at work ?` = 'Political Environment' THEN 'Political Environment'
        WHEN `What would frustrate you at work ?` = 'Unsupportive Managers' THEN 'Unsupportive Managers'
        WHEN `What would frustrate you at work ?` IN ('Unclear work without any goals', 'Unclear work with a goal') THEN 'Lack of Clarity'
        WHEN `What would frustrate you at work ?` = 'Lack of Transparency' THEN 'Lack of Clarity'
        WHEN `What would frustrate you at work ?` = 'Often a need to learn New Skills' THEN 'Continuous Learning'
        WHEN `What would frustrate you at work ?` = 'High stressful job' THEN 'High Stress'
        ELSE 'N/A'
    END;
    SELECT distinct `Aspirational Job Category`
FROM `aspirations`.`your_career_aspirations`;
UPDATE aspirations.your_career_aspirations
SET `Preferred Manager Type` = 
    CASE
        WHEN `Preferred Manager Type` LIKE '%explains what is expected, sets a goal and helps achieve it%' THEN 'Explains goals and supports'
        WHEN `Preferred Manager Type` LIKE '%sets goal and helps me achieve it%' THEN 'Sets and helps achieve goals'
        WHEN `Preferred Manager Type` LIKE '%clearly describes what she/he needs%' THEN 'Clear expectations'
        WHEN `Preferred Manager Type` LIKE '%sets targets and expects me to achieve it%' THEN 'Sets and expects goals'
        WHEN `Preferred Manager Type` LIKE '%sets unrealistic targets%' THEN 'Sets realistic goals'
        ELSE `Preferred Manager Type` -- Keep original value if it doesn't match any condition
    END;
