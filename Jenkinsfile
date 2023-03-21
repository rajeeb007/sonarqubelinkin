pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', credentialsId: 'raji_git', url: 'https://github.com/rajeeb007/sonarqubelinkin.git'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test' 
            
            }
        }
        stage('build') {
            steps {
                sh 'mvn install' 
            
            }
        }
        stage('code scanner') {
            steps {
                withSonarQubeEnv(credentialsId: 'sonar_key',installationName:'sonarqube') {
                    sh 'mvn sonar:sonar'
    
               }
            
            }
        }
    }
}
