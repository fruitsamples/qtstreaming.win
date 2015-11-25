	ComponentComment ("													\
		This file describes the selectors used by this component.  The	\
		16-bit selector space is divided into consecutively numbered	\
		ranges of uniform size.  Each range has a list of zero or more	\
		consecutive selectors.											\
																		\
		ComponentDispatchHelper.c uses this file to generate function	\
		prototypes and a dispatcher for this component.					\
	")

	ComponentComment ("Count of selectors in range 0")
	ComponentSelectorOffset (4)
	
	ComponentComment ("Last selector range of this component")
	ComponentRangeCount (6)
	
	ComponentComment ("Size of each selector range in bits")
	ComponentRangeShift (8)
	ComponentRangeMask	(FF)
	
	ComponentComment ("Component core selectors")
	ComponentRangeBegin (0)
		StdComponentCall	(Version)
		StdComponentCall	(CanDo)
		StdComponentCall	(Close)
		StdComponentCall	(Open)
	ComponentRangeEnd (0)
	
	ComponentRangeUnused (1)
	
	ComponentComment ("Base RTPReassembler selectors")
	ComponentRangeUnused (2)
	
	ComponentRangeUnused (3)
	ComponentRangeUnused (4)
	ComponentRangeUnused (5)
	
	ComponentComment ("Derived RTPReassembler selectors")
	ComponentRangeBegin (6)
		ComponentCall		(Initialize)
		ComponentDelegate	(HandleNewPacket)
		ComponentCall		(ComputeChunkSize)
		ComponentCall		(AdjustPacketParams)
		ComponentCall		(CopyDataToChunk)
		ComponentCall		(SendPacketList)
		ComponentDelegate	(GetTimeScaleFromPacket)
		ComponentDelegate	(0x0507)
		ComponentDelegate	(0x0508)
		ComponentDelegate	(SetInfo)
		ComponentDelegate	(GetInfo)
		ComponentCall		(HasCharacteristic)
		ComponentCall		(Reset)
	ComponentRangeEnd (6)
