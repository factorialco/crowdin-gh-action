# crowdin-gh-action

Github action for crowdin upload-download actions

## Inputs

### `working-directory`

**Optional** The folder where you want to perform the action (Default: `.`)

### `crowdin-action`

**Required** The action you want to perform, `upload` or `download`

### `dry-run`

**Optional** Decide if you want to execute the action in dry-run mode, `false`
or `true` (Default: `false`)

## Example usage

    - name: crowdin upload
      uses: factorialco/crowdin-gh-action@v1
      with:
        crowdin-action: upload
      env:
        CROWDIN_PROJECT_KEY: ${{ secrets.CROWDIN_PROJECT_KEY }}

    - name: crowdin download
      uses: factorialco/crowdin-gh-action@v1
      with:
        crowdin-action: download
      env:
        CROWDIN_PROJECT_KEY: ${{ secrets.CROWDIN_PROJECT_KEY }}
