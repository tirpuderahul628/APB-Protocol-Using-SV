# APB Protocol Verification (SystemVerilog)

A modular, class-based SystemVerilog testbench environment for verifying the AMBA Advanced Peripheral Bus (APB) protocol, simulated using **Synopsys VCS**.

---

## 🧪 Test Suite Results

All 10 test cases executed with **0 Verification Errors / 0 Mismatches**:

| # | Test Case | Scenario / Features Verified | Wait Mode | Status |
| :-: | :--- | :--- | :-: | :-: |
| 1 | `apb_write_test.sv` | Single & burst write transfers | Standard | `PASSED` |
| 2 | `apb_read_test.sv` | Single & burst read data integrity | Standard | `PASSED` |
| 3 | `apb_write_read_test.sv` | Consecutive write followed by read access | Standard | `PASSED` |
| 4 | `apb_reset_test.sv` | On-the-fly reset during SETUP/ACCESS phases | Standard | `PASSED` |
| 5 | `apb_slverr_test.sv` | Error response verification (`PSLVERR`) | Standard | `PASSED` |
| 6 | `apb_write_zerowait_test.sv` | High-throughput write without wait states | Zero-Wait | `PASSED` |
| 7 | `apb_read_zerowait_test.sv` | High-throughput read without wait states | Zero-Wait | `PASSED` |
| 8 | `apb_write_read_zerowait_test.sv` | Back-to-back zero-delay write-read sequence | Zero-Wait | `PASSED` |
| 9 | `apb_reset_zerowait_test.sv` | Reset response during zero-wait bursts | Zero-Wait | `PASSED` |
| 10 | `apb_slverr_zerowait_test.sv` | Immediate error acknowledgment (`PSLVERR`) | Zero-Wait | `PASSED` |

---

## 📁 Directory Structure

```plaintext
APB-Protocol-Using-SV/
├── env/     # Class components (generator, driver, monitor, scoreboard, env)
├── rtl/     # APB Slave DUT / RTL source files
├── sim/     # Simulation scripts, filelists, and log files
├── test/    # SystemVerilog test library (standard & zero-wait tests)
└── top/     # Top module and APB SystemVerilog interface
