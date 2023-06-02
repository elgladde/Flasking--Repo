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

    stage('Docker Login') {
      steps {
        sh 'docker login -u eglad001 -p dckr_pat_2uHGH7Cgs-nMcG-htisy_3ffmrI'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t eglad001/flask_app .'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push eglad001/flask_app'
      }
    }

  }
}