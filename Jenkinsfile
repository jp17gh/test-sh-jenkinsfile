node {
        
  echo sh(returnStdout: true, script:'env|sort')  
  echo "======================================="
  sh 'env >env.txt'
  reafile('env.txt').split("\r?\n").each {
     println it
  }
  echo "++++++++++++++++++++++++++++++++++++++"
        
  stage ('init') {
  script {
        sh 'env > env.txt'
        String[] envs = readFile('env.txt').split("\r?\n")

        for(String vars: envs){
            println(vars)
        }
    }
  }

  stage ('compile') {
    echo "Compile this repos bbbb"
  }
  
  stage ('test stage') {
    echo "test"
  } 
  
   stage ('publish') {
    echo "publish "
  }
}
