pipeline {
    agent any

    stages {
        stage('Fetch Code') {
            steps {
                git "https://github.com/vijeshnair89/MavenBuild.git"
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('Deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'TomcatCreds', path: '', url: 'http://43.205.212.157:8080/')], contextPath: 'Contextwebapp', war: 'target/*.war'
            }
        }
    }
}
