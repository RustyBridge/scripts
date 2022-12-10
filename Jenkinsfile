pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }      
         stage('Upload to AWS') {
              steps {
                  withAWS(region:'us-east-1',credentials:'Vasilop_IAM') {
                  sh 'echo "Uploading content to S3"'
                      s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'start.sh', bucket:'myec2testbucket-123456')
                  }
              }
         }
     }
}