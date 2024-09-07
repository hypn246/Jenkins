pipeline{
    agent {
        dockerfile true
    }
    stages{
        stage ('Build') {
            steps {
                sh 'python3 --version'
                sh 'docker --version'
            }
        }
    }
}