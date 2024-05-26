pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Eerst de oude build verwijderen.'
                sh '''
                ./mvnw clean;
                docker-compose down
                docker rmi $(docker images | grep -E "eclipse-temurin|postgres")
                ./mvnw package
                '''
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
