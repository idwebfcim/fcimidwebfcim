#!groovy

pipeline {
     
     agent any

     options {
         timestamps()
     }
     
     stages {
     
          stage("Build") {
               steps {
                    sh 'python3 -m venv mediulizolat && \
                        . mediulizolat/bin/activate && \
                        mediulizolat/bin/pip3 install --upgrade pip && \
                        mediulizolat/bin/pip3 install wheel && \
                        mediulizolat/bin/pip3 install -r requirements.txt && \
                        flask db stamp head && flask db migrate && flask db upgrade && \
                        deactivate'
               }
          }
          
          stage("Testing") {
               steps {
                   echo "Sunt aici etapa TEST"
               }
          }
     
     }




}
