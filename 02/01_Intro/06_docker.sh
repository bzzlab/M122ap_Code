# copy files to container
$ docker ps
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS     NAMES
81cc3964c6b2   m122      "/bin/bash"   6 minutes ago   Up 6 minutes             ia22b

$ docker cp 03a-source.sh 81c:/root
Successfully copied 2.05kB to 81c:/root

$ docker cp 03b-variables.sh 81c:/root
Successfully copied 2.05kB to 81c:/root

$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED        SIZE
readydocker1/jenkins-agent-python   latest    5080c15a876f   4 days ago     684MB
m122                                latest    faca24ed0939   6 days ago     145MB
traffic-img                         latest    1d3b05ffdbd5   8 days ago     1.18GB
readydocker1/jenkins-docker         latest    c2d96ab77399   13 days ago    1.09GB
ubuntu                              18.04     f9a80a55f492   6 months ago   63.2MB

$ docker ps
CONTAINER ID   IMAGE     COMMAND       CREATED             STATUS             PORTS     NAMES
81cc3964c6b2   m122      "/bin/bash"   About an hour ago   Up About an hour             ia22b

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND       CREATED             STATUS             PORTS     NAMES
81cc3964c6b2   m122      "/bin/bash"   About an hour ago   Up About an hour             ia22b

$ docker run -itd --rm --name ia22b m122
530a4e1ea7e50be0a1af4d51a22d8b40ada95a764658121e5a023b3ec3d8b371

$ docker exec -it ia22b bash
root@530a4e1ea7e5:/# cd /root
root@530a4e1ea7e5:~# ls
hallo.sh
root@530a4e1ea7e5:~# ls
02.sh  hallo.sh
root@530a4e1ea7e5:~# ./02.sh

ID  COURSE NAME                  LEVEL     von/bis    Room
-----------------------------------------------------------
122 Abläufe_mit_Scripts_autom.   IA21a,b    8.00      12.00
165 NoSQL-Datenbanken_einsetz.   IA22a,b   13.50      15.00
root@530a4e1ea7e5:~# exit
exit

$ docker commit ia22b m122:2.0
sha256:35a65750a881bc8e3b92c991edaf9a5cdd2cc87a43730af48289c28c237e10a8

$ docker stop ia22b
ia22b

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

$ docker run -itd --rm --name ia22b m122:2.0
2252e3f5bb18dd83d7c48a1af05b406a26d6fb1b66ab05d6abd4165b8698eb20

$ docker ps
CONTAINER ID   IMAGE      COMMAND       CREATED         STATUS         PORTS     NAMES
2252e3f5bb18   m122:2.0   "/bin/bash"   6 seconds ago   Up 6 seconds             ia22b


$ docker exec -it ia22b bash
root@2252e3f5bb18:/# cd /root
root@2252e3f5bb18:~# ls
02.sh  hallo.sh
root@2252e3f5bb18:~# exit
exit

$ docker diff ia22b
C /root
C /root/.bash_history
