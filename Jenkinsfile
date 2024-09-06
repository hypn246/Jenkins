pipeline{
    agent {
        docker true
    }
    stages ('Build'){
        steps {
            sh 'python3 --version'
        }
    }
    stages ('Clean-up'){
        steps {
            sh 'docker system prune -a --volumes'
        }
    }
}