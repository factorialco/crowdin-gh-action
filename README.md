# crowdin-gh-action

Github action for crowdin upload-download actions

## Inputs

### `crowdin_action`

**Required** The action you want to perform, `upload` or `download`

## Example usage

    - name: crowdin upload
      uses: factorialco/crowdin-gh-action@latest
      with:
        crowdin_action: upload
      env:
        CROWDIN_PROJECT_KEY: ${{ secrets.crowdin_project_key }}

    - name: crowdin download
      uses: factorialco/crowdin-gh-action@latest
      with:
        crowdin_action: download
      env:
        CROWDIN_PROJECT_KEY: ${{ secrets.crowdin_project_key }}
