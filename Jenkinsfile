pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/AnshumPal/SL-3-Assignment-2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t studentproject .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8000:8000 studentproject'
            }
        }
    }
}
