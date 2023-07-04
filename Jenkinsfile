pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'oc new-build --name=onestop-fe --binary --strategy=docker'
                sh 'oc start-build onestop-fe --from-dir=. --follow'

            }
        }
        stage('Deploy') {
            steps {
                sh 'oc delete all -l app=onestop-fe'
                sh 'oc new-app --image-stream=onestop-fe --name=onestop-fe'
                sh 'oc expose svc/onestop-fe --port=3000'
            }
        }
    }
}
