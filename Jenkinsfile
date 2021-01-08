pipeline {
    agent any
    tools {
        maven 'Maven 3.3.9'
        jdk 'jdk8'
    }

    stages {
        stage('Initialize-Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn -Dmaven.test.failure.ignore=true install'checkout scm
            }
        }

        stage('SonarQube') {
            steps {
                echo 'Hello World'
            }
        }

            stage('Deploy') {
                  steps {
                    awsCodeDeployer applicationName: 'apne2-apkpoc-aplz-codedeploy2', awsAccessKey: 'AKIAQT5OLTO3DHODNZ64', awsSecretKey: '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', credentials: 'awsAccessKey', deploymentGroupName: 'apne2-apkpoc-aplz-deploygroup2', deploymentMethod: 'deploy', excludes: '', includes: '**/*.war,bin/*.sh,./appspec.yml', proxyHost: '', proxyPort: 0,deploymentConfig: 'CodeDeployDefault.AllAtOnce', region: 'ap-northeast-2', s3bucket: 'apk-poc-upload-aplz', s3prefix: 'was', subdirectory: '', versionFileName: '', waitForCompletion: false, deploymentGroupAppspec: false, pollingTimeoutSec: 900, pollingFreqSec: 15, iamRoleArn:'', externalId: ''
                  }
              }

        stage('API Test') {
                    steps {
                        buildTesting (
                           runPostman (
                                options: [
                                  testingOption(key: './temp/newman_test.json', value: ''),
                                  testingOption(key: '--reporters', value: 'cli,junit'),
                                  testingOption(key: '--reporter-junit-export', value: './temp/target/create-user-result.xml')
                                ],
                                skipTesting: false
                                )
                            )
                    }
                }
            }

}
