pipeline {
    agent any

    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'npm test'
            }
        }
        stage('Start Server') {
            steps {
                echo 'Starting server..'
                sh 'nohup nodemon &'
            }
        }
        stage('Deploy- Infrastructure ') {
            steps {
                echo 'Provisioning Infrastructure'
                sh 'terraform/terraform init'

                
            }
        }
        stage('Deploy- Configuring servers ') {
            steps {
                echo 'Configuring Infrastructure'
                sh 'ansible/ansible-playbook ....'
                
            }
        }
    }
}