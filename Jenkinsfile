pipeline{
    agent {
        dockerfile true
    }
    stages{
        stage ('Build') {
            steps {
                sh 'python3 --version'
            }
        }
        stage ('Clean-up') {
            steps {
                sh 'docker system prune -a --volumes'
            }
        }
    }
}