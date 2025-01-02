pipeline {
        agent { label 'slave' }
    stages {
        stage('Checkout') {
            steps {
               sh 'rm -rf hello-world-war'
               sh 'git clone https://github.com/chetanvishwakarma22/hello-world-war/'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
             stage('Deploy') {
            steps {
                sh 'cp /opt/jenkins/workspace/jenkinsjob1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.1.34/webapps/hello-world-war-1.0.0.war'
            }
        }
    }  
}

