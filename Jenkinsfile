pipeline {
  agent any
    
options {
        disableConcurrentBuilds()
    }
	
  tools {maven  "mvn"}
  
	environment{
	registry="mrchelsea"
	registryCredential='mrchelsea'
	dockerImage=''
	}
    
  stages {
        
    stage('Git') {
      steps {
        //git branch: 'main', url: 'https://<token>@github.com/username/repoName.git'
        git branch: 'main', url: 'https://github.com/rahulguptaft9/student-management-system-springboot.git'
      }
    }
     
    /*stage('Build') {
      steps {
        sh 'mvn package'
      }
    }  */
    
            
    /*stage('Test') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }*/
    
    
	/*stage('Building image for both frontend and backend') {
		steps{
			script{
				sh 'docker build -f Dockerfile -t $registry/random .'
        //sh 'docker build -f Dockerfile1 -t $registry/backend .'
			}
		}
	}*/
    
    /*stage('Registring image for both frontend and backend') {
		steps{
			script{
				docker.withRegistry('',registryCredential){
				sh 'docker push $registry/random'
       //	sh 'docker push $registry/backend'
				}
			}
		}
	}*/
	  
	  
	  stage('k8s deploying in SIT'){
	
		  steps {
            sshagent(['k8']) {
		  sh "scp -o StrictHostKeyChecking=no rahul.yaml ubuntu@172.31.46.45:/home/ubuntu"
                script{
			try{
                sh "ssh ubuntu@172.31.46.45  kubectl apply -f ."
		}
			catch(error){
				sh "ssh ubuntu@172.31.46.45 kubectl create -f ."
                        }
    
                    }
           
          }
        }   
	  }
  }
  }
