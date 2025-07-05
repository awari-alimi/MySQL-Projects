# 🎬 Movie Ratings Analysis – SQL Project

## 📁 Project Overview  
This project performs a comprehensive analysis of movie data using MySQL. The goal is to uncover key insights such as top-rated movies, popular genres, director activity, and yearly trends. The analysis supports data-driven decisions in content curation, production planning, and audience engagement strategies.

---

## 🛠️ Steps Performed  

### 1. Database Setup  
- Created a new database: `Movie_Ratings`  
- Loaded and previewed the dataset  
- Selected all records from the `movies` table  

### 2. Key Performance Indicators (KPIs)  
- **Top 10 Highest Rated Movies**  
  Identified the top 10 movies based on IMDb score  

- **Most Popular Genres**  
  Counted the number of movies in each genre  

- **Average IMDb Score by Rating**  
  Calculated the average IMDb score for each movie rating category  

### 3. Director Insights  
- **Most Active Directors**  
  Identified the top 10 directors with the highest number of movies  

### 4. Time-Based Trends  
- **Yearly Trend of Movie Releases**  
  Analyzed the number of movies released each year  

### 5. Audience Engagement  
- **Top 10 Most Voted Movies**  
  Found the movies with the highest number of IMDb votes  

- **Average IMDb Score by Genre**  
  Compared average IMDb scores across different genres  

---

## 🧾 Table Schema (movies)

| Column Name | Description |
|-------------|-------------|
| name        | Title of the movie |
| genre       | Genre of the movie |
| score       | IMDb score of the movie |
| imdb_score  | Raw IMDb score used for averaging |
| rating      | Movie rating (e.g., PG-13, R) |
| director    | Director of the movie |
| released    | Year the movie was released |
| votes       | Number of IMDb votes received |

---

## ✅ Outcome  
This analysis provides actionable insights into:

- 🎖️ Top-rated and most-voted movies  
- 🎭 Genre popularity and performance  
- 🎬 Director productivity  
- 📈 Trends in movie releases over the years  
- ⭐ Viewer preferences by rating and genre  

These insights can help stakeholders in the film and streaming industries make informed decisions to enhance content strategy, audience targeting, and production planning.
