pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'oc new-build --name=onestop-fe:latest --binary --strategy=docker'
                sh 'oc start-build onestop-fe:latest --from-dir=. --follow'

            }
        }
        stage('Deploy') {
            steps {
                sh 'oc delete all -l app=onestop-fe'
                sh 'oc new-app --image-stream=onestop-fe:latest --name=onestop-fe'
                sh 'oc expose svc/onestop-fe --port=3000'
            }
        }
    }
}
