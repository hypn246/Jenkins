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
                sh '''
                    echo "Cleaning up Docker images and containers..."
                    docker system prune -af
                    docker volume prune -f
                '''
            }
        }
    }
}