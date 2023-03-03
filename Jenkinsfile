
Jenkinsfile 

pipeline {
    agent {
        docker { image 'node:18' }
    }
  
   stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh 'npm install'
        sh 'npm start'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'npm t'
      }
    }
  }
}


