pipeline{
    agent any
    stages{

        stage('Test'){
            steps{
                sh 'pytest -v'
            }
        }

        stage('Coverage'){
            steps{
                sh 'pytest --cov'
            }
        }

        stage('Sanity check'){
            steps{
                input "Does the test looks ok?"
            }
        }

        stage('Build'){
            steps{
                sh 'docker build . --file Dockerfile --tag jenkinspipelinescm:$(date +%s)'
            }
        }

         stage('Deploy'){
            steps{
                sh 'curl "https://vercel.com/sironark/projeto-jenkins-scm/ESQKKXPBTbjsB1NXBXVtHgx3tU3q"'
            }
        }

    }
}