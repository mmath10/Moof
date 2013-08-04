module MoofUtils where 

data ErrorReport a = ERROR {
  --message to print
  errorMesg :: String ,
  --Data useful for recovering from 
  --errors
  errorData :: a
 } deriving (Show )
            
            






  