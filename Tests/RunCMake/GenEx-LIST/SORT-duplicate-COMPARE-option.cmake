
file(GENERATE OUTPUT result.txt CONTENT "$<LIST:SORT,a;b,COMPARE:STRING,COMPARE:NATURAL>")