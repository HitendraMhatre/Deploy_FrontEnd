pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'oc new-build --name=onestop-be --binary --strategy=docker'
                sh 'oc start-build onestop-be --from-dir=. --follow'

            }
        }
        stage('Deploy') {
            steps {
                sh 'oc delete all -l app=onestop-be'
                sh 'oc new-app --image-stream=onestop-be --name=onestop-be'
                sh 'oc expose svc/onestop-be --port=9090'
            }
        }
    }
}
