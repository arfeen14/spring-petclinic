pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Eerst de oude build verwijderen.'
                sh """
                ./mvnw clean;
                ./mvnw package
                """
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
                sh "./mvnw '-Dtest=**' test"
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying using docker compose file.'
                sh "docker compose up -d"
            }
        }
    }
}
