////////////////////////////////////////////////////////////////////////////////
// ColAndreas Plugin Include ///////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

#if defined _colandreas_included
	#endinput
#endif
#define _colandreas_included

#pragma library colandreas

#define COLANDREAS_VERSION	(10500) //a.b.c 10000 * a + 100 * b + c
#define COLANDREAS	(COLANDREAS_VERSION)

// Default extra ID types
#define CA_EXTRA_1	0
#define CA_EXTRA_2	1
#define CA_EXTRA_3	2
#define CA_EXTRA_4	3
#define CA_EXTRA_5	4
#define CA_EXTRA_6	5
#define CA_EXTRA_7	6
#define CA_EXTRA_8	7
#define CA_EXTRA_9	8
#define CA_EXTRA_10	9

// ColAndreas currently supports 50000 user collision objects (This can be raised as needed)
#if defined MAX_CA_OBJECTS
	#if MAX_CA_OBJECTS > 50000
		#error [ColAndreas] MAX_CA_OBJECTS is too high, maximum value is 50000
	#endif
#else
	#define MAX_CA_OBJECTS	10000
#endif

// Water object ID
#define WATER_OBJECT		20000

// Object types (Player objects are supported as dynamic only)
#define OBJECT_TYPE_OBJECT	0
#define OBJECT_TYPE_DYNAMIC	1

#if !defined FLOAT_INFINITY
	#define FLOAT_INFINITY	(Float:0x7F800000)
#endif

// Maximum number of raycasts in CA_RayCastMultiLine
#define MAX_MULTICAST_SIZE	99

/**--------------------------------------------------------------------------**\
<summary>
	CA_Init
</summary>
<returns>
	0 when there is no data loaded (ex. when you don't have the data file)
	1 when loaded map successfully or was already loaded
</returns>
\**--------------------------------------------------------------------------**/
native CA_Init();

/**--------------------------------------------------------------------------**\
<summary>
	CA_RemoveBuilding
</summary>
<param name="modelid">The model to be removed</param>
<param name="Float:x, Float:y, Float:z">The coordinates in which the objects will be removed</param>
<param name="Float:radius">The radius around the specified point to remove from</param>
<returns>
	0 when the map is already initialized
	1 when successfully removed
</returns>
<remarks>
	You must use this function before using `CA_Init`
</remarks>
\**--------------------------------------------------------------------------**/
native CA_RemoveBuilding(modelid, Float:x, Float:y, Float:z, Float:radius);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RestoreBuilding
</summary>
<param name="modelid">The removed model to be restored</param>
<param name="Float:x, Float:y, Float:z">The coordinates in which the objects will be restored</param>
<param name="Float:radius">The radius around the specified point to restore from</param>
<returns>
	0 when the map is not initialized
	1 when successfully restored
</returns>
<remarks>
	You must use this function after using `CA_Init`
</remarks>
\**--------------------------------------------------------------------------**/
native CA_RestoreBuilding(modelid, Float:x, Float:y, Float:z, Float:radius);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastLine
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<returns>
	0 if the ray didn't collide with anything
	WATER_OBJECT if the ray collided with water
	The model of the object the ray collided
</returns>
\**--------------------------------------------------------------------------**/
native CA_RayCastLine(Float:StartX, Float:StartY, Float:StartZ, Float:EndX, Float:EndY, Float:EndZ, &Float:x, &Float:y, &Float:z);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastLineID
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<returns>
	-1 if the ray collided with a static object or water
	0 if the ray didn't collide with anything
	The index of the object the ray collided
</returns>
<remarks>
	This only works with objects created with `add` enabled in `CA_CreateObject`, such as the objects created by the "_DC" functions
</remarks>
\**--------------------------------------------------------------------------**/
native CA_RayCastLineID(Float:StartX, Float:StartY, Float:StartZ, Float:EndX, Float:EndY, Float:EndZ, &Float:x, &Float:y, &Float:z);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastLineExtraID
</summary>
<param name="type">The extra ID index</param>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<returns>
	-1 if the ray collided with a static object or water
	-1 if the extra ID is unmodified
	0 if the ray didn't collide with anything
	The index of the object the ray collided
</returns>
<remarks>
	This only works with objects created with `add` enabled in `CA_CreateObject`, such as the objects created by the "_DC" functions
</remarks>
\**--------------------------------------------------------------------------**/
native CA_RayCastLineExtraID(type, Float:StartX, Float:StartY, Float:StartZ, Float:EndX, Float:EndY, Float:EndZ, &Float:x, &Float:y, &Float:z);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastMultiLine
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="Float:retx[], Float:rety[], Float:retz[]">The points that the ray collided</param>
<param name="Float:retdist[]">The distances between the beginning point and the point collided</param>
<param name="ModelIDs[]">The object models that the ray collided</param>
<param name="size = sizeof(retx)">The maximum number of points to collide</param>
<returns>
	-1 if the ray collided with more points than than permitted by the `size` parameter or `size` is higher than MAX_MULTICAST_SIZE value
	0 if the ray didn't collide with anything
	The number of points collided
</returns>
\**--------------------------------------------------------------------------**/
native CA_RayCastMultiLine(Float:StartX, Float:StartY, Float:StartZ, Float:EndX, Float:EndY, Float:EndZ, Float:retx[], Float:rety[], Float:retz[], Float:retdist[], ModelIDs[], size = sizeof(retx));

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastLineAngle
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<param name="&Float:rx, &Float:ry, &Float:rz">The rotation of the face that the ray collided</param>
<returns>
	0 if the ray didn't collide with anything
	WATER_OBJECT if the ray collided with water
	The model of the object the ray collided
</returns>
\**--------------------------------------------------------------------------**/
native CA_RayCastLineAngle(Float:StartX, Float:StartY, Float:StartZ, Float:EndX, Float:EndY, Float:EndZ, &Float:x, &Float:y, &Float:z, &Float:rx, &Float:ry, &Float:rz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastReflectionVector
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<param name="&Float:nx, &Float:ny, &Float:nz">The reflection vector of the face that the ray collided</param>
<returns>
	0 if the ray didn't collide with anything
	WATER_OBJECT if the ray collided with water
	The model of the object the ray collided
</returns>
\**--------------------------------------------------------------------------**/
native CA_RayCastReflectionVector(Float:startx, Float:starty, Float:startz, Float:endx, Float:endy, Float:endz, &Float:x, &Float:y, &Float:z, &Float:nx, &Float:ny, &Float:nz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_RayCastLineNormal
</summary>
<param name="Float:StartX, Float:StartY, Float:StartZ">The beginning point of the ray</param>
<param name="Float:EndX, Float:EndY, Float:EndZ">The ending point of the ray</param>
<param name="&Float:x, &Float:y, &Float:z">The point that the ray collided</param>
<param name="&Float:nx, &Float:ny, &Float:nz">The surface normal of the face that the ray collided</param>
<returns>
	0 if the ray didn't collide with anything
	WATER_OBJECT if the ray collided with water
	The model of the object the ray collided
</returns>
\**--------------------------------------------------------------------------**/
native CA_RayCastLineNormal(Float:startx, Float:starty, Float:startz, Float:endx, Float:endy, Float:endz, &Float:x, &Float:y, &Float:z, &Float:nx, &Float:ny, &Float:nz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_ContactTest
</summary>
<param name="modelid">The object model to be tested</param>
<param name="Float:x, Float:y, Float:z">The object position to test</param>
<param name="Float:rx, Float:ry, Float:rz">The object rotation to test</param>
<returns>
	0 if the object model doesn't collide with the world with the specified
	1 otherwise
</returns>
\**--------------------------------------------------------------------------**/
native CA_ContactTest(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_EulerToQuat
</summary>
<param name="Float:rx, Float:ry, Float:rz">GTA euler rotations to be converted</param>
<param name="&Float:x, &Float:y, &Float:z, &Float:w">The quaternion angles returned</param>
<returns>
	Always 1
</returns>
\**--------------------------------------------------------------------------**/
native CA_EulerToQuat(Float:rx, Float:ry, Float:rz, &Float:x, &Float:y, &Float:z, &Float:w);

/**--------------------------------------------------------------------------**\
<summary>
	CA_QuatToEuler
</summary>
<param name="&Float:x, &Float:y, &Float:z, &Float:w">The quaternion angles to be converted</param>
<param name="Float:rx, Float:ry, Float:rz">GTA euler rotations returned</param>
<returns>
	Always 1
</returns>
\**--------------------------------------------------------------------------**/
native CA_QuatToEuler(Float:x, Float:y, Float:z, Float:w, &Float:rx, &Float:ry, &Float:rz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_GetModelBoundingSphere
</summary>
<param name="modelid">The object model</param>
<param name="&Float:offx, &Float:offy, &Float:offz">The offset of the model's bounding sphere</param>
<param name="&Float:radius">The radius of the model's bounding sphere</param>
<returns>
	0 if the model is invalid
	1 otherwise
</returns>
\**--------------------------------------------------------------------------**/
native CA_GetModelBoundingSphere(modelid, &Float:offx, &Float:offy, &Float:offz, &Float:radius);

/**--------------------------------------------------------------------------**\
<summary>
	CA_GetModelBoundingBox
</summary>
<param name="modelid">The object model</param>
<param name="&Float:minx, &Float:miny, &Float:minz">The "minimum" point of the model's bounding box</param>
<param name="&Float:maxx, &Float:maxy, &Float:maxz">The "maximum" point of the model's bounding box</param>
<returns>
	0 if the model is invalid
	1 otherwise
</returns>
\**--------------------------------------------------------------------------**/
native CA_GetModelBoundingBox(modelid, &Float:minx, &Float:miny, &Float:minz, &Float:maxx, &Float:maxy, &Float:maxz);

/**--------------------------------------------------------------------------**\
<summary>
	CA_SetObjectExtraID
</summary>
<param name="index">The index of the ColAndreas object</param>
<param name="type">The index of the extra ID to be set</param>
<param name="data">The data stored in the extra ID</param>
<returns>
	Always 1 (which needs to be changed to be like CA_GetObjectExtraID's returns...)
</returns>
\**--------------------------------------------------------------------------**/
native CA_SetObjectExtraID(index, type, data);

/**--------------------------------------------------------------------------**\
<summary>
	CA_GetObjectExtraID
</summary>
<param name="index">The index of the ColAndreas object</param>
<param name="type">The index of the extra ID to be set</param>
<returns>
	-1 if the index or type is invalid
	The data stored in the extra ID
</returns>
\**--------------------------------------------------------------------------**/
native CA_GetObjectExtraID(index, type);

/**----------------------------------------