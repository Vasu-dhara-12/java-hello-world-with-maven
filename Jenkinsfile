pipeline {
    agent any

    tools {
        maven 'maven3'   // ✅ match Jenkins config
        jdk 'jdk17'      // ✅ match Jenkins config
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
