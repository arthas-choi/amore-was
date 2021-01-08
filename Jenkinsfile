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
                            step([
                $class: 'AWSCodeDeployPublisher',
                applicationName: 'server_app',
                awsAccessKey: '',
                awsSecretKey: '',
                deploymentGroupAppspec: false,
                deploymentGroupName: 'server_group',
                deploymentMethod: 'deploy',
                excludes: '',
                iamRoleArn: '',
                includes: '**',
                proxyHost: '',
                proxyPort: 0,
                region: 'us-west-2',
                s3bucket: 'server-bucket',
                s3prefix: '',
                subdirectory: '',
                versionFileName: '',
                waitForCompletion: false
            ])
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
