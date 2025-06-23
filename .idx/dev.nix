# see: https://firebase.google.com/docs/studio/customize-workspace
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.git
    pkgs.zip
    pkgs.unzip
    pkgs.yarn
    pkgs.pnpm
    pkgs.npm-check
    pkgs.npm-check-updates

    pkgs.jq
    pkgs.tree
    pkgs.wget
    pkgs.curl
    pkgs.cmake
    pkgs.yamlfmt
    pkgs.openssl

    pkgs.go
    pkgs.ts
    pkgs.rustc
    pkgs.nodejs_22

    pkgs.gh            
    pkgs.act
    pkgs.glab
    
    pkgs.gitlab-shell
    pkgs.gitlab-pages
    pkgs.gitlab-runner
    pkgs.github-backup
    pkgs.github-runner
    pkgs.github-release

    pkgs.docker
    pkgs.docker-ls
    pkgs.docker-buildx
    pkgs.docker-client
    pkgs.docker-compose
  ];

  # Sets environment variables in the workspace
  # env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
        # ide
        "esbenp.prettier-vscode"
        "dbaeumer.vscode-eslint"
        "yoavbls.pretty-ts-errors"
        "streetsidesoftware.code-spell-checker"

        # git
        "eamodio.gitlens"
        "GitLab.gitlab-workflow"
        "github.vscode-github-actions"
        "GitHub.vscode-pull-request-github"
        
        # framework
        "Vue.volar"
        "vitest.explorer"
        "Angular.ng-template"
        "svelte.svelte-vscode"
        "astro-build.astro-vscode"
        "bradlc.vscode-tailwindcss"

        # convenience
        "RooVeterinaryInc.roo-cline"
        "formulahendry.auto-rename-tag"
        "dsznajder.es7-react-js-snippets"
    ];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #     command = ["npm" "run" "dev"];
        #     manager = "web";
        #     env = {
        #         PORT = "$PORT";
        #     };
        # };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        install-deps = "npm install";
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
