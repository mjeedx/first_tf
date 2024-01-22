Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # VM 1 configuration
  config.vm.define "ubuntu1" do |ubuntu1|
    ubuntu1.vm.hostname = "ubuntu1"
    ubuntu1.vm.network "private_network", ip: "192.168.50.10" # You can modify the IP address if needed

    # CPU and memory configuration
    ubuntu1.vm.provider "virtualbox" do |v|
      v.memory = 700
      v.cpus = 1
    end

    # SSH key addition
    ubuntu1.vm.provision "shell", inline: <<-SHELL
      echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCd6ZW3E1uUKifHTLoAnKllj8N3cHaP85IEtTmkDOnkqQW1hbxdsY8/T9s9qvBPWQ/Dnr/kJBDjw/SjUiWEP3p68OtcrmSWqx7N8ehp1S15EZN/21jpzKJUKAskMg9QDFvwkr2VmczTepQKGy61AgA+oBEuqNWNb54Llk8YGrtFoblncRB2JuLFc9u2Jt8+Z3nXeeQcBHbanf1nXUfmQupVjeqMtbQRS5MNkcGFBKUgOM8qmuP8Kf1RpBwpaIFomdeRVGsgPfHlLgkiOo8dU/cUWXT1y6TkMOUBsQY6uuooPCVhyOV2GMK9uZczMtqpbC3DuOxdDikk2bR8fUqnUDa1Wb0SdP/JyM6K99qorf5yoxhu/s+rEjxSFe/AYK0UPGZZF7pKgH78Of3Lj3Bt3M6BfAXPx8NpKxLGSTqigU2Bi8My2hp1gBbWehBEDinxMWHLBsqoSJ+d3vEDUbLL/HRoo/xQ9fEC3WKxU141S95njnOY4Wh2PbNGmdemCgjBVh0= mjee@DESKTOP-CN2AGNS' >> /home/vagrant/.ssh/authorized_keys
    SHELL
  end

  # VM 2 configuration
  config.vm.define "ubuntu2" do |ubuntu2|
    ubuntu2.vm.hostname = "ubuntu2"
    ubuntu2.vm.network "private_network", ip: "192.168.50.11" # You can modify the IP address if needed

    # CPU and memory configuration
    ubuntu2.vm.provider "virtualbox" do |v|
      v.memory = 700
      v.cpus = 1
    end

    # SSH key addition
    ubuntu2.vm.provision "shell", inline: <<-SHELL
      echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCd6ZW3E1uUKifHTLoAnKllj8N3cHaP85IEtTmkDOnkqQW1hbxdsY8/T9s9qvBPWQ/Dnr/kJBDjw/SjUiWEP3p68OtcrmSWqx7N8ehp1S15EZN/21jpzKJUKAskMg9QDFvwkr2VmczTepQKGy61AgA+oBEuqNWNb54Llk8YGrtFoblncRB2JuLFc9u2Jt8+Z3nXeeQcBHbanf1nXUfmQupVjeqMtbQRS5MNkcGFBKUgOM8qmuP8Kf1RpBwpaIFomdeRVGsgPfHlLgkiOo8dU/cUWXT1y6TkMOUBsQY6uuooPCVhyOV2GMK9uZczMtqpbC3DuOxdDikk2bR8fUqnUDa1Wb0SdP/JyM6K99qorf5yoxhu/s+rEjxSFe/AYK0UPGZZF7pKgH78Of3Lj3Bt3M6BfAXPx8NpKxLGSTqigU2Bi8My2hp1gBbWehBEDinxMWHLBsqoSJ+d3vEDUbLL/HRoo/xQ9fEC3WKxU141S95njnOY4Wh2PbNGmdemCgjBVh0= mjee@DESKTOP-CN2AGNS' >> /home/vagrant/.ssh/authorized_keys
    SHELL
  end
end
