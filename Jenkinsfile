pipeline {
    agent any
    stages {
        stage('Execute PowerShell script') {
            steps {
                powershell 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force'
                powershell './20user.ps1'
            }
        }
    }
}
