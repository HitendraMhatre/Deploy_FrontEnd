pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        cleanWs()
        git 'https://github.com/HitendraMhatre/Deploy_FrontEnd.git'
        sh 'docker build -t onestop_FE .'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 3000:3000 onestop_FE'
      }
    }

  }
}