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
    }      
}

