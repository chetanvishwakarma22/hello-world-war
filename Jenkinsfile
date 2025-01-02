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
        agent { label 'slave2' }
    stages 
    {
        stage('checkout') {
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
    }
    }
}
