pipeline {
        agent { label 'slave' 
    stages
    {
        stages('checkout') {
            steps {
               sh 'rm -rf hello-world-war'
               sh 'git clone https://github.com/chetanvishwakarma22/hello-world-war/'
            }
        }
        stage('build') {
            steps {
                sh 'cd hello-world-war'
                sh 'mvn clean package'
            }
        }
        stage('deploy') {
            steps { 
                sh 'scp /var/lib/jenkins/workspace/jenkinsjob1/target/hello-world-war-1.0.0 /opt/apache-tomcat-10.1.34/webapps'
     }
    }
}
