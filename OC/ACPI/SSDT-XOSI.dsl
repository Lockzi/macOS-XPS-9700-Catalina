/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-XOSI.aml, Sat Nov 14 15:43:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000014D (333)
 *     Revision         0x02
 *     Checksum         0xCA
 *     OEM ID           "ACDT"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x11)
            {
                "Windows 2001", 
                "Windows 2001.1", 
                "FreeBSD", 
                "HP-UX", 
                "OpenVMS", 
                "Windows 2001 SP1", 
                "Windows 2001 SP2", 
                "Windows 2001 SP3", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Microsoft Windows NT", 
                "Microsoft Windows", 
                "Microsoft WindowsME: Millennium Edition", 
                "Linux"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
}

