{ config, lib, pkgs, ... }:
{


services.syncthing = {
    enable = true;
    dataDir = "/home/andre/.local/share/syncthing";
    openDefaultPorts = true;
    configDir = "/home/andre/.config/syncthing";
    user = "andre";
    group = "users";
    guiAddress = "127.0.0.1:8384";
    overrideDevices = true;
    overrideFolders = true;

      settings.devices = {
          "home-desktop" = { id = "SESEFI3-AKN5GKF-5U4YVBF-KGWPBYB-WRHFQ22-5DWW2SP-5VHJGBE-5WM3QQ6"; autoAcceptFolders = true;};
          "s22-cel" = { id = "V5FI5LW-TSHJUIR-LVFYZHA-3CZX7WV-QMRI7AA-NPETMDZ-G67UE2G-5MGMVQ4"; autoAcceptFolders = true;};
          "usp-desktop" = { id = "AM5VQTL-46XWH4Y-V7OEGPI-YGLTINN-OWV5A3A-3TVCE7A-UF5OG57-PC65HAB"; autoAcceptFolders = true;};
          "dell-laptop" = { id = "W4NJAW2-FM2X2FP-VKFLILS-4JEUORB-AWQSKXA-LNVLMW6-K4LJEE6-5ODROA2"; autoAcceptFolders = true;};
          "hp-laptop" = { id = "AWARHUU-5XNZSLX-BUIQK7B-KR26TOW-UAMFEOB-HERNOQH-EJQCU5T-HQJ24AR"; autoAcceptFolders = true;};
    };

    settings.folders = {

      "sync" = {
        id = "default";
        path = "/home/andre/sync";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "hp-laptop" ];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
       };

      "projects" = {
        id = "rsfww-9aoyp";
        path = "/home/andre/projects";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "hp-laptop" ];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
       };

      "notas" = {
        id = "tkpde-x2smc";
        path = "/home/andre/notas";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "s22-cel" "hp-laptop"];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
      };

      "blog" = {
        id = "hufdp-52p2n";
        path = "/home/andre/blog";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "s22-cel" "hp-laptop"];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
      };

      ".ssh" = {
        id = "vworj-qlkdr";
        path = "/home/andre/.ssh";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "s22-cel" "hp-laptop"];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
      };


      "roam-notes" = {
        id = "rqlad-kzr24";
        path = "/home/andre/roam-notes";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "s22-cel" "hp-laptop"];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
       };

      ".dotfiles" = {
        id = "kcjj3-wpgry";
        path = "/home/andre/.dotfiles";
        devices = [ "home-desktop" "usp-desktop" "dell-laptop" "s22-cel"  "hp-laptop"];
        versioning = {
         type = "simple";
          params = {
            keep = "10";
          };
        };
       };


      };

    };



}