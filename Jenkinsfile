pipeline {
    agent { label 'slave' }
    stages {
        stage('Example') {
            steps {
                echo 'hello-world-war'
      }
}
          stage('Example2') {
             steps {
                git  'hello-world-war'
            }
        }
        stage('checkout') {
             steps {
                sh 'git clone https://github.com/chetanvishwakarma22/hello-world-war/'
            }
            stage('build') {
             steps {
                sh 'mvn clean install'
            }
        }        
    }
}
