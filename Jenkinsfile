pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''kernel=`uname -sr | sed --e=\'s/ /\\//\'`

./bootstrap.sh --prefix=$JENKINS_HOME/3rd/${kernel}/boost

./b2 cxxflags="-std=c++11"'''
      }
    }
    stage('install') {
      steps {
        sh './b2 install'
      }
    }
  }
}