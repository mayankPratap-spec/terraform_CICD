pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
            steps {
                // Checkout code from the GitHub repository testing
                git branch: 'main', credentialsId: '84ecae54-b617-45a1-908c-3dce823c3715', url: 'https://github.com/mayankPratap-spec/terraform_CICD.git'
            }
        }
        
        stage('Initialize Terraform') {
            steps {
                // Initialize Terraform in the project directory immediately
                sh 'terraform init'
            }
        }
        
        stage('Plan Changes') {
            steps {
                // Create an execution plan with Terraform
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Apply Changes') {
            steps {
                // Apply the planned changes with Terraform
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
        stage('Cleanup') {
            steps {
                // Cleanup temporary files or resources
                sh 'rm -rf .terraform tfplan'
            }
        }
    }
    
    post {
        success {
            // If the pipeline execution is successful
            echo 'Deployment successful!'
        }
        failure {
            // If the pipeline execution fails
            echo 'Deployment failed!'
        }
    }
}
