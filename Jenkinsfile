pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('Git ') {
      steps {
        git(url: 'https://github.com/elgladde/Flasking--Repo.git', branch: 'main')
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t eglad001/flask_app .'
      }
    }

    stage('Docker login') {
      steps {
        sh 'docker login -u eglad001 -p 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'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push eglad001/flask_app'
      }
    }

  }
}