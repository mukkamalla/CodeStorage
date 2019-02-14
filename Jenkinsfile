pipeline {
		agent any
		stages {

				stage ('SCM clone') {
						steps {
						
						// SCM
						
						git credentialsId: 'c65d130e-a87e-4f90-b6d5-e9b19ebfbf26', url: 'https://github.com/mukkamalla/Maven_Project.git'
					
						}	
					}
					
				stage ('Static Code Analysis (SonarCodeReview)') {
						steps {
							withMaven (maven : 'MAVEN_3.5/bin') {
							sh 'mvn sonar:sonar'
							
							}
						}	
					}
									
					
				stage ('Build Phase') {
						steps {
							withMaven (maven : 'MAVEN_3.5/bin') {
							sh 'mvn clean package'
							}
						}	
					}
					
				stage ('CodeCverage(Jacoco)') {
						steps {
						
						jacoco()

							}
						}
						
				stage ('Deploy into QA-Environment)') {
						steps {
							sh 'sshpass -p "$passwd" scp /home/raja/workspace/maven_job/target/flipkart.war raja_user@198.23.56.45:/home/raja_user/tomcat/webapps'

							}
						}
						
				stage ('Deploy into UAT-Environment)') {
			
						steps {
							sh 'sshpass -p "$passwd" scp /home/raja/workspace/maven_job/target/flipkart.war Uat_user@198.23.56.45:/home/Uat_user/tomcat/webapps'

							}
						}					
					
		}
					
					
				
					
  }
