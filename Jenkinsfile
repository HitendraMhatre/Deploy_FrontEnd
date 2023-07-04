pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'oc build -t onestop_fe .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'oc rm -f onestop_fe_cont || true'
                sh 'oc run -d --name onestop_fe_cont -p 3000:3000 --network onestop_jenkins onestop_fe'
            }
        }
    }
}
