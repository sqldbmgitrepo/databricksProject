#databricks setup

##Summary
- [Setup](#Setup)

***
### Setup
Python should be installed before below step
1. To install ```databricks cli```
```bash
pip install databricks-cli
```
2. check databricks version by command 
```bash
databricks --version
```
3. Generate token by login into databricks 
    a) Go to the user settings of databricks to generate token
4. Copy the databricks instance location by going to the azure resource and just copy the url till .net
5. Fire command
```bash
databricks configure --token
```
6. This will ask you the url and once url is entered it will ask about the token which you had generated through databricks
7. Once token is passed. We can run the below command 
```bash
databricks workspace ls /Users/
```


    
