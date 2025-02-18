FROM steamcmd/steamcmd:ubuntu

ENV HOME /root

WORKDIR $HOME

RUN mkdir -p "$HOME/.klei/DoNotStarveTogether/"

RUN ln -s "/MyDediServer" "$HOME/.klei/DoNotStarveTogether/MyDediServer"

RUN steamcmd +force_install_dir "$HOME/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 validate +quit

ADD run_dedicated_servers.sh "$HOME/run_dedicated_servers.sh"
RUN chmod +x "$HOME/run_dedicated_servers.sh"

CMD ["/bin/sh", "$HOME/run_dedicated_servers.sh"]
