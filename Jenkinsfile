#!groovy



pipeline {



     agent any

     stages {
     
         stage("Instalare dependente") {
         
             steps {
                 sh 'python3 -m venv FCIMIDWEBCI && . FCIMIDWEBCI/bin/activate && \
                     pip3 install --upgrade pip && \
                     pip3 install wheel && \
                     pip3 install -r requirements.txt && \
                     flask db stamp head && flask db migrate && flask db upgrade && deactivate'
             }
         
         }
         
         stage("Testarea") {
             steps {
                  echo "Testam functionalul"
             }
         
         }
     
     }




}
