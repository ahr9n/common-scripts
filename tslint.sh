
#!/bin/bash

# to generate a tslint.json config file in the current working directory
npx tslint --init

# to check files
npx tslint -c tslint.json 'src/**/*.tsx'

# to fix linting errors for select rules (this may overwrite linted files)
npx tslint --fix tslint.json 'src/**/*.tsx'
