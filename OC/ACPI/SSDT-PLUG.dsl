/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-PLUG.aml, Sat Nov 14 15:43:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000073 (115)
 *     Revision         0x02
 *     Checksum         0xBE
 *     OEM ID           "CORP"
 *     OEM Table ID     "CpuPlug"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "CpuPlug", 0x00003000)
{
    External (_SB_.PR00, ProcessorObj)    // (from opcode)

    Method (PMPM, 4, NotSerialized)
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    Scope (\_SB.PR00)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Return (PMPM (Arg0, Arg1, Arg2, Arg3))
        }
    }
}

