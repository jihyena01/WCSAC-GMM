еМ$
*щ)
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
@
Softplus
features"T
activations"T"
Ttype:
2
R
SoftplusGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.0-rc2-5-g6612da8'вс"
n
PlaceholderPlaceholder*'
_output_shapes
:џџџџџџџџџ<*
dtype0*
shape:џџџџџџџџџ<
p
Placeholder_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
p
Placeholder_2Placeholder*
shape:џџџџџџџџџ<*
dtype0*'
_output_shapes
:џџџџџџџџџ<
h
Placeholder_3Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
h
Placeholder_4Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_5Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Џ
5main/pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*'
_class
loc:@main/pi/dense/kernel*
valueB"<      
Ё
3main/pi/dense/kernel/Initializer/random_uniform/minConst*
dtype0*'
_class
loc:@main/pi/dense/kernel*
valueB
 *О*
_output_shapes
: 
Ё
3main/pi/dense/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: *
valueB
 *>*
dtype0
ў
=main/pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/pi/dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
dtype0*
T0*
seed2	*

seed 
ю
3main/pi/dense/kernel/Initializer/random_uniform/subSub3main/pi/dense/kernel/Initializer/random_uniform/max3main/pi/dense/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: 

3main/pi/dense/kernel/Initializer/random_uniform/mulMul=main/pi/dense/kernel/Initializer/random_uniform/RandomUniform3main/pi/dense/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<
ѓ
/main/pi/dense/kernel/Initializer/random_uniformAdd3main/pi/dense/kernel/Initializer/random_uniform/mul3main/pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
T0
Г
main/pi/dense/kernel
VariableV2*
_output_shapes
:	<*
shared_name *'
_class
loc:@main/pi/dense/kernel*
dtype0*
	container *
shape:	<
ш
main/pi/dense/kernel/AssignAssignmain/pi/dense/kernel/main/pi/dense/kernel/Initializer/random_uniform*'
_class
loc:@main/pi/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	<*
use_locking(

main/pi/dense/kernel/readIdentitymain/pi/dense/kernel*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<

$main/pi/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *%
_class
loc:@main/pi/dense/bias*
dtype0
Ї
main/pi/dense/bias
VariableV2*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
dtype0*
shared_name *
shape:*
	container 
г
main/pi/dense/bias/AssignAssignmain/pi/dense/bias$main/pi/dense/bias/Initializer/zeros*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*%
_class
loc:@main/pi/dense/bias

main/pi/dense/bias/readIdentitymain/pi/dense/bias*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:*
T0

main/pi/dense/MatMulMatMulPlaceholdermain/pi/dense/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0

main/pi/dense/BiasAddBiasAddmain/pi/dense/MatMulmain/pi/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
d
main/pi/dense/ReluRelumain/pi/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Г
7main/pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *)
_class
loc:@main/pi/dense_1/kernel
Ѕ
5main/pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *зГнН*
_output_shapes
: *
dtype0*)
_class
loc:@main/pi/dense_1/kernel
Ѕ
5main/pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
: *
valueB
 *зГн=

?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*)
_class
loc:@main/pi/dense_1/kernel*
dtype0*
seed2* 
_output_shapes
:

і
5main/pi/dense_1/kernel/Initializer/random_uniform/subSub5main/pi/dense_1/kernel/Initializer/random_uniform/max5main/pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *)
_class
loc:@main/pi/dense_1/kernel*
T0

5main/pi/dense_1/kernel/Initializer/random_uniform/mulMul?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
T0
ќ
1main/pi/dense_1/kernel/Initializer/random_uniformAdd5main/pi/dense_1/kernel/Initializer/random_uniform/mul5main/pi/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*)
_class
loc:@main/pi/dense_1/kernel
Й
main/pi/dense_1/kernel
VariableV2*
shared_name *)
_class
loc:@main/pi/dense_1/kernel*
dtype0* 
_output_shapes
:
*
shape:
*
	container 
ё
main/pi/dense_1/kernel/AssignAssignmain/pi/dense_1/kernel1main/pi/dense_1/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@main/pi/dense_1/kernel

main/pi/dense_1/kernel/readIdentitymain/pi/dense_1/kernel*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
T0

&main/pi/dense_1/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
dtype0
Ћ
main/pi/dense_1/bias
VariableV2*'
_class
loc:@main/pi/dense_1/bias*
shared_name *
_output_shapes	
:*
	container *
shape:*
dtype0
л
main/pi/dense_1/bias/AssignAssignmain/pi/dense_1/bias&main/pi/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*'
_class
loc:@main/pi/dense_1/bias

main/pi/dense_1/bias/readIdentitymain/pi/dense_1/bias*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
T0
Њ
main/pi/dense_1/MatMulMatMulmain/pi/dense/Relumain/pi/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0*
transpose_a( 

main/pi/dense_1/BiasAddBiasAddmain/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
h
main/pi/dense_1/ReluRelumain/pi/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Г
7main/pi/dense_2/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ѕ
5main/pi/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
: *
valueB
 *(О
Ѕ
5main/pi/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*)
_class
loc:@main/pi/dense_2/kernel*
valueB
 *(>*
_output_shapes
: 

?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*

seed *
seed2+*
dtype0*
T0
і
5main/pi/dense_2/kernel/Initializer/random_uniform/subSub5main/pi/dense_2/kernel/Initializer/random_uniform/max5main/pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*)
_class
loc:@main/pi/dense_2/kernel

5main/pi/dense_2/kernel/Initializer/random_uniform/mulMul?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
T0
ћ
1main/pi/dense_2/kernel/Initializer/random_uniformAdd5main/pi/dense_2/kernel/Initializer/random_uniform/mul5main/pi/dense_2/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	
З
main/pi/dense_2/kernel
VariableV2*
dtype0*
_output_shapes
:	*
	container *)
_class
loc:@main/pi/dense_2/kernel*
shape:	*
shared_name 
№
main/pi/dense_2/kernel/AssignAssignmain/pi/dense_2/kernel1main/pi/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	

main/pi/dense_2/kernel/readIdentitymain/pi/dense_2/kernel*
T0*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel

&main/pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *'
_class
loc:@main/pi/dense_2/bias*
dtype0
Љ
main/pi/dense_2/bias
VariableV2*'
_class
loc:@main/pi/dense_2/bias*
dtype0*
_output_shapes
:*
shared_name *
	container *
shape:
к
main/pi/dense_2/bias/AssignAssignmain/pi/dense_2/bias&main/pi/dense_2/bias/Initializer/zeros*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
use_locking(

main/pi/dense_2/bias/readIdentitymain/pi/dense_2/bias*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias
Ћ
main/pi/dense_2/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0*
transpose_b( 

main/pi/dense_2/BiasAddBiasAddmain/pi/dense_2/MatMulmain/pi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
Г
7main/pi/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*)
_class
loc:@main/pi/dense_3/kernel*
valueB"      *
_output_shapes
:
Ѕ
5main/pi/dense_3/kernel/Initializer/random_uniform/minConst*)
_class
loc:@main/pi/dense_3/kernel*
valueB
 *(О*
dtype0*
_output_shapes
: 
Ѕ
5main/pi/dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *(>*)
_class
loc:@main/pi/dense_3/kernel

?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_3/kernel/Initializer/random_uniform/shape*)
_class
loc:@main/pi/dense_3/kernel*
seed2;*
T0*
_output_shapes
:	*
dtype0*

seed 
і
5main/pi/dense_3/kernel/Initializer/random_uniform/subSub5main/pi/dense_3/kernel/Initializer/random_uniform/max5main/pi/dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*)
_class
loc:@main/pi/dense_3/kernel

5main/pi/dense_3/kernel/Initializer/random_uniform/mulMul?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_3/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_3/kernel
ћ
1main/pi/dense_3/kernel/Initializer/random_uniformAdd5main/pi/dense_3/kernel/Initializer/random_uniform/mul5main/pi/dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_3/kernel
З
main/pi/dense_3/kernel
VariableV2*
shape:	*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
dtype0*
	container *
shared_name 
№
main/pi/dense_3/kernel/AssignAssignmain/pi/dense_3/kernel1main/pi/dense_3/kernel/Initializer/random_uniform*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel

main/pi/dense_3/kernel/readIdentitymain/pi/dense_3/kernel*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
T0

&main/pi/dense_3/bias/Initializer/zerosConst*
valueB*    *'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
dtype0
Љ
main/pi/dense_3/bias
VariableV2*
shared_name *
dtype0*
shape:*'
_class
loc:@main/pi/dense_3/bias*
	container *
_output_shapes
:
к
main/pi/dense_3/bias/AssignAssignmain/pi/dense_3/bias&main/pi/dense_3/bias/Initializer/zeros*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:

main/pi/dense_3/bias/readIdentitymain/pi/dense_3/bias*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
T0
Ћ
main/pi/dense_3/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_3/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 

main/pi/dense_3/BiasAddBiasAddmain/pi/dense_3/MatMulmain/pi/dense_3/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
d
main/pi/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @

main/pi/clip_by_value/MinimumMinimummain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
\
main/pi/clip_by_value/yConst*
_output_shapes
: *
valueB
 *   С*
dtype0

main/pi/clip_by_valueMaximummain/pi/clip_by_value/Minimummain/pi/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ
[
main/pi/ExpExpmain/pi/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
d
main/pi/ShapeShapemain/pi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
_
main/pi/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
a
main/pi/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Љ
*main/pi/random_normal/RandomStandardNormalRandomStandardNormalmain/pi/Shape*
T0*

seed *
dtype0*'
_output_shapes
:џџџџџџџџџ*
seed2P

main/pi/random_normal/mulMul*main/pi/random_normal/RandomStandardNormalmain/pi/random_normal/stddev*'
_output_shapes
:џџџџџџџџџ*
T0

main/pi/random_normalAddmain/pi/random_normal/mulmain/pi/random_normal/mean*
T0*'
_output_shapes
:џџџџџџџџџ
h
main/pi/mulMulmain/pi/random_normalmain/pi/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
j
main/pi/addAddmain/pi/dense_2/BiasAddmain/pi/mul*
T0*'
_output_shapes
:џџџџџџџџџ
j
main/pi/subSubmain/pi/addmain/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
]
main/pi/Exp_1Expmain/pi/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
T
main/pi/add_1/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
f
main/pi/add_1Addmain/pi/Exp_1main/pi/add_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
h
main/pi/truedivRealDivmain/pi/submain/pi/add_1*
T0*'
_output_shapes
:џџџџџџџџџ
R
main/pi/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
d
main/pi/powPowmain/pi/truedivmain/pi/pow/y*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/mul_1/xConst*
_output_shapes
: *
valueB
 *   @*
dtype0
n
main/pi/mul_1Mulmain/pi/mul_1/xmain/pi/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
b
main/pi/add_2Addmain/pi/powmain/pi/mul_1*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *?ы?
f
main/pi/add_3Addmain/pi/add_2main/pi/add_3/y*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   П
f
main/pi/mul_2Mulmain/pi/mul_2/xmain/pi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
_
main/pi/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

main/pi/SumSummain/pi/mul_2main/pi/Sum/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/sub_1/xConst*
dtype0*
valueB
 *r1?*
_output_shapes
: 
d
main/pi/sub_1Submain/pi/sub_1/xmain/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
T
main/pi/mul_3/xConst*
valueB
 *   Р*
_output_shapes
: *
dtype0
d
main/pi/mul_3Mulmain/pi/mul_3/xmain/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
]
main/pi/SoftplusSoftplusmain/pi/mul_3*
T0*'
_output_shapes
:џџџџџџџџџ
g
main/pi/sub_2Submain/pi/sub_1main/pi/Softplus*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/mul_4/xConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
f
main/pi/mul_4Mulmain/pi/mul_4/xmain/pi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ
a
main/pi/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

main/pi/Sum_1Summain/pi/mul_4main/pi/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:џџџџџџџџџ
^
main/pi/sub_3Submain/pi/Summain/pi/Sum_1*#
_output_shapes
:џџџџџџџџџ*
T0
_
main/pi/TanhTanhmain/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
U
main/pi/Tanh_1Tanhmain/pi/add*'
_output_shapes
:џџџџџџџџџ*
T0
O

main/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
[
main/mulMulmain/pi/Tanh
main/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ
Q
main/mul_1/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a

main/mul_1Mulmain/pi/Tanh_1main/mul_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
_
main/qr1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

main/qr1/concatConcatV2PlaceholderPlaceholder_1main/qr1/concat/axis*
T0*'
_output_shapes
:џџџџџџџџџ>*
N*

Tidx0
Б
6main/qr1/dense/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@main/qr1/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
Ѓ
4main/qr1/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ЈО*(
_class
loc:@main/qr1/dense/kernel
Ѓ
4main/qr1/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: *
valueB
 *?Ј>

>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr1/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
seed2{*
_output_shapes
:	>
ђ
4main/qr1/dense/kernel/Initializer/random_uniform/subSub4main/qr1/dense/kernel/Initializer/random_uniform/max4main/qr1/dense/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: 

4main/qr1/dense/kernel/Initializer/random_uniform/mulMul>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr1/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0
ї
0main/qr1/dense/kernel/Initializer/random_uniformAdd4main/qr1/dense/kernel/Initializer/random_uniform/mul4main/qr1/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0
Е
main/qr1/dense/kernel
VariableV2*
_output_shapes
:	>*
shape:	>*
shared_name *
	container *(
_class
loc:@main/qr1/dense/kernel*
dtype0
ь
main/qr1/dense/kernel/AssignAssignmain/qr1/dense/kernel0main/qr1/dense/kernel/Initializer/random_uniform*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(

main/qr1/dense/kernel/readIdentitymain/qr1/dense/kernel*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0

%main/qr1/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
dtype0*&
_class
loc:@main/qr1/dense/bias*
valueB*    
Љ
main/qr1/dense/bias
VariableV2*
dtype0*
shape:*
shared_name *&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
	container 
з
main/qr1/dense/bias/AssignAssignmain/qr1/dense/bias%main/qr1/dense/bias/Initializer/zeros*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0

main/qr1/dense/bias/readIdentitymain/qr1/dense/bias*
T0*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:
Ѕ
main/qr1/dense/MatMulMatMulmain/qr1/concatmain/qr1/dense/kernel/read*
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( 

main/qr1/dense/BiasAddBiasAddmain/qr1/dense/MatMulmain/qr1/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
f
main/qr1/dense/ReluRelumain/qr1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
8main/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
:
Ї
6main/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
valueB
 *зГнН
Ї
6main/qr1/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГн=**
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
_output_shapes
: 

@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_1/kernel/Initializer/random_uniform/shape*

seed * 
_output_shapes
:
*
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
seed2
њ
6main/qr1/dense_1/kernel/Initializer/random_uniform/subSub6main/qr1/dense_1/kernel/Initializer/random_uniform/max6main/qr1/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: **
_class 
loc:@main/qr1/dense_1/kernel*
T0

6main/qr1/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel

2main/qr1/dense_1/kernel/Initializer/random_uniformAdd6main/qr1/dense_1/kernel/Initializer/random_uniform/mul6main/qr1/dense_1/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
T0
Л
main/qr1/dense_1/kernel
VariableV2*
shared_name *
shape:
* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
	container 
ѕ
main/qr1/dense_1/kernel/AssignAssignmain/qr1/dense_1/kernel2main/qr1/dense_1/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel

main/qr1/dense_1/kernel/readIdentitymain/qr1/dense_1/kernel*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel
 
'main/qr1/dense_1/bias/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
valueB*    *
dtype0
­
main/qr1/dense_1/bias
VariableV2*
	container *
shape:*
shared_name *
_output_shapes	
:*
dtype0*(
_class
loc:@main/qr1/dense_1/bias
п
main/qr1/dense_1/bias/AssignAssignmain/qr1/dense_1/bias'main/qr1/dense_1/bias/Initializer/zeros*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:

main/qr1/dense_1/bias/readIdentitymain/qr1/dense_1/bias*
_output_shapes	
:*
T0*(
_class
loc:@main/qr1/dense_1/bias
­
main/qr1/dense_1/MatMulMatMulmain/qr1/dense/Relumain/qr1/dense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ
Ђ
main/qr1/dense_1/BiasAddBiasAddmain/qr1/dense_1/MatMulmain/qr1/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
j
main/qr1/dense_1/ReluRelumain/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Е
8main/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:**
_class 
loc:@main/qr1/dense_2/kernel*
dtype0*
valueB"      
Ї
6main/qr1/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *IvО**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
: *
dtype0
Ї
6main/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *Iv>**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
: 

@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_2/kernel/Initializer/random_uniform/shape**
_class 
loc:@main/qr1/dense_2/kernel*
seed2*
dtype0*
_output_shapes
:	*
T0*

seed 
њ
6main/qr1/dense_2/kernel/Initializer/random_uniform/subSub6main/qr1/dense_2/kernel/Initializer/random_uniform/max6main/qr1/dense_2/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
: 

6main/qr1/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_2/kernel/Initializer/random_uniform/sub**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
T0
џ
2main/qr1/dense_2/kernel/Initializer/random_uniformAdd6main/qr1/dense_2/kernel/Initializer/random_uniform/mul6main/qr1/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel
Й
main/qr1/dense_2/kernel
VariableV2*
shape:	*
_output_shapes
:	*
	container *
dtype0*
shared_name **
_class 
loc:@main/qr1/dense_2/kernel
є
main/qr1/dense_2/kernel/AssignAssignmain/qr1/dense_2/kernel2main/qr1/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel

main/qr1/dense_2/kernel/readIdentitymain/qr1/dense_2/kernel**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	

'main/qr1/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
valueB*    *
dtype0
Ћ
main/qr1/dense_2/bias
VariableV2*
dtype0*
	container *
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
shared_name *
shape:
о
main/qr1/dense_2/bias/AssignAssignmain/qr1/dense_2/bias'main/qr1/dense_2/bias/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias

main/qr1/dense_2/bias/readIdentitymain/qr1/dense_2/bias*
T0*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias
Ў
main/qr1/dense_2/MatMulMatMulmain/qr1/dense_1/Relumain/qr1/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ё
main/qr1/dense_2/BiasAddBiasAddmain/qr1/dense_2/MatMulmain/qr1/dense_2/bias/read*
T0*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
z
main/qr1/SqueezeSqueezemain/qr1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

a
main/qr1_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

main/qr1_1/concatConcatV2Placeholder
main/mul_1main/qr1_1/concat/axis*

Tidx0*
N*'
_output_shapes
:џџџџџџџџџ>*
T0
Љ
main/qr1_1/dense/MatMulMatMulmain/qr1_1/concatmain/qr1/dense/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 
 
main/qr1_1/dense/BiasAddBiasAddmain/qr1_1/dense/MatMulmain/qr1/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
j
main/qr1_1/dense/ReluRelumain/qr1_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Б
main/qr1_1/dense_1/MatMulMatMulmain/qr1_1/dense/Relumain/qr1/dense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:џџџџџџџџџ
І
main/qr1_1/dense_1/BiasAddBiasAddmain/qr1_1/dense_1/MatMulmain/qr1/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
n
main/qr1_1/dense_1/ReluRelumain/qr1_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
В
main/qr1_1/dense_2/MatMulMatMulmain/qr1_1/dense_1/Relumain/qr1/dense_2/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 
Ѕ
main/qr1_1/dense_2/BiasAddBiasAddmain/qr1_1/dense_2/MatMulmain/qr1/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
~
main/qr1_1/SqueezeSqueezemain/qr1_1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

_
main/qr2/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

main/qr2/concatConcatV2PlaceholderPlaceholder_1main/qr2/concat/axis*

Tidx0*'
_output_shapes
:џџџџџџџџџ>*
N*
T0
Б
6main/qr2/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*(
_class
loc:@main/qr2/dense/kernel*
valueB">      *
_output_shapes
:
Ѓ
4main/qr2/dense/kernel/Initializer/random_uniform/minConst*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
: *
valueB
 *?ЈО*
dtype0
Ѓ
4main/qr2/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Ј>*
dtype0*
_output_shapes
: *(
_class
loc:@main/qr2/dense/kernel

>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr2/dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	>*
seed2Л*

seed *
T0*(
_class
loc:@main/qr2/dense/kernel*
dtype0
ђ
4main/qr2/dense/kernel/Initializer/random_uniform/subSub4main/qr2/dense/kernel/Initializer/random_uniform/max4main/qr2/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@main/qr2/dense/kernel

4main/qr2/dense/kernel/Initializer/random_uniform/mulMul>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr2/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel
ї
0main/qr2/dense/kernel/Initializer/random_uniformAdd4main/qr2/dense/kernel/Initializer/random_uniform/mul4main/qr2/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>
Е
main/qr2/dense/kernel
VariableV2*
_output_shapes
:	>*
	container *
shared_name *(
_class
loc:@main/qr2/dense/kernel*
dtype0*
shape:	>
ь
main/qr2/dense/kernel/AssignAssignmain/qr2/dense/kernel0main/qr2/dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel

main/qr2/dense/kernel/readIdentitymain/qr2/dense/kernel*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>

%main/qr2/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
dtype0*&
_class
loc:@main/qr2/dense/bias*
valueB*    
Љ
main/qr2/dense/bias
VariableV2*
shared_name *
shape:*
_output_shapes	
:*
	container *
dtype0*&
_class
loc:@main/qr2/dense/bias
з
main/qr2/dense/bias/AssignAssignmain/qr2/dense/bias%main/qr2/dense/bias/Initializer/zeros*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr2/dense/bias

main/qr2/dense/bias/readIdentitymain/qr2/dense/bias*
_output_shapes	
:*
T0*&
_class
loc:@main/qr2/dense/bias
Ѕ
main/qr2/dense/MatMulMatMulmain/qr2/concatmain/qr2/dense/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0

main/qr2/dense/BiasAddBiasAddmain/qr2/dense/MatMulmain/qr2/dense/bias/read*
T0*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
f
main/qr2/dense/ReluRelumain/qr2/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
8main/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
valueB"      *
_output_shapes
:
Ї
6main/qr2/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0**
_class 
loc:@main/qr2/dense_1/kernel*
valueB
 *зГнН*
_output_shapes
: 
Ї
6main/qr2/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *зГн=**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0

@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
seed2Ь**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
T0*

seed 
њ
6main/qr2/dense_1/kernel/Initializer/random_uniform/subSub6main/qr2/dense_1/kernel/Initializer/random_uniform/max6main/qr2/dense_1/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
: *
T0

6main/qr2/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0**
_class 
loc:@main/qr2/dense_1/kernel

2main/qr2/dense_1/kernel/Initializer/random_uniformAdd6main/qr2/dense_1/kernel/Initializer/random_uniform/mul6main/qr2/dense_1/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

Л
main/qr2/dense_1/kernel
VariableV2*
	container **
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
shared_name *
shape:
* 
_output_shapes
:

ѕ
main/qr2/dense_1/kernel/AssignAssignmain/qr2/dense_1/kernel2main/qr2/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
use_locking(*
validate_shape(

main/qr2/dense_1/kernel/readIdentitymain/qr2/dense_1/kernel**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

 
'main/qr2/dense_1/bias/Initializer/zerosConst*(
_class
loc:@main/qr2/dense_1/bias*
dtype0*
valueB*    *
_output_shapes	
:
­
main/qr2/dense_1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:*(
_class
loc:@main/qr2/dense_1/bias
п
main/qr2/dense_1/bias/AssignAssignmain/qr2/dense_1/bias'main/qr2/dense_1/bias/Initializer/zeros*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

main/qr2/dense_1/bias/readIdentitymain/qr2/dense_1/bias*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:
­
main/qr2/dense_1/MatMulMatMulmain/qr2/dense/Relumain/qr2/dense_1/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0
Ђ
main/qr2/dense_1/BiasAddBiasAddmain/qr2/dense_1/MatMulmain/qr2/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
j
main/qr2/dense_1/ReluRelumain/qr2/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
8main/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0
Ї
6main/qr2/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: **
_class 
loc:@main/qr2/dense_2/kernel*
valueB
 *IvО
Ї
6main/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*
dtype0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
: 

@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_2/kernel/Initializer/random_uniform/shape*

seed **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0*
_output_shapes
:	*
T0*
seed2н
њ
6main/qr2/dense_2/kernel/Initializer/random_uniform/subSub6main/qr2/dense_2/kernel/Initializer/random_uniform/max6main/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@main/qr2/dense_2/kernel

6main/qr2/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
џ
2main/qr2/dense_2/kernel/Initializer/random_uniformAdd6main/qr2/dense_2/kernel/Initializer/random_uniform/mul6main/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
T0
Й
main/qr2/dense_2/kernel
VariableV2**
_class 
loc:@main/qr2/dense_2/kernel*
shared_name *
	container *
_output_shapes
:	*
shape:	*
dtype0
є
main/qr2/dense_2/kernel/AssignAssignmain/qr2/dense_2/kernel2main/qr2/dense_2/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes
:	*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel*
T0

main/qr2/dense_2/kernel/readIdentitymain/qr2/dense_2/kernel*
_output_shapes
:	*
T0**
_class 
loc:@main/qr2/dense_2/kernel

'main/qr2/dense_2/bias/Initializer/zerosConst*
dtype0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
valueB*    
Ћ
main/qr2/dense_2/bias
VariableV2*(
_class
loc:@main/qr2/dense_2/bias*
dtype0*
shared_name *
	container *
_output_shapes
:*
shape:
о
main/qr2/dense_2/bias/AssignAssignmain/qr2/dense_2/bias'main/qr2/dense_2/bias/Initializer/zeros*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

main/qr2/dense_2/bias/readIdentitymain/qr2/dense_2/bias*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
Ў
main/qr2/dense_2/MatMulMatMulmain/qr2/dense_1/Relumain/qr2/dense_2/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ
Ё
main/qr2/dense_2/BiasAddBiasAddmain/qr2/dense_2/MatMulmain/qr2/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
z
main/qr2/SqueezeSqueezemain/qr2/dense_2/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
T0*
squeeze_dims

a
main/qr2_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

main/qr2_1/concatConcatV2Placeholder
main/mul_1main/qr2_1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
N*
T0*

Tidx0
Љ
main/qr2_1/dense/MatMulMatMulmain/qr2_1/concatmain/qr2/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0*
transpose_a( 
 
main/qr2_1/dense/BiasAddBiasAddmain/qr2_1/dense/MatMulmain/qr2/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
j
main/qr2_1/dense/ReluRelumain/qr2_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Б
main/qr2_1/dense_1/MatMulMatMulmain/qr2_1/dense/Relumain/qr2/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
І
main/qr2_1/dense_1/BiasAddBiasAddmain/qr2_1/dense_1/MatMulmain/qr2/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
n
main/qr2_1/dense_1/ReluRelumain/qr2_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
В
main/qr2_1/dense_2/MatMulMatMulmain/qr2_1/dense_1/Relumain/qr2/dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ
Ѕ
main/qr2_1/dense_2/BiasAddBiasAddmain/qr2_1/dense_2/MatMulmain/qr2/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
~
main/qr2_1/SqueezeSqueezemain/qr2_1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
^
main/qc/concat/axisConst*
valueB :
џџџџџџџџџ*
_output_shapes
: *
dtype0

main/qc/concatConcatV2PlaceholderPlaceholder_1main/qc/concat/axis*'
_output_shapes
:џџџџџџџџџ>*

Tidx0*
T0*
N
Џ
5main/qc/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*'
_class
loc:@main/qc/dense/kernel*
valueB">      
Ё
3main/qc/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?ЈО*'
_class
loc:@main/qc/dense/kernel
Ё
3main/qc/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Ј>*
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel*
dtype0
џ
=main/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/qc/dense/kernel/Initializer/random_uniform/shape*
seed2ћ*
_output_shapes
:	>*
dtype0*

seed *'
_class
loc:@main/qc/dense/kernel*
T0
ю
3main/qc/dense/kernel/Initializer/random_uniform/subSub3main/qc/dense/kernel/Initializer/random_uniform/max3main/qc/dense/kernel/Initializer/random_uniform/min*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
: *
T0

3main/qc/dense/kernel/Initializer/random_uniform/mulMul=main/qc/dense/kernel/Initializer/random_uniform/RandomUniform3main/qc/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
ѓ
/main/qc/dense/kernel/Initializer/random_uniformAdd3main/qc/dense/kernel/Initializer/random_uniform/mul3main/qc/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
Г
main/qc/dense/kernel
VariableV2*
shared_name *
shape:	>*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
	container *
dtype0
ш
main/qc/dense/kernel/AssignAssignmain/qc/dense/kernel/main/qc/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
validate_shape(*
T0

main/qc/dense/kernel/readIdentitymain/qc/dense/kernel*
T0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel

$main/qc/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *%
_class
loc:@main/qc/dense/bias*
dtype0
Ї
main/qc/dense/bias
VariableV2*
_output_shapes	
:*
dtype0*%
_class
loc:@main/qc/dense/bias*
	container *
shape:*
shared_name 
г
main/qc/dense/bias/AssignAssignmain/qc/dense/bias$main/qc/dense/bias/Initializer/zeros*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(

main/qc/dense/bias/readIdentitymain/qc/dense/bias*
_output_shapes	
:*
T0*%
_class
loc:@main/qc/dense/bias
Ђ
main/qc/dense/MatMulMatMulmain/qc/concatmain/qc/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( *
T0

main/qc/dense/BiasAddBiasAddmain/qc/dense/MatMulmain/qc/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
d
main/qc/dense/ReluRelumain/qc/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Г
7main/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*)
_class
loc:@main/qc/dense_1/kernel*
valueB"      *
_output_shapes
:
Ѕ
5main/qc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *зГнН
Ѕ
5main/qc/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *зГн=*
dtype0

?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
seed2*
T0*

seed *)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:

і
5main/qc/dense_1/kernel/Initializer/random_uniform/subSub5main/qc/dense_1/kernel/Initializer/random_uniform/max5main/qc/dense_1/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
: 

5main/qc/dense_1/kernel/Initializer/random_uniform/mulMul?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
ќ
1main/qc/dense_1/kernel/Initializer/random_uniformAdd5main/qc/dense_1/kernel/Initializer/random_uniform/mul5main/qc/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*)
_class
loc:@main/qc/dense_1/kernel
Й
main/qc/dense_1/kernel
VariableV2*
shared_name *
shape:
*
dtype0*
	container * 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
ё
main/qc/dense_1/kernel/AssignAssignmain/qc/dense_1/kernel1main/qc/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(

main/qc/dense_1/kernel/readIdentitymain/qc/dense_1/kernel*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel

&main/qc/dense_1/bias/Initializer/zerosConst*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
dtype0*
valueB*    
Ћ
main/qc/dense_1/bias
VariableV2*
dtype0*
shape:*
	container *'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
shared_name 
л
main/qc/dense_1/bias/AssignAssignmain/qc/dense_1/bias&main/qc/dense_1/bias/Initializer/zeros*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
_output_shapes	
:

main/qc/dense_1/bias/readIdentitymain/qc/dense_1/bias*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0
Њ
main/qc/dense_1/MatMulMatMulmain/qc/dense/Relumain/qc/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( *
T0

main/qc/dense_1/BiasAddBiasAddmain/qc/dense_1/MatMulmain/qc/dense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
h
main/qc/dense_1/ReluRelumain/qc/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Г
7main/qc/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*)
_class
loc:@main/qc/dense_2/kernel*
valueB"      *
_output_shapes
:
Ѕ
5main/qc/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *)
_class
loc:@main/qc/dense_2/kernel*
valueB
 *IvО
Ѕ
5main/qc/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *Iv>*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
: 

?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	*
seed2*

seed *
dtype0*)
_class
loc:@main/qc/dense_2/kernel*
T0
і
5main/qc/dense_2/kernel/Initializer/random_uniform/subSub5main/qc/dense_2/kernel/Initializer/random_uniform/max5main/qc/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@main/qc/dense_2/kernel

5main/qc/dense_2/kernel/Initializer/random_uniform/mulMul?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0
ћ
1main/qc/dense_2/kernel/Initializer/random_uniformAdd5main/qc/dense_2/kernel/Initializer/random_uniform/mul5main/qc/dense_2/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	
З
main/qc/dense_2/kernel
VariableV2*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
shape:	*
dtype0*
shared_name *
	container 
№
main/qc/dense_2/kernel/AssignAssignmain/qc/dense_2/kernel1main/qc/dense_2/kernel/Initializer/random_uniform*)
_class
loc:@main/qc/dense_2/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	

main/qc/dense_2/kernel/readIdentitymain/qc/dense_2/kernel*
_output_shapes
:	*
T0*)
_class
loc:@main/qc/dense_2/kernel

&main/qc/dense_2/bias/Initializer/zerosConst*
valueB*    *'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
dtype0
Љ
main/qc/dense_2/bias
VariableV2*
_output_shapes
:*
	container *'
_class
loc:@main/qc/dense_2/bias*
dtype0*
shared_name *
shape:
к
main/qc/dense_2/bias/AssignAssignmain/qc/dense_2/bias&main/qc/dense_2/bias/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*'
_class
loc:@main/qc/dense_2/bias

main/qc/dense_2/bias/readIdentitymain/qc/dense_2/bias*
T0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias
Ћ
main/qc/dense_2/MatMulMatMulmain/qc/dense_1/Relumain/qc/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ

main/qc/dense_2/BiasAddBiasAddmain/qc/dense_2/MatMulmain/qc/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
x
main/qc/SqueezeSqueezemain/qc/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
`
main/qc_1/concat/axisConst*
valueB :
џџџџџџџџџ*
_output_shapes
: *
dtype0

main/qc_1/concatConcatV2Placeholder
main/mul_1main/qc_1/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ>
І
main/qc_1/dense/MatMulMatMulmain/qc_1/concatmain/qc/dense/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0

main/qc_1/dense/BiasAddBiasAddmain/qc_1/dense/MatMulmain/qc/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
h
main/qc_1/dense/ReluRelumain/qc_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Ў
main/qc_1/dense_1/MatMulMatMulmain/qc_1/dense/Relumain/qc/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ѓ
main/qc_1/dense_1/BiasAddBiasAddmain/qc_1/dense_1/MatMulmain/qc/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
l
main/qc_1/dense_1/ReluRelumain/qc_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Џ
main/qc_1/dense_2/MatMulMatMulmain/qc_1/dense_1/Relumain/qc/dense_2/kernel/read*
T0*
transpose_b( *'
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Ђ
main/qc_1/dense_2/BiasAddBiasAddmain/qc_1/dense_2/MatMulmain/qc/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
|
main/qc_1/SqueezeSqueezemain/qc_1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
Ѓ
main_1/pi/dense/MatMulMatMulPlaceholder_2main/pi/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b( 

main_1/pi/dense/BiasAddBiasAddmain_1/pi/dense/MatMulmain/pi/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
h
main_1/pi/dense/ReluRelumain_1/pi/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Ў
main_1/pi/dense_1/MatMulMatMulmain_1/pi/dense/Relumain/pi/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b( 
Ѓ
main_1/pi/dense_1/BiasAddBiasAddmain_1/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
l
main_1/pi/dense_1/ReluRelumain_1/pi/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Џ
main_1/pi/dense_2/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( 
Ђ
main_1/pi/dense_2/BiasAddBiasAddmain_1/pi/dense_2/MatMulmain/pi/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
Џ
main_1/pi/dense_3/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_3/kernel/read*
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Ђ
main_1/pi/dense_3/BiasAddBiasAddmain_1/pi/dense_3/MatMulmain/pi/dense_3/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
f
!main_1/pi/clip_by_value/Minimum/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0

main_1/pi/clip_by_value/MinimumMinimummain_1/pi/dense_3/BiasAdd!main_1/pi/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
^
main_1/pi/clip_by_value/yConst*
dtype0*
_output_shapes
: *
valueB
 *   С

main_1/pi/clip_by_valueMaximummain_1/pi/clip_by_value/Minimummain_1/pi/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ
_
main_1/pi/ExpExpmain_1/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
h
main_1/pi/ShapeShapemain_1/pi/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
a
main_1/pi/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
main_1/pi/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ў
,main_1/pi/random_normal/RandomStandardNormalRandomStandardNormalmain_1/pi/Shape*'
_output_shapes
:џџџџџџџџџ*
seed2Ш*
dtype0*

seed *
T0
Ђ
main_1/pi/random_normal/mulMul,main_1/pi/random_normal/RandomStandardNormalmain_1/pi/random_normal/stddev*
T0*'
_output_shapes
:џџџџџџџџџ

main_1/pi/random_normalAddmain_1/pi/random_normal/mulmain_1/pi/random_normal/mean*'
_output_shapes
:џџџџџџџџџ*
T0
n
main_1/pi/mulMulmain_1/pi/random_normalmain_1/pi/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
p
main_1/pi/addAddmain_1/pi/dense_2/BiasAddmain_1/pi/mul*'
_output_shapes
:џџџџџџџџџ*
T0
p
main_1/pi/subSubmain_1/pi/addmain_1/pi/dense_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
a
main_1/pi/Exp_1Expmain_1/pi/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/add_1/yConst*
_output_shapes
: *
valueB
 *wЬ+2*
dtype0
l
main_1/pi/add_1Addmain_1/pi/Exp_1main_1/pi/add_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
n
main_1/pi/truedivRealDivmain_1/pi/submain_1/pi/add_1*
T0*'
_output_shapes
:џџџџџџџџџ
T
main_1/pi/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
j
main_1/pi/powPowmain_1/pi/truedivmain_1/pi/pow/y*'
_output_shapes
:џџџџџџџџџ*
T0
V
main_1/pi/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
t
main_1/pi/mul_1Mulmain_1/pi/mul_1/xmain_1/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
h
main_1/pi/add_2Addmain_1/pi/powmain_1/pi/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/add_3/yConst*
valueB
 *?ы?*
_output_shapes
: *
dtype0
l
main_1/pi/add_3Addmain_1/pi/add_2main_1/pi/add_3/y*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/mul_2/xConst*
valueB
 *   П*
dtype0*
_output_shapes
: 
l
main_1/pi/mul_2Mulmain_1/pi/mul_2/xmain_1/pi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
a
main_1/pi/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

main_1/pi/SumSummain_1/pi/mul_2main_1/pi/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
V
main_1/pi/sub_1/xConst*
dtype0*
valueB
 *r1?*
_output_shapes
: 
j
main_1/pi/sub_1Submain_1/pi/sub_1/xmain_1/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/mul_3/xConst*
valueB
 *   Р*
dtype0*
_output_shapes
: 
j
main_1/pi/mul_3Mulmain_1/pi/mul_3/xmain_1/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
a
main_1/pi/SoftplusSoftplusmain_1/pi/mul_3*'
_output_shapes
:џџџџџџџџџ*
T0
m
main_1/pi/sub_2Submain_1/pi/sub_1main_1/pi/Softplus*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/mul_4/xConst*
_output_shapes
: *
valueB
 *   @*
dtype0
l
main_1/pi/mul_4Mulmain_1/pi/mul_4/xmain_1/pi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ
c
!main_1/pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

main_1/pi/Sum_1Summain_1/pi/mul_4!main_1/pi/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:џџџџџџџџџ
d
main_1/pi/sub_3Submain_1/pi/Summain_1/pi/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
c
main_1/pi/TanhTanhmain_1/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
Y
main_1/pi/Tanh_1Tanhmain_1/pi/add*'
_output_shapes
:џџџџџџџџџ*
T0
Q
main_1/mul/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a

main_1/mulMulmain_1/pi/Tanhmain_1/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ
S
main_1/mul_1/yConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
g
main_1/mul_1Mulmain_1/pi/Tanh_1main_1/mul_1/y*
T0*'
_output_shapes
:џџџџџџџџџ
a
target/qr1/concat/axisConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 

target/qr1/concatConcatV2Placeholder_2Placeholder_1target/qr1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*

Tidx0*
N*
T0
Е
8target/qr1/dense/kernel/Initializer/random_uniform/shapeConst*
valueB">      *
_output_shapes
:*
dtype0**
_class 
loc:@target/qr1/dense/kernel
Ї
6target/qr1/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *?ЈО**
_class 
loc:@target/qr1/dense/kernel*
dtype0
Ї
6target/qr1/dense/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@target/qr1/dense/kernel*
valueB
 *?Ј>*
_output_shapes
: *
dtype0

@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr1/dense/kernel/Initializer/random_uniform/shape**
_class 
loc:@target/qr1/dense/kernel*
T0*
seed2ѓ*

seed *
dtype0*
_output_shapes
:	>
њ
6target/qr1/dense/kernel/Initializer/random_uniform/subSub6target/qr1/dense/kernel/Initializer/random_uniform/max6target/qr1/dense/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
: 

6target/qr1/dense/kernel/Initializer/random_uniform/mulMul@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniform6target/qr1/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel*
T0
џ
2target/qr1/dense/kernel/Initializer/random_uniformAdd6target/qr1/dense/kernel/Initializer/random_uniform/mul6target/qr1/dense/kernel/Initializer/random_uniform/min**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>*
T0
Й
target/qr1/dense/kernel
VariableV2*
dtype0*
	container **
_class 
loc:@target/qr1/dense/kernel*
shape:	>*
_output_shapes
:	>*
shared_name 
є
target/qr1/dense/kernel/AssignAssigntarget/qr1/dense/kernel2target/qr1/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>*
T0**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
use_locking(

target/qr1/dense/kernel/readIdentitytarget/qr1/dense/kernel*
_output_shapes
:	>*
T0**
_class 
loc:@target/qr1/dense/kernel
 
'target/qr1/dense/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*(
_class
loc:@target/qr1/dense/bias
­
target/qr1/dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*(
_class
loc:@target/qr1/dense/bias*
shared_name *
shape:
п
target/qr1/dense/bias/AssignAssigntarget/qr1/dense/bias'target/qr1/dense/bias/Initializer/zeros*
T0*(
_class
loc:@target/qr1/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(

target/qr1/dense/bias/readIdentitytarget/qr1/dense/bias*
T0*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:
Ћ
target/qr1/dense/MatMulMatMultarget/qr1/concattarget/qr1/dense/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0
Ђ
target/qr1/dense/BiasAddBiasAddtarget/qr1/dense/MatMultarget/qr1/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
j
target/qr1/dense/ReluRelutarget/qr1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Й
:target/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *,
_class"
 loc:@target/qr1/dense_1/kernel*
_output_shapes
:
Ћ
8target/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *зГнН*
_output_shapes
: *,
_class"
 loc:@target/qr1/dense_1/kernel
Ћ
8target/qr1/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*,
_class"
 loc:@target/qr1/dense_1/kernel*
valueB
 *зГн=

Btarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_1/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*
seed2*

seed * 
_output_shapes
:
*
dtype0

8target/qr1/dense_1/kernel/Initializer/random_uniform/subSub8target/qr1/dense_1/kernel/Initializer/random_uniform/max8target/qr1/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
_output_shapes
: 

8target/qr1/dense_1/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel* 
_output_shapes
:


4target/qr1/dense_1/kernel/Initializer/random_uniformAdd8target/qr1/dense_1/kernel/Initializer/random_uniform/mul8target/qr1/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0
П
target/qr1/dense_1/kernel
VariableV2*
	container *
shape:
* 
_output_shapes
:
*
dtype0*
shared_name *,
_class"
 loc:@target/qr1/dense_1/kernel
§
 target/qr1/dense_1/kernel/AssignAssigntarget/qr1/dense_1/kernel4target/qr1/dense_1/kernel/Initializer/random_uniform*,
_class"
 loc:@target/qr1/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(

target/qr1/dense_1/kernel/readIdentitytarget/qr1/dense_1/kernel* 
_output_shapes
:
*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel
Є
)target/qr1/dense_1/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias
Б
target/qr1/dense_1/bias
VariableV2*
dtype0*
shared_name *
shape:**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
	container 
ч
target/qr1/dense_1/bias/AssignAssigntarget/qr1/dense_1/bias)target/qr1/dense_1/bias/Initializer/zeros*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(**
_class 
loc:@target/qr1/dense_1/bias

target/qr1/dense_1/bias/readIdentitytarget/qr1/dense_1/bias*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
T0
Г
target/qr1/dense_1/MatMulMatMultarget/qr1/dense/Relutarget/qr1/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Ј
target/qr1/dense_1/BiasAddBiasAddtarget/qr1/dense_1/MatMultarget/qr1/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
n
target/qr1/dense_1/ReluRelutarget/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Й
:target/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*,
_class"
 loc:@target/qr1/dense_2/kernel*
valueB"      *
_output_shapes
:
Ћ
8target/qr1/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *,
_class"
 loc:@target/qr1/dense_2/kernel*
dtype0*
valueB
 *IvО
Ћ
8target/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*,
_class"
 loc:@target/qr1/dense_2/kernel*
valueB
 *Iv>*
_output_shapes
: 

Btarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*

seed *
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
seed2

8target/qr1/dense_2/kernel/Initializer/random_uniform/subSub8target/qr1/dense_2/kernel/Initializer/random_uniform/max8target/qr1/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *,
_class"
 loc:@target/qr1/dense_2/kernel*
T0

8target/qr1/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_2/kernel/Initializer/random_uniform/sub*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	*
T0

4target/qr1/dense_2/kernel/Initializer/random_uniformAdd8target/qr1/dense_2/kernel/Initializer/random_uniform/mul8target/qr1/dense_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	*
T0
Н
target/qr1/dense_2/kernel
VariableV2*
shape:	*
dtype0*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	*
	container *
shared_name 
ќ
 target/qr1/dense_2/kernel/AssignAssigntarget/qr1/dense_2/kernel4target/qr1/dense_2/kernel/Initializer/random_uniform*
T0*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	*
use_locking(

target/qr1/dense_2/kernel/readIdentitytarget/qr1/dense_2/kernel*
T0*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel
Ђ
)target/qr1/dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias
Џ
target/qr1/dense_2/bias
VariableV2*
dtype0*
shape:**
_class 
loc:@target/qr1/dense_2/bias*
shared_name *
	container *
_output_shapes
:
ц
target/qr1/dense_2/bias/AssignAssigntarget/qr1/dense_2/bias)target/qr1/dense_2/bias/Initializer/zeros*
T0**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:

target/qr1/dense_2/bias/readIdentitytarget/qr1/dense_2/bias**
_class 
loc:@target/qr1/dense_2/bias*
T0*
_output_shapes
:
Д
target/qr1/dense_2/MatMulMatMultarget/qr1/dense_1/Relutarget/qr1/dense_2/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 
Ї
target/qr1/dense_2/BiasAddBiasAddtarget/qr1/dense_2/MatMultarget/qr1/dense_2/bias/read*
T0*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
~
target/qr1/SqueezeSqueezetarget/qr1/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
c
target/qr1_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

target/qr1_1/concatConcatV2Placeholder_2main_1/mul_1target/qr1_1/concat/axis*

Tidx0*
N*
T0*'
_output_shapes
:џџџџџџџџџ>
Џ
target/qr1_1/dense/MatMulMatMultarget/qr1_1/concattarget/qr1/dense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b( 
І
target/qr1_1/dense/BiasAddBiasAddtarget/qr1_1/dense/MatMultarget/qr1/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
n
target/qr1_1/dense/ReluRelutarget/qr1_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
З
target/qr1_1/dense_1/MatMulMatMultarget/qr1_1/dense/Relutarget/qr1/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0*
transpose_b( 
Ќ
target/qr1_1/dense_1/BiasAddBiasAddtarget/qr1_1/dense_1/MatMultarget/qr1/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
r
target/qr1_1/dense_1/ReluRelutarget/qr1_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
И
target/qr1_1/dense_2/MatMulMatMultarget/qr1_1/dense_1/Relutarget/qr1/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( 
Ћ
target/qr1_1/dense_2/BiasAddBiasAddtarget/qr1_1/dense_2/MatMultarget/qr1/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ

target/qr1_1/SqueezeSqueezetarget/qr1_1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
a
target/qr2/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

target/qr2/concatConcatV2Placeholder_2Placeholder_1target/qr2/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:џџџџџџџџџ>
Е
8target/qr2/dense/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:*
dtype0*
valueB">      
Ї
6target/qr2/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *?ЈО**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
: 
Ї
6target/qr2/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *?Ј>**
_class 
loc:@target/qr2/dense/kernel*
dtype0

@target/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr2/dense/kernel/Initializer/random_uniform/shape*
dtype0**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>*
T0*
seed2Г*

seed 
њ
6target/qr2/dense/kernel/Initializer/random_uniform/subSub6target/qr2/dense/kernel/Initializer/random_uniform/max6target/qr2/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@target/qr2/dense/kernel

6target/qr2/dense/kernel/Initializer/random_uniform/mulMul@target/qr2/dense/kernel/Initializer/random_uniform/RandomUniform6target/qr2/dense/kernel/Initializer/random_uniform/sub**
_class 
loc:@target/qr2/dense/kernel*
T0*
_output_shapes
:	>
џ
2target/qr2/dense/kernel/Initializer/random_uniformAdd6target/qr2/dense/kernel/Initializer/random_uniform/mul6target/qr2/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	>**
_class 
loc:@target/qr2/dense/kernel*
T0
Й
target/qr2/dense/kernel
VariableV2*
shape:	>*
dtype0*
_output_shapes
:	>*
	container *
shared_name **
_class 
loc:@target/qr2/dense/kernel
є
target/qr2/dense/kernel/AssignAssigntarget/qr2/dense/kernel2target/qr2/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(**
_class 
loc:@target/qr2/dense/kernel

target/qr2/dense/kernel/readIdentitytarget/qr2/dense/kernel*
_output_shapes
:	>**
_class 
loc:@target/qr2/dense/kernel*
T0
 
'target/qr2/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *(
_class
loc:@target/qr2/dense/bias
­
target/qr2/dense/bias
VariableV2*
shape:*
	container *
shared_name *
_output_shapes	
:*(
_class
loc:@target/qr2/dense/bias*
dtype0
п
target/qr2/dense/bias/AssignAssigntarget/qr2/dense/bias'target/qr2/dense/bias/Initializer/zeros*
validate_shape(*
T0*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
_output_shapes	
:

target/qr2/dense/bias/readIdentitytarget/qr2/dense/bias*(
_class
loc:@target/qr2/dense/bias*
T0*
_output_shapes	
:
Ћ
target/qr2/dense/MatMulMatMultarget/qr2/concattarget/qr2/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ
Ђ
target/qr2/dense/BiasAddBiasAddtarget/qr2/dense/MatMultarget/qr2/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
j
target/qr2/dense/ReluRelutarget/qr2/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Й
:target/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *,
_class"
 loc:@target/qr2/dense_1/kernel*
_output_shapes
:*
dtype0
Ћ
8target/qr2/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *зГнН*,
_class"
 loc:@target/qr2/dense_1/kernel*
_output_shapes
: 
Ћ
8target/qr2/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГн=*
dtype0*
_output_shapes
: *,
_class"
 loc:@target/qr2/dense_1/kernel

Btarget/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_1/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*

seed *
seed2Ф*
dtype0

8target/qr2/dense_1/kernel/Initializer/random_uniform/subSub8target/qr2/dense_1/kernel/Initializer/random_uniform/max8target/qr2/dense_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel*
_output_shapes
: 

8target/qr2/dense_1/kernel/Initializer/random_uniform/mulMulBtarget/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniform8target/qr2/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0

4target/qr2/dense_1/kernel/Initializer/random_uniformAdd8target/qr2/dense_1/kernel/Initializer/random_uniform/mul8target/qr2/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0
П
target/qr2/dense_1/kernel
VariableV2*
dtype0*,
_class"
 loc:@target/qr2/dense_1/kernel*
	container *
shared_name *
shape:
* 
_output_shapes
:

§
 target/qr2/dense_1/kernel/AssignAssigntarget/qr2/dense_1/kernel4target/qr2/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:


target/qr2/dense_1/kernel/readIdentitytarget/qr2/dense_1/kernel*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*
T0
Є
)target/qr2/dense_1/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias
Б
target/qr2/dense_1/bias
VariableV2*
	container **
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:*
shared_name *
dtype0*
shape:
ч
target/qr2/dense_1/bias/AssignAssigntarget/qr2/dense_1/bias)target/qr2/dense_1/bias/Initializer/zeros**
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(

target/qr2/dense_1/bias/readIdentitytarget/qr2/dense_1/bias*
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias*
T0
Г
target/qr2/dense_1/MatMulMatMultarget/qr2/dense/Relutarget/qr2/dense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:џџџџџџџџџ
Ј
target/qr2/dense_1/BiasAddBiasAddtarget/qr2/dense_1/MatMultarget/qr2/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
n
target/qr2/dense_1/ReluRelutarget/qr2/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Й
:target/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      *,
_class"
 loc:@target/qr2/dense_2/kernel
Ћ
8target/qr2/dense_2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
: *
valueB
 *IvО*
dtype0
Ћ
8target/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*,
_class"
 loc:@target/qr2/dense_2/kernel*
valueB
 *Iv>

Btarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_2/kernel/Initializer/random_uniform/shape*

seed *
T0*
_output_shapes
:	*
dtype0*
seed2е*,
_class"
 loc:@target/qr2/dense_2/kernel

8target/qr2/dense_2/kernel/Initializer/random_uniform/subSub8target/qr2/dense_2/kernel/Initializer/random_uniform/max8target/qr2/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *,
_class"
 loc:@target/qr2/dense_2/kernel

8target/qr2/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr2/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel

4target/qr2/dense_2/kernel/Initializer/random_uniformAdd8target/qr2/dense_2/kernel/Initializer/random_uniform/mul8target/qr2/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel
Н
target/qr2/dense_2/kernel
VariableV2*
dtype0*
	container *,
_class"
 loc:@target/qr2/dense_2/kernel*
shared_name *
_output_shapes
:	*
shape:	
ќ
 target/qr2/dense_2/kernel/AssignAssigntarget/qr2/dense_2/kernel4target/qr2/dense_2/kernel/Initializer/random_uniform*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0

target/qr2/dense_2/kernel/readIdentitytarget/qr2/dense_2/kernel*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
:	
Ђ
)target/qr2/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    **
_class 
loc:@target/qr2/dense_2/bias
Џ
target/qr2/dense_2/bias
VariableV2*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
shared_name *
	container *
dtype0*
shape:
ц
target/qr2/dense_2/bias/AssignAssigntarget/qr2/dense_2/bias)target/qr2/dense_2/bias/Initializer/zeros*
T0*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
validate_shape(

target/qr2/dense_2/bias/readIdentitytarget/qr2/dense_2/bias*
_output_shapes
:*
T0**
_class 
loc:@target/qr2/dense_2/bias
Д
target/qr2/dense_2/MatMulMatMultarget/qr2/dense_1/Relutarget/qr2/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
Ї
target/qr2/dense_2/BiasAddBiasAddtarget/qr2/dense_2/MatMultarget/qr2/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
~
target/qr2/SqueezeSqueezetarget/qr2/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ
c
target/qr2_1/concat/axisConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 

target/qr2_1/concatConcatV2Placeholder_2main_1/mul_1target/qr2_1/concat/axis*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ>*
N
Џ
target/qr2_1/dense/MatMulMatMultarget/qr2_1/concattarget/qr2/dense/kernel/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ
І
target/qr2_1/dense/BiasAddBiasAddtarget/qr2_1/dense/MatMultarget/qr2/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
n
target/qr2_1/dense/ReluRelutarget/qr2_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
З
target/qr2_1/dense_1/MatMulMatMultarget/qr2_1/dense/Relutarget/qr2/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ќ
target/qr2_1/dense_1/BiasAddBiasAddtarget/qr2_1/dense_1/MatMultarget/qr2/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
r
target/qr2_1/dense_1/ReluRelutarget/qr2_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
И
target/qr2_1/dense_2/MatMulMatMultarget/qr2_1/dense_1/Relutarget/qr2/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
Ћ
target/qr2_1/dense_2/BiasAddBiasAddtarget/qr2_1/dense_2/MatMultarget/qr2/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0

target/qr2_1/SqueezeSqueezetarget/qr2_1/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
`
target/qc/concat/axisConst*
valueB :
џџџџџџџџџ*
_output_shapes
: *
dtype0

target/qc/concatConcatV2Placeholder_2Placeholder_1target/qc/concat/axis*
N*

Tidx0*'
_output_shapes
:џџџџџџџџџ>*
T0
Г
7target/qc/dense/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@target/qc/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
Ѕ
5target/qc/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ЈО*)
_class
loc:@target/qc/dense/kernel
Ѕ
5target/qc/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *?Ј>*)
_class
loc:@target/qc/dense/kernel

?target/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform7target/qc/dense/kernel/Initializer/random_uniform/shape*
dtype0*
seed2ѓ*)
_class
loc:@target/qc/dense/kernel*

seed *
T0*
_output_shapes
:	>
і
5target/qc/dense/kernel/Initializer/random_uniform/subSub5target/qc/dense/kernel/Initializer/random_uniform/max5target/qc/dense/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
: 

5target/qc/dense/kernel/Initializer/random_uniform/mulMul?target/qc/dense/kernel/Initializer/random_uniform/RandomUniform5target/qc/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	>*)
_class
loc:@target/qc/dense/kernel
ћ
1target/qc/dense/kernel/Initializer/random_uniformAdd5target/qc/dense/kernel/Initializer/random_uniform/mul5target/qc/dense/kernel/Initializer/random_uniform/min*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>*
T0
З
target/qc/dense/kernel
VariableV2*
shape:	>*
_output_shapes
:	>*)
_class
loc:@target/qc/dense/kernel*
	container *
shared_name *
dtype0
№
target/qc/dense/kernel/AssignAssigntarget/qc/dense/kernel1target/qc/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
T0*
use_locking(

target/qc/dense/kernel/readIdentitytarget/qc/dense/kernel*)
_class
loc:@target/qc/dense/kernel*
T0*
_output_shapes
:	>

&target/qc/dense/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*'
_class
loc:@target/qc/dense/bias*
dtype0
Ћ
target/qc/dense/bias
VariableV2*
dtype0*
	container *'
_class
loc:@target/qc/dense/bias*
shape:*
shared_name *
_output_shapes	
:
л
target/qc/dense/bias/AssignAssigntarget/qc/dense/bias&target/qc/dense/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*'
_class
loc:@target/qc/dense/bias

target/qc/dense/bias/readIdentitytarget/qc/dense/bias*'
_class
loc:@target/qc/dense/bias*
T0*
_output_shapes	
:
Ј
target/qc/dense/MatMulMatMultarget/qc/concattarget/qc/dense/kernel/read*
transpose_b( *
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0

target/qc/dense/BiasAddBiasAddtarget/qc/dense/MatMultarget/qc/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
h
target/qc/dense/ReluRelutarget/qc/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
З
9target/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
:
Љ
7target/qc/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *зГнН*
dtype0*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
: 
Љ
7target/qc/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
: *
valueB
 *зГн=

Atarget/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel*
dtype0*
seed2*
T0*

seed 
ў
7target/qc/dense_1/kernel/Initializer/random_uniform/subSub7target/qc/dense_1/kernel/Initializer/random_uniform/max7target/qc/dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *+
_class!
loc:@target/qc/dense_1/kernel

7target/qc/dense_1/kernel/Initializer/random_uniform/mulMulAtarget/qc/dense_1/kernel/Initializer/random_uniform/RandomUniform7target/qc/dense_1/kernel/Initializer/random_uniform/sub*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:
*
T0

3target/qc/dense_1/kernel/Initializer/random_uniformAdd7target/qc/dense_1/kernel/Initializer/random_uniform/mul7target/qc/dense_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:

Н
target/qc/dense_1/kernel
VariableV2* 
_output_shapes
:
*
	container *+
_class!
loc:@target/qc/dense_1/kernel*
shape:
*
shared_name *
dtype0
љ
target/qc/dense_1/kernel/AssignAssigntarget/qc/dense_1/kernel3target/qc/dense_1/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:


target/qc/dense_1/kernel/readIdentitytarget/qc/dense_1/kernel*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:
*
T0
Ђ
(target/qc/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*)
_class
loc:@target/qc/dense_1/bias*
valueB*    
Џ
target/qc/dense_1/bias
VariableV2*
	container *
_output_shapes	
:*)
_class
loc:@target/qc/dense_1/bias*
dtype0*
shape:*
shared_name 
у
target/qc/dense_1/bias/AssignAssigntarget/qc/dense_1/bias(target/qc/dense_1/bias/Initializer/zeros*)
_class
loc:@target/qc/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:

target/qc/dense_1/bias/readIdentitytarget/qc/dense_1/bias*
T0*
_output_shapes	
:*)
_class
loc:@target/qc/dense_1/bias
А
target/qc/dense_1/MatMulMatMultarget/qc/dense/Relutarget/qc/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ѕ
target/qc/dense_1/BiasAddBiasAddtarget/qc/dense_1/MatMultarget/qc/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
l
target/qc/dense_1/ReluRelutarget/qc/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
З
9target/qc/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:*+
_class!
loc:@target/qc/dense_2/kernel
Љ
7target/qc/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *+
_class!
loc:@target/qc/dense_2/kernel*
dtype0*
valueB
 *IvО
Љ
7target/qc/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*+
_class!
loc:@target/qc/dense_2/kernel*
valueB
 *Iv>*
_output_shapes
: 

Atarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_2/kernel/Initializer/random_uniform/shape*

seed *
T0*
_output_shapes
:	*
seed2*
dtype0*+
_class!
loc:@target/qc/dense_2/kernel
ў
7target/qc/dense_2/kernel/Initializer/random_uniform/subSub7target/qc/dense_2/kernel/Initializer/random_uniform/max7target/qc/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *+
_class!
loc:@target/qc/dense_2/kernel

7target/qc/dense_2/kernel/Initializer/random_uniform/mulMulAtarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform7target/qc/dense_2/kernel/Initializer/random_uniform/sub*+
_class!
loc:@target/qc/dense_2/kernel*
T0*
_output_shapes
:	

3target/qc/dense_2/kernel/Initializer/random_uniformAdd7target/qc/dense_2/kernel/Initializer/random_uniform/mul7target/qc/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*+
_class!
loc:@target/qc/dense_2/kernel*
T0
Л
target/qc/dense_2/kernel
VariableV2*
_output_shapes
:	*
	container *
dtype0*
shape:	*
shared_name *+
_class!
loc:@target/qc/dense_2/kernel
ј
target/qc/dense_2/kernel/AssignAssigntarget/qc/dense_2/kernel3target/qc/dense_2/kernel/Initializer/random_uniform*
_output_shapes
:	*
use_locking(*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
T0

target/qc/dense_2/kernel/readIdentitytarget/qc/dense_2/kernel*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:	*
T0
 
(target/qc/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
dtype0*)
_class
loc:@target/qc/dense_2/bias
­
target/qc/dense_2/bias
VariableV2*
_output_shapes
:*
shape:*
shared_name *
dtype0*
	container *)
_class
loc:@target/qc/dense_2/bias
т
target/qc/dense_2/bias/AssignAssigntarget/qc/dense_2/bias(target/qc/dense_2/bias/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*)
_class
loc:@target/qc/dense_2/bias

target/qc/dense_2/bias/readIdentitytarget/qc/dense_2/bias*
T0*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:
Б
target/qc/dense_2/MatMulMatMultarget/qc/dense_1/Relutarget/qc/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( *
transpose_a( 
Є
target/qc/dense_2/BiasAddBiasAddtarget/qc/dense_2/MatMultarget/qc/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ
|
target/qc/SqueezeSqueezetarget/qc/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
b
target/qc_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

target/qc_1/concatConcatV2Placeholder_2main_1/mul_1target/qc_1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
T0*

Tidx0*
N
Ќ
target/qc_1/dense/MatMulMatMultarget/qc_1/concattarget/qc/dense/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 
Ѓ
target/qc_1/dense/BiasAddBiasAddtarget/qc_1/dense/MatMultarget/qc/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
l
target/qc_1/dense/ReluRelutarget/qc_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Д
target/qc_1/dense_1/MatMulMatMultarget/qc_1/dense/Relutarget/qc/dense_1/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Љ
target/qc_1/dense_1/BiasAddBiasAddtarget/qc_1/dense_1/MatMultarget/qc/dense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
p
target/qc_1/dense_1/ReluRelutarget/qc_1/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
target/qc_1/dense_2/MatMulMatMultarget/qc_1/dense_1/Relutarget/qc/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( *
transpose_a( 
Ј
target/qc_1/dense_2/BiasAddBiasAddtarget/qc_1/dense_2/MatMultarget/qc/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC

target/qc_1/SqueezeSqueezetarget/qc_1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
d
entreg/soft_alpha/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
u
entreg/soft_alpha
VariableV2*
shared_name *
	container *
shape: *
dtype0*
_output_shapes
: 
Ц
entreg/soft_alpha/AssignAssignentreg/soft_alphaentreg/soft_alpha/initial_value*
validate_shape(*
_output_shapes
: *
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(
|
entreg/soft_alpha/readIdentityentreg/soft_alpha*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: 
M
SoftplusSoftplusentreg/soft_alpha/read*
T0*
_output_shapes
: 
5
LogLogSoftplus*
_output_shapes
: *
T0
L
Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
d
costpen/soft_beta/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
u
costpen/soft_beta
VariableV2*
	container *
dtype0*
shape: *
shared_name *
_output_shapes
: 
Ц
costpen/soft_beta/AssignAssigncostpen/soft_betacostpen/soft_beta/initial_value*
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 
|
costpen/soft_beta/readIdentitycostpen/soft_beta*
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta
O

Softplus_1Softpluscostpen/soft_beta/read*
T0*
_output_shapes
: 
9
Log_1Log
Softplus_1*
_output_shapes
: *
T0
h
MinimumMinimummain/qr1_1/Squeezemain/qr2_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
n
	Minimum_1Minimumtarget/qr1_1/Squeezetarget/qr2_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
J
sub/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
N
subSubsub/xPlaceholder_4*
T0*#
_output_shapes
:џџџџџџџџџ
J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Єp}?
D
mulMulmul/xsub*
T0*#
_output_shapes
:џџџџџџџџџ
U
mul_1MulSoftplusmain_1/pi/sub_3*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_1Sub	Minimum_1mul_1*
T0*#
_output_shapes
:џџџџџџџџџ
F
mul_2Mulmulsub_1*#
_output_shapes
:џџџџџџџџџ*
T0
N
addAddPlaceholder_3mul_2*#
_output_shapes
:џџџџџџџџџ*
T0
O
StopGradientStopGradientadd*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_2/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
R
sub_2Subsub_2/xPlaceholder_4*#
_output_shapes
:џџџџџџџџџ*
T0
L
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *Єp}?
J
mul_3Mulmul_3/xsub_2*#
_output_shapes
:џџџџџџџџџ*
T0
V
mul_4Mulmul_3target/qc_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
P
add_1AddPlaceholder_5mul_4*#
_output_shapes
:џџџџџџџџџ*
T0
S
StopGradient_1StopGradientadd_1*#
_output_shapes
:џџџџџџџџџ*
T0
L
sub_3/xConst*
_output_shapes
: *
valueB
 *;ў@*
dtype0
T
sub_3Subsub_3/xmain/qc/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
Z
MeanMeansub_3Const_2*

Tidx0*
_output_shapes
: *
T0*
	keep_dims( 
L
mul_5/xConst*
dtype0*
valueB
 *   A*
_output_shapes
: 
<
mul_5Mulmul_5/xMean*
_output_shapes
: *
T0
S
mul_6MulSoftplusmain/pi/sub_3*#
_output_shapes
:џџџџџџџџџ*
T0
J
sub_4Submul_6Minimum*#
_output_shapes
:џџџџџџџџџ*
T0
@
sub_5Sub
Softplus_1mul_5*
T0*
_output_shapes
: 
T
mul_7Mulsub_5main/qc_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
H
add_2Addsub_4mul_7*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_1Meanadd_2Const_3*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
Z
sub_6SubStopGradientmain/qr1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
J
pow/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
F
powPowsub_6pow/y*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_4Const*
dtype0*
valueB: *
_output_shapes
:
Z
Mean_2MeanpowConst_4*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
L
mul_8/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
>
mul_8Mulmul_8/xMean_2*
T0*
_output_shapes
: 
Z
sub_7SubStopGradientmain/qr2/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
J
pow_1Powsub_7pow_1/y*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_5Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_3Meanpow_1Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
L
mul_9/xConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
>
mul_9Mulmul_9/xMean_3*
_output_shapes
: *
T0
[
sub_8SubStopGradient_1main/qc/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_2/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
J
pow_2Powsub_8pow_2/y*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_6Const*
_output_shapes
:*
valueB: *
dtype0
\
Mean_4Meanpow_2Const_6*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
M
mul_10/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
@
mul_10Mulmul_10/xMean_4*
_output_shapes
: *
T0
;
add_3Addmul_8mul_9*
T0*
_output_shapes
: 
<
add_4Addadd_3mul_10*
_output_shapes
: *
T0
Q
Const_7Const*
_output_shapes
:*
dtype0*
valueB: 
d
Mean_5Meanmain/pi/sub_3Const_7*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
3
NegNegMean_5*
_output_shapes
: *
T0
7
Neg_1NegSoftplus*
T0*
_output_shapes
: 
L
sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *   Р
;
sub_9Subsub_9/xNeg*
T0*
_output_shapes
: 
<
mul_11MulNeg_1sub_9*
_output_shapes
: *
T0
M
sub_10/xConst*
_output_shapes
: *
valueB
 *;ў@*
dtype0
V
sub_10Subsub_10/xmain/qc/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
O
mul_12Mul
Softplus_1sub_10*
T0*#
_output_shapes
:џџџџџџџџџ
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ?*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0

gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
`
gradients/Mean_1_grad/ShapeShapeadd_2*
T0*
_output_shapes
:*
out_type0

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
b
gradients/Mean_1_grad/Shape_1Shapeadd_2*
T0*
out_type0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
e
gradients/Mean_1_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
g
gradients/Mean_1_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
 
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
a
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients/add_2_grad/ShapeShapesub_4*
_output_shapes
:*
T0*
out_type0
a
gradients/add_2_grad/Shape_1Shapemul_7*
out_type0*
_output_shapes
:*
T0
К
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Њ
gradients/add_2_grad/SumSumgradients/Mean_1_grad/truediv*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/add_2_grad/Sum_1Sumgradients/Mean_1_grad/truediv,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
о
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
ф
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
T0
_
gradients/sub_4_grad/ShapeShapemul_6*
T0*
_output_shapes
:*
out_type0
c
gradients/sub_4_grad/Shape_1ShapeMinimum*
out_type0*
T0*
_output_shapes
:
К
*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
К
gradients/sub_4_grad/SumSum-gradients/add_2_grad/tuple/control_dependency*gradients/sub_4_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
О
gradients/sub_4_grad/Sum_1Sum-gradients/add_2_grad/tuple/control_dependency,gradients/sub_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
^
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
_output_shapes
:*
T0

gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
о
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
ф
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
]
gradients/mul_7_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
m
gradients/mul_7_grad/Shape_1Shapemain/qc_1/Squeeze*
_output_shapes
:*
T0*
out_type0
К
*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/mul_7_grad/MulMul/gradients/add_2_grad/tuple/control_dependency_1main/qc_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
_output_shapes
: *
Tshape0*
T0

gradients/mul_7_grad/Mul_1Mulsub_5/gradients/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/Mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:

gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
б
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_7_grad/Reshape*
_output_shapes
: *
T0
ф
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
]
gradients/mul_6_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
i
gradients/mul_6_grad/Shape_1Shapemain/pi/sub_3*
out_type0*
T0*
_output_shapes
:
К
*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/mul_6_grad/MulMul-gradients/sub_4_grad/tuple/control_dependencymain/pi/sub_3*
T0*#
_output_shapes
:џџџџџџџџџ
Ѕ
gradients/mul_6_grad/SumSumgradients/mul_6_grad/Mul*gradients/mul_6_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
Tshape0*
_output_shapes
: *
T0

gradients/mul_6_grad/Mul_1MulSoftplus-gradients/sub_4_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/Mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
б
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
_output_shapes
: */
_class%
#!loc:@gradients/mul_6_grad/Reshape*
T0
ф
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1*
T0
n
gradients/Minimum_grad/ShapeShapemain/qr1_1/Squeeze*
out_type0*
_output_shapes
:*
T0
p
gradients/Minimum_grad/Shape_1Shapemain/qr2_1/Squeeze*
out_type0*
T0*
_output_shapes
:

gradients/Minimum_grad/Shape_2Shape/gradients/sub_4_grad/tuple/control_dependency_1*
out_type0*
_output_shapes
:*
T0
g
"gradients/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ј
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*#
_output_shapes
:џџџџџџџџџ*
T0*

index_type0

 gradients/Minimum_grad/LessEqual	LessEqualmain/qr1_1/Squeezemain/qr2_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
Р
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ц
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual/gradients/sub_4_grad/tuple/control_dependency_1gradients/Minimum_grad/zeros*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros/gradients/sub_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0

gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
Д
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ѕ
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
ц
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*
T0
ь
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1

&gradients/main/qc_1/Squeeze_grad/ShapeShapemain/qc_1/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
Ь
(gradients/main/qc_1/Squeeze_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1&gradients/main/qc_1/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
m
"gradients/main/pi/sub_3_grad/ShapeShapemain/pi/Sum*
_output_shapes
:*
out_type0*
T0
q
$gradients/main/pi/sub_3_grad/Shape_1Shapemain/pi/Sum_1*
T0*
out_type0*
_output_shapes
:
в
2gradients/main/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_3_grad/Shape$gradients/main/pi/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ь
 gradients/main/pi/sub_3_grad/SumSum/gradients/mul_6_grad/tuple/control_dependency_12gradients/main/pi/sub_3_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Б
$gradients/main/pi/sub_3_grad/ReshapeReshape gradients/main/pi/sub_3_grad/Sum"gradients/main/pi/sub_3_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
а
"gradients/main/pi/sub_3_grad/Sum_1Sum/gradients/mul_6_grad/tuple/control_dependency_14gradients/main/pi/sub_3_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
n
 gradients/main/pi/sub_3_grad/NegNeg"gradients/main/pi/sub_3_grad/Sum_1*
T0*
_output_shapes
:
Е
&gradients/main/pi/sub_3_grad/Reshape_1Reshape gradients/main/pi/sub_3_grad/Neg$gradients/main/pi/sub_3_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

-gradients/main/pi/sub_3_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_3_grad/Reshape'^gradients/main/pi/sub_3_grad/Reshape_1
ў
5gradients/main/pi/sub_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_3_grad/Reshape.^gradients/main/pi/sub_3_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/sub_3_grad/Reshape*
T0

7gradients/main/pi/sub_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_3_grad/Reshape_1.^gradients/main/pi/sub_3_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/sub_3_grad/Reshape_1*
T0

'gradients/main/qr1_1/Squeeze_grad/ShapeShapemain/qr1_1/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
Ю
)gradients/main/qr1_1/Squeeze_grad/ReshapeReshape/gradients/Minimum_grad/tuple/control_dependency'gradients/main/qr1_1/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

'gradients/main/qr2_1/Squeeze_grad/ShapeShapemain/qr2_1/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
а
)gradients/main/qr2_1/Squeeze_grad/ReshapeReshape1gradients/Minimum_grad/tuple/control_dependency_1'gradients/main/qr2_1/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
Љ
4gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/main/qc_1/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
Ѓ
9gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp)^gradients/main/qc_1/Squeeze_grad/Reshape5^gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad
Ђ
Agradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/main/qc_1/Squeeze_grad/Reshape:^gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*;
_class1
/-loc:@gradients/main/qc_1/Squeeze_grad/Reshape
Џ
Cgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad:^gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*G
_class=
;9loc:@gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad
m
 gradients/main/pi/Sum_grad/ShapeShapemain/pi/mul_2*
T0*
_output_shapes
:*
out_type0

gradients/main/pi/Sum_grad/SizeConst*
value	B :*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: *
dtype0
Л
gradients/main/pi/Sum_grad/addAddmain/pi/Sum/reduction_indicesgradients/main/pi/Sum_grad/Size*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
T0*
_output_shapes
: 
С
gradients/main/pi/Sum_grad/modFloorModgradients/main/pi/Sum_grad/addgradients/main/pi/Sum_grad/Size*
T0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: 

"gradients/main/pi/Sum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape

&gradients/main/pi/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape

&gradients/main/pi/Sum_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
ї
 gradients/main/pi/Sum_grad/rangeRange&gradients/main/pi/Sum_grad/range/startgradients/main/pi/Sum_grad/Size&gradients/main/pi/Sum_grad/range/delta*

Tidx0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:

%gradients/main/pi/Sum_grad/Fill/valueConst*
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :
к
gradients/main/pi/Sum_grad/FillFill"gradients/main/pi/Sum_grad/Shape_1%gradients/main/pi/Sum_grad/Fill/value*

index_type0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
T0*
_output_shapes
: 
Ё
(gradients/main/pi/Sum_grad/DynamicStitchDynamicStitch gradients/main/pi/Sum_grad/rangegradients/main/pi/Sum_grad/mod gradients/main/pi/Sum_grad/Shapegradients/main/pi/Sum_grad/Fill*
T0*
N*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:

$gradients/main/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
з
"gradients/main/pi/Sum_grad/MaximumMaximum(gradients/main/pi/Sum_grad/DynamicStitch$gradients/main/pi/Sum_grad/Maximum/y*
T0*
_output_shapes
:*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
Я
#gradients/main/pi/Sum_grad/floordivFloorDiv gradients/main/pi/Sum_grad/Shape"gradients/main/pi/Sum_grad/Maximum*
_output_shapes
:*
T0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
з
"gradients/main/pi/Sum_grad/ReshapeReshape5gradients/main/pi/sub_3_grad/tuple/control_dependency(gradients/main/pi/Sum_grad/DynamicStitch*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0
Д
gradients/main/pi/Sum_grad/TileTile"gradients/main/pi/Sum_grad/Reshape#gradients/main/pi/Sum_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:џџџџџџџџџ
o
"gradients/main/pi/Sum_1_grad/ShapeShapemain/pi/mul_4*
_output_shapes
:*
T0*
out_type0

!gradients/main/pi/Sum_1_grad/SizeConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
У
 gradients/main/pi/Sum_1_grad/addAddmain/pi/Sum_1/reduction_indices!gradients/main/pi/Sum_1_grad/Size*
T0*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
Щ
 gradients/main/pi/Sum_1_grad/modFloorMod gradients/main/pi/Sum_1_grad/add!gradients/main/pi/Sum_1_grad/Size*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: *
T0

$gradients/main/pi/Sum_1_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
Ё
(gradients/main/pi/Sum_1_grad/range/startConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
dtype0*
value	B : *
_output_shapes
: 
Ё
(gradients/main/pi/Sum_1_grad/range/deltaConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: *
value	B :*
dtype0

"gradients/main/pi/Sum_1_grad/rangeRange(gradients/main/pi/Sum_1_grad/range/start!gradients/main/pi/Sum_1_grad/Size(gradients/main/pi/Sum_1_grad/range/delta*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:*

Tidx0
 
'gradients/main/pi/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
т
!gradients/main/pi/Sum_1_grad/FillFill$gradients/main/pi/Sum_1_grad/Shape_1'gradients/main/pi/Sum_1_grad/Fill/value*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*

index_type0*
_output_shapes
: 
­
*gradients/main/pi/Sum_1_grad/DynamicStitchDynamicStitch"gradients/main/pi/Sum_1_grad/range gradients/main/pi/Sum_1_grad/mod"gradients/main/pi/Sum_1_grad/Shape!gradients/main/pi/Sum_1_grad/Fill*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:*
N*
T0

&gradients/main/pi/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
п
$gradients/main/pi/Sum_1_grad/MaximumMaximum*gradients/main/pi/Sum_1_grad/DynamicStitch&gradients/main/pi/Sum_1_grad/Maximum/y*
_output_shapes
:*
T0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
з
%gradients/main/pi/Sum_1_grad/floordivFloorDiv"gradients/main/pi/Sum_1_grad/Shape$gradients/main/pi/Sum_1_grad/Maximum*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*
_output_shapes
:
н
$gradients/main/pi/Sum_1_grad/ReshapeReshape7gradients/main/pi/sub_3_grad/tuple/control_dependency_1*gradients/main/pi/Sum_1_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
К
!gradients/main/pi/Sum_1_grad/TileTile$gradients/main/pi/Sum_1_grad/Reshape%gradients/main/pi/Sum_1_grad/floordiv*

Tmultiples0*'
_output_shapes
:џџџџџџџџџ*
T0
Ћ
5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr1_1/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
І
:gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr1_1/Squeeze_grad/Reshape6^gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad
І
Bgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr1_1/Squeeze_grad/Reshape;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*<
_class2
0.loc:@gradients/main/qr1_1/Squeeze_grad/Reshape
Г
Dgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr2_1/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
І
:gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr2_1/Squeeze_grad/Reshape6^gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad
І
Bgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr2_1/Squeeze_grad/Reshape;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*<
_class2
0.loc:@gradients/main/qr2_1/Squeeze_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
Г
Dgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*H
_class>
<:loc:@gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad
ё
.gradients/main/qc_1/dense_2/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
х
0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qc_1/dense_1/ReluAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_b( *
T0*
transpose_a(
Є
8gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients/main/qc_1/dense_2/MatMul_grad/MatMul1^gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1
­
@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_2/MatMul_grad/MatMul9^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*A
_class7
53loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul
Њ
Bgradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*C
_class9
75loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1
e
"gradients/main/pi/mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
q
$gradients/main/pi/mul_2_grad/Shape_1Shapemain/pi/add_3*
_output_shapes
:*
T0*
out_type0
в
2gradients/main/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_2_grad/Shape$gradients/main/pi/mul_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

 gradients/main/pi/mul_2_grad/MulMulgradients/main/pi/Sum_grad/Tilemain/pi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/mul_2_grad/SumSum gradients/main/pi/mul_2_grad/Mul2gradients/main/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Є
$gradients/main/pi/mul_2_grad/ReshapeReshape gradients/main/pi/mul_2_grad/Sum"gradients/main/pi/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes
: 

"gradients/main/pi/mul_2_grad/Mul_1Mulmain/pi/mul_2/xgradients/main/pi/Sum_grad/Tile*'
_output_shapes
:џџџџџџџџџ*
T0
У
"gradients/main/pi/mul_2_grad/Sum_1Sum"gradients/main/pi/mul_2_grad/Mul_14gradients/main/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
&gradients/main/pi/mul_2_grad/Reshape_1Reshape"gradients/main/pi/mul_2_grad/Sum_1$gradients/main/pi/mul_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ

-gradients/main/pi/mul_2_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_2_grad/Reshape'^gradients/main/pi/mul_2_grad/Reshape_1
ё
5gradients/main/pi/mul_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_2_grad/Reshape.^gradients/main/pi/mul_2_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/mul_2_grad/Reshape*
_output_shapes
: 

7gradients/main/pi/mul_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_2_grad/Reshape_1.^gradients/main/pi/mul_2_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_2_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
e
"gradients/main/pi/mul_4_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
q
$gradients/main/pi/mul_4_grad/Shape_1Shapemain/pi/sub_2*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_4_grad/Shape$gradients/main/pi/mul_4_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

 gradients/main/pi/mul_4_grad/MulMul!gradients/main/pi/Sum_1_grad/Tilemain/pi/sub_2*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/mul_4_grad/SumSum gradients/main/pi/mul_4_grad/Mul2gradients/main/pi/mul_4_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Є
$gradients/main/pi/mul_4_grad/ReshapeReshape gradients/main/pi/mul_4_grad/Sum"gradients/main/pi/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

"gradients/main/pi/mul_4_grad/Mul_1Mulmain/pi/mul_4/x!gradients/main/pi/Sum_1_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
У
"gradients/main/pi/mul_4_grad/Sum_1Sum"gradients/main/pi/mul_4_grad/Mul_14gradients/main/pi/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Л
&gradients/main/pi/mul_4_grad/Reshape_1Reshape"gradients/main/pi/mul_4_grad/Sum_1$gradients/main/pi/mul_4_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

-gradients/main/pi/mul_4_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_4_grad/Reshape'^gradients/main/pi/mul_4_grad/Reshape_1
ё
5gradients/main/pi/mul_4_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_4_grad/Reshape.^gradients/main/pi/mul_4_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/mul_4_grad/Reshape*
T0*
_output_shapes
: 

7gradients/main/pi/mul_4_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_4_grad/Reshape_1.^gradients/main/pi/mul_4_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/mul_4_grad/Reshape_1
є
/gradients/main/qr1_1/dense_2/MatMul_grad/MatMulMatMulBgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_2/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(
ш
1gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr1_1/dense_1/ReluBgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a(
Ї
9gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1
Б
Agradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*B
_class8
64loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul
Ў
Cgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
є
/gradients/main/qr2_1/dense_2/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
T0*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
ш
1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense_1/ReluBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	
Ї
9gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1
Б
Agradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Ў
Cgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*D
_class:
86loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1*
T0
Ч
.gradients/main/qc_1/dense_1/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencymain/qc_1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
o
"gradients/main/pi/add_3_grad/ShapeShapemain/pi/add_2*
T0*
out_type0*
_output_shapes
:
g
$gradients/main/pi/add_3_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
в
2gradients/main/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_3_grad/Shape$gradients/main/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
 gradients/main/pi/add_3_grad/SumSum7gradients/main/pi/mul_2_grad/tuple/control_dependency_12gradients/main/pi/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
Е
$gradients/main/pi/add_3_grad/ReshapeReshape gradients/main/pi/add_3_grad/Sum"gradients/main/pi/add_3_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
и
"gradients/main/pi/add_3_grad/Sum_1Sum7gradients/main/pi/mul_2_grad/tuple/control_dependency_14gradients/main/pi/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
&gradients/main/pi/add_3_grad/Reshape_1Reshape"gradients/main/pi/add_3_grad/Sum_1$gradients/main/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

-gradients/main/pi/add_3_grad/tuple/group_depsNoOp%^gradients/main/pi/add_3_grad/Reshape'^gradients/main/pi/add_3_grad/Reshape_1

5gradients/main/pi/add_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_3_grad/Reshape.^gradients/main/pi/add_3_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*7
_class-
+)loc:@gradients/main/pi/add_3_grad/Reshape
ї
7gradients/main/pi/add_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_3_grad/Reshape_1.^gradients/main/pi/add_3_grad/tuple/group_deps*
T0*
_output_shapes
: *9
_class/
-+loc:@gradients/main/pi/add_3_grad/Reshape_1
o
"gradients/main/pi/sub_2_grad/ShapeShapemain/pi/sub_1*
_output_shapes
:*
out_type0*
T0
t
$gradients/main/pi/sub_2_grad/Shape_1Shapemain/pi/Softplus*
out_type0*
T0*
_output_shapes
:
в
2gradients/main/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_2_grad/Shape$gradients/main/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
 gradients/main/pi/sub_2_grad/SumSum7gradients/main/pi/mul_4_grad/tuple/control_dependency_12gradients/main/pi/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Е
$gradients/main/pi/sub_2_grad/ReshapeReshape gradients/main/pi/sub_2_grad/Sum"gradients/main/pi/sub_2_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
и
"gradients/main/pi/sub_2_grad/Sum_1Sum7gradients/main/pi/mul_4_grad/tuple/control_dependency_14gradients/main/pi/sub_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
n
 gradients/main/pi/sub_2_grad/NegNeg"gradients/main/pi/sub_2_grad/Sum_1*
_output_shapes
:*
T0
Й
&gradients/main/pi/sub_2_grad/Reshape_1Reshape gradients/main/pi/sub_2_grad/Neg$gradients/main/pi/sub_2_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

-gradients/main/pi/sub_2_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_2_grad/Reshape'^gradients/main/pi/sub_2_grad/Reshape_1

5gradients/main/pi/sub_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_2_grad/Reshape.^gradients/main/pi/sub_2_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/sub_2_grad/Reshape*
T0

7gradients/main/pi/sub_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_2_grad/Reshape_1.^gradients/main/pi/sub_2_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*9
_class/
-+loc:@gradients/main/pi/sub_2_grad/Reshape_1
Ъ
/gradients/main/qr1_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1_1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ъ
/gradients/main/qr2_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr2_1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
А
4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Љ
9gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad/^gradients/main/qc_1/dense_1/Relu_grad/ReluGrad
Џ
Agradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/main/qc_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
А
Cgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*G
_class=
;9loc:@gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad
m
"gradients/main/pi/add_2_grad/ShapeShapemain/pi/pow*
T0*
_output_shapes
:*
out_type0
q
$gradients/main/pi/add_2_grad/Shape_1Shapemain/pi/mul_1*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_2_grad/Shape$gradients/main/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
в
 gradients/main/pi/add_2_grad/SumSum5gradients/main/pi/add_3_grad/tuple/control_dependency2gradients/main/pi/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Е
$gradients/main/pi/add_2_grad/ReshapeReshape gradients/main/pi/add_2_grad/Sum"gradients/main/pi/add_2_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
ж
"gradients/main/pi/add_2_grad/Sum_1Sum5gradients/main/pi/add_3_grad/tuple/control_dependency4gradients/main/pi/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
&gradients/main/pi/add_2_grad/Reshape_1Reshape"gradients/main/pi/add_2_grad/Sum_1$gradients/main/pi/add_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

-gradients/main/pi/add_2_grad/tuple/group_depsNoOp%^gradients/main/pi/add_2_grad/Reshape'^gradients/main/pi/add_2_grad/Reshape_1

5gradients/main/pi/add_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_2_grad/Reshape.^gradients/main/pi/add_2_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/add_2_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

7gradients/main/pi/add_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_2_grad/Reshape_1.^gradients/main/pi/add_2_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/add_2_grad/Reshape_1
e
"gradients/main/pi/sub_1_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
o
$gradients/main/pi/sub_1_grad/Shape_1Shapemain/pi/add*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_1_grad/Shape$gradients/main/pi/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
в
 gradients/main/pi/sub_1_grad/SumSum5gradients/main/pi/sub_2_grad/tuple/control_dependency2gradients/main/pi/sub_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Є
$gradients/main/pi/sub_1_grad/ReshapeReshape gradients/main/pi/sub_1_grad/Sum"gradients/main/pi/sub_1_grad/Shape*
T0*
_output_shapes
: *
Tshape0
ж
"gradients/main/pi/sub_1_grad/Sum_1Sum5gradients/main/pi/sub_2_grad/tuple/control_dependency4gradients/main/pi/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
n
 gradients/main/pi/sub_1_grad/NegNeg"gradients/main/pi/sub_1_grad/Sum_1*
_output_shapes
:*
T0
Й
&gradients/main/pi/sub_1_grad/Reshape_1Reshape gradients/main/pi/sub_1_grad/Neg$gradients/main/pi/sub_1_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

-gradients/main/pi/sub_1_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_1_grad/Reshape'^gradients/main/pi/sub_1_grad/Reshape_1
ё
5gradients/main/pi/sub_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_1_grad/Reshape.^gradients/main/pi/sub_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/sub_1_grad/Reshape*
_output_shapes
: 

7gradients/main/pi/sub_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_1_grad/Reshape_1.^gradients/main/pi/sub_1_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/sub_1_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
,gradients/main/pi/Softplus_grad/SoftplusGradSoftplusGrad7gradients/main/pi/sub_2_grad/tuple/control_dependency_1main/pi/mul_3*'
_output_shapes
:џџџџџџџџџ*
T0
В
5gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Ќ
:gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad
Г
Bgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad;^gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:џџџџџџџџџ
Д
Dgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*H
_class>
<:loc:@gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad
В
5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
Ќ
:gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad
Г
Bgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0
Д
Dgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*H
_class>
<:loc:@gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad
ё
.gradients/main/qc_1/dense_1/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
ф
0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qc_1/dense/ReluAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
*
transpose_b( 
Є
8gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_depsNoOp/^gradients/main/qc_1/dense_1/MatMul_grad/MatMul1^gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1
­
@gradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_1/MatMul_grad/MatMul9^gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@gradients/main/qc_1/dense_1/MatMul_grad/MatMul*
T0
Ћ
Bgradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
o
 gradients/main/pi/pow_grad/ShapeShapemain/pi/truediv*
out_type0*
T0*
_output_shapes
:
e
"gradients/main/pi/pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ь
0gradients/main/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/pow_grad/Shape"gradients/main/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/main/pi/pow_grad/mulMul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow/y*
T0*'
_output_shapes
:џџџџџџџџџ
e
 gradients/main/pi/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
w
gradients/main/pi/pow_grad/subSubmain/pi/pow/y gradients/main/pi/pow_grad/sub/y*
_output_shapes
: *
T0

gradients/main/pi/pow_grad/PowPowmain/pi/truedivgradients/main/pi/pow_grad/sub*'
_output_shapes
:џџџџџџџџџ*
T0

 gradients/main/pi/pow_grad/mul_1Mulgradients/main/pi/pow_grad/mulgradients/main/pi/pow_grad/Pow*
T0*'
_output_shapes
:џџџџџџџџџ
Й
gradients/main/pi/pow_grad/SumSum gradients/main/pi/pow_grad/mul_10gradients/main/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Џ
"gradients/main/pi/pow_grad/ReshapeReshapegradients/main/pi/pow_grad/Sum gradients/main/pi/pow_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
i
$gradients/main/pi/pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 

"gradients/main/pi/pow_grad/GreaterGreatermain/pi/truediv$gradients/main/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:џџџџџџџџџ
y
*gradients/main/pi/pow_grad/ones_like/ShapeShapemain/pi/truediv*
out_type0*
_output_shapes
:*
T0
o
*gradients/main/pi/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ш
$gradients/main/pi/pow_grad/ones_likeFill*gradients/main/pi/pow_grad/ones_like/Shape*gradients/main/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
И
!gradients/main/pi/pow_grad/SelectSelect"gradients/main/pi/pow_grad/Greatermain/pi/truediv$gradients/main/pi/pow_grad/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
z
gradients/main/pi/pow_grad/LogLog!gradients/main/pi/pow_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ
u
%gradients/main/pi/pow_grad/zeros_like	ZerosLikemain/pi/truediv*'
_output_shapes
:џџџџџџџџџ*
T0
Ъ
#gradients/main/pi/pow_grad/Select_1Select"gradients/main/pi/pow_grad/Greatergradients/main/pi/pow_grad/Log%gradients/main/pi/pow_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

 gradients/main/pi/pow_grad/mul_2Mul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow*'
_output_shapes
:џџџџџџџџџ*
T0
 
 gradients/main/pi/pow_grad/mul_3Mul gradients/main/pi/pow_grad/mul_2#gradients/main/pi/pow_grad/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/pow_grad/Sum_1Sum gradients/main/pi/pow_grad/mul_32gradients/main/pi/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Є
$gradients/main/pi/pow_grad/Reshape_1Reshape gradients/main/pi/pow_grad/Sum_1"gradients/main/pi/pow_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

+gradients/main/pi/pow_grad/tuple/group_depsNoOp#^gradients/main/pi/pow_grad/Reshape%^gradients/main/pi/pow_grad/Reshape_1
њ
3gradients/main/pi/pow_grad/tuple/control_dependencyIdentity"gradients/main/pi/pow_grad/Reshape,^gradients/main/pi/pow_grad/tuple/group_deps*5
_class+
)'loc:@gradients/main/pi/pow_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
я
5gradients/main/pi/pow_grad/tuple/control_dependency_1Identity$gradients/main/pi/pow_grad/Reshape_1,^gradients/main/pi/pow_grad/tuple/group_deps*
T0*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/pow_grad/Reshape_1
e
"gradients/main/pi/mul_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
y
$gradients/main/pi/mul_1_grad/Shape_1Shapemain/pi/clip_by_value*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_1_grad/Shape$gradients/main/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
 gradients/main/pi/mul_1_grad/MulMul7gradients/main/pi/add_2_grad/tuple/control_dependency_1main/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/mul_1_grad/SumSum gradients/main/pi/mul_1_grad/Mul2gradients/main/pi/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
Є
$gradients/main/pi/mul_1_grad/ReshapeReshape gradients/main/pi/mul_1_grad/Sum"gradients/main/pi/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
Ѕ
"gradients/main/pi/mul_1_grad/Mul_1Mulmain/pi/mul_1/x7gradients/main/pi/add_2_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0
У
"gradients/main/pi/mul_1_grad/Sum_1Sum"gradients/main/pi/mul_1_grad/Mul_14gradients/main/pi/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Л
&gradients/main/pi/mul_1_grad/Reshape_1Reshape"gradients/main/pi/mul_1_grad/Sum_1$gradients/main/pi/mul_1_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

-gradients/main/pi/mul_1_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_1_grad/Reshape'^gradients/main/pi/mul_1_grad/Reshape_1
ё
5gradients/main/pi/mul_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_1_grad/Reshape.^gradients/main/pi/mul_1_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/mul_1_grad/Reshape*
T0*
_output_shapes
: 

7gradients/main/pi/mul_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_1_grad/Reshape_1.^gradients/main/pi/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
e
"gradients/main/pi/mul_3_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
o
$gradients/main/pi/mul_3_grad/Shape_1Shapemain/pi/add*
out_type0*
_output_shapes
:*
T0
в
2gradients/main/pi/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_3_grad/Shape$gradients/main/pi/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

 gradients/main/pi/mul_3_grad/MulMul,gradients/main/pi/Softplus_grad/SoftplusGradmain/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/mul_3_grad/SumSum gradients/main/pi/mul_3_grad/Mul2gradients/main/pi/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Є
$gradients/main/pi/mul_3_grad/ReshapeReshape gradients/main/pi/mul_3_grad/Sum"gradients/main/pi/mul_3_grad/Shape*
Tshape0*
_output_shapes
: *
T0

"gradients/main/pi/mul_3_grad/Mul_1Mulmain/pi/mul_3/x,gradients/main/pi/Softplus_grad/SoftplusGrad*'
_output_shapes
:џџџџџџџџџ*
T0
У
"gradients/main/pi/mul_3_grad/Sum_1Sum"gradients/main/pi/mul_3_grad/Mul_14gradients/main/pi/mul_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
&gradients/main/pi/mul_3_grad/Reshape_1Reshape"gradients/main/pi/mul_3_grad/Sum_1$gradients/main/pi/mul_3_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

-gradients/main/pi/mul_3_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_3_grad/Reshape'^gradients/main/pi/mul_3_grad/Reshape_1
ё
5gradients/main/pi/mul_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_3_grad/Reshape.^gradients/main/pi/mul_3_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/mul_3_grad/Reshape*
_output_shapes
: *
T0

7gradients/main/pi/mul_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_3_grad/Reshape_1.^gradients/main/pi/mul_3_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/mul_3_grad/Reshape_1*
T0
є
/gradients/main/qr1_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
ч
1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1_1/dense/ReluBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
T0*
transpose_b( 
Ї
9gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1
Б
Agradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_1/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Џ
Cgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

є
/gradients/main/qr2_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
ч
1gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense/ReluBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_b( *
transpose_a(*
T0
Ї
9gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr2_1/dense_1/MatMul_grad/MatMul2^gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1
Б
Agradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_1/MatMul_grad/MatMul:^gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients/main/qr2_1/dense_1/MatMul_grad/MatMul
Џ
Cgradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1:^gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
У
,gradients/main/qc_1/dense/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependencymain/qc_1/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
o
$gradients/main/pi/truediv_grad/ShapeShapemain/pi/sub*
out_type0*
T0*
_output_shapes
:
s
&gradients/main/pi/truediv_grad/Shape_1Shapemain/pi/add_1*
T0*
_output_shapes
:*
out_type0
и
4gradients/main/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/main/pi/truediv_grad/Shape&gradients/main/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ї
&gradients/main/pi/truediv_grad/RealDivRealDiv3gradients/main/pi/pow_grad/tuple/control_dependencymain/pi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
"gradients/main/pi/truediv_grad/SumSum&gradients/main/pi/truediv_grad/RealDiv4gradients/main/pi/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
&gradients/main/pi/truediv_grad/ReshapeReshape"gradients/main/pi/truediv_grad/Sum$gradients/main/pi/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
h
"gradients/main/pi/truediv_grad/NegNegmain/pi/sub*
T0*'
_output_shapes
:џџџџџџџџџ

(gradients/main/pi/truediv_grad/RealDiv_1RealDiv"gradients/main/pi/truediv_grad/Negmain/pi/add_1*
T0*'
_output_shapes
:џџџџџџџџџ

(gradients/main/pi/truediv_grad/RealDiv_2RealDiv(gradients/main/pi/truediv_grad/RealDiv_1main/pi/add_1*
T0*'
_output_shapes
:џџџџџџџџџ
К
"gradients/main/pi/truediv_grad/mulMul3gradients/main/pi/pow_grad/tuple/control_dependency(gradients/main/pi/truediv_grad/RealDiv_2*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
$gradients/main/pi/truediv_grad/Sum_1Sum"gradients/main/pi/truediv_grad/mul6gradients/main/pi/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
С
(gradients/main/pi/truediv_grad/Reshape_1Reshape$gradients/main/pi/truediv_grad/Sum_1&gradients/main/pi/truediv_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

/gradients/main/pi/truediv_grad/tuple/group_depsNoOp'^gradients/main/pi/truediv_grad/Reshape)^gradients/main/pi/truediv_grad/Reshape_1

7gradients/main/pi/truediv_grad/tuple/control_dependencyIdentity&gradients/main/pi/truediv_grad/Reshape0^gradients/main/pi/truediv_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/truediv_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0

9gradients/main/pi/truediv_grad/tuple/control_dependency_1Identity(gradients/main/pi/truediv_grad/Reshape_10^gradients/main/pi/truediv_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/pi/truediv_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
Ц
-gradients/main/qr1_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1_1/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ц
-gradients/main/qr2_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr2_1/dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ќ
2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/qc_1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
Ѓ
7gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad-^gradients/main/qc_1/dense/Relu_grad/ReluGrad
Ї
?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/qc_1/dense/Relu_grad/ReluGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/qc_1/dense/Relu_grad/ReluGrad*
T0*(
_output_shapes
:џџџџџџџџџ
Ј
Agradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
 gradients/main/pi/sub_grad/ShapeShapemain/pi/add*
T0*
_output_shapes
:*
out_type0
y
"gradients/main/pi/sub_grad/Shape_1Shapemain/pi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Ь
0gradients/main/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/sub_grad/Shape"gradients/main/pi/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
а
gradients/main/pi/sub_grad/SumSum7gradients/main/pi/truediv_grad/tuple/control_dependency0gradients/main/pi/sub_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Џ
"gradients/main/pi/sub_grad/ReshapeReshapegradients/main/pi/sub_grad/Sum gradients/main/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
д
 gradients/main/pi/sub_grad/Sum_1Sum7gradients/main/pi/truediv_grad/tuple/control_dependency2gradients/main/pi/sub_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
j
gradients/main/pi/sub_grad/NegNeg gradients/main/pi/sub_grad/Sum_1*
_output_shapes
:*
T0
Г
$gradients/main/pi/sub_grad/Reshape_1Reshapegradients/main/pi/sub_grad/Neg"gradients/main/pi/sub_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

+gradients/main/pi/sub_grad/tuple/group_depsNoOp#^gradients/main/pi/sub_grad/Reshape%^gradients/main/pi/sub_grad/Reshape_1
њ
3gradients/main/pi/sub_grad/tuple/control_dependencyIdentity"gradients/main/pi/sub_grad/Reshape,^gradients/main/pi/sub_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*5
_class+
)'loc:@gradients/main/pi/sub_grad/Reshape

5gradients/main/pi/sub_grad/tuple/control_dependency_1Identity$gradients/main/pi/sub_grad/Reshape_1,^gradients/main/pi/sub_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1
o
"gradients/main/pi/add_1_grad/ShapeShapemain/pi/Exp_1*
out_type0*
T0*
_output_shapes
:
g
$gradients/main/pi/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
в
2gradients/main/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_1_grad/Shape$gradients/main/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ж
 gradients/main/pi/add_1_grad/SumSum9gradients/main/pi/truediv_grad/tuple/control_dependency_12gradients/main/pi/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Е
$gradients/main/pi/add_1_grad/ReshapeReshape gradients/main/pi/add_1_grad/Sum"gradients/main/pi/add_1_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
к
"gradients/main/pi/add_1_grad/Sum_1Sum9gradients/main/pi/truediv_grad/tuple/control_dependency_14gradients/main/pi/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
&gradients/main/pi/add_1_grad/Reshape_1Reshape"gradients/main/pi/add_1_grad/Sum_1$gradients/main/pi/add_1_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

-gradients/main/pi/add_1_grad/tuple/group_depsNoOp%^gradients/main/pi/add_1_grad/Reshape'^gradients/main/pi/add_1_grad/Reshape_1

5gradients/main/pi/add_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_1_grad/Reshape.^gradients/main/pi/add_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/add_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
ї
7gradients/main/pi/add_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_1_grad/Reshape_1.^gradients/main/pi/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*9
_class/
-+loc:@gradients/main/pi/add_1_grad/Reshape_1
Ў
3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr1_1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
І
8gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad.^gradients/main/qr1_1/dense/Relu_grad/ReluGrad
Ћ
@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/main/qr1_1/dense/Relu_grad/ReluGrad9^gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*@
_class6
42loc:@gradients/main/qr1_1/dense/Relu_grad/ReluGrad
Ќ
Bgradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
Ў
3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr2_1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
І
8gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad.^gradients/main/qr2_1/dense/Relu_grad/ReluGrad
Ћ
@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/Relu_grad/ReluGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*@
_class6
42loc:@gradients/main/qr2_1/dense/Relu_grad/ReluGrad
Ќ
Bgradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
ъ
,gradients/main/qc_1/dense/MatMul_grad/MatMulMatMul?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*'
_output_shapes
:џџџџџџџџџ>*
transpose_b(*
transpose_a( *
T0
л
.gradients/main/qc_1/dense/MatMul_grad/MatMul_1MatMulmain/qc_1/concat?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	>

6gradients/main/qc_1/dense/MatMul_grad/tuple/group_depsNoOp-^gradients/main/qc_1/dense/MatMul_grad/MatMul/^gradients/main/qc_1/dense/MatMul_grad/MatMul_1
Є
>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/qc_1/dense/MatMul_grad/MatMul7^gradients/main/qc_1/dense/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/main/qc_1/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ>
Ђ
@gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/qc_1/dense/MatMul_grad/MatMul_17^gradients/main/qc_1/dense/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/qc_1/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>*
T0

 gradients/main/pi/Exp_1_grad/mulMul5gradients/main/pi/add_1_grad/tuple/control_dependencymain/pi/Exp_1*'
_output_shapes
:џџџџџџџџџ*
T0
э
-gradients/main/qr1_1/dense/MatMul_grad/MatMulMatMul@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*
transpose_a( *
T0*
transpose_b(*'
_output_shapes
:џџџџџџџџџ>
о
/gradients/main/qr1_1/dense/MatMul_grad/MatMul_1MatMulmain/qr1_1/concat@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
transpose_b( *
_output_shapes
:	>
Ё
7gradients/main/qr1_1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients/main/qr1_1/dense/MatMul_grad/MatMul0^gradients/main/qr1_1/dense/MatMul_grad/MatMul_1
Ј
?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients/main/qr1_1/dense/MatMul_grad/MatMul8^gradients/main/qr1_1/dense/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/main/qr1_1/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ>
І
Agradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients/main/qr1_1/dense/MatMul_grad/MatMul_18^gradients/main/qr1_1/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr1_1/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>*
T0
э
-gradients/main/qr2_1/dense/MatMul_grad/MatMulMatMul@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependencymain/qr2/dense/kernel/read*
T0*
transpose_b(*'
_output_shapes
:џџџџџџџџџ>*
transpose_a( 
о
/gradients/main/qr2_1/dense/MatMul_grad/MatMul_1MatMulmain/qr2_1/concat@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	>*
transpose_b( *
T0
Ё
7gradients/main/qr2_1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients/main/qr2_1/dense/MatMul_grad/MatMul0^gradients/main/qr2_1/dense/MatMul_grad/MatMul_1
Ј
?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/MatMul_grad/MatMul8^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ>*@
_class6
42loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul
І
Agradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients/main/qr2_1/dense/MatMul_grad/MatMul_18^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>*
T0*B
_class8
64loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul_1
f
$gradients/main/qc_1/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :

#gradients/main/qc_1/concat_grad/modFloorModmain/qc_1/concat/axis$gradients/main/qc_1/concat_grad/Rank*
_output_shapes
: *
T0
p
%gradients/main/qc_1/concat_grad/ShapeShapePlaceholder*
out_type0*
_output_shapes
:*
T0

&gradients/main/qc_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
N* 
_output_shapes
::*
out_type0*
T0
о
,gradients/main/qc_1/concat_grad/ConcatOffsetConcatOffset#gradients/main/qc_1/concat_grad/mod&gradients/main/qc_1/concat_grad/ShapeN(gradients/main/qc_1/concat_grad/ShapeN:1* 
_output_shapes
::*
N

%gradients/main/qc_1/concat_grad/SliceSlice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency,gradients/main/qc_1/concat_grad/ConcatOffset&gradients/main/qc_1/concat_grad/ShapeN*
Index0*'
_output_shapes
:џџџџџџџџџ<*
T0

'gradients/main/qc_1/concat_grad/Slice_1Slice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency.gradients/main/qc_1/concat_grad/ConcatOffset:1(gradients/main/qc_1/concat_grad/ShapeN:1*
Index0*'
_output_shapes
:џџџџџџџџџ*
T0

0gradients/main/qc_1/concat_grad/tuple/group_depsNoOp&^gradients/main/qc_1/concat_grad/Slice(^gradients/main/qc_1/concat_grad/Slice_1

8gradients/main/qc_1/concat_grad/tuple/control_dependencyIdentity%gradients/main/qc_1/concat_grad/Slice1^gradients/main/qc_1/concat_grad/tuple/group_deps*8
_class.
,*loc:@gradients/main/qc_1/concat_grad/Slice*
T0*'
_output_shapes
:џџџџџџџџџ<

:gradients/main/qc_1/concat_grad/tuple/control_dependency_1Identity'gradients/main/qc_1/concat_grad/Slice_11^gradients/main/qc_1/concat_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*:
_class0
.,loc:@gradients/main/qc_1/concat_grad/Slice_1
g
%gradients/main/qr1_1/concat_grad/RankConst*
dtype0*
value	B :*
_output_shapes
: 

$gradients/main/qr1_1/concat_grad/modFloorModmain/qr1_1/concat/axis%gradients/main/qr1_1/concat_grad/Rank*
_output_shapes
: *
T0
q
&gradients/main/qr1_1/concat_grad/ShapeShapePlaceholder*
out_type0*
T0*
_output_shapes
:

'gradients/main/qr1_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1* 
_output_shapes
::*
N*
T0*
out_type0
т
-gradients/main/qr1_1/concat_grad/ConcatOffsetConcatOffset$gradients/main/qr1_1/concat_grad/mod'gradients/main/qr1_1/concat_grad/ShapeN)gradients/main/qr1_1/concat_grad/ShapeN:1*
N* 
_output_shapes
::

&gradients/main/qr1_1/concat_grad/SliceSlice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency-gradients/main/qr1_1/concat_grad/ConcatOffset'gradients/main/qr1_1/concat_grad/ShapeN*'
_output_shapes
:џџџџџџџџџ<*
T0*
Index0

(gradients/main/qr1_1/concat_grad/Slice_1Slice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr1_1/concat_grad/ConcatOffset:1)gradients/main/qr1_1/concat_grad/ShapeN:1*
T0*'
_output_shapes
:џџџџџџџџџ*
Index0

1gradients/main/qr1_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr1_1/concat_grad/Slice)^gradients/main/qr1_1/concat_grad/Slice_1

9gradients/main/qr1_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr1_1/concat_grad/Slice2^gradients/main/qr1_1/concat_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/main/qr1_1/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ<

;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr1_1/concat_grad/Slice_12^gradients/main/qr1_1/concat_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/main/qr1_1/concat_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ
g
%gradients/main/qr2_1/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :

$gradients/main/qr2_1/concat_grad/modFloorModmain/qr2_1/concat/axis%gradients/main/qr2_1/concat_grad/Rank*
T0*
_output_shapes
: 
q
&gradients/main/qr2_1/concat_grad/ShapeShapePlaceholder*
_output_shapes
:*
out_type0*
T0

'gradients/main/qr2_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
N*
out_type0* 
_output_shapes
::*
T0
т
-gradients/main/qr2_1/concat_grad/ConcatOffsetConcatOffset$gradients/main/qr2_1/concat_grad/mod'gradients/main/qr2_1/concat_grad/ShapeN)gradients/main/qr2_1/concat_grad/ShapeN:1*
N* 
_output_shapes
::

&gradients/main/qr2_1/concat_grad/SliceSlice?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency-gradients/main/qr2_1/concat_grad/ConcatOffset'gradients/main/qr2_1/concat_grad/ShapeN*'
_output_shapes
:џџџџџџџџџ<*
T0*
Index0

(gradients/main/qr2_1/concat_grad/Slice_1Slice?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr2_1/concat_grad/ConcatOffset:1)gradients/main/qr2_1/concat_grad/ShapeN:1*'
_output_shapes
:џџџџџџџџџ*
Index0*
T0

1gradients/main/qr2_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr2_1/concat_grad/Slice)^gradients/main/qr2_1/concat_grad/Slice_1

9gradients/main/qr2_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr2_1/concat_grad/Slice2^gradients/main/qr2_1/concat_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ<*9
_class/
-+loc:@gradients/main/qr2_1/concat_grad/Slice

;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr2_1/concat_grad/Slice_12^gradients/main/qr2_1/concat_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*;
_class1
/-loc:@gradients/main/qr2_1/concat_grad/Slice_1
У
gradients/AddNAddN:gradients/main/qc_1/concat_grad/tuple/control_dependency_1;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1*
T0*
N*'
_output_shapes
:џџџџџџџџџ*:
_class0
.,loc:@gradients/main/qc_1/concat_grad/Slice_1
m
gradients/main/mul_1_grad/ShapeShapemain/pi/Tanh_1*
T0*
_output_shapes
:*
out_type0
d
!gradients/main/mul_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
Щ
/gradients/main/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/main/mul_1_grad/Shape!gradients/main/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
t
gradients/main/mul_1_grad/MulMulgradients/AddNmain/mul_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
Д
gradients/main/mul_1_grad/SumSumgradients/main/mul_1_grad/Mul/gradients/main/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
Ќ
!gradients/main/mul_1_grad/ReshapeReshapegradients/main/mul_1_grad/Sumgradients/main/mul_1_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
x
gradients/main/mul_1_grad/Mul_1Mulmain/pi/Tanh_1gradients/AddN*'
_output_shapes
:џџџџџџџџџ*
T0
К
gradients/main/mul_1_grad/Sum_1Sumgradients/main/mul_1_grad/Mul_11gradients/main/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ё
#gradients/main/mul_1_grad/Reshape_1Reshapegradients/main/mul_1_grad/Sum_1!gradients/main/mul_1_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
|
*gradients/main/mul_1_grad/tuple/group_depsNoOp"^gradients/main/mul_1_grad/Reshape$^gradients/main/mul_1_grad/Reshape_1
і
2gradients/main/mul_1_grad/tuple/control_dependencyIdentity!gradients/main/mul_1_grad/Reshape+^gradients/main/mul_1_grad/tuple/group_deps*4
_class*
(&loc:@gradients/main/mul_1_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
ы
4gradients/main/mul_1_grad/tuple/control_dependency_1Identity#gradients/main/mul_1_grad/Reshape_1+^gradients/main/mul_1_grad/tuple/group_deps*
T0*
_output_shapes
: *6
_class,
*(loc:@gradients/main/mul_1_grad/Reshape_1
Ј
&gradients/main/pi/Tanh_1_grad/TanhGradTanhGradmain/pi/Tanh_12gradients/main/mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ
н
gradients/AddN_1AddN7gradients/main/pi/sub_1_grad/tuple/control_dependency_17gradients/main/pi/mul_3_grad/tuple/control_dependency_13gradients/main/pi/sub_grad/tuple/control_dependency&gradients/main/pi/Tanh_1_grad/TanhGrad*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/sub_1_grad/Reshape_1*
T0*
N
w
 gradients/main/pi/add_grad/ShapeShapemain/pi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
m
"gradients/main/pi/add_grad/Shape_1Shapemain/pi/mul*
T0*
_output_shapes
:*
out_type0
Ь
0gradients/main/pi/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/add_grad/Shape"gradients/main/pi/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Љ
gradients/main/pi/add_grad/SumSumgradients/AddN_10gradients/main/pi/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Џ
"gradients/main/pi/add_grad/ReshapeReshapegradients/main/pi/add_grad/Sum gradients/main/pi/add_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
­
 gradients/main/pi/add_grad/Sum_1Sumgradients/AddN_12gradients/main/pi/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
Е
$gradients/main/pi/add_grad/Reshape_1Reshape gradients/main/pi/add_grad/Sum_1"gradients/main/pi/add_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

+gradients/main/pi/add_grad/tuple/group_depsNoOp#^gradients/main/pi/add_grad/Reshape%^gradients/main/pi/add_grad/Reshape_1
њ
3gradients/main/pi/add_grad/tuple/control_dependencyIdentity"gradients/main/pi/add_grad/Reshape,^gradients/main/pi/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/main/pi/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

5gradients/main/pi/add_grad/tuple/control_dependency_1Identity$gradients/main/pi/add_grad/Reshape_1,^gradients/main/pi/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/add_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
ј
gradients/AddN_2AddN5gradients/main/pi/sub_grad/tuple/control_dependency_13gradients/main/pi/add_grad/tuple/control_dependency*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*
N*'
_output_shapes
:џџџџџџџџџ*
T0

2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
_output_shapes
:*
data_formatNHWC*
T0

7gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_23^gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad

?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_28^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
Ї
Agradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
u
 gradients/main/pi/mul_grad/ShapeShapemain/pi/random_normal*
_output_shapes
:*
out_type0*
T0
m
"gradients/main/pi/mul_grad/Shape_1Shapemain/pi/Exp*
_output_shapes
:*
T0*
out_type0
Ь
0gradients/main/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/mul_grad/Shape"gradients/main/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/main/pi/mul_grad/MulMul5gradients/main/pi/add_grad/tuple/control_dependency_1main/pi/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
З
gradients/main/pi/mul_grad/SumSumgradients/main/pi/mul_grad/Mul0gradients/main/pi/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Џ
"gradients/main/pi/mul_grad/ReshapeReshapegradients/main/pi/mul_grad/Sum gradients/main/pi/mul_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
Ї
 gradients/main/pi/mul_grad/Mul_1Mulmain/pi/random_normal5gradients/main/pi/add_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/mul_grad/Sum_1Sum gradients/main/pi/mul_grad/Mul_12gradients/main/pi/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Е
$gradients/main/pi/mul_grad/Reshape_1Reshape gradients/main/pi/mul_grad/Sum_1"gradients/main/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

+gradients/main/pi/mul_grad/tuple/group_depsNoOp#^gradients/main/pi/mul_grad/Reshape%^gradients/main/pi/mul_grad/Reshape_1
њ
3gradients/main/pi/mul_grad/tuple/control_dependencyIdentity"gradients/main/pi/mul_grad/Reshape,^gradients/main/pi/mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/main/pi/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

5gradients/main/pi/mul_grad/tuple/control_dependency_1Identity$gradients/main/pi/mul_grad/Reshape_1,^gradients/main/pi/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/mul_grad/Reshape_1
э
,gradients/main/pi/dense_2/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencymain/pi/dense_2/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
п
.gradients/main/pi/dense_2/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
T0*
transpose_b( *
transpose_a(

6gradients/main/pi/dense_2/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_2/MatMul_grad/MatMul/^gradients/main/pi/dense_2/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_2/MatMul_grad/MatMul7^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_2/MatMul_grad/MatMul_17^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0

gradients/main/pi/Exp_grad/mulMul5gradients/main/pi/mul_grad/tuple/control_dependency_1main/pi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0

gradients/AddN_3AddN7gradients/main/pi/mul_1_grad/tuple/control_dependency_1 gradients/main/pi/Exp_1_grad/mulgradients/main/pi/Exp_grad/mul*
T0*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
N

*gradients/main/pi/clip_by_value_grad/ShapeShapemain/pi/clip_by_value/Minimum*
_output_shapes
:*
out_type0*
T0
o
,gradients/main/pi/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
|
,gradients/main/pi/clip_by_value_grad/Shape_2Shapegradients/AddN_3*
T0*
out_type0*
_output_shapes
:
u
0gradients/main/pi/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
ж
*gradients/main/pi/clip_by_value_grad/zerosFill,gradients/main/pi/clip_by_value_grad/Shape_20gradients/main/pi/clip_by_value_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*

index_type0*
T0
Ћ
1gradients/main/pi/clip_by_value_grad/GreaterEqualGreaterEqualmain/pi/clip_by_value/Minimummain/pi/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ*
T0
ъ
:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/main/pi/clip_by_value_grad/Shape,gradients/main/pi/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
и
+gradients/main/pi/clip_by_value_grad/SelectSelect1gradients/main/pi/clip_by_value_grad/GreaterEqualgradients/AddN_3*gradients/main/pi/clip_by_value_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0
к
-gradients/main/pi/clip_by_value_grad/Select_1Select1gradients/main/pi/clip_by_value_grad/GreaterEqual*gradients/main/pi/clip_by_value_grad/zerosgradients/AddN_3*'
_output_shapes
:џџџџџџџџџ*
T0
и
(gradients/main/pi/clip_by_value_grad/SumSum+gradients/main/pi/clip_by_value_grad/Select:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Э
,gradients/main/pi/clip_by_value_grad/ReshapeReshape(gradients/main/pi/clip_by_value_grad/Sum*gradients/main/pi/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
о
*gradients/main/pi/clip_by_value_grad/Sum_1Sum-gradients/main/pi/clip_by_value_grad/Select_1<gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Т
.gradients/main/pi/clip_by_value_grad/Reshape_1Reshape*gradients/main/pi/clip_by_value_grad/Sum_1,gradients/main/pi/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

5gradients/main/pi/clip_by_value_grad/tuple/group_depsNoOp-^gradients/main/pi/clip_by_value_grad/Reshape/^gradients/main/pi/clip_by_value_grad/Reshape_1
Ђ
=gradients/main/pi/clip_by_value_grad/tuple/control_dependencyIdentity,gradients/main/pi/clip_by_value_grad/Reshape6^gradients/main/pi/clip_by_value_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/clip_by_value_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0

?gradients/main/pi/clip_by_value_grad/tuple/control_dependency_1Identity.gradients/main/pi/clip_by_value_grad/Reshape_16^gradients/main/pi/clip_by_value_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/pi/clip_by_value_grad/Reshape_1*
T0*
_output_shapes
: 

2gradients/main/pi/clip_by_value/Minimum_grad/ShapeShapemain/pi/dense_3/BiasAdd*
out_type0*
T0*
_output_shapes
:
w
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Б
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_2Shape=gradients/main/pi/clip_by_value_grad/tuple/control_dependency*
out_type0*
_output_shapes
:*
T0
}
8gradients/main/pi/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
ю
2gradients/main/pi/clip_by_value/Minimum_grad/zerosFill4gradients/main/pi/clip_by_value/Minimum_grad/Shape_28gradients/main/pi/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*

index_type0*
T0
Џ
6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual	LessEqualmain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ

Bgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/main/pi/clip_by_value/Minimum_grad/Shape4gradients/main/pi/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

3gradients/main/pi/clip_by_value/Minimum_grad/SelectSelect6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual=gradients/main/pi/clip_by_value_grad/tuple/control_dependency2gradients/main/pi/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0

5gradients/main/pi/clip_by_value/Minimum_grad/Select_1Select6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual2gradients/main/pi/clip_by_value/Minimum_grad/zeros=gradients/main/pi/clip_by_value_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ*
T0
№
0gradients/main/pi/clip_by_value/Minimum_grad/SumSum3gradients/main/pi/clip_by_value/Minimum_grad/SelectBgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
х
4gradients/main/pi/clip_by_value/Minimum_grad/ReshapeReshape0gradients/main/pi/clip_by_value/Minimum_grad/Sum2gradients/main/pi/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
і
2gradients/main/pi/clip_by_value/Minimum_grad/Sum_1Sum5gradients/main/pi/clip_by_value/Minimum_grad/Select_1Dgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
к
6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1Reshape2gradients/main/pi/clip_by_value/Minimum_grad/Sum_14gradients/main/pi/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
Е
=gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_depsNoOp5^gradients/main/pi/clip_by_value/Minimum_grad/Reshape7^gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1
Т
Egradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity4gradients/main/pi/clip_by_value/Minimum_grad/Reshape>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*G
_class=
;9loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
З
Ggradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*I
_class?
=;loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1*
T0*
_output_shapes
: 
Ф
2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGradBiasAddGradEgradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency*
_output_shapes
:*
data_formatNHWC*
T0
М
7gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_depsNoOpF^gradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency3^gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad
Ч
?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependencyIdentityEgradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency8^gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_deps*G
_class=
;9loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
Agradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
э
,gradients/main/pi/dense_3/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependencymain/pi/dense_3/kernel/read*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b(
п
.gradients/main/pi/dense_3/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a(

6gradients/main/pi/dense_3/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_3/MatMul_grad/MatMul/^gradients/main/pi/dense_3/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_3/MatMul_grad/MatMul7^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_3/MatMul_grad/MatMul_17^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*A
_class7
53loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul_1

gradients/AddN_4AddN>gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency>gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency*
N*(
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul

,gradients/main/pi/dense_1/Relu_grad/ReluGradReluGradgradients/AddN_4main/pi/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ќ
2gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/pi/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Ѓ
7gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad-^gradients/main/pi/dense_1/Relu_grad/ReluGrad
Ї
?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/Relu_grad/ReluGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:џџџџџџџџџ
Ј
Agradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*E
_class;
97loc:@gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad*
T0
э
,gradients/main/pi/dense_1/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencymain/pi/dense_1/kernel/read*
T0*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
о
.gradients/main/pi/dense_1/MatMul_grad/MatMul_1MatMulmain/pi/dense/Relu?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
*
transpose_b( *
T0

6gradients/main/pi/dense_1/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_1/MatMul_grad/MatMul/^gradients/main/pi/dense_1/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/MatMul_grad/MatMul7^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_1/MatMul_grad/MatMul_17^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*A
_class7
53loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul_1
Н
*gradients/main/pi/dense/Relu_grad/ReluGradReluGrad>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencymain/pi/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ј
0gradients/main/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/main/pi/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:

5gradients/main/pi/dense/BiasAdd_grad/tuple/group_depsNoOp1^gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad+^gradients/main/pi/dense/Relu_grad/ReluGrad

=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/Relu_grad/ReluGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/main/pi/dense/Relu_grad/ReluGrad*
T0*(
_output_shapes
:џџџџџџџџџ
 
?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
ц
*gradients/main/pi/dense/MatMul_grad/MatMulMatMul=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencymain/pi/dense/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ<*
transpose_b(*
T0
в
,gradients/main/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	<*
transpose_a(

4gradients/main/pi/dense/MatMul_grad/tuple/group_depsNoOp+^gradients/main/pi/dense/MatMul_grad/MatMul-^gradients/main/pi/dense/MatMul_grad/MatMul_1

<gradients/main/pi/dense/MatMul_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/MatMul_grad/MatMul5^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ<*=
_class3
1/loc:@gradients/main/pi/dense/MatMul_grad/MatMul

>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Identity,gradients/main/pi/dense/MatMul_grad/MatMul_15^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense/MatMul_grad/MatMul_1*
_output_shapes
:	<*
T0
`
Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

ReshapeReshape>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:x
b
Reshape_1/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

	Reshape_1Reshape?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

	Reshape_2Reshape@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
Tshape0*
_output_shapes

:*
T0
b
Reshape_3/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_3ReshapeAgradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

	Reshape_4Reshape@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_5/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_5ReshapeAgradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

	Reshape_6Reshape@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Reshape_6/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_7/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_7ReshapeAgradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Reshape_7/shape*
Tshape0*
_output_shapes
:*
T0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7concat/axis*
T0*

Tidx0*
N*
_output_shapes

:
h
PyFuncPyFuncconcat*
Tin
2*
Tout
2*
_output_shapes

:*
token
pyfunc_0
p
Const_8Const*5
value,B*"  <                       *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
Є
splitSplitVPyFuncConst_8split/split_dim*
T0*K
_output_shapes9
7:x:::::::*
	num_split*

Tlen0
`
Reshape_8/shapeConst*
_output_shapes
:*
valueB"<      *
dtype0
d
	Reshape_8ReshapesplitReshape_8/shape*
_output_shapes
:	<*
T0*
Tshape0
Z
Reshape_9/shapeConst*
_output_shapes
:*
valueB:*
dtype0
b
	Reshape_9Reshapesplit:1Reshape_9/shape*
T0*
_output_shapes	
:*
Tshape0
a
Reshape_10/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
i

Reshape_10Reshapesplit:2Reshape_10/shape* 
_output_shapes
:
*
T0*
Tshape0
[
Reshape_11/shapeConst*
valueB:*
_output_shapes
:*
dtype0
d

Reshape_11Reshapesplit:3Reshape_11/shape*
T0*
Tshape0*
_output_shapes	
:
a
Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
h

Reshape_12Reshapesplit:4Reshape_12/shape*
T0*
_output_shapes
:	*
Tshape0
Z
Reshape_13/shapeConst*
_output_shapes
:*
valueB:*
dtype0
c

Reshape_13Reshapesplit:5Reshape_13/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_14/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
h

Reshape_14Reshapesplit:6Reshape_14/shape*
Tshape0*
T0*
_output_shapes
:	
Z
Reshape_15/shapeConst*
valueB:*
_output_shapes
:*
dtype0
c

Reshape_15Reshapesplit:7Reshape_15/shape*
_output_shapes
:*
Tshape0*
T0

beta1_power/initial_valueConst*%
_class
loc:@main/pi/dense/bias*
dtype0*
_output_shapes
: *
valueB
 *fff?

beta1_power
VariableV2*%
_class
loc:@main/pi/dense/bias*
shape: *
_output_shapes
: *
shared_name *
	container *
dtype0
Е
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: 
q
beta1_power/readIdentitybeta1_power*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *wО?*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
dtype0

beta2_power
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
shape: 
Е
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: 
q
beta2_power/readIdentitybeta2_power*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: 
Е
;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*'
_class
loc:@main/pi/dense/kernel*
valueB"<      

1main/pi/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *'
_class
loc:@main/pi/dense/kernel

+main/pi/dense/kernel/Adam/Initializer/zerosFill;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/pi/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	<*

index_type0*'
_class
loc:@main/pi/dense/kernel*
T0
И
main/pi/dense/kernel/Adam
VariableV2*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
dtype0*
shape:	<*
shared_name *
	container 
ю
 main/pi/dense/kernel/Adam/AssignAssignmain/pi/dense/kernel/Adam+main/pi/dense/kernel/Adam/Initializer/zeros*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
T0*
_output_shapes
:	<

main/pi/dense/kernel/Adam/readIdentitymain/pi/dense/kernel/Adam*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
T0
З
=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*'
_class
loc:@main/pi/dense/kernel*
valueB"<      *
_output_shapes
:
Ё
3main/pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *'
_class
loc:@main/pi/dense/kernel*
dtype0

-main/pi/dense/kernel/Adam_1/Initializer/zerosFill=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/pi/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	<*
T0*

index_type0*'
_class
loc:@main/pi/dense/kernel
К
main/pi/dense/kernel/Adam_1
VariableV2*
	container *'
_class
loc:@main/pi/dense/kernel*
shared_name *
dtype0*
_output_shapes
:	<*
shape:	<
є
"main/pi/dense/kernel/Adam_1/AssignAssignmain/pi/dense/kernel/Adam_1-main/pi/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	<*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
T0*
use_locking(

 main/pi/dense/kernel/Adam_1/readIdentitymain/pi/dense/kernel/Adam_1*
T0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel

)main/pi/dense/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
dtype0
Ќ
main/pi/dense/bias/Adam
VariableV2*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
т
main/pi/dense/bias/Adam/AssignAssignmain/pi/dense/bias/Adam)main/pi/dense/bias/Adam/Initializer/zeros*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(*%
_class
loc:@main/pi/dense/bias

main/pi/dense/bias/Adam/readIdentitymain/pi/dense/bias/Adam*
T0*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
Ё
+main/pi/dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:
Ў
main/pi/dense/bias/Adam_1
VariableV2*
_output_shapes	
:*
	container *
dtype0*%
_class
loc:@main/pi/dense/bias*
shape:*
shared_name 
ш
 main/pi/dense/bias/Adam_1/AssignAssignmain/pi/dense/bias/Adam_1+main/pi/dense/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias

main/pi/dense/bias/Adam_1/readIdentitymain/pi/dense/bias/Adam_1*
_output_shapes	
:*
T0*%
_class
loc:@main/pi/dense/bias
Й
=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ѓ
3main/pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
: 

-main/pi/dense_1/kernel/Adam/Initializer/zerosFill=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/pi/dense_1/kernel/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*

index_type0
О
main/pi/dense_1/kernel/Adam
VariableV2*
shape:
*
	container *
shared_name *)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
dtype0
ї
"main/pi/dense_1/kernel/Adam/AssignAssignmain/pi/dense_1/kernel/Adam-main/pi/dense_1/kernel/Adam/Initializer/zeros* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
T0*
use_locking(

 main/pi/dense_1/kernel/Adam/readIdentitymain/pi/dense_1/kernel/Adam*
T0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:

Л
?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      *
dtype0*)
_class
loc:@main/pi/dense_1/kernel
Ѕ
5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    

/main/pi/dense_1/kernel/Adam_1/Initializer/zerosFill?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*)
_class
loc:@main/pi/dense_1/kernel*

index_type0* 
_output_shapes
:

Р
main/pi/dense_1/kernel/Adam_1
VariableV2*
shape:
*
shared_name *
	container * 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
dtype0
§
$main/pi/dense_1/kernel/Adam_1/AssignAssignmain/pi/dense_1/kernel/Adam_1/main/pi/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*
T0*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(*
validate_shape(
Ѓ
"main/pi/dense_1/kernel/Adam_1/readIdentitymain/pi/dense_1/kernel/Adam_1* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
T0
Ѓ
+main/pi/dense_1/bias/Adam/Initializer/zerosConst*'
_class
loc:@main/pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
А
main/pi/dense_1/bias/Adam
VariableV2*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
shared_name *
dtype0*
shape:*
	container 
ъ
 main/pi/dense_1/bias/Adam/AssignAssignmain/pi/dense_1/bias/Adam+main/pi/dense_1/bias/Adam/Initializer/zeros*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
validate_shape(*
T0

main/pi/dense_1/bias/Adam/readIdentitymain/pi/dense_1/bias/Adam*
_output_shapes	
:*
T0*'
_class
loc:@main/pi/dense_1/bias
Ѕ
-main/pi/dense_1/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@main/pi/dense_1/bias*
dtype0*
valueB*    *
_output_shapes	
:
В
main/pi/dense_1/bias/Adam_1
VariableV2*
	container *
shape:*'
_class
loc:@main/pi/dense_1/bias*
dtype0*
_output_shapes	
:*
shared_name 
№
"main/pi/dense_1/bias/Adam_1/AssignAssignmain/pi/dense_1/bias/Adam_1-main/pi/dense_1/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(

 main/pi/dense_1/bias/Adam_1/readIdentitymain/pi/dense_1/bias/Adam_1*
_output_shapes	
:*
T0*'
_class
loc:@main/pi/dense_1/bias
Џ
-main/pi/dense_2/kernel/Adam/Initializer/zerosConst*)
_class
loc:@main/pi/dense_2/kernel*
dtype0*
_output_shapes
:	*
valueB	*    
М
main/pi/dense_2/kernel/Adam
VariableV2*
_output_shapes
:	*
shared_name *
dtype0*
	container *)
_class
loc:@main/pi/dense_2/kernel*
shape:	
і
"main/pi/dense_2/kernel/Adam/AssignAssignmain/pi/dense_2/kernel/Adam-main/pi/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_2/kernel

 main/pi/dense_2/kernel/Adam/readIdentitymain/pi/dense_2/kernel/Adam*
T0*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel
Б
/main/pi/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
dtype0
О
main/pi/dense_2/kernel/Adam_1
VariableV2*)
_class
loc:@main/pi/dense_2/kernel*
shared_name *
_output_shapes
:	*
shape:	*
	container *
dtype0
ќ
$main/pi/dense_2/kernel/Adam_1/AssignAssignmain/pi/dense_2/kernel/Adam_1/main/pi/dense_2/kernel/Adam_1/Initializer/zeros*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	
Ђ
"main/pi/dense_2/kernel/Adam_1/readIdentitymain/pi/dense_2/kernel/Adam_1*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel
Ё
+main/pi/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
Ў
main/pi/dense_2/bias/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
щ
 main/pi/dense_2/bias/Adam/AssignAssignmain/pi/dense_2/bias/Adam+main/pi/dense_2/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias

main/pi/dense_2/bias/Adam/readIdentitymain/pi/dense_2/bias/Adam*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
T0
Ѓ
-main/pi/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
А
main/pi/dense_2/bias/Adam_1
VariableV2*
shared_name *
_output_shapes
:*
dtype0*
shape:*'
_class
loc:@main/pi/dense_2/bias*
	container 
я
"main/pi/dense_2/bias/Adam_1/AssignAssignmain/pi/dense_2/bias/Adam_1-main/pi/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0*
use_locking(*
validate_shape(

 main/pi/dense_2/bias/Adam_1/readIdentitymain/pi/dense_2/bias/Adam_1*
T0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
Џ
-main/pi/dense_3/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
dtype0*
valueB	*    
М
main/pi/dense_3/kernel/Adam
VariableV2*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
	container *
shape:	*
shared_name *
dtype0
і
"main/pi/dense_3/kernel/Adam/AssignAssignmain/pi/dense_3/kernel/Adam-main/pi/dense_3/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
T0*
use_locking(

 main/pi/dense_3/kernel/Adam/readIdentitymain/pi/dense_3/kernel/Adam*
T0*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel
Б
/main/pi/dense_3/kernel/Adam_1/Initializer/zerosConst*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
dtype0*
valueB	*    
О
main/pi/dense_3/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
_output_shapes
:	*
shape:	*)
_class
loc:@main/pi/dense_3/kernel
ќ
$main/pi/dense_3/kernel/Adam_1/AssignAssignmain/pi/dense_3/kernel/Adam_1/main/pi/dense_3/kernel/Adam_1/Initializer/zeros*
T0*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(
Ђ
"main/pi/dense_3/kernel/Adam_1/readIdentitymain/pi/dense_3/kernel/Adam_1*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
T0
Ё
+main/pi/dense_3/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
Ў
main/pi/dense_3/bias/Adam
VariableV2*
shape:*
shared_name *
	container *'
_class
loc:@main/pi/dense_3/bias*
dtype0*
_output_shapes
:
щ
 main/pi/dense_3/bias/Adam/AssignAssignmain/pi/dense_3/bias/Adam+main/pi/dense_3/bias/Adam/Initializer/zeros*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
_output_shapes
:

main/pi/dense_3/bias/Adam/readIdentitymain/pi/dense_3/bias/Adam*'
_class
loc:@main/pi/dense_3/bias*
T0*
_output_shapes
:
Ѓ
-main/pi/dense_3/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@main/pi/dense_3/bias*
dtype0*
_output_shapes
:*
valueB*    
А
main/pi/dense_3/bias/Adam_1
VariableV2*
shared_name *
	container *
_output_shapes
:*
dtype0*
shape:*'
_class
loc:@main/pi/dense_3/bias
я
"main/pi/dense_3/bias/Adam_1/AssignAssignmain/pi/dense_3/bias/Adam_1-main/pi/dense_3/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/pi/dense_3/bias

 main/pi/dense_3/bias/Adam_1/readIdentitymain/pi/dense_3/bias/Adam_1*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
[
train_pi/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *o:
S
train_pi/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
S
train_pi/beta2Const*
dtype0*
valueB
 *wО?*
_output_shapes
: 
U
train_pi/epsilonConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
ќ
.train_pi/update_main/pi/dense/kernel/ApplyAdam	ApplyAdammain/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_8*
use_nesterov( *
T0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking( 
ю
,train_pi/update_main/pi/dense/bias/ApplyAdam	ApplyAdammain/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_9*
_output_shapes	
:*
use_nesterov( *
T0*
use_locking( *%
_class
loc:@main/pi/dense/bias

0train_pi/update_main/pi/dense_1/kernel/ApplyAdam	ApplyAdammain/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_10*
use_nesterov( *
T0* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
use_locking( 
љ
.train_pi/update_main/pi/dense_1/bias/ApplyAdam	ApplyAdammain/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_11*
T0*
_output_shapes	
:*
use_nesterov( *'
_class
loc:@main/pi/dense_1/bias*
use_locking( 

0train_pi/update_main/pi/dense_2/kernel/ApplyAdam	ApplyAdammain/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_12*
T0*
use_locking( *
use_nesterov( *
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel
ј
.train_pi/update_main/pi/dense_2/bias/ApplyAdam	ApplyAdammain/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_13*
_output_shapes
:*
use_locking( *
use_nesterov( *'
_class
loc:@main/pi/dense_2/bias*
T0

0train_pi/update_main/pi/dense_3/kernel/ApplyAdam	ApplyAdammain/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_14*)
_class
loc:@main/pi/dense_3/kernel*
T0*
use_locking( *
use_nesterov( *
_output_shapes
:	
ј
.train_pi/update_main/pi/dense_3/bias/ApplyAdam	ApplyAdammain/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_15*
use_locking( *
_output_shapes
:*
T0*
use_nesterov( *'
_class
loc:@main/pi/dense_3/bias

train_pi/mulMulbeta1_power/readtrain_pi/beta1-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: 
Ѕ
train_pi/AssignAssignbeta1_powertrain_pi/mul*
T0*
_output_shapes
: *
validate_shape(*%
_class
loc:@main/pi/dense/bias*
use_locking( 

train_pi/mul_1Mulbeta2_power/readtrain_pi/beta2-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias
Љ
train_pi/Assign_1Assignbeta2_powertrain_pi/mul_1*
validate_shape(*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
use_locking( 
Т
train_piNoOp^train_pi/Assign^train_pi/Assign_1-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam
n
Reshape_16/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
v

Reshape_16Reshapemain/pi/dense/kernel/readReshape_16/shape*
Tshape0*
_output_shapes	
:x*
T0
n
Reshape_17/shapeConst	^train_pi*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
t

Reshape_17Reshapemain/pi/dense/bias/readReshape_17/shape*
T0*
_output_shapes	
:*
Tshape0
n
Reshape_18/shapeConst	^train_pi*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_18Reshapemain/pi/dense_1/kernel/readReshape_18/shape*
Tshape0*
_output_shapes

:*
T0
n
Reshape_19/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
v

Reshape_19Reshapemain/pi/dense_1/bias/readReshape_19/shape*
Tshape0*
T0*
_output_shapes	
:
n
Reshape_20/shapeConst	^train_pi*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x

Reshape_20Reshapemain/pi/dense_2/kernel/readReshape_20/shape*
T0*
_output_shapes	
:*
Tshape0
n
Reshape_21/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
u

Reshape_21Reshapemain/pi/dense_2/bias/readReshape_21/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_22/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
x

Reshape_22Reshapemain/pi/dense_3/kernel/readReshape_22/shape*
Tshape0*
T0*
_output_shapes	
:
n
Reshape_23/shapeConst	^train_pi*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_23Reshapemain/pi/dense_3/bias/readReshape_23/shape*
_output_shapes
:*
T0*
Tshape0
Z
concat_1/axisConst	^train_pi*
_output_shapes
: *
value	B : *
dtype0
П
concat_1ConcatV2
Reshape_16
Reshape_17
Reshape_18
Reshape_19
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_1/axis*
_output_shapes

:*
N*
T0*

Tidx0
h
PyFunc_1PyFuncconcat_1*
token
pyfunc_1*
Tout
2*
Tin
2*
_output_shapes
:
{
Const_9Const	^train_pi*5
value,B*"  <                       *
dtype0*
_output_shapes
:
^
split_1/split_dimConst	^train_pi*
_output_shapes
: *
value	B : *
dtype0

split_1SplitVPyFunc_1Const_9split_1/split_dim*
	num_split*
T0*

Tlen0*4
_output_shapes"
 ::::::::
l
Reshape_24/shapeConst	^train_pi*
valueB"<      *
dtype0*
_output_shapes
:
h

Reshape_24Reshapesplit_1Reshape_24/shape*
Tshape0*
T0*
_output_shapes
:	<
f
Reshape_25/shapeConst	^train_pi*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_25Reshape	split_1:1Reshape_25/shape*
Tshape0*
T0*
_output_shapes	
:
l
Reshape_26/shapeConst	^train_pi*
valueB"      *
dtype0*
_output_shapes
:
k

Reshape_26Reshape	split_1:2Reshape_26/shape* 
_output_shapes
:
*
T0*
Tshape0
f
Reshape_27/shapeConst	^train_pi*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_27Reshape	split_1:3Reshape_27/shape*
Tshape0*
_output_shapes	
:*
T0
l
Reshape_28/shapeConst	^train_pi*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_28Reshape	split_1:4Reshape_28/shape*
_output_shapes
:	*
T0*
Tshape0
e
Reshape_29/shapeConst	^train_pi*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_29Reshape	split_1:5Reshape_29/shape*
Tshape0*
_output_shapes
:*
T0
l
Reshape_30/shapeConst	^train_pi*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_30Reshape	split_1:6Reshape_30/shape*
Tshape0*
T0*
_output_shapes
:	
e
Reshape_31/shapeConst	^train_pi*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_31Reshape	split_1:7Reshape_31/shape*
T0*
_output_shapes
:*
Tshape0
Ў
AssignAssignmain/pi/dense/kernel
Reshape_24*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
T0*
validate_shape(
Ј
Assign_1Assignmain/pi/dense/bias
Reshape_25*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
Е
Assign_2Assignmain/pi/dense_1/kernel
Reshape_26*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:

Ќ
Assign_3Assignmain/pi/dense_1/bias
Reshape_27*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias
Д
Assign_4Assignmain/pi/dense_2/kernel
Reshape_28*
validate_shape(*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(
Ћ
Assign_5Assignmain/pi/dense_2/bias
Reshape_29*
validate_shape(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(
Д
Assign_6Assignmain/pi/dense_3/kernel
Reshape_30*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel
Ћ
Assign_7Assignmain/pi/dense_3/bias
Reshape_31*
use_locking(*
T0*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias
s

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^train_pi
,
group_deps_1NoOp^group_deps	^train_pi
c
gradients_1/ShapeConst^group_deps_1*
dtype0*
valueB *
_output_shapes
: 
i
gradients_1/grad_ys_0Const^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*
_output_shapes
: *

index_type0
Q
'gradients_1/add_4_grad/tuple/group_depsNoOp^gradients_1/Fill^group_deps_1
Н
/gradients_1/add_4_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/add_4_grad/tuple/group_deps*
T0*
_output_shapes
: *#
_class
loc:@gradients_1/Fill
П
1gradients_1/add_4_grad/tuple/control_dependency_1Identitygradients_1/Fill(^gradients_1/add_4_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill*
_output_shapes
: 
p
'gradients_1/add_3_grad/tuple/group_depsNoOp0^gradients_1/add_4_grad/tuple/control_dependency^group_deps_1
м
/gradients_1/add_3_grad/tuple/control_dependencyIdentity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
о
1gradients_1/add_3_grad/tuple/control_dependency_1Identity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*#
_class
loc:@gradients_1/Fill*
T0*
_output_shapes
: 
~
gradients_1/mul_10_grad/MulMul1gradients_1/add_4_grad/tuple/control_dependency_1Mean_4*
T0*
_output_shapes
: 

gradients_1/mul_10_grad/Mul_1Mul1gradients_1/add_4_grad/tuple/control_dependency_1mul_10/x*
T0*
_output_shapes
: 
}
(gradients_1/mul_10_grad/tuple/group_depsNoOp^gradients_1/mul_10_grad/Mul^gradients_1/mul_10_grad/Mul_1^group_deps_1
е
0gradients_1/mul_10_grad/tuple/control_dependencyIdentitygradients_1/mul_10_grad/Mul)^gradients_1/mul_10_grad/tuple/group_deps*
_output_shapes
: *.
_class$
" loc:@gradients_1/mul_10_grad/Mul*
T0
л
2gradients_1/mul_10_grad/tuple/control_dependency_1Identitygradients_1/mul_10_grad/Mul_1)^gradients_1/mul_10_grad/tuple/group_deps*
_output_shapes
: *0
_class&
$"loc:@gradients_1/mul_10_grad/Mul_1*
T0
{
gradients_1/mul_8_grad/MulMul/gradients_1/add_3_grad/tuple/control_dependencyMean_2*
_output_shapes
: *
T0
~
gradients_1/mul_8_grad/Mul_1Mul/gradients_1/add_3_grad/tuple/control_dependencymul_8/x*
T0*
_output_shapes
: 
z
'gradients_1/mul_8_grad/tuple/group_depsNoOp^gradients_1/mul_8_grad/Mul^gradients_1/mul_8_grad/Mul_1^group_deps_1
б
/gradients_1/mul_8_grad/tuple/control_dependencyIdentitygradients_1/mul_8_grad/Mul(^gradients_1/mul_8_grad/tuple/group_deps*
_output_shapes
: *-
_class#
!loc:@gradients_1/mul_8_grad/Mul*
T0
з
1gradients_1/mul_8_grad/tuple/control_dependency_1Identitygradients_1/mul_8_grad/Mul_1(^gradients_1/mul_8_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients_1/mul_8_grad/Mul_1
}
gradients_1/mul_9_grad/MulMul1gradients_1/add_3_grad/tuple/control_dependency_1Mean_3*
_output_shapes
: *
T0

gradients_1/mul_9_grad/Mul_1Mul1gradients_1/add_3_grad/tuple/control_dependency_1mul_9/x*
_output_shapes
: *
T0
z
'gradients_1/mul_9_grad/tuple/group_depsNoOp^gradients_1/mul_9_grad/Mul^gradients_1/mul_9_grad/Mul_1^group_deps_1
б
/gradients_1/mul_9_grad/tuple/control_dependencyIdentitygradients_1/mul_9_grad/Mul(^gradients_1/mul_9_grad/tuple/group_deps*-
_class#
!loc:@gradients_1/mul_9_grad/Mul*
T0*
_output_shapes
: 
з
1gradients_1/mul_9_grad/tuple/control_dependency_1Identitygradients_1/mul_9_grad/Mul_1(^gradients_1/mul_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/mul_9_grad/Mul_1*
T0*
_output_shapes
: 
~
%gradients_1/Mean_4_grad/Reshape/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
И
gradients_1/Mean_4_grad/ReshapeReshape2gradients_1/mul_10_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
q
gradients_1/Mean_4_grad/ShapeShapepow_2^group_deps_1*
_output_shapes
:*
T0*
out_type0
Є
gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
s
gradients_1/Mean_4_grad/Shape_1Shapepow_2^group_deps_1*
_output_shapes
:*
T0*
out_type0
q
gradients_1/Mean_4_grad/Shape_2Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
v
gradients_1/Mean_4_grad/ConstConst^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
Ђ
gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
x
gradients_1/Mean_4_grad/Const_1Const^group_deps_1*
_output_shapes
:*
dtype0*
valueB: 
І
gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
r
!gradients_1/Mean_4_grad/Maximum/yConst^group_deps_1*
_output_shapes
: *
value	B :*
dtype0

gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 

gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
~
%gradients_1/Mean_2_grad/Reshape/shapeConst^group_deps_1*
valueB:*
_output_shapes
:*
dtype0
З
gradients_1/Mean_2_grad/ReshapeReshape1gradients_1/mul_8_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
o
gradients_1/Mean_2_grad/ShapeShapepow^group_deps_1*
out_type0*
_output_shapes
:*
T0
Є
gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
q
gradients_1/Mean_2_grad/Shape_1Shapepow^group_deps_1*
T0*
out_type0*
_output_shapes
:
q
gradients_1/Mean_2_grad/Shape_2Const^group_deps_1*
dtype0*
valueB *
_output_shapes
: 
v
gradients_1/Mean_2_grad/ConstConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB: 
Ђ
gradients_1/Mean_2_grad/ProdProdgradients_1/Mean_2_grad/Shape_1gradients_1/Mean_2_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
x
gradients_1/Mean_2_grad/Const_1Const^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
І
gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
r
!gradients_1/Mean_2_grad/Maximum/yConst^group_deps_1*
dtype0*
_output_shapes
: *
value	B :

gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*

SrcT0*
_output_shapes
: *
Truncate( *

DstT0

gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
~
%gradients_1/Mean_3_grad/Reshape/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
З
gradients_1/Mean_3_grad/ReshapeReshape1gradients_1/mul_9_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
q
gradients_1/Mean_3_grad/ShapeShapepow_1^group_deps_1*
_output_shapes
:*
T0*
out_type0
Є
gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
s
gradients_1/Mean_3_grad/Shape_1Shapepow_1^group_deps_1*
T0*
out_type0*
_output_shapes
:
q
gradients_1/Mean_3_grad/Shape_2Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
v
gradients_1/Mean_3_grad/ConstConst^group_deps_1*
valueB: *
dtype0*
_output_shapes
:
Ђ
gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_1gradients_1/Mean_3_grad/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
x
gradients_1/Mean_3_grad/Const_1Const^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
І
gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const_1*
	keep_dims( *
_output_shapes
: *
T0*

Tidx0
r
!gradients_1/Mean_3_grad/Maximum/yConst^group_deps_1*
value	B :*
_output_shapes
: *
dtype0

gradients_1/Mean_3_grad/MaximumMaximumgradients_1/Mean_3_grad/Prod_1!gradients_1/Mean_3_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_3_grad/floordivFloorDivgradients_1/Mean_3_grad/Prodgradients_1/Mean_3_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 

gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_2_grad/ShapeShapesub_8^group_deps_1*
_output_shapes
:*
T0*
out_type0
p
gradients_1/pow_2_grad/Shape_1Const^group_deps_1*
valueB *
_output_shapes
: *
dtype0
Р
,gradients_1/pow_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_2_grad/Shapegradients_1/pow_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
y
gradients_1/pow_2_grad/mulMulgradients_1/Mean_4_grad/truedivpow_2/y*
T0*#
_output_shapes
:џџџџџџџџџ
p
gradients_1/pow_2_grad/sub/yConst^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
i
gradients_1/pow_2_grad/subSubpow_2/ygradients_1/pow_2_grad/sub/y*
_output_shapes
: *
T0
r
gradients_1/pow_2_grad/PowPowsub_8gradients_1/pow_2_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_2_grad/mul_1Mulgradients_1/pow_2_grad/mulgradients_1/pow_2_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
­
gradients_1/pow_2_grad/SumSumgradients_1/pow_2_grad/mul_1,gradients_1/pow_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients_1/pow_2_grad/ReshapeReshapegradients_1/pow_2_grad/Sumgradients_1/pow_2_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
t
 gradients_1/pow_2_grad/Greater/yConst^group_deps_1*
dtype0*
valueB
 *    *
_output_shapes
: 

gradients_1/pow_2_grad/GreaterGreatersub_8 gradients_1/pow_2_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
z
&gradients_1/pow_2_grad/ones_like/ShapeShapesub_8^group_deps_1*
out_type0*
T0*
_output_shapes
:
z
&gradients_1/pow_2_grad/ones_like/ConstConst^group_deps_1*
dtype0*
valueB
 *  ?*
_output_shapes
: 
И
 gradients_1/pow_2_grad/ones_likeFill&gradients_1/pow_2_grad/ones_like/Shape&gradients_1/pow_2_grad/ones_like/Const*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_2_grad/SelectSelectgradients_1/pow_2_grad/Greatersub_8 gradients_1/pow_2_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_2_grad/LogLoggradients_1/pow_2_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
r
!gradients_1/pow_2_grad/zeros_like	ZerosLikesub_8^group_deps_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ж
gradients_1/pow_2_grad/Select_1Selectgradients_1/pow_2_grad/Greatergradients_1/pow_2_grad/Log!gradients_1/pow_2_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ
y
gradients_1/pow_2_grad/mul_2Mulgradients_1/Mean_4_grad/truedivpow_2*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_2_grad/mul_3Mulgradients_1/pow_2_grad/mul_2gradients_1/pow_2_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
gradients_1/pow_2_grad/Sum_1Sumgradients_1/pow_2_grad/mul_3.gradients_1/pow_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients_1/pow_2_grad/Reshape_1Reshapegradients_1/pow_2_grad/Sum_1gradients_1/pow_2_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0

'gradients_1/pow_2_grad/tuple/group_depsNoOp^gradients_1/pow_2_grad/Reshape!^gradients_1/pow_2_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_2_grad/tuple/control_dependencyIdentitygradients_1/pow_2_grad/Reshape(^gradients_1/pow_2_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients_1/pow_2_grad/Reshape*
T0
п
1gradients_1/pow_2_grad/tuple/control_dependency_1Identity gradients_1/pow_2_grad/Reshape_1(^gradients_1/pow_2_grad/tuple/group_deps*
T0*
_output_shapes
: *3
_class)
'%loc:@gradients_1/pow_2_grad/Reshape_1
n
gradients_1/pow_grad/ShapeShapesub_6^group_deps_1*
T0*
_output_shapes
:*
out_type0
n
gradients_1/pow_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
К
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
u
gradients_1/pow_grad/mulMulgradients_1/Mean_2_grad/truedivpow/y*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_grad/sub/yConst^group_deps_1*
dtype0*
valueB
 *  ?*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
n
gradients_1/pow_grad/PowPowsub_6gradients_1/pow_grad/sub*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
Ї
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
r
gradients_1/pow_grad/Greater/yConst^group_deps_1*
valueB
 *    *
_output_shapes
: *
dtype0
|
gradients_1/pow_grad/GreaterGreatersub_6gradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
x
$gradients_1/pow_grad/ones_like/ShapeShapesub_6^group_deps_1*
out_type0*
_output_shapes
:*
T0
x
$gradients_1/pow_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  ?*
_output_shapes
: *
dtype0
В
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_6gradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_grad/zeros_like	ZerosLikesub_6^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_2_grad/truedivpow*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
|
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1^group_deps_1
о
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0
з
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: *
T0
p
gradients_1/pow_1_grad/ShapeShapesub_7^group_deps_1*
T0*
out_type0*
_output_shapes
:
p
gradients_1/pow_1_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
Р
,gradients_1/pow_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_1_grad/Shapegradients_1/pow_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
y
gradients_1/pow_1_grad/mulMulgradients_1/Mean_3_grad/truedivpow_1/y*
T0*#
_output_shapes
:џџџџџџџџџ
p
gradients_1/pow_1_grad/sub/yConst^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *  ?
i
gradients_1/pow_1_grad/subSubpow_1/ygradients_1/pow_1_grad/sub/y*
_output_shapes
: *
T0
r
gradients_1/pow_1_grad/PowPowsub_7gradients_1/pow_1_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_1_grad/mul_1Mulgradients_1/pow_1_grad/mulgradients_1/pow_1_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
­
gradients_1/pow_1_grad/SumSumgradients_1/pow_1_grad/mul_1,gradients_1/pow_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients_1/pow_1_grad/ReshapeReshapegradients_1/pow_1_grad/Sumgradients_1/pow_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
t
 gradients_1/pow_1_grad/Greater/yConst^group_deps_1*
dtype0*
valueB
 *    *
_output_shapes
: 

gradients_1/pow_1_grad/GreaterGreatersub_7 gradients_1/pow_1_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
z
&gradients_1/pow_1_grad/ones_like/ShapeShapesub_7^group_deps_1*
T0*
_output_shapes
:*
out_type0
z
&gradients_1/pow_1_grad/ones_like/ConstConst^group_deps_1*
dtype0*
valueB
 *  ?*
_output_shapes
: 
И
 gradients_1/pow_1_grad/ones_likeFill&gradients_1/pow_1_grad/ones_like/Shape&gradients_1/pow_1_grad/ones_like/Const*#
_output_shapes
:џџџџџџџџџ*

index_type0*
T0

gradients_1/pow_1_grad/SelectSelectgradients_1/pow_1_grad/Greatersub_7 gradients_1/pow_1_grad/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
n
gradients_1/pow_1_grad/LogLoggradients_1/pow_1_grad/Select*
T0*#
_output_shapes
:џџџџџџџџџ
r
!gradients_1/pow_1_grad/zeros_like	ZerosLikesub_7^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
gradients_1/pow_1_grad/Select_1Selectgradients_1/pow_1_grad/Greatergradients_1/pow_1_grad/Log!gradients_1/pow_1_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ
y
gradients_1/pow_1_grad/mul_2Mulgradients_1/Mean_3_grad/truedivpow_1*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_1_grad/mul_3Mulgradients_1/pow_1_grad/mul_2gradients_1/pow_1_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
gradients_1/pow_1_grad/Sum_1Sumgradients_1/pow_1_grad/mul_3.gradients_1/pow_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 

 gradients_1/pow_1_grad/Reshape_1Reshapegradients_1/pow_1_grad/Sum_1gradients_1/pow_1_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0

'gradients_1/pow_1_grad/tuple/group_depsNoOp^gradients_1/pow_1_grad/Reshape!^gradients_1/pow_1_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_1_grad/tuple/control_dependencyIdentitygradients_1/pow_1_grad/Reshape(^gradients_1/pow_1_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*1
_class'
%#loc:@gradients_1/pow_1_grad/Reshape
п
1gradients_1/pow_1_grad/tuple/control_dependency_1Identity gradients_1/pow_1_grad/Reshape_1(^gradients_1/pow_1_grad/tuple/group_deps*
_output_shapes
: *3
_class)
'%loc:@gradients_1/pow_1_grad/Reshape_1*
T0
y
gradients_1/sub_8_grad/ShapeShapeStopGradient_1^group_deps_1*
T0*
_output_shapes
:*
out_type0
|
gradients_1/sub_8_grad/Shape_1Shapemain/qc/Squeeze^group_deps_1*
out_type0*
T0*
_output_shapes
:
Р
,gradients_1/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_8_grad/Shapegradients_1/sub_8_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Р
gradients_1/sub_8_grad/SumSum/gradients_1/pow_2_grad/tuple/control_dependency,gradients_1/sub_8_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 

gradients_1/sub_8_grad/ReshapeReshapegradients_1/sub_8_grad/Sumgradients_1/sub_8_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ф
gradients_1/sub_8_grad/Sum_1Sum/gradients_1/pow_2_grad/tuple/control_dependency.gradients_1/sub_8_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
b
gradients_1/sub_8_grad/NegNeggradients_1/sub_8_grad/Sum_1*
_output_shapes
:*
T0
Ѓ
 gradients_1/sub_8_grad/Reshape_1Reshapegradients_1/sub_8_grad/Neggradients_1/sub_8_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0

'gradients_1/sub_8_grad/tuple/group_depsNoOp^gradients_1/sub_8_grad/Reshape!^gradients_1/sub_8_grad/Reshape_1^group_deps_1
ц
/gradients_1/sub_8_grad/tuple/control_dependencyIdentitygradients_1/sub_8_grad/Reshape(^gradients_1/sub_8_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients_1/sub_8_grad/Reshape*
T0
ь
1gradients_1/sub_8_grad/tuple/control_dependency_1Identity gradients_1/sub_8_grad/Reshape_1(^gradients_1/sub_8_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/sub_8_grad/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
w
gradients_1/sub_6_grad/ShapeShapeStopGradient^group_deps_1*
out_type0*
_output_shapes
:*
T0
}
gradients_1/sub_6_grad/Shape_1Shapemain/qr1/Squeeze^group_deps_1*
_output_shapes
:*
out_type0*
T0
Р
,gradients_1/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_6_grad/Shapegradients_1/sub_6_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
gradients_1/sub_6_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_6_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients_1/sub_6_grad/ReshapeReshapegradients_1/sub_6_grad/Sumgradients_1/sub_6_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Т
gradients_1/sub_6_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency.gradients_1/sub_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
b
gradients_1/sub_6_grad/NegNeggradients_1/sub_6_grad/Sum_1*
_output_shapes
:*
T0
Ѓ
 gradients_1/sub_6_grad/Reshape_1Reshapegradients_1/sub_6_grad/Neggradients_1/sub_6_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0

'gradients_1/sub_6_grad/tuple/group_depsNoOp^gradients_1/sub_6_grad/Reshape!^gradients_1/sub_6_grad/Reshape_1^group_deps_1
ц
/gradients_1/sub_6_grad/tuple/control_dependencyIdentitygradients_1/sub_6_grad/Reshape(^gradients_1/sub_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_6_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
ь
1gradients_1/sub_6_grad/tuple/control_dependency_1Identity gradients_1/sub_6_grad/Reshape_1(^gradients_1/sub_6_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*3
_class)
'%loc:@gradients_1/sub_6_grad/Reshape_1
w
gradients_1/sub_7_grad/ShapeShapeStopGradient^group_deps_1*
_output_shapes
:*
out_type0*
T0
}
gradients_1/sub_7_grad/Shape_1Shapemain/qr2/Squeeze^group_deps_1*
T0*
_output_shapes
:*
out_type0
Р
,gradients_1/sub_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_7_grad/Shapegradients_1/sub_7_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Р
gradients_1/sub_7_grad/SumSum/gradients_1/pow_1_grad/tuple/control_dependency,gradients_1/sub_7_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/sub_7_grad/ReshapeReshapegradients_1/sub_7_grad/Sumgradients_1/sub_7_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ф
gradients_1/sub_7_grad/Sum_1Sum/gradients_1/pow_1_grad/tuple/control_dependency.gradients_1/sub_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
b
gradients_1/sub_7_grad/NegNeggradients_1/sub_7_grad/Sum_1*
_output_shapes
:*
T0
Ѓ
 gradients_1/sub_7_grad/Reshape_1Reshapegradients_1/sub_7_grad/Neggradients_1/sub_7_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

'gradients_1/sub_7_grad/tuple/group_depsNoOp^gradients_1/sub_7_grad/Reshape!^gradients_1/sub_7_grad/Reshape_1^group_deps_1
ц
/gradients_1/sub_7_grad/tuple/control_dependencyIdentitygradients_1/sub_7_grad/Reshape(^gradients_1/sub_7_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients_1/sub_7_grad/Reshape
ь
1gradients_1/sub_7_grad/tuple/control_dependency_1Identity gradients_1/sub_7_grad/Reshape_1(^gradients_1/sub_7_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_7_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ

&gradients_1/main/qc/Squeeze_grad/ShapeShapemain/qc/dense_2/BiasAdd^group_deps_1*
_output_shapes
:*
out_type0*
T0
Ю
(gradients_1/main/qc/Squeeze_grad/ReshapeReshape1gradients_1/sub_8_grad/tuple/control_dependency_1&gradients_1/main/qc/Squeeze_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

'gradients_1/main/qr1/Squeeze_grad/ShapeShapemain/qr1/dense_2/BiasAdd^group_deps_1*
T0*
_output_shapes
:*
out_type0
а
)gradients_1/main/qr1/Squeeze_grad/ReshapeReshape1gradients_1/sub_6_grad/tuple/control_dependency_1'gradients_1/main/qr1/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

'gradients_1/main/qr2/Squeeze_grad/ShapeShapemain/qr2/dense_2/BiasAdd^group_deps_1*
_output_shapes
:*
T0*
out_type0
а
)gradients_1/main/qr2/Squeeze_grad/ReshapeReshape1gradients_1/sub_7_grad/tuple/control_dependency_1'gradients_1/main/qr2/Squeeze_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
Љ
4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/main/qc/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
В
9gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_depsNoOp)^gradients_1/main/qc/Squeeze_grad/Reshape5^gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
Ђ
Agradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/main/qc/Squeeze_grad/Reshape:^gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/main/qc/Squeeze_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
Cgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_deps*G
_class=
;9loc:@gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Ћ
5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/main/qr1/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
Е
:gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients_1/main/qr1/Squeeze_grad/Reshape6^gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
І
Bgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/main/qr1/Squeeze_grad/Reshape;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*<
_class2
0.loc:@gradients_1/main/qr1/Squeeze_grad/Reshape*
T0
Г
Dgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
5gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/main/qr2/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
Е
:gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients_1/main/qr2/Squeeze_grad/Reshape6^gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
І
Bgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/main/qr2/Squeeze_grad/Reshape;^gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients_1/main/qr2/Squeeze_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
Г
Dgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ё
.gradients_1/main/qc/dense_2/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*
transpose_a( *
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
T0
у
0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1MatMulmain/qc/dense_1/ReluAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
_output_shapes
:	*
T0
Г
8gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_2/MatMul_grad/MatMul1^gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1^group_deps_1
­
@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_2/MatMul_grad/MatMul9^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*A
_class7
53loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul
Њ
Bgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
є
/gradients_1/main/qr1/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_2/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ
ц
1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr1/dense_1/ReluBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	*
transpose_a(*
T0
Ж
9gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul*
T0
Ў
Cgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
є
/gradients_1/main/qr2/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
ц
1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2/dense_1/ReluBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes
:	*
transpose_b( 
Ж
9gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*B
_class8
64loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul
Ў
Cgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*D
_class:
86loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1
Х
.gradients_1/main/qc/dense_1/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencymain/qc/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ш
/gradients_1/main/qr1/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ш
/gradients_1/main/qr2/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencymain/qr2/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
А
4gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients_1/main/qc/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
И
9gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad/^gradients_1/main/qc/dense_1/Relu_grad/ReluGrad^group_deps_1
Џ
Agradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/Relu_grad/ReluGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/main/qc/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:џџџџџџџџџ
А
Cgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
В
5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Л
:gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad^group_deps_1
Г
Bgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad;^gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad*
T0
Д
Dgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*H
_class>
<:loc:@gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad*
T0
В
5gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Л
:gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad0^gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad^group_deps_1
Г
Bgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad;^gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad
Д
Dgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ё
.gradients_1/main/qc/dense_1/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b(
т
0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1MatMulmain/qc/dense/ReluAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:

Г
8gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_1/MatMul_grad/MatMul1^gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1^group_deps_1
­
@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/MatMul_grad/MatMul9^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul*
T0
Ћ
Bgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:

є
/gradients_1/main/qr1/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
х
1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1/dense/ReluBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0
Ж
9gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Џ
Cgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*D
_class:
86loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1
є
/gradients_1/main/qr2/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*
T0*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
х
1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2/dense/ReluBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0* 
_output_shapes
:
*
transpose_b( 
Ж
9gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul*
T0
Џ
Cgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
С
,gradients_1/main/qc/dense/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencymain/qc/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ф
-gradients_1/main/qr1/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ф
-gradients_1/main/qr2/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencymain/qr2/dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ќ
2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients_1/main/qc/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
В
7gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad-^gradients_1/main/qc/dense/Relu_grad/ReluGrad^group_deps_1
Ї
?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/Relu_grad/ReluGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*?
_class5
31loc:@gradients_1/main/qc/dense/Relu_grad/ReluGrad*
T0
Ј
Agradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*E
_class;
97loc:@gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad
Ў
3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr1/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
Е
8gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr1/dense/Relu_grad/ReluGrad^group_deps_1
Ћ
@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/Relu_grad/ReluGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*@
_class6
42loc:@gradients_1/main/qr1/dense/Relu_grad/ReluGrad
Ќ
Bgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
Ў
3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr2/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC
Е
8gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr2/dense/Relu_grad/ReluGrad^group_deps_1
Ћ
@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/Relu_grad/ReluGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*@
_class6
42loc:@gradients_1/main/qr2/dense/Relu_grad/ReluGrad*
T0
Ќ
Bgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
ъ
,gradients_1/main/qc/dense/MatMul_grad/MatMulMatMul?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*'
_output_shapes
:џџџџџџџџџ>*
transpose_a( *
T0*
transpose_b(
й
.gradients_1/main/qc/dense/MatMul_grad/MatMul_1MatMulmain/qc/concat?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	>*
transpose_b( 
­
6gradients_1/main/qc/dense/MatMul_grad/tuple/group_depsNoOp-^gradients_1/main/qc/dense/MatMul_grad/MatMul/^gradients_1/main/qc/dense/MatMul_grad/MatMul_1^group_deps_1
Є
>gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/MatMul_grad/MatMul7^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ>*?
_class5
31loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul
Ђ
@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Identity.gradients_1/main/qc/dense/MatMul_grad/MatMul_17^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>
э
-gradients_1/main/qr1/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ>*
transpose_a( *
transpose_b(
м
/gradients_1/main/qr1/dense/MatMul_grad/MatMul_1MatMulmain/qr1/concat@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	>*
T0*
transpose_b( 
А
7gradients_1/main/qr1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr1/dense/MatMul_grad/MatMul0^gradients_1/main/qr1/dense/MatMul_grad/MatMul_1^group_deps_1
Ј
?gradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/MatMul_grad/MatMul8^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ>
І
Agradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr1/dense/MatMul_grad/MatMul_18^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>*
T0*B
_class8
64loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul_1
э
-gradients_1/main/qr2/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencymain/qr2/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ>*
transpose_b(
м
/gradients_1/main/qr2/dense/MatMul_grad/MatMul_1MatMulmain/qr2/concat@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>*
transpose_b( *
transpose_a(*
T0
А
7gradients_1/main/qr2/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr2/dense/MatMul_grad/MatMul0^gradients_1/main/qr2/dense/MatMul_grad/MatMul_1^group_deps_1
Ј
?gradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/MatMul_grad/MatMul8^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ>*@
_class6
42loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul*
T0
І
Agradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr2/dense/MatMul_grad/MatMul_18^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>*B
_class8
64loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul_1*
T0
r
Reshape_32/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_32ReshapeAgradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Reshape_32/shape*
_output_shapes	
:|*
T0*
Tshape0
r
Reshape_33/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_33ReshapeBgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
Tshape0*
T0*
_output_shapes	
:
r
Reshape_34/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ё

Reshape_34ReshapeCgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_34/shape*
Tshape0*
T0*
_output_shapes

:
r
Reshape_35/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ё

Reshape_35ReshapeDgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_35/shape*
Tshape0*
T0*
_output_shapes	
:
r
Reshape_36/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
 

Reshape_36ReshapeCgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_36/shape*
Tshape0*
_output_shapes	
:*
T0
r
Reshape_37/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
 

Reshape_37ReshapeDgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_37/shape*
T0*
Tshape0*
_output_shapes
:
r
Reshape_38/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0


Reshape_38ReshapeAgradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Reshape_38/shape*
_output_shapes	
:|*
Tshape0*
T0
r
Reshape_39/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_39ReshapeBgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_39/shape*
_output_shapes	
:*
T0*
Tshape0
r
Reshape_40/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
Ё

Reshape_40ReshapeCgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_40/shape*
Tshape0*
_output_shapes

:*
T0
r
Reshape_41/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
Ё

Reshape_41ReshapeDgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_41/shape*
Tshape0*
T0*
_output_shapes	
:
r
Reshape_42/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
 

Reshape_42ReshapeCgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_42/shape*
T0*
Tshape0*
_output_shapes	
:
r
Reshape_43/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
 

Reshape_43ReshapeDgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_43/shape*
_output_shapes
:*
T0*
Tshape0
r
Reshape_44/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0


Reshape_44Reshape@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Reshape_44/shape*
_output_shapes	
:|*
T0*
Tshape0
r
Reshape_45/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_45ReshapeAgradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_45/shape*
_output_shapes	
:*
Tshape0*
T0
r
Reshape_46/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
 

Reshape_46ReshapeBgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_46/shape*
_output_shapes

:*
Tshape0*
T0
r
Reshape_47/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
 

Reshape_47ReshapeCgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_47/shape*
Tshape0*
T0*
_output_shapes	
:
r
Reshape_48/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:


Reshape_48ReshapeBgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_48/shape*
Tshape0*
_output_shapes	
:*
T0
r
Reshape_49/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_49ReshapeCgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_49/shape*
T0*
_output_shapes
:*
Tshape0
^
concat_2/axisConst^group_deps_1*
value	B : *
_output_shapes
: *
dtype0
З
concat_2ConcatV2
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49concat_2/axis*
N*
T0*

Tidx0*
_output_shapes

:
l
PyFunc_2PyFuncconcat_2*
token
pyfunc_2*
Tin
2*
_output_shapes

:*
Tout
2
Ј
Const_10Const^group_deps_1*
_output_shapes
:*]
valueTBR"H >                  >                  >                 *
dtype0
b
split_2/split_dimConst^group_deps_1*
value	B : *
dtype0*
_output_shapes
: 
є
split_2SplitVPyFunc_2Const_10split_2/split_dim*
T0*
_output_shapes
~:|::::::|::::::|:::::*

Tlen0*
	num_split
p
Reshape_50/shapeConst^group_deps_1*
valueB">      *
dtype0*
_output_shapes
:
h

Reshape_50Reshapesplit_2Reshape_50/shape*
Tshape0*
T0*
_output_shapes
:	>
j
Reshape_51/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_51Reshape	split_2:1Reshape_51/shape*
Tshape0*
_output_shapes	
:*
T0
p
Reshape_52/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_52Reshape	split_2:2Reshape_52/shape*
Tshape0* 
_output_shapes
:
*
T0
j
Reshape_53/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_53Reshape	split_2:3Reshape_53/shape*
_output_shapes	
:*
T0*
Tshape0
p
Reshape_54/shapeConst^group_deps_1*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_54Reshape	split_2:4Reshape_54/shape*
T0*
_output_shapes
:	*
Tshape0
i
Reshape_55/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_55Reshape	split_2:5Reshape_55/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_56/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB">      
j

Reshape_56Reshape	split_2:6Reshape_56/shape*
Tshape0*
_output_shapes
:	>*
T0
j
Reshape_57/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_57Reshape	split_2:7Reshape_57/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_58/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_58Reshape	split_2:8Reshape_58/shape*
T0*
Tshape0* 
_output_shapes
:

j
Reshape_59/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_59Reshape	split_2:9Reshape_59/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_60/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_60Reshape
split_2:10Reshape_60/shape*
_output_shapes
:	*
Tshape0*
T0
i
Reshape_61/shapeConst^group_deps_1*
dtype0*
valueB:*
_output_shapes
:
f

Reshape_61Reshape
split_2:11Reshape_61/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_62/shapeConst^group_deps_1*
dtype0*
valueB">      *
_output_shapes
:
k

Reshape_62Reshape
split_2:12Reshape_62/shape*
Tshape0*
_output_shapes
:	>*
T0
j
Reshape_63/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
g

Reshape_63Reshape
split_2:13Reshape_63/shape*
Tshape0*
T0*
_output_shapes	
:
p
Reshape_64/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB"      
l

Reshape_64Reshape
split_2:14Reshape_64/shape*
T0*
Tshape0* 
_output_shapes
:

j
Reshape_65/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
g

Reshape_65Reshape
split_2:15Reshape_65/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_66/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_66Reshape
split_2:16Reshape_66/shape*
Tshape0*
T0*
_output_shapes
:	
i
Reshape_67/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_67Reshape
split_2:17Reshape_67/shape*
Tshape0*
T0*
_output_shapes
:

beta1_power_1/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias

beta1_power_1
VariableV2*
	container *
dtype0*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
shared_name *
shape: 
Л
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
validate_shape(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0
u
beta1_power_1/readIdentitybeta1_power_1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0

beta2_power_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wО?*%
_class
loc:@main/qc/dense/bias

beta2_power_1
VariableV2*%
_class
loc:@main/qc/dense/bias*
dtype0*
_output_shapes
: *
shape: *
	container *
shared_name 
Л
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
u
beta2_power_1/readIdentitybeta2_power_1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0
З
<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@main/qr1/dense/kernel*
valueB">      *
dtype0*
_output_shapes
:
Ё
2main/qr1/dense/kernel/Adam/Initializer/zeros/ConstConst*(
_class
loc:@main/qr1/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

,main/qr1/dense/kernel/Adam/Initializer/zerosFill<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr1/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	>*
T0*(
_class
loc:@main/qr1/dense/kernel*

index_type0
К
main/qr1/dense/kernel/Adam
VariableV2*
	container *
shared_name *
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
shape:	>
ђ
!main/qr1/dense/kernel/Adam/AssignAssignmain/qr1/dense/kernel/Adam,main/qr1/dense/kernel/Adam/Initializer/zeros*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	>

main/qr1/dense/kernel/Adam/readIdentitymain/qr1/dense/kernel/Adam*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel
Й
>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
valueB">      *
_output_shapes
:
Ѓ
4main/qr1/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *(
_class
loc:@main/qr1/dense/kernel*
valueB
 *    *
dtype0

.main/qr1/dense/kernel/Adam_1/Initializer/zerosFill>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr1/dense/kernel/Adam_1/Initializer/zeros/Const*

index_type0*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>
М
main/qr1/dense/kernel/Adam_1
VariableV2*
shared_name *
shape:	>*
dtype0*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
	container 
ј
#main/qr1/dense/kernel/Adam_1/AssignAssignmain/qr1/dense/kernel/Adam_1.main/qr1/dense/kernel/Adam_1/Initializer/zeros*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(

!main/qr1/dense/kernel/Adam_1/readIdentitymain/qr1/dense/kernel/Adam_1*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0
Ё
*main/qr1/dense/bias/Adam/Initializer/zerosConst*&
_class
loc:@main/qr1/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ў
main/qr1/dense/bias/Adam
VariableV2*
shared_name *&
_class
loc:@main/qr1/dense/bias*
dtype0*
	container *
shape:*
_output_shapes	
:
ц
main/qr1/dense/bias/Adam/AssignAssignmain/qr1/dense/bias/Adam*main/qr1/dense/bias/Adam/Initializer/zeros*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
_output_shapes	
:*
T0

main/qr1/dense/bias/Adam/readIdentitymain/qr1/dense/bias/Adam*
T0*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias
Ѓ
,main/qr1/dense/bias/Adam_1/Initializer/zerosConst*&
_class
loc:@main/qr1/dense/bias*
valueB*    *
_output_shapes	
:*
dtype0
А
main/qr1/dense/bias/Adam_1
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias*
	container 
ь
!main/qr1/dense/bias/Adam_1/AssignAssignmain/qr1/dense/bias/Adam_1,main/qr1/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias

main/qr1/dense/bias/Adam_1/readIdentitymain/qr1/dense/bias/Adam_1*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
T0
Л
>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
:*
dtype0
Ѕ
4main/qr1/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0

.main/qr1/dense_1/kernel/Adam/Initializer/zerosFill>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr1/dense_1/kernel/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*

index_type0
Р
main/qr1/dense_1/kernel/Adam
VariableV2*
shared_name * 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
shape:
*
	container 
ћ
#main/qr1/dense_1/kernel/Adam/AssignAssignmain/qr1/dense_1/kernel/Adam.main/qr1/dense_1/kernel/Adam/Initializer/zeros*
use_locking(* 
_output_shapes
:
*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
T0
Ђ
!main/qr1/dense_1/kernel/Adam/readIdentitymain/qr1/dense_1/kernel/Adam**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
T0
Н
@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
_output_shapes
:
Ї
6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
valueB
 *    

0main/qr1/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/Const*

index_type0*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel
Т
main/qr1/dense_1/kernel/Adam_1
VariableV2*
shared_name * 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
	container *
shape:
*
dtype0

%main/qr1/dense_1/kernel/Adam_1/AssignAssignmain/qr1/dense_1/kernel/Adam_10main/qr1/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(
І
#main/qr1/dense_1/kernel/Adam_1/readIdentitymain/qr1/dense_1/kernel/Adam_1**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
T0
Ѕ
,main/qr1/dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *(
_class
loc:@main/qr1/dense_1/bias*
dtype0*
_output_shapes	
:
В
main/qr1/dense_1/bias/Adam
VariableV2*(
_class
loc:@main/qr1/dense_1/bias*
	container *
shared_name *
dtype0*
_output_shapes	
:*
shape:
ю
!main/qr1/dense_1/bias/Adam/AssignAssignmain/qr1/dense_1/bias/Adam,main/qr1/dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias

main/qr1/dense_1/bias/Adam/readIdentitymain/qr1/dense_1/bias/Adam*
T0*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias
Ї
.main/qr1/dense_1/bias/Adam_1/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
valueB*    *
dtype0
Д
main/qr1/dense_1/bias/Adam_1
VariableV2*
	container *
dtype0*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
shape:*
shared_name 
є
#main/qr1/dense_1/bias/Adam_1/AssignAssignmain/qr1/dense_1/bias/Adam_1.main/qr1/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
T0*
use_locking(

!main/qr1/dense_1/bias/Adam_1/readIdentitymain/qr1/dense_1/bias/Adam_1*
T0*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:
Б
.main/qr1/dense_2/kernel/Adam/Initializer/zerosConst**
_class 
loc:@main/qr1/dense_2/kernel*
valueB	*    *
_output_shapes
:	*
dtype0
О
main/qr1/dense_2/kernel/Adam
VariableV2*
	container *
shape:	*
shared_name *
dtype0*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel
њ
#main/qr1/dense_2/kernel/Adam/AssignAssignmain/qr1/dense_2/kernel/Adam.main/qr1/dense_2/kernel/Adam/Initializer/zeros*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0**
_class 
loc:@main/qr1/dense_2/kernel
Ё
!main/qr1/dense_2/kernel/Adam/readIdentitymain/qr1/dense_2/kernel/Adam*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel
Г
0main/qr1/dense_2/kernel/Adam_1/Initializer/zerosConst**
_class 
loc:@main/qr1/dense_2/kernel*
valueB	*    *
dtype0*
_output_shapes
:	
Р
main/qr1/dense_2/kernel/Adam_1
VariableV2*
shared_name *
shape:	*
_output_shapes
:	*
dtype0*
	container **
_class 
loc:@main/qr1/dense_2/kernel

%main/qr1/dense_2/kernel/Adam_1/AssignAssignmain/qr1/dense_2/kernel/Adam_10main/qr1/dense_2/kernel/Adam_1/Initializer/zeros**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0
Ѕ
#main/qr1/dense_2/kernel/Adam_1/readIdentitymain/qr1/dense_2/kernel/Adam_1**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
T0
Ѓ
,main/qr1/dense_2/bias/Adam/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_2/bias*
dtype0*
valueB*    *
_output_shapes
:
А
main/qr1/dense_2/bias/Adam
VariableV2*
shape:*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
	container *
shared_name 
э
!main/qr1/dense_2/bias/Adam/AssignAssignmain/qr1/dense_2/bias/Adam,main/qr1/dense_2/bias/Adam/Initializer/zeros*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
use_locking(*
T0

main/qr1/dense_2/bias/Adam/readIdentitymain/qr1/dense_2/bias/Adam*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
T0
Ѕ
.main/qr1/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
valueB*    
В
main/qr1/dense_2/bias/Adam_1
VariableV2*
shape:*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
	container *
_output_shapes
:*
shared_name 
ѓ
#main/qr1/dense_2/bias/Adam_1/AssignAssignmain/qr1/dense_2/bias/Adam_1.main/qr1/dense_2/bias/Adam_1/Initializer/zeros*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
T0*
_output_shapes
:

!main/qr1/dense_2/bias/Adam_1/readIdentitymain/qr1/dense_2/bias/Adam_1*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:
З
<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB">      *(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:*
dtype0
Ё
2main/qr2/dense/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *(
_class
loc:@main/qr2/dense/kernel

,main/qr2/dense/kernel/Adam/Initializer/zerosFill<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr2/dense/kernel/Adam/Initializer/zeros/Const*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*

index_type0*
T0
К
main/qr2/dense/kernel/Adam
VariableV2*
shared_name *
_output_shapes
:	>*
shape:	>*
	container *
dtype0*(
_class
loc:@main/qr2/dense/kernel
ђ
!main/qr2/dense/kernel/Adam/AssignAssignmain/qr2/dense/kernel/Adam,main/qr2/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	>*
T0*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(

main/qr2/dense/kernel/Adam/readIdentitymain/qr2/dense/kernel/Adam*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0
Й
>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB">      *(
_class
loc:@main/qr2/dense/kernel
Ѓ
4main/qr2/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *(
_class
loc:@main/qr2/dense/kernel*
dtype0*
_output_shapes
: 

.main/qr2/dense/kernel/Adam_1/Initializer/zerosFill>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr2/dense/kernel/Adam_1/Initializer/zeros/Const*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
T0*

index_type0
М
main/qr2/dense/kernel/Adam_1
VariableV2*
shared_name *
	container *
shape:	>*
_output_shapes
:	>*
dtype0*(
_class
loc:@main/qr2/dense/kernel
ј
#main/qr2/dense/kernel/Adam_1/AssignAssignmain/qr2/dense/kernel/Adam_1.main/qr2/dense/kernel/Adam_1/Initializer/zeros*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(

!main/qr2/dense/kernel/Adam_1/readIdentitymain/qr2/dense/kernel/Adam_1*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
T0
Ё
*main/qr2/dense/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
valueB*    *
dtype0
Ў
main/qr2/dense/bias/Adam
VariableV2*
shape:*
shared_name *&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
dtype0*
	container 
ц
main/qr2/dense/bias/Adam/AssignAssignmain/qr2/dense/bias/Adam*main/qr2/dense/bias/Adam/Initializer/zeros*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
T0*
validate_shape(*
use_locking(

main/qr2/dense/bias/Adam/readIdentitymain/qr2/dense/bias/Adam*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
T0
Ѓ
,main/qr2/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:
А
main/qr2/dense/bias/Adam_1
VariableV2*&
_class
loc:@main/qr2/dense/bias*
shape:*
dtype0*
shared_name *
	container *
_output_shapes	
:
ь
!main/qr2/dense/bias/Adam_1/AssignAssignmain/qr2/dense/bias/Adam_1,main/qr2/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(

main/qr2/dense/bias/Adam_1/readIdentitymain/qr2/dense/bias/Adam_1*
T0*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:
Л
>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      **
_class 
loc:@main/qr2/dense_1/kernel
Ѕ
4main/qr2/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0**
_class 
loc:@main/qr2/dense_1/kernel

.main/qr2/dense_1/kernel/Adam/Initializer/zerosFill>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr2/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel
Р
main/qr2/dense_1/kernel/Adam
VariableV2*
shared_name *
shape:
*
dtype0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
	container 
ћ
#main/qr2/dense_1/kernel/Adam/AssignAssignmain/qr2/dense_1/kernel/Adam.main/qr2/dense_1/kernel/Adam/Initializer/zeros**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(
Ђ
!main/qr2/dense_1/kernel/Adam/readIdentitymain/qr2/dense_1/kernel/Adam**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

Н
@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ї
6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0**
_class 
loc:@main/qr2/dense_1/kernel*
valueB
 *    *
_output_shapes
: 

0main/qr2/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/Const**
_class 
loc:@main/qr2/dense_1/kernel*

index_type0*
T0* 
_output_shapes
:

Т
main/qr2/dense_1/kernel/Adam_1
VariableV2* 
_output_shapes
:
*
shared_name *
shape:
*
	container **
_class 
loc:@main/qr2/dense_1/kernel*
dtype0

%main/qr2/dense_1/kernel/Adam_1/AssignAssignmain/qr2/dense_1/kernel/Adam_10main/qr2/dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(
І
#main/qr2/dense_1/kernel/Adam_1/readIdentitymain/qr2/dense_1/kernel/Adam_1**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

Ѕ
,main/qr2/dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
dtype0
В
main/qr2/dense_1/bias/Adam
VariableV2*(
_class
loc:@main/qr2/dense_1/bias*
dtype0*
shape:*
_output_shapes	
:*
shared_name *
	container 
ю
!main/qr2/dense_1/bias/Adam/AssignAssignmain/qr2/dense_1/bias/Adam,main/qr2/dense_1/bias/Adam/Initializer/zeros*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:

main/qr2/dense_1/bias/Adam/readIdentitymain/qr2/dense_1/bias/Adam*
_output_shapes	
:*
T0*(
_class
loc:@main/qr2/dense_1/bias
Ї
.main/qr2/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
dtype0
Д
main/qr2/dense_1/bias/Adam_1
VariableV2*
_output_shapes	
:*
dtype0*
	container *
shape:*
shared_name *(
_class
loc:@main/qr2/dense_1/bias
є
#main/qr2/dense_1/bias/Adam_1/AssignAssignmain/qr2/dense_1/bias/Adam_1.main/qr2/dense_1/bias/Adam_1/Initializer/zeros*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0

!main/qr2/dense_1/bias/Adam_1/readIdentitymain/qr2/dense_1/bias/Adam_1*
T0*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias
Б
.main/qr2/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*
dtype0*
valueB	*    **
_class 
loc:@main/qr2/dense_2/kernel
О
main/qr2/dense_2/kernel/Adam
VariableV2**
_class 
loc:@main/qr2/dense_2/kernel*
shared_name *
shape:	*
_output_shapes
:	*
	container *
dtype0
њ
#main/qr2/dense_2/kernel/Adam/AssignAssignmain/qr2/dense_2/kernel/Adam.main/qr2/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel
Ё
!main/qr2/dense_2/kernel/Adam/readIdentitymain/qr2/dense_2/kernel/Adam**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
T0
Г
0main/qr2/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	*
dtype0*
valueB	*    **
_class 
loc:@main/qr2/dense_2/kernel
Р
main/qr2/dense_2/kernel/Adam_1
VariableV2*
	container *
shape:	*
shared_name *
dtype0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	

%main/qr2/dense_2/kernel/Adam_1/AssignAssignmain/qr2/dense_2/kernel/Adam_10main/qr2/dense_2/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
T0
Ѕ
#main/qr2/dense_2/kernel/Adam_1/readIdentitymain/qr2/dense_2/kernel/Adam_1*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
T0
Ѓ
,main/qr2/dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *(
_class
loc:@main/qr2/dense_2/bias*
dtype0*
_output_shapes
:
А
main/qr2/dense_2/bias/Adam
VariableV2*
shape:*
shared_name *
	container *(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
dtype0
э
!main/qr2/dense_2/bias/Adam/AssignAssignmain/qr2/dense_2/bias/Adam,main/qr2/dense_2/bias/Adam/Initializer/zeros*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(

main/qr2/dense_2/bias/Adam/readIdentitymain/qr2/dense_2/bias/Adam*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
Ѕ
.main/qr2/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*(
_class
loc:@main/qr2/dense_2/bias*
valueB*    *
_output_shapes
:
В
main/qr2/dense_2/bias/Adam_1
VariableV2*
shared_name *
shape:*
dtype0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
	container 
ѓ
#main/qr2/dense_2/bias/Adam_1/AssignAssignmain/qr2/dense_2/bias/Adam_1.main/qr2/dense_2/bias/Adam_1/Initializer/zeros*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0

!main/qr2/dense_2/bias/Adam_1/readIdentitymain/qr2/dense_2/bias/Adam_1*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:
Е
;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB">      *'
_class
loc:@main/qc/dense/kernel

1main/qc/dense/kernel/Adam/Initializer/zeros/ConstConst*'
_class
loc:@main/qc/dense/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 

+main/qc/dense/kernel/Adam/Initializer/zerosFill;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/qc/dense/kernel/Adam/Initializer/zeros/Const*'
_class
loc:@main/qc/dense/kernel*
T0*

index_type0*
_output_shapes
:	>
И
main/qc/dense/kernel/Adam
VariableV2*
	container *
shape:	>*
dtype0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
shared_name 
ю
 main/qc/dense/kernel/Adam/AssignAssignmain/qc/dense/kernel/Adam+main/qc/dense/kernel/Adam/Initializer/zeros*
T0*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
use_locking(*
validate_shape(

main/qc/dense/kernel/Adam/readIdentitymain/qc/dense/kernel/Adam*
T0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
З
=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:*
valueB">      *
dtype0
Ё
3main/qc/dense/kernel/Adam_1/Initializer/zeros/ConstConst*'
_class
loc:@main/qc/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

-main/qc/dense/kernel/Adam_1/Initializer/zerosFill=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/qc/dense/kernel/Adam_1/Initializer/zeros/Const*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
T0*

index_type0
К
main/qc/dense/kernel/Adam_1
VariableV2*
	container *
_output_shapes
:	>*
shape:	>*
dtype0*
shared_name *'
_class
loc:@main/qc/dense/kernel
є
"main/qc/dense/kernel/Adam_1/AssignAssignmain/qc/dense/kernel/Adam_1-main/qc/dense/kernel/Adam_1/Initializer/zeros*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	>*
T0

 main/qc/dense/kernel/Adam_1/readIdentitymain/qc/dense/kernel/Adam_1*
_output_shapes
:	>*
T0*'
_class
loc:@main/qc/dense/kernel

)main/qc/dense/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:
Ќ
main/qc/dense/bias/Adam
VariableV2*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
shared_name *
dtype0*
shape:*
	container 
т
main/qc/dense/bias/Adam/AssignAssignmain/qc/dense/bias/Adam)main/qc/dense/bias/Adam/Initializer/zeros*
_output_shapes	
:*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0

main/qc/dense/bias/Adam/readIdentitymain/qc/dense/bias/Adam*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
T0
Ё
+main/qc/dense/bias/Adam_1/Initializer/zerosConst*%
_class
loc:@main/qc/dense/bias*
valueB*    *
_output_shapes	
:*
dtype0
Ў
main/qc/dense/bias/Adam_1
VariableV2*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
shape:*
dtype0*
	container *
shared_name 
ш
 main/qc/dense/bias/Adam_1/AssignAssignmain/qc/dense/bias/Adam_1+main/qc/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0

main/qc/dense/bias/Adam_1/readIdentitymain/qc/dense/bias/Adam_1*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:
Й
=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"      *)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
:
Ѓ
3main/qc/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel

-main/qc/dense_1/kernel/Adam/Initializer/zerosFill=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/qc/dense_1/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
T0*

index_type0
О
main/qc/dense_1/kernel/Adam
VariableV2*)
_class
loc:@main/qc/dense_1/kernel*
shared_name *
shape:
*
dtype0* 
_output_shapes
:
*
	container 
ї
"main/qc/dense_1/kernel/Adam/AssignAssignmain/qc/dense_1/kernel/Adam-main/qc/dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel

 main/qc/dense_1/kernel/Adam/readIdentitymain/qc/dense_1/kernel/Adam*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
T0
Л
?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@main/qc/dense_1/kernel*
valueB"      *
_output_shapes
:*
dtype0
Ѕ
5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *    *
dtype0

/main/qc/dense_1/kernel/Adam_1/Initializer/zerosFill?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/Const*

index_type0*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
Р
main/qc/dense_1/kernel/Adam_1
VariableV2*
shared_name *
	container *
dtype0*)
_class
loc:@main/qc/dense_1/kernel*
shape:
* 
_output_shapes
:

§
$main/qc/dense_1/kernel/Adam_1/AssignAssignmain/qc/dense_1/kernel/Adam_1/main/qc/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*
T0*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(*
validate_shape(
Ѓ
"main/qc/dense_1/kernel/Adam_1/readIdentitymain/qc/dense_1/kernel/Adam_1*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
T0
Ѓ
+main/qc/dense_1/bias/Adam/Initializer/zerosConst*'
_class
loc:@main/qc/dense_1/bias*
valueB*    *
_output_shapes	
:*
dtype0
А
main/qc/dense_1/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shape:*
shared_name *
	container *'
_class
loc:@main/qc/dense_1/bias
ъ
 main/qc/dense_1/bias/Adam/AssignAssignmain/qc/dense_1/bias/Adam+main/qc/dense_1/bias/Adam/Initializer/zeros*
_output_shapes	
:*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
use_locking(

main/qc/dense_1/bias/Adam/readIdentitymain/qc/dense_1/bias/Adam*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
T0
Ѕ
-main/qc/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
dtype0
В
main/qc/dense_1/bias/Adam_1
VariableV2*
shape:*
_output_shapes	
:*
shared_name *'
_class
loc:@main/qc/dense_1/bias*
dtype0*
	container 
№
"main/qc/dense_1/bias/Adam_1/AssignAssignmain/qc/dense_1/bias/Adam_1-main/qc/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
T0*
_output_shapes	
:

 main/qc/dense_1/bias/Adam_1/readIdentitymain/qc/dense_1/bias/Adam_1*
T0*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
Џ
-main/qc/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*
valueB	*    *
dtype0*)
_class
loc:@main/qc/dense_2/kernel
М
main/qc/dense_2/kernel/Adam
VariableV2*
shape:	*)
_class
loc:@main/qc/dense_2/kernel*
shared_name *
_output_shapes
:	*
dtype0*
	container 
і
"main/qc/dense_2/kernel/Adam/AssignAssignmain/qc/dense_2/kernel/Adam-main/qc/dense_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel

 main/qc/dense_2/kernel/Adam/readIdentitymain/qc/dense_2/kernel/Adam*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0
Б
/main/qc/dense_2/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:	*
valueB	*    *)
_class
loc:@main/qc/dense_2/kernel
О
main/qc/dense_2/kernel/Adam_1
VariableV2*
	container *
shape:	*
_output_shapes
:	*
shared_name *)
_class
loc:@main/qc/dense_2/kernel*
dtype0
ќ
$main/qc/dense_2/kernel/Adam_1/AssignAssignmain/qc/dense_2/kernel/Adam_1/main/qc/dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
_output_shapes
:	*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
T0
Ђ
"main/qc/dense_2/kernel/Adam_1/readIdentitymain/qc/dense_2/kernel/Adam_1*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0
Ё
+main/qc/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *'
_class
loc:@main/qc/dense_2/bias
Ў
main/qc/dense_2/bias/Adam
VariableV2*
dtype0*
shape:*
shared_name *
	container *'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:
щ
 main/qc/dense_2/bias/Adam/AssignAssignmain/qc/dense_2/bias/Adam+main/qc/dense_2/bias/Adam/Initializer/zeros*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:

main/qc/dense_2/bias/Adam/readIdentitymain/qc/dense_2/bias/Adam*
_output_shapes
:*
T0*'
_class
loc:@main/qc/dense_2/bias
Ѓ
-main/qc/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
dtype0
А
main/qc/dense_2/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@main/qc/dense_2/bias*
shape:*
	container *
dtype0*
_output_shapes
:
я
"main/qc/dense_2/bias/Adam_1/AssignAssignmain/qc/dense_2/bias/Adam_1-main/qc/dense_2/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(

 main/qc/dense_2/bias/Adam_1/readIdentitymain/qc/dense_2/bias/Adam_1*'
_class
loc:@main/qc/dense_2/bias*
T0*
_output_shapes
:
i
train_q/learning_rateConst^group_deps_1*
valueB
 *o:*
_output_shapes
: *
dtype0
a
train_q/beta1Const^group_deps_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
a
train_q/beta2Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *wО?
c
train_q/epsilonConst^group_deps_1*
_output_shapes
: *
valueB
 *wЬ+2*
dtype0

.train_q/update_main/qr1/dense/kernel/ApplyAdam	ApplyAdammain/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_50*
T0*
_output_shapes
:	>*
use_nesterov( *(
_class
loc:@main/qr1/dense/kernel*
use_locking( 
ѓ
,train_q/update_main/qr1/dense/bias/ApplyAdam	ApplyAdammain/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_51*
_output_shapes	
:*
use_locking( *&
_class
loc:@main/qr1/dense/bias*
use_nesterov( *
T0

0train_q/update_main/qr1/dense_1/kernel/ApplyAdam	ApplyAdammain/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_52*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking( * 
_output_shapes
:
*
use_nesterov( 
§
.train_q/update_main/qr1/dense_1/bias/ApplyAdam	ApplyAdammain/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_53*(
_class
loc:@main/qr1/dense_1/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0

0train_q/update_main/qr1/dense_2/kernel/ApplyAdam	ApplyAdammain/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_54*
use_nesterov( **
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking( 
ќ
.train_q/update_main/qr1/dense_2/bias/ApplyAdam	ApplyAdammain/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_55*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
T0*
use_locking( *
use_nesterov( 

.train_q/update_main/qr2/dense/kernel/ApplyAdam	ApplyAdammain/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_56*
use_nesterov( *(
_class
loc:@main/qr2/dense/kernel*
T0*
use_locking( *
_output_shapes
:	>
ѓ
,train_q/update_main/qr2/dense/bias/ApplyAdam	ApplyAdammain/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_57*
use_nesterov( *
use_locking( *&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
T0

0train_q/update_main/qr2/dense_1/kernel/ApplyAdam	ApplyAdammain/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_58*
use_nesterov( *
use_locking( *
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:

§
.train_q/update_main/qr2/dense_1/bias/ApplyAdam	ApplyAdammain/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_59*
_output_shapes	
:*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking( *
use_nesterov( 

0train_q/update_main/qr2/dense_2/kernel/ApplyAdam	ApplyAdammain/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_60*
use_nesterov( *
_output_shapes
:	*
use_locking( **
_class 
loc:@main/qr2/dense_2/kernel*
T0
ќ
.train_q/update_main/qr2/dense_2/bias/ApplyAdam	ApplyAdammain/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_61*(
_class
loc:@main/qr2/dense_2/bias*
use_nesterov( *
T0*
_output_shapes
:*
use_locking( 
ќ
-train_q/update_main/qc/dense/kernel/ApplyAdam	ApplyAdammain/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_62*
T0*'
_class
loc:@main/qc/dense/kernel*
use_locking( *
use_nesterov( *
_output_shapes
:	>
ю
+train_q/update_main/qc/dense/bias/ApplyAdam	ApplyAdammain/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_63*
T0*%
_class
loc:@main/qc/dense/bias*
use_locking( *
use_nesterov( *
_output_shapes	
:

/train_q/update_main/qc/dense_1/kernel/ApplyAdam	ApplyAdammain/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_64*
use_nesterov( *)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
use_locking( *
T0
ј
-train_q/update_main/qc/dense_1/bias/ApplyAdam	ApplyAdammain/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_65*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
use_nesterov( *
use_locking( *
T0

/train_q/update_main/qc/dense_2/kernel/ApplyAdam	ApplyAdammain/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_66*
use_locking( *
_output_shapes
:	*
use_nesterov( *
T0*)
_class
loc:@main/qc/dense_2/kernel
ї
-train_q/update_main/qc/dense_2/bias/ApplyAdam	ApplyAdammain/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_67*
use_nesterov( *
T0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
use_locking( 
я
train_q/mulMulbeta1_power_1/readtrain_q/beta1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0
Ѕ
train_q/AssignAssignbeta1_power_1train_q/mul*
use_locking( *%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
_output_shapes
: 
ё
train_q/mul_1Mulbeta2_power_1/readtrain_q/beta2,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*%
_class
loc:@main/qc/dense/bias*
T0*
_output_shapes
: 
Љ
train_q/Assign_1Assignbeta2_power_1train_q/mul_1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0*
use_locking( *
validate_shape(
Д
train_qNoOp^group_deps_1^train_q/Assign^train_q/Assign_1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam
|
Reshape_68/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
w

Reshape_68Reshapemain/qr1/dense/kernel/readReshape_68/shape*
T0*
Tshape0*
_output_shapes	
:|
|
Reshape_69/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
u

Reshape_69Reshapemain/qr1/dense/bias/readReshape_69/shape*
_output_shapes	
:*
T0*
Tshape0
|
Reshape_70/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z

Reshape_70Reshapemain/qr1/dense_1/kernel/readReshape_70/shape*
T0*
Tshape0*
_output_shapes

:
|
Reshape_71/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
w

Reshape_71Reshapemain/qr1/dense_1/bias/readReshape_71/shape*
T0*
_output_shapes	
:*
Tshape0
|
Reshape_72/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_72Reshapemain/qr1/dense_2/kernel/readReshape_72/shape*
Tshape0*
T0*
_output_shapes	
:
|
Reshape_73/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
v

Reshape_73Reshapemain/qr1/dense_2/bias/readReshape_73/shape*
Tshape0*
_output_shapes
:*
T0
|
Reshape_74/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
w

Reshape_74Reshapemain/qr2/dense/kernel/readReshape_74/shape*
_output_shapes	
:|*
Tshape0*
T0
|
Reshape_75/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
u

Reshape_75Reshapemain/qr2/dense/bias/readReshape_75/shape*
T0*
Tshape0*
_output_shapes	
:
|
Reshape_76/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
z

Reshape_76Reshapemain/qr2/dense_1/kernel/readReshape_76/shape*
Tshape0*
_output_shapes

:*
T0
|
Reshape_77/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
w

Reshape_77Reshapemain/qr2/dense_1/bias/readReshape_77/shape*
_output_shapes	
:*
T0*
Tshape0
|
Reshape_78/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
y

Reshape_78Reshapemain/qr2/dense_2/kernel/readReshape_78/shape*
T0*
_output_shapes	
:*
Tshape0
|
Reshape_79/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_79Reshapemain/qr2/dense_2/bias/readReshape_79/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_80/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_80Reshapemain/qc/dense/kernel/readReshape_80/shape*
T0*
Tshape0*
_output_shapes	
:|
|
Reshape_81/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
t

Reshape_81Reshapemain/qc/dense/bias/readReshape_81/shape*
Tshape0*
T0*
_output_shapes	
:
|
Reshape_82/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y

Reshape_82Reshapemain/qc/dense_1/kernel/readReshape_82/shape*
T0*
Tshape0*
_output_shapes

:
|
Reshape_83/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
v

Reshape_83Reshapemain/qc/dense_1/bias/readReshape_83/shape*
T0*
_output_shapes	
:*
Tshape0
|
Reshape_84/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
x

Reshape_84Reshapemain/qc/dense_2/kernel/readReshape_84/shape*
Tshape0*
_output_shapes	
:*
T0
|
Reshape_85/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
u

Reshape_85Reshapemain/qc/dense_2/bias/readReshape_85/shape*
Tshape0*
_output_shapes
:*
T0
h
concat_3/axisConst^group_deps_1^train_q*
dtype0*
value	B : *
_output_shapes
: 
З
concat_3ConcatV2
Reshape_68
Reshape_69
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85concat_3/axis*

Tidx0*
T0*
N*
_output_shapes

:
h
PyFunc_3PyFuncconcat_3*
Tout
2*
Tin
2*
_output_shapes
:*
token
pyfunc_3
В
Const_11Const^group_deps_1^train_q*]
valueTBR"H >                  >                  >                 *
_output_shapes
:*
dtype0
l
split_3/split_dimConst^group_deps_1^train_q*
dtype0*
_output_shapes
: *
value	B : 
М
split_3SplitVPyFunc_3Const_11split_3/split_dim*
T0*
	num_split*

Tlen0*\
_output_shapesJ
H::::::::::::::::::
z
Reshape_86/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB">      
h

Reshape_86Reshapesplit_3Reshape_86/shape*
_output_shapes
:	>*
T0*
Tshape0
t
Reshape_87/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_87Reshape	split_3:1Reshape_87/shape*
Tshape0*
T0*
_output_shapes	
:
z
Reshape_88/shapeConst^group_deps_1^train_q*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_88Reshape	split_3:2Reshape_88/shape*
T0* 
_output_shapes
:
*
Tshape0
t
Reshape_89/shapeConst^group_deps_1^train_q*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_89Reshape	split_3:3Reshape_89/shape*
T0*
Tshape0*
_output_shapes	
:
z
Reshape_90/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB"      
j

Reshape_90Reshape	split_3:4Reshape_90/shape*
_output_shapes
:	*
T0*
Tshape0
s
Reshape_91/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_91Reshape	split_3:5Reshape_91/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_92/shapeConst^group_deps_1^train_q*
valueB">      *
dtype0*
_output_shapes
:
j

Reshape_92Reshape	split_3:6Reshape_92/shape*
_output_shapes
:	>*
Tshape0*
T0
t
Reshape_93/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_93Reshape	split_3:7Reshape_93/shape*
_output_shapes	
:*
T0*
Tshape0
z
Reshape_94/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
k

Reshape_94Reshape	split_3:8Reshape_94/shape*
Tshape0*
T0* 
_output_shapes
:

t
Reshape_95/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_95Reshape	split_3:9Reshape_95/shape*
_output_shapes	
:*
T0*
Tshape0
z
Reshape_96/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
k

Reshape_96Reshape
split_3:10Reshape_96/shape*
T0*
Tshape0*
_output_shapes
:	
s
Reshape_97/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_97Reshape
split_3:11Reshape_97/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_98/shapeConst^group_deps_1^train_q*
valueB">      *
_output_shapes
:*
dtype0
k

Reshape_98Reshape
split_3:12Reshape_98/shape*
T0*
Tshape0*
_output_shapes
:	>
t
Reshape_99/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
g

Reshape_99Reshape
split_3:13Reshape_99/shape*
T0*
_output_shapes	
:*
Tshape0
{
Reshape_100/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_100Reshape
split_3:14Reshape_100/shape* 
_output_shapes
:
*
Tshape0*
T0
u
Reshape_101/shapeConst^group_deps_1^train_q*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_101Reshape
split_3:15Reshape_101/shape*
T0*
_output_shapes	
:*
Tshape0
{
Reshape_102/shapeConst^group_deps_1^train_q*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_102Reshape
split_3:16Reshape_102/shape*
T0*
Tshape0*
_output_shapes
:	
t
Reshape_103/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_103Reshape
split_3:17Reshape_103/shape*
Tshape0*
T0*
_output_shapes
:
В
Assign_8Assignmain/qr1/dense/kernel
Reshape_86*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
validate_shape(*
T0
Њ
Assign_9Assignmain/qr1/dense/bias
Reshape_87*&
_class
loc:@main/qr1/dense/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
И
	Assign_10Assignmain/qr1/dense_1/kernel
Reshape_88*
T0*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:

Џ
	Assign_11Assignmain/qr1/dense_1/bias
Reshape_89*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
T0*
validate_shape(
З
	Assign_12Assignmain/qr1/dense_2/kernel
Reshape_90*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Ў
	Assign_13Assignmain/qr1/dense_2/bias
Reshape_91*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
Г
	Assign_14Assignmain/qr2/dense/kernel
Reshape_92*
use_locking(*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(
Ћ
	Assign_15Assignmain/qr2/dense/bias
Reshape_93*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0
И
	Assign_16Assignmain/qr2/dense_1/kernel
Reshape_94* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
T0*
use_locking(
Џ
	Assign_17Assignmain/qr2/dense_1/bias
Reshape_95*
_output_shapes	
:*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
use_locking(
З
	Assign_18Assignmain/qr2/dense_2/kernel
Reshape_96*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Ў
	Assign_19Assignmain/qr2/dense_2/bias
Reshape_97*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
Б
	Assign_20Assignmain/qc/dense/kernel
Reshape_98*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(
Љ
	Assign_21Assignmain/qc/dense/bias
Reshape_99*%
_class
loc:@main/qc/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
З
	Assign_22Assignmain/qc/dense_1/kernelReshape_100* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(*
T0
Ў
	Assign_23Assignmain/qc/dense_1/biasReshape_101*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ж
	Assign_24Assignmain/qc/dense_2/kernelReshape_102*
validate_shape(*
_output_shapes
:	*
T0*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(
­
	Assign_25Assignmain/qc/dense_2/biasReshape_103*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:

group_deps_2NoOp
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25	^Assign_8	^Assign_9^group_deps_1^train_q
<
group_deps_3NoOp^group_deps_1^group_deps_2^train_q
c
gradients_2/ShapeConst^group_deps_3*
valueB *
dtype0*
_output_shapes
: 
i
gradients_2/grad_ys_0Const^group_deps_3*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
_output_shapes
: *

index_type0*
T0
\
gradients_2/mul_11_grad/MulMulgradients_2/Fillsub_9*
T0*
_output_shapes
: 
^
gradients_2/mul_11_grad/Mul_1Mulgradients_2/FillNeg_1*
T0*
_output_shapes
: 
}
(gradients_2/mul_11_grad/tuple/group_depsNoOp^gradients_2/mul_11_grad/Mul^gradients_2/mul_11_grad/Mul_1^group_deps_3
е
0gradients_2/mul_11_grad/tuple/control_dependencyIdentitygradients_2/mul_11_grad/Mul)^gradients_2/mul_11_grad/tuple/group_deps*.
_class$
" loc:@gradients_2/mul_11_grad/Mul*
_output_shapes
: *
T0
л
2gradients_2/mul_11_grad/tuple/control_dependency_1Identitygradients_2/mul_11_grad/Mul_1)^gradients_2/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_2/mul_11_grad/Mul_1*
_output_shapes
: 
t
gradients_2/Neg_1_grad/NegNeg0gradients_2/mul_11_grad/tuple/control_dependency*
T0*
_output_shapes
: 

&gradients_2/Softplus_grad/SoftplusGradSoftplusGradgradients_2/Neg_1_grad/Negentreg/soft_alpha/read*
_output_shapes
: *
T0
s
Reshape_104/shapeConst^group_deps_3*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_104Reshape&gradients_2/Softplus_grad/SoftplusGradReshape_104/shape*
Tshape0*
T0*
_output_shapes
:
d
concat_4/concat_dimConst^group_deps_3*
value	B : *
dtype0*
_output_shapes
: 
F
concat_4IdentityReshape_104*
_output_shapes
:*
T0
j
PyFunc_4PyFuncconcat_4*
Tout
2*
_output_shapes
:*
token
pyfunc_4*
Tin
2
a
Const_12Const^group_deps_3*
dtype0*
_output_shapes
:*
valueB:
b
split_4/split_dimConst^group_deps_3*
_output_shapes
: *
dtype0*
value	B : 
z
split_4SplitVPyFunc_4Const_12split_4/split_dim*
_output_shapes
:*

Tlen0*
	num_split*
T0
c
Reshape_105/shapeConst^group_deps_3*
valueB *
dtype0*
_output_shapes
: 
a
Reshape_105Reshapesplit_4Reshape_105/shape*
Tshape0*
_output_shapes
: *
T0

beta1_power_2/initial_valueConst*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
dtype0*
valueB
 *fff?

beta1_power_2
VariableV2*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
shared_name *
shape: *
dtype0*
	container 
К
beta1_power_2/AssignAssignbeta1_power_2beta1_power_2/initial_value*
validate_shape(*
T0*
use_locking(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
t
beta1_power_2/readIdentitybeta1_power_2*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0

beta2_power_2/initial_valueConst*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
dtype0*
valueB
 *wО?

beta2_power_2
VariableV2*
_output_shapes
: *
dtype0*
	container *
shared_name *$
_class
loc:@entreg/soft_alpha*
shape: 
К
beta2_power_2/AssignAssignbeta2_power_2beta2_power_2/initial_value*$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
t
beta2_power_2/readIdentitybeta2_power_2*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 

(entreg/soft_alpha/Adam/Initializer/zerosConst*
valueB
 *    *
dtype0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
 
entreg/soft_alpha/Adam
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
й
entreg/soft_alpha/Adam/AssignAssignentreg/soft_alpha/Adam(entreg/soft_alpha/Adam/Initializer/zeros*
use_locking(*$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(*
_output_shapes
: 

entreg/soft_alpha/Adam/readIdentityentreg/soft_alpha/Adam*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0

*entreg/soft_alpha/Adam_1/Initializer/zerosConst*$
_class
loc:@entreg/soft_alpha*
valueB
 *    *
_output_shapes
: *
dtype0
Ђ
entreg/soft_alpha/Adam_1
VariableV2*
shape: *$
_class
loc:@entreg/soft_alpha*
dtype0*
	container *
shared_name *
_output_shapes
: 
п
entreg/soft_alpha/Adam_1/AssignAssignentreg/soft_alpha/Adam_1*entreg/soft_alpha/Adam_1/Initializer/zeros*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*$
_class
loc:@entreg/soft_alpha

entreg/soft_alpha/Adam_1/readIdentityentreg/soft_alpha/Adam_1*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
f
Adam/learning_rateConst^group_deps_3*
dtype0*
valueB
 *o:*
_output_shapes
: 
^

Adam/beta1Const^group_deps_3*
valueB
 *fff?*
dtype0*
_output_shapes
: 
^

Adam/beta2Const^group_deps_3*
_output_shapes
: *
valueB
 *wО?*
dtype0
`
Adam/epsilonConst^group_deps_3*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ж
'Adam/update_entreg/soft_alpha/ApplyAdam	ApplyAdamentreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1beta1_power_2/readbeta2_power_2/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonReshape_105*
use_locking( *$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0*
use_nesterov( 
 
Adam/mulMulbeta1_power_2/read
Adam/beta1(^Adam/update_entreg/soft_alpha/ApplyAdam*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0

Adam/AssignAssignbeta1_power_2Adam/mul*
_output_shapes
: *
T0*$
_class
loc:@entreg/soft_alpha*
use_locking( *
validate_shape(
Ђ

Adam/mul_1Mulbeta2_power_2/read
Adam/beta2(^Adam/update_entreg/soft_alpha/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
Ђ
Adam/Assign_1Assignbeta2_power_2
Adam/mul_1*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
c
AdamNoOp^Adam/Assign^Adam/Assign_1(^Adam/update_entreg/soft_alpha/ApplyAdam^group_deps_3
z
Reshape_106/shapeConst^Adam^group_deps_3*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
t
Reshape_106Reshapeentreg/soft_alpha/readReshape_106/shape*
_output_shapes
:*
T0*
Tshape0
k
concat_5/concat_dimConst^Adam^group_deps_3*
dtype0*
value	B : *
_output_shapes
: 
F
concat_5IdentityReshape_106*
_output_shapes
:*
T0
h
PyFunc_5PyFuncconcat_5*
_output_shapes
:*
Tin
2*
token
pyfunc_5*
Tout
2
h
Const_13Const^Adam^group_deps_3*
valueB:*
dtype0*
_output_shapes
:
i
split_5/split_dimConst^Adam^group_deps_3*
_output_shapes
: *
value	B : *
dtype0
x
split_5SplitVPyFunc_5Const_13split_5/split_dim*
T0*
	num_split*

Tlen0*
_output_shapes
:
j
Reshape_107/shapeConst^Adam^group_deps_3*
dtype0*
_output_shapes
: *
valueB 
a
Reshape_107Reshapesplit_5Reshape_107/shape*
Tshape0*
_output_shapes
: *
T0
Ѓ
	Assign_26Assignentreg/soft_alphaReshape_107*
T0*
_output_shapes
: *
validate_shape(*$
_class
loc:@entreg/soft_alpha*
use_locking(
6
group_deps_4NoOp^Adam
^Assign_26^group_deps_3
9
group_deps_5NoOp^Adam^group_deps_3^group_deps_4
f
gradients_3/ShapeShapemul_12^group_deps_5*
_output_shapes
:*
T0*
out_type0
i
gradients_3/grad_ys_0Const^group_deps_5*
valueB
 *  ?*
dtype0*
_output_shapes
: 

gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*#
_output_shapes
:џџџџџџџџџ*
T0*

index_type0
o
gradients_3/mul_12_grad/ShapeConst^group_deps_5*
_output_shapes
: *
valueB *
dtype0
t
gradients_3/mul_12_grad/Shape_1Shapesub_10^group_deps_5*
T0*
_output_shapes
:*
out_type0
У
-gradients_3/mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/mul_12_grad/Shapegradients_3/mul_12_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
j
gradients_3/mul_12_grad/MulMulgradients_3/Fillsub_10*#
_output_shapes
:џџџџџџџџџ*
T0
Ў
gradients_3/mul_12_grad/SumSumgradients_3/mul_12_grad/Mul-gradients_3/mul_12_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients_3/mul_12_grad/ReshapeReshapegradients_3/mul_12_grad/Sumgradients_3/mul_12_grad/Shape*
_output_shapes
: *
T0*
Tshape0
p
gradients_3/mul_12_grad/Mul_1Mul
Softplus_1gradients_3/Fill*
T0*#
_output_shapes
:џџџџџџџџџ
Д
gradients_3/mul_12_grad/Sum_1Sumgradients_3/mul_12_grad/Mul_1/gradients_3/mul_12_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ј
!gradients_3/mul_12_grad/Reshape_1Reshapegradients_3/mul_12_grad/Sum_1gradients_3/mul_12_grad/Shape_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0

(gradients_3/mul_12_grad/tuple/group_depsNoOp ^gradients_3/mul_12_grad/Reshape"^gradients_3/mul_12_grad/Reshape_1^group_deps_5
н
0gradients_3/mul_12_grad/tuple/control_dependencyIdentitygradients_3/mul_12_grad/Reshape)^gradients_3/mul_12_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_3/mul_12_grad/Reshape
№
2gradients_3/mul_12_grad/tuple/control_dependency_1Identity!gradients_3/mul_12_grad/Reshape_1)^gradients_3/mul_12_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_3/mul_12_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ѓ
(gradients_3/Softplus_1_grad/SoftplusGradSoftplusGrad0gradients_3/mul_12_grad/tuple/control_dependencycostpen/soft_beta/read*
_output_shapes
: *
T0
s
Reshape_108/shapeConst^group_deps_5*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_108Reshape(gradients_3/Softplus_1_grad/SoftplusGradReshape_108/shape*
_output_shapes
:*
T0*
Tshape0
d
concat_6/concat_dimConst^group_deps_5*
dtype0*
value	B : *
_output_shapes
: 
F
concat_6IdentityReshape_108*
_output_shapes
:*
T0
j
PyFunc_6PyFuncconcat_6*
Tout
2*
_output_shapes
:*
token
pyfunc_6*
Tin
2
a
Const_14Const^group_deps_5*
_output_shapes
:*
valueB:*
dtype0
b
split_6/split_dimConst^group_deps_5*
value	B : *
_output_shapes
: *
dtype0
z
split_6SplitVPyFunc_6Const_14split_6/split_dim*
_output_shapes
:*
	num_split*
T0*

Tlen0
c
Reshape_109/shapeConst^group_deps_5*
_output_shapes
: *
dtype0*
valueB 
a
Reshape_109Reshapesplit_6Reshape_109/shape*
T0*
Tshape0*
_output_shapes
: 

beta1_power_3/initial_valueConst*
valueB
 *fff?*
dtype0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 

beta1_power_3
VariableV2*
shape: *
_output_shapes
: *
	container *$
_class
loc:@costpen/soft_beta*
shared_name *
dtype0
К
beta1_power_3/AssignAssignbeta1_power_3beta1_power_3/initial_value*
use_locking(*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
T0
t
beta1_power_3/readIdentitybeta1_power_3*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 

beta2_power_3/initial_valueConst*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
dtype0*
valueB
 *wО?

beta2_power_3
VariableV2*
shape: *
shared_name *
	container *$
_class
loc:@costpen/soft_beta*
dtype0*
_output_shapes
: 
К
beta2_power_3/AssignAssignbeta2_power_3beta2_power_3/initial_value*
validate_shape(*
T0*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
t
beta2_power_3/readIdentitybeta2_power_3*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0

(costpen/soft_beta/Adam/Initializer/zerosConst*$
_class
loc:@costpen/soft_beta*
valueB
 *    *
_output_shapes
: *
dtype0
 
costpen/soft_beta/Adam
VariableV2*
_output_shapes
: *
shape: *$
_class
loc:@costpen/soft_beta*
dtype0*
	container *
shared_name 
й
costpen/soft_beta/Adam/AssignAssigncostpen/soft_beta/Adam(costpen/soft_beta/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 

costpen/soft_beta/Adam/readIdentitycostpen/soft_beta/Adam*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta

*costpen/soft_beta/Adam_1/Initializer/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    *$
_class
loc:@costpen/soft_beta
Ђ
costpen/soft_beta/Adam_1
VariableV2*
shape: *
	container *
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
dtype0*
shared_name 
п
costpen/soft_beta/Adam_1/AssignAssigncostpen/soft_beta/Adam_1*costpen/soft_beta/Adam_1/Initializer/zeros*$
_class
loc:@costpen/soft_beta*
use_locking(*
_output_shapes
: *
validate_shape(*
T0

costpen/soft_beta/Adam_1/readIdentitycostpen/soft_beta/Adam_1*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
h
Adam_1/learning_rateConst^group_deps_5*
valueB
 *ЭЬL=*
dtype0*
_output_shapes
: 
`
Adam_1/beta1Const^group_deps_5*
valueB
 *fff?*
dtype0*
_output_shapes
: 
`
Adam_1/beta2Const^group_deps_5*
valueB
 *wО?*
_output_shapes
: *
dtype0
b
Adam_1/epsilonConst^group_deps_5*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
р
)Adam_1/update_costpen/soft_beta/ApplyAdam	ApplyAdamcostpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1beta1_power_3/readbeta2_power_3/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_109*
T0*
use_locking( *
use_nesterov( *
_output_shapes
: *$
_class
loc:@costpen/soft_beta
І

Adam_1/mulMulbeta1_power_3/readAdam_1/beta1*^Adam_1/update_costpen/soft_beta/ApplyAdam*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
Ђ
Adam_1/AssignAssignbeta1_power_3
Adam_1/mul*
use_locking( *
T0*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
Ј
Adam_1/mul_1Mulbeta2_power_3/readAdam_1/beta2*^Adam_1/update_costpen/soft_beta/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
І
Adam_1/Assign_1Assignbeta2_power_3Adam_1/mul_1*$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking( *
T0*
_output_shapes
: 
k
Adam_1NoOp^Adam_1/Assign^Adam_1/Assign_1*^Adam_1/update_costpen/soft_beta/ApplyAdam^group_deps_5
|
Reshape_110/shapeConst^Adam_1^group_deps_5*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
t
Reshape_110Reshapecostpen/soft_beta/readReshape_110/shape*
_output_shapes
:*
Tshape0*
T0
m
concat_7/concat_dimConst^Adam_1^group_deps_5*
_output_shapes
: *
dtype0*
value	B : 
F
concat_7IdentityReshape_110*
_output_shapes
:*
T0
h
PyFunc_7PyFuncconcat_7*
Tin
2*
Tout
2*
_output_shapes
:*
token
pyfunc_7
j
Const_15Const^Adam_1^group_deps_5*
_output_shapes
:*
dtype0*
valueB:
k
split_7/split_dimConst^Adam_1^group_deps_5*
dtype0*
_output_shapes
: *
value	B : 
x
split_7SplitVPyFunc_7Const_15split_7/split_dim*
_output_shapes
:*
T0*

Tlen0*
	num_split
l
Reshape_111/shapeConst^Adam_1^group_deps_5*
dtype0*
_output_shapes
: *
valueB 
a
Reshape_111Reshapesplit_7Reshape_111/shape*
Tshape0*
T0*
_output_shapes
: 
Ѓ
	Assign_27Assigncostpen/soft_betaReshape_111*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(*
use_locking(
8
group_deps_6NoOp^Adam_1
^Assign_27^group_deps_5
;
group_deps_7NoOp^Adam_1^group_deps_5^group_deps_6
M
mul_13/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
_
mul_13Mulmul_13/xtarget/qr1/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_14/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ;
]
mul_14Mulmul_14/xmain/qr1/dense/kernel/read*
_output_shapes
:	>*
T0
F
add_5Addmul_13mul_14*
T0*
_output_shapes
:	>
В
	Assign_28Assigntarget/qr1/dense/kerneladd_5*
_output_shapes
:	>*
use_locking(*
T0**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(
M
mul_15/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
Y
mul_15Mulmul_15/xtarget/qr1/dense/bias/read*
_output_shapes	
:*
T0
M
mul_16/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
W
mul_16Mulmul_16/xmain/qr1/dense/bias/read*
T0*
_output_shapes	
:
B
add_6Addmul_15mul_16*
_output_shapes	
:*
T0
Њ
	Assign_29Assigntarget/qr1/dense/biasadd_6*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:*(
_class
loc:@target/qr1/dense/bias
M
mul_17/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
b
mul_17Mulmul_17/xtarget/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_18/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
`
mul_18Mulmul_18/xmain/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:

G
add_7Addmul_17mul_18*
T0* 
_output_shapes
:

З
	Assign_30Assigntarget/qr1/dense_1/kerneladd_7*
T0*
validate_shape(* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
use_locking(
M
mul_19/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
[
mul_19Mulmul_19/xtarget/qr1/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_20/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
Y
mul_20Mulmul_20/xmain/qr1/dense_1/bias/read*
_output_shapes	
:*
T0
B
add_8Addmul_19mul_20*
T0*
_output_shapes	
:
Ў
	Assign_31Assigntarget/qr1/dense_1/biasadd_8**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0
M
mul_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
a
mul_21Mulmul_21/xtarget/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_22/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
_
mul_22Mulmul_22/xmain/qr1/dense_2/kernel/read*
_output_shapes
:	*
T0
F
add_9Addmul_21mul_22*
_output_shapes
:	*
T0
Ж
	Assign_32Assigntarget/qr1/dense_2/kerneladd_9*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	
M
mul_23/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
Z
mul_23Mulmul_23/xtarget/qr1/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_24/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
X
mul_24Mulmul_24/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_10Addmul_23mul_24*
T0*
_output_shapes
:
Ў
	Assign_33Assigntarget/qr1/dense_2/biasadd_10*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
T0*
validate_shape(*
use_locking(
M
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *RИ~?
_
mul_25Mulmul_25/xtarget/qr2/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_26/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
]
mul_26Mulmul_26/xmain/qr2/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_11Addmul_25mul_26*
_output_shapes
:	>*
T0
Г
	Assign_34Assigntarget/qr2/dense/kerneladd_11**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>*
T0
M
mul_27/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
Y
mul_27Mulmul_27/xtarget/qr2/dense/bias/read*
T0*
_output_shapes	
:
M
mul_28/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
W
mul_28Mulmul_28/xmain/qr2/dense/bias/read*
_output_shapes	
:*
T0
C
add_12Addmul_27mul_28*
T0*
_output_shapes	
:
Ћ
	Assign_35Assigntarget/qr2/dense/biasadd_12*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
M
mul_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *RИ~?
b
mul_29Mulmul_29/xtarget/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_30/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
`
mul_30Mulmul_30/xmain/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:

H
add_13Addmul_29mul_30*
T0* 
_output_shapes
:

И
	Assign_36Assigntarget/qr2/dense_1/kerneladd_13*,
_class"
 loc:@target/qr2/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
M
mul_31/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
[
mul_31Mulmul_31/xtarget/qr2/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_32/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
Y
mul_32Mulmul_32/xmain/qr2/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_14Addmul_31mul_32*
_output_shapes	
:*
T0
Џ
	Assign_37Assigntarget/qr2/dense_1/biasadd_14*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(**
_class 
loc:@target/qr2/dense_1/bias
M
mul_33/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
a
mul_33Mulmul_33/xtarget/qr2/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_34/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
_
mul_34Mulmul_34/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_15Addmul_33mul_34*
T0*
_output_shapes
:	
З
	Assign_38Assigntarget/qr2/dense_2/kerneladd_15*
_output_shapes
:	*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0
M
mul_35/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
Z
mul_35Mulmul_35/xtarget/qr2/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_36/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
X
mul_36Mulmul_36/xmain/qr2/dense_2/bias/read*
T0*
_output_shapes
:
B
add_16Addmul_35mul_36*
_output_shapes
:*
T0
Ў
	Assign_39Assigntarget/qr2/dense_2/biasadd_16*
_output_shapes
:*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(
M
mul_37/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
^
mul_37Mulmul_37/xtarget/qc/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_38/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ;
\
mul_38Mulmul_38/xmain/qc/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_17Addmul_37mul_38*
T0*
_output_shapes
:	>
Б
	Assign_40Assigntarget/qc/dense/kerneladd_17*)
_class
loc:@target/qc/dense/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>
M
mul_39/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
X
mul_39Mulmul_39/xtarget/qc/dense/bias/read*
_output_shapes	
:*
T0
M
mul_40/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ;
V
mul_40Mulmul_40/xmain/qc/dense/bias/read*
_output_shapes	
:*
T0
C
add_18Addmul_39mul_40*
T0*
_output_shapes	
:
Љ
	Assign_41Assigntarget/qc/dense/biasadd_18*'
_class
loc:@target/qc/dense/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
M
mul_41/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
a
mul_41Mulmul_41/xtarget/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
M
mul_42/xConst*
valueB
 *
зЃ;*
dtype0*
_output_shapes
: 
_
mul_42Mulmul_42/xmain/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_19Addmul_41mul_42* 
_output_shapes
:
*
T0
Ж
	Assign_42Assigntarget/qc/dense_1/kerneladd_19*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0*+
_class!
loc:@target/qc/dense_1/kernel
M
mul_43/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
Z
mul_43Mulmul_43/xtarget/qc/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_44/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
X
mul_44Mulmul_44/xmain/qc/dense_1/bias/read*
T0*
_output_shapes	
:
C
add_20Addmul_43mul_44*
_output_shapes	
:*
T0
­
	Assign_43Assigntarget/qc/dense_1/biasadd_20*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*)
_class
loc:@target/qc/dense_1/bias
M
mul_45/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
`
mul_45Mulmul_45/xtarget/qc/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_46/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
^
mul_46Mulmul_46/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	
G
add_21Addmul_45mul_46*
_output_shapes
:	*
T0
Е
	Assign_44Assigntarget/qc/dense_2/kerneladd_21*
validate_shape(*
_output_shapes
:	*
use_locking(*+
_class!
loc:@target/qc/dense_2/kernel*
T0
M
mul_47/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
Y
mul_47Mulmul_47/xtarget/qc/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_48/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
W
mul_48Mulmul_48/xmain/qc/dense_2/bias/read*
_output_shapes
:*
T0
B
add_22Addmul_47mul_48*
T0*
_output_shapes
:
Ќ
	Assign_45Assigntarget/qc/dense_2/biasadd_22*
use_locking(*
T0*
_output_shapes
:*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(
ь
group_deps_8NoOp
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
A
group_deps_9NoOp^group_deps_1^group_deps_3^group_deps_8
3
group_deps_10NoOp^group_deps_5^group_deps_9
4
group_deps_11NoOp^group_deps_10^group_deps_7
M
mul_49/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
mul_49Mulmul_49/xtarget/qr1/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_50/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
]
mul_50Mulmul_50/xmain/qr1/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_23Addmul_49mul_50*
_output_shapes
:	>*
T0
Г
	Assign_46Assigntarget/qr1/dense/kerneladd_23**
_class 
loc:@target/qr1/dense/kernel*
use_locking(*
_output_shapes
:	>*
T0*
validate_shape(
M
mul_51/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
Y
mul_51Mulmul_51/xtarget/qr1/dense/bias/read*
T0*
_output_shapes	
:
M
mul_52/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
W
mul_52Mulmul_52/xmain/qr1/dense/bias/read*
T0*
_output_shapes	
:
C
add_24Addmul_51mul_52*
T0*
_output_shapes	
:
Ћ
	Assign_47Assigntarget/qr1/dense/biasadd_24*
use_locking(*
T0*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
validate_shape(
M
mul_53/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
b
mul_53Mulmul_53/xtarget/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_54/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
`
mul_54Mulmul_54/xmain/qr1/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_25Addmul_53mul_54*
T0* 
_output_shapes
:

И
	Assign_48Assigntarget/qr1/dense_1/kerneladd_25*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel
M
mul_55/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
[
mul_55Mulmul_55/xtarget/qr1/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_56/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Y
mul_56Mulmul_56/xmain/qr1/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_26Addmul_55mul_56*
_output_shapes	
:*
T0
Џ
	Assign_49Assigntarget/qr1/dense_1/biasadd_26*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
T0*
validate_shape(*
use_locking(
M
mul_57/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
mul_57Mulmul_57/xtarget/qr1/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_58/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
_
mul_58Mulmul_58/xmain/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	
G
add_27Addmul_57mul_58*
T0*
_output_shapes
:	
З
	Assign_50Assigntarget/qr1/dense_2/kerneladd_27*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	
M
mul_59/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
Z
mul_59Mulmul_59/xtarget/qr1/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_60/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
X
mul_60Mulmul_60/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_28Addmul_59mul_60*
T0*
_output_shapes
:
Ў
	Assign_51Assigntarget/qr1/dense_2/biasadd_28*
validate_shape(**
_class 
loc:@target/qr1/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
M
mul_61/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
_
mul_61Mulmul_61/xtarget/qr2/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_62/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
]
mul_62Mulmul_62/xmain/qr2/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_29Addmul_61mul_62*
T0*
_output_shapes
:	>
Г
	Assign_52Assigntarget/qr2/dense/kerneladd_29*
_output_shapes
:	>*
T0**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
validate_shape(
M
mul_63/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
mul_63Mulmul_63/xtarget/qr2/dense/bias/read*
_output_shapes	
:*
T0
M
mul_64/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
W
mul_64Mulmul_64/xmain/qr2/dense/bias/read*
T0*
_output_shapes	
:
C
add_30Addmul_63mul_64*
T0*
_output_shapes	
:
Ћ
	Assign_53Assigntarget/qr2/dense/biasadd_30*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*(
_class
loc:@target/qr2/dense/bias
M
mul_65/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
b
mul_65Mulmul_65/xtarget/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_66/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
`
mul_66Mulmul_66/xmain/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:

H
add_31Addmul_65mul_66* 
_output_shapes
:
*
T0
И
	Assign_54Assigntarget/qr2/dense_1/kerneladd_31*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

M
mul_67/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
mul_67Mulmul_67/xtarget/qr2/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_68/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
mul_68Mulmul_68/xmain/qr2/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_32Addmul_67mul_68*
_output_shapes	
:*
T0
Џ
	Assign_55Assigntarget/qr2/dense_1/biasadd_32*
validate_shape(*
T0*
use_locking(**
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:
M
mul_69/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
a
mul_69Mulmul_69/xtarget/qr2/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_70/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
_
mul_70Mulmul_70/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_33Addmul_69mul_70*
T0*
_output_shapes
:	
З
	Assign_56Assigntarget/qr2/dense_2/kerneladd_33*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	
M
mul_71/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Z
mul_71Mulmul_71/xtarget/qr2/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_72/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
X
mul_72Mulmul_72/xmain/qr2/dense_2/bias/read*
_output_shapes
:*
T0
B
add_34Addmul_71mul_72*
_output_shapes
:*
T0
Ў
	Assign_57Assigntarget/qr2/dense_2/biasadd_34*
_output_shapes
:*
T0**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
use_locking(
M
mul_73/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
^
mul_73Mulmul_73/xtarget/qc/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_74/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
\
mul_74Mulmul_74/xmain/qc/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_35Addmul_73mul_74*
T0*
_output_shapes
:	>
Б
	Assign_58Assigntarget/qc/dense/kerneladd_35*)
_class
loc:@target/qc/dense/kernel*
T0*
use_locking(*
_output_shapes
:	>*
validate_shape(
M
mul_75/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
X
mul_75Mulmul_75/xtarget/qc/dense/bias/read*
_output_shapes	
:*
T0
M
mul_76/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
mul_76Mulmul_76/xmain/qc/dense/bias/read*
T0*
_output_shapes	
:
C
add_36Addmul_75mul_76*
_output_shapes	
:*
T0
Љ
	Assign_59Assigntarget/qc/dense/biasadd_36*
use_locking(*
T0*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:*
validate_shape(
M
mul_77/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
a
mul_77Mulmul_77/xtarget/qc/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_78/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
_
mul_78Mulmul_78/xmain/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_37Addmul_77mul_78*
T0* 
_output_shapes
:

Ж
	Assign_60Assigntarget/qc/dense_1/kerneladd_37* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(*
use_locking(*
T0
M
mul_79/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
Z
mul_79Mulmul_79/xtarget/qc/dense_1/bias/read*
_output_shapes	
:*
T0
M
mul_80/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
X
mul_80Mulmul_80/xmain/qc/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_38Addmul_79mul_80*
_output_shapes	
:*
T0
­
	Assign_61Assigntarget/qc/dense_1/biasadd_38*)
_class
loc:@target/qc/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
M
mul_81/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
`
mul_81Mulmul_81/xtarget/qc/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_82/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
^
mul_82Mulmul_82/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	
G
add_39Addmul_81mul_82*
T0*
_output_shapes
:	
Е
	Assign_62Assigntarget/qc/dense_2/kerneladd_39*
T0*
use_locking(*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
M
mul_83/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Y
mul_83Mulmul_83/xtarget/qc/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_84/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
W
mul_84Mulmul_84/xmain/qc/dense_2/bias/read*
_output_shapes
:*
T0
B
add_40Addmul_83mul_84*
T0*
_output_shapes
:
Ќ
	Assign_63Assigntarget/qc/dense_2/biasadd_40*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*)
_class
loc:@target/qc/dense_2/bias
э
group_deps_12NoOp
^Assign_46
^Assign_47
^Assign_48
^Assign_49
^Assign_50
^Assign_51
^Assign_52
^Assign_53
^Assign_54
^Assign_55
^Assign_56
^Assign_57
^Assign_58
^Assign_59
^Assign_60
^Assign_61
^Assign_62
^Assign_63
ъ
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta1_power_2/Assign^beta1_power_3/Assign^beta2_power/Assign^beta2_power_1/Assign^beta2_power_2/Assign^beta2_power_3/Assign^costpen/soft_beta/Adam/Assign ^costpen/soft_beta/Adam_1/Assign^costpen/soft_beta/Assign^entreg/soft_alpha/Adam/Assign ^entreg/soft_alpha/Adam_1/Assign^entreg/soft_alpha/Assign^main/pi/dense/bias/Adam/Assign!^main/pi/dense/bias/Adam_1/Assign^main/pi/dense/bias/Assign!^main/pi/dense/kernel/Adam/Assign#^main/pi/dense/kernel/Adam_1/Assign^main/pi/dense/kernel/Assign!^main/pi/dense_1/bias/Adam/Assign#^main/pi/dense_1/bias/Adam_1/Assign^main/pi/dense_1/bias/Assign#^main/pi/dense_1/kernel/Adam/Assign%^main/pi/dense_1/kernel/Adam_1/Assign^main/pi/dense_1/kernel/Assign!^main/pi/dense_2/bias/Adam/Assign#^main/pi/dense_2/bias/Adam_1/Assign^main/pi/dense_2/bias/Assign#^main/pi/dense_2/kernel/Adam/Assign%^main/pi/dense_2/kernel/Adam_1/Assign^main/pi/dense_2/kernel/Assign!^main/pi/dense_3/bias/Adam/Assign#^main/pi/dense_3/bias/Adam_1/Assign^main/pi/dense_3/bias/Assign#^main/pi/dense_3/kernel/Adam/Assign%^main/pi/dense_3/kernel/Adam_1/Assign^main/pi/dense_3/kernel/Assign^main/qc/dense/bias/Adam/Assign!^main/qc/dense/bias/Adam_1/Assign^main/qc/dense/bias/Assign!^main/qc/dense/kernel/Adam/Assign#^main/qc/dense/kernel/Adam_1/Assign^main/qc/dense/kernel/Assign!^main/qc/dense_1/bias/Adam/Assign#^main/qc/dense_1/bias/Adam_1/Assign^main/qc/dense_1/bias/Assign#^main/qc/dense_1/kernel/Adam/Assign%^main/qc/dense_1/kernel/Adam_1/Assign^main/qc/dense_1/kernel/Assign!^main/qc/dense_2/bias/Adam/Assign#^main/qc/dense_2/bias/Adam_1/Assign^main/qc/dense_2/bias/Assign#^main/qc/dense_2/kernel/Adam/Assign%^main/qc/dense_2/kernel/Adam_1/Assign^main/qc/dense_2/kernel/Assign ^main/qr1/dense/bias/Adam/Assign"^main/qr1/dense/bias/Adam_1/Assign^main/qr1/dense/bias/Assign"^main/qr1/dense/kernel/Adam/Assign$^main/qr1/dense/kernel/Adam_1/Assign^main/qr1/dense/kernel/Assign"^main/qr1/dense_1/bias/Adam/Assign$^main/qr1/dense_1/bias/Adam_1/Assign^main/qr1/dense_1/bias/Assign$^main/qr1/dense_1/kernel/Adam/Assign&^main/qr1/dense_1/kernel/Adam_1/Assign^main/qr1/dense_1/kernel/Assign"^main/qr1/dense_2/bias/Adam/Assign$^main/qr1/dense_2/bias/Adam_1/Assign^main/qr1/dense_2/bias/Assign$^main/qr1/dense_2/kernel/Adam/Assign&^main/qr1/dense_2/kernel/Adam_1/Assign^main/qr1/dense_2/kernel/Assign ^main/qr2/dense/bias/Adam/Assign"^main/qr2/dense/bias/Adam_1/Assign^main/qr2/dense/bias/Assign"^main/qr2/dense/kernel/Adam/Assign$^main/qr2/dense/kernel/Adam_1/Assign^main/qr2/dense/kernel/Assign"^main/qr2/dense_1/bias/Adam/Assign$^main/qr2/dense_1/bias/Adam_1/Assign^main/qr2/dense_1/bias/Assign$^main/qr2/dense_1/kernel/Adam/Assign&^main/qr2/dense_1/kernel/Adam_1/Assign^main/qr2/dense_1/kernel/Assign"^main/qr2/dense_2/bias/Adam/Assign$^main/qr2/dense_2/bias/Adam_1/Assign^main/qr2/dense_2/bias/Assign$^main/qr2/dense_2/kernel/Adam/Assign&^main/qr2/dense_2/kernel/Adam_1/Assign^main/qr2/dense_2/kernel/Assign^target/qc/dense/bias/Assign^target/qc/dense/kernel/Assign^target/qc/dense_1/bias/Assign ^target/qc/dense_1/kernel/Assign^target/qc/dense_2/bias/Assign ^target/qc/dense_2/kernel/Assign^target/qr1/dense/bias/Assign^target/qr1/dense/kernel/Assign^target/qr1/dense_1/bias/Assign!^target/qr1/dense_1/kernel/Assign^target/qr1/dense_2/bias/Assign!^target/qr1/dense_2/kernel/Assign^target/qr2/dense/bias/Assign^target/qr2/dense/kernel/Assign^target/qr2/dense_1/bias/Assign!^target/qr2/dense_1/kernel/Assign^target/qr2/dense_2/bias/Assign!^target/qr2/dense_2/kernel/Assign
d
Reshape_112/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_112Reshapemain/pi/dense/kernel/readReshape_112/shape*
_output_shapes	
:x*
T0*
Tshape0
d
Reshape_113/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
v
Reshape_113Reshapemain/pi/dense/bias/readReshape_113/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_114/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
{
Reshape_114Reshapemain/pi/dense_1/kernel/readReshape_114/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_115/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
x
Reshape_115Reshapemain/pi/dense_1/bias/readReshape_115/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_116/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
z
Reshape_116Reshapemain/pi/dense_2/kernel/readReshape_116/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_117/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
w
Reshape_117Reshapemain/pi/dense_2/bias/readReshape_117/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_118/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z
Reshape_118Reshapemain/pi/dense_3/kernel/readReshape_118/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_119/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
w
Reshape_119Reshapemain/pi/dense_3/bias/readReshape_119/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_120/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_120Reshapemain/qr1/dense/kernel/readReshape_120/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_121/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
w
Reshape_121Reshapemain/qr1/dense/bias/readReshape_121/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_122/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
|
Reshape_122Reshapemain/qr1/dense_1/kernel/readReshape_122/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_123/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
y
Reshape_123Reshapemain/qr1/dense_1/bias/readReshape_123/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_124/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
{
Reshape_124Reshapemain/qr1/dense_2/kernel/readReshape_124/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_125/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_125Reshapemain/qr1/dense_2/bias/readReshape_125/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_126/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_126Reshapemain/qr2/dense/kernel/readReshape_126/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_127/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
w
Reshape_127Reshapemain/qr2/dense/bias/readReshape_127/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_128/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
|
Reshape_128Reshapemain/qr2/dense_1/kernel/readReshape_128/shape*
_output_shapes

:*
Tshape0*
T0
d
Reshape_129/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_129Reshapemain/qr2/dense_1/bias/readReshape_129/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_130/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
{
Reshape_130Reshapemain/qr2/dense_2/kernel/readReshape_130/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_131/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
x
Reshape_131Reshapemain/qr2/dense_2/bias/readReshape_131/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_132/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
x
Reshape_132Reshapemain/qc/dense/kernel/readReshape_132/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_133/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
v
Reshape_133Reshapemain/qc/dense/bias/readReshape_133/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_134/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
Reshape_134Reshapemain/qc/dense_1/kernel/readReshape_134/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_135/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_135Reshapemain/qc/dense_1/bias/readReshape_135/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_136/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z
Reshape_136Reshapemain/qc/dense_2/kernel/readReshape_136/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_137/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
w
Reshape_137Reshapemain/qc/dense_2/bias/readReshape_137/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_138/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
{
Reshape_138Reshapetarget/qr1/dense/kernel/readReshape_138/shape*
T0*
_output_shapes	
:|*
Tshape0
d
Reshape_139/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_139Reshapetarget/qr1/dense/bias/readReshape_139/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_140/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
~
Reshape_140Reshapetarget/qr1/dense_1/kernel/readReshape_140/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_141/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
Reshape_141Reshapetarget/qr1/dense_1/bias/readReshape_141/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_142/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_142Reshapetarget/qr1/dense_2/kernel/readReshape_142/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_143/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
z
Reshape_143Reshapetarget/qr1/dense_2/bias/readReshape_143/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_144/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
Reshape_144Reshapetarget/qr2/dense/kernel/readReshape_144/shape*
T0*
Tshape0*
_output_shapes	
:|
d
Reshape_145/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
y
Reshape_145Reshapetarget/qr2/dense/bias/readReshape_145/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_146/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_146Reshapetarget/qr2/dense_1/kernel/readReshape_146/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_147/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{
Reshape_147Reshapetarget/qr2/dense_1/bias/readReshape_147/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_148/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_148Reshapetarget/qr2/dense_2/kernel/readReshape_148/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_149/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
z
Reshape_149Reshapetarget/qr2/dense_2/bias/readReshape_149/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_150/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
z
Reshape_150Reshapetarget/qc/dense/kernel/readReshape_150/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_151/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
x
Reshape_151Reshapetarget/qc/dense/bias/readReshape_151/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_152/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
}
Reshape_152Reshapetarget/qc/dense_1/kernel/readReshape_152/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_153/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
z
Reshape_153Reshapetarget/qc/dense_1/bias/readReshape_153/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_154/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
|
Reshape_154Reshapetarget/qc/dense_2/kernel/readReshape_154/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_155/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_155Reshapetarget/qc/dense_2/bias/readReshape_155/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_156/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
t
Reshape_156Reshapeentreg/soft_alpha/readReshape_156/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_157/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
t
Reshape_157Reshapecostpen/soft_beta/readReshape_157/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_158/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
n
Reshape_158Reshapebeta1_power/readReshape_158/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_159/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
n
Reshape_159Reshapebeta2_power/readReshape_159/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_160/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
}
Reshape_160Reshapemain/pi/dense/kernel/Adam/readReshape_160/shape*
_output_shapes	
:x*
T0*
Tshape0
d
Reshape_161/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_161Reshape main/pi/dense/kernel/Adam_1/readReshape_161/shape*
Tshape0*
_output_shapes	
:x*
T0
d
Reshape_162/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
Reshape_162Reshapemain/pi/dense/bias/Adam/readReshape_162/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_163/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
}
Reshape_163Reshapemain/pi/dense/bias/Adam_1/readReshape_163/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_164/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_164Reshape main/pi/dense_1/kernel/Adam/readReshape_164/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_165/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_165Reshape"main/pi/dense_1/kernel/Adam_1/readReshape_165/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_166/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
}
Reshape_166Reshapemain/pi/dense_1/bias/Adam/readReshape_166/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_167/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_167Reshape main/pi/dense_1/bias/Adam_1/readReshape_167/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_168/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_168Reshape main/pi/dense_2/kernel/Adam/readReshape_168/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_169/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_169Reshape"main/pi/dense_2/kernel/Adam_1/readReshape_169/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_170/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
|
Reshape_170Reshapemain/pi/dense_2/bias/Adam/readReshape_170/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_171/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
~
Reshape_171Reshape main/pi/dense_2/bias/Adam_1/readReshape_171/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_172/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_172Reshape main/pi/dense_3/kernel/Adam/readReshape_172/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_173/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_173Reshape"main/pi/dense_3/kernel/Adam_1/readReshape_173/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_174/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
|
Reshape_174Reshapemain/pi/dense_3/bias/Adam/readReshape_174/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_175/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
~
Reshape_175Reshape main/pi/dense_3/bias/Adam_1/readReshape_175/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_176/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
p
Reshape_176Reshapebeta1_power_1/readReshape_176/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_177/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
p
Reshape_177Reshapebeta2_power_1/readReshape_177/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_178/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_178Reshapemain/qr1/dense/kernel/Adam/readReshape_178/shape*
_output_shapes	
:|*
T0*
Tshape0
d
Reshape_179/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_179Reshape!main/qr1/dense/kernel/Adam_1/readReshape_179/shape*
Tshape0*
_output_shapes	
:|*
T0
d
Reshape_180/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_180Reshapemain/qr1/dense/bias/Adam/readReshape_180/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_181/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
~
Reshape_181Reshapemain/qr1/dense/bias/Adam_1/readReshape_181/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_182/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_182Reshape!main/qr1/dense_1/kernel/Adam/readReshape_182/shape*
_output_shapes

:*
T0*
Tshape0
d
Reshape_183/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_183Reshape#main/qr1/dense_1/kernel/Adam_1/readReshape_183/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_184/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_184Reshapemain/qr1/dense_1/bias/Adam/readReshape_184/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_185/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_185Reshape!main/qr1/dense_1/bias/Adam_1/readReshape_185/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_186/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_186Reshape!main/qr1/dense_2/kernel/Adam/readReshape_186/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_187/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_187Reshape#main/qr1/dense_2/kernel/Adam_1/readReshape_187/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_188/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
}
Reshape_188Reshapemain/qr1/dense_2/bias/Adam/readReshape_188/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_189/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_189Reshape!main/qr1/dense_2/bias/Adam_1/readReshape_189/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_190/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_190Reshapemain/qr2/dense/kernel/Adam/readReshape_190/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_191/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_191Reshape!main/qr2/dense/kernel/Adam_1/readReshape_191/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_192/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
|
Reshape_192Reshapemain/qr2/dense/bias/Adam/readReshape_192/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_193/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
~
Reshape_193Reshapemain/qr2/dense/bias/Adam_1/readReshape_193/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_194/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_194Reshape!main/qr2/dense_1/kernel/Adam/readReshape_194/shape*
_output_shapes

:*
Tshape0*
T0
d
Reshape_195/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_195Reshape#main/qr2/dense_1/kernel/Adam_1/readReshape_195/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_196/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
~
Reshape_196Reshapemain/qr2/dense_1/bias/Adam/readReshape_196/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_197/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_197Reshape!main/qr2/dense_1/bias/Adam_1/readReshape_197/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_198/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_198Reshape!main/qr2/dense_2/kernel/Adam/readReshape_198/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_199/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_199Reshape#main/qr2/dense_2/kernel/Adam_1/readReshape_199/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_200/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_200Reshapemain/qr2/dense_2/bias/Adam/readReshape_200/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_201/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0

Reshape_201Reshape!main/qr2/dense_2/bias/Adam_1/readReshape_201/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_202/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
}
Reshape_202Reshapemain/qc/dense/kernel/Adam/readReshape_202/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_203/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_203Reshape main/qc/dense/kernel/Adam_1/readReshape_203/shape*
Tshape0*
_output_shapes	
:|*
T0
d
Reshape_204/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
{
Reshape_204Reshapemain/qc/dense/bias/Adam/readReshape_204/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_205/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
}
Reshape_205Reshapemain/qc/dense/bias/Adam_1/readReshape_205/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_206/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0

Reshape_206Reshape main/qc/dense_1/kernel/Adam/readReshape_206/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_207/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_207Reshape"main/qc/dense_1/kernel/Adam_1/readReshape_207/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_208/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
}
Reshape_208Reshapemain/qc/dense_1/bias/Adam/readReshape_208/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_209/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_209Reshape main/qc/dense_1/bias/Adam_1/readReshape_209/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_210/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_210Reshape main/qc/dense_2/kernel/Adam/readReshape_210/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_211/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_211Reshape"main/qc/dense_2/kernel/Adam_1/readReshape_211/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_212/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_212Reshapemain/qc/dense_2/bias/Adam/readReshape_212/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_213/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_213Reshape main/qc/dense_2/bias/Adam_1/readReshape_213/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_214/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
p
Reshape_214Reshapebeta1_power_2/readReshape_214/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_215/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
p
Reshape_215Reshapebeta2_power_2/readReshape_215/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_216/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_216Reshapeentreg/soft_alpha/Adam/readReshape_216/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_217/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
{
Reshape_217Reshapeentreg/soft_alpha/Adam_1/readReshape_217/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_218/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
p
Reshape_218Reshapebeta1_power_3/readReshape_218/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_219/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
p
Reshape_219Reshapebeta2_power_3/readReshape_219/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_220/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_220Reshapecostpen/soft_beta/Adam/readReshape_220/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_221/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
{
Reshape_221Reshapecostpen/soft_beta/Adam_1/readReshape_221/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_8/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ѕ
concat_8ConcatV2Reshape_112Reshape_113Reshape_114Reshape_115Reshape_116Reshape_117Reshape_118Reshape_119Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139Reshape_140Reshape_141Reshape_142Reshape_143Reshape_144Reshape_145Reshape_146Reshape_147Reshape_148Reshape_149Reshape_150Reshape_151Reshape_152Reshape_153Reshape_154Reshape_155Reshape_156Reshape_157Reshape_158Reshape_159Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199Reshape_200Reshape_201Reshape_202Reshape_203Reshape_204Reshape_205Reshape_206Reshape_207Reshape_208Reshape_209Reshape_210Reshape_211Reshape_212Reshape_213Reshape_214Reshape_215Reshape_216Reshape_217Reshape_218Reshape_219Reshape_220Reshape_221concat_8/axis*

Tidx0*
_output_shapes

:ІЄK*
T0*
Nn
h
PyFunc_8PyFuncconcat_8*
Tout
2*
_output_shapes
:*
token
pyfunc_8*
Tin
2

Const_16Const*
dtype0*а
valueЦBУn"И <                        >                  >                  >                  >                  >                  >                              <   <                                                   >   >                                 >   >                                 >   >                                                        *
_output_shapes
:n
S
split_8/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
Џ
split_8SplitVPyFunc_8Const_16split_8/split_dim*
T0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*

Tlen0*
	num_splitn
b
Reshape_222/shapeConst*
valueB"<      *
dtype0*
_output_shapes
:
j
Reshape_222Reshapesplit_8Reshape_222/shape*
T0*
Tshape0*
_output_shapes
:	<
\
Reshape_223/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_223Reshape	split_8:1Reshape_223/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_224/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_224Reshape	split_8:2Reshape_224/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_225/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_225Reshape	split_8:3Reshape_225/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_226/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
l
Reshape_226Reshape	split_8:4Reshape_226/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_227/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_227Reshape	split_8:5Reshape_227/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_228/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
l
Reshape_228Reshape	split_8:6Reshape_228/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_229/shapeConst*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_229Reshape	split_8:7Reshape_229/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_230/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
l
Reshape_230Reshape	split_8:8Reshape_230/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_231/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_231Reshape	split_8:9Reshape_231/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_232/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_232Reshape
split_8:10Reshape_232/shape*
T0*
Tshape0* 
_output_shapes
:

\
Reshape_233/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_233Reshape
split_8:11Reshape_233/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_234/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_234Reshape
split_8:12Reshape_234/shape*
T0*
_output_shapes
:	*
Tshape0
[
Reshape_235/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_235Reshape
split_8:13Reshape_235/shape*
_output_shapes
:*
Tshape0*
T0
b
Reshape_236/shapeConst*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_236Reshape
split_8:14Reshape_236/shape*
_output_shapes
:	>*
T0*
Tshape0
\
Reshape_237/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_237Reshape
split_8:15Reshape_237/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_238/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_238Reshape
split_8:16Reshape_238/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_239/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_239Reshape
split_8:17Reshape_239/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_240/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_240Reshape
split_8:18Reshape_240/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_241/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_241Reshape
split_8:19Reshape_241/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_242/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
m
Reshape_242Reshape
split_8:20Reshape_242/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_243/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_243Reshape
split_8:21Reshape_243/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_244/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_244Reshape
split_8:22Reshape_244/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_245/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_245Reshape
split_8:23Reshape_245/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_246/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_246Reshape
split_8:24Reshape_246/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_247/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_247Reshape
split_8:25Reshape_247/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_248/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_248Reshape
split_8:26Reshape_248/shape*
_output_shapes
:	>*
T0*
Tshape0
\
Reshape_249/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_249Reshape
split_8:27Reshape_249/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_250/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_250Reshape
split_8:28Reshape_250/shape*
Tshape0* 
_output_shapes
:
*
T0
\
Reshape_251/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_251Reshape
split_8:29Reshape_251/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_252/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_252Reshape
split_8:30Reshape_252/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_253/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_253Reshape
split_8:31Reshape_253/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_254/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_254Reshape
split_8:32Reshape_254/shape*
T0*
_output_shapes
:	>*
Tshape0
\
Reshape_255/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_255Reshape
split_8:33Reshape_255/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_256/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_256Reshape
split_8:34Reshape_256/shape*
Tshape0* 
_output_shapes
:
*
T0
\
Reshape_257/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_257Reshape
split_8:35Reshape_257/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_258/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_258Reshape
split_8:36Reshape_258/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_259/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_259Reshape
split_8:37Reshape_259/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_260/shapeConst*
dtype0*
valueB">      *
_output_shapes
:
m
Reshape_260Reshape
split_8:38Reshape_260/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_261/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_261Reshape
split_8:39Reshape_261/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_262/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_262Reshape
split_8:40Reshape_262/shape* 
_output_shapes
:
*
T0*
Tshape0
\
Reshape_263/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_263Reshape
split_8:41Reshape_263/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_264/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_264Reshape
split_8:42Reshape_264/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_265/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_265Reshape
split_8:43Reshape_265/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_266/shapeConst*
dtype0*
valueB *
_output_shapes
: 
d
Reshape_266Reshape
split_8:44Reshape_266/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_267/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_267Reshape
split_8:45Reshape_267/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_268/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_268Reshape
split_8:46Reshape_268/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_269/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_269Reshape
split_8:47Reshape_269/shape*
Tshape0*
_output_shapes
: *
T0
b
Reshape_270/shapeConst*
valueB"<      *
dtype0*
_output_shapes
:
m
Reshape_270Reshape
split_8:48Reshape_270/shape*
T0*
Tshape0*
_output_shapes
:	<
b
Reshape_271/shapeConst*
_output_shapes
:*
dtype0*
valueB"<      
m
Reshape_271Reshape
split_8:49Reshape_271/shape*
Tshape0*
_output_shapes
:	<*
T0
\
Reshape_272/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_272Reshape
split_8:50Reshape_272/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_273/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_273Reshape
split_8:51Reshape_273/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_274/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_274Reshape
split_8:52Reshape_274/shape*
Tshape0*
T0* 
_output_shapes
:

b
Reshape_275/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_275Reshape
split_8:53Reshape_275/shape*
Tshape0*
T0* 
_output_shapes
:

\
Reshape_276/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_276Reshape
split_8:54Reshape_276/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_277/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_277Reshape
split_8:55Reshape_277/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_278/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_278Reshape
split_8:56Reshape_278/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_279/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_279Reshape
split_8:57Reshape_279/shape*
T0*
_output_shapes
:	*
Tshape0
[
Reshape_280/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_280Reshape
split_8:58Reshape_280/shape*
_output_shapes
:*
Tshape0*
T0
[
Reshape_281/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_281Reshape
split_8:59Reshape_281/shape*
_output_shapes
:*
Tshape0*
T0
b
Reshape_282/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_282Reshape
split_8:60Reshape_282/shape*
Tshape0*
_output_shapes
:	*
T0
b
Reshape_283/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_283Reshape
split_8:61Reshape_283/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_284/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_284Reshape
split_8:62Reshape_284/shape*
Tshape0*
T0*
_output_shapes
:
[
Reshape_285/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_285Reshape
split_8:63Reshape_285/shape*
Tshape0*
_output_shapes
:*
T0
T
Reshape_286/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_286Reshape
split_8:64Reshape_286/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_287/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_287Reshape
split_8:65Reshape_287/shape*
Tshape0*
T0*
_output_shapes
: 
b
Reshape_288/shapeConst*
dtype0*
_output_shapes
:*
valueB">      
m
Reshape_288Reshape
split_8:66Reshape_288/shape*
_output_shapes
:	>*
Tshape0*
T0
b
Reshape_289/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_289Reshape
split_8:67Reshape_289/shape*
_output_shapes
:	>*
T0*
Tshape0
\
Reshape_290/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_290Reshape
split_8:68Reshape_290/shape*
_output_shapes	
:*
T0*
Tshape0
\
Reshape_291/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_291Reshape
split_8:69Reshape_291/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_292/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_292Reshape
split_8:70Reshape_292/shape* 
_output_shapes
:
*
T0*
Tshape0
b
Reshape_293/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_293Reshape
split_8:71Reshape_293/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_294/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_294Reshape
split_8:72Reshape_294/shape*
T0*
_output_shapes	
:*
Tshape0
\
Reshape_295/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_295Reshape
split_8:73Reshape_295/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_296/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_296Reshape
split_8:74Reshape_296/shape*
Tshape0*
T0*
_output_shapes
:	
b
Reshape_297/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_297Reshape
split_8:75Reshape_297/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_298/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_298Reshape
split_8:76Reshape_298/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_299/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_299Reshape
split_8:77Reshape_299/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_300/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_300Reshape
split_8:78Reshape_300/shape*
Tshape0*
T0*
_output_shapes
:	>
b
Reshape_301/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_301Reshape
split_8:79Reshape_301/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_302/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_302Reshape
split_8:80Reshape_302/shape*
Tshape0*
_output_shapes	
:*
T0
\
Reshape_303/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_303Reshape
split_8:81Reshape_303/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_304/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_304Reshape
split_8:82Reshape_304/shape*
Tshape0*
T0* 
_output_shapes
:

b
Reshape_305/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_305Reshape
split_8:83Reshape_305/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_306/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_306Reshape
split_8:84Reshape_306/shape*
Tshape0*
_output_shapes	
:*
T0
\
Reshape_307/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_307Reshape
split_8:85Reshape_307/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_308/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_308Reshape
split_8:86Reshape_308/shape*
_output_shapes
:	*
T0*
Tshape0
b
Reshape_309/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_309Reshape
split_8:87Reshape_309/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_310/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_310Reshape
split_8:88Reshape_310/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_311/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_311Reshape
split_8:89Reshape_311/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_312/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_312Reshape
split_8:90Reshape_312/shape*
_output_shapes
:	>*
Tshape0*
T0
b
Reshape_313/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_313Reshape
split_8:91Reshape_313/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_314/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_314Reshape
split_8:92Reshape_314/shape*
_output_shapes	
:*
Tshape0*
T0
\
Reshape_315/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_315Reshape
split_8:93Reshape_315/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_316/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_316Reshape
split_8:94Reshape_316/shape*
Tshape0* 
_output_shapes
:
*
T0
b
Reshape_317/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_317Reshape
split_8:95Reshape_317/shape*
Tshape0*
T0* 
_output_shapes
:

\
Reshape_318/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_318Reshape
split_8:96Reshape_318/shape*
Tshape0*
T0*
_output_shapes	
:
\
Reshape_319/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_319Reshape
split_8:97Reshape_319/shape*
Tshape0*
T0*
_output_shapes	
:
b
Reshape_320/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_320Reshape
split_8:98Reshape_320/shape*
_output_shapes
:	*
Tshape0*
T0
b
Reshape_321/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_321Reshape
split_8:99Reshape_321/shape*
Tshape0*
_output_shapes
:	*
T0
[
Reshape_322/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_322Reshapesplit_8:100Reshape_322/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_323/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_323Reshapesplit_8:101Reshape_323/shape*
_output_shapes
:*
Tshape0*
T0
T
Reshape_324/shapeConst*
dtype0*
_output_shapes
: *
valueB 
e
Reshape_324Reshapesplit_8:102Reshape_324/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_325/shapeConst*
_output_shapes
: *
valueB *
dtype0
e
Reshape_325Reshapesplit_8:103Reshape_325/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_326/shapeConst*
dtype0*
_output_shapes
: *
valueB 
e
Reshape_326Reshapesplit_8:104Reshape_326/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_327/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_327Reshapesplit_8:105Reshape_327/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_328/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_328Reshapesplit_8:106Reshape_328/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_329/shapeConst*
_output_shapes
: *
dtype0*
valueB 
e
Reshape_329Reshapesplit_8:107Reshape_329/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_330/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_330Reshapesplit_8:108Reshape_330/shape*
Tshape0*
_output_shapes
: *
T0
T
Reshape_331/shapeConst*
dtype0*
valueB *
_output_shapes
: 
e
Reshape_331Reshapesplit_8:109Reshape_331/shape*
_output_shapes
: *
Tshape0*
T0
В
	Assign_64Assignmain/pi/dense/kernelReshape_222*
_output_shapes
:	<*
T0*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense/kernel
Њ
	Assign_65Assignmain/pi/dense/biasReshape_223*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*%
_class
loc:@main/pi/dense/bias
З
	Assign_66Assignmain/pi/dense_1/kernelReshape_224* 
_output_shapes
:
*
T0*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(
Ў
	Assign_67Assignmain/pi/dense_1/biasReshape_225*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
Ж
	Assign_68Assignmain/pi/dense_2/kernelReshape_226*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	
­
	Assign_69Assignmain/pi/dense_2/biasReshape_227*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
T0
Ж
	Assign_70Assignmain/pi/dense_3/kernelReshape_228*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
T0
­
	Assign_71Assignmain/pi/dense_3/biasReshape_229*
validate_shape(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
use_locking(
Д
	Assign_72Assignmain/qr1/dense/kernelReshape_230*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0*
use_locking(*
validate_shape(
Ќ
	Assign_73Assignmain/qr1/dense/biasReshape_231*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*&
_class
loc:@main/qr1/dense/bias
Й
	Assign_74Assignmain/qr1/dense_1/kernelReshape_232**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:

А
	Assign_75Assignmain/qr1/dense_1/biasReshape_233*
use_locking(*
validate_shape(*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
T0
И
	Assign_76Assignmain/qr1/dense_2/kernelReshape_234*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(
Џ
	Assign_77Assignmain/qr1/dense_2/biasReshape_235*(
_class
loc:@main/qr1/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
Д
	Assign_78Assignmain/qr2/dense/kernelReshape_236*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
validate_shape(*
T0
Ќ
	Assign_79Assignmain/qr2/dense/biasReshape_237*&
_class
loc:@main/qr2/dense/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
Й
	Assign_80Assignmain/qr2/dense_1/kernelReshape_238**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(
А
	Assign_81Assignmain/qr2/dense_1/biasReshape_239*
T0*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(
И
	Assign_82Assignmain/qr2/dense_2/kernelReshape_240*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
Џ
	Assign_83Assignmain/qr2/dense_2/biasReshape_241*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
В
	Assign_84Assignmain/qc/dense/kernelReshape_242*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
T0*
validate_shape(
Њ
	Assign_85Assignmain/qc/dense/biasReshape_243*
_output_shapes	
:*
use_locking(*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
T0
З
	Assign_86Assignmain/qc/dense_1/kernelReshape_244*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(
Ў
	Assign_87Assignmain/qc/dense_1/biasReshape_245*
T0*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
validate_shape(
Ж
	Assign_88Assignmain/qc/dense_2/kernelReshape_246*
_output_shapes
:	*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0
­
	Assign_89Assignmain/qc/dense_2/biasReshape_247*
use_locking(*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0
И
	Assign_90Assigntarget/qr1/dense/kernelReshape_248*
T0**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>*
validate_shape(*
use_locking(
А
	Assign_91Assigntarget/qr1/dense/biasReshape_249*
validate_shape(*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
T0*
use_locking(
Н
	Assign_92Assigntarget/qr1/dense_1/kernelReshape_250*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

Д
	Assign_93Assigntarget/qr1/dense_1/biasReshape_251*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias
М
	Assign_94Assigntarget/qr1/dense_2/kernelReshape_252*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel
Г
	Assign_95Assigntarget/qr1/dense_2/biasReshape_253*
_output_shapes
:*
use_locking(*
validate_shape(*
T0**
_class 
loc:@target/qr1/dense_2/bias
И
	Assign_96Assigntarget/qr2/dense/kernelReshape_254*
_output_shapes
:	>*
use_locking(*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense/kernel
А
	Assign_97Assigntarget/qr2/dense/biasReshape_255*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*(
_class
loc:@target/qr2/dense/bias
Н
	Assign_98Assigntarget/qr2/dense_1/kernelReshape_256*
T0* 
_output_shapes
:
*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel*
validate_shape(
Д
	Assign_99Assigntarget/qr2/dense_1/biasReshape_257*
validate_shape(**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
Н

Assign_100Assigntarget/qr2/dense_2/kernelReshape_258*
_output_shapes
:	*
validate_shape(*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0*
use_locking(
Д

Assign_101Assigntarget/qr2/dense_2/biasReshape_259*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
_output_shapes
:
З

Assign_102Assigntarget/qc/dense/kernelReshape_260*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
use_locking(*
_output_shapes
:	>*
T0
Џ

Assign_103Assigntarget/qc/dense/biasReshape_261*
validate_shape(*
_output_shapes	
:*
use_locking(*'
_class
loc:@target/qc/dense/bias*
T0
М

Assign_104Assigntarget/qc/dense_1/kernelReshape_262* 
_output_shapes
:
*
use_locking(*
validate_shape(*+
_class!
loc:@target/qc/dense_1/kernel*
T0
Г

Assign_105Assigntarget/qc/dense_1/biasReshape_263*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Л

Assign_106Assigntarget/qc/dense_2/kernelReshape_264*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
В

Assign_107Assigntarget/qc/dense_2/biasReshape_265*
_output_shapes
:*
use_locking(*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(*
T0
Є

Assign_108Assignentreg/soft_alphaReshape_266*
_output_shapes
: *
validate_shape(*$
_class
loc:@entreg/soft_alpha*
T0*
use_locking(
Є

Assign_109Assigncostpen/soft_betaReshape_267*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0*
use_locking(*
validate_shape(


Assign_110Assignbeta1_powerReshape_268*%
_class
loc:@main/pi/dense/bias*
T0*
use_locking(*
_output_shapes
: *
validate_shape(


Assign_111Assignbeta2_powerReshape_269*
use_locking(*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
validate_shape(*
T0
И

Assign_112Assignmain/pi/dense/kernel/AdamReshape_270*
T0*
validate_shape(*
_output_shapes
:	<*
use_locking(*'
_class
loc:@main/pi/dense/kernel
К

Assign_113Assignmain/pi/dense/kernel/Adam_1Reshape_271*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
validate_shape(*
T0
А

Assign_114Assignmain/pi/dense/bias/AdamReshape_272*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
В

Assign_115Assignmain/pi/dense/bias/Adam_1Reshape_273*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0
Н

Assign_116Assignmain/pi/dense_1/kernel/AdamReshape_274*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:

П

Assign_117Assignmain/pi/dense_1/kernel/Adam_1Reshape_275*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0
Д

Assign_118Assignmain/pi/dense_1/bias/AdamReshape_276*
T0*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
validate_shape(
Ж

Assign_119Assignmain/pi/dense_1/bias/Adam_1Reshape_277*
_output_shapes	
:*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
T0
М

Assign_120Assignmain/pi/dense_2/kernel/AdamReshape_278*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	
О

Assign_121Assignmain/pi/dense_2/kernel/Adam_1Reshape_279*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Г

Assign_122Assignmain/pi/dense_2/bias/AdamReshape_280*
T0*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
Е

Assign_123Assignmain/pi/dense_2/bias/Adam_1Reshape_281*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0
М

Assign_124Assignmain/pi/dense_3/kernel/AdamReshape_282*
T0*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	
О

Assign_125Assignmain/pi/dense_3/kernel/Adam_1Reshape_283*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(
Г

Assign_126Assignmain/pi/dense_3/bias/AdamReshape_284*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
use_locking(*
T0
Е

Assign_127Assignmain/pi/dense_3/bias/Adam_1Reshape_285*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias
Ё

Assign_128Assignbeta1_power_1Reshape_286*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
validate_shape(
Ё

Assign_129Assignbeta2_power_1Reshape_287*
T0*
_output_shapes
: *
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(
К

Assign_130Assignmain/qr1/dense/kernel/AdamReshape_288*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>
М

Assign_131Assignmain/qr1/dense/kernel/Adam_1Reshape_289*
T0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
validate_shape(*
use_locking(
В

Assign_132Assignmain/qr1/dense/bias/AdamReshape_290*
use_locking(*
_output_shapes	
:*
T0*&
_class
loc:@main/qr1/dense/bias*
validate_shape(
Д

Assign_133Assignmain/qr1/dense/bias/Adam_1Reshape_291*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@main/qr1/dense/bias*
validate_shape(
П

Assign_134Assignmain/qr1/dense_1/kernel/AdamReshape_292* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(*
T0*
validate_shape(
С

Assign_135Assignmain/qr1/dense_1/kernel/Adam_1Reshape_293*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(*
T0
Ж

Assign_136Assignmain/qr1/dense_1/bias/AdamReshape_294*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
validate_shape(
И

Assign_137Assignmain/qr1/dense_1/bias/Adam_1Reshape_295*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
О

Assign_138Assignmain/qr1/dense_2/kernel/AdamReshape_296*
validate_shape(*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(
Р

Assign_139Assignmain/qr1/dense_2/kernel/Adam_1Reshape_297**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Е

Assign_140Assignmain/qr1/dense_2/bias/AdamReshape_298*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias
З

Assign_141Assignmain/qr1/dense_2/bias/Adam_1Reshape_299*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_2/bias
К

Assign_142Assignmain/qr2/dense/kernel/AdamReshape_300*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(
М

Assign_143Assignmain/qr2/dense/kernel/Adam_1Reshape_301*
use_locking(*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(
В

Assign_144Assignmain/qr2/dense/bias/AdamReshape_302*
T0*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
Д

Assign_145Assignmain/qr2/dense/bias/Adam_1Reshape_303*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias
П

Assign_146Assignmain/qr2/dense_1/kernel/AdamReshape_304*
T0*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking(
С

Assign_147Assignmain/qr2/dense_1/kernel/Adam_1Reshape_305*
use_locking(*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0
Ж

Assign_148Assignmain/qr2/dense_1/bias/AdamReshape_306*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
И

Assign_149Assignmain/qr2/dense_1/bias/Adam_1Reshape_307*
_output_shapes	
:*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
T0
О

Assign_150Assignmain/qr2/dense_2/kernel/AdamReshape_308*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
use_locking(
Р

Assign_151Assignmain/qr2/dense_2/kernel/Adam_1Reshape_309*
_output_shapes
:	*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(
Е

Assign_152Assignmain/qr2/dense_2/bias/AdamReshape_310*
_output_shapes
:*
T0*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(*
validate_shape(
З

Assign_153Assignmain/qr2/dense_2/bias/Adam_1Reshape_311*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias
И

Assign_154Assignmain/qc/dense/kernel/AdamReshape_312*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	>
К

Assign_155Assignmain/qc/dense/kernel/Adam_1Reshape_313*
validate_shape(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(
А

Assign_156Assignmain/qc/dense/bias/AdamReshape_314*
validate_shape(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0
В

Assign_157Assignmain/qc/dense/bias/Adam_1Reshape_315*
T0*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(*
_output_shapes	
:
Н

Assign_158Assignmain/qc/dense_1/kernel/AdamReshape_316*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0*)
_class
loc:@main/qc/dense_1/kernel
П

Assign_159Assignmain/qc/dense_1/kernel/Adam_1Reshape_317*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(
Д

Assign_160Assignmain/qc/dense_1/bias/AdamReshape_318*
validate_shape(*
T0*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
use_locking(
Ж

Assign_161Assignmain/qc/dense_1/bias/Adam_1Reshape_319*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
М

Assign_162Assignmain/qc/dense_2/kernel/AdamReshape_320*
validate_shape(*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0
О

Assign_163Assignmain/qc/dense_2/kernel/Adam_1Reshape_321*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
Г

Assign_164Assignmain/qc/dense_2/bias/AdamReshape_322*'
_class
loc:@main/qc/dense_2/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
Е

Assign_165Assignmain/qc/dense_2/bias/Adam_1Reshape_323*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
use_locking(
 

Assign_166Assignbeta1_power_2Reshape_324*
use_locking(*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
 

Assign_167Assignbeta2_power_2Reshape_325*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: *
validate_shape(
Љ

Assign_168Assignentreg/soft_alpha/AdamReshape_326*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
Ћ

Assign_169Assignentreg/soft_alpha/Adam_1Reshape_327*
validate_shape(*
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
 

Assign_170Assignbeta1_power_3Reshape_328*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
 

Assign_171Assignbeta2_power_3Reshape_329*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0*
validate_shape(
Љ

Assign_172Assigncostpen/soft_beta/AdamReshape_330*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
Ћ

Assign_173Assigncostpen/soft_beta/Adam_1Reshape_331*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta

group_deps_13NoOp^Assign_100^Assign_101^Assign_102^Assign_103^Assign_104^Assign_105^Assign_106^Assign_107^Assign_108^Assign_109^Assign_110^Assign_111^Assign_112^Assign_113^Assign_114^Assign_115^Assign_116^Assign_117^Assign_118^Assign_119^Assign_120^Assign_121^Assign_122^Assign_123^Assign_124^Assign_125^Assign_126^Assign_127^Assign_128^Assign_129^Assign_130^Assign_131^Assign_132^Assign_133^Assign_134^Assign_135^Assign_136^Assign_137^Assign_138^Assign_139^Assign_140^Assign_141^Assign_142^Assign_143^Assign_144^Assign_145^Assign_146^Assign_147^Assign_148^Assign_149^Assign_150^Assign_151^Assign_152^Assign_153^Assign_154^Assign_155^Assign_156^Assign_157^Assign_158^Assign_159^Assign_160^Assign_161^Assign_162^Assign_163^Assign_164^Assign_165^Assign_166^Assign_167^Assign_168^Assign_169^Assign_170^Assign_171^Assign_172^Assign_173
^Assign_64
^Assign_65
^Assign_66
^Assign_67
^Assign_68
^Assign_69
^Assign_70
^Assign_71
^Assign_72
^Assign_73
^Assign_74
^Assign_75
^Assign_76
^Assign_77
^Assign_78
^Assign_79
^Assign_80
^Assign_81
^Assign_82
^Assign_83
^Assign_84
^Assign_85
^Assign_86
^Assign_87
^Assign_88
^Assign_89
^Assign_90
^Assign_91
^Assign_92
^Assign_93
^Assign_94
^Assign_95
^Assign_96
^Assign_97
^Assign_98
^Assign_99
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_49c6ca94a8a14d99a1c981799fe953e8/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
а
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:n*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
Т
save/SaveV2/shape_and_slicesConst*
_output_shapes
:n*
dtype0*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Я
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
г
save/RestoreV2/tensor_namesConst*
dtype0*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes
:n
Х
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:n*
dtype0*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Д
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*|
dtypesr
p2n
Ѓ
save/AssignAssignbeta1_powersave/RestoreV2*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
Љ
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
use_locking(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(
Ј
save/Assign_2Assignbeta1_power_2save/RestoreV2:2*
_output_shapes
: *
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(
Ј
save/Assign_3Assignbeta1_power_3save/RestoreV2:3*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(
Ї
save/Assign_4Assignbeta2_powersave/RestoreV2:4*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: 
Љ
save/Assign_5Assignbeta2_power_1save/RestoreV2:5*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
_output_shapes
: 
Ј
save/Assign_6Assignbeta2_power_2save/RestoreV2:6*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
Ј
save/Assign_7Assignbeta2_power_3save/RestoreV2:7*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(*
T0
Ќ
save/Assign_8Assigncostpen/soft_betasave/RestoreV2:8*
validate_shape(*
use_locking(*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
Б
save/Assign_9Assigncostpen/soft_beta/Adamsave/RestoreV2:9*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0
Е
save/Assign_10Assigncostpen/soft_beta/Adam_1save/RestoreV2:10*
T0*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
use_locking(
Ў
save/Assign_11Assignentreg/soft_alphasave/RestoreV2:11*$
_class
loc:@entreg/soft_alpha*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
Г
save/Assign_12Assignentreg/soft_alpha/Adamsave/RestoreV2:12*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
use_locking(*
T0*
validate_shape(
Е
save/Assign_13Assignentreg/soft_alpha/Adam_1save/RestoreV2:13*
use_locking(*
_output_shapes
: *
validate_shape(*$
_class
loc:@entreg/soft_alpha*
T0
Е
save/Assign_14Assignmain/pi/dense/biassave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:
К
save/Assign_15Assignmain/pi/dense/bias/Adamsave/RestoreV2:15*
validate_shape(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0
М
save/Assign_16Assignmain/pi/dense/bias/Adam_1save/RestoreV2:16*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
Н
save/Assign_17Assignmain/pi/dense/kernelsave/RestoreV2:17*
_output_shapes
:	<*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/pi/dense/kernel
Т
save/Assign_18Assignmain/pi/dense/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*
_output_shapes
:	<*
validate_shape(*'
_class
loc:@main/pi/dense/kernel
Ф
save/Assign_19Assignmain/pi/dense/kernel/Adam_1save/RestoreV2:19*
T0*
_output_shapes
:	<*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(
Й
save/Assign_20Assignmain/pi/dense_1/biassave/RestoreV2:20*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias
О
save/Assign_21Assignmain/pi/dense_1/bias/Adamsave/RestoreV2:21*
T0*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
validate_shape(
Р
save/Assign_22Assignmain/pi/dense_1/bias/Adam_1save/RestoreV2:22*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias
Т
save/Assign_23Assignmain/pi/dense_1/kernelsave/RestoreV2:23*
T0* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(
Ч
save/Assign_24Assignmain/pi/dense_1/kernel/Adamsave/RestoreV2:24* 
_output_shapes
:
*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0*
use_locking(
Щ
save/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save/RestoreV2:25*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:

И
save/Assign_26Assignmain/pi/dense_2/biassave/RestoreV2:26*
T0*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
_output_shapes
:
Н
save/Assign_27Assignmain/pi/dense_2/bias/Adamsave/RestoreV2:27*'
_class
loc:@main/pi/dense_2/bias*
T0*
use_locking(*
_output_shapes
:*
validate_shape(
П
save/Assign_28Assignmain/pi/dense_2/bias/Adam_1save/RestoreV2:28*
T0*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(
С
save/Assign_29Assignmain/pi/dense_2/kernelsave/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0
Ц
save/Assign_30Assignmain/pi/dense_2/kernel/Adamsave/RestoreV2:30*
T0*
validate_shape(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(
Ш
save/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save/RestoreV2:31*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel
И
save/Assign_32Assignmain/pi/dense_3/biassave/RestoreV2:32*
_output_shapes
:*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
use_locking(
Н
save/Assign_33Assignmain/pi/dense_3/bias/Adamsave/RestoreV2:33*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias
П
save/Assign_34Assignmain/pi/dense_3/bias/Adam_1save/RestoreV2:34*'
_class
loc:@main/pi/dense_3/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
С
save/Assign_35Assignmain/pi/dense_3/kernelsave/RestoreV2:35*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
use_locking(
Ц
save/Assign_36Assignmain/pi/dense_3/kernel/Adamsave/RestoreV2:36*)
_class
loc:@main/pi/dense_3/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Ш
save/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save/RestoreV2:37*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
T0*
validate_shape(
Е
save/Assign_38Assignmain/qc/dense/biassave/RestoreV2:38*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
К
save/Assign_39Assignmain/qc/dense/bias/Adamsave/RestoreV2:39*
use_locking(*
T0*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
_output_shapes	
:
М
save/Assign_40Assignmain/qc/dense/bias/Adam_1save/RestoreV2:40*
_output_shapes	
:*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0
Н
save/Assign_41Assignmain/qc/dense/kernelsave/RestoreV2:41*
use_locking(*
T0*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>
Т
save/Assign_42Assignmain/qc/dense/kernel/Adamsave/RestoreV2:42*
T0*
validate_shape(*
_output_shapes
:	>*
use_locking(*'
_class
loc:@main/qc/dense/kernel
Ф
save/Assign_43Assignmain/qc/dense/kernel/Adam_1save/RestoreV2:43*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
Й
save/Assign_44Assignmain/qc/dense_1/biassave/RestoreV2:44*
validate_shape(*
T0*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
_output_shapes	
:
О
save/Assign_45Assignmain/qc/dense_1/bias/Adamsave/RestoreV2:45*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0*
use_locking(*
validate_shape(
Р
save/Assign_46Assignmain/qc/dense_1/bias/Adam_1save/RestoreV2:46*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0*
use_locking(*
validate_shape(
Т
save/Assign_47Assignmain/qc/dense_1/kernelsave/RestoreV2:47* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel
Ч
save/Assign_48Assignmain/qc/dense_1/kernel/Adamsave/RestoreV2:48*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
Щ
save/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save/RestoreV2:49*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0
И
save/Assign_50Assignmain/qc/dense_2/biassave/RestoreV2:50*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
Н
save/Assign_51Assignmain/qc/dense_2/bias/Adamsave/RestoreV2:51*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
П
save/Assign_52Assignmain/qc/dense_2/bias/Adam_1save/RestoreV2:52*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
use_locking(
С
save/Assign_53Assignmain/qc/dense_2/kernelsave/RestoreV2:53*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	
Ц
save/Assign_54Assignmain/qc/dense_2/kernel/Adamsave/RestoreV2:54*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0*
use_locking(*
validate_shape(
Ш
save/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save/RestoreV2:55*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
validate_shape(*
T0
З
save/Assign_56Assignmain/qr1/dense/biassave/RestoreV2:56*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr1/dense/bias
М
save/Assign_57Assignmain/qr1/dense/bias/Adamsave/RestoreV2:57*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:
О
save/Assign_58Assignmain/qr1/dense/bias/Adam_1save/RestoreV2:58*
T0*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(
П
save/Assign_59Assignmain/qr1/dense/kernelsave/RestoreV2:59*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
T0
Ф
save/Assign_60Assignmain/qr1/dense/kernel/Adamsave/RestoreV2:60*
_output_shapes
:	>*
use_locking(*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel
Ц
save/Assign_61Assignmain/qr1/dense/kernel/Adam_1save/RestoreV2:61*
use_locking(*
_output_shapes
:	>*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense/kernel
Л
save/Assign_62Assignmain/qr1/dense_1/biassave/RestoreV2:62*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Р
save/Assign_63Assignmain/qr1/dense_1/bias/Adamsave/RestoreV2:63*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_1/bias
Т
save/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save/RestoreV2:64*
_output_shapes	
:*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
T0
Ф
save/Assign_65Assignmain/qr1/dense_1/kernelsave/RestoreV2:65**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:

Щ
save/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave/RestoreV2:66*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(
Ы
save/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save/RestoreV2:67*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(* 
_output_shapes
:

К
save/Assign_68Assignmain/qr1/dense_2/biassave/RestoreV2:68*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias
П
save/Assign_69Assignmain/qr1/dense_2/bias/Adamsave/RestoreV2:69*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
validate_shape(
С
save/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save/RestoreV2:70*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias
У
save/Assign_71Assignmain/qr1/dense_2/kernelsave/RestoreV2:71**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
_output_shapes
:	*
T0*
validate_shape(
Ш
save/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave/RestoreV2:72*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel
Ъ
save/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save/RestoreV2:73*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_2/kernel
З
save/Assign_74Assignmain/qr2/dense/biassave/RestoreV2:74*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
T0*
_output_shapes	
:*
validate_shape(
М
save/Assign_75Assignmain/qr2/dense/bias/Adamsave/RestoreV2:75*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
use_locking(*
T0
О
save/Assign_76Assignmain/qr2/dense/bias/Adam_1save/RestoreV2:76*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0
П
save/Assign_77Assignmain/qr2/dense/kernelsave/RestoreV2:77*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense/kernel
Ф
save/Assign_78Assignmain/qr2/dense/kernel/Adamsave/RestoreV2:78*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0*
validate_shape(*
use_locking(
Ц
save/Assign_79Assignmain/qr2/dense/kernel/Adam_1save/RestoreV2:79*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0*
validate_shape(*
use_locking(
Л
save/Assign_80Assignmain/qr2/dense_1/biassave/RestoreV2:80*
_output_shapes	
:*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(
Р
save/Assign_81Assignmain/qr2/dense_1/bias/Adamsave/RestoreV2:81*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Т
save/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save/RestoreV2:82*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ф
save/Assign_83Assignmain/qr2/dense_1/kernelsave/RestoreV2:83*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0
Щ
save/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave/RestoreV2:84**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ы
save/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save/RestoreV2:85*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking(
К
save/Assign_86Assignmain/qr2/dense_2/biassave/RestoreV2:86*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
П
save/Assign_87Assignmain/qr2/dense_2/bias/Adamsave/RestoreV2:87*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
T0
С
save/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save/RestoreV2:88*
use_locking(*
_output_shapes
:*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_2/bias
У
save/Assign_89Assignmain/qr2/dense_2/kernelsave/RestoreV2:89**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(
Ш
save/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave/RestoreV2:90*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
validate_shape(
Ъ
save/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save/RestoreV2:91*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
use_locking(*
validate_shape(
Й
save/Assign_92Assigntarget/qc/dense/biassave/RestoreV2:92*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*'
_class
loc:@target/qc/dense/bias
С
save/Assign_93Assigntarget/qc/dense/kernelsave/RestoreV2:93*
_output_shapes
:	>*)
_class
loc:@target/qc/dense/kernel*
validate_shape(*
use_locking(*
T0
Н
save/Assign_94Assigntarget/qc/dense_1/biassave/RestoreV2:94*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*)
_class
loc:@target/qc/dense_1/bias
Ц
save/Assign_95Assigntarget/qc/dense_1/kernelsave/RestoreV2:95*
T0*
use_locking(*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(* 
_output_shapes
:

М
save/Assign_96Assigntarget/qc/dense_2/biassave/RestoreV2:96*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias*
T0*
use_locking(*
_output_shapes
:
Х
save/Assign_97Assigntarget/qc/dense_2/kernelsave/RestoreV2:97*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	
Л
save/Assign_98Assigntarget/qr1/dense/biassave/RestoreV2:98*
T0*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
validate_shape(*
use_locking(
У
save/Assign_99Assigntarget/qr1/dense/kernelsave/RestoreV2:99*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense/kernel*
T0*
_output_shapes
:	>
С
save/Assign_100Assigntarget/qr1/dense_1/biassave/RestoreV2:100*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(*
T0*
validate_shape(
Ъ
save/Assign_101Assigntarget/qr1/dense_1/kernelsave/RestoreV2:101* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
use_locking(*
validate_shape(
Р
save/Assign_102Assigntarget/qr1/dense_2/biassave/RestoreV2:102*
validate_shape(**
_class 
loc:@target/qr1/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
Щ
save/Assign_103Assigntarget/qr1/dense_2/kernelsave/RestoreV2:103*
validate_shape(*
T0*
_output_shapes
:	*
use_locking(*,
_class"
 loc:@target/qr1/dense_2/kernel
Н
save/Assign_104Assigntarget/qr2/dense/biassave/RestoreV2:104*
_output_shapes	
:*
T0*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
validate_shape(
Х
save/Assign_105Assigntarget/qr2/dense/kernelsave/RestoreV2:105*
_output_shapes
:	>**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
T0*
validate_shape(
С
save/Assign_106Assigntarget/qr2/dense_1/biassave/RestoreV2:106*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0**
_class 
loc:@target/qr2/dense_1/bias
Ъ
save/Assign_107Assigntarget/qr2/dense_1/kernelsave/RestoreV2:107*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*
T0*
use_locking(
Р
save/Assign_108Assigntarget/qr2/dense_2/biassave/RestoreV2:108*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
use_locking(*
T0
Щ
save/Assign_109Assigntarget/qr2/dense_2/kernelsave/RestoreV2:109*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_2/kernel
ц
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
shape: *
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_71e75865b4314a57a845cb94655d0607/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
в
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:n*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
Ф
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:n*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
з
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
T0*
_output_shapes
:*
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
е
save_1/RestoreV2/tensor_namesConst*
dtype0*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes
:n
Ч
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:n*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
М
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*|
dtypesr
p2n*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Ї
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(
­
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*%
_class
loc:@main/qc/dense/bias
Ќ
save_1/Assign_2Assignbeta1_power_2save_1/RestoreV2:2*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
validate_shape(*
use_locking(*
T0
Ќ
save_1/Assign_3Assignbeta1_power_3save_1/RestoreV2:3*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta
Ћ
save_1/Assign_4Assignbeta2_powersave_1/RestoreV2:4*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
T0*
_output_shapes
: *
use_locking(
­
save_1/Assign_5Assignbeta2_power_1save_1/RestoreV2:5*
use_locking(*
T0*
_output_shapes
: *
validate_shape(*%
_class
loc:@main/qc/dense/bias
Ќ
save_1/Assign_6Assignbeta2_power_2save_1/RestoreV2:6*
validate_shape(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0*
use_locking(
Ќ
save_1/Assign_7Assignbeta2_power_3save_1/RestoreV2:7*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
А
save_1/Assign_8Assigncostpen/soft_betasave_1/RestoreV2:8*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
Е
save_1/Assign_9Assigncostpen/soft_beta/Adamsave_1/RestoreV2:9*
T0*
_output_shapes
: *
validate_shape(*$
_class
loc:@costpen/soft_beta*
use_locking(
Й
save_1/Assign_10Assigncostpen/soft_beta/Adam_1save_1/RestoreV2:10*
use_locking(*
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta*
validate_shape(
В
save_1/Assign_11Assignentreg/soft_alphasave_1/RestoreV2:11*
T0*
validate_shape(*
_output_shapes
: *
use_locking(*$
_class
loc:@entreg/soft_alpha
З
save_1/Assign_12Assignentreg/soft_alpha/Adamsave_1/RestoreV2:12*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha
Й
save_1/Assign_13Assignentreg/soft_alpha/Adam_1save_1/RestoreV2:13*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha
Й
save_1/Assign_14Assignmain/pi/dense/biassave_1/RestoreV2:14*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes	
:
О
save_1/Assign_15Assignmain/pi/dense/bias/Adamsave_1/RestoreV2:15*
validate_shape(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
T0*
use_locking(
Р
save_1/Assign_16Assignmain/pi/dense/bias/Adam_1save_1/RestoreV2:16*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(
С
save_1/Assign_17Assignmain/pi/dense/kernelsave_1/RestoreV2:17*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<
Ц
save_1/Assign_18Assignmain/pi/dense/kernel/Adamsave_1/RestoreV2:18*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
T0*
use_locking(
Ш
save_1/Assign_19Assignmain/pi/dense/kernel/Adam_1save_1/RestoreV2:19*
_output_shapes
:	<*
T0*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
use_locking(
Н
save_1/Assign_20Assignmain/pi/dense_1/biassave_1/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
Т
save_1/Assign_21Assignmain/pi/dense_1/bias/Adamsave_1/RestoreV2:21*
use_locking(*
T0*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
_output_shapes	
:
Ф
save_1/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_1/RestoreV2:22*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
use_locking(*
T0
Ц
save_1/Assign_23Assignmain/pi/dense_1/kernelsave_1/RestoreV2:23*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:

Ы
save_1/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_1/RestoreV2:24*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

Э
save_1/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_1/RestoreV2:25*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:

М
save_1/Assign_26Assignmain/pi/dense_2/biassave_1/RestoreV2:26*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
С
save_1/Assign_27Assignmain/pi/dense_2/bias/Adamsave_1/RestoreV2:27*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
У
save_1/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_1/RestoreV2:28*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
T0*
validate_shape(
Х
save_1/Assign_29Assignmain/pi/dense_2/kernelsave_1/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
Ъ
save_1/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_1/RestoreV2:30*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@main/pi/dense_2/kernel
Ь
save_1/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_1/RestoreV2:31*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel
М
save_1/Assign_32Assignmain/pi/dense_3/biassave_1/RestoreV2:32*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
validate_shape(*
use_locking(
С
save_1/Assign_33Assignmain/pi/dense_3/bias/Adamsave_1/RestoreV2:33*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias
У
save_1/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_1/RestoreV2:34*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_3/bias
Х
save_1/Assign_35Assignmain/pi/dense_3/kernelsave_1/RestoreV2:35*)
_class
loc:@main/pi/dense_3/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
Ъ
save_1/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_1/RestoreV2:36*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_3/kernel
Ь
save_1/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_1/RestoreV2:37*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel
Й
save_1/Assign_38Assignmain/qc/dense/biassave_1/RestoreV2:38*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias
О
save_1/Assign_39Assignmain/qc/dense/bias/Adamsave_1/RestoreV2:39*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias
Р
save_1/Assign_40Assignmain/qc/dense/bias/Adam_1save_1/RestoreV2:40*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
use_locking(*
validate_shape(*
T0
С
save_1/Assign_41Assignmain/qc/dense/kernelsave_1/RestoreV2:41*
T0*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>
Ц
save_1/Assign_42Assignmain/qc/dense/kernel/Adamsave_1/RestoreV2:42*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
Ш
save_1/Assign_43Assignmain/qc/dense/kernel/Adam_1save_1/RestoreV2:43*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	>*
T0
Н
save_1/Assign_44Assignmain/qc/dense_1/biassave_1/RestoreV2:44*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
Т
save_1/Assign_45Assignmain/qc/dense_1/bias/Adamsave_1/RestoreV2:45*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias
Ф
save_1/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_1/RestoreV2:46*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
Ц
save_1/Assign_47Assignmain/qc/dense_1/kernelsave_1/RestoreV2:47*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(*
use_locking(
Ы
save_1/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_1/RestoreV2:48* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
T0*
validate_shape(*
use_locking(
Э
save_1/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_1/RestoreV2:49*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel
М
save_1/Assign_50Assignmain/qc/dense_2/biassave_1/RestoreV2:50*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
С
save_1/Assign_51Assignmain/qc/dense_2/bias/Adamsave_1/RestoreV2:51*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias
У
save_1/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_1/RestoreV2:52*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0
Х
save_1/Assign_53Assignmain/qc/dense_2/kernelsave_1/RestoreV2:53*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
Ъ
save_1/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_1/RestoreV2:54*
use_locking(*
T0*)
_class
loc:@main/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
Ь
save_1/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_1/RestoreV2:55*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel
Л
save_1/Assign_56Assignmain/qr1/dense/biassave_1/RestoreV2:56*
validate_shape(*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
T0
Р
save_1/Assign_57Assignmain/qr1/dense/bias/Adamsave_1/RestoreV2:57*&
_class
loc:@main/qr1/dense/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
Т
save_1/Assign_58Assignmain/qr1/dense/bias/Adam_1save_1/RestoreV2:58*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
T0*
use_locking(
У
save_1/Assign_59Assignmain/qr1/dense/kernelsave_1/RestoreV2:59*
_output_shapes
:	>*
validate_shape(*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
T0
Ш
save_1/Assign_60Assignmain/qr1/dense/kernel/Adamsave_1/RestoreV2:60*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(
Ъ
save_1/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_1/RestoreV2:61*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
use_locking(*
T0
П
save_1/Assign_62Assignmain/qr1/dense_1/biassave_1/RestoreV2:62*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ф
save_1/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_1/RestoreV2:63*
_output_shapes	
:*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(
Ц
save_1/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_1/RestoreV2:64*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*(
_class
loc:@main/qr1/dense_1/bias
Ш
save_1/Assign_65Assignmain/qr1/dense_1/kernelsave_1/RestoreV2:65**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(
Э
save_1/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_1/RestoreV2:66*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(* 
_output_shapes
:

Я
save_1/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_1/RestoreV2:67*
validate_shape(*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:

О
save_1/Assign_68Assignmain/qr1/dense_2/biassave_1/RestoreV2:68*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
У
save_1/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_1/RestoreV2:69*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:
Х
save_1/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_1/RestoreV2:70*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
Ч
save_1/Assign_71Assignmain/qr1/dense_2/kernelsave_1/RestoreV2:71*
T0*
use_locking(*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(
Ь
save_1/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_1/RestoreV2:72*
validate_shape(*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	
Ю
save_1/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_1/RestoreV2:73*
_output_shapes
:	*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(
Л
save_1/Assign_74Assignmain/qr2/dense/biassave_1/RestoreV2:74*
T0*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
Р
save_1/Assign_75Assignmain/qr2/dense/bias/Adamsave_1/RestoreV2:75*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Т
save_1/Assign_76Assignmain/qr2/dense/bias/Adam_1save_1/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
У
save_1/Assign_77Assignmain/qr2/dense/kernelsave_1/RestoreV2:77*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(
Ш
save_1/Assign_78Assignmain/qr2/dense/kernel/Adamsave_1/RestoreV2:78*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	>
Ъ
save_1/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_1/RestoreV2:79*
use_locking(*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
T0*
_output_shapes
:	>
П
save_1/Assign_80Assignmain/qr2/dense_1/biassave_1/RestoreV2:80*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_1/bias
Ф
save_1/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_1/RestoreV2:81*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
Ц
save_1/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_1/RestoreV2:82*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_1/bias
Ш
save_1/Assign_83Assignmain/qr2/dense_1/kernelsave_1/RestoreV2:83* 
_output_shapes
:
*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0
Э
save_1/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_1/RestoreV2:84**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:

Я
save_1/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_1/RestoreV2:85*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking(
О
save_1/Assign_86Assignmain/qr2/dense_2/biassave_1/RestoreV2:86*
use_locking(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
T0*
validate_shape(
У
save_1/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_1/RestoreV2:87*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
Х
save_1/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_1/RestoreV2:88*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias
Ч
save_1/Assign_89Assignmain/qr2/dense_2/kernelsave_1/RestoreV2:89*
validate_shape(*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(
Ь
save_1/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_1/RestoreV2:90*
use_locking(*
_output_shapes
:	*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(
Ю
save_1/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_1/RestoreV2:91**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(
Н
save_1/Assign_92Assigntarget/qc/dense/biassave_1/RestoreV2:92*
use_locking(*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
_output_shapes	
:*
T0
Х
save_1/Assign_93Assigntarget/qc/dense/kernelsave_1/RestoreV2:93*
validate_shape(*
use_locking(*
_output_shapes
:	>*)
_class
loc:@target/qc/dense/kernel*
T0
С
save_1/Assign_94Assigntarget/qc/dense_1/biassave_1/RestoreV2:94*)
_class
loc:@target/qc/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Ъ
save_1/Assign_95Assigntarget/qc/dense_1/kernelsave_1/RestoreV2:95*
use_locking(*
validate_shape(*
T0*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:

Р
save_1/Assign_96Assigntarget/qc/dense_2/biassave_1/RestoreV2:96*
T0*
validate_shape(*
use_locking(*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:
Щ
save_1/Assign_97Assigntarget/qc/dense_2/kernelsave_1/RestoreV2:97*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
П
save_1/Assign_98Assigntarget/qr1/dense/biassave_1/RestoreV2:98*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0
Ч
save_1/Assign_99Assigntarget/qr1/dense/kernelsave_1/RestoreV2:99*
validate_shape(*
T0*
use_locking(**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>
Х
save_1/Assign_100Assigntarget/qr1/dense_1/biassave_1/RestoreV2:100*
validate_shape(*
T0*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(
Ю
save_1/Assign_101Assigntarget/qr1/dense_1/kernelsave_1/RestoreV2:101*
validate_shape(*
use_locking(* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0
Ф
save_1/Assign_102Assigntarget/qr1/dense_2/biassave_1/RestoreV2:102*
validate_shape(*
T0*
use_locking(**
_class 
loc:@target/qr1/dense_2/bias*
_output_shapes
:
Э
save_1/Assign_103Assigntarget/qr1/dense_2/kernelsave_1/RestoreV2:103*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0
С
save_1/Assign_104Assigntarget/qr2/dense/biassave_1/RestoreV2:104*(
_class
loc:@target/qr2/dense/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Щ
save_1/Assign_105Assigntarget/qr2/dense/kernelsave_1/RestoreV2:105*
_output_shapes
:	>*
T0*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(
Х
save_1/Assign_106Assigntarget/qr2/dense_1/biassave_1/RestoreV2:106*
_output_shapes	
:*
use_locking(**
_class 
loc:@target/qr2/dense_1/bias*
T0*
validate_shape(
Ю
save_1/Assign_107Assigntarget/qr2/dense_1/kernelsave_1/RestoreV2:107* 
_output_shapes
:
*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
use_locking(
Ф
save_1/Assign_108Assigntarget/qr2/dense_2/biassave_1/RestoreV2:108*
use_locking(*
T0**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
_output_shapes
:
Э
save_1/Assign_109Assigntarget/qr2/dense_2/kernelsave_1/RestoreV2:109*
T0*
use_locking(*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel*
validate_shape(
Ф
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
shape: *
_output_shapes
: 

save_2/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_97d4c1c4cef24287b16c9ec9bce9c9d0/part
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_2/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_2/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
в
save_2/SaveV2/tensor_namesConst*
_output_shapes
:n*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0
Ф
save_2/SaveV2/shape_and_slicesConst*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:n
з
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_2/ShardedFilename
Ѓ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*

axis *
_output_shapes
:*
T0*
N

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
е
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:n*
valueљBіnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
Ч
!save_2/RestoreV2/shape_and_slicesConst*
dtype0*ё
valueчBфnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:n
М
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*|
dtypesr
p2n*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Ї
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: *
use_locking(
­
save_2/Assign_1Assignbeta1_power_1save_2/RestoreV2:1*
T0*
_output_shapes
: *
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(
Ќ
save_2/Assign_2Assignbeta1_power_2save_2/RestoreV2:2*$
_class
loc:@entreg/soft_alpha*
T0*
use_locking(*
validate_shape(*
_output_shapes
: 
Ќ
save_2/Assign_3Assignbeta1_power_3save_2/RestoreV2:3*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta
Ћ
save_2/Assign_4Assignbeta2_powersave_2/RestoreV2:4*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes
: 
­
save_2/Assign_5Assignbeta2_power_1save_2/RestoreV2:5*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
use_locking(
Ќ
save_2/Assign_6Assignbeta2_power_2save_2/RestoreV2:6*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
validate_shape(
Ќ
save_2/Assign_7Assignbeta2_power_3save_2/RestoreV2:7*
use_locking(*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(
А
save_2/Assign_8Assigncostpen/soft_betasave_2/RestoreV2:8*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
Е
save_2/Assign_9Assigncostpen/soft_beta/Adamsave_2/RestoreV2:9*
use_locking(*
_output_shapes
: *
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0
Й
save_2/Assign_10Assigncostpen/soft_beta/Adam_1save_2/RestoreV2:10*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*$
_class
loc:@costpen/soft_beta
В
save_2/Assign_11Assignentreg/soft_alphasave_2/RestoreV2:11*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
З
save_2/Assign_12Assignentreg/soft_alpha/Adamsave_2/RestoreV2:12*
_output_shapes
: *
validate_shape(*$
_class
loc:@entreg/soft_alpha*
T0*
use_locking(
Й
save_2/Assign_13Assignentreg/soft_alpha/Adam_1save_2/RestoreV2:13*
use_locking(*
T0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
validate_shape(
Й
save_2/Assign_14Assignmain/pi/dense/biassave_2/RestoreV2:14*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias
О
save_2/Assign_15Assignmain/pi/dense/bias/Adamsave_2/RestoreV2:15*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
Р
save_2/Assign_16Assignmain/pi/dense/bias/Adam_1save_2/RestoreV2:16*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
С
save_2/Assign_17Assignmain/pi/dense/kernelsave_2/RestoreV2:17*
validate_shape(*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
T0
Ц
save_2/Assign_18Assignmain/pi/dense/kernel/Adamsave_2/RestoreV2:18*
validate_shape(*
T0*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<
Ш
save_2/Assign_19Assignmain/pi/dense/kernel/Adam_1save_2/RestoreV2:19*
validate_shape(*
T0*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
_output_shapes
:	<
Н
save_2/Assign_20Assignmain/pi/dense_1/biassave_2/RestoreV2:20*
validate_shape(*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
T0
Т
save_2/Assign_21Assignmain/pi/dense_1/bias/Adamsave_2/RestoreV2:21*
T0*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
validate_shape(
Ф
save_2/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_2/RestoreV2:22*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:
Ц
save_2/Assign_23Assignmain/pi/dense_1/kernelsave_2/RestoreV2:23*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
T0
Ы
save_2/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_2/RestoreV2:24*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
use_locking(*
T0
Э
save_2/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_2/RestoreV2:25*
use_locking(* 
_output_shapes
:
*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0
М
save_2/Assign_26Assignmain/pi/dense_2/biassave_2/RestoreV2:26*
use_locking(*
T0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
validate_shape(
С
save_2/Assign_27Assignmain/pi/dense_2/bias/Adamsave_2/RestoreV2:27*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
_output_shapes
:
У
save_2/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_2/RestoreV2:28*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
_output_shapes
:
Х
save_2/Assign_29Assignmain/pi/dense_2/kernelsave_2/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0
Ъ
save_2/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_2/RestoreV2:30*
T0*
_output_shapes
:	*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(
Ь
save_2/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_2/RestoreV2:31*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
T0*
validate_shape(*
use_locking(
М
save_2/Assign_32Assignmain/pi/dense_3/biassave_2/RestoreV2:32*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0
С
save_2/Assign_33Assignmain/pi/dense_3/bias/Adamsave_2/RestoreV2:33*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_3/bias
У
save_2/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_2/RestoreV2:34*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
Х
save_2/Assign_35Assignmain/pi/dense_3/kernelsave_2/RestoreV2:35*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*)
_class
loc:@main/pi/dense_3/kernel
Ъ
save_2/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_2/RestoreV2:36*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
T0
Ь
save_2/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_2/RestoreV2:37*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Й
save_2/Assign_38Assignmain/qc/dense/biassave_2/RestoreV2:38*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
T0*
validate_shape(
О
save_2/Assign_39Assignmain/qc/dense/bias/Adamsave_2/RestoreV2:39*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*%
_class
loc:@main/qc/dense/bias
Р
save_2/Assign_40Assignmain/qc/dense/bias/Adam_1save_2/RestoreV2:40*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
С
save_2/Assign_41Assignmain/qc/dense/kernelsave_2/RestoreV2:41*
_output_shapes
:	>*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/qc/dense/kernel
Ц
save_2/Assign_42Assignmain/qc/dense/kernel/Adamsave_2/RestoreV2:42*
T0*
_output_shapes
:	>*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense/kernel
Ш
save_2/Assign_43Assignmain/qc/dense/kernel/Adam_1save_2/RestoreV2:43*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
use_locking(*
validate_shape(*
T0
Н
save_2/Assign_44Assignmain/qc/dense_1/biassave_2/RestoreV2:44*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
Т
save_2/Assign_45Assignmain/qc/dense_1/bias/Adamsave_2/RestoreV2:45*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
Ф
save_2/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_2/RestoreV2:46*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:
Ц
save_2/Assign_47Assignmain/qc/dense_1/kernelsave_2/RestoreV2:47*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
*
validate_shape(
Ы
save_2/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_2/RestoreV2:48*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0*)
_class
loc:@main/qc/dense_1/kernel
Э
save_2/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_2/RestoreV2:49*
use_locking(*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(
М
save_2/Assign_50Assignmain/qc/dense_2/biassave_2/RestoreV2:50*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
С
save_2/Assign_51Assignmain/qc/dense_2/bias/Adamsave_2/RestoreV2:51*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:
У
save_2/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_2/RestoreV2:52*
use_locking(*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0
Х
save_2/Assign_53Assignmain/qc/dense_2/kernelsave_2/RestoreV2:53*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel
Ъ
save_2/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_2/RestoreV2:54*
_output_shapes
:	*
validate_shape(*
T0*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(
Ь
save_2/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_2/RestoreV2:55*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0*)
_class
loc:@main/qc/dense_2/kernel
Л
save_2/Assign_56Assignmain/qr1/dense/biassave_2/RestoreV2:56*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*&
_class
loc:@main/qr1/dense/bias
Р
save_2/Assign_57Assignmain/qr1/dense/bias/Adamsave_2/RestoreV2:57*
T0*
validate_shape(*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:
Т
save_2/Assign_58Assignmain/qr1/dense/bias/Adam_1save_2/RestoreV2:58*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:
У
save_2/Assign_59Assignmain/qr1/dense/kernelsave_2/RestoreV2:59*
use_locking(*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(
Ш
save_2/Assign_60Assignmain/qr1/dense/kernel/Adamsave_2/RestoreV2:60*
T0*
_output_shapes
:	>*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(
Ъ
save_2/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_2/RestoreV2:61*
T0*
validate_shape(*
_output_shapes
:	>*
use_locking(*(
_class
loc:@main/qr1/dense/kernel
П
save_2/Assign_62Assignmain/qr1/dense_1/biassave_2/RestoreV2:62*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(
Ф
save_2/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_2/RestoreV2:63*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
T0*
validate_shape(
Ц
save_2/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_2/RestoreV2:64*
_output_shapes	
:*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(
Ш
save_2/Assign_65Assignmain/qr1/dense_1/kernelsave_2/RestoreV2:65*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
T0
Э
save_2/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_2/RestoreV2:66*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0**
_class 
loc:@main/qr1/dense_1/kernel
Я
save_2/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_2/RestoreV2:67*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
О
save_2/Assign_68Assignmain/qr1/dense_2/biassave_2/RestoreV2:68*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias
У
save_2/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_2/RestoreV2:69*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
Х
save_2/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_2/RestoreV2:70*
_output_shapes
:*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(
Ч
save_2/Assign_71Assignmain/qr1/dense_2/kernelsave_2/RestoreV2:71*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel
Ь
save_2/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_2/RestoreV2:72*
use_locking(*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	
Ю
save_2/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_2/RestoreV2:73*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel
Л
save_2/Assign_74Assignmain/qr2/dense/biassave_2/RestoreV2:74*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
use_locking(*
T0
Р
save_2/Assign_75Assignmain/qr2/dense/bias/Adamsave_2/RestoreV2:75*
validate_shape(*
T0*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
_output_shapes	
:
Т
save_2/Assign_76Assignmain/qr2/dense/bias/Adam_1save_2/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
У
save_2/Assign_77Assignmain/qr2/dense/kernelsave_2/RestoreV2:77*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel
Ш
save_2/Assign_78Assignmain/qr2/dense/kernel/Adamsave_2/RestoreV2:78*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(
Ъ
save_2/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_2/RestoreV2:79*(
_class
loc:@main/qr2/dense/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	>
П
save_2/Assign_80Assignmain/qr2/dense_1/biassave_2/RestoreV2:80*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias
Ф
save_2/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_2/RestoreV2:81*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias
Ц
save_2/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_2/RestoreV2:82*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ш
save_2/Assign_83Assignmain/qr2/dense_1/kernelsave_2/RestoreV2:83**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0
Э
save_2/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_2/RestoreV2:84*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0
Я
save_2/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_2/RestoreV2:85*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
О
save_2/Assign_86Assignmain/qr2/dense_2/biassave_2/RestoreV2:86*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:
У
save_2/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_2/RestoreV2:87*
T0*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias
Х
save_2/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_2/RestoreV2:88*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
Ч
save_2/Assign_89Assignmain/qr2/dense_2/kernelsave_2/RestoreV2:89*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(
Ь
save_2/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_2/RestoreV2:90*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_2/kernel
Ю
save_2/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_2/RestoreV2:91*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0
Н
save_2/Assign_92Assigntarget/qc/dense/biassave_2/RestoreV2:92*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Х
save_2/Assign_93Assigntarget/qc/dense/kernelsave_2/RestoreV2:93*
T0*
validate_shape(*
_output_shapes
:	>*
use_locking(*)
_class
loc:@target/qc/dense/kernel
С
save_2/Assign_94Assigntarget/qc/dense_1/biassave_2/RestoreV2:94*
use_locking(*
validate_shape(*
_output_shapes	
:*)
_class
loc:@target/qc/dense_1/bias*
T0
Ъ
save_2/Assign_95Assigntarget/qc/dense_1/kernelsave_2/RestoreV2:95*
use_locking(*
T0*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(* 
_output_shapes
:

Р
save_2/Assign_96Assigntarget/qc/dense_2/biassave_2/RestoreV2:96*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
Щ
save_2/Assign_97Assigntarget/qc/dense_2/kernelsave_2/RestoreV2:97*
use_locking(*
_output_shapes
:	*
validate_shape(*+
_class!
loc:@target/qc/dense_2/kernel*
T0
П
save_2/Assign_98Assigntarget/qr1/dense/biassave_2/RestoreV2:98*
T0*
validate_shape(*
_output_shapes	
:*(
_class
loc:@target/qr1/dense/bias*
use_locking(
Ч
save_2/Assign_99Assigntarget/qr1/dense/kernelsave_2/RestoreV2:99*
T0**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>
Х
save_2/Assign_100Assigntarget/qr1/dense_1/biassave_2/RestoreV2:100*
validate_shape(*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(*
T0
Ю
save_2/Assign_101Assigntarget/qr1/dense_1/kernelsave_2/RestoreV2:101* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr1/dense_1/kernel
Ф
save_2/Assign_102Assigntarget/qr1/dense_2/biassave_2/RestoreV2:102*
validate_shape(*
use_locking(*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
T0
Э
save_2/Assign_103Assigntarget/qr1/dense_2/kernelsave_2/RestoreV2:103*
T0*
_output_shapes
:	*
use_locking(*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(
С
save_2/Assign_104Assigntarget/qr2/dense/biassave_2/RestoreV2:104*
_output_shapes	
:*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
T0*
validate_shape(
Щ
save_2/Assign_105Assigntarget/qr2/dense/kernelsave_2/RestoreV2:105*
use_locking(*
T0**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(*
_output_shapes
:	>
Х
save_2/Assign_106Assigntarget/qr2/dense_1/biassave_2/RestoreV2:106*
validate_shape(*
use_locking(**
_class 
loc:@target/qr2/dense_1/bias*
T0*
_output_shapes	
:
Ю
save_2/Assign_107Assigntarget/qr2/dense_1/kernelsave_2/RestoreV2:107*
T0* 
_output_shapes
:
*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel*
validate_shape(
Ф
save_2/Assign_108Assigntarget/qr2/dense_2/biassave_2/RestoreV2:108*
use_locking(*
T0*
validate_shape(**
_class 
loc:@target/qr2/dense_2/bias*
_output_shapes
:
Э
save_2/Assign_109Assigntarget/qr2/dense_2/kernelsave_2/RestoreV2:109*
validate_shape(*
use_locking(*
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel
Ф
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_100^save_2/Assign_101^save_2/Assign_102^save_2/Assign_103^save_2/Assign_104^save_2/Assign_105^save_2/Assign_106^save_2/Assign_107^save_2/Assign_108^save_2/Assign_109^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_4^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49^save_2/Assign_5^save_2/Assign_50^save_2/Assign_51^save_2/Assign_52^save_2/Assign_53^save_2/Assign_54^save_2/Assign_55^save_2/Assign_56^save_2/Assign_57^save_2/Assign_58^save_2/Assign_59^save_2/Assign_6^save_2/Assign_60^save_2/Assign_61^save_2/Assign_62^save_2/Assign_63^save_2/Assign_64^save_2/Assign_65^save_2/Assign_66^save_2/Assign_67^save_2/Assign_68^save_2/Assign_69^save_2/Assign_7^save_2/Assign_70^save_2/Assign_71^save_2/Assign_72^save_2/Assign_73^save_2/Assign_74^save_2/Assign_75^save_2/Assign_76^save_2/Assign_77^save_2/Assign_78^save_2/Assign_79^save_2/Assign_8^save_2/Assign_80^save_2/Assign_81^save_2/Assign_82^save_2/Assign_83^save_2/Assign_84^save_2/Assign_85^save_2/Assign_86^save_2/Assign_87^save_2/Assign_88^save_2/Assign_89^save_2/Assign_9^save_2/Assign_90^save_2/Assign_91^save_2/Assign_92^save_2/Assign_93^save_2/Assign_94^save_2/Assign_95^save_2/Assign_96^save_2/Assign_97^save_2/Assign_98^save_2/Assign_99
1
save_2/restore_allNoOp^save_2/restore_shard "B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"/
train_op#
!
train_pi
train_q
Adam
Adam_1"ёz
	variablesуzрz

main/pi/dense/kernel:0main/pi/dense/kernel/Assignmain/pi/dense/kernel/read:021main/pi/dense/kernel/Initializer/random_uniform:08
v
main/pi/dense/bias:0main/pi/dense/bias/Assignmain/pi/dense/bias/read:02&main/pi/dense/bias/Initializer/zeros:08

main/pi/dense_1/kernel:0main/pi/dense_1/kernel/Assignmain/pi/dense_1/kernel/read:023main/pi/dense_1/kernel/Initializer/random_uniform:08
~
main/pi/dense_1/bias:0main/pi/dense_1/bias/Assignmain/pi/dense_1/bias/read:02(main/pi/dense_1/bias/Initializer/zeros:08

main/pi/dense_2/kernel:0main/pi/dense_2/kernel/Assignmain/pi/dense_2/kernel/read:023main/pi/dense_2/kernel/Initializer/random_uniform:08
~
main/pi/dense_2/bias:0main/pi/dense_2/bias/Assignmain/pi/dense_2/bias/read:02(main/pi/dense_2/bias/Initializer/zeros:08

main/pi/dense_3/kernel:0main/pi/dense_3/kernel/Assignmain/pi/dense_3/kernel/read:023main/pi/dense_3/kernel/Initializer/random_uniform:08
~
main/pi/dense_3/bias:0main/pi/dense_3/bias/Assignmain/pi/dense_3/bias/read:02(main/pi/dense_3/bias/Initializer/zeros:08

main/qr1/dense/kernel:0main/qr1/dense/kernel/Assignmain/qr1/dense/kernel/read:022main/qr1/dense/kernel/Initializer/random_uniform:08
z
main/qr1/dense/bias:0main/qr1/dense/bias/Assignmain/qr1/dense/bias/read:02'main/qr1/dense/bias/Initializer/zeros:08

main/qr1/dense_1/kernel:0main/qr1/dense_1/kernel/Assignmain/qr1/dense_1/kernel/read:024main/qr1/dense_1/kernel/Initializer/random_uniform:08

main/qr1/dense_1/bias:0main/qr1/dense_1/bias/Assignmain/qr1/dense_1/bias/read:02)main/qr1/dense_1/bias/Initializer/zeros:08

main/qr1/dense_2/kernel:0main/qr1/dense_2/kernel/Assignmain/qr1/dense_2/kernel/read:024main/qr1/dense_2/kernel/Initializer/random_uniform:08

main/qr1/dense_2/bias:0main/qr1/dense_2/bias/Assignmain/qr1/dense_2/bias/read:02)main/qr1/dense_2/bias/Initializer/zeros:08

main/qr2/dense/kernel:0main/qr2/dense/kernel/Assignmain/qr2/dense/kernel/read:022main/qr2/dense/kernel/Initializer/random_uniform:08
z
main/qr2/dense/bias:0main/qr2/dense/bias/Assignmain/qr2/dense/bias/read:02'main/qr2/dense/bias/Initializer/zeros:08

main/qr2/dense_1/kernel:0main/qr2/dense_1/kernel/Assignmain/qr2/dense_1/kernel/read:024main/qr2/dense_1/kernel/Initializer/random_uniform:08

main/qr2/dense_1/bias:0main/qr2/dense_1/bias/Assignmain/qr2/dense_1/bias/read:02)main/qr2/dense_1/bias/Initializer/zeros:08

main/qr2/dense_2/kernel:0main/qr2/dense_2/kernel/Assignmain/qr2/dense_2/kernel/read:024main/qr2/dense_2/kernel/Initializer/random_uniform:08

main/qr2/dense_2/bias:0main/qr2/dense_2/bias/Assignmain/qr2/dense_2/bias/read:02)main/qr2/dense_2/bias/Initializer/zeros:08

main/qc/dense/kernel:0main/qc/dense/kernel/Assignmain/qc/dense/kernel/read:021main/qc/dense/kernel/Initializer/random_uniform:08
v
main/qc/dense/bias:0main/qc/dense/bias/Assignmain/qc/dense/bias/read:02&main/qc/dense/bias/Initializer/zeros:08

main/qc/dense_1/kernel:0main/qc/dense_1/kernel/Assignmain/qc/dense_1/kernel/read:023main/qc/dense_1/kernel/Initializer/random_uniform:08
~
main/qc/dense_1/bias:0main/qc/dense_1/bias/Assignmain/qc/dense_1/bias/read:02(main/qc/dense_1/bias/Initializer/zeros:08

main/qc/dense_2/kernel:0main/qc/dense_2/kernel/Assignmain/qc/dense_2/kernel/read:023main/qc/dense_2/kernel/Initializer/random_uniform:08
~
main/qc/dense_2/bias:0main/qc/dense_2/bias/Assignmain/qc/dense_2/bias/read:02(main/qc/dense_2/bias/Initializer/zeros:08

target/qr1/dense/kernel:0target/qr1/dense/kernel/Assigntarget/qr1/dense/kernel/read:024target/qr1/dense/kernel/Initializer/random_uniform:08

target/qr1/dense/bias:0target/qr1/dense/bias/Assigntarget/qr1/dense/bias/read:02)target/qr1/dense/bias/Initializer/zeros:08

target/qr1/dense_1/kernel:0 target/qr1/dense_1/kernel/Assign target/qr1/dense_1/kernel/read:026target/qr1/dense_1/kernel/Initializer/random_uniform:08

target/qr1/dense_1/bias:0target/qr1/dense_1/bias/Assigntarget/qr1/dense_1/bias/read:02+target/qr1/dense_1/bias/Initializer/zeros:08

target/qr1/dense_2/kernel:0 target/qr1/dense_2/kernel/Assign target/qr1/dense_2/kernel/read:026target/qr1/dense_2/kernel/Initializer/random_uniform:08

target/qr1/dense_2/bias:0target/qr1/dense_2/bias/Assigntarget/qr1/dense_2/bias/read:02+target/qr1/dense_2/bias/Initializer/zeros:08

target/qr2/dense/kernel:0target/qr2/dense/kernel/Assigntarget/qr2/dense/kernel/read:024target/qr2/dense/kernel/Initializer/random_uniform:08

target/qr2/dense/bias:0target/qr2/dense/bias/Assigntarget/qr2/dense/bias/read:02)target/qr2/dense/bias/Initializer/zeros:08

target/qr2/dense_1/kernel:0 target/qr2/dense_1/kernel/Assign target/qr2/dense_1/kernel/read:026target/qr2/dense_1/kernel/Initializer/random_uniform:08

target/qr2/dense_1/bias:0target/qr2/dense_1/bias/Assigntarget/qr2/dense_1/bias/read:02+target/qr2/dense_1/bias/Initializer/zeros:08

target/qr2/dense_2/kernel:0 target/qr2/dense_2/kernel/Assign target/qr2/dense_2/kernel/read:026target/qr2/dense_2/kernel/Initializer/random_uniform:08

target/qr2/dense_2/bias:0target/qr2/dense_2/bias/Assigntarget/qr2/dense_2/bias/read:02+target/qr2/dense_2/bias/Initializer/zeros:08

target/qc/dense/kernel:0target/qc/dense/kernel/Assigntarget/qc/dense/kernel/read:023target/qc/dense/kernel/Initializer/random_uniform:08
~
target/qc/dense/bias:0target/qc/dense/bias/Assigntarget/qc/dense/bias/read:02(target/qc/dense/bias/Initializer/zeros:08

target/qc/dense_1/kernel:0target/qc/dense_1/kernel/Assigntarget/qc/dense_1/kernel/read:025target/qc/dense_1/kernel/Initializer/random_uniform:08

target/qc/dense_1/bias:0target/qc/dense_1/bias/Assigntarget/qc/dense_1/bias/read:02*target/qc/dense_1/bias/Initializer/zeros:08

target/qc/dense_2/kernel:0target/qc/dense_2/kernel/Assigntarget/qc/dense_2/kernel/read:025target/qc/dense_2/kernel/Initializer/random_uniform:08

target/qc/dense_2/bias:0target/qc/dense_2/bias/Assigntarget/qc/dense_2/bias/read:02*target/qc/dense_2/bias/Initializer/zeros:08
n
entreg/soft_alpha:0entreg/soft_alpha/Assignentreg/soft_alpha/read:02!entreg/soft_alpha/initial_value:08
n
costpen/soft_beta:0costpen/soft_beta/Assigncostpen/soft_beta/read:02!costpen/soft_beta/initial_value:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

main/pi/dense/kernel/Adam:0 main/pi/dense/kernel/Adam/Assign main/pi/dense/kernel/Adam/read:02-main/pi/dense/kernel/Adam/Initializer/zeros:0

main/pi/dense/kernel/Adam_1:0"main/pi/dense/kernel/Adam_1/Assign"main/pi/dense/kernel/Adam_1/read:02/main/pi/dense/kernel/Adam_1/Initializer/zeros:0

main/pi/dense/bias/Adam:0main/pi/dense/bias/Adam/Assignmain/pi/dense/bias/Adam/read:02+main/pi/dense/bias/Adam/Initializer/zeros:0

main/pi/dense/bias/Adam_1:0 main/pi/dense/bias/Adam_1/Assign main/pi/dense/bias/Adam_1/read:02-main/pi/dense/bias/Adam_1/Initializer/zeros:0

main/pi/dense_1/kernel/Adam:0"main/pi/dense_1/kernel/Adam/Assign"main/pi/dense_1/kernel/Adam/read:02/main/pi/dense_1/kernel/Adam/Initializer/zeros:0
 
main/pi/dense_1/kernel/Adam_1:0$main/pi/dense_1/kernel/Adam_1/Assign$main/pi/dense_1/kernel/Adam_1/read:021main/pi/dense_1/kernel/Adam_1/Initializer/zeros:0

main/pi/dense_1/bias/Adam:0 main/pi/dense_1/bias/Adam/Assign main/pi/dense_1/bias/Adam/read:02-main/pi/dense_1/bias/Adam/Initializer/zeros:0

main/pi/dense_1/bias/Adam_1:0"main/pi/dense_1/bias/Adam_1/Assign"main/pi/dense_1/bias/Adam_1/read:02/main/pi/dense_1/bias/Adam_1/Initializer/zeros:0

main/pi/dense_2/kernel/Adam:0"main/pi/dense_2/kernel/Adam/Assign"main/pi/dense_2/kernel/Adam/read:02/main/pi/dense_2/kernel/Adam/Initializer/zeros:0
 
main/pi/dense_2/kernel/Adam_1:0$main/pi/dense_2/kernel/Adam_1/Assign$main/pi/dense_2/kernel/Adam_1/read:021main/pi/dense_2/kernel/Adam_1/Initializer/zeros:0

main/pi/dense_2/bias/Adam:0 main/pi/dense_2/bias/Adam/Assign main/pi/dense_2/bias/Adam/read:02-main/pi/dense_2/bias/Adam/Initializer/zeros:0

main/pi/dense_2/bias/Adam_1:0"main/pi/dense_2/bias/Adam_1/Assign"main/pi/dense_2/bias/Adam_1/read:02/main/pi/dense_2/bias/Adam_1/Initializer/zeros:0

main/pi/dense_3/kernel/Adam:0"main/pi/dense_3/kernel/Adam/Assign"main/pi/dense_3/kernel/Adam/read:02/main/pi/dense_3/kernel/Adam/Initializer/zeros:0
 
main/pi/dense_3/kernel/Adam_1:0$main/pi/dense_3/kernel/Adam_1/Assign$main/pi/dense_3/kernel/Adam_1/read:021main/pi/dense_3/kernel/Adam_1/Initializer/zeros:0

main/pi/dense_3/bias/Adam:0 main/pi/dense_3/bias/Adam/Assign main/pi/dense_3/bias/Adam/read:02-main/pi/dense_3/bias/Adam/Initializer/zeros:0

main/pi/dense_3/bias/Adam_1:0"main/pi/dense_3/bias/Adam_1/Assign"main/pi/dense_3/bias/Adam_1/read:02/main/pi/dense_3/bias/Adam_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0

main/qr1/dense/kernel/Adam:0!main/qr1/dense/kernel/Adam/Assign!main/qr1/dense/kernel/Adam/read:02.main/qr1/dense/kernel/Adam/Initializer/zeros:0

main/qr1/dense/kernel/Adam_1:0#main/qr1/dense/kernel/Adam_1/Assign#main/qr1/dense/kernel/Adam_1/read:020main/qr1/dense/kernel/Adam_1/Initializer/zeros:0

main/qr1/dense/bias/Adam:0main/qr1/dense/bias/Adam/Assignmain/qr1/dense/bias/Adam/read:02,main/qr1/dense/bias/Adam/Initializer/zeros:0

main/qr1/dense/bias/Adam_1:0!main/qr1/dense/bias/Adam_1/Assign!main/qr1/dense/bias/Adam_1/read:02.main/qr1/dense/bias/Adam_1/Initializer/zeros:0

main/qr1/dense_1/kernel/Adam:0#main/qr1/dense_1/kernel/Adam/Assign#main/qr1/dense_1/kernel/Adam/read:020main/qr1/dense_1/kernel/Adam/Initializer/zeros:0
Є
 main/qr1/dense_1/kernel/Adam_1:0%main/qr1/dense_1/kernel/Adam_1/Assign%main/qr1/dense_1/kernel/Adam_1/read:022main/qr1/dense_1/kernel/Adam_1/Initializer/zeros:0

main/qr1/dense_1/bias/Adam:0!main/qr1/dense_1/bias/Adam/Assign!main/qr1/dense_1/bias/Adam/read:02.main/qr1/dense_1/bias/Adam/Initializer/zeros:0

main/qr1/dense_1/bias/Adam_1:0#main/qr1/dense_1/bias/Adam_1/Assign#main/qr1/dense_1/bias/Adam_1/read:020main/qr1/dense_1/bias/Adam_1/Initializer/zeros:0

main/qr1/dense_2/kernel/Adam:0#main/qr1/dense_2/kernel/Adam/Assign#main/qr1/dense_2/kernel/Adam/read:020main/qr1/dense_2/kernel/Adam/Initializer/zeros:0
Є
 main/qr1/dense_2/kernel/Adam_1:0%main/qr1/dense_2/kernel/Adam_1/Assign%main/qr1/dense_2/kernel/Adam_1/read:022main/qr1/dense_2/kernel/Adam_1/Initializer/zeros:0

main/qr1/dense_2/bias/Adam:0!main/qr1/dense_2/bias/Adam/Assign!main/qr1/dense_2/bias/Adam/read:02.main/qr1/dense_2/bias/Adam/Initializer/zeros:0

main/qr1/dense_2/bias/Adam_1:0#main/qr1/dense_2/bias/Adam_1/Assign#main/qr1/dense_2/bias/Adam_1/read:020main/qr1/dense_2/bias/Adam_1/Initializer/zeros:0

main/qr2/dense/kernel/Adam:0!main/qr2/dense/kernel/Adam/Assign!main/qr2/dense/kernel/Adam/read:02.main/qr2/dense/kernel/Adam/Initializer/zeros:0

main/qr2/dense/kernel/Adam_1:0#main/qr2/dense/kernel/Adam_1/Assign#main/qr2/dense/kernel/Adam_1/read:020main/qr2/dense/kernel/Adam_1/Initializer/zeros:0

main/qr2/dense/bias/Adam:0main/qr2/dense/bias/Adam/Assignmain/qr2/dense/bias/Adam/read:02,main/qr2/dense/bias/Adam/Initializer/zeros:0

main/qr2/dense/bias/Adam_1:0!main/qr2/dense/bias/Adam_1/Assign!main/qr2/dense/bias/Adam_1/read:02.main/qr2/dense/bias/Adam_1/Initializer/zeros:0

main/qr2/dense_1/kernel/Adam:0#main/qr2/dense_1/kernel/Adam/Assign#main/qr2/dense_1/kernel/Adam/read:020main/qr2/dense_1/kernel/Adam/Initializer/zeros:0
Є
 main/qr2/dense_1/kernel/Adam_1:0%main/qr2/dense_1/kernel/Adam_1/Assign%main/qr2/dense_1/kernel/Adam_1/read:022main/qr2/dense_1/kernel/Adam_1/Initializer/zeros:0

main/qr2/dense_1/bias/Adam:0!main/qr2/dense_1/bias/Adam/Assign!main/qr2/dense_1/bias/Adam/read:02.main/qr2/dense_1/bias/Adam/Initializer/zeros:0

main/qr2/dense_1/bias/Adam_1:0#main/qr2/dense_1/bias/Adam_1/Assign#main/qr2/dense_1/bias/Adam_1/read:020main/qr2/dense_1/bias/Adam_1/Initializer/zeros:0

main/qr2/dense_2/kernel/Adam:0#main/qr2/dense_2/kernel/Adam/Assign#main/qr2/dense_2/kernel/Adam/read:020main/qr2/dense_2/kernel/Adam/Initializer/zeros:0
Є
 main/qr2/dense_2/kernel/Adam_1:0%main/qr2/dense_2/kernel/Adam_1/Assign%main/qr2/dense_2/kernel/Adam_1/read:022main/qr2/dense_2/kernel/Adam_1/Initializer/zeros:0

main/qr2/dense_2/bias/Adam:0!main/qr2/dense_2/bias/Adam/Assign!main/qr2/dense_2/bias/Adam/read:02.main/qr2/dense_2/bias/Adam/Initializer/zeros:0

main/qr2/dense_2/bias/Adam_1:0#main/qr2/dense_2/bias/Adam_1/Assign#main/qr2/dense_2/bias/Adam_1/read:020main/qr2/dense_2/bias/Adam_1/Initializer/zeros:0

main/qc/dense/kernel/Adam:0 main/qc/dense/kernel/Adam/Assign main/qc/dense/kernel/Adam/read:02-main/qc/dense/kernel/Adam/Initializer/zeros:0

main/qc/dense/kernel/Adam_1:0"main/qc/dense/kernel/Adam_1/Assign"main/qc/dense/kernel/Adam_1/read:02/main/qc/dense/kernel/Adam_1/Initializer/zeros:0

main/qc/dense/bias/Adam:0main/qc/dense/bias/Adam/Assignmain/qc/dense/bias/Adam/read:02+main/qc/dense/bias/Adam/Initializer/zeros:0

main/qc/dense/bias/Adam_1:0 main/qc/dense/bias/Adam_1/Assign main/qc/dense/bias/Adam_1/read:02-main/qc/dense/bias/Adam_1/Initializer/zeros:0

main/qc/dense_1/kernel/Adam:0"main/qc/dense_1/kernel/Adam/Assign"main/qc/dense_1/kernel/Adam/read:02/main/qc/dense_1/kernel/Adam/Initializer/zeros:0
 
main/qc/dense_1/kernel/Adam_1:0$main/qc/dense_1/kernel/Adam_1/Assign$main/qc/dense_1/kernel/Adam_1/read:021main/qc/dense_1/kernel/Adam_1/Initializer/zeros:0

main/qc/dense_1/bias/Adam:0 main/qc/dense_1/bias/Adam/Assign main/qc/dense_1/bias/Adam/read:02-main/qc/dense_1/bias/Adam/Initializer/zeros:0

main/qc/dense_1/bias/Adam_1:0"main/qc/dense_1/bias/Adam_1/Assign"main/qc/dense_1/bias/Adam_1/read:02/main/qc/dense_1/bias/Adam_1/Initializer/zeros:0

main/qc/dense_2/kernel/Adam:0"main/qc/dense_2/kernel/Adam/Assign"main/qc/dense_2/kernel/Adam/read:02/main/qc/dense_2/kernel/Adam/Initializer/zeros:0
 
main/qc/dense_2/kernel/Adam_1:0$main/qc/dense_2/kernel/Adam_1/Assign$main/qc/dense_2/kernel/Adam_1/read:021main/qc/dense_2/kernel/Adam_1/Initializer/zeros:0

main/qc/dense_2/bias/Adam:0 main/qc/dense_2/bias/Adam/Assign main/qc/dense_2/bias/Adam/read:02-main/qc/dense_2/bias/Adam/Initializer/zeros:0

main/qc/dense_2/bias/Adam_1:0"main/qc/dense_2/bias/Adam_1/Assign"main/qc/dense_2/bias/Adam_1/read:02/main/qc/dense_2/bias/Adam_1/Initializer/zeros:0
\
beta1_power_2:0beta1_power_2/Assignbeta1_power_2/read:02beta1_power_2/initial_value:0
\
beta2_power_2:0beta2_power_2/Assignbeta2_power_2/read:02beta2_power_2/initial_value:0

entreg/soft_alpha/Adam:0entreg/soft_alpha/Adam/Assignentreg/soft_alpha/Adam/read:02*entreg/soft_alpha/Adam/Initializer/zeros:0

entreg/soft_alpha/Adam_1:0entreg/soft_alpha/Adam_1/Assignentreg/soft_alpha/Adam_1/read:02,entreg/soft_alpha/Adam_1/Initializer/zeros:0
\
beta1_power_3:0beta1_power_3/Assignbeta1_power_3/read:02beta1_power_3/initial_value:0
\
beta2_power_3:0beta2_power_3/Assignbeta2_power_3/read:02beta2_power_3/initial_value:0

costpen/soft_beta/Adam:0costpen/soft_beta/Adam/Assigncostpen/soft_beta/Adam/read:02*costpen/soft_beta/Adam/Initializer/zeros:0

costpen/soft_beta/Adam_1:0costpen/soft_beta/Adam_1/Assigncostpen/soft_beta/Adam_1/read:02,costpen/soft_beta/Adam_1/Initializer/zeros:0"2
trainable_variablesћ1ј1

main/pi/dense/kernel:0main/pi/dense/kernel/Assignmain/pi/dense/kernel/read:021main/pi/dense/kernel/Initializer/random_uniform:08
v
main/pi/dense/bias:0main/pi/dense/bias/Assignmain/pi/dense/bias/read:02&main/pi/dense/bias/Initializer/zeros:08

main/pi/dense_1/kernel:0main/pi/dense_1/kernel/Assignmain/pi/dense_1/kernel/read:023main/pi/dense_1/kernel/Initializer/random_uniform:08
~
main/pi/dense_1/bias:0main/pi/dense_1/bias/Assignmain/pi/dense_1/bias/read:02(main/pi/dense_1/bias/Initializer/zeros:08

main/pi/dense_2/kernel:0main/pi/dense_2/kernel/Assignmain/pi/dense_2/kernel/read:023main/pi/dense_2/kernel/Initializer/random_uniform:08
~
main/pi/dense_2/bias:0main/pi/dense_2/bias/Assignmain/pi/dense_2/bias/read:02(main/pi/dense_2/bias/Initializer/zeros:08

main/pi/dense_3/kernel:0main/pi/dense_3/kernel/Assignmain/pi/dense_3/kernel/read:023main/pi/dense_3/kernel/Initializer/random_uniform:08
~
main/pi/dense_3/bias:0main/pi/dense_3/bias/Assignmain/pi/dense_3/bias/read:02(main/pi/dense_3/bias/Initializer/zeros:08

main/qr1/dense/kernel:0main/qr1/dense/kernel/Assignmain/qr1/dense/kernel/read:022main/qr1/dense/kernel/Initializer/random_uniform:08
z
main/qr1/dense/bias:0main/qr1/dense/bias/Assignmain/qr1/dense/bias/read:02'main/qr1/dense/bias/Initializer/zeros:08

main/qr1/dense_1/kernel:0main/qr1/dense_1/kernel/Assignmain/qr1/dense_1/kernel/read:024main/qr1/dense_1/kernel/Initializer/random_uniform:08

main/qr1/dense_1/bias:0main/qr1/dense_1/bias/Assignmain/qr1/dense_1/bias/read:02)main/qr1/dense_1/bias/Initializer/zeros:08

main/qr1/dense_2/kernel:0main/qr1/dense_2/kernel/Assignmain/qr1/dense_2/kernel/read:024main/qr1/dense_2/kernel/Initializer/random_uniform:08

main/qr1/dense_2/bias:0main/qr1/dense_2/bias/Assignmain/qr1/dense_2/bias/read:02)main/qr1/dense_2/bias/Initializer/zeros:08

main/qr2/dense/kernel:0main/qr2/dense/kernel/Assignmain/qr2/dense/kernel/read:022main/qr2/dense/kernel/Initializer/random_uniform:08
z
main/qr2/dense/bias:0main/qr2/dense/bias/Assignmain/qr2/dense/bias/read:02'main/qr2/dense/bias/Initializer/zeros:08

main/qr2/dense_1/kernel:0main/qr2/dense_1/kernel/Assignmain/qr2/dense_1/kernel/read:024main/qr2/dense_1/kernel/Initializer/random_uniform:08

main/qr2/dense_1/bias:0main/qr2/dense_1/bias/Assignmain/qr2/dense_1/bias/read:02)main/qr2/dense_1/bias/Initializer/zeros:08

main/qr2/dense_2/kernel:0main/qr2/dense_2/kernel/Assignmain/qr2/dense_2/kernel/read:024main/qr2/dense_2/kernel/Initializer/random_uniform:08

main/qr2/dense_2/bias:0main/qr2/dense_2/bias/Assignmain/qr2/dense_2/bias/read:02)main/qr2/dense_2/bias/Initializer/zeros:08

main/qc/dense/kernel:0main/qc/dense/kernel/Assignmain/qc/dense/kernel/read:021main/qc/dense/kernel/Initializer/random_uniform:08
v
main/qc/dense/bias:0main/qc/dense/bias/Assignmain/qc/dense/bias/read:02&main/qc/dense/bias/Initializer/zeros:08

main/qc/dense_1/kernel:0main/qc/dense_1/kernel/Assignmain/qc/dense_1/kernel/read:023main/qc/dense_1/kernel/Initializer/random_uniform:08
~
main/qc/dense_1/bias:0main/qc/dense_1/bias/Assignmain/qc/dense_1/bias/read:02(main/qc/dense_1/bias/Initializer/zeros:08

main/qc/dense_2/kernel:0main/qc/dense_2/kernel/Assignmain/qc/dense_2/kernel/read:023main/qc/dense_2/kernel/Initializer/random_uniform:08
~
main/qc/dense_2/bias:0main/qc/dense_2/bias/Assignmain/qc/dense_2/bias/read:02(main/qc/dense_2/bias/Initializer/zeros:08

target/qr1/dense/kernel:0target/qr1/dense/kernel/Assigntarget/qr1/dense/kernel/read:024target/qr1/dense/kernel/Initializer/random_uniform:08

target/qr1/dense/bias:0target/qr1/dense/bias/Assigntarget/qr1/dense/bias/read:02)target/qr1/dense/bias/Initializer/zeros:08

target/qr1/dense_1/kernel:0 target/qr1/dense_1/kernel/Assign target/qr1/dense_1/kernel/read:026target/qr1/dense_1/kernel/Initializer/random_uniform:08

target/qr1/dense_1/bias:0target/qr1/dense_1/bias/Assigntarget/qr1/dense_1/bias/read:02+target/qr1/dense_1/bias/Initializer/zeros:08

target/qr1/dense_2/kernel:0 target/qr1/dense_2/kernel/Assign target/qr1/dense_2/kernel/read:026target/qr1/dense_2/kernel/Initializer/random_uniform:08

target/qr1/dense_2/bias:0target/qr1/dense_2/bias/Assigntarget/qr1/dense_2/bias/read:02+target/qr1/dense_2/bias/Initializer/zeros:08

target/qr2/dense/kernel:0target/qr2/dense/kernel/Assigntarget/qr2/dense/kernel/read:024target/qr2/dense/kernel/Initializer/random_uniform:08

target/qr2/dense/bias:0target/qr2/dense/bias/Assigntarget/qr2/dense/bias/read:02)target/qr2/dense/bias/Initializer/zeros:08

target/qr2/dense_1/kernel:0 target/qr2/dense_1/kernel/Assign target/qr2/dense_1/kernel/read:026target/qr2/dense_1/kernel/Initializer/random_uniform:08

target/qr2/dense_1/bias:0target/qr2/dense_1/bias/Assigntarget/qr2/dense_1/bias/read:02+target/qr2/dense_1/bias/Initializer/zeros:08

target/qr2/dense_2/kernel:0 target/qr2/dense_2/kernel/Assign target/qr2/dense_2/kernel/read:026target/qr2/dense_2/kernel/Initializer/random_uniform:08

target/qr2/dense_2/bias:0target/qr2/dense_2/bias/Assigntarget/qr2/dense_2/bias/read:02+target/qr2/dense_2/bias/Initializer/zeros:08

target/qc/dense/kernel:0target/qc/dense/kernel/Assigntarget/qc/dense/kernel/read:023target/qc/dense/kernel/Initializer/random_uniform:08
~
target/qc/dense/bias:0target/qc/dense/bias/Assigntarget/qc/dense/bias/read:02(target/qc/dense/bias/Initializer/zeros:08

target/qc/dense_1/kernel:0target/qc/dense_1/kernel/Assigntarget/qc/dense_1/kernel/read:025target/qc/dense_1/kernel/Initializer/random_uniform:08

target/qc/dense_1/bias:0target/qc/dense_1/bias/Assigntarget/qc/dense_1/bias/read:02*target/qc/dense_1/bias/Initializer/zeros:08

target/qc/dense_2/kernel:0target/qc/dense_2/kernel/Assigntarget/qc/dense_2/kernel/read:025target/qc/dense_2/kernel/Initializer/random_uniform:08

target/qc/dense_2/bias:0target/qc/dense_2/bias/Assigntarget/qc/dense_2/bias/read:02*target/qc/dense_2/bias/Initializer/zeros:08
n
entreg/soft_alpha:0entreg/soft_alpha/Assignentreg/soft_alpha/read:02!entreg/soft_alpha/initial_value:08
n
costpen/soft_beta:0costpen/soft_beta/Assigncostpen/soft_beta/read:02!costpen/soft_beta/initial_value:08*ф
serving_defaultа
+
a&
Placeholder_1:0џџџџџџџџџ
)
x$
Placeholder:0џџџџџџџџџ<,
qr2%
main/qr2/Squeeze:0џџџџџџџџџ*
qc$
main/qc/Squeeze:0џџџџџџџџџ,
qr1%
main/qr1/Squeeze:0џџџџџџџџџ)
pi#
main/mul_1:0џџџџџџџџџ'
mu!

main/mul:0џџџџџџџџџtensorflow/serving/predict