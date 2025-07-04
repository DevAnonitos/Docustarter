import type { Config } from "jest";

const config: Config = {
  clearMocks: true,
  verbose: true,
  rootDir: "tests",
  collectCoverage: true,
  coverageProvider: "v8",
  coverageDirectory: "coverage",
  modulePathIgnorePatterns: ['/\\next/'],
  testMatch: ["**/*test.ts", "**/*test.js", "**/*test.tsx", "**/*test.jsx"],
};

export default config;
