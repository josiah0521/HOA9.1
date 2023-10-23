2023-10-23 23:01:46,254 p=6430 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:01:46,466 p=6430 u=joshxh n=ansible | ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/joshxh/CPE232_DARROCA/HOA9.1/roles/base/tasks/main.yml': line 2, column 10, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- name: :: Ubuntu :: Cache update
         ^ here

2023-10-23 23:02:58,406 p=6448 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:02:58,543 p=6448 u=joshxh n=ansible | ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/joshxh/CPE232_DARROCA/HOA9.1/roles/prometheus-CentOS/tasks/main.yml': line 3, column 11, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: Install Prometheus
    become: yes
          ^ here

2023-10-23 23:04:53,574 p=6466 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:04:53,715 p=6466 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:04:53,726 p=6466 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:04:54,721 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:04:56,816 p=6466 u=joshxh n=ansible | fatal: [192.168.56.102]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.56.102 port 22: No route to host", "unreachable": true}
2023-10-23 23:04:56,832 p=6466 u=joshxh n=ansible | fatal: [192.168.56.105]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.56.105 port 22: No route to host", "unreachable": true}
2023-10-23 23:04:56,836 p=6466 u=joshxh n=ansible | TASK [Update Repository Index Ubuntu update_cache=True] ***************************
2023-10-23 23:05:01,847 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:01,852 p=6466 u=joshxh n=ansible | TASK [Update Repository Index CentOS update_cache=True] ***************************
2023-10-23 23:05:01,865 p=6466 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:05:01,869 p=6466 u=joshxh n=ansible | TASK [cache update for CentOS to enable prometheus name=epel-release, state=latest] ***
2023-10-23 23:05:01,883 p=6466 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:05:01,887 p=6466 u=joshxh n=ansible | TASK [update and install prometheus for Ubuntu name=prometheus, state=latest, update_cache=True, cache_valid_time=3600] ***
2023-10-23 23:05:02,894 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:02,899 p=6466 u=joshxh n=ansible | TASK [start prometheus name=prometheus, state=started, enabled=True] **************
2023-10-23 23:05:03,571 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:03,575 p=6466 u=joshxh n=ansible | TASK [restart_prometheus name=prometheus, state=restarted, enabled=True, daemon_reload=True] ***
2023-10-23 23:05:04,413 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:04,436 p=6466 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:05:04,440 p=6466 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:05:04,936 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:04,946 p=6466 u=joshxh n=ansible | TASK [base : Ubuntu -  Cache update name=*, state=latest, force_apt_get=True] *****
2023-10-23 23:05:06,278 p=6466 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:05:06,282 p=6466 u=joshxh n=ansible | TASK [base : CentOS -  Package cache update name=*, state=latest] *****************
2023-10-23 23:05:06,293 p=6466 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:05:06,297 p=6466 u=joshxh n=ansible | TASK [base : Server Dependencies name={{ item }}, state=present] ******************
2023-10-23 23:05:07,310 p=6466 u=joshxh n=ansible | ok: [192.168.56.101] => (item=unzip)
2023-10-23 23:05:07,338 p=6466 u=joshxh n=ansible | PLAY [prometheus-Ubuntu] **********************************************************
2023-10-23 23:05:07,346 p=6466 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:14:04,460 p=7667 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:14:04,609 p=7667 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:14:04,617 p=7667 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:14:05,568 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:14:05,582 p=7667 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:14:05,682 p=7667 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:14:05,686 p=7667 u=joshxh n=ansible | TASK [cache update for CentOS to enable prometheus name=epel-release, state=latest] ***
2023-10-23 23:14:05,706 p=7667 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:14:05,706 p=7667 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:14:17,599 p=7667 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:14:17,648 p=7667 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:14:17,653 p=7667 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:14:18,163 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:14:18,204 p=7667 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:14:18,213 p=7667 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:14:18,235 p=7667 u=joshxh n=ansible | TASK [base : Ubuntu -  Cache update name=*, state=latest, force_apt_get=True] *****
2023-10-23 23:14:18,268 p=7667 u=joshxh n=ansible | skipping: [192.168.56.105]
2023-10-23 23:14:19,872 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:17:50,623 p=7667 u=joshxh n=ansible | Calculating upgrade...
The following packages were automatically installed and are no longer required:
  libflashrom1 libftdi1-2 libllvm13
Use 'sudo apt autoremove' to remove them.
The following NEW packages will be installed:
  linux-headers-6.2.0-35-generic linux-hwe-6.2-headers-6.2.0-35
  linux-image-6.2.0-35-generic linux-modules-6.2.0-35-generic
  linux-modules-extra-6.2.0-35-generic
The following packages have been kept back:
  gjs libgjs0g
The following packages will be upgraded:
  ghostscript ghostscript-x gir1.2-javascriptcoregtk-4.0 gir1.2-webkit2-4.0
  irqbalance libcurl3-gnutls libcurl4 libgs9 libgs9-common
  libjavascriptcoregtk-4.0-18 libnetplan0 libsgutils2-2 libsmbclient libtiff5
  libwbclient0 libwebkit2gtk-4.0-37 linux-firmware linux-generic-hwe-22.04
  linux-headers-generic-hwe-22.04 linux-image-generic-hwe-22.04 linux-libc-dev
  netplan.io samba-libs
23 upgraded, 5 newly installed, 0 to remove and 2 not upgraded.
2023-10-23 23:17:50,623 p=7667 u=joshxh n=ansible | changed: [192.168.56.102]
2023-10-23 23:17:50,627 p=7667 u=joshxh n=ansible | TASK [base : CentOS -  Package cache update name=*, state=latest] *****************
2023-10-23 23:17:50,646 p=7667 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:17:50,650 p=7667 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:17:55,711 p=7667 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:17:55,715 p=7667 u=joshxh n=ansible | TASK [base : Server Dependencies name={{ item }}, state=present] ******************
2023-10-23 23:17:56,596 p=7667 u=joshxh n=ansible | ok: [192.168.56.105] => (item=unzip)
2023-10-23 23:17:56,828 p=7667 u=joshxh n=ansible | ok: [192.168.56.102] => (item=unzip)
2023-10-23 23:17:56,944 p=7667 u=joshxh n=ansible | ok: [192.168.56.101] => (item=unzip)
2023-10-23 23:17:56,986 p=7667 u=joshxh n=ansible | PLAY [prometheus-Ubuntu] **********************************************************
2023-10-23 23:17:56,990 p=7667 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:17:57,494 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:17:57,538 p=7667 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:17:57,554 p=7667 u=joshxh n=ansible | TASK [prometheus-Ubuntu : update and install prometheus for Ubuntu name=prometheus, state=latest, update_cache=True, cache_valid_time=3600] ***
2023-10-23 23:17:58,505 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:18:57,851 p=7667 u=joshxh n=ansible | fatal: [192.168.56.102]: FAILED! => {"changed": false, "msg": "Failed to lock apt for exclusive operation: Failed to lock directory /var/lib/apt/lists/: E:Could not open lock file /var/lib/apt/lists/lock - open (13: Permission denied)"}
2023-10-23 23:18:57,855 p=7667 u=joshxh n=ansible | TASK [prometheus-Ubuntu : start prometheus name=prometheus, state=started, enabled=True] ***
2023-10-23 23:18:58,448 p=7667 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:18:58,465 p=7667 u=joshxh n=ansible | PLAY [prometheus-CentOS] **********************************************************
2023-10-23 23:18:58,470 p=7667 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:18:59,217 p=7667 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:18:59,226 p=7667 u=joshxh n=ansible | TASK [prometheus-CentOS : Add Prometheus YUM repository for CentOS name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch, description=Prometheus repository, gpgcheck=False] ***
2023-10-23 23:18:59,715 p=7667 u=joshxh n=ansible | [0;31m--- before: /etc/yum.repos.d/prometheus.repo[0m
[0;31m[0m[0;32m+++ after: /etc/yum.repos.d/prometheus.repo[0m
[0;32m[0m[0;36m@@ -0,0 +1,5 @@[0m
[0;36m[0m[0;32m+[prometheus][0m
[0;32m[0m[0;32m+baseurl = https://packagecloud.io/prometheus-rpm/release/el/7/$basearch[0m
[0;32m[0m[0;32m+gpgcheck = 0[0m
[0;32m[0m[0;32m+name = Prometheus repository[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m

2023-10-23 23:18:59,715 p=7667 u=joshxh n=ansible | changed: [192.168.56.105]
2023-10-23 23:18:59,719 p=7667 u=joshxh n=ansible | TASK [prometheus-CentOS : Install Prometheus in CentOS name=prometheus, state=present] ***
2023-10-23 23:19:18,504 p=7667 u=joshxh n=ansible | changed: [192.168.56.105]
2023-10-23 23:19:18,520 p=7667 u=joshxh n=ansible | PLAY RECAP ************************************************************************
2023-10-23 23:19:18,521 p=7667 u=joshxh n=ansible | 192.168.56.101             : ok=7    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   
2023-10-23 23:19:18,521 p=7667 u=joshxh n=ansible | 192.168.56.102             : ok=5    changed=1    unreachable=0    failed=1    skipped=2    rescued=0    ignored=0   
2023-10-23 23:19:18,521 p=7667 u=joshxh n=ansible | 192.168.56.105             : ok=8    changed=2    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0   
2023-10-23 23:22:31,295 p=8222 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:22:31,431 p=8222 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:22:31,438 p=8222 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:22:32,364 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:32,371 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:32,449 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:32,453 p=8222 u=joshxh n=ansible | TASK [cache update for CentOS to enable prometheus name=epel-release, state=latest] ***
2023-10-23 23:22:32,476 p=8222 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:22:32,476 p=8222 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:22:37,208 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:37,257 p=8222 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:22:37,262 p=8222 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:22:37,784 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:37,804 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:37,861 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:37,881 p=8222 u=joshxh n=ansible | TASK [base : Ubuntu -  Cache update name=*, state=latest, force_apt_get=True] *****
2023-10-23 23:22:37,913 p=8222 u=joshxh n=ansible | skipping: [192.168.56.105]
2023-10-23 23:22:39,457 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:39,460 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:39,464 p=8222 u=joshxh n=ansible | TASK [base : CentOS -  Package cache update name=*, state=latest] *****************
2023-10-23 23:22:39,485 p=8222 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:22:39,486 p=8222 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:22:43,687 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:43,691 p=8222 u=joshxh n=ansible | TASK [base : Server Dependencies name={{ item }}, state=present] ******************
2023-10-23 23:22:44,598 p=8222 u=joshxh n=ansible | ok: [192.168.56.105] => (item=unzip)
2023-10-23 23:22:44,733 p=8222 u=joshxh n=ansible | ok: [192.168.56.101] => (item=unzip)
2023-10-23 23:22:44,753 p=8222 u=joshxh n=ansible | ok: [192.168.56.102] => (item=unzip)
2023-10-23 23:22:44,798 p=8222 u=joshxh n=ansible | PLAY [prometheus-Ubuntu] **********************************************************
2023-10-23 23:22:44,802 p=8222 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:22:45,319 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:45,323 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:45,337 p=8222 u=joshxh n=ansible | TASK [prometheus-Ubuntu : update and install prometheus for Ubuntu name=prometheus, state=latest, update_cache=True, cache_valid_time=3600] ***
2023-10-23 23:22:46,313 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:46,332 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:46,336 p=8222 u=joshxh n=ansible | TASK [prometheus-Ubuntu : start prometheus name=prometheus, state=started, enabled=True] ***
2023-10-23 23:22:46,966 p=8222 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:22:46,986 p=8222 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:22:47,018 p=8222 u=joshxh n=ansible | PLAY [prometheus-CentOS] **********************************************************
2023-10-23 23:22:47,023 p=8222 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:22:47,562 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:47,571 p=8222 u=joshxh n=ansible | TASK [prometheus-CentOS : Add Prometheus YUM repository for CentOS name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch, description=Prometheus repository, gpgcheck=False] ***
2023-10-23 23:22:48,061 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:48,064 p=8222 u=joshxh n=ansible | TASK [prometheus-CentOS : Install Prometheus in CentOS name=prometheus, state=present] ***
2023-10-23 23:22:48,875 p=8222 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:22:48,890 p=8222 u=joshxh n=ansible | PLAY RECAP ************************************************************************
2023-10-23 23:22:48,890 p=8222 u=joshxh n=ansible | 192.168.56.101             : ok=7    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   
2023-10-23 23:22:48,890 p=8222 u=joshxh n=ansible | 192.168.56.102             : ok=7    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   
2023-10-23 23:22:48,890 p=8222 u=joshxh n=ansible | 192.168.56.105             : ok=8    changed=0    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0   
2023-10-23 23:27:15,552 p=8717 u=joshxh n=ansible | [WARNING]: Invalid characters were found in group names but not replaced, use
-vvvv to see details

2023-10-23 23:27:15,689 p=8717 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:27:15,695 p=8717 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:27:16,617 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:16,625 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:16,753 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:16,757 p=8717 u=joshxh n=ansible | TASK [cache update for CentOS to enable prometheus name=epel-release, state=latest] ***
2023-10-23 23:27:16,775 p=8717 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:27:16,776 p=8717 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:27:22,282 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:22,335 p=8717 u=joshxh n=ansible | PLAY [all] ************************************************************************
2023-10-23 23:27:22,340 p=8717 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:27:22,850 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:22,896 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:22,947 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:22,969 p=8717 u=joshxh n=ansible | TASK [base : Ubuntu -  Cache update name=*, state=latest, force_apt_get=True] *****
2023-10-23 23:27:23,000 p=8717 u=joshxh n=ansible | skipping: [192.168.56.105]
2023-10-23 23:27:24,504 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:24,625 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:24,629 p=8717 u=joshxh n=ansible | TASK [base : CentOS -  Package cache update name=*, state=latest] *****************
2023-10-23 23:27:24,649 p=8717 u=joshxh n=ansible | skipping: [192.168.56.101]
2023-10-23 23:27:24,650 p=8717 u=joshxh n=ansible | skipping: [192.168.56.102]
2023-10-23 23:27:32,394 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:32,398 p=8717 u=joshxh n=ansible | TASK [base : Server Dependencies name={{ item }}, state=present] ******************
2023-10-23 23:27:33,281 p=8717 u=joshxh n=ansible | ok: [192.168.56.105] => (item=unzip)
2023-10-23 23:27:33,422 p=8717 u=joshxh n=ansible | ok: [192.168.56.102] => (item=unzip)
2023-10-23 23:27:33,435 p=8717 u=joshxh n=ansible | ok: [192.168.56.101] => (item=unzip)
2023-10-23 23:27:33,477 p=8717 u=joshxh n=ansible | PLAY [prometheus-Ubuntu] **********************************************************
2023-10-23 23:27:33,482 p=8717 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:27:33,970 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:34,005 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:34,021 p=8717 u=joshxh n=ansible | TASK [prometheus-Ubuntu : update and install prometheus for Ubuntu name=prometheus, state=latest, update_cache=True, cache_valid_time=3600] ***
2023-10-23 23:27:34,952 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:35,016 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:35,020 p=8717 u=joshxh n=ansible | TASK [prometheus-Ubuntu : start prometheus name=prometheus, state=started, enabled=True] ***
2023-10-23 23:27:35,678 p=8717 u=joshxh n=ansible | ok: [192.168.56.102]
2023-10-23 23:27:35,682 p=8717 u=joshxh n=ansible | ok: [192.168.56.101]
2023-10-23 23:27:35,712 p=8717 u=joshxh n=ansible | PLAY [prometheus-CentOS] **********************************************************
2023-10-23 23:27:35,718 p=8717 u=joshxh n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ************
2023-10-23 23:27:36,258 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:36,267 p=8717 u=joshxh n=ansible | TASK [prometheus-CentOS : Add Prometheus YUM repository for CentOS name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch, description=Prometheus repository, gpgcheck=False] ***
2023-10-23 23:27:36,761 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:36,765 p=8717 u=joshxh n=ansible | TASK [prometheus-CentOS : Install Prometheus in CentOS name=prometheus, state=present] ***
2023-10-23 23:27:37,553 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:37,557 p=8717 u=joshxh n=ansible | TASK [prometheus-CentOS : start prometheus name=prometheus, state=started, enabled=True] ***
2023-10-23 23:27:38,397 p=8717 u=joshxh n=ansible | ok: [192.168.56.105]
2023-10-23 23:27:38,414 p=8717 u=joshxh n=ansible | PLAY RECAP ************************************************************************
2023-10-23 23:27:38,414 p=8717 u=joshxh n=ansible | 192.168.56.101             : ok=7    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   
2023-10-23 23:27:38,414 p=8717 u=joshxh n=ansible | 192.168.56.102             : ok=7    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   
2023-10-23 23:27:38,414 p=8717 u=joshxh n=ansible | 192.168.56.105             : ok=9    changed=0    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0   
