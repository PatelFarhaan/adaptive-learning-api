# Master Project 2021 - Skill Level Prediction API

A Flask-based REST API that uses Bayesian Knowledge Tracing (pyBKT) to predict and track student skill levels based on test interactions. The system analyzes student performance data stored in MongoDB and provides skill mastery predictions.

## Tech Stack

- **Backend:** Python 3, Flask
- **Database:** MongoDB Atlas (pymongo)
- **Machine Learning:** pyBKT (Bayesian Knowledge Tracing), pandas
- **Containerization:** Docker

## Features

- Bayesian Knowledge Tracing model trained on student interaction data
- REST API to submit test results and receive skill level predictions
- Skill level tracking over time per user and topic
- MongoDB-backed persistence for test results and skill analytics
- CSV-based training data pipeline
- Dockerized deployment

## Prerequisites

- Python 3.8+
- MongoDB Atlas account (or local MongoDB instance)
- Docker (optional, for containerized deployment)

## Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd master-project-2021
   ```

2. **Install dependencies:**
   ```bash
   bash requirements.sh
   ```

3. **Configure environment variables:**
   ```bash
   cp .env.example .env
   # Edit .env with your MongoDB connection string
   ```

## Environment Variables

| Variable | Description | Example |
|---|---|---|
| `SECRET_KEY` | Flask secret key | `your-secret-key` |
| `MONGODB_URI` | MongoDB connection string | `mongodb+srv://user:pass@cluster/db` |
| `MONGODB_DATABASE` | MongoDB database name | `project` |

## How to Run

### Locally
```bash
pip3 install flask pymongo pandas pyBKT dnspython
python3 apis.py
```

### Using Docker
```bash
docker build -t master-project .
docker run -p 5000:5000 -e MONGODB_URI="your-uri" master-project
```

The API will be available at `http://localhost:5000/`

### API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| `POST` | `/analytics` | Analyze test results and predict skill level |
| `POST` | `/skill-level` | Get skill level history for a user |

## Project Structure

```
master-project-2021/
├── apis.py             # Flask API with prediction and skill tracking logic
├── Dockerfile          # Docker configuration
├── requirements.sh     # Dependency installation script
└── updated_data.csv    # Training data for the BKT model
```

## License

MIT
