# Flake Templates

Flake templates 

## Infra
Add a simple schema of infra deploy template.
```bash
nix flake init -t github:z-infra/templates#infra
```
### Cli
Folder where you put your cli commands.  
As an example you have the script [cli/main](cli/main)  

### Nixpkgs
Folder where you put custom packages.  
Add the folder of package at [nixpkgs/](nixpkgs/).  
After it add the packages at [nixpkgs/all-packages.nix](nixpkgs/all-packages.nix)  
As an example you have the package [nixpkgs/infra](nixpkgs/infra)  

### Overlays
Add overlays to this list. The first entry extends the nipxkgs.  
You can see this list in [overlays/default.nix](overlays/default.nix)  

