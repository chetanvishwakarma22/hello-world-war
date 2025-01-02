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
                sh 'cp /opt/jenkins/workspace/jenkinsjob1/target/hello-world-war-1.0.0.war /var/lib/tomcat10/webapps'
            }
        }
            post {
    success {
        mail to: "chetan22vishwakarma@gmail.com",
             subject: "Jenkins Job Success",
             body: "The Jenkins job completed successfully."
    }
    failure {
        mail to: "chetan22vishwakarma@gmail.com",
             subject: "Jenkins Job Failed",
             body: "The Jenkins job failed. Check the logs for details."
    }
}
}
    }  
}

