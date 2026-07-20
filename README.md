# Linux System Call Monitor

<p align="center">

![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![GCC](https://img.shields.io/badge/GCC-CC342D?style=for-the-badge&logo=gnu&logoColor=white)
![ptrace](https://img.shields.io/badge/ptrace-System%20Calls-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</p>

A lightweight **Linux system call monitor** written in **C** using the **ptrace** API.

The tool traces a target process, monitors selected system calls, and generates an HTML report summarizing process, file, memory, and network activity.

---

## Features

### Process Monitoring

- `fork`
- `execve`
- `wait`

### File Monitoring

- `open`
- `openat`
- `read`
- `close`

### Memory Monitoring

- `mmap`
- `mprotect`
- `munmap`

### Network Monitoring

- *(In progress)*

### Reporting

- HTML report generation
- CSS-styled output

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

Specify the target executable in `main.c`:

```c
report_start("./your_program");
trace("./your_program");
report_finish();
```

Compile and run:

```bash
make
./linux_syscall_monitor
```

After execution, the generated report will be available as:

```text
report.html
```

Open it in any web browser.

---

## Project Structure

├── main.c
├── tracer.c
├── tracer.h
├── syscall.c
├── syscall.h
├── process_monitor.c
├── process_monitor.h
├── file_monitor.c
├── file_monitor.h
├── memory_monitor.c
├── memory_monitor.h
├── network_monitor.c
├── network_monitor.h
├── fd_tables.c
├── fd_tables.h
├── report.c
├── report.h
├── style.css
└── Makefile
```


## Disclaimer

This project is intended for **educational and research purposes**.

It demonstrates Linux process tracing and system call monitoring using the **ptrace** interface.

Use this software only on processes that you own or are authorized to inspect. The author is not responsible for any misuse, data loss, or legal consequences resulting from its use.

---

## License

This project is licensed under the **MIT License**.
