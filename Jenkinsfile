pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Clean workspace
                cleanWs()

                // Checkout source code
                git 'https://github.com/HitendraMhatre/Deploy_FrontEnd.git'

                // Build Docker image
                sh 'docker build -t onestop_FE .'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy Docker image (modify with your deployment process)
                sh 'docker run -d -p 3000:3000 onestop_FE'
            }
        }
    }
}
