pipeline {
  agent any
    
  tools {maven  "mvn"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/rahulguptaft9/student-management-system-springboot.git
      }
    }
     
    stage('Build') {
      steps {
        sh 'mvn build'
      }
    }  
    
            
    /*stage('Test') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }*/
  }
}
