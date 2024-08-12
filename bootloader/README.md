# Hello World..........

---

## **Putting the code into action**

1. Compile our assembly file
```
lynk@Linux ~/bootloader> make all
nasm - bin./src/boot.asm -o ./bin/boot.bin
lynk@Linux~/bootloader>
```
---

<img width="1440" alt="Screenshot 2024-08-12 at 2 41 57 PM" src="https://github.com/user-attachments/assets/90730b8b-6ec5-44de-897a-2292913037fe">

---

2. The command above will create a boot.bin file, which is essentially our assembled machine code that can be installed as a boot sector on a disk.

3. Now we'll use QEmu to run the binary file. 


```bash
lynk@Linux ~/bootloader> qemu-system-x86_64 -hda./bin/boot.bin
```

---

<img width="1440" alt="Screenshot 2024-08-12 at 2 48 34 PM" src="https://github.com/user-attachments/assets/deb3b147-652d-4281-84d7-ffdc09c2cea4">

---
