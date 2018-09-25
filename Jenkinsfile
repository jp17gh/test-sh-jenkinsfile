node {

  for ( e in env ){
        echo  " e is + ${e} " 
  }
  
  triggers {
     issueCommentTrigger('whatever ....'); 
  }
  
  
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
