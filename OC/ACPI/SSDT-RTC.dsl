/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-RTC.aml, Sat Nov 14 15:43:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006D (109)
 *     Revision         0x02
 *     Checksum         0x30
 *     OEM ID           "ACDT"
 *     OEM Table ID     "RTC0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "RTC0", 0x00000000)
{
    External (_SB_.PCI0.LPCB.RTC_, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.RTC)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

