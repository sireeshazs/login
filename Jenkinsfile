pipeline{

    agent any

    stages {

        stage('Download Dependencies') {
            steps {
                sh '''
                install go
            '''
            }
        }
        stage('prepare Artifacts') {
            steps {
                sh '''
                zip -r ../login.zip *
            '''
            }

        }
        stage('upload Artifacts') {
            steps {
                sh '''
           curl -f -v -u admin:admin --upload-file login.zip http://172.31.11.104:8081/repository/login/login.zip
        '''
            }
        }
    }
}