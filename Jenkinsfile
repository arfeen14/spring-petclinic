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
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
