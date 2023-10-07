pipeline {
  agent any 
  stages {
    stage ('checkout') {
      steps {
checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/bharah08/AWS-EKS_Terraform.git']])
      }
    }
     stage ('terraform-init') {
      steps {
sh 'terraform init -reconfigure'
      }
    }
      stage ('terraform-plan') {
      steps {
sh 'terraform plan'
      }
    }
    
      stage ('terraform-apply') {
        
      steps {
sh 'terraform destroy --auto-approve'
      }
    }
  }
}
