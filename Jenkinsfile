pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				bat "docker build -t nagios-" + env.GIT_BRANCH + ":1.0.0-" + env.BUILD_NUMBER + " ."
            }
        }
        stage('Deploy') {
            bat "docker rm -f nagios || 'echo no running nagios container to remove' "
            bat "docker run --name nagios -p 0.0.0.0:8090:80 nagios-" + env.GIT_BRANCH + ":1.0.0-" + env.BUILD_NUMBER
        }
    }
    post {
        success {
            echo "Nagios deployed" + env.GIT_BRANCH
        }
    }
}