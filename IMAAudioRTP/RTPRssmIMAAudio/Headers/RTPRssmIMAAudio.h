/*
	File:		RTPRssmIMAAudio.h

	Contains:	Declarations for IMA Audio RTPReassembler
	
	Copyright:	� 1997-1999 by Apple Computer, Inc., all rights reserved.

*/

#ifndef __RTPRSSMCOMPONENTVIDEO__
#define __RTPRSSMCOMPONENTVIDEO__

#pragma once



/* ---------------------------------------------------------------------------
 *		H E A D E R S
 * ---------------------------------------------------------------------------
 */

#include <QTStreamingComponents.h>
#include "IMAAudioRTP.h"



/* ---------------------------------------------------------------------------
 *		D A T A T Y P E S
 * ---------------------------------------------------------------------------
 *
 *	An RTPRssmIMAAudioInstanceData structure stores instance variables
 *	for an IMA Audio RTPReassembler instance.  The structure declares the
 *	following fields:
 *	
 *		itself						the RTPReassembler instance that maintains
 *									this data structure
 *		
 *		itsBase						the RTPReassembler to which the instance
 *									delegates calls
 *		
 *		itsFinalDerivation			the RTPReassembler instance to which the
 *									instance targets calls to itself
 *		
 *		itsPayloadAttributes		cached attributes of incoming payloads
 *		
 */

typedef struct
{
	RTPReassembler		itself;
	RTPReassembler		itsBase;
	RTPReassembler		itsFinalDerivation;
	IMAAudioPayload		itsPayloadAttributes;
} RTPRssmIMAAudioInstanceData;



#endif /* __RTPRSSMCOMPONENTVIDEO__ */
