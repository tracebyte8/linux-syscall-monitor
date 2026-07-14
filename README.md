# linux-syscall-monitor


<p align="center">

![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![GCC](https://img.shields.io/badge/GCC-CC342D?style=for-the-badge&logo=gnu&logoColor=white)
![ptrace](https://img.shields.io/badge/ptrace-System%20Calls-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</p>

A lightweight **Linux system monitoring tool** written in C.

The project uses the Linux **ptrace** interface to trace a target process and monitor its system calls in real time. It generates an HTML report describing the observed activity.

---

## Features

- Process monitoring
  - `fork`
  - `execve`
  - `wait`

- File monitoring
  - `open/openat`
  - `read`
  - `close`

- Memory monitoring
  - `mmap`
  - `mprotect`
  - `munmap`

- Network monitoring
  - `socket`
  - `connect`
  - `bind`
  - `listen`
  - `accept`
  - `send`
  - `recv`

- HTML report generation
- CSS styled report

---

## Requirements

- Linux
- GCC
- Make

---

## Build

```bash
make
```

---

## Usage

Replace the program path inside `main.c` with the executable you want to monitor.

Example:

```c
report_start("./your_program");
trace("./your_program");
report_finish();
```

Then build and run:

```bash
make
./sandbox
```

The generated report will be saved as:

```
report.html
```

Open it in your browser.

---

## Project Structure

```
.
├── main.c
├── tracer.c
├── syscall.c
├── process_monitor.c
├── file_monitor.c
├── memory_monitor.c
├── network_monitor.c
├── fd_tables.c
├── report.c
├── report.h
├── style.css
└── Makefile
```

---

# Disclaimer

This project is intended for **educational and research purposes only**, demonstrating Linux process tracing and system call monitoring using the `ptrace` interface.

It is provided **"as is"**, without warranty of any kind. The author assumes **no responsibility or liability** for any damage, data loss, or legal consequences resulting from the use or misuse of this software.

Users are solely responsible for ensuring that their use of this project complies with applicable laws and regulations. Only monitor processes that you own or have explicit permission to inspect.

---

## License

MIT License