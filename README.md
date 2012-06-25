# Bluebird

Bluebird aims to be bigdata processing distribution comprising of the following

* [Mesos](http://www.mesosproject.org/)
* [Hadoop](http://hadoop.apache.org/) with task trackers running on mesos
* [Hive](http://hive.apache.org/)
* [Spark](http://spark-project.org/)
* [Shark](http://shark.cs.berkeley.edu/)

The main aim is to help people get started on Spark & Shark easily.


# Preview Release 0.0.1

This release is meant for people to just try out how easy it is to get started with Mesos+Hadoop using Bluebird.

## What works 
You can install mesos and hadoop using this package.

## How do I install?

This assumes you have already set password-less login.

1. Download the latest preview release from the Downloads section
2. Extract the downloaded distribution archive
3. In the shell, change to dist in the extracted folder
4. run
>
>  $ ./install.sh all
>
5. This will install the distribution in ~/bluebird (installing to other directory currently doesn't work)

## How to run?

1. On shell open ~/bluebird
2. Start Mesos
>
> $./run.sh mesos
>
3. Check if mesos started properly, opening http://localhost:8080/
4. Start Hadoop
>
> $./run.sh hadoop
>
5. You should now be able to access Namenode WebUI at http://localhost:50070/ and Jobtracker WebUI at http://localhost:50070/
6. The Mesos WebUI should also show Hadoop framework active

More to come . . .



