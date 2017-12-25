pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''kernel=`uname -sr | sed --e=\'s/ /\\//\'`

echo $kernel
'''
      }
    }
  }
}