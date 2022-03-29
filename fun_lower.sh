#invoke the to_lower()
#to_lower "this is a test"
function to_lower()
{
  local str="$@"
  output=$(tr '[A-Z]' '[a-z]'<<<"${str}")
  echo $output
}
