name: my first workflow |shell script
on:
    push:
      branches:
          - main

jobs:
    first_job:
        runs-on: ubuntu-latest
        steps:
            - name: Checkout Repo
              uses: actions/checkout@v5.0.0

            - name: list files
              run: bash script.sh

            
    
    