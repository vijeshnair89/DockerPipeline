node('Node2'){
	
	stage('Code Checkout'){
		checkout changelog: false, poll: false, scm: scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHubCreds', url: 'https://github.com/anujdevopslearn/MavenBuild']])
	}
	stage('Build Automation'){
		sh """
			ls -lart
			mvn clean install
			ls -lart target

		"""
	}
	stage('Maven Test cases') {
            	steps {
                	sh 'mvn clean test'
            	}

	}
	stage('Code Deployment'){
		deploy adapters: [tomcat9(credentialsId: 'TomcatCreds', path: '', url: 'http://13.127.142.166:8080//')], contextPath: 'Contextapp', onFailure: false, war: 'target/*.war'
	}
}
