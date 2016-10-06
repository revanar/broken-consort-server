# encoding: utf-8
# This file originally created at http://rove.io/e9315a106e309c8a620afbe7c7497829

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.forward_agent = true

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'build-essential'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'postgresql'
    chef.add_recipe 'postgresql::client'
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'git'
    chef.add_recipe 'vim'
    chef.add_recipe 'ruby_rbenv::user_install'
    chef.json = {
        :rbenv      => {
            :user_installs => [
                {
                    :user   => "vagrant",
                    :rubies => [
                        "2.3.1"
                    ],
                    :global => "2.3.1"
                }
            ]
        },
        :postgresql => {
            :config   => {
                :listen_addresses => "*",
                :port             => "5432"
            },
            :pg_hba   => [
                {
                    :type   => "local",
                    :db     => "postgres",
                    :user   => "postgres",
                    :addr   => nil,
                    :method => "trust"
                },
                {
                    :type   => "host",
                    :db     => "all",
                    :user   => "all",
                    :addr   => "0.0.0.0/0",
                    :method => "md5"
                },
                {
                    :type   => "host",
                    :db     => "all",
                    :user   => "all",
                    :addr   => "::1/0",
                    :method => "md5"
                }
            ],
            :password => {
                :postgres => "bees"
            },
            "enable_pgdg_apt" => true,
            "use_pgdg_packages" => true
        },
        :git        => {
            :prefix => "/usr/local"
        }
    }
  end
end
