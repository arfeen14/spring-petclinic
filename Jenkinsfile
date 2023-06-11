pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                 
                // Compile the source code
                sh 'gradle build'
                // Wat ik denk ik hier wil hebben is code coverage aka sonarqube
            }
        }

         stage('SonarQube Analysis') {
            steps {
                // Run SonarQube analysis using Gradle
                withSonarQubeEnv('SonarQube Server') {
                    sh "./gradlew sonarqube -Dsonar.login=${squ_0de2be9f13368a1377851378d0947d8409d971f6}"
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