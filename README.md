# Linux System Call Monitor

<p align="center">

![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![GCC](https://img.shields.io/badge/GCC-CC342D?style=for-the-badge&logo=gnu&logoColor=white)
![ptrace](https://img.shields.io/badge/ptrace-System%20Calls-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</p>

A lightweight **Linux system call monitoring tool** written in **C** using the Linux **ptrace** API.

The monitor traces a target process, captures selected system calls, and generates a structured HTML report summarizing process, file, memory, and network activity.

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
- `socket`
- `connect`
- `bind`
- `listen`
- `accept`
- `send`
- `recv`

### Reporting
- HTML report generation
- CSS-styled report
- Organized monitor sections

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

Specify the executable you want to monitor inside `main.c`.

Example:

```c
report_start("./your_program");
trace("./your_program");
report_finish();
```

Build and run:

```bash
make
./linux_syscall_monitor
```

After execution, the monitor generates:

```text
report.html
```

Open the report in any web browser.

---

## Project Structure

```text
.
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

---

## Future Work

- Support additional Linux system calls
- Improve socket information decoding
- Process tree visualization
- JSON report generation
- Syscall statistics
- Configurable monitoring filters

---

## Disclaimer

This project is intended for **educational and research purposes only**.

It demonstrates Linux process tracing and system call monitoring using the **ptrace** interface.

The software is provided **"as is"**, without warranty of any kind. The author assumes **no responsibility or liability** for any damage, data loss, or legal consequences resulting from the use or misuse of this project.

Users are solely responsible for ensuring that their use complies with applicable laws and regulations. Only monitor processes that you own or have explicit permission to inspect.

---

## License

This project is released under the **MIT License**.
