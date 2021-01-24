/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-OCWork-dell.aml, Sat Nov 14 15:43:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006C (108)
 *     Revision         0x02
 *     Checksum         0xE9
 *     OEM ID           "OCLT"
 *     OEM Table ID     "OCWork"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "OCWork", 0x00000000)
{
    External (_SB_.ACOS, IntObj)    // (from opcode)
    External (_SB_.ACSE, IntObj)    // (from opcode)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            \_SB.ACOS = 0x80
            \_SB.ACSE = Zero
        }
    }
}

