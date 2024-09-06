pipeline{
    agent {
        docker true
    }
    stage('Build'){
        sh 'python3 --version'
    }
    stage ('Clean-up'){
        step{
            sh 'docker system prune -a --volumes'
        }
    }
}