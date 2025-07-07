module.exports = {
  '*.{ js,jsx,ts,tsx, mts, mdx }': [
    'prettier --with-node-modules --ignore-path .prettierignore --write',
    'eslint --fix',
  ],
  '*.{json,css,scss,html,yaml,md }': [
    'prettier --with-node-modules --ignore-path .prettierignore --write',
  ],
};
