#!/bin/bash
# variable scope
var=global
scope() {
	local var=hello
	echo "within function the value of var is $var";
}
#var=outside
echo "before calling function value of var is $var"
scope local
echo "after function call value of var is $var"
