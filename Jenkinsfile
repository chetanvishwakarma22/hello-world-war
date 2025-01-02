pipeline {
        agent { label 'slave' }
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
    }      


