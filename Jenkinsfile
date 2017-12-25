pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''kernel=`uname -sr | sed --e=\'s/ /\\//\'`

./bootstrap.sh --prefix=$JENKINS_HOME/3rd/${kernel}/boost

./b2 cxxflags="-std=c++11" -DBOOST_NO_CXX14_INTEGER_SEQUENCE'''
      }
    }
    stage('install') {
      steps {
        sh './b2 install'
      }
    }
  }
}