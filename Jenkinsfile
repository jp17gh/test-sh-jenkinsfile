node {

    script {

      stage ('init') {
        
        echo sh(returnStdout: true, script:'env|sort')  
        echo "======================================="
        sh 'env >env.txt'
        
        sh '''
        while IFS= read -r envvar
        do 
          echo $envvar
        done
        ''' 
        echo "++++++++++++++++++++++++++++++++++++++"
              
        String[] envs = readFile('env.txt').split("\r?\n")

      }

      stage('Clone repository') {
          // This is the key - how to sync code form github or other DVCS
        checkout scm
      }

      stage('Build image') {
        app = docker.build("hellonode")
      }

      stage('Test image') {
        /* here we can add TCs based on mocha or selenium
        app.inside {
          sh 'echo "Tests passed"'
        }
      }

      stage('Push image') {
        /* Push the docker image to dockerhub with two tags:
        * First, the incremental build number from Jenkins
        * Second, the 'latest' tag - to reuse layers defined in the Dockerfile */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
          app.push("${env.BUILD_NUMBER}")
          app.push("latest")
        }
      }

    }
  }
}