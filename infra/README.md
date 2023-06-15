# Infra
Starter pack to project development with deployment  

### Cli
Folder where you put your cli commands.  
As an example you have the script [cli/infra/main](cli/infra/main)  

### Nixpkgs
Folder where you put custom packages.  
Add the folder of package at [nixpkgs/](nixpkgs/).  
After it add the packages at [nixpkgs/default.nix](nixpkgs/default.nix)  
As an example you have the package [nixpkgs/infra](nixpkgs/infra)  

### Overlays
Add overlays to this list. The first entry extends the nipxkgs.  
You can see this list in [overlays/default.nix](overlays/default.nix)  

