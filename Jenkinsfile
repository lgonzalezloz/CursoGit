pipeline {
    agent any

    stages {
        stage('Crear archivos') {
            steps {
                sh 'echo "Archivo uno" > uno.txt'
                sh 'echo "Archivo dos" > dos.txt'
                sh 'echo "Archivo tres" > tres.txt'
            }
        }

        stage('Listar workspace') {
            steps {
                sh 'ls -la'
            }
        }
    }
}