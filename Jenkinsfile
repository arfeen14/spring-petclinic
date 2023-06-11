pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                 
                // Compile the source code
                sh 'gradle build'
                // Wat ik denk ik hier wil hebben is code coverage aka sonarqube
                 withSonarQubeEnv() { // Will pick the global server connection you have configured
      sh './gradlew sonarqube'
    }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //you have to install the required dependencies to run the test aka maven and misschien gradle.
                //cause I dont want to install maven in the docker container, it is to much hassle i try a workaround.
                  
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}