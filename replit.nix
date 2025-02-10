{ pkgs }: {
    deps = [
        pkgs.python39
        pkgs.python39Packages.pip
        pkgs.poetry
        pkgs.go
        pkgs.gopls
        pkgs.gotools
        pkgs.go-tools
        pkgs.bash
        pkgs.git
    ];
} 