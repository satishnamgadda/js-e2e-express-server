pipeline {
    agent { label 'JDK11' }
    stages {
        stage('vcs') {
            steps {
                git url: "https://github.com/satishnamgadda/js-e2e-express-server.git",
                    branch: "main"
            }
        }
        stage('build') {
            steps {
            sh """
            export PATH="/home/ubuntu/.nvm/versions/node/v16.19.0/bin:$PATH"
            npm install
            npm run build
            """

        }
    }
}
