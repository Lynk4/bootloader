# bootloader

---

![cover](https://github.com/user-attachments/assets/2c3b11f0-dbf5-4134-9506-14ab066e8297)

---
## **What is a boot loader?......**



### **A boot loader loads an operating system from a storage media, creates a basic environment in which the OS may function, and executes the operating system's startup procedure.**

---
<img width="1001" alt="Screenshot 2024-08-12 at 6 20 37 PM" src="https://github.com/user-attachments/assets/6a73716f-cd49-46b4-9d2f-a36a9ace6150">

### *The boot sector needs to be installed in a well-known, consistent location. It takes up 512 bytes and is located in the disk's first sector (Cylinder 0, Head 0, Sector 0). In byte positions 511 and 512 of the boot sector, respectively, two magic numbers, 0x55 and 0xAA, are used by the BIOS to recognize a boot device as a legitimate bootable one. The BIOS loads the boot sector into memory at a specific address, 0x0000:0x7C00, when it discovers one.*

---

## Setting up the scene

- [nasm](https://en.wikipedia.org/wiki/Netwide_Assembler) - The Netwide Assembler (NASM) is an assembler and disassembler for the Intel x86 architecture. It can be used to write 16-bit, 32-bit (IA-32) and 64-bit (x86-64) programs.


```bash
sudo apt install nasm
```

- [QEMU](https://www.qemu.org/docs/master/system/target-i386.html) - An emulator to test our bootloader would eliminate the risk of inadvertently damaging our hardware due to poorly written OS code.

```bash
sudo apt install qemu-system-x86
```
- bless - Just in case you're interested in seeing what's inside our bootloader, you can use hexdump or bless.

```
sudo apt install bless
```

---

<div align="center">
	<img src="https://github.com/user-attachments/assets/cd611059-eae7-4d28-b75d-1bc3eeb9daf3">
</div>

---

