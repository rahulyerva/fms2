pipeline {
   agent any
   stages{
     stage('git pull'){
       steps{
          echo 'this is for pulling repo from git'
          git 'https://github.com/rahulyerva/fms2.git'
       }
     }
     stage('build application'){
       steps{
          dir('./Code/client'){ 
            sh 'npm install'
            sh 'ng build'
          }
          dir('./Code'){
            sh 'npm install'
          }
        }
      }
     stage('build docker file'){
       steps{
          sh 'docker build -t rahulyerva/fmscon .'
          sh 'docker login -u=rahulyerva -p=Rahul@1995'
          sh 'docker push rahulyerva/fmscon'
          }
        } 
  }
}
