node {
        
  echo sh(returnStdout: true, script:'env|sort')  
  echo "=======================================")
  sh 'env >env.txt'
  reafile('env.txt').split("\r?\n").each {
     println it
  }
  echo "++++++++++++++++++++++++++++++++++++++")
        
  stage ('init') {
   echo "Initialize"
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
