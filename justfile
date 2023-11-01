build:
    wasm-pack build --scope djakish
    jq '.files = ["*"]' pkg/package.json > tmp.json && mv tmp.json pkg/package.json

publish:
    cd pkg && npm publish --access=public
