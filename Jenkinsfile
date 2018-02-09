#!groovy
node{
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/lutece-platform/lutece-build-plugin-testrelease.git'
     
   }
   stage('Build') {
      // Run the maven build
      if (isUnix()) {
         sh "'mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
   stage('Results') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
}
