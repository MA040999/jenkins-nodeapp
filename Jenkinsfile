pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh "chmod +x -R ${env.WORKSPACE}"
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/scripts/deploy.sh'
            }
        }
    }
}