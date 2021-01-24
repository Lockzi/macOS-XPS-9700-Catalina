DefinitionBlock ("", "SSDT", 2, "HACK", "PCI", 0x00000000)
{
	External (_SB_.PCI0.MCHC, DeviceObj)
	Device (_SB.PCI0.MCHC)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "Host bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}
//	External (_SB_.PCI0.PEG0, DeviceObj)
//	Device (_SB.PCI0.PEG0)
//	{
//		Name (_ADR, 0x00010000)
//		Method (_DSM, 4, NotSerialized)
//		{
//			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
//			Return (Package ()
//			{
//				"model", Buffer () { "Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (x16)" },
//				"device_type", Buffer () { "PCI bridge" },
//				"AAPL,slot-name", Buffer () { "Internal@0,1,0" },
//			})
//		}
//	}
	External (_SB_.PCI0.IGPU, DeviceObj)
	Device (_SB.PCI0.IGPU)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"AAPL,slot-name", Buffer () { "Internal@0,2,0" },
				"enable-hdmi20", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"enable-hdmi-dividers-fix", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,ig-platform-id", Buffer () { 0x00, 0x00, 0x9B, 0x3E },
				"model", Buffer () { "Intel UHD Graphics 630 (Mobile)" },
				"device-id", Buffer () { 0x9B, 0x3E, 0x00, 0x00 },
				"enable-lspcon-support", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"device_type", Buffer () { "VGA compatible controller" },
				"framebuffer-con3-has-lspcon", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			})
		}
	}
//	External (_SB_.PCI0.B0D4, DeviceObj)
//	Device (_SB.PCI0.B0D4)
//	{
//		Name (_ADR, 0x00040000)
//		Method (_DSM, 4, NotSerialized)
//		{
//			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
//			Return (Package ()
//			{
//				"model", Buffer () { "Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem" },
//				"device_type", Buffer () { "Signal processing controller" },
//				"AAPL,slot-name", Buffer () { "Internal@0,4,0" },
//			})
//		}
//	}
//	External (_SB_.PCI0.ISHD, DeviceObj)
//	Device (_SB.PCI0.ISHD)
//	{
//		Name (_ADR, 0x00130000)
//		Method (_DSM, 4, NotSerialized)
//		{
//			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
//			Return (Package ()
//			{
//				"model", Buffer () { "???" },
//				"device_type", Buffer () { "Serial controller" },
//				"AAPL,slot-name", Buffer () { "Internal@0,19,0" },
//			})
//		}
//	}
//	External (_SB_.PCI0.XHC, DeviceObj)
//	Device (_SB.PCI0.XHC)
//	{
//		Name (_ADR, 0x00140000)
//		Method (_DSM, 4, NotSerialized)
//		{
//			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
//			Return (Package ()
//			{
//				"model", Buffer () { "Comet Lake USB 3.1 xHCI Host Controller" },
//				"device_type", Buffer () { "USB controller" },
//				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
//			})
//		}
//	}
	External (_SB_.PCI0.CNVW, DeviceObj)
	Device (_SB.PCI0.CNVW)
	{
		Name (_ADR, 0x00140003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Wireless AX201" },
				"device_type", Buffer () { "Network controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,3" },
			})
		}
	}
	External (_SB_.PCI0.I2C0, DeviceObj)
	Device (_SB.PCI0.I2C0)
	{
		Name (_ADR, 0x00150000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake PCH Serial IO I2C Controller #0" },
				"device_type", Buffer () { "Serial bus controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,21,0" },
			})
		}
	}
	External (_SB_.PCI0.I2C1, DeviceObj)
	Device (_SB.PCI0.I2C1)
	{
		Name (_ADR, 0x00150001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake PCH Serial IO I2C Controller #1" },
				"device_type", Buffer () { "Serial bus controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,21,1" },
			})
		}
	}
	External (_SB_.PCI0.IMEI, DeviceObj)
	Device (_SB.PCI0.IMEI)
	{
		Name (_ADR, 0x00160000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake HECI Controller" },
				"device_type", Buffer () { "Communication controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,22,0" },
			})
		}
	}
	External (_SB_.PCI0.RP17, DeviceObj)
	Device (_SB.PCI0.RP17)
	{
		Name (_ADR, 0x001b0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake PCI Express Root Port #17" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0" },
			})
		}
	}
	External (_SB_.PCI0.RP01, DeviceObj)
	Device (_SB.PCI0.RP01)
	{
		Name (_ADR, 0x001c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05, DeviceObj)
	Device (_SB.PCI0.RP05)
	{
		Name (_ADR, 0x001c0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4" },
			})
		}
	}
	External (_SB_.PCI0.RP09, DeviceObj)
	Device (_SB.PCI0.RP09)
	{
		Name (_ADR, 0x001d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake PCI Express Root Port #9" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0" },
			})
		}
	}
	External (_SB_.PCI0.LPCB, DeviceObj)
	Device (_SB.PCI0.LPCB)
	{
		Name (_ADR, 0x001f0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "ISA bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,0" },
			})
		}
	}
	External (_SB_.PCI0.HDEF, DeviceObj)
	Device (_SB.PCI0.HDEF)
	{
		Name (_ADR, 0x001f0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Cannon Point-LP High Definition Audio Controller" },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
				"device_type", Buffer () { "Multimedia audio controller" },
			})
		}
	}
	External (_SB_.PCI0.SBUS, DeviceObj)
	Device (_SB.PCI0.SBUS)
	{
		Name (_ADR, 0x001f0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Comet Lake PCH SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,4" },
			})
		}
	}
	External (_SB_.PCI0.RP09.PXSX, DeviceObj)
	Device (_SB.PCI0.RP09.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "JHL7540 Thunderbolt 3 Bridge [Titan Ridge 4C 2018]" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.PXSX, DeviceObj)
	Device (_SB.PCI0.RP05.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "JHL7540 Thunderbolt 3 Bridge [Titan Ridge 4C 2018]" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP01.PXSX, DeviceObj)
	Device (_SB.PCI0.RP01.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "RTS5260 PCI Express Card Reader" },
				"device_type", Buffer () { "Unassigned class" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP17.PXSX, DeviceObj)
	Device (_SB.PCI0.RP17.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "NVMe Controller" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0/0,0" },
			})
		}
	}
}
