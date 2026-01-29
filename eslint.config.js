import tseslint from 'typescript-eslint';

export default [
  {
    name: "app/setup-files-to-be-ignored",
  },
  ...tseslint.config(
    {
      files: ["**/*.ts", "**/*.tsx"],
      languageOptions: {
        parser: tseslint.parser,
        ecmaVersion: "latest",
        sourceType: "module",
        globals: {
          console: "readonly",
        },
      },
      rules: {
        "@typescript-eslint/no-unused-vars": "warn",
        "no-console": "off",
      },
    },
    {
      ignores: ["node_modules", "dist", "build", ".cache", "coverage"],
    }
  ),
];
