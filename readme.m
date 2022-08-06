pipeline {
	agent any
	tools {
    	maven 'my_mvn'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git url: 'https://github.com/c-kambala/Calculator'          	 
           	 
        	}    
    	}
    	stage('Build') {
        	steps {
        	bat "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unittest") {          	 
        	steps {  	 
            	bat "mvn test"          	 
       	}
}
}
}
