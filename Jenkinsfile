pipeline {
  agent any
    
  tools {maven  "mvn"}
    
  stages {
        
    stage('Git') {
      steps {
        //git branch: 'main', url: 'https://<token>@github.com/username/repoName.git'
        git branch: 'main', url: 'https://github.com/rahulguptaft9/student-management-system-springboot.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'mvn package'
      }
    }  
    
            
    /*stage('Test') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }*/
  }
  }
