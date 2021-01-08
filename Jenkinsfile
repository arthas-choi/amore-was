pipeline {
    agent any


    stages {
        stage('Hello') {
            steps {
                checkout scm
            }
        }

        stage('SonarQube') {
            steps {
                echo 'Hello World'
            }
        }

            stage('Deploy') {
                  steps {
                    awsCodeDeployer applicationName: 'apne2-apkpoc-aplz-codedeploy2', awsAccessKey: 'AKIAQT5OLTO3DHODNZ64', awsSecretKey: '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',  deploymentGroupName: 'apne2-apkdev-aplz-deploygroup2', deploymentMethod: 'deploy', excludes: '', includes: '**', proxyHost: '', proxyPort: 0, region: 'ap-northeast-2', s3bucket: 'apk-dev-upload-aplz', s3prefix: 'was', subdirectory: '', versionFileName: '', waitForCompletion: false
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
