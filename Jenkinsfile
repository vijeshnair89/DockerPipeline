pipeline {
    agent any

    stages {
        stage('Fetch Code') {
            steps {
                git 'https://github.com/vijeshnair89/MavenBuild.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
