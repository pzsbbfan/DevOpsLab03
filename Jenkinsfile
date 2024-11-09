pipeline {
    agent any
    triggers {
            githubPush()
        }
    tools {
        maven 'Maven3'
        jdk 'JDK'
    }
    stages {
            stage('Checkout') {
                steps {
                    checkout scm
                }
            }
            stage('Build Maven Project') {
                steps {
                    sh 'mvn clean package'
                }
            }
            stage('Docker Login') {
                steps {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials-id', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    }
                }
            }
            stage('Build Docker Image') {
                steps {
                    sh 'docker build -t pzsbbfan/devopslab03  .'
                }
            }
            stage('Push Docker Image') {
                steps {
                    sh 'docker push pzsbbfan/devopslab03'
                }
            }
        }
}
