module.exports = {
  root: true,
  env: {
    browser: true,
    node: true,
  },
  parserOptions: {
    parser: 'babel-eslint',
  },
  extends: [
    '@nuxtjs',
    'prettier',
    'prettier/vue',
    'plugin:prettier/recommended',
    'plugin:nuxt/recommended',
    'airbnb-base',
  ],
  plugins: ['prettier'],
  // add your custom rules here
  rules: {
    'nuxt/no-cjs-in-config': 'off',
    'comma-dangle': [2, 'always-multiline'],
    'max-len': ['error', { code: 140 }],
    'no-console': 'off',
    'no-param-reassign': 'off',
  },
  overrides: [
    {
      files: ['*.vue'],
      rules: {
        'max-len': 'off',
        'vue/max-len': [
          'error',
          {
            code: 140,
            template: 80000,
            tabWidth: 2,
            comments: 140,
            ignorePattern: '',
            ignoreComments: false,
            ignoreTrailingComments: false,
            ignoreUrls: false,
            ignoreStrings: false,
            ignoreTemplateLiterals: false,
            ignoreRegExpLiterals: true,
            ignoreHTMLAttributeValues: true,
            ignoreHTMLTextContents: false,
          },
        ],
      },
    },
  ],
};
