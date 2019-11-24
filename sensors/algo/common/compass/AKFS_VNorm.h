/* Copyright (C) 2016 Tcl Corporation Limited */
/******************************************************************************
 *
 * Copyright (C) 2012 Asahi Kasei Microdevices Corporation, Japan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************/
#ifndef AKFS_INC_VNORM_H
#define AKFS_INC_VNORM_H

#include "AKFS_Device.h"

/***** Prototype of function **************************************************/
AKLIB_C_API_START
int16 AKFS_VbNorm(
	const	int16	ndata,
	const	AKFVEC	vdata[],
	const	int16	nbuf,
	const	AKFVEC	*o,
	const	AKFVEC	*s,
	const	AKFLOAT	tgt,
	const	int16	nvec,
			AKFVEC	vvec[]
);

int16 AKFS_VbAve(
	const	int16	nvec,
	const	AKFVEC	vvec[],
	const	int16	nave,
			AKFVEC	*vave
);

AKLIB_C_API_END

#endif

