name: multi_jobs
on: push
jobs:
    build_job1:
        runs-on: ubuntu-latest
        steps:
            - name: checkout repo
              uses: actions/checkout@v4

            - name: install cowsay
              run: sudo apt-get install cowsay -y

            - name: excute cowsay cmd
              run: cowsay -f dragon "Run for cover, iam a Dragon....RAWR" >> dragon.txt

            - name: upload artifact
              uses: actions/upload-artifact@v4
              with:
                name: dragon-file
                path: dragon.txt
    
    test_job2:
        runs-on: ubuntu-latest
        needs: build_job1
        steps:

            - name: download artifact
              uses: actions/download-artifact@v4
              with:
                name: dragon-file
            - name: test file exists
              run: grep -i "dragon" dragon.txt
