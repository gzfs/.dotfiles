{
	description = "Flake";

	inputs = {
		nixpkgs = {
			url = "github:NixOS/nixpkgs/nixos-24.11";
		};

		home-manager = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {self, nixpkgs, home-manager, ...}: 
		let 
			lib = nixpkgs.lib; 
			system = "x86_64-linux";
			pkgs = nixpkgs.legacyPackages.${system};

			nixUsers = {
				ntrlg = {
					email = "vismbs@pm.me";
					fullName = "Vishal";
					name = "ntrlg";
				};
			};

			mkNixOSConfiguration = hostname: username:
				nixpkgs.lib.nixosSystem {
					specialArgs = {
						nixUser = nixUsers.${username};
						nixosModules = "${self}/modules/nixos";
					};
					modules = [./hosts/${hostname} ];
				};
			
			mkHomeConfiguration = system: username: hostname:
				home-manager.lib.homeManagerConfiguration {
					inherit pkgs;
					extraSpecialArgs = {
						userConfig = nixUsers.${username};
						nhModules = "${self}/modules/home-manager";
					};
					modules = [
						./home/${username}/${hostname}
					];
				};

		in {

		nixosConfigurations = {
			ntrlhkbx = mkNixOSConfiguration "ntrlhkbx" "ntrlg";
		};

		homeConfigurations = {
			ntrlg = mkHomeConfiguration "x86_64-linux" "ntrlg" "ntrlhkbx";
		};

	};
}
