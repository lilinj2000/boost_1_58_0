pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''kernel=`uname -s`
kernel+=\'/\'
kernel+=`uname -r`

echo $kernel
'''
      }
    }
  }
}