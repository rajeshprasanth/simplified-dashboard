# Simplified Home Lab Dashboard

The **Simplified Home Lab Dashboard** is a lightweight Flask-based web application that dynamically loads and displays resource links from a CSV file using a Bootstrap-powered interface. The application supports local execution, deployment via Docker, and remote image retrieval from Docker Hub.

## Features
1. **User-Friendly Interface:** Built with Bootstrap for a clean and modern design.
2. **Dynamic Content Loading:** Reads and displays data from a mounted `data.csv` file.
3. **Flexible Deployment Options:** Supports local execution, virtual environments, and Docker-based deployments.
4. **Scalable & Maintainable:** Easily configurable for different environments and use cases.
5. **Remote & Local Execution:** Run via direct execution, virtual environments, or as a Docker container.

## Installation & Usage

### 1. Clone the Repository
To begin using this application, clone the repository using the following command:
```bash
git clone https://github.com/yourusername/flask-dashboard.git
cd flask-dashboard
```

### 2. Prepare the Data File (`data.csv`)
Ensure that a `data.csv` file is present in the project root directory. The file should be structured as follows:
```
Resource Name,Link 1,Link 2,Link 3
Grafana,https://grafanaprod.internal.das,https://plpmon002.internal.das:600,https://10.0.0.90:600
```

### 3. Installation and Execution Methods
Depending on your setup, you may choose one of the following installation methods:

#### Option 1: Direct Host Installation (Without Docker)
1. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the application:
   ```bash
   python app.py
   ```
3. Access the dashboard at: `http://localhost:5000`

#### Option 2: Virtual Environment Installation
1. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: `venv\Scripts\activate`
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the application:
   ```bash
   python app.py
   ```
4. Access the dashboard at: `http://localhost:5000`

#### Option 3: Local Docker Build
1. Build and deploy the application using Docker:
   ```bash
   docker compose -f docker-compose.local.yml up -d
   ```
   - This command builds the image and starts the container in detached mode (`-d`).
   - Ensure the `data.csv` file is correctly mounted.
2. Monitor logs:
   ```bash
   docker logs -f <container_id>
   ```
3. Access the dashboard at: `http://localhost:5000`

#### Option 4: Deploy Using a Pre-Built Docker Image (Remote Image from Docker Hub)
1. Pull and deploy the latest pre-built image from Docker Hub:
   ```bash
   docker compose -f docker-compose.remote.yml up -d
   ```
2. To update the image:
   ```bash
   docker compose -f docker-compose.remote.yml pull
   ```
   ```bash
   docker compose -f docker-compose.remote.yml up -d --force-recreate
   ```
3. Access the dashboard at: `http://localhost:5000`

### 4. Managing the Service
1. **Stopping the Service**
   ```bash
   docker compose down
   ```
2. **Restarting the Service**
   ```bash
   docker compose up -d --build
   ```
3. **Viewing Running Containers**
   ```bash
   docker ps
   ```

## Contributing
Contributions are welcome! If you would like to enhance the project, please submit a pull request or open an issue.

## License
This project is licensed under the **GNU General Public License v3.0**.

