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
          sh 'cd /var/lib/jenkins/workspace/fmsdeploy/Code/client'
          sh 'npm install'
          sh 'ng build'
          sh 'cd ..'
          sh 'npm install'
        }
      }
   }
}
