# Project 01: Hardening a Linux Server

## Project Manifest

1. Project 1 Technical Brief by William Strahlend (filename: '_Strahlend_William-Project_1_Technical_Brief.docx_')
2. Hardening Script 01 (filename: '_hardening_script1.sh_')
3. Hardening Script 02 (filename: '_hardening_script2.sh_')
4. README file that includes Citations for Content Outside Bootcamp Course Instruction or Material (_see below_)

---

## Notes
> Some of the commands might have been taught, but I could not recall, so I browsed the Internet to obtain clues or answers to my questions. The citations below are either sites that I obtained information from or co-students who offered data to assist in accomplishing the tasks when I ran into problems.
> 
> These are listed out by the corresponding __Activity Title__ in the '_Strahlend_William-Project_1_Technical_Brief.docx_' document table, providing the _Activity Title_ and then listing out the `command` used with the _source_ for that information.

---

## Citations for Content Outside Bootcamp Course Instruction or Material

### OS Backup

1. `uptime` (source: [How to Check Uptime for a Linux Server | CloudCone Knowledge Center](https://cloudcone.com/docs/article/how-to-check-uptime-for-a-linux-server/))

### Optional: Updating Password Hashing Configuration

1. `sudo nano /etc/login.defs` (source: [Default Password Hashing SHA512 | Baeldung.com](https://www.baeldung.com/linux/default-password-hashing-sha512))

### Disabling Unnecessary Services

> In this activity, I ran into issues in an attempt to complete the associated tasks. _Co-student_, __Benjamin Chavez__ offered assistance with how he accomplished the tasks. Below are the different commands he provided to assist me.

All 16 commands listed below were provided by _Co-student_, __Benjamin Chavez__:

1. `update-rc.d smdb stop`
2. `update-rc.d mysql disable`
3. `update-rc.d samba-ad-dc disable`
4. `update-rc.d smbd disable`
5. `update-rc.d -f mysql remove`
6. `rm /etc/init.d/mysql`
7. `rm -rf /etc/mysql`
8. `rm -rf /var/lib/mysql`
9. `update-rc.d -f samba-ad-dc remove`
10. `rm /etc/init.d/samba-ad-dc`
11. `rm -rf /etc/samba`
12. `rm -rf /var/lib/samba`
13. `update-rc.d -f smbd remove`
14. `rm /etc/init.d/smbd`
15. `rm -rf /etc/smbd`
16. `rm -rf /var/lib/smbd`