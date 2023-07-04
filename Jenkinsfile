pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t onestop_fe .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker rm -f onestop_fe_cont || true'
                sh 'docker run -d --name onestop_fe_cont -p 3000:3000 --network onestop_jenkins onestop_fe'
            }
        }
    }
}
