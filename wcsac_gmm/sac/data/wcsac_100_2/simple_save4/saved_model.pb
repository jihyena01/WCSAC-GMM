г4
Х**
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
-
Sqrt
x"T
y"T"
Ttype:

2
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
Ttype"serve*1.13.12b'v1.13.0-rc2-5-g6612da8'Жј1
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ<*
shape:џџџџџџџџџ<
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
p
Placeholder_2Placeholder*
shape:џџџџџџџџџ<*
dtype0*'
_output_shapes
:џџџџџџџџџ<
h
Placeholder_3Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_4Placeholder*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ*
dtype0
h
Placeholder_5Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Џ
5main/pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"<      *
dtype0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:
Ё
3main/pi/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *О*
dtype0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: 
Ё
3main/pi/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *>*
dtype0*'
_class
loc:@main/pi/dense/kernel
ў
=main/pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/pi/dense/kernel/Initializer/random_uniform/shape*
T0*'
_class
loc:@main/pi/dense/kernel*
seed2	*
_output_shapes
:	<*
dtype0*

seed 
ю
3main/pi/dense/kernel/Initializer/random_uniform/subSub3main/pi/dense/kernel/Initializer/random_uniform/max3main/pi/dense/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: 

3main/pi/dense/kernel/Initializer/random_uniform/mulMul=main/pi/dense/kernel/Initializer/random_uniform/RandomUniform3main/pi/dense/kernel/Initializer/random_uniform/sub*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
T0
ѓ
/main/pi/dense/kernel/Initializer/random_uniformAdd3main/pi/dense/kernel/Initializer/random_uniform/mul3main/pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
T0
Г
main/pi/dense/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes
:	<*
shape:	<*'
_class
loc:@main/pi/dense/kernel*
	container 
ш
main/pi/dense/kernel/AssignAssignmain/pi/dense/kernel/main/pi/dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
_output_shapes
:	<*
T0*'
_class
loc:@main/pi/dense/kernel

main/pi/dense/kernel/readIdentitymain/pi/dense/kernel*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<

$main/pi/dense/bias/Initializer/zerosConst*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
dtype0*
valueB*    
Ї
main/pi/dense/bias
VariableV2*
shape:*
_output_shapes	
:*
	container *
dtype0*%
_class
loc:@main/pi/dense/bias*
shared_name 
г
main/pi/dense/bias/AssignAssignmain/pi/dense/bias$main/pi/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias

main/pi/dense/bias/readIdentitymain/pi/dense/bias*
_output_shapes	
:*
T0*%
_class
loc:@main/pi/dense/bias

main/pi/dense/MatMulMatMulPlaceholdermain/pi/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ

main/pi/dense/BiasAddBiasAddmain/pi/dense/MatMulmain/pi/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
d
main/pi/dense/ReluRelumain/pi/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Г
7main/pi/dense_1/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ѕ
5main/pi/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *)
_class
loc:@main/pi/dense_1/kernel*
valueB
 *зГнН*
dtype0
Ѕ
5main/pi/dense_1/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@main/pi/dense_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *зГн=

?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_1/kernel/Initializer/random_uniform/shape*)
_class
loc:@main/pi/dense_1/kernel*
T0*

seed *
dtype0* 
_output_shapes
:
*
seed2
і
5main/pi/dense_1/kernel/Initializer/random_uniform/subSub5main/pi/dense_1/kernel/Initializer/random_uniform/max5main/pi/dense_1/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_1/kernel*
T0*
_output_shapes
: 

5main/pi/dense_1/kernel/Initializer/random_uniform/mulMul?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel
ќ
1main/pi/dense_1/kernel/Initializer/random_uniformAdd5main/pi/dense_1/kernel/Initializer/random_uniform/mul5main/pi/dense_1/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:

Й
main/pi/dense_1/kernel
VariableV2* 
_output_shapes
:
*
	container *)
_class
loc:@main/pi/dense_1/kernel*
shape:
*
shared_name *
dtype0
ё
main/pi/dense_1/kernel/AssignAssignmain/pi/dense_1/kernel1main/pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
validate_shape(

main/pi/dense_1/kernel/readIdentitymain/pi/dense_1/kernel*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
T0

&main/pi/dense_1/bias/Initializer/zerosConst*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
dtype0*
valueB*    
Ћ
main/pi/dense_1/bias
VariableV2*
_output_shapes	
:*
shared_name *
shape:*
dtype0*
	container *'
_class
loc:@main/pi/dense_1/bias
л
main/pi/dense_1/bias/AssignAssignmain/pi/dense_1/bias&main/pi/dense_1/bias/Initializer/zeros*
T0*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(

main/pi/dense_1/bias/readIdentitymain/pi/dense_1/bias*
T0*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias
Њ
main/pi/dense_1/MatMulMatMulmain/pi/dense/Relumain/pi/dense_1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

main/pi/dense_1/BiasAddBiasAddmain/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
T0*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
h
main/pi/dense_1/ReluRelumain/pi/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Г
7main/pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *)
_class
loc:@main/pi/dense_2/kernel*
dtype0
Ѕ
5main/pi/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *(О*)
_class
loc:@main/pi/dense_2/kernel*
dtype0*
_output_shapes
: 
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
?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_2/kernel/Initializer/random_uniform/shape*
T0*)
_class
loc:@main/pi/dense_2/kernel*
seed2+*
_output_shapes
:	*

seed *
dtype0
і
5main/pi/dense_2/kernel/Initializer/random_uniform/subSub5main/pi/dense_2/kernel/Initializer/random_uniform/max5main/pi/dense_2/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
: 

5main/pi/dense_2/kernel/Initializer/random_uniform/mulMul?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel
ћ
1main/pi/dense_2/kernel/Initializer/random_uniformAdd5main/pi/dense_2/kernel/Initializer/random_uniform/mul5main/pi/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel
З
main/pi/dense_2/kernel
VariableV2*)
_class
loc:@main/pi/dense_2/kernel*
	container *
shape:	*
_output_shapes
:	*
shared_name *
dtype0
№
main/pi/dense_2/kernel/AssignAssignmain/pi/dense_2/kernel1main/pi/dense_2/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes
:	*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0

main/pi/dense_2/kernel/readIdentitymain/pi/dense_2/kernel*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	

&main/pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    *'
_class
loc:@main/pi/dense_2/bias
Љ
main/pi/dense_2/bias
VariableV2*
shared_name *
shape:*
	container *
dtype0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
к
main/pi/dense_2/bias/AssignAssignmain/pi/dense_2/bias&main/pi/dense_2/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(

main/pi/dense_2/bias/readIdentitymain/pi/dense_2/bias*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0
Ћ
main/pi/dense_2/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ

main/pi/dense_2/BiasAddBiasAddmain/pi/dense_2/MatMulmain/pi/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ
Г
7main/pi/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:
Ѕ
5main/pi/dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
: *
valueB
 *(О
Ѕ
5main/pi/dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *(>*)
_class
loc:@main/pi/dense_3/kernel*
dtype0*
_output_shapes
: 

?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_3/kernel/Initializer/random_uniform/shape*)
_class
loc:@main/pi/dense_3/kernel*
seed2;*

seed *
_output_shapes
:	*
dtype0*
T0
і
5main/pi/dense_3/kernel/Initializer/random_uniform/subSub5main/pi/dense_3/kernel/Initializer/random_uniform/max5main/pi/dense_3/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
: 

5main/pi/dense_3/kernel/Initializer/random_uniform/mulMul?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_3/kernel/Initializer/random_uniform/sub*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	
ћ
1main/pi/dense_3/kernel/Initializer/random_uniformAdd5main/pi/dense_3/kernel/Initializer/random_uniform/mul5main/pi/dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_3/kernel
З
main/pi/dense_3/kernel
VariableV2*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
shape:	*
dtype0*
	container *
shared_name 
№
main/pi/dense_3/kernel/AssignAssignmain/pi/dense_3/kernel1main/pi/dense_3/kernel/Initializer/random_uniform*
_output_shapes
:	*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
T0

main/pi/dense_3/kernel/readIdentitymain/pi/dense_3/kernel*
T0*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel

&main/pi/dense_3/bias/Initializer/zerosConst*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
valueB*    *
dtype0
Љ
main/pi/dense_3/bias
VariableV2*
_output_shapes
:*
shape:*'
_class
loc:@main/pi/dense_3/bias*
shared_name *
dtype0*
	container 
к
main/pi/dense_3/bias/AssignAssignmain/pi/dense_3/bias&main/pi/dense_3/bias/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_3/bias

main/pi/dense_3/bias/readIdentitymain/pi/dense_3/bias*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
T0
Ћ
main/pi/dense_3/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_3/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ

main/pi/dense_3/BiasAddBiasAddmain/pi/dense_3/MatMulmain/pi/dense_3/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ
d
main/pi/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @

main/pi/clip_by_value/MinimumMinimummain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*'
_output_shapes
:џџџџџџџџџ*
T0
\
main/pi/clip_by_value/yConst*
dtype0*
valueB
 *   С*
_output_shapes
: 
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
main/pi/ShapeShapemain/pi/dense_2/BiasAdd*
_output_shapes
:*
out_type0*
T0
_
main/pi/random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
a
main/pi/random_normal/stddevConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Љ
*main/pi/random_normal/RandomStandardNormalRandomStandardNormalmain/pi/Shape*

seed *
seed2P*
dtype0*'
_output_shapes
:џџџџџџџџџ*
T0

main/pi/random_normal/mulMul*main/pi/random_normal/RandomStandardNormalmain/pi/random_normal/stddev*
T0*'
_output_shapes
:џџџџџџџџџ

main/pi/random_normalAddmain/pi/random_normal/mulmain/pi/random_normal/mean*
T0*'
_output_shapes
:џџџџџџџџџ
h
main/pi/mulMulmain/pi/random_normalmain/pi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
j
main/pi/addAddmain/pi/dense_2/BiasAddmain/pi/mul*'
_output_shapes
:џџџџџџџџџ*
T0
j
main/pi/subSubmain/pi/addmain/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
]
main/pi/Exp_1Expmain/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
main/pi/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
n
main/pi/mul_1Mulmain/pi/mul_1/xmain/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
b
main/pi/add_2Addmain/pi/powmain/pi/mul_1*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *?ы?
f
main/pi/add_3Addmain/pi/add_2main/pi/add_3/y*
T0*'
_output_shapes
:џџџџџџџџџ
T
main/pi/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   П
f
main/pi/mul_2Mulmain/pi/mul_2/xmain/pi/add_3*
T0*'
_output_shapes
:џџџџџџџџџ
_
main/pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

main/pi/SumSummain/pi/mul_2main/pi/Sum/reduction_indices*

Tidx0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *
T0
T
main/pi/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *r1?
d
main/pi/sub_1Submain/pi/sub_1/xmain/pi/add*'
_output_shapes
:џџџџџџџџџ*
T0
T
main/pi/mul_3/xConst*
_output_shapes
: *
valueB
 *   Р*
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
main/pi/sub_2Submain/pi/sub_1main/pi/Softplus*
T0*'
_output_shapes
:џџџџџџџџџ
T
main/pi/mul_4/xConst*
valueB
 *   @*
_output_shapes
: *
dtype0
f
main/pi/mul_4Mulmain/pi/mul_4/xmain/pi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ
a
main/pi/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0

main/pi/Sum_1Summain/pi/mul_4main/pi/Sum_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0*
	keep_dims( 
^
main/pi/sub_3Submain/pi/Summain/pi/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
_
main/pi/TanhTanhmain/pi/dense_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
U
main/pi/Tanh_1Tanhmain/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
O

main/mul/yConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
[
main/mulMulmain/pi/Tanh
main/mul/y*'
_output_shapes
:џџџџџџџџџ*
T0
Q
main/mul_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
main/qr1/concatConcatV2PlaceholderPlaceholder_1main/qr1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
N*
T0*

Tidx0
Б
6main/qr1/dense/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:*
dtype0*
valueB">      
Ѓ
4main/qr1/dense/kernel/Initializer/random_uniform/minConst*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *?ЈО
Ѓ
4main/qr1/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Ј>*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: 

>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr1/dense/kernel/Initializer/random_uniform/shape*
seed2{*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0*

seed *
dtype0
ђ
4main/qr1/dense/kernel/Initializer/random_uniform/subSub4main/qr1/dense/kernel/Initializer/random_uniform/max4main/qr1/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
: 

4main/qr1/dense/kernel/Initializer/random_uniform/mulMul>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr1/dense/kernel/Initializer/random_uniform/sub*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
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
VariableV2*
	container *
dtype0*
shared_name *(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
shape:	>
ь
main/qr1/dense/kernel/AssignAssignmain/qr1/dense/kernel0main/qr1/dense/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	>*
use_locking(*
T0*(
_class
loc:@main/qr1/dense/kernel

main/qr1/dense/kernel/readIdentitymain/qr1/dense/kernel*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0

%main/qr1/dense/bias/Initializer/zerosConst*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
Љ
main/qr1/dense/bias
VariableV2*&
_class
loc:@main/qr1/dense/bias*
shared_name *
dtype0*
shape:*
_output_shapes	
:*
	container 
з
main/qr1/dense/bias/AssignAssignmain/qr1/dense/bias%main/qr1/dense/bias/Initializer/zeros*
use_locking(*
T0*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:

main/qr1/dense/bias/readIdentitymain/qr1/dense/bias*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias*
T0
Ѕ
main/qr1/dense/MatMulMatMulmain/qr1/concatmain/qr1/dense/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( 

main/qr1/dense/BiasAddBiasAddmain/qr1/dense/MatMulmain/qr1/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
f
main/qr1/dense/ReluRelumain/qr1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Е
8main/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
:
Ї
6main/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *зГнН**
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
_output_shapes
: 
Ї
6main/qr1/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *зГн=*
dtype0**
_class 
loc:@main/qr1/dense_1/kernel

@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*

seed *
seed2*
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
T0
њ
6main/qr1/dense_1/kernel/Initializer/random_uniform/subSub6main/qr1/dense_1/kernel/Initializer/random_uniform/max6main/qr1/dense_1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
: 

6main/qr1/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
T0

2main/qr1/dense_1/kernel/Initializer/random_uniformAdd6main/qr1/dense_1/kernel/Initializer/random_uniform/mul6main/qr1/dense_1/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:

Л
main/qr1/dense_1/kernel
VariableV2*
shape:
*
	container * 
_output_shapes
:
*
shared_name **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0
ѕ
main/qr1/dense_1/kernel/AssignAssignmain/qr1/dense_1/kernel2main/qr1/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
validate_shape(

main/qr1/dense_1/kernel/readIdentitymain/qr1/dense_1/kernel**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:

 
'main/qr1/dense_1/bias/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
­
main/qr1/dense_1/bias
VariableV2*
	container *
shared_name *
_output_shapes	
:*
shape:*
dtype0*(
_class
loc:@main/qr1/dense_1/bias
п
main/qr1/dense_1/bias/AssignAssignmain/qr1/dense_1/bias'main/qr1/dense_1/bias/Initializer/zeros*(
_class
loc:@main/qr1/dense_1/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:

main/qr1/dense_1/bias/readIdentitymain/qr1/dense_1/bias*
T0*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:
­
main/qr1/dense_1/MatMulMatMulmain/qr1/dense/Relumain/qr1/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( *
T0
Ђ
main/qr1/dense_1/BiasAddBiasAddmain/qr1/dense_1/MatMulmain/qr1/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
j
main/qr1/dense_1/ReluRelumain/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Е
8main/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@main/qr1/dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ї
6main/qr1/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *IvО*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr1/dense_2/kernel
Ї
6main/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr1/dense_2/kernel

@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_2/kernel/Initializer/random_uniform/shape*
T0*

seed *
dtype0**
_class 
loc:@main/qr1/dense_2/kernel*
seed2*
_output_shapes
:	
њ
6main/qr1/dense_2/kernel/Initializer/random_uniform/subSub6main/qr1/dense_2/kernel/Initializer/random_uniform/max6main/qr1/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: **
_class 
loc:@main/qr1/dense_2/kernel

6main/qr1/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel
џ
2main/qr1/dense_2/kernel/Initializer/random_uniformAdd6main/qr1/dense_2/kernel/Initializer/random_uniform/mul6main/qr1/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel
Й
main/qr1/dense_2/kernel
VariableV2*
dtype0*
	container *
_output_shapes
:	*
shape:	*
shared_name **
_class 
loc:@main/qr1/dense_2/kernel
є
main/qr1/dense_2/kernel/AssignAssignmain/qr1/dense_2/kernel2main/qr1/dense_2/kernel/Initializer/random_uniform*
_output_shapes
:	*
validate_shape(*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(

main/qr1/dense_2/kernel/readIdentitymain/qr1/dense_2/kernel*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel

'main/qr1/dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:
Ћ
main/qr1/dense_2/bias
VariableV2*
shared_name *
shape:*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
dtype0*
	container 
о
main/qr1/dense_2/bias/AssignAssignmain/qr1/dense_2/bias'main/qr1/dense_2/bias/Initializer/zeros*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
validate_shape(

main/qr1/dense_2/bias/readIdentitymain/qr1/dense_2/bias*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:
Ў
main/qr1/dense_2/MatMulMatMulmain/qr1/dense_1/Relumain/qr1/dense_2/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 
Ё
main/qr1/dense_2/BiasAddBiasAddmain/qr1/dense_2/MatMulmain/qr1/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
z
main/qr1/SqueezeSqueezemain/qr1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
a
main/qr1_1/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

main/qr1_1/concatConcatV2Placeholder
main/mul_1main/qr1_1/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:џџџџџџџџџ>
Љ
main/qr1_1/dense/MatMulMatMulmain/qr1_1/concatmain/qr1/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0
 
main/qr1_1/dense/BiasAddBiasAddmain/qr1_1/dense/MatMulmain/qr1/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
j
main/qr1_1/dense/ReluRelumain/qr1_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Б
main/qr1_1/dense_1/MatMulMatMulmain/qr1_1/dense/Relumain/qr1/dense_1/kernel/read*
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
І
main/qr1_1/dense_1/BiasAddBiasAddmain/qr1_1/dense_1/MatMulmain/qr1/dense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
n
main/qr1_1/dense_1/ReluRelumain/qr1_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
В
main/qr1_1/dense_2/MatMulMatMulmain/qr1_1/dense_1/Relumain/qr1/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ѕ
main/qr1_1/dense_2/BiasAddBiasAddmain/qr1_1/dense_2/MatMulmain/qr1/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
~
main/qr1_1/SqueezeSqueezemain/qr1_1/dense_2/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
_
main/qr2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

main/qr2/concatConcatV2PlaceholderPlaceholder_1main/qr2/concat/axis*'
_output_shapes
:џџџџџџџџџ>*

Tidx0*
N*
T0
Б
6main/qr2/dense/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@main/qr2/dense/kernel*
dtype0*
_output_shapes
:*
valueB">      
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
4main/qr2/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *?Ј>*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
: 

>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr2/dense/kernel/Initializer/random_uniform/shape*
seed2Л*
dtype0*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
T0*

seed 
ђ
4main/qr2/dense/kernel/Initializer/random_uniform/subSub4main/qr2/dense/kernel/Initializer/random_uniform/max4main/qr2/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@main/qr2/dense/kernel

4main/qr2/dense/kernel/Initializer/random_uniform/mulMul>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr2/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0
ї
0main/qr2/dense/kernel/Initializer/random_uniformAdd4main/qr2/dense/kernel/Initializer/random_uniform/mul4main/qr2/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel
Е
main/qr2/dense/kernel
VariableV2*
shape:	>*
shared_name *(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
	container *
dtype0
ь
main/qr2/dense/kernel/AssignAssignmain/qr2/dense/kernel0main/qr2/dense/kernel/Initializer/random_uniform*
T0*
_output_shapes
:	>*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense/kernel

main/qr2/dense/kernel/readIdentitymain/qr2/dense/kernel*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel

%main/qr2/dense/bias/Initializer/zerosConst*&
_class
loc:@main/qr2/dense/bias*
valueB*    *
_output_shapes	
:*
dtype0
Љ
main/qr2/dense/bias
VariableV2*
dtype0*
shared_name *
	container *
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
shape:
з
main/qr2/dense/bias/AssignAssignmain/qr2/dense/bias%main/qr2/dense/bias/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*&
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
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ

main/qr2/dense/BiasAddBiasAddmain/qr2/dense/MatMulmain/qr2/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
f
main/qr2/dense/ReluRelumain/qr2/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
8main/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0**
_class 
loc:@main/qr2/dense_1/kernel*
valueB"      *
_output_shapes
:
Ї
6main/qr2/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: **
_class 
loc:@main/qr2/dense_1/kernel*
valueB
 *зГнН
Ї
6main/qr2/dense_1/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *зГн=

@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_1/kernel/Initializer/random_uniform/shape*
T0*

seed * 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
seed2Ь*
dtype0
њ
6main/qr2/dense_1/kernel/Initializer/random_uniform/subSub6main/qr2/dense_1/kernel/Initializer/random_uniform/max6main/qr2/dense_1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
: 

6main/qr2/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0**
_class 
loc:@main/qr2/dense_1/kernel

2main/qr2/dense_1/kernel/Initializer/random_uniformAdd6main/qr2/dense_1/kernel/Initializer/random_uniform/mul6main/qr2/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0
Л
main/qr2/dense_1/kernel
VariableV2**
_class 
loc:@main/qr2/dense_1/kernel*
shape:
*
dtype0*
	container * 
_output_shapes
:
*
shared_name 
ѕ
main/qr2/dense_1/kernel/AssignAssignmain/qr2/dense_1/kernel2main/qr2/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
T0

main/qr2/dense_1/kernel/readIdentitymain/qr2/dense_1/kernel* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0
 
'main/qr2/dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias
­
main/qr2/dense_1/bias
VariableV2*
shared_name *
	container *
_output_shapes	
:*
shape:*(
_class
loc:@main/qr2/dense_1/bias*
dtype0
п
main/qr2/dense_1/bias/AssignAssignmain/qr2/dense_1/bias'main/qr2/dense_1/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(

main/qr2/dense_1/bias/readIdentitymain/qr2/dense_1/bias*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
T0
­
main/qr2/dense_1/MatMulMatMulmain/qr2/dense/Relumain/qr2/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ђ
main/qr2/dense_1/BiasAddBiasAddmain/qr2/dense_1/MatMulmain/qr2/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
j
main/qr2/dense_1/ReluRelumain/qr2/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Е
8main/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:**
_class 
loc:@main/qr2/dense_2/kernel*
dtype0
Ї
6main/qr2/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: **
_class 
loc:@main/qr2/dense_2/kernel*
valueB
 *IvО*
dtype0
Ї
6main/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*
_output_shapes
: **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0

@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_2/kernel/Initializer/random_uniform/shape**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
dtype0*
seed2н*
T0*

seed 
њ
6main/qr2/dense_2/kernel/Initializer/random_uniform/subSub6main/qr2/dense_2/kernel/Initializer/random_uniform/max6main/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@main/qr2/dense_2/kernel

6main/qr2/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_2/kernel/Initializer/random_uniform/sub**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
_output_shapes
:	
џ
2main/qr2/dense_2/kernel/Initializer/random_uniformAdd6main/qr2/dense_2/kernel/Initializer/random_uniform/mul6main/qr2/dense_2/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
T0
Й
main/qr2/dense_2/kernel
VariableV2*
shared_name **
_class 
loc:@main/qr2/dense_2/kernel*
shape:	*
	container *
dtype0*
_output_shapes
:	
є
main/qr2/dense_2/kernel/AssignAssignmain/qr2/dense_2/kernel2main/qr2/dense_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel

main/qr2/dense_2/kernel/readIdentitymain/qr2/dense_2/kernel*
T0*
_output_shapes
:	**
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
VariableV2*
shape:*
_output_shapes
:*
dtype0*
	container *
shared_name *(
_class
loc:@main/qr2/dense_2/bias
о
main/qr2/dense_2/bias/AssignAssignmain/qr2/dense_2/bias'main/qr2/dense_2/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:

main/qr2/dense_2/bias/readIdentitymain/qr2/dense_2/bias*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
T0
Ў
main/qr2/dense_2/MatMulMatMulmain/qr2/dense_1/Relumain/qr2/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0*
transpose_b( 
Ё
main/qr2/dense_2/BiasAddBiasAddmain/qr2/dense_2/MatMulmain/qr2/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
z
main/qr2/SqueezeSqueezemain/qr2/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
a
main/qr2_1/concat/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

main/qr2_1/concatConcatV2Placeholder
main/mul_1main/qr2_1/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ>*
T0*

Tidx0
Љ
main/qr2_1/dense/MatMulMatMulmain/qr2_1/concatmain/qr2/dense/kernel/read*
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
 
main/qr2_1/dense/BiasAddBiasAddmain/qr2_1/dense/MatMulmain/qr2/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
j
main/qr2_1/dense/ReluRelumain/qr2_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Б
main/qr2_1/dense_1/MatMulMatMulmain/qr2_1/dense/Relumain/qr2/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( *
transpose_a( 
І
main/qr2_1/dense_1/BiasAddBiasAddmain/qr2_1/dense_1/MatMulmain/qr2/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
n
main/qr2_1/dense_1/ReluRelumain/qr2_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
В
main/qr2_1/dense_2/MatMulMatMulmain/qr2_1/dense_1/Relumain/qr2/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b( 
Ѕ
main/qr2_1/dense_2/BiasAddBiasAddmain/qr2_1/dense_2/MatMulmain/qr2/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
~
main/qr2_1/SqueezeSqueezemain/qr2_1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

^
main/qc/concat/axisConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 

main/qc/concatConcatV2PlaceholderPlaceholder_1main/qc/concat/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ>*

Tidx0
Џ
5main/qc/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB">      *'
_class
loc:@main/qc/dense/kernel
Ё
3main/qc/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *?ЈО*
dtype0*
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel
Ё
3main/qc/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Ј>*
dtype0*
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel
џ
=main/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/qc/dense/kernel/Initializer/random_uniform/shape*

seed *
_output_shapes
:	>*
T0*
dtype0*'
_class
loc:@main/qc/dense/kernel*
seed2ћ
ю
3main/qc/dense/kernel/Initializer/random_uniform/subSub3main/qc/dense/kernel/Initializer/random_uniform/max3main/qc/dense/kernel/Initializer/random_uniform/min*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
: *
T0

3main/qc/dense/kernel/Initializer/random_uniform/mulMul=main/qc/dense/kernel/Initializer/random_uniform/RandomUniform3main/qc/dense/kernel/Initializer/random_uniform/sub*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>
ѓ
/main/qc/dense/kernel/Initializer/random_uniformAdd3main/qc/dense/kernel/Initializer/random_uniform/mul3main/qc/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
Г
main/qc/dense/kernel
VariableV2*
dtype0*
	container *
shape:	>*
shared_name *
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
ш
main/qc/dense/kernel/AssignAssignmain/qc/dense/kernel/main/qc/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel

main/qc/dense/kernel/readIdentitymain/qc/dense/kernel*
_output_shapes
:	>*
T0*'
_class
loc:@main/qc/dense/kernel

$main/qc/dense/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias
Ї
main/qc/dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*%
_class
loc:@main/qc/dense/bias*
shared_name *
shape:
г
main/qc/dense/bias/AssignAssignmain/qc/dense/bias$main/qc/dense/bias/Initializer/zeros*%
_class
loc:@main/qc/dense/bias*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(

main/qc/dense/bias/readIdentitymain/qc/dense/bias*
_output_shapes	
:*
T0*%
_class
loc:@main/qc/dense/bias
Ђ
main/qc/dense/MatMulMatMulmain/qc/concatmain/qc/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 

main/qc/dense/BiasAddBiasAddmain/qc/dense/MatMulmain/qc/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
d
main/qc/dense/ReluRelumain/qc/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Г
7main/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ѕ
5main/qc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel*
dtype0*
valueB
 *зГнН
Ѕ
5main/qc/dense_1/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *зГн=*
_output_shapes
: *
dtype0

?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_1/kernel/Initializer/random_uniform/shape*

seed *
dtype0*
seed2*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:

і
5main/qc/dense_1/kernel/Initializer/random_uniform/subSub5main/qc/dense_1/kernel/Initializer/random_uniform/max5main/qc/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel*
T0

5main/qc/dense_1/kernel/Initializer/random_uniform/mulMul?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
T0
ќ
1main/qc/dense_1/kernel/Initializer/random_uniformAdd5main/qc/dense_1/kernel/Initializer/random_uniform/mul5main/qc/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
T0
Й
main/qc/dense_1/kernel
VariableV2*
shape:
*)
_class
loc:@main/qc/dense_1/kernel*
	container * 
_output_shapes
:
*
dtype0*
shared_name 
ё
main/qc/dense_1/kernel/AssignAssignmain/qc/dense_1/kernel1main/qc/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel

main/qc/dense_1/kernel/readIdentitymain/qc/dense_1/kernel*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:


&main/qc/dense_1/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
Ћ
main/qc/dense_1/bias
VariableV2*
shape:*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
shared_name *
	container *
dtype0
л
main/qc/dense_1/bias/AssignAssignmain/qc/dense_1/bias&main/qc/dense_1/bias/Initializer/zeros*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(

main/qc/dense_1/bias/readIdentitymain/qc/dense_1/bias*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0
Њ
main/qc/dense_1/MatMulMatMulmain/qc/dense/Relumain/qc/dense_1/kernel/read*
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( 

main/qc/dense_1/BiasAddBiasAddmain/qc/dense_1/MatMulmain/qc/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
h
main/qc/dense_1/ReluRelumain/qc/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Г
7main/qc/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@main/qc/dense_2/kernel
Ѕ
5main/qc/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
: *
valueB
 *IvО
Ѕ
5main/qc/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *Iv>*)
_class
loc:@main/qc/dense_2/kernel

?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_2/kernel/Initializer/random_uniform/shape*)
_class
loc:@main/qc/dense_2/kernel*
dtype0*

seed *
seed2*
T0*
_output_shapes
:	
і
5main/qc/dense_2/kernel/Initializer/random_uniform/subSub5main/qc/dense_2/kernel/Initializer/random_uniform/max5main/qc/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *)
_class
loc:@main/qc/dense_2/kernel*
T0

5main/qc/dense_2/kernel/Initializer/random_uniform/mulMul?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0
ћ
1main/qc/dense_2/kernel/Initializer/random_uniformAdd5main/qc/dense_2/kernel/Initializer/random_uniform/mul5main/qc/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel
З
main/qc/dense_2/kernel
VariableV2*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
shared_name *
	container *
dtype0*
shape:	
№
main/qc/dense_2/kernel/AssignAssignmain/qc/dense_2/kernel1main/qc/dense_2/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
T0*
validate_shape(

main/qc/dense_2/kernel/readIdentitymain/qc/dense_2/kernel*
T0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel

&main/qc/dense_2/bias/Initializer/zerosConst*'
_class
loc:@main/qc/dense_2/bias*
dtype0*
_output_shapes
:*
valueB*    
Љ
main/qc/dense_2/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
shared_name *
	container 
к
main/qc/dense_2/bias/AssignAssignmain/qc/dense_2/bias&main/qc/dense_2/bias/Initializer/zeros*'
_class
loc:@main/qc/dense_2/bias*
T0*
use_locking(*
_output_shapes
:*
validate_shape(

main/qc/dense_2/bias/readIdentitymain/qc/dense_2/bias*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0
Ћ
main/qc/dense_2/MatMulMatMulmain/qc/dense_1/Relumain/qc/dense_2/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0

main/qc/dense_2/BiasAddBiasAddmain/qc/dense_2/MatMulmain/qc/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
x
main/qc/SqueezeSqueezemain/qc/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ
`
main/qc_1/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

main/qc_1/concatConcatV2Placeholder
main/mul_1main/qc_1/concat/axis*

Tidx0*
N*'
_output_shapes
:џџџџџџџџџ>*
T0
І
main/qc_1/dense/MatMulMatMulmain/qc_1/concatmain/qc/dense/kernel/read*
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( 

main/qc_1/dense/BiasAddBiasAddmain/qc_1/dense/MatMulmain/qc/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
h
main/qc_1/dense/ReluRelumain/qc_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Ў
main/qc_1/dense_1/MatMulMatMulmain/qc_1/dense/Relumain/qc/dense_1/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0
Ѓ
main/qc_1/dense_1/BiasAddBiasAddmain/qc_1/dense_1/MatMulmain/qc/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
l
main/qc_1/dense_1/ReluRelumain/qc_1/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Џ
main/qc_1/dense_2/MatMulMatMulmain/qc_1/dense_1/Relumain/qc/dense_2/kernel/read*
transpose_b( *
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
main/qc_1/dense_2/BiasAddBiasAddmain/qc_1/dense_2/MatMulmain/qc/dense_2/bias/read*
T0*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
|
main/qc_1/SqueezeSqueezemain/qc_1/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ
b
main/qc_var/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

main/qc_var/concatConcatV2PlaceholderPlaceholder_1main/qc_var/concat/axis*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ>*
N
З
9main/qc_var/dense/kernel/Initializer/random_uniform/shapeConst*
valueB">      *+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:*
dtype0
Љ
7main/qc_var/dense/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@main/qc_var/dense/kernel*
valueB
 *?ЈО*
_output_shapes
: *
dtype0
Љ
7main/qc_var/dense/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@main/qc_var/dense/kernel*
dtype0*
_output_shapes
: *
valueB
 *?Ј>

Amain/qc_var/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform9main/qc_var/dense/kernel/Initializer/random_uniform/shape*

seed *
seed2Л*
dtype0*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
_output_shapes
:	>
ў
7main/qc_var/dense/kernel/Initializer/random_uniform/subSub7main/qc_var/dense/kernel/Initializer/random_uniform/max7main/qc_var/dense/kernel/Initializer/random_uniform/min*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
: *
T0

7main/qc_var/dense/kernel/Initializer/random_uniform/mulMulAmain/qc_var/dense/kernel/Initializer/random_uniform/RandomUniform7main/qc_var/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel

3main/qc_var/dense/kernel/Initializer/random_uniformAdd7main/qc_var/dense/kernel/Initializer/random_uniform/mul7main/qc_var/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	>*
T0*+
_class!
loc:@main/qc_var/dense/kernel
Л
main/qc_var/dense/kernel
VariableV2*
shared_name *
	container *
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
dtype0*
shape:	>
ј
main/qc_var/dense/kernel/AssignAssignmain/qc_var/dense/kernel3main/qc_var/dense/kernel/Initializer/random_uniform*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(

main/qc_var/dense/kernel/readIdentitymain/qc_var/dense/kernel*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
T0
Ђ
(main/qc_var/dense/bias/Initializer/zerosConst*
dtype0*
valueB*    *)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Џ
main/qc_var/dense/bias
VariableV2*
dtype0*)
_class
loc:@main/qc_var/dense/bias*
shape:*
shared_name *
_output_shapes	
:*
	container 
у
main/qc_var/dense/bias/AssignAssignmain/qc_var/dense/bias(main/qc_var/dense/bias/Initializer/zeros*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*)
_class
loc:@main/qc_var/dense/bias

main/qc_var/dense/bias/readIdentitymain/qc_var/dense/bias*)
_class
loc:@main/qc_var/dense/bias*
T0*
_output_shapes	
:
Ў
main/qc_var/dense/MatMulMatMulmain/qc_var/concatmain/qc_var/dense/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ѕ
main/qc_var/dense/BiasAddBiasAddmain/qc_var/dense/MatMulmain/qc_var/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
l
main/qc_var/dense/ReluRelumain/qc_var/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Л
;main/qc_var/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:*-
_class#
!loc:@main/qc_var/dense_1/kernel
­
9main/qc_var/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*-
_class#
!loc:@main/qc_var/dense_1/kernel*
valueB
 *зГнН
­
9main/qc_var/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГн=*
_output_shapes
: *-
_class#
!loc:@main/qc_var/dense_1/kernel*
dtype0

Cmain/qc_var/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform;main/qc_var/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*
seed2Ь*
dtype0*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:


9main/qc_var/dense_1/kernel/Initializer/random_uniform/subSub9main/qc_var/dense_1/kernel/Initializer/random_uniform/max9main/qc_var/dense_1/kernel/Initializer/random_uniform/min*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0*
_output_shapes
: 

9main/qc_var/dense_1/kernel/Initializer/random_uniform/mulMulCmain/qc_var/dense_1/kernel/Initializer/random_uniform/RandomUniform9main/qc_var/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0

5main/qc_var/dense_1/kernel/Initializer/random_uniformAdd9main/qc_var/dense_1/kernel/Initializer/random_uniform/mul9main/qc_var/dense_1/kernel/Initializer/random_uniform/min*
T0* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel
С
main/qc_var/dense_1/kernel
VariableV2* 
_output_shapes
:
*
shape:
*
	container *
dtype0*
shared_name *-
_class#
!loc:@main/qc_var/dense_1/kernel

!main/qc_var/dense_1/kernel/AssignAssignmain/qc_var/dense_1/kernel5main/qc_var/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
use_locking(*
T0
Ё
main/qc_var/dense_1/kernel/readIdentitymain/qc_var/dense_1/kernel*
T0*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:

І
*main/qc_var/dense_1/bias/Initializer/zerosConst*
valueB*    *+
_class!
loc:@main/qc_var/dense_1/bias*
dtype0*
_output_shapes	
:
Г
main/qc_var/dense_1/bias
VariableV2*
shared_name *+
_class!
loc:@main/qc_var/dense_1/bias*
	container *
_output_shapes	
:*
shape:*
dtype0
ы
main/qc_var/dense_1/bias/AssignAssignmain/qc_var/dense_1/bias*main/qc_var/dense_1/bias/Initializer/zeros*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0

main/qc_var/dense_1/bias/readIdentitymain/qc_var/dense_1/bias*+
_class!
loc:@main/qc_var/dense_1/bias*
T0*
_output_shapes	
:
Ж
main/qc_var/dense_1/MatMulMatMulmain/qc_var/dense/Relumain/qc_var/dense_1/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0
Ћ
main/qc_var/dense_1/BiasAddBiasAddmain/qc_var/dense_1/MatMulmain/qc_var/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
p
main/qc_var/dense_1/ReluRelumain/qc_var/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Л
;main/qc_var/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*-
_class#
!loc:@main/qc_var/dense_2/kernel*
dtype0
­
9main/qc_var/dense_2/kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *IvО
­
9main/qc_var/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *Iv>*-
_class#
!loc:@main/qc_var/dense_2/kernel

Cmain/qc_var/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform;main/qc_var/dense_2/kernel/Initializer/random_uniform/shape*-
_class#
!loc:@main/qc_var/dense_2/kernel*
seed2н*
T0*

seed *
dtype0*
_output_shapes
:	

9main/qc_var/dense_2/kernel/Initializer/random_uniform/subSub9main/qc_var/dense_2/kernel/Initializer/random_uniform/max9main/qc_var/dense_2/kernel/Initializer/random_uniform/min*-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
: *
T0

9main/qc_var/dense_2/kernel/Initializer/random_uniform/mulMulCmain/qc_var/dense_2/kernel/Initializer/random_uniform/RandomUniform9main/qc_var/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0

5main/qc_var/dense_2/kernel/Initializer/random_uniformAdd9main/qc_var/dense_2/kernel/Initializer/random_uniform/mul9main/qc_var/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel
П
main/qc_var/dense_2/kernel
VariableV2*
_output_shapes
:	*
shape:	*
	container *
shared_name *
dtype0*-
_class#
!loc:@main/qc_var/dense_2/kernel

!main/qc_var/dense_2/kernel/AssignAssignmain/qc_var/dense_2/kernel5main/qc_var/dense_2/kernel/Initializer/random_uniform*
use_locking(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
 
main/qc_var/dense_2/kernel/readIdentitymain/qc_var/dense_2/kernel*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0
Є
*main/qc_var/dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:
Б
main/qc_var/dense_2/bias
VariableV2*
_output_shapes
:*
dtype0*
shape:*
shared_name *
	container *+
_class!
loc:@main/qc_var/dense_2/bias
ъ
main/qc_var/dense_2/bias/AssignAssignmain/qc_var/dense_2/bias*main/qc_var/dense_2/bias/Initializer/zeros*
validate_shape(*+
_class!
loc:@main/qc_var/dense_2/bias*
use_locking(*
T0*
_output_shapes
:

main/qc_var/dense_2/bias/readIdentitymain/qc_var/dense_2/bias*
T0*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:
З
main/qc_var/dense_2/MatMulMatMulmain/qc_var/dense_1/Relumain/qc_var/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
Њ
main/qc_var/dense_2/BiasAddBiasAddmain/qc_var/dense_2/MatMulmain/qc_var/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ

main/qc_var/SqueezeSqueezemain/qc_var/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
c
main/qc_var/SoftplusSoftplusmain/qc_var/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
d
main/qc_var_1/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

main/qc_var_1/concatConcatV2Placeholder
main/mul_1main/qc_var_1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
N*

Tidx0*
T0
В
main/qc_var_1/dense/MatMulMatMulmain/qc_var_1/concatmain/qc_var/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ
Љ
main/qc_var_1/dense/BiasAddBiasAddmain/qc_var_1/dense/MatMulmain/qc_var/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
p
main/qc_var_1/dense/ReluRelumain/qc_var_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
К
main/qc_var_1/dense_1/MatMulMatMulmain/qc_var_1/dense/Relumain/qc_var/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( *
transpose_a( 
Џ
main/qc_var_1/dense_1/BiasAddBiasAddmain/qc_var_1/dense_1/MatMulmain/qc_var/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
t
main/qc_var_1/dense_1/ReluRelumain/qc_var_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Л
main/qc_var_1/dense_2/MatMulMatMulmain/qc_var_1/dense_1/Relumain/qc_var/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b( 
Ў
main/qc_var_1/dense_2/BiasAddBiasAddmain/qc_var_1/dense_2/MatMulmain/qc_var/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0

main/qc_var_1/SqueezeSqueezemain/qc_var_1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

g
main/qc_var_1/SoftplusSoftplusmain/qc_var_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
main_1/pi/dense/MatMulMatMulPlaceholder_2main/pi/dense/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 

main_1/pi/dense/BiasAddBiasAddmain_1/pi/dense/MatMulmain/pi/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
h
main_1/pi/dense/ReluRelumain_1/pi/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Ў
main_1/pi/dense_1/MatMulMatMulmain_1/pi/dense/Relumain/pi/dense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Ѓ
main_1/pi/dense_1/BiasAddBiasAddmain_1/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
l
main_1/pi/dense_1/ReluRelumain_1/pi/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Џ
main_1/pi/dense_2/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_2/kernel/read*
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Ђ
main_1/pi/dense_2/BiasAddBiasAddmain_1/pi/dense_2/MatMulmain/pi/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
Џ
main_1/pi/dense_3/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_3/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ђ
main_1/pi/dense_3/BiasAddBiasAddmain_1/pi/dense_3/MatMulmain/pi/dense_3/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
f
!main_1/pi/clip_by_value/Minimum/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 

main_1/pi/clip_by_value/MinimumMinimummain_1/pi/dense_3/BiasAdd!main_1/pi/clip_by_value/Minimum/y*'
_output_shapes
:џџџџџџџџџ*
T0
^
main_1/pi/clip_by_value/yConst*
valueB
 *   С*
_output_shapes
: *
dtype0

main_1/pi/clip_by_valueMaximummain_1/pi/clip_by_value/Minimummain_1/pi/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ*
T0
_
main_1/pi/ExpExpmain_1/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
h
main_1/pi/ShapeShapemain_1/pi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
a
main_1/pi/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
c
main_1/pi/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Ў
,main_1/pi/random_normal/RandomStandardNormalRandomStandardNormalmain_1/pi/Shape*

seed *
seed2*
dtype0*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
main_1/pi/random_normal/mulMul,main_1/pi/random_normal/RandomStandardNormalmain_1/pi/random_normal/stddev*
T0*'
_output_shapes
:џџџџџџџџџ

main_1/pi/random_normalAddmain_1/pi/random_normal/mulmain_1/pi/random_normal/mean*
T0*'
_output_shapes
:џџџџџџџџџ
n
main_1/pi/mulMulmain_1/pi/random_normalmain_1/pi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
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
main_1/pi/Exp_1Expmain_1/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
V
main_1/pi/add_1/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
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
main_1/pi/pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
j
main_1/pi/powPowmain_1/pi/truedivmain_1/pi/pow/y*
T0*'
_output_shapes
:џџџџџџџџџ
V
main_1/pi/mul_1/xConst*
valueB
 *   @*
_output_shapes
: *
dtype0
t
main_1/pi/mul_1Mulmain_1/pi/mul_1/xmain_1/pi/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
h
main_1/pi/add_2Addmain_1/pi/powmain_1/pi/mul_1*'
_output_shapes
:џџџџџџџџџ*
T0
V
main_1/pi/add_3/yConst*
valueB
 *?ы?*
_output_shapes
: *
dtype0
l
main_1/pi/add_3Addmain_1/pi/add_2main_1/pi/add_3/y*'
_output_shapes
:џџџџџџџџџ*
T0
V
main_1/pi/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   П
l
main_1/pi/mul_2Mulmain_1/pi/mul_2/xmain_1/pi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
a
main_1/pi/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 

main_1/pi/SumSummain_1/pi/mul_2main_1/pi/Sum/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
V
main_1/pi/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *r1?
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
main_1/pi/mul_3Mulmain_1/pi/mul_3/xmain_1/pi/add*'
_output_shapes
:џџџџџџџџџ*
T0
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
main_1/pi/mul_4/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
l
main_1/pi/mul_4Mulmain_1/pi/mul_4/xmain_1/pi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ
c
!main_1/pi/Sum_1/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

main_1/pi/Sum_1Summain_1/pi/mul_4!main_1/pi/Sum_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
d
main_1/pi/sub_3Submain_1/pi/Summain_1/pi/Sum_1*#
_output_shapes
:џџџџџџџџџ*
T0
c
main_1/pi/TanhTanhmain_1/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
Y
main_1/pi/Tanh_1Tanhmain_1/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
Q
main_1/mul/yConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
a

main_1/mulMulmain_1/pi/Tanhmain_1/mul/y*'
_output_shapes
:џџџџџџџџџ*
T0
S
main_1/mul_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
g
main_1/mul_1Mulmain_1/pi/Tanh_1main_1/mul_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
a
target/qr1/concat/axisConst*
valueB :
џџџџџџџџџ*
_output_shapes
: *
dtype0

target/qr1/concatConcatV2Placeholder_2Placeholder_1target/qr1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*

Tidx0*
N*
T0
Е
8target/qr1/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:**
_class 
loc:@target/qr1/dense/kernel*
valueB">      
Ї
6target/qr1/dense/kernel/Initializer/random_uniform/minConst*
dtype0**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
: *
valueB
 *?ЈО
Ї
6target/qr1/dense/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@target/qr1/dense/kernel*
valueB
 *?Ј>*
dtype0*
_output_shapes
: 

@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr1/dense/kernel/Initializer/random_uniform/shape*
_output_shapes
:	>*
dtype0**
_class 
loc:@target/qr1/dense/kernel*
seed2Е*
T0*

seed 
њ
6target/qr1/dense/kernel/Initializer/random_uniform/subSub6target/qr1/dense/kernel/Initializer/random_uniform/max6target/qr1/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: **
_class 
loc:@target/qr1/dense/kernel

6target/qr1/dense/kernel/Initializer/random_uniform/mulMul@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniform6target/qr1/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel*
T0
џ
2target/qr1/dense/kernel/Initializer/random_uniformAdd6target/qr1/dense/kernel/Initializer/random_uniform/mul6target/qr1/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel
Й
target/qr1/dense/kernel
VariableV2*
dtype0*
shared_name *
shape:	>*
	container *
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel
є
target/qr1/dense/kernel/AssignAssigntarget/qr1/dense/kernel2target/qr1/dense/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes
:	>*
T0**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(

target/qr1/dense/kernel/readIdentitytarget/qr1/dense/kernel*
T0**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>
 
'target/qr1/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *
dtype0*(
_class
loc:@target/qr1/dense/bias
­
target/qr1/dense/bias
VariableV2*
shared_name *
shape:*
dtype0*
_output_shapes	
:*
	container *(
_class
loc:@target/qr1/dense/bias
п
target/qr1/dense/bias/AssignAssigntarget/qr1/dense/bias'target/qr1/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes	
:*(
_class
loc:@target/qr1/dense/bias*
T0

target/qr1/dense/bias/readIdentitytarget/qr1/dense/bias*
T0*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:
Ћ
target/qr1/dense/MatMulMatMultarget/qr1/concattarget/qr1/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0*
transpose_b( 
Ђ
target/qr1/dense/BiasAddBiasAddtarget/qr1/dense/MatMultarget/qr1/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
j
target/qr1/dense/ReluRelutarget/qr1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Й
:target/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *,
_class"
 loc:@target/qr1/dense_1/kernel
Ћ
8target/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*,
_class"
 loc:@target/qr1/dense_1/kernel*
valueB
 *зГнН
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
Btarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*

seed * 
_output_shapes
:
*
seed2Ц

8target/qr1/dense_1/kernel/Initializer/random_uniform/subSub8target/qr1/dense_1/kernel/Initializer/random_uniform/max8target/qr1/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_1/kernel*
_output_shapes
: *
T0

8target/qr1/dense_1/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_1/kernel/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel

4target/qr1/dense_1/kernel/Initializer/random_uniformAdd8target/qr1/dense_1/kernel/Initializer/random_uniform/mul8target/qr1/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_1/kernel* 
_output_shapes
:
*
T0
П
target/qr1/dense_1/kernel
VariableV2*
shared_name *
shape:
* 
_output_shapes
:
*
	container *
dtype0*,
_class"
 loc:@target/qr1/dense_1/kernel
§
 target/qr1/dense_1/kernel/AssignAssigntarget/qr1/dense_1/kernel4target/qr1/dense_1/kernel/Initializer/random_uniform*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*,
_class"
 loc:@target/qr1/dense_1/kernel
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
dtype0*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias*
valueB*    
Б
target/qr1/dense_1/bias
VariableV2*
shared_name *
shape:**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
	container *
dtype0
ч
target/qr1/dense_1/bias/AssignAssigntarget/qr1/dense_1/bias)target/qr1/dense_1/bias/Initializer/zeros**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0

target/qr1/dense_1/bias/readIdentitytarget/qr1/dense_1/bias**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
T0
Г
target/qr1/dense_1/MatMulMatMultarget/qr1/dense/Relutarget/qr1/dense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ
Ј
target/qr1/dense_1/BiasAddBiasAddtarget/qr1/dense_1/MatMultarget/qr1/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
n
target/qr1/dense_1/ReluRelutarget/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Й
:target/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@target/qr1/dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ћ
8target/qr1/dense_2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@target/qr1/dense_2/kernel*
dtype0*
_output_shapes
: *
valueB
 *IvО
Ћ
8target/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *,
_class"
 loc:@target/qr1/dense_2/kernel*
valueB
 *Iv>*
dtype0

Btarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
seed2з*

seed *
_output_shapes
:	

8target/qr1/dense_2/kernel/Initializer/random_uniform/subSub8target/qr1/dense_2/kernel/Initializer/random_uniform/max8target/qr1/dense_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0*
_output_shapes
: 

8target/qr1/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_2/kernel/Initializer/random_uniform/sub*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0*
_output_shapes
:	

4target/qr1/dense_2/kernel/Initializer/random_uniformAdd8target/qr1/dense_2/kernel/Initializer/random_uniform/mul8target/qr1/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0
Н
target/qr1/dense_2/kernel
VariableV2*
dtype0*
	container *
shape:	*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel*
shared_name 
ќ
 target/qr1/dense_2/kernel/AssignAssigntarget/qr1/dense_2/kernel4target/qr1/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(

target/qr1/dense_2/kernel/readIdentitytarget/qr1/dense_2/kernel*
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel
Ђ
)target/qr1/dense_2/bias/Initializer/zerosConst*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
valueB*    *
dtype0
Џ
target/qr1/dense_2/bias
VariableV2*
shape:**
_class 
loc:@target/qr1/dense_2/bias*
dtype0*
	container *
_output_shapes
:*
shared_name 
ц
target/qr1/dense_2/bias/AssignAssigntarget/qr1/dense_2/bias)target/qr1/dense_2/bias/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
:*
use_locking(**
_class 
loc:@target/qr1/dense_2/bias

target/qr1/dense_2/bias/readIdentitytarget/qr1/dense_2/bias*
T0*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias
Д
target/qr1/dense_2/MatMulMatMultarget/qr1/dense_1/Relutarget/qr1/dense_2/kernel/read*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ*
T0
Ї
target/qr1/dense_2/BiasAddBiasAddtarget/qr1/dense_2/MatMultarget/qr1/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
~
target/qr1/SqueezeSqueezetarget/qr1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

c
target/qr1_1/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

target/qr1_1/concatConcatV2Placeholder_2main_1/mul_1target/qr1_1/concat/axis*

Tidx0*'
_output_shapes
:џџџџџџџџџ>*
T0*
N
Џ
target/qr1_1/dense/MatMulMatMultarget/qr1_1/concattarget/qr1/dense/kernel/read*(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( *
transpose_b( 
І
target/qr1_1/dense/BiasAddBiasAddtarget/qr1_1/dense/MatMultarget/qr1/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
n
target/qr1_1/dense/ReluRelutarget/qr1_1/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
З
target/qr1_1/dense_1/MatMulMatMultarget/qr1_1/dense/Relutarget/qr1/dense_1/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Ќ
target/qr1_1/dense_1/BiasAddBiasAddtarget/qr1_1/dense_1/MatMultarget/qr1/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
r
target/qr1_1/dense_1/ReluRelutarget/qr1_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
И
target/qr1_1/dense_2/MatMulMatMultarget/qr1_1/dense_1/Relutarget/qr1/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ћ
target/qr1_1/dense_2/BiasAddBiasAddtarget/qr1_1/dense_2/MatMultarget/qr1/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0

target/qr1_1/SqueezeSqueezetarget/qr1_1/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ*
T0
a
target/qr2/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

target/qr2/concatConcatV2Placeholder_2Placeholder_1target/qr2/concat/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ>*

Tidx0
Е
8target/qr2/dense/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@target/qr2/dense/kernel*
valueB">      *
dtype0*
_output_shapes
:
Ї
6target/qr2/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *?ЈО*
_output_shapes
: **
_class 
loc:@target/qr2/dense/kernel*
dtype0
Ї
6target/qr2/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Ј>*
dtype0*
_output_shapes
: **
_class 
loc:@target/qr2/dense/kernel

@target/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr2/dense/kernel/Initializer/random_uniform/shape*
T0*
_output_shapes
:	>*
seed2ѕ**
_class 
loc:@target/qr2/dense/kernel*
dtype0*

seed 
њ
6target/qr2/dense/kernel/Initializer/random_uniform/subSub6target/qr2/dense/kernel/Initializer/random_uniform/max6target/qr2/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: **
_class 
loc:@target/qr2/dense/kernel*
T0
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
VariableV2*
	container *
dtype0*
_output_shapes
:	>*
shared_name *
shape:	>**
_class 
loc:@target/qr2/dense/kernel
є
target/qr2/dense/kernel/AssignAssigntarget/qr2/dense/kernel2target/qr2/dense/kernel/Initializer/random_uniform*
T0*
validate_shape(**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>*
use_locking(

target/qr2/dense/kernel/readIdentitytarget/qr2/dense/kernel*
_output_shapes
:	>**
_class 
loc:@target/qr2/dense/kernel*
T0
 
'target/qr2/dense/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *(
_class
loc:@target/qr2/dense/bias*
dtype0
­
target/qr2/dense/bias
VariableV2*
_output_shapes	
:*
shape:*(
_class
loc:@target/qr2/dense/bias*
	container *
dtype0*
shared_name 
п
target/qr2/dense/bias/AssignAssigntarget/qr2/dense/bias'target/qr2/dense/bias/Initializer/zeros*
_output_shapes	
:*
T0*
use_locking(*(
_class
loc:@target/qr2/dense/bias*
validate_shape(

target/qr2/dense/bias/readIdentitytarget/qr2/dense/bias*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:*
T0
Ћ
target/qr2/dense/MatMulMatMultarget/qr2/concattarget/qr2/dense/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ђ
target/qr2/dense/BiasAddBiasAddtarget/qr2/dense/MatMultarget/qr2/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
j
target/qr2/dense/ReluRelutarget/qr2/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Й
:target/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *,
_class"
 loc:@target/qr2/dense_1/kernel*
dtype0
Ћ
8target/qr2/dense_1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@target/qr2/dense_1/kernel*
valueB
 *зГнН*
_output_shapes
: *
dtype0
Ћ
8target/qr2/dense_1/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@target/qr2/dense_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *зГн=

Btarget/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_1/kernel/Initializer/random_uniform/shape*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*

seed *
dtype0* 
_output_shapes
:
*
seed2
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
*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel

4target/qr2/dense_1/kernel/Initializer/random_uniformAdd8target/qr2/dense_1/kernel/Initializer/random_uniform/mul8target/qr2/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel
П
target/qr2/dense_1/kernel
VariableV2*
dtype0*
	container *
shape:
* 
_output_shapes
:
*
shared_name *,
_class"
 loc:@target/qr2/dense_1/kernel
§
 target/qr2/dense_1/kernel/AssignAssigntarget/qr2/dense_1/kernel4target/qr2/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
*
use_locking(*
validate_shape(*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel

target/qr2/dense_1/kernel/readIdentitytarget/qr2/dense_1/kernel*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*
T0
Є
)target/qr2/dense_1/bias/Initializer/zerosConst**
_class 
loc:@target/qr2/dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Б
target/qr2/dense_1/bias
VariableV2*
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias*
	container *
dtype0*
shape:*
shared_name 
ч
target/qr2/dense_1/bias/AssignAssigntarget/qr2/dense_1/bias)target/qr2/dense_1/bias/Initializer/zeros*
use_locking(*
_output_shapes	
:*
T0**
_class 
loc:@target/qr2/dense_1/bias*
validate_shape(

target/qr2/dense_1/bias/readIdentitytarget/qr2/dense_1/bias*
T0**
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:
Г
target/qr2/dense_1/MatMulMatMultarget/qr2/dense/Relutarget/qr2/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( *
T0
Ј
target/qr2/dense_1/BiasAddBiasAddtarget/qr2/dense_1/MatMultarget/qr2/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
n
target/qr2/dense_1/ReluRelutarget/qr2/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Й
:target/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@target/qr2/dense_2/kernel*
valueB"      *
_output_shapes
:*
dtype0
Ћ
8target/qr2/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *IvО*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
: 
Ћ
8target/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*,
_class"
 loc:@target/qr2/dense_2/kernel*
valueB
 *Iv>*
_output_shapes
: 

Btarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_2/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*,
_class"
 loc:@target/qr2/dense_2/kernel*

seed *
T0*
_output_shapes
:	

8target/qr2/dense_2/kernel/Initializer/random_uniform/subSub8target/qr2/dense_2/kernel/Initializer/random_uniform/max8target/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@target/qr2/dense_2/kernel

8target/qr2/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr2/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0

4target/qr2/dense_2/kernel/Initializer/random_uniformAdd8target/qr2/dense_2/kernel/Initializer/random_uniform/mul8target/qr2/dense_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0*
_output_shapes
:	
Н
target/qr2/dense_2/kernel
VariableV2*
	container *,
_class"
 loc:@target/qr2/dense_2/kernel*
shared_name *
_output_shapes
:	*
dtype0*
shape:	
ќ
 target/qr2/dense_2/kernel/AssignAssigntarget/qr2/dense_2/kernel4target/qr2/dense_2/kernel/Initializer/random_uniform*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@target/qr2/dense_2/kernel

target/qr2/dense_2/kernel/readIdentitytarget/qr2/dense_2/kernel*
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel
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
VariableV2**
_class 
loc:@target/qr2/dense_2/bias*
	container *
dtype0*
shared_name *
shape:*
_output_shapes
:
ц
target/qr2/dense_2/bias/AssignAssigntarget/qr2/dense_2/bias)target/qr2/dense_2/bias/Initializer/zeros**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:

target/qr2/dense_2/bias/readIdentitytarget/qr2/dense_2/bias**
_class 
loc:@target/qr2/dense_2/bias*
_output_shapes
:*
T0
Д
target/qr2/dense_2/MatMulMatMultarget/qr2/dense_1/Relutarget/qr2/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0
Ї
target/qr2/dense_2/BiasAddBiasAddtarget/qr2/dense_2/MatMultarget/qr2/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
~
target/qr2/SqueezeSqueezetarget/qr2/dense_2/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
c
target/qr2_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

target/qr2_1/concatConcatV2Placeholder_2main_1/mul_1target/qr2_1/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
T0*

Tidx0*
N
Џ
target/qr2_1/dense/MatMulMatMultarget/qr2_1/concattarget/qr2/dense/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
І
target/qr2_1/dense/BiasAddBiasAddtarget/qr2_1/dense/MatMultarget/qr2/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
n
target/qr2_1/dense/ReluRelutarget/qr2_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
З
target/qr2_1/dense_1/MatMulMatMultarget/qr2_1/dense/Relutarget/qr2/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_a( 
Ќ
target/qr2_1/dense_1/BiasAddBiasAddtarget/qr2_1/dense_1/MatMultarget/qr2/dense_1/bias/read*
T0*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
r
target/qr2_1/dense_1/ReluRelutarget/qr2_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
И
target/qr2_1/dense_2/MatMulMatMultarget/qr2_1/dense_1/Relutarget/qr2/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ћ
target/qr2_1/dense_2/BiasAddBiasAddtarget/qr2_1/dense_2/MatMultarget/qr2/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC

target/qr2_1/SqueezeSqueezetarget/qr2_1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
`
target/qc/concat/axisConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0

target/qc/concatConcatV2Placeholder_2Placeholder_1target/qc/concat/axis*
T0*
N*

Tidx0*'
_output_shapes
:џџџџџџџџџ>
Г
7target/qc/dense/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@target/qc/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
Ѕ
5target/qc/dense/kernel/Initializer/random_uniform/minConst*)
_class
loc:@target/qc/dense/kernel*
dtype0*
valueB
 *?ЈО*
_output_shapes
: 
Ѕ
5target/qc/dense/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
: *
valueB
 *?Ј>*
dtype0

?target/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform7target/qc/dense/kernel/Initializer/random_uniform/shape*

seed *
seed2Е*
dtype0*
_output_shapes
:	>*
T0*)
_class
loc:@target/qc/dense/kernel
і
5target/qc/dense/kernel/Initializer/random_uniform/subSub5target/qc/dense/kernel/Initializer/random_uniform/max5target/qc/dense/kernel/Initializer/random_uniform/min*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
: *
T0
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
loc:@target/qc/dense/kernel*
T0*
_output_shapes
:	>
З
target/qc/dense/kernel
VariableV2*)
_class
loc:@target/qc/dense/kernel*
shape:	>*
dtype0*
_output_shapes
:	>*
shared_name *
	container 
№
target/qc/dense/kernel/AssignAssigntarget/qc/dense/kernel1target/qc/dense/kernel/Initializer/random_uniform*
use_locking(*)
_class
loc:@target/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>*
T0

target/qc/dense/kernel/readIdentitytarget/qc/dense/kernel*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>

&target/qc/dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:
Ћ
target/qc/dense/bias
VariableV2*
shared_name *
_output_shapes	
:*
dtype0*
	container *
shape:*'
_class
loc:@target/qc/dense/bias
л
target/qc/dense/bias/AssignAssigntarget/qc/dense/bias&target/qc/dense/bias/Initializer/zeros*
_output_shapes	
:*'
_class
loc:@target/qc/dense/bias*
T0*
use_locking(*
validate_shape(

target/qc/dense/bias/readIdentitytarget/qc/dense/bias*
_output_shapes	
:*
T0*'
_class
loc:@target/qc/dense/bias
Ј
target/qc/dense/MatMulMatMultarget/qc/concattarget/qc/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ

target/qc/dense/BiasAddBiasAddtarget/qc/dense/MatMultarget/qc/dense/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
h
target/qc/dense/ReluRelutarget/qc/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
З
9target/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Љ
7target/qc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *зГнН*+
_class!
loc:@target/qc/dense_1/kernel
Љ
7target/qc/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГн=*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
: *
dtype0

Atarget/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_1/kernel/Initializer/random_uniform/shape*
seed2Ц*

seed *+
_class!
loc:@target/qc/dense_1/kernel*
dtype0* 
_output_shapes
:
*
T0
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
3target/qc/dense_1/kernel/Initializer/random_uniformAdd7target/qc/dense_1/kernel/Initializer/random_uniform/mul7target/qc/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*+
_class!
loc:@target/qc/dense_1/kernel
Н
target/qc/dense_1/kernel
VariableV2*+
_class!
loc:@target/qc/dense_1/kernel*
shape:
*
dtype0* 
_output_shapes
:
*
	container *
shared_name 
љ
target/qc/dense_1/kernel/AssignAssigntarget/qc/dense_1/kernel3target/qc/dense_1/kernel/Initializer/random_uniform*+
_class!
loc:@target/qc/dense_1/kernel*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(

target/qc/dense_1/kernel/readIdentitytarget/qc/dense_1/kernel* 
_output_shapes
:
*
T0*+
_class!
loc:@target/qc/dense_1/kernel
Ђ
(target/qc/dense_1/bias/Initializer/zerosConst*)
_class
loc:@target/qc/dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Џ
target/qc/dense_1/bias
VariableV2*
	container *
shared_name *
shape:*
dtype0*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:
у
target/qc/dense_1/bias/AssignAssigntarget/qc/dense_1/bias(target/qc/dense_1/bias/Initializer/zeros*)
_class
loc:@target/qc/dense_1/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:

target/qc/dense_1/bias/readIdentitytarget/qc/dense_1/bias*)
_class
loc:@target/qc/dense_1/bias*
T0*
_output_shapes	
:
А
target/qc/dense_1/MatMulMatMultarget/qc/dense/Relutarget/qc/dense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
Ѕ
target/qc/dense_1/BiasAddBiasAddtarget/qc/dense_1/MatMultarget/qc/dense_1/bias/read*
T0*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
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
dtype0*
_output_shapes
: *
valueB
 *Iv>*+
_class!
loc:@target/qc/dense_2/kernel

Atarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:	*

seed *
T0*
seed2з
ў
7target/qc/dense_2/kernel/Initializer/random_uniform/subSub7target/qc/dense_2/kernel/Initializer/random_uniform/max7target/qc/dense_2/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
: 

7target/qc/dense_2/kernel/Initializer/random_uniform/mulMulAtarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform7target/qc/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*+
_class!
loc:@target/qc/dense_2/kernel

3target/qc/dense_2/kernel/Initializer/random_uniformAdd7target/qc/dense_2/kernel/Initializer/random_uniform/mul7target/qc/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*+
_class!
loc:@target/qc/dense_2/kernel
Л
target/qc/dense_2/kernel
VariableV2*
shared_name *
dtype0*
shape:	*
	container *
_output_shapes
:	*+
_class!
loc:@target/qc/dense_2/kernel
ј
target/qc/dense_2/kernel/AssignAssigntarget/qc/dense_2/kernel3target/qc/dense_2/kernel/Initializer/random_uniform*
validate_shape(*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(
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
:*)
_class
loc:@target/qc/dense_2/bias*
dtype0*
valueB*    
­
target/qc/dense_2/bias
VariableV2*
dtype0*
	container *
shared_name *)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:*
shape:
т
target/qc/dense_2/bias/AssignAssigntarget/qc/dense_2/bias(target/qc/dense_2/bias/Initializer/zeros*
T0*)
_class
loc:@target/qc/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:

target/qc/dense_2/bias/readIdentitytarget/qc/dense_2/bias*
T0*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:
Б
target/qc/dense_2/MatMulMatMultarget/qc/dense_1/Relutarget/qc/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ
Є
target/qc/dense_2/BiasAddBiasAddtarget/qc/dense_2/MatMultarget/qc/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
|
target/qc/SqueezeSqueezetarget/qc/dense_2/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims
*
T0
b
target/qc_1/concat/axisConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

target/qc_1/concatConcatV2Placeholder_2main_1/mul_1target/qc_1/concat/axis*

Tidx0*'
_output_shapes
:џџџџџџџџџ>*
N*
T0
Ќ
target/qc_1/dense/MatMulMatMultarget/qc_1/concattarget/qc/dense/kernel/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:џџџџџџџџџ
Ѓ
target/qc_1/dense/BiasAddBiasAddtarget/qc_1/dense/MatMultarget/qc/dense/bias/read*
T0*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC
l
target/qc_1/dense/ReluRelutarget/qc_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Д
target/qc_1/dense_1/MatMulMatMultarget/qc_1/dense/Relutarget/qc/dense_1/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b( 
Љ
target/qc_1/dense_1/BiasAddBiasAddtarget/qc_1/dense_1/MatMultarget/qc/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
p
target/qc_1/dense_1/ReluRelutarget/qc_1/dense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Е
target/qc_1/dense_2/MatMulMatMultarget/qc_1/dense_1/Relutarget/qc/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ
Ј
target/qc_1/dense_2/BiasAddBiasAddtarget/qc_1/dense_2/MatMultarget/qc/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0

target/qc_1/SqueezeSqueezetarget/qc_1/dense_2/BiasAdd*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

d
target/qc_var/concat/axisConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
 
target/qc_var/concatConcatV2Placeholder_2Placeholder_1target/qc_var/concat/axis*'
_output_shapes
:џџџџџџџџџ>*
T0*
N*

Tidx0
Л
;target/qc_var/dense/kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@target/qc_var/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
­
9target/qc_var/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*-
_class#
!loc:@target/qc_var/dense/kernel*
valueB
 *?ЈО
­
9target/qc_var/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*-
_class#
!loc:@target/qc_var/dense/kernel*
valueB
 *?Ј>*
_output_shapes
: 

Ctarget/qc_var/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform;target/qc_var/dense/kernel/Initializer/random_uniform/shape*-
_class#
!loc:@target/qc_var/dense/kernel*

seed *
dtype0*
seed2ѕ*
_output_shapes
:	>*
T0

9target/qc_var/dense/kernel/Initializer/random_uniform/subSub9target/qc_var/dense/kernel/Initializer/random_uniform/max9target/qc_var/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *-
_class#
!loc:@target/qc_var/dense/kernel

9target/qc_var/dense/kernel/Initializer/random_uniform/mulMulCtarget/qc_var/dense/kernel/Initializer/random_uniform/RandomUniform9target/qc_var/dense/kernel/Initializer/random_uniform/sub*-
_class#
!loc:@target/qc_var/dense/kernel*
_output_shapes
:	>*
T0

5target/qc_var/dense/kernel/Initializer/random_uniformAdd9target/qc_var/dense/kernel/Initializer/random_uniform/mul9target/qc_var/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	>*-
_class#
!loc:@target/qc_var/dense/kernel*
T0
П
target/qc_var/dense/kernel
VariableV2*
shared_name *
	container *
_output_shapes
:	>*-
_class#
!loc:@target/qc_var/dense/kernel*
dtype0*
shape:	>

!target/qc_var/dense/kernel/AssignAssigntarget/qc_var/dense/kernel5target/qc_var/dense/kernel/Initializer/random_uniform*-
_class#
!loc:@target/qc_var/dense/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	>
 
target/qc_var/dense/kernel/readIdentitytarget/qc_var/dense/kernel*
T0*
_output_shapes
:	>*-
_class#
!loc:@target/qc_var/dense/kernel
І
*target/qc_var/dense/bias/Initializer/zerosConst*
dtype0*+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:*
valueB*    
Г
target/qc_var/dense/bias
VariableV2*
dtype0*
shape:*
	container *+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:*
shared_name 
ы
target/qc_var/dense/bias/AssignAssigntarget/qc_var/dense/bias*target/qc_var/dense/bias/Initializer/zeros*
use_locking(*+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:*
validate_shape(*
T0

target/qc_var/dense/bias/readIdentitytarget/qc_var/dense/bias*
T0*+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:
Д
target/qc_var/dense/MatMulMatMultarget/qc_var/concattarget/qc_var/dense/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
T0
Ћ
target/qc_var/dense/BiasAddBiasAddtarget/qc_var/dense/MatMultarget/qc_var/dense/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
p
target/qc_var/dense/ReluRelutarget/qc_var/dense/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
П
=target/qc_var/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
valueB"      
Б
;target/qc_var/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *зГнН*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
dtype0
Б
;target/qc_var/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГн=*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
_output_shapes
: *
dtype0

Etarget/qc_var/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform=target/qc_var/dense_1/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:
*
dtype0*
seed2*

seed 

;target/qc_var/dense_1/kernel/Initializer/random_uniform/subSub;target/qc_var/dense_1/kernel/Initializer/random_uniform/max;target/qc_var/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel
Ђ
;target/qc_var/dense_1/kernel/Initializer/random_uniform/mulMulEtarget/qc_var/dense_1/kernel/Initializer/random_uniform/RandomUniform;target/qc_var/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel

7target/qc_var/dense_1/kernel/Initializer/random_uniformAdd;target/qc_var/dense_1/kernel/Initializer/random_uniform/mul;target/qc_var/dense_1/kernel/Initializer/random_uniform/min*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
T0* 
_output_shapes
:

Х
target/qc_var/dense_1/kernel
VariableV2*
dtype0*
shared_name *
	container */
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:
*
shape:


#target/qc_var/dense_1/kernel/AssignAssigntarget/qc_var/dense_1/kernel7target/qc_var/dense_1/kernel/Initializer/random_uniform*
use_locking(* 
_output_shapes
:
*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
validate_shape(
Ї
!target/qc_var/dense_1/kernel/readIdentitytarget/qc_var/dense_1/kernel*
T0* 
_output_shapes
:
*/
_class%
#!loc:@target/qc_var/dense_1/kernel
Њ
,target/qc_var/dense_1/bias/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@target/qc_var/dense_1/bias*
_output_shapes	
:*
dtype0
З
target/qc_var/dense_1/bias
VariableV2*
	container *
dtype0*
shared_name *-
_class#
!loc:@target/qc_var/dense_1/bias*
shape:*
_output_shapes	
:
ѓ
!target/qc_var/dense_1/bias/AssignAssigntarget/qc_var/dense_1/bias,target/qc_var/dense_1/bias/Initializer/zeros*-
_class#
!loc:@target/qc_var/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:

target/qc_var/dense_1/bias/readIdentitytarget/qc_var/dense_1/bias*-
_class#
!loc:@target/qc_var/dense_1/bias*
_output_shapes	
:*
T0
М
target/qc_var/dense_1/MatMulMatMultarget/qc_var/dense/Relu!target/qc_var/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0*
transpose_a( 
Б
target/qc_var/dense_1/BiasAddBiasAddtarget/qc_var/dense_1/MatMultarget/qc_var/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
t
target/qc_var/dense_1/ReluRelutarget/qc_var/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
П
=target/qc_var/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      */
_class%
#!loc:@target/qc_var/dense_2/kernel*
dtype0
Б
;target/qc_var/dense_2/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
: *
valueB
 *IvО*
dtype0
Б
;target/qc_var/dense_2/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *Iv>

Etarget/qc_var/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform=target/qc_var/dense_2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	*
seed2*/
_class%
#!loc:@target/qc_var/dense_2/kernel*

seed 

;target/qc_var/dense_2/kernel/Initializer/random_uniform/subSub;target/qc_var/dense_2/kernel/Initializer/random_uniform/max;target/qc_var/dense_2/kernel/Initializer/random_uniform/min*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
T0*
_output_shapes
: 
Ё
;target/qc_var/dense_2/kernel/Initializer/random_uniform/mulMulEtarget/qc_var/dense_2/kernel/Initializer/random_uniform/RandomUniform;target/qc_var/dense_2/kernel/Initializer/random_uniform/sub*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
:	*
T0

7target/qc_var/dense_2/kernel/Initializer/random_uniformAdd;target/qc_var/dense_2/kernel/Initializer/random_uniform/mul;target/qc_var/dense_2/kernel/Initializer/random_uniform/min*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
:	*
T0
У
target/qc_var/dense_2/kernel
VariableV2*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
shape:	*
dtype0*
_output_shapes
:	*
shared_name *
	container 

#target/qc_var/dense_2/kernel/AssignAssigntarget/qc_var/dense_2/kernel7target/qc_var/dense_2/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
:	
І
!target/qc_var/dense_2/kernel/readIdentitytarget/qc_var/dense_2/kernel*
T0*
_output_shapes
:	*/
_class%
#!loc:@target/qc_var/dense_2/kernel
Ј
,target/qc_var/dense_2/bias/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@target/qc_var/dense_2/bias*
_output_shapes
:*
dtype0
Е
target/qc_var/dense_2/bias
VariableV2*
_output_shapes
:*
shared_name *
dtype0*-
_class#
!loc:@target/qc_var/dense_2/bias*
shape:*
	container 
ђ
!target/qc_var/dense_2/bias/AssignAssigntarget/qc_var/dense_2/bias,target/qc_var/dense_2/bias/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:*-
_class#
!loc:@target/qc_var/dense_2/bias*
T0

target/qc_var/dense_2/bias/readIdentitytarget/qc_var/dense_2/bias*-
_class#
!loc:@target/qc_var/dense_2/bias*
_output_shapes
:*
T0
Н
target/qc_var/dense_2/MatMulMatMultarget/qc_var/dense_1/Relu!target/qc_var/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
А
target/qc_var/dense_2/BiasAddBiasAddtarget/qc_var/dense_2/MatMultarget/qc_var/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC

target/qc_var/SqueezeSqueezetarget/qc_var/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ
g
target/qc_var/SoftplusSoftplustarget/qc_var/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
f
target/qc_var_1/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ѓ
target/qc_var_1/concatConcatV2Placeholder_2main_1/mul_1target/qc_var_1/concat/axis*
T0*

Tidx0*
N*'
_output_shapes
:џџџџџџџџџ>
И
target/qc_var_1/dense/MatMulMatMultarget/qc_var_1/concattarget/qc_var/dense/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 
Џ
target/qc_var_1/dense/BiasAddBiasAddtarget/qc_var_1/dense/MatMultarget/qc_var/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:џџџџџџџџџ
t
target/qc_var_1/dense/ReluRelutarget/qc_var_1/dense/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Р
target/qc_var_1/dense_1/MatMulMatMultarget/qc_var_1/dense/Relu!target/qc_var/dense_1/kernel/read*
transpose_b( *(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
Е
target/qc_var_1/dense_1/BiasAddBiasAddtarget/qc_var_1/dense_1/MatMultarget/qc_var/dense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
x
target/qc_var_1/dense_1/ReluRelutarget/qc_var_1/dense_1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
С
target/qc_var_1/dense_2/MatMulMatMultarget/qc_var_1/dense_1/Relu!target/qc_var/dense_2/kernel/read*
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Д
target/qc_var_1/dense_2/BiasAddBiasAddtarget/qc_var_1/dense_2/MatMultarget/qc_var/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0

target/qc_var_1/SqueezeSqueezetarget/qc_var_1/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:џџџџџџџџџ
k
target/qc_var_1/SoftplusSoftplustarget/qc_var_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
d
entreg/soft_alpha/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
u
entreg/soft_alpha
VariableV2*
_output_shapes
: *
shape: *
	container *
shared_name *
dtype0
Ц
entreg/soft_alpha/AssignAssignentreg/soft_alphaentreg/soft_alpha/initial_value*
use_locking(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0*
validate_shape(
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
\
clip_by_value/Minimum/yConst*
dtype0*
valueB
 * МОL*
_output_shapes
: 
d
clip_by_value/MinimumMinimumSoftplusclip_by_value/Minimum/y*
_output_shapes
: *
T0
T
clip_by_value/yConst*
_output_shapes
: *
valueB
 *wЬ+2*
dtype0
a
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0*
_output_shapes
: 
:
LogLogclip_by_value*
_output_shapes
: *
T0
L
Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
d
costpen/soft_beta/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
costpen/soft_beta
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ц
costpen/soft_beta/AssignAssigncostpen/soft_betacostpen/soft_beta/initial_value*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta*
T0*
validate_shape(
|
costpen/soft_beta/readIdentitycostpen/soft_beta*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
O

Softplus_1Softpluscostpen/soft_beta/read*
_output_shapes
: *
T0
^
clip_by_value_1/Minimum/yConst*
valueB
 * МОL*
dtype0*
_output_shapes
: 
j
clip_by_value_1/MinimumMinimum
Softplus_1clip_by_value_1/Minimum/y*
T0*
_output_shapes
: 
V
clip_by_value_1/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
g
clip_by_value_1Maximumclip_by_value_1/Minimumclip_by_value_1/y*
_output_shapes
: *
T0
>
Log_1Logclip_by_value_1*
T0*
_output_shapes
: 
h
MinimumMinimummain/qr1_1/Squeezemain/qr2_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
n
	Minimum_1Minimumtarget/qr1_1/Squeezetarget/qr2_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
^
clip_by_value_2/Minimum/yConst*
valueB
 * МОL*
_output_shapes
: *
dtype0

clip_by_value_2/MinimumMinimummain/qc_var/Softplusclip_by_value_2/Minimum/y*#
_output_shapes
:џџџџџџџџџ*
T0
V
clip_by_value_2/yConst*
_output_shapes
: *
valueB
 *wЬ+2*
dtype0
t
clip_by_value_2Maximumclip_by_value_2/Minimumclip_by_value_2/y*#
_output_shapes
:џџџџџџџџџ*
T0
^
clip_by_value_3/Minimum/yConst*
valueB
 * МОL*
dtype0*
_output_shapes
: 

clip_by_value_3/MinimumMinimummain/qc_var_1/Softplusclip_by_value_3/Minimum/y*
T0*#
_output_shapes
:џџџџџџџџџ
V
clip_by_value_3/yConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
t
clip_by_value_3Maximumclip_by_value_3/Minimumclip_by_value_3/y*#
_output_shapes
:џџџџџџџџџ*
T0
^
clip_by_value_4/Minimum/yConst*
_output_shapes
: *
valueB
 * МОL*
dtype0

clip_by_value_4/MinimumMinimumtarget/qc_var_1/Softplusclip_by_value_4/Minimum/y*#
_output_shapes
:џџџџџџџџџ*
T0
V
clip_by_value_4/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
t
clip_by_value_4Maximumclip_by_value_4/Minimumclip_by_value_4/y*
T0*#
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
N
subSubsub/xPlaceholder_4*#
_output_shapes
:џџџџџџџџџ*
T0
J
mul/xConst*
valueB
 *Єp}?*
_output_shapes
: *
dtype0
D
mulMulmul/xsub*#
_output_shapes
:џџџџџџџџџ*
T0
U
mul_1MulSoftplusmain_1/pi/sub_3*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_1Sub	Minimum_1mul_1*#
_output_shapes
:џџџџџџџџџ*
T0
F
mul_2Mulmulsub_1*
T0*#
_output_shapes
:џџџџџџџџџ
N
addAddPlaceholder_3mul_2*
T0*#
_output_shapes
:џџџџџџџџџ
O
StopGradientStopGradientadd*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
R
sub_2Subsub_2/xPlaceholder_4*
T0*#
_output_shapes
:џџџџџџџџџ
L
mul_3/xConst*
_output_shapes
: *
valueB
 *Єp}?*
dtype0
J
mul_3Mulmul_3/xsub_2*
T0*#
_output_shapes
:џџџџџџџџџ
V
mul_4Mulmul_3target/qc_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
P
add_1AddPlaceholder_5mul_4*
T0*#
_output_shapes
:џџџџџџџџџ
S
StopGradient_1StopGradientadd_1*#
_output_shapes
:џџџџџџџџџ*
T0
J
pow/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
N
powPowPlaceholder_5pow/y*#
_output_shapes
:џџџџџџџџџ*
T0
L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *Єp§?
R
mul_5Mulmul_5/xPlaceholder_5*#
_output_shapes
:џџџџџџџџџ*
T0
V
mul_6Mulmul_5target/qc_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
F
add_2Addpowmul_6*
T0*#
_output_shapes
:џџџџџџџџџ
L
mul_7/xConst*
valueB
 *ечz?*
dtype0*
_output_shapes
: 
T
mul_7Mulmul_7/xclip_by_value_4*
T0*#
_output_shapes
:џџџџџџџџџ
H
add_3Addadd_2mul_7*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
X
pow_1Powtarget/qc_1/Squeezepow_1/y*
T0*#
_output_shapes
:џџџџџџџџџ
L
mul_8/xConst*
valueB
 *ечz?*
dtype0*
_output_shapes
: 
J
mul_8Mulmul_8/xpow_1*
T0*#
_output_shapes
:џџџџџџџџџ
H
add_4Addadd_3mul_8*
T0*#
_output_shapes
:џџџџџџџџџ
L
pow_2/yConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
T
pow_2Powmain/qc/Squeezepow_2/y*#
_output_shapes
:џџџџџџџџџ*
T0
H
sub_3Subadd_4pow_2*#
_output_shapes
:џџџџџџџџџ*
T0
S
StopGradient_2StopGradientsub_3*#
_output_shapes
:џџџџџџџџџ*
T0
^
clip_by_value_5/Minimum/yConst*
_output_shapes
: *
valueB
 * МОL*
dtype0
{
clip_by_value_5/MinimumMinimumStopGradient_2clip_by_value_5/Minimum/y*#
_output_shapes
:џџџџџџџџџ*
T0
V
clip_by_value_5/yConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0
t
clip_by_value_5Maximumclip_by_value_5/Minimumclip_by_value_5/y*
T0*#
_output_shapes
:џџџџџџџџџ
L
sub_4/xConst*
valueB
 *;ў@*
_output_shapes
: *
dtype0
T
sub_4Subsub_4/xmain/qc/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
K
SqrtSqrtclip_by_value_2*
T0*#
_output_shapes
:џџџџџџџџџ
L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
I
mul_9Mulmul_9/xSqrt*#
_output_shapes
:џџџџџџџџџ*
T0
H
sub_5Subsub_4mul_9*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_2Const*
dtype0*
valueB: *
_output_shapes
:
Z
MeanMeansub_5Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
M
mul_10/xConst*
_output_shapes
: *
dtype0*
valueB
 *   A
>
mul_10Mulmul_10/xMean*
_output_shapes
: *
T0
T
mul_11MulSoftplusmain/pi/sub_3*#
_output_shapes
:џџџџџџџџџ*
T0
K
sub_6Submul_11Minimum*#
_output_shapes
:џџџџџџџџџ*
T0
A
sub_7Sub
Softplus_1mul_10*
T0*
_output_shapes
: 
L
pow_3/yConst*
valueB
 *   ?*
_output_shapes
: *
dtype0
T
pow_3Powclip_by_value_3pow_3/y*#
_output_shapes
:џџџџџџџџџ*
T0
M
mul_12/xConst*
dtype0*
valueB
 **BL?*
_output_shapes
: 
L
mul_12Mulmul_12/xpow_3*
T0*#
_output_shapes
:џџџџџџџџџ
U
add_5Addmain/qc_1/Squeezemul_12*
T0*#
_output_shapes
:џџџџџџџџџ
I
mul_13Mulsub_7add_5*#
_output_shapes
:џџџџџџџџџ*
T0
I
add_6Addsub_6mul_13*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_3Const*
_output_shapes
:*
dtype0*
valueB: 
\
Mean_1Meanadd_6Const_3*

Tidx0*
_output_shapes
: *
T0*
	keep_dims( 
Z
sub_8SubStopGradientmain/qr1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_4/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
J
pow_4Powsub_8pow_4/y*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_4Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_2Meanpow_4Const_4*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
M
mul_14/xConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
@
mul_14Mulmul_14/xMean_2*
T0*
_output_shapes
: 
Z
sub_9SubStopGradientmain/qr2/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
J
pow_5Powsub_9pow_5/y*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_5Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3Meanpow_5Const_5*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
M
mul_15/xConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
@
mul_15Mulmul_15/xMean_3*
_output_shapes
: *
T0
\
sub_10SubStopGradient_1main/qc/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
L
pow_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
K
pow_6Powsub_10pow_6/y*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_6Const*
valueB: *
_output_shapes
:*
dtype0
\
Mean_4Meanpow_6Const_6*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
M
mul_16/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
@
mul_16Mulmul_16/xMean_4*
_output_shapes
: *
T0
\
add_7Addclip_by_value_2clip_by_value_5*
T0*#
_output_shapes
:џџџџџџџџџ
]
mul_17Mulclip_by_value_2clip_by_value_5*#
_output_shapes
:џџџџџџџџџ*
T0
L
pow_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
K
pow_7Powmul_17pow_7/y*
T0*#
_output_shapes
:џџџџџџџџџ
M
mul_18/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
L
mul_18Mulmul_18/xpow_7*
T0*#
_output_shapes
:џџџџџџџџџ
J
sub_11Subadd_7mul_18*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_7Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_5Meansub_11Const_7*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
M
mul_19/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
@
mul_19Mulmul_19/xMean_5*
T0*
_output_shapes
: 
=
add_8Addmul_14mul_15*
_output_shapes
: *
T0
<
add_9Addadd_8mul_16*
T0*
_output_shapes
: 
=
add_10Addadd_9mul_19*
_output_shapes
: *
T0
Q
Const_8Const*
_output_shapes
:*
dtype0*
valueB: 
d
Mean_6Meanmain/pi/sub_3Const_8*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
3
NegNegMean_6*
T0*
_output_shapes
: 
7
Neg_1NegSoftplus*
_output_shapes
: *
T0
M
sub_12/xConst*
_output_shapes
: *
valueB
 *   Р*
dtype0
=
sub_12Subsub_12/xNeg*
T0*
_output_shapes
: 
=
mul_20MulNeg_1sub_12*
_output_shapes
: *
T0
M
sub_13/xConst*
valueB
 *;ў@*
_output_shapes
: *
dtype0
V
sub_13Subsub_13/xmain/qc/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
M
Sqrt_1Sqrtclip_by_value_2*
T0*#
_output_shapes
:џџџџџџџџџ
M
mul_21/xConst*
valueB
 **BL?*
dtype0*
_output_shapes
: 
M
mul_21Mulmul_21/xSqrt_1*
T0*#
_output_shapes
:џџџџџџџџџ
K
sub_14Subsub_13mul_21*
T0*#
_output_shapes
:џџџџџџџџџ
O
mul_22Mul
Softplus_1sub_14*#
_output_shapes
:џџџџџџџџџ*
T0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
`
gradients/Mean_1_grad/ShapeShapeadd_6*
out_type0*
_output_shapes
:*
T0

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
b
gradients/Mean_1_grad/Shape_1Shapeadd_6*
_output_shapes
:*
out_type0*
T0
`
gradients/Mean_1_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
e
gradients/Mean_1_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
g
gradients/Mean_1_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
 
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
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
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
_output_shapes
: *
T0

gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*
_output_shapes
: *

DstT0*
Truncate( *

SrcT0

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients/add_6_grad/ShapeShapesub_6*
out_type0*
T0*
_output_shapes
:
b
gradients/add_6_grad/Shape_1Shapemul_13*
T0*
_output_shapes
:*
out_type0
К
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Њ
gradients/add_6_grad/SumSumgradients/Mean_1_grad/truediv*gradients/add_6_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/add_6_grad/Sum_1Sumgradients/Mean_1_grad/truediv,gradients/add_6_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
о
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@gradients/add_6_grad/Reshape
ф
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
`
gradients/sub_6_grad/ShapeShapemul_11*
_output_shapes
:*
out_type0*
T0
c
gradients/sub_6_grad/Shape_1ShapeMinimum*
_output_shapes
:*
T0*
out_type0
К
*gradients/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_6_grad/Shapegradients/sub_6_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
К
gradients/sub_6_grad/SumSum-gradients/add_6_grad/tuple/control_dependency*gradients/sub_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_6_grad/ReshapeReshapegradients/sub_6_grad/Sumgradients/sub_6_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
О
gradients/sub_6_grad/Sum_1Sum-gradients/add_6_grad/tuple/control_dependency,gradients/sub_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
^
gradients/sub_6_grad/NegNeggradients/sub_6_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_6_grad/Reshape_1Reshapegradients/sub_6_grad/Neggradients/sub_6_grad/Shape_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
m
%gradients/sub_6_grad/tuple/group_depsNoOp^gradients/sub_6_grad/Reshape^gradients/sub_6_grad/Reshape_1
о
-gradients/sub_6_grad/tuple/control_dependencyIdentitygradients/sub_6_grad/Reshape&^gradients/sub_6_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*/
_class%
#!loc:@gradients/sub_6_grad/Reshape
ф
/gradients/sub_6_grad/tuple/control_dependency_1Identitygradients/sub_6_grad/Reshape_1&^gradients/sub_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_6_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
^
gradients/mul_13_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
gradients/mul_13_grad/Shape_1Shapeadd_5*
_output_shapes
:*
out_type0*
T0
Н
+gradients/mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_13_grad/Shapegradients/mul_13_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/mul_13_grad/MulMul/gradients/add_6_grad/tuple/control_dependency_1add_5*
T0*#
_output_shapes
:џџџџџџџџџ
Ј
gradients/mul_13_grad/SumSumgradients/mul_13_grad/Mul+gradients/mul_13_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0

gradients/mul_13_grad/ReshapeReshapegradients/mul_13_grad/Sumgradients/mul_13_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

gradients/mul_13_grad/Mul_1Mulsub_7/gradients/add_6_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/mul_13_grad/Sum_1Sumgradients/mul_13_grad/Mul_1-gradients/mul_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ђ
gradients/mul_13_grad/Reshape_1Reshapegradients/mul_13_grad/Sum_1gradients/mul_13_grad/Shape_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
p
&gradients/mul_13_grad/tuple/group_depsNoOp^gradients/mul_13_grad/Reshape ^gradients/mul_13_grad/Reshape_1
е
.gradients/mul_13_grad/tuple/control_dependencyIdentitygradients/mul_13_grad/Reshape'^gradients/mul_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_13_grad/Reshape*
_output_shapes
: 
ш
0gradients/mul_13_grad/tuple/control_dependency_1Identitygradients/mul_13_grad/Reshape_1'^gradients/mul_13_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*2
_class(
&$loc:@gradients/mul_13_grad/Reshape_1
^
gradients/mul_11_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
j
gradients/mul_11_grad/Shape_1Shapemain/pi/sub_3*
_output_shapes
:*
out_type0*
T0
Н
+gradients/mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_11_grad/Shapegradients/mul_11_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/mul_11_grad/MulMul-gradients/sub_6_grad/tuple/control_dependencymain/pi/sub_3*#
_output_shapes
:џџџџџџџџџ*
T0
Ј
gradients/mul_11_grad/SumSumgradients/mul_11_grad/Mul+gradients/mul_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients/mul_11_grad/ReshapeReshapegradients/mul_11_grad/Sumgradients/mul_11_grad/Shape*
_output_shapes
: *
Tshape0*
T0

gradients/mul_11_grad/Mul_1MulSoftplus-gradients/sub_6_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/mul_11_grad/Sum_1Sumgradients/mul_11_grad/Mul_1-gradients/mul_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ђ
gradients/mul_11_grad/Reshape_1Reshapegradients/mul_11_grad/Sum_1gradients/mul_11_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
p
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Reshape ^gradients/mul_11_grad/Reshape_1
е
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Reshape'^gradients/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_11_grad/Reshape*
_output_shapes
: 
ш
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Reshape_1'^gradients/mul_11_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@gradients/mul_11_grad/Reshape_1
n
gradients/Minimum_grad/ShapeShapemain/qr1_1/Squeeze*
T0*
_output_shapes
:*
out_type0
p
gradients/Minimum_grad/Shape_1Shapemain/qr2_1/Squeeze*
_output_shapes
:*
out_type0*
T0

gradients/Minimum_grad/Shape_2Shape/gradients/sub_6_grad/tuple/control_dependency_1*
_output_shapes
:*
T0*
out_type0
g
"gradients/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ј
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*

index_type0*
T0*#
_output_shapes
:џџџџџџџџџ

 gradients/Minimum_grad/LessEqual	LessEqualmain/qr1_1/Squeezemain/qr2_1/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
Р
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ц
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual/gradients/sub_6_grad/tuple/control_dependency_1gradients/Minimum_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0
Ш
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros/gradients/sub_6_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
Д
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ѕ
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
ц
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
ь
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
k
gradients/add_5_grad/ShapeShapemain/qc_1/Squeeze*
out_type0*
_output_shapes
:*
T0
b
gradients/add_5_grad/Shape_1Shapemul_12*
_output_shapes
:*
T0*
out_type0
К
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Н
gradients/add_5_grad/SumSum0gradients/mul_13_grad/tuple/control_dependency_1*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
С
gradients/add_5_grad/Sum_1Sum0gradients/mul_13_grad/tuple/control_dependency_1,gradients/add_5_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
о
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_5_grad/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ
ф
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
m
"gradients/main/pi/sub_3_grad/ShapeShapemain/pi/Sum*
T0*
out_type0*
_output_shapes
:
q
$gradients/main/pi/sub_3_grad/Shape_1Shapemain/pi/Sum_1*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_3_grad/Shape$gradients/main/pi/sub_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Э
 gradients/main/pi/sub_3_grad/SumSum0gradients/mul_11_grad/tuple/control_dependency_12gradients/main/pi/sub_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Б
$gradients/main/pi/sub_3_grad/ReshapeReshape gradients/main/pi/sub_3_grad/Sum"gradients/main/pi/sub_3_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
б
"gradients/main/pi/sub_3_grad/Sum_1Sum0gradients/mul_11_grad/tuple/control_dependency_14gradients/main/pi/sub_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
n
 gradients/main/pi/sub_3_grad/NegNeg"gradients/main/pi/sub_3_grad/Sum_1*
_output_shapes
:*
T0
Е
&gradients/main/pi/sub_3_grad/Reshape_1Reshape gradients/main/pi/sub_3_grad/Neg$gradients/main/pi/sub_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

-gradients/main/pi/sub_3_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_3_grad/Reshape'^gradients/main/pi/sub_3_grad/Reshape_1
ў
5gradients/main/pi/sub_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_3_grad/Reshape.^gradients/main/pi/sub_3_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*7
_class-
+)loc:@gradients/main/pi/sub_3_grad/Reshape

7gradients/main/pi/sub_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_3_grad/Reshape_1.^gradients/main/pi/sub_3_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/main/pi/sub_3_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ

'gradients/main/qr1_1/Squeeze_grad/ShapeShapemain/qr1_1/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Ю
)gradients/main/qr1_1/Squeeze_grad/ReshapeReshape/gradients/Minimum_grad/tuple/control_dependency'gradients/main/qr1_1/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ

'gradients/main/qr2_1/Squeeze_grad/ShapeShapemain/qr2_1/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
а
)gradients/main/qr2_1/Squeeze_grad/ReshapeReshape1gradients/Minimum_grad/tuple/control_dependency_1'gradients/main/qr2_1/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ

&gradients/main/qc_1/Squeeze_grad/ShapeShapemain/qc_1/dense_2/BiasAdd*
T0*
_output_shapes
:*
out_type0
Ъ
(gradients/main/qc_1/Squeeze_grad/ReshapeReshape-gradients/add_5_grad/tuple/control_dependency&gradients/main/qc_1/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
^
gradients/mul_12_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
b
gradients/mul_12_grad/Shape_1Shapepow_3*
out_type0*
_output_shapes
:*
T0
Н
+gradients/mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_12_grad/Shapegradients/mul_12_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/mul_12_grad/MulMul/gradients/add_5_grad/tuple/control_dependency_1pow_3*
T0*#
_output_shapes
:џџџџџџџџџ
Ј
gradients/mul_12_grad/SumSumgradients/mul_12_grad/Mul+gradients/mul_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/mul_12_grad/ReshapeReshapegradients/mul_12_grad/Sumgradients/mul_12_grad/Shape*
T0*
_output_shapes
: *
Tshape0

gradients/mul_12_grad/Mul_1Mulmul_12/x/gradients/add_5_grad/tuple/control_dependency_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ў
gradients/mul_12_grad/Sum_1Sumgradients/mul_12_grad/Mul_1-gradients/mul_12_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
Ђ
gradients/mul_12_grad/Reshape_1Reshapegradients/mul_12_grad/Sum_1gradients/mul_12_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
p
&gradients/mul_12_grad/tuple/group_depsNoOp^gradients/mul_12_grad/Reshape ^gradients/mul_12_grad/Reshape_1
е
.gradients/mul_12_grad/tuple/control_dependencyIdentitygradients/mul_12_grad/Reshape'^gradients/mul_12_grad/tuple/group_deps*0
_class&
$"loc:@gradients/mul_12_grad/Reshape*
_output_shapes
: *
T0
ш
0gradients/mul_12_grad/tuple/control_dependency_1Identitygradients/mul_12_grad/Reshape_1'^gradients/mul_12_grad/tuple/group_deps*2
_class(
&$loc:@gradients/mul_12_grad/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
m
 gradients/main/pi/Sum_grad/ShapeShapemain/pi/mul_2*
_output_shapes
:*
out_type0*
T0

gradients/main/pi/Sum_grad/SizeConst*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: *
value	B :
Л
gradients/main/pi/Sum_grad/addAddmain/pi/Sum/reduction_indicesgradients/main/pi/Sum_grad/Size*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
T0*
_output_shapes
: 
С
gradients/main/pi/Sum_grad/modFloorModgradients/main/pi/Sum_grad/addgradients/main/pi/Sum_grad/Size*
T0*
_output_shapes
: *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape

"gradients/main/pi/Sum_grad/Shape_1Const*
valueB *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: 

&gradients/main/pi/Sum_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape

&gradients/main/pi/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
value	B :
ї
 gradients/main/pi/Sum_grad/rangeRange&gradients/main/pi/Sum_grad/range/startgradients/main/pi/Sum_grad/Size&gradients/main/pi/Sum_grad/range/delta*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*

Tidx0*
_output_shapes
:

%gradients/main/pi/Sum_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
к
gradients/main/pi/Sum_grad/FillFill"gradients/main/pi/Sum_grad/Shape_1%gradients/main/pi/Sum_grad/Fill/value*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*

index_type0*
T0*
_output_shapes
: 
Ё
(gradients/main/pi/Sum_grad/DynamicStitchDynamicStitch gradients/main/pi/Sum_grad/rangegradients/main/pi/Sum_grad/mod gradients/main/pi/Sum_grad/Shapegradients/main/pi/Sum_grad/Fill*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:*
N*
T0

$gradients/main/pi/Sum_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: *3
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
#gradients/main/pi/Sum_grad/floordivFloorDiv gradients/main/pi/Sum_grad/Shape"gradients/main/pi/Sum_grad/Maximum*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:*
T0
з
"gradients/main/pi/Sum_grad/ReshapeReshape5gradients/main/pi/sub_3_grad/tuple/control_dependency(gradients/main/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Д
gradients/main/pi/Sum_grad/TileTile"gradients/main/pi/Sum_grad/Reshape#gradients/main/pi/Sum_grad/floordiv*

Tmultiples0*'
_output_shapes
:џџџџџџџџџ*
T0
o
"gradients/main/pi/Sum_1_grad/ShapeShapemain/pi/mul_4*
T0*
out_type0*
_output_shapes
:

!gradients/main/pi/Sum_1_grad/SizeConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
У
 gradients/main/pi/Sum_1_grad/addAddmain/pi/Sum_1/reduction_indices!gradients/main/pi/Sum_1_grad/Size*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*
_output_shapes
: 
Щ
 gradients/main/pi/Sum_1_grad/modFloorMod gradients/main/pi/Sum_1_grad/add!gradients/main/pi/Sum_1_grad/Size*
T0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: 

$gradients/main/pi/Sum_1_grad/Shape_1Const*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
valueB *
dtype0
Ё
(gradients/main/pi/Sum_1_grad/range/startConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: *
value	B : *
dtype0
Ё
(gradients/main/pi/Sum_1_grad/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape

"gradients/main/pi/Sum_1_grad/rangeRange(gradients/main/pi/Sum_1_grad/range/start!gradients/main/pi/Sum_1_grad/Size(gradients/main/pi/Sum_1_grad/range/delta*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:*

Tidx0
 
'gradients/main/pi/Sum_1_grad/Fill/valueConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
value	B :*
_output_shapes
: *
dtype0
т
!gradients/main/pi/Sum_1_grad/FillFill$gradients/main/pi/Sum_1_grad/Shape_1'gradients/main/pi/Sum_1_grad/Fill/value*

index_type0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*
_output_shapes
: 
­
*gradients/main/pi/Sum_1_grad/DynamicStitchDynamicStitch"gradients/main/pi/Sum_1_grad/range gradients/main/pi/Sum_1_grad/mod"gradients/main/pi/Sum_1_grad/Shape!gradients/main/pi/Sum_1_grad/Fill*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
N*
T0*
_output_shapes
:

&gradients/main/pi/Sum_1_grad/Maximum/yConst*
dtype0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
value	B :*
_output_shapes
: 
п
$gradients/main/pi/Sum_1_grad/MaximumMaximum*gradients/main/pi/Sum_1_grad/DynamicStitch&gradients/main/pi/Sum_1_grad/Maximum/y*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:*
T0
з
%gradients/main/pi/Sum_1_grad/floordivFloorDiv"gradients/main/pi/Sum_1_grad/Shape$gradients/main/pi/Sum_1_grad/Maximum*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*
_output_shapes
:
н
$gradients/main/pi/Sum_1_grad/ReshapeReshape7gradients/main/pi/sub_3_grad/tuple/control_dependency_1*gradients/main/pi/Sum_1_grad/DynamicStitch*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0
К
!gradients/main/pi/Sum_1_grad/TileTile$gradients/main/pi/Sum_1_grad/Reshape%gradients/main/pi/Sum_1_grad/floordiv*'
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
Ћ
5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr1_1/Squeeze_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
І
:gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr1_1/Squeeze_grad/Reshape6^gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad
І
Bgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr1_1/Squeeze_grad/Reshape;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*<
_class2
0.loc:@gradients/main/qr1_1/Squeeze_grad/Reshape
Г
Dgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
Ћ
5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr2_1/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
І
:gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr2_1/Squeeze_grad/Reshape6^gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad
І
Bgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr2_1/Squeeze_grad/Reshape;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*<
_class2
0.loc:@gradients/main/qr2_1/Squeeze_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
Г
Dgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
Љ
4gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/main/qc_1/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
Ѓ
9gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp)^gradients/main/qc_1/Squeeze_grad/Reshape5^gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad
Ђ
Agradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/main/qc_1/Squeeze_grad/Reshape:^gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qc_1/Squeeze_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
Cgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad:^gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*G
_class=
;9loc:@gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad
i
gradients/pow_3_grad/ShapeShapeclip_by_value_3*
out_type0*
_output_shapes
:*
T0
_
gradients/pow_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
К
*gradients/pow_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_3_grad/Shapegradients/pow_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/pow_3_grad/mulMul0gradients/mul_12_grad/tuple/control_dependency_1pow_3/y*#
_output_shapes
:џџџџџџџџџ*
T0
_
gradients/pow_3_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
e
gradients/pow_3_grad/subSubpow_3/ygradients/pow_3_grad/sub/y*
T0*
_output_shapes
: 
x
gradients/pow_3_grad/PowPowclip_by_value_3gradients/pow_3_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/pow_3_grad/mul_1Mulgradients/pow_3_grad/mulgradients/pow_3_grad/Pow*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
gradients/pow_3_grad/SumSumgradients/pow_3_grad/mul_1*gradients/pow_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/pow_3_grad/ReshapeReshapegradients/pow_3_grad/Sumgradients/pow_3_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
c
gradients/pow_3_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

gradients/pow_3_grad/GreaterGreaterclip_by_value_3gradients/pow_3_grad/Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
s
$gradients/pow_3_grad/ones_like/ShapeShapeclip_by_value_3*
out_type0*
T0*
_output_shapes
:
i
$gradients/pow_3_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
В
gradients/pow_3_grad/ones_likeFill$gradients/pow_3_grad/ones_like/Shape$gradients/pow_3_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ
Ђ
gradients/pow_3_grad/SelectSelectgradients/pow_3_grad/Greaterclip_by_value_3gradients/pow_3_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
j
gradients/pow_3_grad/LogLoggradients/pow_3_grad/Select*
T0*#
_output_shapes
:џџџџџџџџџ
k
gradients/pow_3_grad/zeros_like	ZerosLikeclip_by_value_3*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients/pow_3_grad/Select_1Selectgradients/pow_3_grad/Greatergradients/pow_3_grad/Loggradients/pow_3_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/pow_3_grad/mul_2Mul0gradients/mul_12_grad/tuple/control_dependency_1pow_3*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/pow_3_grad/mul_3Mulgradients/pow_3_grad/mul_2gradients/pow_3_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients/pow_3_grad/Sum_1Sumgradients/pow_3_grad/mul_3,gradients/pow_3_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

gradients/pow_3_grad/Reshape_1Reshapegradients/pow_3_grad/Sum_1gradients/pow_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients/pow_3_grad/tuple/group_depsNoOp^gradients/pow_3_grad/Reshape^gradients/pow_3_grad/Reshape_1
о
-gradients/pow_3_grad/tuple/control_dependencyIdentitygradients/pow_3_grad/Reshape&^gradients/pow_3_grad/tuple/group_deps*/
_class%
#!loc:@gradients/pow_3_grad/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ
з
/gradients/pow_3_grad/tuple/control_dependency_1Identitygradients/pow_3_grad/Reshape_1&^gradients/pow_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/pow_3_grad/Reshape_1*
_output_shapes
: *
T0
e
"gradients/main/pi/mul_2_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
q
$gradients/main/pi/mul_2_grad/Shape_1Shapemain/pi/add_3*
_output_shapes
:*
T0*
out_type0
в
2gradients/main/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_2_grad/Shape$gradients/main/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

 gradients/main/pi/mul_2_grad/MulMulgradients/main/pi/Sum_grad/Tilemain/pi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/mul_2_grad/SumSum gradients/main/pi/mul_2_grad/Mul2gradients/main/pi/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Є
$gradients/main/pi/mul_2_grad/ReshapeReshape gradients/main/pi/mul_2_grad/Sum"gradients/main/pi/mul_2_grad/Shape*
_output_shapes
: *
Tshape0*
T0

"gradients/main/pi/mul_2_grad/Mul_1Mulmain/pi/mul_2/xgradients/main/pi/Sum_grad/Tile*'
_output_shapes
:џџџџџџџџџ*
T0
У
"gradients/main/pi/mul_2_grad/Sum_1Sum"gradients/main/pi/mul_2_grad/Mul_14gradients/main/pi/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
Л
&gradients/main/pi/mul_2_grad/Reshape_1Reshape"gradients/main/pi/mul_2_grad/Sum_1$gradients/main/pi/mul_2_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

-gradients/main/pi/mul_2_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_2_grad/Reshape'^gradients/main/pi/mul_2_grad/Reshape_1
ё
5gradients/main/pi/mul_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_2_grad/Reshape.^gradients/main/pi/mul_2_grad/tuple/group_deps*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/mul_2_grad/Reshape*
T0

7gradients/main/pi/mul_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_2_grad/Reshape_1.^gradients/main/pi/mul_2_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_2_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
e
"gradients/main/pi/mul_4_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
q
$gradients/main/pi/mul_4_grad/Shape_1Shapemain/pi/sub_2*
_output_shapes
:*
out_type0*
T0
в
2gradients/main/pi/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_4_grad/Shape$gradients/main/pi/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

 gradients/main/pi/mul_4_grad/MulMul!gradients/main/pi/Sum_1_grad/Tilemain/pi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/mul_4_grad/SumSum gradients/main/pi/mul_4_grad/Mul2gradients/main/pi/mul_4_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Є
$gradients/main/pi/mul_4_grad/ReshapeReshape gradients/main/pi/mul_4_grad/Sum"gradients/main/pi/mul_4_grad/Shape*
T0*
_output_shapes
: *
Tshape0

"gradients/main/pi/mul_4_grad/Mul_1Mulmain/pi/mul_4/x!gradients/main/pi/Sum_1_grad/Tile*'
_output_shapes
:џџџџџџџџџ*
T0
У
"gradients/main/pi/mul_4_grad/Sum_1Sum"gradients/main/pi/mul_4_grad/Mul_14gradients/main/pi/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
&gradients/main/pi/mul_4_grad/Reshape_1Reshape"gradients/main/pi/mul_4_grad/Sum_1$gradients/main/pi/mul_4_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

-gradients/main/pi/mul_4_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_4_grad/Reshape'^gradients/main/pi/mul_4_grad/Reshape_1
ё
5gradients/main/pi/mul_4_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_4_grad/Reshape.^gradients/main/pi/mul_4_grad/tuple/group_deps*
T0*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/mul_4_grad/Reshape

7gradients/main/pi/mul_4_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_4_grad/Reshape_1.^gradients/main/pi/mul_4_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*9
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
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	
Ї
9gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1
Б
Agradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
Ў
Cgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	
є
/gradients/main/qr2_1/dense_2/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b(
ш
1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense_1/ReluBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	
Ї
9gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1
Б
Agradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ў
Cgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*D
_class:
86loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1
ё
.gradients/main/qc_1/dense_2/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0*
transpose_b(
х
0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qc_1/dense_1/ReluAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	*
T0*
transpose_b( 
Є
8gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients/main/qc_1/dense_2/MatMul_grad/MatMul1^gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1
­
@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_2/MatMul_grad/MatMul9^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Њ
Bgradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
{
$gradients/clip_by_value_3_grad/ShapeShapeclip_by_value_3/Minimum*
T0*
_output_shapes
:*
out_type0
i
&gradients/clip_by_value_3_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0

&gradients/clip_by_value_3_grad/Shape_2Shape-gradients/pow_3_grad/tuple/control_dependency*
_output_shapes
:*
T0*
out_type0
o
*gradients/clip_by_value_3_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
$gradients/clip_by_value_3_grad/zerosFill&gradients/clip_by_value_3_grad/Shape_2*gradients/clip_by_value_3_grad/zeros/Const*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0

+gradients/clip_by_value_3_grad/GreaterEqualGreaterEqualclip_by_value_3/Minimumclip_by_value_3/y*#
_output_shapes
:џџџџџџџџџ*
T0
и
4gradients/clip_by_value_3_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_3_grad/Shape&gradients/clip_by_value_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
п
%gradients/clip_by_value_3_grad/SelectSelect+gradients/clip_by_value_3_grad/GreaterEqual-gradients/pow_3_grad/tuple/control_dependency$gradients/clip_by_value_3_grad/zeros*
T0*#
_output_shapes
:џџџџџџџџџ
с
'gradients/clip_by_value_3_grad/Select_1Select+gradients/clip_by_value_3_grad/GreaterEqual$gradients/clip_by_value_3_grad/zeros-gradients/pow_3_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
Ц
"gradients/clip_by_value_3_grad/SumSum%gradients/clip_by_value_3_grad/Select4gradients/clip_by_value_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
З
&gradients/clip_by_value_3_grad/ReshapeReshape"gradients/clip_by_value_3_grad/Sum$gradients/clip_by_value_3_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
$gradients/clip_by_value_3_grad/Sum_1Sum'gradients/clip_by_value_3_grad/Select_16gradients/clip_by_value_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
А
(gradients/clip_by_value_3_grad/Reshape_1Reshape$gradients/clip_by_value_3_grad/Sum_1&gradients/clip_by_value_3_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

/gradients/clip_by_value_3_grad/tuple/group_depsNoOp'^gradients/clip_by_value_3_grad/Reshape)^gradients/clip_by_value_3_grad/Reshape_1

7gradients/clip_by_value_3_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_3_grad/Reshape0^gradients/clip_by_value_3_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*9
_class/
-+loc:@gradients/clip_by_value_3_grad/Reshape
џ
9gradients/clip_by_value_3_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_3_grad/Reshape_10^gradients/clip_by_value_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_3_grad/Reshape_1*
_output_shapes
: 
o
"gradients/main/pi/add_3_grad/ShapeShapemain/pi/add_2*
out_type0*
_output_shapes
:*
T0
g
$gradients/main/pi/add_3_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
в
2gradients/main/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_3_grad/Shape$gradients/main/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
 gradients/main/pi/add_3_grad/SumSum7gradients/main/pi/mul_2_grad/tuple/control_dependency_12gradients/main/pi/add_3_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Е
$gradients/main/pi/add_3_grad/ReshapeReshape gradients/main/pi/add_3_grad/Sum"gradients/main/pi/add_3_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
и
"gradients/main/pi/add_3_grad/Sum_1Sum7gradients/main/pi/mul_2_grad/tuple/control_dependency_14gradients/main/pi/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Њ
&gradients/main/pi/add_3_grad/Reshape_1Reshape"gradients/main/pi/add_3_grad/Sum_1$gradients/main/pi/add_3_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 

-gradients/main/pi/add_3_grad/tuple/group_depsNoOp%^gradients/main/pi/add_3_grad/Reshape'^gradients/main/pi/add_3_grad/Reshape_1

5gradients/main/pi/add_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_3_grad/Reshape.^gradients/main/pi/add_3_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/add_3_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
ї
7gradients/main/pi/add_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_3_grad/Reshape_1.^gradients/main/pi/add_3_grad/tuple/group_deps*
_output_shapes
: *9
_class/
-+loc:@gradients/main/pi/add_3_grad/Reshape_1*
T0
o
"gradients/main/pi/sub_2_grad/ShapeShapemain/pi/sub_1*
_output_shapes
:*
T0*
out_type0
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
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Е
$gradients/main/pi/sub_2_grad/ReshapeReshape gradients/main/pi/sub_2_grad/Sum"gradients/main/pi/sub_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
и
"gradients/main/pi/sub_2_grad/Sum_1Sum7gradients/main/pi/mul_4_grad/tuple/control_dependency_14gradients/main/pi/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
n
 gradients/main/pi/sub_2_grad/NegNeg"gradients/main/pi/sub_2_grad/Sum_1*
T0*
_output_shapes
:
Й
&gradients/main/pi/sub_2_grad/Reshape_1Reshape gradients/main/pi/sub_2_grad/Neg$gradients/main/pi/sub_2_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

-gradients/main/pi/sub_2_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_2_grad/Reshape'^gradients/main/pi/sub_2_grad/Reshape_1

5gradients/main/pi/sub_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_2_grad/Reshape.^gradients/main/pi/sub_2_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/sub_2_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ

7gradients/main/pi/sub_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_2_grad/Reshape_1.^gradients/main/pi/sub_2_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/sub_2_grad/Reshape_1*
T0
Ъ
/gradients/main/qr1_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1_1/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ъ
/gradients/main/qr2_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr2_1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ч
.gradients/main/qc_1/dense_1/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencymain/qc_1/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ

,gradients/clip_by_value_3/Minimum_grad/ShapeShapemain/qc_var_1/Softplus*
_output_shapes
:*
out_type0*
T0
q
.gradients/clip_by_value_3/Minimum_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ѕ
.gradients/clip_by_value_3/Minimum_grad/Shape_2Shape7gradients/clip_by_value_3_grad/tuple/control_dependency*
_output_shapes
:*
T0*
out_type0
w
2gradients/clip_by_value_3/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
и
,gradients/clip_by_value_3/Minimum_grad/zerosFill.gradients/clip_by_value_3/Minimum_grad/Shape_22gradients/clip_by_value_3/Minimum_grad/zeros/Const*
T0*#
_output_shapes
:џџџџџџџџџ*

index_type0

0gradients/clip_by_value_3/Minimum_grad/LessEqual	LessEqualmain/qc_var_1/Softplusclip_by_value_3/Minimum/y*#
_output_shapes
:џџџџџџџџџ*
T0
№
<gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_3/Minimum_grad/Shape.gradients/clip_by_value_3/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ў
-gradients/clip_by_value_3/Minimum_grad/SelectSelect0gradients/clip_by_value_3/Minimum_grad/LessEqual7gradients/clip_by_value_3_grad/tuple/control_dependency,gradients/clip_by_value_3/Minimum_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0

/gradients/clip_by_value_3/Minimum_grad/Select_1Select0gradients/clip_by_value_3/Minimum_grad/LessEqual,gradients/clip_by_value_3/Minimum_grad/zeros7gradients/clip_by_value_3_grad/tuple/control_dependency*#
_output_shapes
:џџџџџџџџџ*
T0
о
*gradients/clip_by_value_3/Minimum_grad/SumSum-gradients/clip_by_value_3/Minimum_grad/Select<gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Я
.gradients/clip_by_value_3/Minimum_grad/ReshapeReshape*gradients/clip_by_value_3/Minimum_grad/Sum,gradients/clip_by_value_3/Minimum_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
ф
,gradients/clip_by_value_3/Minimum_grad/Sum_1Sum/gradients/clip_by_value_3/Minimum_grad/Select_1>gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Ш
0gradients/clip_by_value_3/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_3/Minimum_grad/Sum_1.gradients/clip_by_value_3/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ѓ
7gradients/clip_by_value_3/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_3/Minimum_grad/Reshape1^gradients/clip_by_value_3/Minimum_grad/Reshape_1
І
?gradients/clip_by_value_3/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_3/Minimum_grad/Reshape8^gradients/clip_by_value_3/Minimum_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@gradients/clip_by_value_3/Minimum_grad/Reshape

Agradients/clip_by_value_3/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_3/Minimum_grad/Reshape_18^gradients/clip_by_value_3/Minimum_grad/tuple/group_deps*C
_class9
75loc:@gradients/clip_by_value_3/Minimum_grad/Reshape_1*
T0*
_output_shapes
: 
m
"gradients/main/pi/add_2_grad/ShapeShapemain/pi/pow*
_output_shapes
:*
out_type0*
T0
q
$gradients/main/pi/add_2_grad/Shape_1Shapemain/pi/mul_1*
T0*
_output_shapes
:*
out_type0
в
2gradients/main/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_2_grad/Shape$gradients/main/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
в
 gradients/main/pi/add_2_grad/SumSum5gradients/main/pi/add_3_grad/tuple/control_dependency2gradients/main/pi/add_2_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
Е
$gradients/main/pi/add_2_grad/ReshapeReshape gradients/main/pi/add_2_grad/Sum"gradients/main/pi/add_2_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
ж
"gradients/main/pi/add_2_grad/Sum_1Sum5gradients/main/pi/add_3_grad/tuple/control_dependency4gradients/main/pi/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Л
&gradients/main/pi/add_2_grad/Reshape_1Reshape"gradients/main/pi/add_2_grad/Sum_1$gradients/main/pi/add_2_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

-gradients/main/pi/add_2_grad/tuple/group_depsNoOp%^gradients/main/pi/add_2_grad/Reshape'^gradients/main/pi/add_2_grad/Reshape_1

5gradients/main/pi/add_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_2_grad/Reshape.^gradients/main/pi/add_2_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/add_2_grad/Reshape
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
 gradients/main/pi/sub_1_grad/SumSum5gradients/main/pi/sub_2_grad/tuple/control_dependency2gradients/main/pi/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Є
$gradients/main/pi/sub_1_grad/ReshapeReshape gradients/main/pi/sub_1_grad/Sum"gradients/main/pi/sub_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
ж
"gradients/main/pi/sub_1_grad/Sum_1Sum5gradients/main/pi/sub_2_grad/tuple/control_dependency4gradients/main/pi/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
n
 gradients/main/pi/sub_1_grad/NegNeg"gradients/main/pi/sub_1_grad/Sum_1*
_output_shapes
:*
T0
Й
&gradients/main/pi/sub_1_grad/Reshape_1Reshape gradients/main/pi/sub_1_grad/Neg$gradients/main/pi/sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

-gradients/main/pi/sub_1_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_1_grad/Reshape'^gradients/main/pi/sub_1_grad/Reshape_1
ё
5gradients/main/pi/sub_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_1_grad/Reshape.^gradients/main/pi/sub_1_grad/tuple/group_deps*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/sub_1_grad/Reshape*
T0
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
64loc:@gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0
Д
Dgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
В
5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Ќ
:gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad
Г
Bgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Д
Dgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*H
_class>
<:loc:@gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad
А
4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
Љ
9gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad/^gradients/main/qc_1/dense_1/Relu_grad/ReluGrad
Џ
Agradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/qc_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0
А
Cgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ш
2gradients/main/qc_var_1/Softplus_grad/SoftplusGradSoftplusGrad?gradients/clip_by_value_3/Minimum_grad/tuple/control_dependencymain/qc_var_1/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
o
 gradients/main/pi/pow_grad/ShapeShapemain/pi/truediv*
T0*
_output_shapes
:*
out_type0
e
"gradients/main/pi/pow_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ь
0gradients/main/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/pow_grad/Shape"gradients/main/pi/pow_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/main/pi/pow_grad/mulMul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow/y*
T0*'
_output_shapes
:џџџџџџџџџ
e
 gradients/main/pi/pow_grad/sub/yConst*
valueB
 *  ?*
_output_shapes
: *
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
 gradients/main/pi/pow_grad/mul_1Mulgradients/main/pi/pow_grad/mulgradients/main/pi/pow_grad/Pow*'
_output_shapes
:џџџџџџџџџ*
T0
Й
gradients/main/pi/pow_grad/SumSum gradients/main/pi/pow_grad/mul_10gradients/main/pi/pow_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Џ
"gradients/main/pi/pow_grad/ReshapeReshapegradients/main/pi/pow_grad/Sum gradients/main/pi/pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
i
$gradients/main/pi/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

"gradients/main/pi/pow_grad/GreaterGreatermain/pi/truediv$gradients/main/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:џџџџџџџџџ
y
*gradients/main/pi/pow_grad/ones_like/ShapeShapemain/pi/truediv*
_output_shapes
:*
out_type0*
T0
o
*gradients/main/pi/pow_grad/ones_like/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Ш
$gradients/main/pi/pow_grad/ones_likeFill*gradients/main/pi/pow_grad/ones_like/Shape*gradients/main/pi/pow_grad/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ*

index_type0
И
!gradients/main/pi/pow_grad/SelectSelect"gradients/main/pi/pow_grad/Greatermain/pi/truediv$gradients/main/pi/pow_grad/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
z
gradients/main/pi/pow_grad/LogLog!gradients/main/pi/pow_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ
u
%gradients/main/pi/pow_grad/zeros_like	ZerosLikemain/pi/truediv*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
#gradients/main/pi/pow_grad/Select_1Select"gradients/main/pi/pow_grad/Greatergradients/main/pi/pow_grad/Log%gradients/main/pi/pow_grad/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0

 gradients/main/pi/pow_grad/mul_2Mul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow*'
_output_shapes
:џџџџџџџџџ*
T0
 
 gradients/main/pi/pow_grad/mul_3Mul gradients/main/pi/pow_grad/mul_2#gradients/main/pi/pow_grad/Select_1*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/pow_grad/Sum_1Sum gradients/main/pi/pow_grad/mul_32gradients/main/pi/pow_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
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
3gradients/main/pi/pow_grad/tuple/control_dependencyIdentity"gradients/main/pi/pow_grad/Reshape,^gradients/main/pi/pow_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/main/pi/pow_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
я
5gradients/main/pi/pow_grad/tuple/control_dependency_1Identity$gradients/main/pi/pow_grad/Reshape_1,^gradients/main/pi/pow_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/pow_grad/Reshape_1*
_output_shapes
: *
T0
e
"gradients/main/pi/mul_1_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
y
$gradients/main/pi/mul_1_grad/Shape_1Shapemain/pi/clip_by_value*
T0*
_output_shapes
:*
out_type0
в
2gradients/main/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_1_grad/Shape$gradients/main/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
 gradients/main/pi/mul_1_grad/MulMul7gradients/main/pi/add_2_grad/tuple/control_dependency_1main/pi/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/mul_1_grad/SumSum gradients/main/pi/mul_1_grad/Mul2gradients/main/pi/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Є
$gradients/main/pi/mul_1_grad/ReshapeReshape gradients/main/pi/mul_1_grad/Sum"gradients/main/pi/mul_1_grad/Shape*
Tshape0*
_output_shapes
: *
T0
Ѕ
"gradients/main/pi/mul_1_grad/Mul_1Mulmain/pi/mul_1/x7gradients/main/pi/add_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ
У
"gradients/main/pi/mul_1_grad/Sum_1Sum"gradients/main/pi/mul_1_grad/Mul_14gradients/main/pi/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Л
&gradients/main/pi/mul_1_grad/Reshape_1Reshape"gradients/main/pi/mul_1_grad/Sum_1$gradients/main/pi/mul_1_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

-gradients/main/pi/mul_1_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_1_grad/Reshape'^gradients/main/pi/mul_1_grad/Reshape_1
ё
5gradients/main/pi/mul_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_1_grad/Reshape.^gradients/main/pi/mul_1_grad/tuple/group_deps*
T0*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/mul_1_grad/Reshape

7gradients/main/pi/mul_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_1_grad/Reshape_1.^gradients/main/pi/mul_1_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
e
"gradients/main/pi/mul_3_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
o
$gradients/main/pi/mul_3_grad/Shape_1Shapemain/pi/add*
T0*
_output_shapes
:*
out_type0
в
2gradients/main/pi/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_3_grad/Shape$gradients/main/pi/mul_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

 gradients/main/pi/mul_3_grad/MulMul,gradients/main/pi/Softplus_grad/SoftplusGradmain/pi/add*
T0*'
_output_shapes
:џџџџџџџџџ
Н
 gradients/main/pi/mul_3_grad/SumSum gradients/main/pi/mul_3_grad/Mul2gradients/main/pi/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Є
$gradients/main/pi/mul_3_grad/ReshapeReshape gradients/main/pi/mul_3_grad/Sum"gradients/main/pi/mul_3_grad/Shape*
Tshape0*
_output_shapes
: *
T0

"gradients/main/pi/mul_3_grad/Mul_1Mulmain/pi/mul_3/x,gradients/main/pi/Softplus_grad/SoftplusGrad*
T0*'
_output_shapes
:џџџџџџџџџ
У
"gradients/main/pi/mul_3_grad/Sum_1Sum"gradients/main/pi/mul_3_grad/Mul_14gradients/main/pi/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Л
&gradients/main/pi/mul_3_grad/Reshape_1Reshape"gradients/main/pi/mul_3_grad/Sum_1$gradients/main/pi/mul_3_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

-gradients/main/pi/mul_3_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_3_grad/Reshape'^gradients/main/pi/mul_3_grad/Reshape_1
ё
5gradients/main/pi/mul_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_3_grad/Reshape.^gradients/main/pi/mul_3_grad/tuple/group_deps*
T0*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/mul_3_grad/Reshape

7gradients/main/pi/mul_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_3_grad/Reshape_1.^gradients/main/pi/mul_3_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_3_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
є
/gradients/main/qr1_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0
ч
1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1_1/dense/ReluBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( * 
_output_shapes
:
*
transpose_a(*
T0
Ї
9gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1
Б
Agradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_1/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul
Џ
Cgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*D
_class:
86loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1
є
/gradients/main/qr2_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*
transpose_a( *
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
T0
ч
1gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense/ReluBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
T0*
transpose_a(*
transpose_b( 
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
86loc:@gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

ё
.gradients/main/qc_1/dense_1/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0*
transpose_a( 
ф
0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qc_1/dense/ReluAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
T0*
transpose_b( *
transpose_a(
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
Bgradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*C
_class9
75loc:@gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1

*gradients/main/qc_var_1/Squeeze_grad/ShapeShapemain/qc_var_1/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
з
,gradients/main/qc_var_1/Squeeze_grad/ReshapeReshape2gradients/main/qc_var_1/Softplus_grad/SoftplusGrad*gradients/main/qc_var_1/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
o
$gradients/main/pi/truediv_grad/ShapeShapemain/pi/sub*
out_type0*
_output_shapes
:*
T0
s
&gradients/main/pi/truediv_grad/Shape_1Shapemain/pi/add_1*
_output_shapes
:*
T0*
out_type0
и
4gradients/main/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/main/pi/truediv_grad/Shape&gradients/main/pi/truediv_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ї
&gradients/main/pi/truediv_grad/RealDivRealDiv3gradients/main/pi/pow_grad/tuple/control_dependencymain/pi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
Ч
"gradients/main/pi/truediv_grad/SumSum&gradients/main/pi/truediv_grad/RealDiv4gradients/main/pi/truediv_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Л
&gradients/main/pi/truediv_grad/ReshapeReshape"gradients/main/pi/truediv_grad/Sum$gradients/main/pi/truediv_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
h
"gradients/main/pi/truediv_grad/NegNegmain/pi/sub*
T0*'
_output_shapes
:џџџџџџџџџ

(gradients/main/pi/truediv_grad/RealDiv_1RealDiv"gradients/main/pi/truediv_grad/Negmain/pi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
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
$gradients/main/pi/truediv_grad/Sum_1Sum"gradients/main/pi/truediv_grad/mul6gradients/main/pi/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
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
-+loc:@gradients/main/pi/truediv_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ

9gradients/main/pi/truediv_grad/tuple/control_dependency_1Identity(gradients/main/pi/truediv_grad/Reshape_10^gradients/main/pi/truediv_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/pi/truediv_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
Ц
-gradients/main/qr1_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1_1/dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ц
-gradients/main/qr2_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr2_1/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
У
,gradients/main/qc_1/dense/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependencymain/qc_1/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Б
8gradients/main/qc_var_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/qc_var_1/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
Џ
=gradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp-^gradients/main/qc_var_1/Squeeze_grad/Reshape9^gradients/main/qc_var_1/dense_2/BiasAdd_grad/BiasAddGrad
В
Egradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/qc_var_1/Squeeze_grad/Reshape>^gradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*?
_class5
31loc:@gradients/main/qc_var_1/Squeeze_grad/Reshape*
T0
П
Ggradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main/qc_var_1/dense_2/BiasAdd_grad/BiasAddGrad>^gradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*K
_classA
?=loc:@gradients/main/qc_var_1/dense_2/BiasAdd_grad/BiasAddGrad
k
 gradients/main/pi/sub_grad/ShapeShapemain/pi/add*
T0*
out_type0*
_output_shapes
:
y
"gradients/main/pi/sub_grad/Shape_1Shapemain/pi/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
Ь
0gradients/main/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/sub_grad/Shape"gradients/main/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
а
gradients/main/pi/sub_grad/SumSum7gradients/main/pi/truediv_grad/tuple/control_dependency0gradients/main/pi/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Џ
"gradients/main/pi/sub_grad/ReshapeReshapegradients/main/pi/sub_grad/Sum gradients/main/pi/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
д
 gradients/main/pi/sub_grad/Sum_1Sum7gradients/main/pi/truediv_grad/tuple/control_dependency2gradients/main/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
j
gradients/main/pi/sub_grad/NegNeg gradients/main/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
Г
$gradients/main/pi/sub_grad/Reshape_1Reshapegradients/main/pi/sub_grad/Neg"gradients/main/pi/sub_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

+gradients/main/pi/sub_grad/tuple/group_depsNoOp#^gradients/main/pi/sub_grad/Reshape%^gradients/main/pi/sub_grad/Reshape_1
њ
3gradients/main/pi/sub_grad/tuple/control_dependencyIdentity"gradients/main/pi/sub_grad/Reshape,^gradients/main/pi/sub_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*5
_class+
)'loc:@gradients/main/pi/sub_grad/Reshape

5gradients/main/pi/sub_grad/tuple/control_dependency_1Identity$gradients/main/pi/sub_grad/Reshape_1,^gradients/main/pi/sub_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
o
"gradients/main/pi/add_1_grad/ShapeShapemain/pi/Exp_1*
_output_shapes
:*
T0*
out_type0
g
$gradients/main/pi/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
в
2gradients/main/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_1_grad/Shape$gradients/main/pi/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ж
 gradients/main/pi/add_1_grad/SumSum9gradients/main/pi/truediv_grad/tuple/control_dependency_12gradients/main/pi/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Е
$gradients/main/pi/add_1_grad/ReshapeReshape gradients/main/pi/add_1_grad/Sum"gradients/main/pi/add_1_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
к
"gradients/main/pi/add_1_grad/Sum_1Sum9gradients/main/pi/truediv_grad/tuple/control_dependency_14gradients/main/pi/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Њ
&gradients/main/pi/add_1_grad/Reshape_1Reshape"gradients/main/pi/add_1_grad/Sum_1$gradients/main/pi/add_1_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

-gradients/main/pi/add_1_grad/tuple/group_depsNoOp%^gradients/main/pi/add_1_grad/Reshape'^gradients/main/pi/add_1_grad/Reshape_1

5gradients/main/pi/add_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_1_grad/Reshape.^gradients/main/pi/add_1_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/add_1_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
ї
7gradients/main/pi/add_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_1_grad/Reshape_1.^gradients/main/pi/add_1_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/add_1_grad/Reshape_1*
_output_shapes
: *
T0
Ў
3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr1_1/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
data_formatNHWC*
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
Bgradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ў
3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr2_1/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
І
8gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad.^gradients/main/qr2_1/dense/Relu_grad/ReluGrad
Ћ
@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/Relu_grad/ReluGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*@
_class6
42loc:@gradients/main/qr2_1/dense/Relu_grad/ReluGrad
Ќ
Bgradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
Ќ
2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/qc_1/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
data_formatNHWC*
T0
Ѓ
7gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad-^gradients/main/qc_1/dense/Relu_grad/ReluGrad
Ї
?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/qc_1/dense/Relu_grad/ReluGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/main/qc_1/dense/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Ј
Agradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*E
_class;
97loc:@gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad*
T0
§
2gradients/main/qc_var_1/dense_2/MatMul_grad/MatMulMatMulEgradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense_2/kernel/read*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
ё
4gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qc_var_1/dense_1/ReluEgradients/main/qc_var_1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	*
transpose_b( *
T0
А
<gradients/main/qc_var_1/dense_2/MatMul_grad/tuple/group_depsNoOp3^gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul5^gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul_1
Н
Dgradients/main/qc_var_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity2gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul=^gradients/main/qc_var_1/dense_2/MatMul_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
К
Fgradients/main/qc_var_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity4gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul_1=^gradients/main/qc_var_1/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*G
_class=
;9loc:@gradients/main/qc_var_1/dense_2/MatMul_grad/MatMul_1

 gradients/main/pi/Exp_1_grad/mulMul5gradients/main/pi/add_1_grad/tuple/control_dependencymain/pi/Exp_1*
T0*'
_output_shapes
:џџџџџџџџџ
э
-gradients/main/qr1_1/dense/MatMul_grad/MatMulMatMul@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*'
_output_shapes
:џџџџџџџџџ>*
transpose_b(*
transpose_a( *
T0
о
/gradients/main/qr1_1/dense/MatMul_grad/MatMul_1MatMulmain/qr1_1/concat@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>*
transpose_a(*
T0*
transpose_b( 
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
transpose_a( *'
_output_shapes
:џџџџџџџџџ>*
transpose_b(
о
/gradients/main/qr2_1/dense/MatMul_grad/MatMul_1MatMulmain/qr2_1/concat@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>*
T0*
transpose_a(*
transpose_b( 
Ё
7gradients/main/qr2_1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients/main/qr2_1/dense/MatMul_grad/MatMul0^gradients/main/qr2_1/dense/MatMul_grad/MatMul_1
Ј
?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/MatMul_grad/MatMul8^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ>*
T0*@
_class6
42loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul
І
Agradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients/main/qr2_1/dense/MatMul_grad/MatMul_18^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>*
T0
ъ
,gradients/main/qc_1/dense/MatMul_grad/MatMulMatMul?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ>
л
.gradients/main/qc_1/dense/MatMul_grad/MatMul_1MatMulmain/qc_1/concat?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	>*
transpose_b( 
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
г
2gradients/main/qc_var_1/dense_1/Relu_grad/ReluGradReluGradDgradients/main/qc_var_1/dense_2/MatMul_grad/tuple/control_dependencymain/qc_var_1/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
g
%gradients/main/qr1_1/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
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
main/mul_1*
T0*
out_type0*
N* 
_output_shapes
::
т
-gradients/main/qr1_1/concat_grad/ConcatOffsetConcatOffset$gradients/main/qr1_1/concat_grad/mod'gradients/main/qr1_1/concat_grad/ShapeN)gradients/main/qr1_1/concat_grad/ShapeN:1*
N* 
_output_shapes
::

&gradients/main/qr1_1/concat_grad/SliceSlice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency-gradients/main/qr1_1/concat_grad/ConcatOffset'gradients/main/qr1_1/concat_grad/ShapeN*
Index0*'
_output_shapes
:џџџџџџџџџ<*
T0

(gradients/main/qr1_1/concat_grad/Slice_1Slice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr1_1/concat_grad/ConcatOffset:1)gradients/main/qr1_1/concat_grad/ShapeN:1*'
_output_shapes
:џџџџџџџџџ*
Index0*
T0

1gradients/main/qr1_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr1_1/concat_grad/Slice)^gradients/main/qr1_1/concat_grad/Slice_1

9gradients/main/qr1_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr1_1/concat_grad/Slice2^gradients/main/qr1_1/concat_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/qr1_1/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ<*
T0

;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr1_1/concat_grad/Slice_12^gradients/main/qr1_1/concat_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qr1_1/concat_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ*
T0
g
%gradients/main/qr2_1/concat_grad/RankConst*
dtype0*
value	B :*
_output_shapes
: 

$gradients/main/qr2_1/concat_grad/modFloorModmain/qr2_1/concat/axis%gradients/main/qr2_1/concat_grad/Rank*
T0*
_output_shapes
: 
q
&gradients/main/qr2_1/concat_grad/ShapeShapePlaceholder*
out_type0*
T0*
_output_shapes
:

'gradients/main/qr2_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1* 
_output_shapes
::*
out_type0*
T0*
N
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
(gradients/main/qr2_1/concat_grad/Slice_1Slice?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr2_1/concat_grad/ConcatOffset:1)gradients/main/qr2_1/concat_grad/ShapeN:1*
Index0*'
_output_shapes
:џџџџџџџџџ*
T0

1gradients/main/qr2_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr2_1/concat_grad/Slice)^gradients/main/qr2_1/concat_grad/Slice_1

9gradients/main/qr2_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr2_1/concat_grad/Slice2^gradients/main/qr2_1/concat_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/qr2_1/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ<*
T0

;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr2_1/concat_grad/Slice_12^gradients/main/qr2_1/concat_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qr2_1/concat_grad/Slice_1*
T0*'
_output_shapes
:џџџџџџџџџ
f
$gradients/main/qc_1/concat_grad/RankConst*
dtype0*
value	B :*
_output_shapes
: 

#gradients/main/qc_1/concat_grad/modFloorModmain/qc_1/concat/axis$gradients/main/qc_1/concat_grad/Rank*
T0*
_output_shapes
: 
p
%gradients/main/qc_1/concat_grad/ShapeShapePlaceholder*
T0*
_output_shapes
:*
out_type0

&gradients/main/qc_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
out_type0* 
_output_shapes
::*
N*
T0
о
,gradients/main/qc_1/concat_grad/ConcatOffsetConcatOffset#gradients/main/qc_1/concat_grad/mod&gradients/main/qc_1/concat_grad/ShapeN(gradients/main/qc_1/concat_grad/ShapeN:1* 
_output_shapes
::*
N

%gradients/main/qc_1/concat_grad/SliceSlice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency,gradients/main/qc_1/concat_grad/ConcatOffset&gradients/main/qc_1/concat_grad/ShapeN*'
_output_shapes
:џџџџџџџџџ<*
Index0*
T0

'gradients/main/qc_1/concat_grad/Slice_1Slice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency.gradients/main/qc_1/concat_grad/ConcatOffset:1(gradients/main/qc_1/concat_grad/ShapeN:1*
T0*'
_output_shapes
:џџџџџџџџџ*
Index0

0gradients/main/qc_1/concat_grad/tuple/group_depsNoOp&^gradients/main/qc_1/concat_grad/Slice(^gradients/main/qc_1/concat_grad/Slice_1

8gradients/main/qc_1/concat_grad/tuple/control_dependencyIdentity%gradients/main/qc_1/concat_grad/Slice1^gradients/main/qc_1/concat_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ<*
T0*8
_class.
,*loc:@gradients/main/qc_1/concat_grad/Slice

:gradients/main/qc_1/concat_grad/tuple/control_dependency_1Identity'gradients/main/qc_1/concat_grad/Slice_11^gradients/main/qc_1/concat_grad/tuple/group_deps*:
_class0
.,loc:@gradients/main/qc_1/concat_grad/Slice_1*
T0*'
_output_shapes
:џџџџџџџџџ
И
8gradients/main/qc_var_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/main/qc_var_1/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
Е
=gradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp9^gradients/main/qc_var_1/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/main/qc_var_1/dense_1/Relu_grad/ReluGrad
П
Egradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/main/qc_var_1/dense_1/Relu_grad/ReluGrad>^gradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/qc_var_1/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0
Р
Ggradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main/qc_var_1/dense_1/BiasAdd_grad/BiasAddGrad>^gradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@gradients/main/qc_var_1/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
§
2gradients/main/qc_var_1/dense_1/MatMul_grad/MatMulMatMulEgradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense_1/kernel/read*
transpose_b(*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0
№
4gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qc_var_1/dense/ReluEgradients/main/qc_var_1/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
T0*
transpose_b( *
transpose_a(
А
<gradients/main/qc_var_1/dense_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul5^gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul_1
Н
Dgradients/main/qc_var_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul=^gradients/main/qc_var_1/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*E
_class;
97loc:@gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul
Л
Fgradients/main/qc_var_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul_1=^gradients/main/qc_var_1/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*G
_class=
;9loc:@gradients/main/qc_var_1/dense_1/MatMul_grad/MatMul_1*
T0
Я
0gradients/main/qc_var_1/dense/Relu_grad/ReluGradReluGradDgradients/main/qc_var_1/dense_1/MatMul_grad/tuple/control_dependencymain/qc_var_1/dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Д
6gradients/main/qc_var_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients/main/qc_var_1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Џ
;gradients/main/qc_var_1/dense/BiasAdd_grad/tuple/group_depsNoOp7^gradients/main/qc_var_1/dense/BiasAdd_grad/BiasAddGrad1^gradients/main/qc_var_1/dense/Relu_grad/ReluGrad
З
Cgradients/main/qc_var_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity0gradients/main/qc_var_1/dense/Relu_grad/ReluGrad<^gradients/main/qc_var_1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*C
_class9
75loc:@gradients/main/qc_var_1/dense/Relu_grad/ReluGrad
И
Egradients/main/qc_var_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity6gradients/main/qc_var_1/dense/BiasAdd_grad/BiasAddGrad<^gradients/main/qc_var_1/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*I
_class?
=;loc:@gradients/main/qc_var_1/dense/BiasAdd_grad/BiasAddGrad*
T0
і
0gradients/main/qc_var_1/dense/MatMul_grad/MatMulMatMulCgradients/main/qc_var_1/dense/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ>*
transpose_a( 
ч
2gradients/main/qc_var_1/dense/MatMul_grad/MatMul_1MatMulmain/qc_var_1/concatCgradients/main/qc_var_1/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>*
transpose_a(*
T0*
transpose_b( 
Њ
:gradients/main/qc_var_1/dense/MatMul_grad/tuple/group_depsNoOp1^gradients/main/qc_var_1/dense/MatMul_grad/MatMul3^gradients/main/qc_var_1/dense/MatMul_grad/MatMul_1
Д
Bgradients/main/qc_var_1/dense/MatMul_grad/tuple/control_dependencyIdentity0gradients/main/qc_var_1/dense/MatMul_grad/MatMul;^gradients/main/qc_var_1/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ>*C
_class9
75loc:@gradients/main/qc_var_1/dense/MatMul_grad/MatMul*
T0
В
Dgradients/main/qc_var_1/dense/MatMul_grad/tuple/control_dependency_1Identity2gradients/main/qc_var_1/dense/MatMul_grad/MatMul_1;^gradients/main/qc_var_1/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>*E
_class;
97loc:@gradients/main/qc_var_1/dense/MatMul_grad/MatMul_1*
T0
j
(gradients/main/qc_var_1/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :

'gradients/main/qc_var_1/concat_grad/modFloorModmain/qc_var_1/concat/axis(gradients/main/qc_var_1/concat_grad/Rank*
T0*
_output_shapes
: 
t
)gradients/main/qc_var_1/concat_grad/ShapeShapePlaceholder*
T0*
_output_shapes
:*
out_type0

*gradients/main/qc_var_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
N*
out_type0*
T0* 
_output_shapes
::
ю
0gradients/main/qc_var_1/concat_grad/ConcatOffsetConcatOffset'gradients/main/qc_var_1/concat_grad/mod*gradients/main/qc_var_1/concat_grad/ShapeN,gradients/main/qc_var_1/concat_grad/ShapeN:1*
N* 
_output_shapes
::

)gradients/main/qc_var_1/concat_grad/SliceSliceBgradients/main/qc_var_1/dense/MatMul_grad/tuple/control_dependency0gradients/main/qc_var_1/concat_grad/ConcatOffset*gradients/main/qc_var_1/concat_grad/ShapeN*
T0*'
_output_shapes
:џџџџџџџџџ<*
Index0

+gradients/main/qc_var_1/concat_grad/Slice_1SliceBgradients/main/qc_var_1/dense/MatMul_grad/tuple/control_dependency2gradients/main/qc_var_1/concat_grad/ConcatOffset:1,gradients/main/qc_var_1/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ

4gradients/main/qc_var_1/concat_grad/tuple/group_depsNoOp*^gradients/main/qc_var_1/concat_grad/Slice,^gradients/main/qc_var_1/concat_grad/Slice_1

<gradients/main/qc_var_1/concat_grad/tuple/control_dependencyIdentity)gradients/main/qc_var_1/concat_grad/Slice5^gradients/main/qc_var_1/concat_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ<*<
_class2
0.loc:@gradients/main/qc_var_1/concat_grad/Slice*
T0
 
>gradients/main/qc_var_1/concat_grad/tuple/control_dependency_1Identity+gradients/main/qc_var_1/concat_grad/Slice_15^gradients/main/qc_var_1/concat_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/main/qc_var_1/concat_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ

gradients/AddNAddN;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1:gradients/main/qc_1/concat_grad/tuple/control_dependency_1>gradients/main/qc_var_1/concat_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
N*
T0*;
_class1
/-loc:@gradients/main/qr1_1/concat_grad/Slice_1
m
gradients/main/mul_1_grad/ShapeShapemain/pi/Tanh_1*
_output_shapes
:*
T0*
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
gradients/main/mul_1_grad/MulMulgradients/AddNmain/mul_1/y*
T0*'
_output_shapes
:џџџџџџџџџ
Д
gradients/main/mul_1_grad/SumSumgradients/main/mul_1_grad/Mul/gradients/main/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Ќ
!gradients/main/mul_1_grad/ReshapeReshapegradients/main/mul_1_grad/Sumgradients/main/mul_1_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
x
gradients/main/mul_1_grad/Mul_1Mulmain/pi/Tanh_1gradients/AddN*'
_output_shapes
:џџџџџџџџџ*
T0
К
gradients/main/mul_1_grad/Sum_1Sumgradients/main/mul_1_grad/Mul_11gradients/main/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ё
#gradients/main/mul_1_grad/Reshape_1Reshapegradients/main/mul_1_grad/Sum_1!gradients/main/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
|
*gradients/main/mul_1_grad/tuple/group_depsNoOp"^gradients/main/mul_1_grad/Reshape$^gradients/main/mul_1_grad/Reshape_1
і
2gradients/main/mul_1_grad/tuple/control_dependencyIdentity!gradients/main/mul_1_grad/Reshape+^gradients/main/mul_1_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*4
_class*
(&loc:@gradients/main/mul_1_grad/Reshape*
T0
ы
4gradients/main/mul_1_grad/tuple/control_dependency_1Identity#gradients/main/mul_1_grad/Reshape_1+^gradients/main/mul_1_grad/tuple/group_deps*6
_class,
*(loc:@gradients/main/mul_1_grad/Reshape_1*
_output_shapes
: *
T0
Ј
&gradients/main/pi/Tanh_1_grad/TanhGradTanhGradmain/pi/Tanh_12gradients/main/mul_1_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ*
T0
н
gradients/AddN_1AddN7gradients/main/pi/sub_1_grad/tuple/control_dependency_17gradients/main/pi/mul_3_grad/tuple/control_dependency_13gradients/main/pi/sub_grad/tuple/control_dependency&gradients/main/pi/Tanh_1_grad/TanhGrad*
T0*
N*'
_output_shapes
:џџџџџџџџџ*9
_class/
-+loc:@gradients/main/pi/sub_1_grad/Reshape_1
w
 gradients/main/pi/add_grad/ShapeShapemain/pi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
m
"gradients/main/pi/add_grad/Shape_1Shapemain/pi/mul*
_output_shapes
:*
out_type0*
T0
Ь
0gradients/main/pi/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/add_grad/Shape"gradients/main/pi/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Љ
gradients/main/pi/add_grad/SumSumgradients/AddN_10gradients/main/pi/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Џ
"gradients/main/pi/add_grad/ReshapeReshapegradients/main/pi/add_grad/Sum gradients/main/pi/add_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
­
 gradients/main/pi/add_grad/Sum_1Sumgradients/AddN_12gradients/main/pi/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Е
$gradients/main/pi/add_grad/Reshape_1Reshape gradients/main/pi/add_grad/Sum_1"gradients/main/pi/add_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

+gradients/main/pi/add_grad/tuple/group_depsNoOp#^gradients/main/pi/add_grad/Reshape%^gradients/main/pi/add_grad/Reshape_1
њ
3gradients/main/pi/add_grad/tuple/control_dependencyIdentity"gradients/main/pi/add_grad/Reshape,^gradients/main/pi/add_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*5
_class+
)'loc:@gradients/main/pi/add_grad/Reshape

5gradients/main/pi/add_grad/tuple/control_dependency_1Identity$gradients/main/pi/add_grad/Reshape_1,^gradients/main/pi/add_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/add_grad/Reshape_1
ј
gradients/AddN_2AddN5gradients/main/pi/sub_grad/tuple/control_dependency_13gradients/main/pi/add_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*
N

2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
data_formatNHWC*
_output_shapes
:*
T0

7gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_23^gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad

?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_28^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1
Ї
Agradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*E
_class;
97loc:@gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad
u
 gradients/main/pi/mul_grad/ShapeShapemain/pi/random_normal*
T0*
_output_shapes
:*
out_type0
m
"gradients/main/pi/mul_grad/Shape_1Shapemain/pi/Exp*
out_type0*
_output_shapes
:*
T0
Ь
0gradients/main/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/mul_grad/Shape"gradients/main/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/main/pi/mul_grad/MulMul5gradients/main/pi/add_grad/tuple/control_dependency_1main/pi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
З
gradients/main/pi/mul_grad/SumSumgradients/main/pi/mul_grad/Mul0gradients/main/pi/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Џ
"gradients/main/pi/mul_grad/ReshapeReshapegradients/main/pi/mul_grad/Sum gradients/main/pi/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ї
 gradients/main/pi/mul_grad/Mul_1Mulmain/pi/random_normal5gradients/main/pi/add_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0
Н
 gradients/main/pi/mul_grad/Sum_1Sum gradients/main/pi/mul_grad/Mul_12gradients/main/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Е
$gradients/main/pi/mul_grad/Reshape_1Reshape gradients/main/pi/mul_grad/Sum_1"gradients/main/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

+gradients/main/pi/mul_grad/tuple/group_depsNoOp#^gradients/main/pi/mul_grad/Reshape%^gradients/main/pi/mul_grad/Reshape_1
њ
3gradients/main/pi/mul_grad/tuple/control_dependencyIdentity"gradients/main/pi/mul_grad/Reshape,^gradients/main/pi/mul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/main/pi/mul_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ

5gradients/main/pi/mul_grad/tuple/control_dependency_1Identity$gradients/main/pi/mul_grad/Reshape_1,^gradients/main/pi/mul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0
э
,gradients/main/pi/dense_2/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencymain/pi/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:џџџџџџџџџ
п
.gradients/main/pi/dense_2/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	*
transpose_a(*
T0

6gradients/main/pi/dense_2/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_2/MatMul_grad/MatMul/^gradients/main/pi/dense_2/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_2/MatMul_grad/MatMul7^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*?
_class5
31loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul*
T0
Ђ
@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_2/MatMul_grad/MatMul_17^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*A
_class7
53loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul_1

gradients/main/pi/Exp_grad/mulMul5gradients/main/pi/mul_grad/tuple/control_dependency_1main/pi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0

gradients/AddN_3AddN7gradients/main/pi/mul_1_grad/tuple/control_dependency_1 gradients/main/pi/Exp_1_grad/mulgradients/main/pi/Exp_grad/mul*'
_output_shapes
:џџџџџџџџџ*
N*
T0*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1

*gradients/main/pi/clip_by_value_grad/ShapeShapemain/pi/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
o
,gradients/main/pi/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
|
,gradients/main/pi/clip_by_value_grad/Shape_2Shapegradients/AddN_3*
_output_shapes
:*
T0*
out_type0
u
0gradients/main/pi/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ж
*gradients/main/pi/clip_by_value_grad/zerosFill,gradients/main/pi/clip_by_value_grad/Shape_20gradients/main/pi/clip_by_value_grad/zeros/Const*

index_type0*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
1gradients/main/pi/clip_by_value_grad/GreaterEqualGreaterEqualmain/pi/clip_by_value/Minimummain/pi/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/main/pi/clip_by_value_grad/Shape,gradients/main/pi/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
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
(gradients/main/pi/clip_by_value_grad/SumSum+gradients/main/pi/clip_by_value_grad/Select:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Э
,gradients/main/pi/clip_by_value_grad/ReshapeReshape(gradients/main/pi/clip_by_value_grad/Sum*gradients/main/pi/clip_by_value_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
о
*gradients/main/pi/clip_by_value_grad/Sum_1Sum-gradients/main/pi/clip_by_value_grad/Select_1<gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Т
.gradients/main/pi/clip_by_value_grad/Reshape_1Reshape*gradients/main/pi/clip_by_value_grad/Sum_1,gradients/main/pi/clip_by_value_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

5gradients/main/pi/clip_by_value_grad/tuple/group_depsNoOp-^gradients/main/pi/clip_by_value_grad/Reshape/^gradients/main/pi/clip_by_value_grad/Reshape_1
Ђ
=gradients/main/pi/clip_by_value_grad/tuple/control_dependencyIdentity,gradients/main/pi/clip_by_value_grad/Reshape6^gradients/main/pi/clip_by_value_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ

?gradients/main/pi/clip_by_value_grad/tuple/control_dependency_1Identity.gradients/main/pi/clip_by_value_grad/Reshape_16^gradients/main/pi/clip_by_value_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/pi/clip_by_value_grad/Reshape_1*
T0*
_output_shapes
: 

2gradients/main/pi/clip_by_value/Minimum_grad/ShapeShapemain/pi/dense_3/BiasAdd*
_output_shapes
:*
out_type0*
T0
w
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Б
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_2Shape=gradients/main/pi/clip_by_value_grad/tuple/control_dependency*
_output_shapes
:*
T0*
out_type0
}
8gradients/main/pi/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ю
2gradients/main/pi/clip_by_value/Minimum_grad/zerosFill4gradients/main/pi/clip_by_value/Minimum_grad/Shape_28gradients/main/pi/clip_by_value/Minimum_grad/zeros/Const*

index_type0*'
_output_shapes
:џџџџџџџџџ*
T0
Џ
6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual	LessEqualmain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*'
_output_shapes
:џџџџџџџџџ*
T0
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
0gradients/main/pi/clip_by_value/Minimum_grad/SumSum3gradients/main/pi/clip_by_value/Minimum_grad/SelectBgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
х
4gradients/main/pi/clip_by_value/Minimum_grad/ReshapeReshape0gradients/main/pi/clip_by_value/Minimum_grad/Sum2gradients/main/pi/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
і
2gradients/main/pi/clip_by_value/Minimum_grad/Sum_1Sum5gradients/main/pi/clip_by_value/Minimum_grad/Select_1Dgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
к
6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1Reshape2gradients/main/pi/clip_by_value/Minimum_grad/Sum_14gradients/main/pi/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
Е
=gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_depsNoOp5^gradients/main/pi/clip_by_value/Minimum_grad/Reshape7^gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1
Т
Egradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity4gradients/main/pi/clip_by_value/Minimum_grad/Reshape>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*G
_class=
;9loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape
З
Ggradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
Ф
2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGradBiasAddGradEgradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
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
Agradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*E
_class;
97loc:@gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad
э
,gradients/main/pi/dense_3/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependencymain/pi/dense_3/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(
п
.gradients/main/pi/dense_3/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
T0*
transpose_a(*
transpose_b( 

6gradients/main/pi/dense_3/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_3/MatMul_grad/MatMul/^gradients/main/pi/dense_3/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_3/MatMul_grad/MatMul7^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_3/MatMul_grad/MatMul_17^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
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
data_formatNHWC*
_output_shapes	
:*
T0
Ѓ
7gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad-^gradients/main/pi/dense_1/Relu_grad/ReluGrad
Ї
?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/Relu_grad/ReluGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/main/pi/dense_1/Relu_grad/ReluGrad
Ј
Agradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*E
_class;
97loc:@gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad
э
,gradients/main/pi/dense_1/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencymain/pi/dense_1/kernel/read*
transpose_b(*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
T0
о
.gradients/main/pi/dense_1/MatMul_grad/MatMul_1MatMulmain/pi/dense/Relu?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:


6gradients/main/pi/dense_1/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_1/MatMul_grad/MatMul/^gradients/main/pi/dense_1/MatMul_grad/MatMul_1
Ѕ
>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/MatMul_grad/MatMul7^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Ѓ
@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_1/MatMul_grad/MatMul_17^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:

Н
*gradients/main/pi/dense/Relu_grad/ReluGradReluGrad>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencymain/pi/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ј
0gradients/main/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/main/pi/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC

5gradients/main/pi/dense/BiasAdd_grad/tuple/group_depsNoOp1^gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad+^gradients/main/pi/dense/Relu_grad/ReluGrad

=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/Relu_grad/ReluGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*=
_class3
1/loc:@gradients/main/pi/dense/Relu_grad/ReluGrad
 
?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*C
_class9
75loc:@gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad
ц
*gradients/main/pi/dense/MatMul_grad/MatMulMatMul=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencymain/pi/dense/kernel/read*
transpose_b(*
transpose_a( *'
_output_shapes
:џџџџџџџџџ<*
T0
в
,gradients/main/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	<*
T0*
transpose_a(

4gradients/main/pi/dense/MatMul_grad/tuple/group_depsNoOp+^gradients/main/pi/dense/MatMul_grad/MatMul-^gradients/main/pi/dense/MatMul_grad/MatMul_1

<gradients/main/pi/dense/MatMul_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/MatMul_grad/MatMul5^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients/main/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ<*
T0

>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Identity,gradients/main/pi/dense/MatMul_grad/MatMul_15^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense/MatMul_grad/MatMul_1*
_output_shapes
:	<*
T0
`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

ReshapeReshape>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:x*
Tshape0*
T0
b
Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_1Reshape?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_2/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_2Reshape@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes

:*
Tshape0*
T0
b
Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_3ReshapeAgradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_4/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

	Reshape_4Reshape@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_5/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0

	Reshape_5ReshapeAgradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_6Reshape@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Reshape_6/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

	Reshape_7ReshapeAgradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Reshape_7/shape*
T0*
_output_shapes
:*
Tshape0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Б
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
h
PyFuncPyFuncconcat*
token
pyfunc_0*
Tout
2*
_output_shapes

:*
Tin
2
p
Const_9Const*
dtype0*
_output_shapes
:*5
value,B*"  <                       
Q
split/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
Є
splitSplitVPyFuncConst_9split/split_dim*
T0*K
_output_shapes9
7:x:::::::*

Tlen0*
	num_split
`
Reshape_8/shapeConst*
dtype0*
valueB"<      *
_output_shapes
:
d
	Reshape_8ReshapesplitReshape_8/shape*
Tshape0*
_output_shapes
:	<*
T0
Z
Reshape_9/shapeConst*
dtype0*
_output_shapes
:*
valueB:
b
	Reshape_9Reshapesplit:1Reshape_9/shape*
T0*
Tshape0*
_output_shapes	
:
a
Reshape_10/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
i

Reshape_10Reshapesplit:2Reshape_10/shape*
T0* 
_output_shapes
:
*
Tshape0
[
Reshape_11/shapeConst*
dtype0*
_output_shapes
:*
valueB:
d

Reshape_11Reshapesplit:3Reshape_11/shape*
_output_shapes	
:*
T0*
Tshape0
a
Reshape_12/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
h

Reshape_12Reshapesplit:4Reshape_12/shape*
T0*
_output_shapes
:	*
Tshape0
Z
Reshape_13/shapeConst*
valueB:*
_output_shapes
:*
dtype0
c

Reshape_13Reshapesplit:5Reshape_13/shape*
T0*
_output_shapes
:*
Tshape0
a
Reshape_14/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
h

Reshape_14Reshapesplit:6Reshape_14/shape*
_output_shapes
:	*
T0*
Tshape0
Z
Reshape_15/shapeConst*
_output_shapes
:*
dtype0*
valueB:
c

Reshape_15Reshapesplit:7Reshape_15/shape*
Tshape0*
_output_shapes
:*
T0

beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*%
_class
loc:@main/pi/dense/bias*
valueB
 *fff?

beta1_power
VariableV2*
	container *
_output_shapes
: *
shared_name *
shape: *
dtype0*%
_class
loc:@main/pi/dense/bias
Е
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
validate_shape(
q
beta1_power/readIdentitybeta1_power*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: 

beta2_power/initial_valueConst*%
_class
loc:@main/pi/dense/bias*
dtype0*
valueB
 *wО?*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
shared_name *%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
shape: *
	container 
Е
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes
: 
q
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias
Е
;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"<      *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:*
dtype0

1main/pi/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *'
_class
loc:@main/pi/dense/kernel*
valueB
 *    

+main/pi/dense/kernel/Adam/Initializer/zerosFill;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/pi/dense/kernel/Adam/Initializer/zeros/Const*'
_class
loc:@main/pi/dense/kernel*

index_type0*
T0*
_output_shapes
:	<
И
main/pi/dense/kernel/Adam
VariableV2*
shared_name *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
	container *
dtype0*
shape:	<
ю
 main/pi/dense/kernel/Adam/AssignAssignmain/pi/dense/kernel/Adam+main/pi/dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
validate_shape(

main/pi/dense/kernel/Adam/readIdentitymain/pi/dense/kernel/Adam*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
T0
З
=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"<      *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:*
dtype0
Ё
3main/pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *'
_class
loc:@main/pi/dense/kernel

-main/pi/dense/kernel/Adam_1/Initializer/zerosFill=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/pi/dense/kernel/Adam_1/Initializer/zeros/Const*'
_class
loc:@main/pi/dense/kernel*

index_type0*
_output_shapes
:	<*
T0
К
main/pi/dense/kernel/Adam_1
VariableV2*
	container *
dtype0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
shared_name *
shape:	<
є
"main/pi/dense/kernel/Adam_1/AssignAssignmain/pi/dense/kernel/Adam_1-main/pi/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
_output_shapes
:	<*
T0

 main/pi/dense/kernel/Adam_1/readIdentitymain/pi/dense/kernel/Adam_1*
T0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel

)main/pi/dense/bias/Adam/Initializer/zerosConst*
dtype0*%
_class
loc:@main/pi/dense/bias*
valueB*    *
_output_shapes	
:
Ќ
main/pi/dense/bias/Adam
VariableV2*
dtype0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:*
shared_name *
shape:*
	container 
т
main/pi/dense/bias/Adam/AssignAssignmain/pi/dense/bias/Adam)main/pi/dense/bias/Adam/Initializer/zeros*
T0*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
validate_shape(

main/pi/dense/bias/Adam/readIdentitymain/pi/dense/bias/Adam*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
T0
Ё
+main/pi/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
Ў
main/pi/dense/bias/Adam_1
VariableV2*
	container *
dtype0*
_output_shapes	
:*
shared_name *%
_class
loc:@main/pi/dense/bias*
shape:
ш
 main/pi/dense/bias/Adam_1/AssignAssignmain/pi/dense/bias/Adam_1+main/pi/dense/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0

main/pi/dense/bias/Adam_1/readIdentitymain/pi/dense/bias/Adam_1*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes	
:
Й
=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*)
_class
loc:@main/pi/dense_1/kernel*
dtype0*
valueB"      
Ѓ
3main/pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
: *
valueB
 *    *
dtype0

-main/pi/dense_1/kernel/Adam/Initializer/zerosFill=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/pi/dense_1/kernel/Adam/Initializer/zeros/Const*)
_class
loc:@main/pi/dense_1/kernel*

index_type0*
T0* 
_output_shapes
:

О
main/pi/dense_1/kernel/Adam
VariableV2*
dtype0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
shared_name *
shape:
*
	container 
ї
"main/pi/dense_1/kernel/Adam/AssignAssignmain/pi/dense_1/kernel/Adam-main/pi/dense_1/kernel/Adam/Initializer/zeros*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0

 main/pi/dense_1/kernel/Adam/readIdentitymain/pi/dense_1/kernel/Adam* 
_output_shapes
:
*
T0*)
_class
loc:@main/pi/dense_1/kernel
Л
?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
:*
valueB"      *
dtype0
Ѕ
5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
: *
valueB
 *    

/main/pi/dense_1/kernel/Adam_1/Initializer/zerosFill?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*)
_class
loc:@main/pi/dense_1/kernel*
T0*

index_type0
Р
main/pi/dense_1/kernel/Adam_1
VariableV2* 
_output_shapes
:
*
dtype0*)
_class
loc:@main/pi/dense_1/kernel*
shape:
*
shared_name *
	container 
§
$main/pi/dense_1/kernel/Adam_1/AssignAssignmain/pi/dense_1/kernel/Adam_1/main/pi/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
T0
Ѓ
"main/pi/dense_1/kernel/Adam_1/readIdentitymain/pi/dense_1/kernel/Adam_1*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:

Ѓ
+main/pi/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *'
_class
loc:@main/pi/dense_1/bias*
dtype0
А
main/pi/dense_1/bias/Adam
VariableV2*
	container *
shared_name *
_output_shapes	
:*
dtype0*
shape:*'
_class
loc:@main/pi/dense_1/bias
ъ
 main/pi/dense_1/bias/Adam/AssignAssignmain/pi/dense_1/bias/Adam+main/pi/dense_1/bias/Adam/Initializer/zeros*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(

main/pi/dense_1/bias/Adam/readIdentitymain/pi/dense_1/bias/Adam*
_output_shapes	
:*
T0*'
_class
loc:@main/pi/dense_1/bias
Ѕ
-main/pi/dense_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:
В
main/pi/dense_1/bias/Adam_1
VariableV2*
shape:*'
_class
loc:@main/pi/dense_1/bias*
	container *
shared_name *
dtype0*
_output_shapes	
:
№
"main/pi/dense_1/bias/Adam_1/AssignAssignmain/pi/dense_1/bias/Adam_1-main/pi/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
T0

 main/pi/dense_1/bias/Adam_1/readIdentitymain/pi/dense_1/bias/Adam_1*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
T0
Џ
-main/pi/dense_2/kernel/Adam/Initializer/zerosConst*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
dtype0*
valueB	*    
М
main/pi/dense_2/kernel/Adam
VariableV2*
	container *
dtype0*
shape:	*
_output_shapes
:	*
shared_name *)
_class
loc:@main/pi/dense_2/kernel
і
"main/pi/dense_2/kernel/Adam/AssignAssignmain/pi/dense_2/kernel/Adam-main/pi/dense_2/kernel/Adam/Initializer/zeros*)
_class
loc:@main/pi/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(

 main/pi/dense_2/kernel/Adam/readIdentitymain/pi/dense_2/kernel/Adam*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	
Б
/main/pi/dense_2/kernel/Adam_1/Initializer/zerosConst*)
_class
loc:@main/pi/dense_2/kernel*
valueB	*    *
dtype0*
_output_shapes
:	
О
main/pi/dense_2/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	*
shape:	*
shared_name *
	container *)
_class
loc:@main/pi/dense_2/kernel
ќ
$main/pi/dense_2/kernel/Adam_1/AssignAssignmain/pi/dense_2/kernel/Adam_1/main/pi/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel
Ђ
"main/pi/dense_2/kernel/Adam_1/readIdentitymain/pi/dense_2/kernel/Adam_1*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
T0
Ё
+main/pi/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
valueB*    
Ў
main/pi/dense_2/bias/Adam
VariableV2*
shared_name *
	container *
dtype0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
shape:
щ
 main/pi/dense_2/bias/Adam/AssignAssignmain/pi/dense_2/bias/Adam+main/pi/dense_2/bias/Adam/Initializer/zeros*
T0*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(

main/pi/dense_2/bias/Adam/readIdentitymain/pi/dense_2/bias/Adam*
T0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
Ѓ
-main/pi/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *'
_class
loc:@main/pi/dense_2/bias*
dtype0
А
main/pi/dense_2/bias/Adam_1
VariableV2*
shared_name *
	container *'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
shape:*
dtype0
я
"main/pi/dense_2/bias/Adam_1/AssignAssignmain/pi/dense_2/bias/Adam_1-main/pi/dense_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
validate_shape(

 main/pi/dense_2/bias/Adam_1/readIdentitymain/pi/dense_2/bias/Adam_1*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
T0
Џ
-main/pi/dense_3/kernel/Adam/Initializer/zerosConst*)
_class
loc:@main/pi/dense_3/kernel*
valueB	*    *
_output_shapes
:	*
dtype0
М
main/pi/dense_3/kernel/Adam
VariableV2*)
_class
loc:@main/pi/dense_3/kernel*
shape:	*
_output_shapes
:	*
shared_name *
	container *
dtype0
і
"main/pi/dense_3/kernel/Adam/AssignAssignmain/pi/dense_3/kernel/Adam-main/pi/dense_3/kernel/Adam/Initializer/zeros*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
validate_shape(*
T0

 main/pi/dense_3/kernel/Adam/readIdentitymain/pi/dense_3/kernel/Adam*
T0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	
Б
/main/pi/dense_3/kernel/Adam_1/Initializer/zerosConst*)
_class
loc:@main/pi/dense_3/kernel*
dtype0*
valueB	*    *
_output_shapes
:	
О
main/pi/dense_3/kernel/Adam_1
VariableV2*
shape:	*
dtype0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
	container *
shared_name 
ќ
$main/pi/dense_3/kernel/Adam_1/AssignAssignmain/pi/dense_3/kernel/Adam_1/main/pi/dense_3/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
T0
Ђ
"main/pi/dense_3/kernel/Adam_1/readIdentitymain/pi/dense_3/kernel/Adam_1*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
T0
Ё
+main/pi/dense_3/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias
Ў
main/pi/dense_3/bias/Adam
VariableV2*
shape:*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
	container *
shared_name *
dtype0
щ
 main/pi/dense_3/bias/Adam/AssignAssignmain/pi/dense_3/bias/Adam+main/pi/dense_3/bias/Adam/Initializer/zeros*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0

main/pi/dense_3/bias/Adam/readIdentitymain/pi/dense_3/bias/Adam*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
T0
Ѓ
-main/pi/dense_3/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
А
main/pi/dense_3/bias/Adam_1
VariableV2*
shared_name *
shape:*
_output_shapes
:*
dtype0*'
_class
loc:@main/pi/dense_3/bias*
	container 
я
"main/pi/dense_3/bias/Adam_1/AssignAssignmain/pi/dense_3/bias/Adam_1-main/pi/dense_3/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias

 main/pi/dense_3/bias/Adam_1/readIdentitymain/pi/dense_3/bias/Adam_1*'
_class
loc:@main/pi/dense_3/bias*
T0*
_output_shapes
:
[
train_pi/learning_rateConst*
_output_shapes
: *
valueB
 *o:*
dtype0
S
train_pi/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
S
train_pi/beta2Const*
valueB
 *wО?*
_output_shapes
: *
dtype0
U
train_pi/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
.train_pi/update_main/pi/dense/kernel/ApplyAdam	ApplyAdammain/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_8*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel
ю
,train_pi/update_main/pi/dense/bias/ApplyAdam	ApplyAdammain/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_9*
_output_shapes	
:*
use_locking( *%
_class
loc:@main/pi/dense/bias*
T0*
use_nesterov( 

0train_pi/update_main/pi/dense_1/kernel/ApplyAdam	ApplyAdammain/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_10*
T0*)
_class
loc:@main/pi/dense_1/kernel*
use_locking( *
use_nesterov( * 
_output_shapes
:

љ
.train_pi/update_main/pi/dense_1/bias/ApplyAdam	ApplyAdammain/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_11*
use_nesterov( *'
_class
loc:@main/pi/dense_1/bias*
T0*
_output_shapes	
:*
use_locking( 

0train_pi/update_main/pi/dense_2/kernel/ApplyAdam	ApplyAdammain/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_12*
T0*)
_class
loc:@main/pi/dense_2/kernel*
use_nesterov( *
use_locking( *
_output_shapes
:	
ј
.train_pi/update_main/pi/dense_2/bias/ApplyAdam	ApplyAdammain/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_13*
use_nesterov( *
T0*'
_class
loc:@main/pi/dense_2/bias*
use_locking( *
_output_shapes
:

0train_pi/update_main/pi/dense_3/kernel/ApplyAdam	ApplyAdammain/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_14*
use_locking( *)
_class
loc:@main/pi/dense_3/kernel*
use_nesterov( *
T0*
_output_shapes
:	
ј
.train_pi/update_main/pi/dense_3/bias/ApplyAdam	ApplyAdammain/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_15*
use_nesterov( *
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
use_locking( 

train_pi/mulMulbeta1_power/readtrain_pi/beta1-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
T0
Ѕ
train_pi/AssignAssignbeta1_powertrain_pi/mul*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
use_locking( 

train_pi/mul_1Mulbeta2_power/readtrain_pi/beta2-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: 
Љ
train_pi/Assign_1Assignbeta2_powertrain_pi/mul_1*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: *
validate_shape(*
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
Tshape0*
T0*
_output_shapes	
:x
n
Reshape_17/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
t

Reshape_17Reshapemain/pi/dense/bias/readReshape_17/shape*
_output_shapes	
:*
Tshape0*
T0
n
Reshape_18/shapeConst	^train_pi*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_18Reshapemain/pi/dense_1/kernel/readReshape_18/shape*
T0*
_output_shapes

:*
Tshape0
n
Reshape_19/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
v

Reshape_19Reshapemain/pi/dense_1/bias/readReshape_19/shape*
T0*
_output_shapes	
:*
Tshape0
n
Reshape_20/shapeConst	^train_pi*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x

Reshape_20Reshapemain/pi/dense_2/kernel/readReshape_20/shape*
Tshape0*
T0*
_output_shapes	
:
n
Reshape_21/shapeConst	^train_pi*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_21Reshapemain/pi/dense_2/bias/readReshape_21/shape*
Tshape0*
_output_shapes
:*
T0
n
Reshape_22/shapeConst	^train_pi*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x

Reshape_22Reshapemain/pi/dense_3/kernel/readReshape_22/shape*
T0*
_output_shapes	
:*
Tshape0
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
concat_1/axisConst	^train_pi*
value	B : *
_output_shapes
: *
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

Tidx0*
_output_shapes

:*
T0*
N
h
PyFunc_1PyFuncconcat_1*
Tout
2*
Tin
2*
token
pyfunc_1*
_output_shapes
:
|
Const_10Const	^train_pi*5
value,B*"  <                       *
dtype0*
_output_shapes
:
^
split_1/split_dimConst	^train_pi*
value	B : *
dtype0*
_output_shapes
: 

split_1SplitVPyFunc_1Const_10split_1/split_dim*

Tlen0*
	num_split*4
_output_shapes"
 ::::::::*
T0
l
Reshape_24/shapeConst	^train_pi*
valueB"<      *
_output_shapes
:*
dtype0
h

Reshape_24Reshapesplit_1Reshape_24/shape*
Tshape0*
T0*
_output_shapes
:	<
f
Reshape_25/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_25Reshape	split_1:1Reshape_25/shape*
T0*
_output_shapes	
:*
Tshape0
l
Reshape_26/shapeConst	^train_pi*
valueB"      *
dtype0*
_output_shapes
:
k

Reshape_26Reshape	split_1:2Reshape_26/shape*
T0* 
_output_shapes
:
*
Tshape0
f
Reshape_27/shapeConst	^train_pi*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_27Reshape	split_1:3Reshape_27/shape*
T0*
Tshape0*
_output_shapes	
:
l
Reshape_28/shapeConst	^train_pi*
valueB"      *
_output_shapes
:*
dtype0
j

Reshape_28Reshape	split_1:4Reshape_28/shape*
_output_shapes
:	*
T0*
Tshape0
e
Reshape_29/shapeConst	^train_pi*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_29Reshape	split_1:5Reshape_29/shape*
Tshape0*
_output_shapes
:*
T0
l
Reshape_30/shapeConst	^train_pi*
_output_shapes
:*
valueB"      *
dtype0
j

Reshape_30Reshape	split_1:6Reshape_30/shape*
_output_shapes
:	*
T0*
Tshape0
e
Reshape_31/shapeConst	^train_pi*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_31Reshape	split_1:7Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:
Ў
AssignAssignmain/pi/dense/kernel
Reshape_24*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<*
use_locking(*
validate_shape(
Ј
Assign_1Assignmain/pi/dense/bias
Reshape_25*
T0*
_output_shapes	
:*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
use_locking(
Е
Assign_2Assignmain/pi/dense_1/kernel
Reshape_26*
T0* 
_output_shapes
:
*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(
Ќ
Assign_3Assignmain/pi/dense_1/bias
Reshape_27*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
T0*
validate_shape(*
use_locking(
Д
Assign_4Assignmain/pi/dense_2/kernel
Reshape_28*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
T0*
validate_shape(
Ћ
Assign_5Assignmain/pi/dense_2/bias
Reshape_29*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias
Д
Assign_6Assignmain/pi/dense_3/kernel
Reshape_30*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_3/kernel
Ћ
Assign_7Assignmain/pi/dense_3/bias
Reshape_31*
_output_shapes
:*
T0*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
s

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^train_pi
,
group_deps_1NoOp^group_deps	^train_pi
c
gradients_1/ShapeConst^group_deps_1*
_output_shapes
: *
valueB *
dtype0
i
gradients_1/grad_ys_0Const^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *

index_type0*
T0
R
(gradients_1/add_10_grad/tuple/group_depsNoOp^gradients_1/Fill^group_deps_1
П
0gradients_1/add_10_grad/tuple/control_dependencyIdentitygradients_1/Fill)^gradients_1/add_10_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
С
2gradients_1/add_10_grad/tuple/control_dependency_1Identitygradients_1/Fill)^gradients_1/add_10_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
q
'gradients_1/add_9_grad/tuple/group_depsNoOp1^gradients_1/add_10_grad/tuple/control_dependency^group_deps_1
н
/gradients_1/add_9_grad/tuple/control_dependencyIdentity0gradients_1/add_10_grad/tuple/control_dependency(^gradients_1/add_9_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
п
1gradients_1/add_9_grad/tuple/control_dependency_1Identity0gradients_1/add_10_grad/tuple/control_dependency(^gradients_1/add_9_grad/tuple/group_deps*
_output_shapes
: *
T0*#
_class
loc:@gradients_1/Fill

gradients_1/mul_19_grad/MulMul2gradients_1/add_10_grad/tuple/control_dependency_1Mean_5*
_output_shapes
: *
T0

gradients_1/mul_19_grad/Mul_1Mul2gradients_1/add_10_grad/tuple/control_dependency_1mul_19/x*
T0*
_output_shapes
: 
}
(gradients_1/mul_19_grad/tuple/group_depsNoOp^gradients_1/mul_19_grad/Mul^gradients_1/mul_19_grad/Mul_1^group_deps_1
е
0gradients_1/mul_19_grad/tuple/control_dependencyIdentitygradients_1/mul_19_grad/Mul)^gradients_1/mul_19_grad/tuple/group_deps*.
_class$
" loc:@gradients_1/mul_19_grad/Mul*
_output_shapes
: *
T0
л
2gradients_1/mul_19_grad/tuple/control_dependency_1Identitygradients_1/mul_19_grad/Mul_1)^gradients_1/mul_19_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_19_grad/Mul_1*
_output_shapes
: 
p
'gradients_1/add_8_grad/tuple/group_depsNoOp0^gradients_1/add_9_grad/tuple/control_dependency^group_deps_1
м
/gradients_1/add_8_grad/tuple/control_dependencyIdentity/gradients_1/add_9_grad/tuple/control_dependency(^gradients_1/add_8_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
о
1gradients_1/add_8_grad/tuple/control_dependency_1Identity/gradients_1/add_9_grad/tuple/control_dependency(^gradients_1/add_8_grad/tuple/group_deps*
T0*
_output_shapes
: *#
_class
loc:@gradients_1/Fill
~
gradients_1/mul_16_grad/MulMul1gradients_1/add_9_grad/tuple/control_dependency_1Mean_4*
_output_shapes
: *
T0

gradients_1/mul_16_grad/Mul_1Mul1gradients_1/add_9_grad/tuple/control_dependency_1mul_16/x*
T0*
_output_shapes
: 
}
(gradients_1/mul_16_grad/tuple/group_depsNoOp^gradients_1/mul_16_grad/Mul^gradients_1/mul_16_grad/Mul_1^group_deps_1
е
0gradients_1/mul_16_grad/tuple/control_dependencyIdentitygradients_1/mul_16_grad/Mul)^gradients_1/mul_16_grad/tuple/group_deps*.
_class$
" loc:@gradients_1/mul_16_grad/Mul*
T0*
_output_shapes
: 
л
2gradients_1/mul_16_grad/tuple/control_dependency_1Identitygradients_1/mul_16_grad/Mul_1)^gradients_1/mul_16_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_1/mul_16_grad/Mul_1
~
%gradients_1/Mean_5_grad/Reshape/shapeConst^group_deps_1*
valueB:*
_output_shapes
:*
dtype0
И
gradients_1/Mean_5_grad/ReshapeReshape2gradients_1/mul_19_grad/tuple/control_dependency_1%gradients_1/Mean_5_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
r
gradients_1/Mean_5_grad/ShapeShapesub_11^group_deps_1*
out_type0*
T0*
_output_shapes
:
Є
gradients_1/Mean_5_grad/TileTilegradients_1/Mean_5_grad/Reshapegradients_1/Mean_5_grad/Shape*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ*
T0
t
gradients_1/Mean_5_grad/Shape_1Shapesub_11^group_deps_1*
out_type0*
T0*
_output_shapes
:
q
gradients_1/Mean_5_grad/Shape_2Const^group_deps_1*
_output_shapes
: *
valueB *
dtype0
v
gradients_1/Mean_5_grad/ConstConst^group_deps_1*
dtype0*
valueB: *
_output_shapes
:
Ђ
gradients_1/Mean_5_grad/ProdProdgradients_1/Mean_5_grad/Shape_1gradients_1/Mean_5_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
x
gradients_1/Mean_5_grad/Const_1Const^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
І
gradients_1/Mean_5_grad/Prod_1Prodgradients_1/Mean_5_grad/Shape_2gradients_1/Mean_5_grad/Const_1*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
r
!gradients_1/Mean_5_grad/Maximum/yConst^group_deps_1*
dtype0*
value	B :*
_output_shapes
: 

gradients_1/Mean_5_grad/MaximumMaximumgradients_1/Mean_5_grad/Prod_1!gradients_1/Mean_5_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_5_grad/floordivFloorDivgradients_1/Mean_5_grad/Prodgradients_1/Mean_5_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_5_grad/CastCast gradients_1/Mean_5_grad/floordiv*
Truncate( *
_output_shapes
: *

SrcT0*

DstT0

gradients_1/Mean_5_grad/truedivRealDivgradients_1/Mean_5_grad/Tilegradients_1/Mean_5_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
|
gradients_1/mul_14_grad/MulMul/gradients_1/add_8_grad/tuple/control_dependencyMean_2*
T0*
_output_shapes
: 

gradients_1/mul_14_grad/Mul_1Mul/gradients_1/add_8_grad/tuple/control_dependencymul_14/x*
T0*
_output_shapes
: 
}
(gradients_1/mul_14_grad/tuple/group_depsNoOp^gradients_1/mul_14_grad/Mul^gradients_1/mul_14_grad/Mul_1^group_deps_1
е
0gradients_1/mul_14_grad/tuple/control_dependencyIdentitygradients_1/mul_14_grad/Mul)^gradients_1/mul_14_grad/tuple/group_deps*
_output_shapes
: *
T0*.
_class$
" loc:@gradients_1/mul_14_grad/Mul
л
2gradients_1/mul_14_grad/tuple/control_dependency_1Identitygradients_1/mul_14_grad/Mul_1)^gradients_1/mul_14_grad/tuple/group_deps*0
_class&
$"loc:@gradients_1/mul_14_grad/Mul_1*
_output_shapes
: *
T0
~
gradients_1/mul_15_grad/MulMul1gradients_1/add_8_grad/tuple/control_dependency_1Mean_3*
T0*
_output_shapes
: 

gradients_1/mul_15_grad/Mul_1Mul1gradients_1/add_8_grad/tuple/control_dependency_1mul_15/x*
T0*
_output_shapes
: 
}
(gradients_1/mul_15_grad/tuple/group_depsNoOp^gradients_1/mul_15_grad/Mul^gradients_1/mul_15_grad/Mul_1^group_deps_1
е
0gradients_1/mul_15_grad/tuple/control_dependencyIdentitygradients_1/mul_15_grad/Mul)^gradients_1/mul_15_grad/tuple/group_deps*
_output_shapes
: *
T0*.
_class$
" loc:@gradients_1/mul_15_grad/Mul
л
2gradients_1/mul_15_grad/tuple/control_dependency_1Identitygradients_1/mul_15_grad/Mul_1)^gradients_1/mul_15_grad/tuple/group_deps*0
_class&
$"loc:@gradients_1/mul_15_grad/Mul_1*
T0*
_output_shapes
: 
~
%gradients_1/Mean_4_grad/Reshape/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
И
gradients_1/Mean_4_grad/ReshapeReshape2gradients_1/mul_16_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
q
gradients_1/Mean_4_grad/ShapeShapepow_6^group_deps_1*
T0*
out_type0*
_output_shapes
:
Є
gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
s
gradients_1/Mean_4_grad/Shape_1Shapepow_6^group_deps_1*
_output_shapes
:*
T0*
out_type0
q
gradients_1/Mean_4_grad/Shape_2Const^group_deps_1*
_output_shapes
: *
valueB *
dtype0
v
gradients_1/Mean_4_grad/ConstConst^group_deps_1*
dtype0*
valueB: *
_output_shapes
:
Ђ
gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
x
gradients_1/Mean_4_grad/Const_1Const^group_deps_1*
valueB: *
dtype0*
_output_shapes
:
І
gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
r
!gradients_1/Mean_4_grad/Maximum/yConst^group_deps_1*
dtype0*
value	B :*
_output_shapes
: 

gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
_output_shapes
: *
T0

 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*
_output_shapes
: *

SrcT0*
Truncate( *

DstT0

gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
q
gradients_1/sub_11_grad/ShapeShapeadd_7^group_deps_1*
T0*
out_type0*
_output_shapes
:
t
gradients_1/sub_11_grad/Shape_1Shapemul_18^group_deps_1*
_output_shapes
:*
out_type0*
T0
У
-gradients_1/sub_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_11_grad/Shapegradients_1/sub_11_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
В
gradients_1/sub_11_grad/SumSumgradients_1/Mean_5_grad/truediv-gradients_1/sub_11_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ђ
gradients_1/sub_11_grad/ReshapeReshapegradients_1/sub_11_grad/Sumgradients_1/sub_11_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
Ж
gradients_1/sub_11_grad/Sum_1Sumgradients_1/Mean_5_grad/truediv/gradients_1/sub_11_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
d
gradients_1/sub_11_grad/NegNeggradients_1/sub_11_grad/Sum_1*
_output_shapes
:*
T0
І
!gradients_1/sub_11_grad/Reshape_1Reshapegradients_1/sub_11_grad/Neggradients_1/sub_11_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

(gradients_1/sub_11_grad/tuple/group_depsNoOp ^gradients_1/sub_11_grad/Reshape"^gradients_1/sub_11_grad/Reshape_1^group_deps_1
ъ
0gradients_1/sub_11_grad/tuple/control_dependencyIdentitygradients_1/sub_11_grad/Reshape)^gradients_1/sub_11_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@gradients_1/sub_11_grad/Reshape
№
2gradients_1/sub_11_grad/tuple/control_dependency_1Identity!gradients_1/sub_11_grad/Reshape_1)^gradients_1/sub_11_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*4
_class*
(&loc:@gradients_1/sub_11_grad/Reshape_1
~
%gradients_1/Mean_2_grad/Reshape/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
И
gradients_1/Mean_2_grad/ReshapeReshape2gradients_1/mul_14_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
q
gradients_1/Mean_2_grad/ShapeShapepow_4^group_deps_1*
out_type0*
T0*
_output_shapes
:
Є
gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
s
gradients_1/Mean_2_grad/Shape_1Shapepow_4^group_deps_1*
T0*
out_type0*
_output_shapes
:
q
gradients_1/Mean_2_grad/Shape_2Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB 
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
	keep_dims( *
T0*

Tidx0
x
gradients_1/Mean_2_grad/Const_1Const^group_deps_1*
dtype0*
valueB: *
_output_shapes
:
І
gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
r
!gradients_1/Mean_2_grad/Maximum/yConst^group_deps_1*
dtype0*
value	B :*
_output_shapes
: 

gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: *
Truncate( 

gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
~
%gradients_1/Mean_3_grad/Reshape/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
И
gradients_1/Mean_3_grad/ReshapeReshape2gradients_1/mul_15_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
q
gradients_1/Mean_3_grad/ShapeShapepow_5^group_deps_1*
T0*
_output_shapes
:*
out_type0
Є
gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
s
gradients_1/Mean_3_grad/Shape_1Shapepow_5^group_deps_1*
out_type0*
_output_shapes
:*
T0
q
gradients_1/Mean_3_grad/Shape_2Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB 
v
gradients_1/Mean_3_grad/ConstConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB: 
Ђ
gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_1gradients_1/Mean_3_grad/Const*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
x
gradients_1/Mean_3_grad/Const_1Const^group_deps_1*
dtype0*
_output_shapes
:*
valueB: 
І
gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
r
!gradients_1/Mean_3_grad/Maximum/yConst^group_deps_1*
dtype0*
value	B :*
_output_shapes
: 
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
gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*
_output_shapes
: *

SrcT0*

DstT0*
Truncate( 

gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
q
gradients_1/pow_6_grad/ShapeShapesub_10^group_deps_1*
_output_shapes
:*
out_type0*
T0
p
gradients_1/pow_6_grad/Shape_1Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
Р
,gradients_1/pow_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_6_grad/Shapegradients_1/pow_6_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
y
gradients_1/pow_6_grad/mulMulgradients_1/Mean_4_grad/truedivpow_6/y*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_6_grad/sub/yConst^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *  ?
i
gradients_1/pow_6_grad/subSubpow_6/ygradients_1/pow_6_grad/sub/y*
T0*
_output_shapes
: 
s
gradients_1/pow_6_grad/PowPowsub_10gradients_1/pow_6_grad/sub*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_6_grad/mul_1Mulgradients_1/pow_6_grad/mulgradients_1/pow_6_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
­
gradients_1/pow_6_grad/SumSumgradients_1/pow_6_grad/mul_1,gradients_1/pow_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

gradients_1/pow_6_grad/ReshapeReshapegradients_1/pow_6_grad/Sumgradients_1/pow_6_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
t
 gradients_1/pow_6_grad/Greater/yConst^group_deps_1*
dtype0*
valueB
 *    *
_output_shapes
: 

gradients_1/pow_6_grad/GreaterGreatersub_10 gradients_1/pow_6_grad/Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
{
&gradients_1/pow_6_grad/ones_like/ShapeShapesub_10^group_deps_1*
out_type0*
_output_shapes
:*
T0
z
&gradients_1/pow_6_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  ?*
_output_shapes
: *
dtype0
И
 gradients_1/pow_6_grad/ones_likeFill&gradients_1/pow_6_grad/ones_like/Shape&gradients_1/pow_6_grad/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ*

index_type0

gradients_1/pow_6_grad/SelectSelectgradients_1/pow_6_grad/Greatersub_10 gradients_1/pow_6_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_6_grad/LogLoggradients_1/pow_6_grad/Select*
T0*#
_output_shapes
:џџџџџџџџџ
s
!gradients_1/pow_6_grad/zeros_like	ZerosLikesub_10^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
gradients_1/pow_6_grad/Select_1Selectgradients_1/pow_6_grad/Greatergradients_1/pow_6_grad/Log!gradients_1/pow_6_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0
y
gradients_1/pow_6_grad/mul_2Mulgradients_1/Mean_4_grad/truedivpow_6*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_6_grad/mul_3Mulgradients_1/pow_6_grad/mul_2gradients_1/pow_6_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
gradients_1/pow_6_grad/Sum_1Sumgradients_1/pow_6_grad/mul_3.gradients_1/pow_6_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

 gradients_1/pow_6_grad/Reshape_1Reshapegradients_1/pow_6_grad/Sum_1gradients_1/pow_6_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

'gradients_1/pow_6_grad/tuple/group_depsNoOp^gradients_1/pow_6_grad/Reshape!^gradients_1/pow_6_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_6_grad/tuple/control_dependencyIdentitygradients_1/pow_6_grad/Reshape(^gradients_1/pow_6_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients_1/pow_6_grad/Reshape
п
1gradients_1/pow_6_grad/tuple/control_dependency_1Identity gradients_1/pow_6_grad/Reshape_1(^gradients_1/pow_6_grad/tuple/group_deps*
T0*
_output_shapes
: *3
_class)
'%loc:@gradients_1/pow_6_grad/Reshape_1
z
gradients_1/add_7_grad/ShapeShapeclip_by_value_2^group_deps_1*
T0*
out_type0*
_output_shapes
:
|
gradients_1/add_7_grad/Shape_1Shapeclip_by_value_5^group_deps_1*
_output_shapes
:*
T0*
out_type0
Р
,gradients_1/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_7_grad/Shapegradients_1/add_7_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
С
gradients_1/add_7_grad/SumSum0gradients_1/sub_11_grad/tuple/control_dependency,gradients_1/add_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients_1/add_7_grad/ReshapeReshapegradients_1/add_7_grad/Sumgradients_1/add_7_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
Х
gradients_1/add_7_grad/Sum_1Sum0gradients_1/sub_11_grad/tuple/control_dependency.gradients_1/add_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Ѕ
 gradients_1/add_7_grad/Reshape_1Reshapegradients_1/add_7_grad/Sum_1gradients_1/add_7_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

'gradients_1/add_7_grad/tuple/group_depsNoOp^gradients_1/add_7_grad/Reshape!^gradients_1/add_7_grad/Reshape_1^group_deps_1
ц
/gradients_1/add_7_grad/tuple/control_dependencyIdentitygradients_1/add_7_grad/Reshape(^gradients_1/add_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/add_7_grad/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ
ь
1gradients_1/add_7_grad/tuple/control_dependency_1Identity gradients_1/add_7_grad/Reshape_1(^gradients_1/add_7_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*3
_class)
'%loc:@gradients_1/add_7_grad/Reshape_1*
T0
o
gradients_1/mul_18_grad/ShapeConst^group_deps_1*
dtype0*
valueB *
_output_shapes
: 
s
gradients_1/mul_18_grad/Shape_1Shapepow_7^group_deps_1*
out_type0*
T0*
_output_shapes
:
У
-gradients_1/mul_18_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_18_grad/Shapegradients_1/mul_18_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients_1/mul_18_grad/MulMul2gradients_1/sub_11_grad/tuple/control_dependency_1pow_7*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_1/mul_18_grad/SumSumgradients_1/mul_18_grad/Mul-gradients_1/mul_18_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:

gradients_1/mul_18_grad/ReshapeReshapegradients_1/mul_18_grad/Sumgradients_1/mul_18_grad/Shape*
_output_shapes
: *
Tshape0*
T0

gradients_1/mul_18_grad/Mul_1Mulmul_18/x2gradients_1/sub_11_grad/tuple/control_dependency_1*#
_output_shapes
:џџџџџџџџџ*
T0
Д
gradients_1/mul_18_grad/Sum_1Sumgradients_1/mul_18_grad/Mul_1/gradients_1/mul_18_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ј
!gradients_1/mul_18_grad/Reshape_1Reshapegradients_1/mul_18_grad/Sum_1gradients_1/mul_18_grad/Shape_1*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0

(gradients_1/mul_18_grad/tuple/group_depsNoOp ^gradients_1/mul_18_grad/Reshape"^gradients_1/mul_18_grad/Reshape_1^group_deps_1
н
0gradients_1/mul_18_grad/tuple/control_dependencyIdentitygradients_1/mul_18_grad/Reshape)^gradients_1/mul_18_grad/tuple/group_deps*
T0*
_output_shapes
: *2
_class(
&$loc:@gradients_1/mul_18_grad/Reshape
№
2gradients_1/mul_18_grad/tuple/control_dependency_1Identity!gradients_1/mul_18_grad/Reshape_1)^gradients_1/mul_18_grad/tuple/group_deps*4
_class*
(&loc:@gradients_1/mul_18_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_4_grad/ShapeShapesub_8^group_deps_1*
out_type0*
_output_shapes
:*
T0
p
gradients_1/pow_4_grad/Shape_1Const^group_deps_1*
dtype0*
valueB *
_output_shapes
: 
Р
,gradients_1/pow_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_4_grad/Shapegradients_1/pow_4_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
y
gradients_1/pow_4_grad/mulMulgradients_1/Mean_2_grad/truedivpow_4/y*
T0*#
_output_shapes
:џџџџџџџџџ
p
gradients_1/pow_4_grad/sub/yConst^group_deps_1*
_output_shapes
: *
valueB
 *  ?*
dtype0
i
gradients_1/pow_4_grad/subSubpow_4/ygradients_1/pow_4_grad/sub/y*
_output_shapes
: *
T0
r
gradients_1/pow_4_grad/PowPowsub_8gradients_1/pow_4_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_4_grad/mul_1Mulgradients_1/pow_4_grad/mulgradients_1/pow_4_grad/Pow*
T0*#
_output_shapes
:џџџџџџџџџ
­
gradients_1/pow_4_grad/SumSumgradients_1/pow_4_grad/mul_1,gradients_1/pow_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_1/pow_4_grad/ReshapeReshapegradients_1/pow_4_grad/Sumgradients_1/pow_4_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
t
 gradients_1/pow_4_grad/Greater/yConst^group_deps_1*
_output_shapes
: *
valueB
 *    *
dtype0

gradients_1/pow_4_grad/GreaterGreatersub_8 gradients_1/pow_4_grad/Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
z
&gradients_1/pow_4_grad/ones_like/ShapeShapesub_8^group_deps_1*
out_type0*
_output_shapes
:*
T0
z
&gradients_1/pow_4_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
И
 gradients_1/pow_4_grad/ones_likeFill&gradients_1/pow_4_grad/ones_like/Shape&gradients_1/pow_4_grad/ones_like/Const*

index_type0*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_4_grad/SelectSelectgradients_1/pow_4_grad/Greatersub_8 gradients_1/pow_4_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_4_grad/LogLoggradients_1/pow_4_grad/Select*
T0*#
_output_shapes
:џџџџџџџџџ
r
!gradients_1/pow_4_grad/zeros_like	ZerosLikesub_8^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
gradients_1/pow_4_grad/Select_1Selectgradients_1/pow_4_grad/Greatergradients_1/pow_4_grad/Log!gradients_1/pow_4_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ
y
gradients_1/pow_4_grad/mul_2Mulgradients_1/Mean_2_grad/truedivpow_4*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_4_grad/mul_3Mulgradients_1/pow_4_grad/mul_2gradients_1/pow_4_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
gradients_1/pow_4_grad/Sum_1Sumgradients_1/pow_4_grad/mul_3.gradients_1/pow_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

 gradients_1/pow_4_grad/Reshape_1Reshapegradients_1/pow_4_grad/Sum_1gradients_1/pow_4_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0

'gradients_1/pow_4_grad/tuple/group_depsNoOp^gradients_1/pow_4_grad/Reshape!^gradients_1/pow_4_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_4_grad/tuple/control_dependencyIdentitygradients_1/pow_4_grad/Reshape(^gradients_1/pow_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/pow_4_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0
п
1gradients_1/pow_4_grad/tuple/control_dependency_1Identity gradients_1/pow_4_grad/Reshape_1(^gradients_1/pow_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/pow_4_grad/Reshape_1*
T0*
_output_shapes
: 
p
gradients_1/pow_5_grad/ShapeShapesub_9^group_deps_1*
T0*
_output_shapes
:*
out_type0
p
gradients_1/pow_5_grad/Shape_1Const^group_deps_1*
valueB *
_output_shapes
: *
dtype0
Р
,gradients_1/pow_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_5_grad/Shapegradients_1/pow_5_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
y
gradients_1/pow_5_grad/mulMulgradients_1/Mean_3_grad/truedivpow_5/y*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_5_grad/sub/yConst^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
i
gradients_1/pow_5_grad/subSubpow_5/ygradients_1/pow_5_grad/sub/y*
T0*
_output_shapes
: 
r
gradients_1/pow_5_grad/PowPowsub_9gradients_1/pow_5_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_5_grad/mul_1Mulgradients_1/pow_5_grad/mulgradients_1/pow_5_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
­
gradients_1/pow_5_grad/SumSumgradients_1/pow_5_grad/mul_1,gradients_1/pow_5_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients_1/pow_5_grad/ReshapeReshapegradients_1/pow_5_grad/Sumgradients_1/pow_5_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
t
 gradients_1/pow_5_grad/Greater/yConst^group_deps_1*
dtype0*
_output_shapes
: *
valueB
 *    

gradients_1/pow_5_grad/GreaterGreatersub_9 gradients_1/pow_5_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
z
&gradients_1/pow_5_grad/ones_like/ShapeShapesub_9^group_deps_1*
T0*
out_type0*
_output_shapes
:
z
&gradients_1/pow_5_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
И
 gradients_1/pow_5_grad/ones_likeFill&gradients_1/pow_5_grad/ones_like/Shape&gradients_1/pow_5_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_5_grad/SelectSelectgradients_1/pow_5_grad/Greatersub_9 gradients_1/pow_5_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_5_grad/LogLoggradients_1/pow_5_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
r
!gradients_1/pow_5_grad/zeros_like	ZerosLikesub_9^group_deps_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ж
gradients_1/pow_5_grad/Select_1Selectgradients_1/pow_5_grad/Greatergradients_1/pow_5_grad/Log!gradients_1/pow_5_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ
y
gradients_1/pow_5_grad/mul_2Mulgradients_1/Mean_3_grad/truedivpow_5*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_5_grad/mul_3Mulgradients_1/pow_5_grad/mul_2gradients_1/pow_5_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
gradients_1/pow_5_grad/Sum_1Sumgradients_1/pow_5_grad/mul_3.gradients_1/pow_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

 gradients_1/pow_5_grad/Reshape_1Reshapegradients_1/pow_5_grad/Sum_1gradients_1/pow_5_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 

'gradients_1/pow_5_grad/tuple/group_depsNoOp^gradients_1/pow_5_grad/Reshape!^gradients_1/pow_5_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_5_grad/tuple/control_dependencyIdentitygradients_1/pow_5_grad/Reshape(^gradients_1/pow_5_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*1
_class'
%#loc:@gradients_1/pow_5_grad/Reshape
п
1gradients_1/pow_5_grad/tuple/control_dependency_1Identity gradients_1/pow_5_grad/Reshape_1(^gradients_1/pow_5_grad/tuple/group_deps*
T0*
_output_shapes
: *3
_class)
'%loc:@gradients_1/pow_5_grad/Reshape_1
z
gradients_1/sub_10_grad/ShapeShapeStopGradient_1^group_deps_1*
T0*
_output_shapes
:*
out_type0
}
gradients_1/sub_10_grad/Shape_1Shapemain/qc/Squeeze^group_deps_1*
_output_shapes
:*
out_type0*
T0
У
-gradients_1/sub_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_10_grad/Shapegradients_1/sub_10_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
gradients_1/sub_10_grad/SumSum/gradients_1/pow_6_grad/tuple/control_dependency-gradients_1/sub_10_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
Ђ
gradients_1/sub_10_grad/ReshapeReshapegradients_1/sub_10_grad/Sumgradients_1/sub_10_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
Ц
gradients_1/sub_10_grad/Sum_1Sum/gradients_1/pow_6_grad/tuple/control_dependency/gradients_1/sub_10_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
d
gradients_1/sub_10_grad/NegNeggradients_1/sub_10_grad/Sum_1*
T0*
_output_shapes
:
І
!gradients_1/sub_10_grad/Reshape_1Reshapegradients_1/sub_10_grad/Neggradients_1/sub_10_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ

(gradients_1/sub_10_grad/tuple/group_depsNoOp ^gradients_1/sub_10_grad/Reshape"^gradients_1/sub_10_grad/Reshape_1^group_deps_1
ъ
0gradients_1/sub_10_grad/tuple/control_dependencyIdentitygradients_1/sub_10_grad/Reshape)^gradients_1/sub_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/sub_10_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
№
2gradients_1/sub_10_grad/tuple/control_dependency_1Identity!gradients_1/sub_10_grad/Reshape_1)^gradients_1/sub_10_grad/tuple/group_deps*4
_class*
(&loc:@gradients_1/sub_10_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
q
gradients_1/pow_7_grad/ShapeShapemul_17^group_deps_1*
T0*
_output_shapes
:*
out_type0
p
gradients_1/pow_7_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
valueB *
dtype0
Р
,gradients_1/pow_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_7_grad/Shapegradients_1/pow_7_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients_1/pow_7_grad/mulMul2gradients_1/mul_18_grad/tuple/control_dependency_1pow_7/y*#
_output_shapes
:џџџџџџџџџ*
T0
p
gradients_1/pow_7_grad/sub/yConst^group_deps_1*
valueB
 *  ?*
_output_shapes
: *
dtype0
i
gradients_1/pow_7_grad/subSubpow_7/ygradients_1/pow_7_grad/sub/y*
_output_shapes
: *
T0
s
gradients_1/pow_7_grad/PowPowmul_17gradients_1/pow_7_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_7_grad/mul_1Mulgradients_1/pow_7_grad/mulgradients_1/pow_7_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
­
gradients_1/pow_7_grad/SumSumgradients_1/pow_7_grad/mul_1,gradients_1/pow_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

gradients_1/pow_7_grad/ReshapeReshapegradients_1/pow_7_grad/Sumgradients_1/pow_7_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
t
 gradients_1/pow_7_grad/Greater/yConst^group_deps_1*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients_1/pow_7_grad/GreaterGreatermul_17 gradients_1/pow_7_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
{
&gradients_1/pow_7_grad/ones_like/ShapeShapemul_17^group_deps_1*
T0*
_output_shapes
:*
out_type0
z
&gradients_1/pow_7_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
И
 gradients_1/pow_7_grad/ones_likeFill&gradients_1/pow_7_grad/ones_like/Shape&gradients_1/pow_7_grad/ones_like/Const*#
_output_shapes
:џџџџџџџџџ*

index_type0*
T0

gradients_1/pow_7_grad/SelectSelectgradients_1/pow_7_grad/Greatermul_17 gradients_1/pow_7_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
n
gradients_1/pow_7_grad/LogLoggradients_1/pow_7_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
s
!gradients_1/pow_7_grad/zeros_like	ZerosLikemul_17^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
gradients_1/pow_7_grad/Select_1Selectgradients_1/pow_7_grad/Greatergradients_1/pow_7_grad/Log!gradients_1/pow_7_grad/zeros_like*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_7_grad/mul_2Mul2gradients_1/mul_18_grad/tuple/control_dependency_1pow_7*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_7_grad/mul_3Mulgradients_1/pow_7_grad/mul_2gradients_1/pow_7_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Б
gradients_1/pow_7_grad/Sum_1Sumgradients_1/pow_7_grad/mul_3.gradients_1/pow_7_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:

 gradients_1/pow_7_grad/Reshape_1Reshapegradients_1/pow_7_grad/Sum_1gradients_1/pow_7_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0

'gradients_1/pow_7_grad/tuple/group_depsNoOp^gradients_1/pow_7_grad/Reshape!^gradients_1/pow_7_grad/Reshape_1^group_deps_1
ц
/gradients_1/pow_7_grad/tuple/control_dependencyIdentitygradients_1/pow_7_grad/Reshape(^gradients_1/pow_7_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*1
_class'
%#loc:@gradients_1/pow_7_grad/Reshape
п
1gradients_1/pow_7_grad/tuple/control_dependency_1Identity gradients_1/pow_7_grad/Reshape_1(^gradients_1/pow_7_grad/tuple/group_deps*
_output_shapes
: *
T0*3
_class)
'%loc:@gradients_1/pow_7_grad/Reshape_1
w
gradients_1/sub_8_grad/ShapeShapeStopGradient^group_deps_1*
out_type0*
T0*
_output_shapes
:
}
gradients_1/sub_8_grad/Shape_1Shapemain/qr1/Squeeze^group_deps_1*
out_type0*
T0*
_output_shapes
:
Р
,gradients_1/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_8_grad/Shapegradients_1/sub_8_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
gradients_1/sub_8_grad/SumSum/gradients_1/pow_4_grad/tuple/control_dependency,gradients_1/sub_8_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

gradients_1/sub_8_grad/ReshapeReshapegradients_1/sub_8_grad/Sumgradients_1/sub_8_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
Ф
gradients_1/sub_8_grad/Sum_1Sum/gradients_1/pow_4_grad/tuple/control_dependency.gradients_1/sub_8_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
b
gradients_1/sub_8_grad/NegNeggradients_1/sub_8_grad/Sum_1*
_output_shapes
:*
T0
Ѓ
 gradients_1/sub_8_grad/Reshape_1Reshapegradients_1/sub_8_grad/Neggradients_1/sub_8_grad/Shape_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0

'gradients_1/sub_8_grad/tuple/group_depsNoOp^gradients_1/sub_8_grad/Reshape!^gradients_1/sub_8_grad/Reshape_1^group_deps_1
ц
/gradients_1/sub_8_grad/tuple/control_dependencyIdentitygradients_1/sub_8_grad/Reshape(^gradients_1/sub_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_8_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0
ь
1gradients_1/sub_8_grad/tuple/control_dependency_1Identity gradients_1/sub_8_grad/Reshape_1(^gradients_1/sub_8_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/sub_8_grad/Reshape_1*
T0*#
_output_shapes
:џџџџџџџџџ
w
gradients_1/sub_9_grad/ShapeShapeStopGradient^group_deps_1*
T0*
_output_shapes
:*
out_type0
}
gradients_1/sub_9_grad/Shape_1Shapemain/qr2/Squeeze^group_deps_1*
T0*
_output_shapes
:*
out_type0
Р
,gradients_1/sub_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_9_grad/Shapegradients_1/sub_9_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
gradients_1/sub_9_grad/SumSum/gradients_1/pow_5_grad/tuple/control_dependency,gradients_1/sub_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients_1/sub_9_grad/ReshapeReshapegradients_1/sub_9_grad/Sumgradients_1/sub_9_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
Ф
gradients_1/sub_9_grad/Sum_1Sum/gradients_1/pow_5_grad/tuple/control_dependency.gradients_1/sub_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
b
gradients_1/sub_9_grad/NegNeggradients_1/sub_9_grad/Sum_1*
T0*
_output_shapes
:
Ѓ
 gradients_1/sub_9_grad/Reshape_1Reshapegradients_1/sub_9_grad/Neggradients_1/sub_9_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

'gradients_1/sub_9_grad/tuple/group_depsNoOp^gradients_1/sub_9_grad/Reshape!^gradients_1/sub_9_grad/Reshape_1^group_deps_1
ц
/gradients_1/sub_9_grad/tuple/control_dependencyIdentitygradients_1/sub_9_grad/Reshape(^gradients_1/sub_9_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*1
_class'
%#loc:@gradients_1/sub_9_grad/Reshape
ь
1gradients_1/sub_9_grad/tuple/control_dependency_1Identity gradients_1/sub_9_grad/Reshape_1(^gradients_1/sub_9_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*3
_class)
'%loc:@gradients_1/sub_9_grad/Reshape_1
{
gradients_1/mul_17_grad/ShapeShapeclip_by_value_2^group_deps_1*
T0*
out_type0*
_output_shapes
:
}
gradients_1/mul_17_grad/Shape_1Shapeclip_by_value_5^group_deps_1*
out_type0*
_output_shapes
:*
T0
У
-gradients_1/mul_17_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_17_grad/Shapegradients_1/mul_17_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients_1/mul_17_grad/MulMul/gradients_1/pow_7_grad/tuple/control_dependencyclip_by_value_5*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_1/mul_17_grad/SumSumgradients_1/mul_17_grad/Mul-gradients_1/mul_17_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Ђ
gradients_1/mul_17_grad/ReshapeReshapegradients_1/mul_17_grad/Sumgradients_1/mul_17_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/mul_17_grad/Mul_1Mulclip_by_value_2/gradients_1/pow_7_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
Д
gradients_1/mul_17_grad/Sum_1Sumgradients_1/mul_17_grad/Mul_1/gradients_1/mul_17_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ј
!gradients_1/mul_17_grad/Reshape_1Reshapegradients_1/mul_17_grad/Sum_1gradients_1/mul_17_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

(gradients_1/mul_17_grad/tuple/group_depsNoOp ^gradients_1/mul_17_grad/Reshape"^gradients_1/mul_17_grad/Reshape_1^group_deps_1
ъ
0gradients_1/mul_17_grad/tuple/control_dependencyIdentitygradients_1/mul_17_grad/Reshape)^gradients_1/mul_17_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@gradients_1/mul_17_grad/Reshape
№
2gradients_1/mul_17_grad/tuple/control_dependency_1Identity!gradients_1/mul_17_grad/Reshape_1)^gradients_1/mul_17_grad/tuple/group_deps*
T0*#
_output_shapes
:џџџџџџџџџ*4
_class*
(&loc:@gradients_1/mul_17_grad/Reshape_1

'gradients_1/main/qr1/Squeeze_grad/ShapeShapemain/qr1/dense_2/BiasAdd^group_deps_1*
T0*
out_type0*
_output_shapes
:
а
)gradients_1/main/qr1/Squeeze_grad/ReshapeReshape1gradients_1/sub_8_grad/tuple/control_dependency_1'gradients_1/main/qr1/Squeeze_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

'gradients_1/main/qr2/Squeeze_grad/ShapeShapemain/qr2/dense_2/BiasAdd^group_deps_1*
out_type0*
T0*
_output_shapes
:
а
)gradients_1/main/qr2/Squeeze_grad/ReshapeReshape1gradients_1/sub_9_grad/tuple/control_dependency_1'gradients_1/main/qr2/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
х
gradients_1/AddNAddN/gradients_1/add_7_grad/tuple/control_dependency0gradients_1/mul_17_grad/tuple/control_dependency*1
_class'
%#loc:@gradients_1/add_7_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0*
N

&gradients_1/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum^group_deps_1*
out_type0*
_output_shapes
:*
T0
z
(gradients_1/clip_by_value_2_grad/Shape_1Const^group_deps_1*
dtype0*
valueB *
_output_shapes
: 
x
(gradients_1/clip_by_value_2_grad/Shape_2Shapegradients_1/AddN*
_output_shapes
:*
T0*
out_type0

,gradients_1/clip_by_value_2_grad/zeros/ConstConst^group_deps_1*
_output_shapes
: *
valueB
 *    *
dtype0
Ц
&gradients_1/clip_by_value_2_grad/zerosFill(gradients_1/clip_by_value_2_grad/Shape_2,gradients_1/clip_by_value_2_grad/zeros/Const*
T0*#
_output_shapes
:џџџџџџџџџ*

index_type0
І
-gradients_1/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/Minimumclip_by_value_2/y^group_deps_1*#
_output_shapes
:џџџџџџџџџ*
T0
о
6gradients_1/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_2_grad/Shape(gradients_1/clip_by_value_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ш
'gradients_1/clip_by_value_2_grad/SelectSelect-gradients_1/clip_by_value_2_grad/GreaterEqualgradients_1/AddN&gradients_1/clip_by_value_2_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0
Ъ
)gradients_1/clip_by_value_2_grad/Select_1Select-gradients_1/clip_by_value_2_grad/GreaterEqual&gradients_1/clip_by_value_2_grad/zerosgradients_1/AddN*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
$gradients_1/clip_by_value_2_grad/SumSum'gradients_1/clip_by_value_2_grad/Select6gradients_1/clip_by_value_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Н
(gradients_1/clip_by_value_2_grad/ReshapeReshape$gradients_1/clip_by_value_2_grad/Sum&gradients_1/clip_by_value_2_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
в
&gradients_1/clip_by_value_2_grad/Sum_1Sum)gradients_1/clip_by_value_2_grad/Select_18gradients_1/clip_by_value_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Ж
*gradients_1/clip_by_value_2_grad/Reshape_1Reshape&gradients_1/clip_by_value_2_grad/Sum_1(gradients_1/clip_by_value_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
 
1gradients_1/clip_by_value_2_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_2_grad/Reshape+^gradients_1/clip_by_value_2_grad/Reshape_1^group_deps_1

9gradients_1/clip_by_value_2_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_2_grad/Reshape2^gradients_1/clip_by_value_2_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/clip_by_value_2_grad/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ

;gradients_1/clip_by_value_2_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_2_grad/Reshape_12^gradients_1/clip_by_value_2_grad/tuple/group_deps*
_output_shapes
: *=
_class3
1/loc:@gradients_1/clip_by_value_2_grad/Reshape_1*
T0
э
gradients_1/AddN_1AddN1gradients_1/add_7_grad/tuple/control_dependency_12gradients_1/mul_17_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:џџџџџџџџџ*
N*3
_class)
'%loc:@gradients_1/add_7_grad/Reshape_1

&gradients_1/clip_by_value_5_grad/ShapeShapeclip_by_value_5/Minimum^group_deps_1*
T0*
out_type0*
_output_shapes
:
z
(gradients_1/clip_by_value_5_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
valueB *
dtype0
z
(gradients_1/clip_by_value_5_grad/Shape_2Shapegradients_1/AddN_1*
_output_shapes
:*
out_type0*
T0

,gradients_1/clip_by_value_5_grad/zeros/ConstConst^group_deps_1*
_output_shapes
: *
valueB
 *    *
dtype0
Ц
&gradients_1/clip_by_value_5_grad/zerosFill(gradients_1/clip_by_value_5_grad/Shape_2,gradients_1/clip_by_value_5_grad/zeros/Const*
T0*#
_output_shapes
:џџџџџџџџџ*

index_type0
І
-gradients_1/clip_by_value_5_grad/GreaterEqualGreaterEqualclip_by_value_5/Minimumclip_by_value_5/y^group_deps_1*
T0*#
_output_shapes
:џџџџџџџџџ
о
6gradients_1/clip_by_value_5_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_5_grad/Shape(gradients_1/clip_by_value_5_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ъ
'gradients_1/clip_by_value_5_grad/SelectSelect-gradients_1/clip_by_value_5_grad/GreaterEqualgradients_1/AddN_1&gradients_1/clip_by_value_5_grad/zeros*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
)gradients_1/clip_by_value_5_grad/Select_1Select-gradients_1/clip_by_value_5_grad/GreaterEqual&gradients_1/clip_by_value_5_grad/zerosgradients_1/AddN_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ь
$gradients_1/clip_by_value_5_grad/SumSum'gradients_1/clip_by_value_5_grad/Select6gradients_1/clip_by_value_5_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Н
(gradients_1/clip_by_value_5_grad/ReshapeReshape$gradients_1/clip_by_value_5_grad/Sum&gradients_1/clip_by_value_5_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
в
&gradients_1/clip_by_value_5_grad/Sum_1Sum)gradients_1/clip_by_value_5_grad/Select_18gradients_1/clip_by_value_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ж
*gradients_1/clip_by_value_5_grad/Reshape_1Reshape&gradients_1/clip_by_value_5_grad/Sum_1(gradients_1/clip_by_value_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
 
1gradients_1/clip_by_value_5_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_5_grad/Reshape+^gradients_1/clip_by_value_5_grad/Reshape_1^group_deps_1

9gradients_1/clip_by_value_5_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_5_grad/Reshape2^gradients_1/clip_by_value_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_5_grad/Reshape*#
_output_shapes
:џџџџџџџџџ

;gradients_1/clip_by_value_5_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_5_grad/Reshape_12^gradients_1/clip_by_value_5_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients_1/clip_by_value_5_grad/Reshape_1
Ћ
5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/main/qr1/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
Е
:gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients_1/main/qr1/Squeeze_grad/Reshape6^gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
І
Bgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/main/qr1/Squeeze_grad/Reshape;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*<
_class2
0.loc:@gradients_1/main/qr1/Squeeze_grad/Reshape
Г
Dgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*H
_class>
<:loc:@gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad
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
T0*'
_output_shapes
:џџџџџџџџџ*<
_class2
0.loc:@gradients_1/main/qr2/Squeeze_grad/Reshape
Г
Dgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad

.gradients_1/clip_by_value_2/Minimum_grad/ShapeShapemain/qc_var/Softplus^group_deps_1*
_output_shapes
:*
out_type0*
T0

0gradients_1/clip_by_value_2/Minimum_grad/Shape_1Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
Љ
0gradients_1/clip_by_value_2/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_2_grad/tuple/control_dependency*
T0*
_output_shapes
:*
out_type0

4gradients_1/clip_by_value_2/Minimum_grad/zeros/ConstConst^group_deps_1*
valueB
 *    *
dtype0*
_output_shapes
: 
о
.gradients_1/clip_by_value_2/Minimum_grad/zerosFill0gradients_1/clip_by_value_2/Minimum_grad/Shape_24gradients_1/clip_by_value_2/Minimum_grad/zeros/Const*
T0*#
_output_shapes
:џџџџџџџџџ*

index_type0
­
2gradients_1/clip_by_value_2/Minimum_grad/LessEqual	LessEqualmain/qc_var/Softplusclip_by_value_2/Minimum/y^group_deps_1*#
_output_shapes
:џџџџџџџџџ*
T0
і
>gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_2/Minimum_grad/Shape0gradients_1/clip_by_value_2/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

/gradients_1/clip_by_value_2/Minimum_grad/SelectSelect2gradients_1/clip_by_value_2/Minimum_grad/LessEqual9gradients_1/clip_by_value_2_grad/tuple/control_dependency.gradients_1/clip_by_value_2/Minimum_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0

1gradients_1/clip_by_value_2/Minimum_grad/Select_1Select2gradients_1/clip_by_value_2/Minimum_grad/LessEqual.gradients_1/clip_by_value_2/Minimum_grad/zeros9gradients_1/clip_by_value_2_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
ф
,gradients_1/clip_by_value_2/Minimum_grad/SumSum/gradients_1/clip_by_value_2/Minimum_grad/Select>gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
е
0gradients_1/clip_by_value_2/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_2/Minimum_grad/Sum.gradients_1/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ъ
.gradients_1/clip_by_value_2/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_2/Minimum_grad/Select_1@gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ю
2gradients_1/clip_by_value_2/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_2/Minimum_grad/Sum_10gradients_1/clip_by_value_2/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
И
9gradients_1/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_2/Minimum_grad/Reshape3^gradients_1/clip_by_value_2/Minimum_grad/Reshape_1^group_deps_1
Ў
Agradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_2/Minimum_grad/Reshape:^gradients_1/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value_2/Minimum_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Ї
Cgradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_2/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/clip_by_value_2/Minimum_grad/Reshape_1*
_output_shapes
: 

.gradients_1/clip_by_value_5/Minimum_grad/ShapeShapeStopGradient_2^group_deps_1*
_output_shapes
:*
T0*
out_type0

0gradients_1/clip_by_value_5/Minimum_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
Љ
0gradients_1/clip_by_value_5/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_5_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:

4gradients_1/clip_by_value_5/Minimum_grad/zeros/ConstConst^group_deps_1*
dtype0*
_output_shapes
: *
valueB
 *    
о
.gradients_1/clip_by_value_5/Minimum_grad/zerosFill0gradients_1/clip_by_value_5/Minimum_grad/Shape_24gradients_1/clip_by_value_5/Minimum_grad/zeros/Const*#
_output_shapes
:џџџџџџџџџ*

index_type0*
T0
Ї
2gradients_1/clip_by_value_5/Minimum_grad/LessEqual	LessEqualStopGradient_2clip_by_value_5/Minimum/y^group_deps_1*#
_output_shapes
:џџџџџџџџџ*
T0
і
>gradients_1/clip_by_value_5/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_5/Minimum_grad/Shape0gradients_1/clip_by_value_5/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

/gradients_1/clip_by_value_5/Minimum_grad/SelectSelect2gradients_1/clip_by_value_5/Minimum_grad/LessEqual9gradients_1/clip_by_value_5_grad/tuple/control_dependency.gradients_1/clip_by_value_5/Minimum_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0

1gradients_1/clip_by_value_5/Minimum_grad/Select_1Select2gradients_1/clip_by_value_5/Minimum_grad/LessEqual.gradients_1/clip_by_value_5/Minimum_grad/zeros9gradients_1/clip_by_value_5_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
ф
,gradients_1/clip_by_value_5/Minimum_grad/SumSum/gradients_1/clip_by_value_5/Minimum_grad/Select>gradients_1/clip_by_value_5/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
е
0gradients_1/clip_by_value_5/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_5/Minimum_grad/Sum.gradients_1/clip_by_value_5/Minimum_grad/Shape*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ
ъ
.gradients_1/clip_by_value_5/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_5/Minimum_grad/Select_1@gradients_1/clip_by_value_5/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ю
2gradients_1/clip_by_value_5/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_5/Minimum_grad/Sum_10gradients_1/clip_by_value_5/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
И
9gradients_1/clip_by_value_5/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_5/Minimum_grad/Reshape3^gradients_1/clip_by_value_5/Minimum_grad/Reshape_1^group_deps_1
Ў
Agradients_1/clip_by_value_5/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_5/Minimum_grad/Reshape:^gradients_1/clip_by_value_5/Minimum_grad/tuple/group_deps*C
_class9
75loc:@gradients_1/clip_by_value_5/Minimum_grad/Reshape*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
Cgradients_1/clip_by_value_5/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_5/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_5/Minimum_grad/tuple/group_deps*
_output_shapes
: *E
_class;
97loc:@gradients_1/clip_by_value_5/Minimum_grad/Reshape_1*
T0
є
/gradients_1/main/qr1/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_2/kernel/read*
transpose_a( *
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
T0
ц
1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr1/dense_1/ReluBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
_output_shapes
:	*
transpose_a(
Ж
9gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*B
_class8
64loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul
Ў
Cgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
є
/gradients_1/main/qr2/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(
ц
1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2/dense_1/ReluBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0
Ж
9gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Ў
Cgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*D
_class:
86loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1
Ш
2gradients_1/main/qc_var/Softplus_grad/SoftplusGradSoftplusGradAgradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependencymain/qc_var/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
/gradients_1/main/qr1/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ш
/gradients_1/main/qr2/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencymain/qr2/dense_1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0

*gradients_1/main/qc_var/Squeeze_grad/ShapeShapemain/qc_var/dense_2/BiasAdd^group_deps_1*
_output_shapes
:*
out_type0*
T0
з
,gradients_1/main/qc_var/Squeeze_grad/ReshapeReshape2gradients_1/main/qc_var/Softplus_grad/SoftplusGrad*gradients_1/main/qc_var/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
В
5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
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
Dgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*H
_class>
<:loc:@gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad
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
T0*B
_class8
64loc:@gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Д
Dgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
Б
8gradients_1/main/qc_var/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients_1/main/qc_var/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
О
=gradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/main/qc_var/Squeeze_grad/Reshape9^gradients_1/main/qc_var/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
В
Egradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity,gradients_1/main/qc_var/Squeeze_grad/Reshape>^gradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients_1/main/qc_var/Squeeze_grad/Reshape
П
Ggradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity8gradients_1/main/qc_var/dense_2/BiasAdd_grad/BiasAddGrad>^gradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@gradients_1/main/qc_var/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
є
/gradients_1/main/qr1/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b(
х
1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1/dense/ReluBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( * 
_output_shapes
:
*
transpose_a(*
T0
Ж
9gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*B
_class8
64loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul
Џ
Cgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

є
/gradients_1/main/qr2/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b(
х
1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2/dense/ReluBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( * 
_output_shapes
:
*
transpose_a(*
T0
Ж
9gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1^group_deps_1
Б
Agradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
Џ
Cgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*D
_class:
86loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1*
T0
§
2gradients_1/main/qc_var/dense_2/MatMul_grad/MatMulMatMulEgradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense_2/kernel/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:џџџџџџџџџ
я
4gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul_1MatMulmain/qc_var/dense_1/ReluEgradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
T0*
transpose_b( 
П
<gradients_1/main/qc_var/dense_2/MatMul_grad/tuple/group_depsNoOp3^gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul5^gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul_1^group_deps_1
Н
Dgradients_1/main/qc_var/dense_2/MatMul_grad/tuple/control_dependencyIdentity2gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul=^gradients_1/main/qc_var/dense_2/MatMul_grad/tuple/group_deps*E
_class;
97loc:@gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
К
Fgradients_1/main/qc_var/dense_2/MatMul_grad/tuple/control_dependency_1Identity4gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul_1=^gradients_1/main/qc_var/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*G
_class=
;9loc:@gradients_1/main/qc_var/dense_2/MatMul_grad/MatMul_1

&gradients_1/main/qc/Squeeze_grad/ShapeShapemain/qc/dense_2/BiasAdd^group_deps_1*
out_type0*
_output_shapes
:*
T0
Я
(gradients_1/main/qc/Squeeze_grad/ReshapeReshape2gradients_1/sub_10_grad/tuple/control_dependency_1&gradients_1/main/qc/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
Ф
-gradients_1/main/qr1/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1/dense/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Ф
-gradients_1/main/qr2/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencymain/qr2/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
б
2gradients_1/main/qc_var/dense_1/Relu_grad/ReluGradReluGradDgradients_1/main/qc_var/dense_2/MatMul_grad/tuple/control_dependencymain/qc_var/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Љ
4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/main/qc/Squeeze_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
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
Cgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*G
_class=
;9loc:@gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad
Ў
3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Е
8gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr1/dense/Relu_grad/ReluGrad^group_deps_1
Ћ
@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/Relu_grad/ReluGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*@
_class6
42loc:@gradients_1/main/qr1/dense/Relu_grad/ReluGrad*
T0
Ќ
Bgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ў
3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr2/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
data_formatNHWC*
T0
Е
8gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr2/dense/Relu_grad/ReluGrad^group_deps_1
Ћ
@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/Relu_grad/ReluGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*@
_class6
42loc:@gradients_1/main/qr2/dense/Relu_grad/ReluGrad
Ќ
Bgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
И
8gradients_1/main/qc_var/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients_1/main/qc_var/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
Ф
=gradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/group_depsNoOp9^gradients_1/main/qc_var/dense_1/BiasAdd_grad/BiasAddGrad3^gradients_1/main/qc_var/dense_1/Relu_grad/ReluGrad^group_deps_1
П
Egradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity2gradients_1/main/qc_var/dense_1/Relu_grad/ReluGrad>^gradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*E
_class;
97loc:@gradients_1/main/qc_var/dense_1/Relu_grad/ReluGrad*
T0
Р
Ggradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients_1/main/qc_var/dense_1/BiasAdd_grad/BiasAddGrad>^gradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*K
_classA
?=loc:@gradients_1/main/qc_var/dense_1/BiasAdd_grad/BiasAddGrad
ё
.gradients_1/main/qc/dense_2/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
у
0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1MatMulmain/qc/dense_1/ReluAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	
Г
8gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_2/MatMul_grad/MatMul1^gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1^group_deps_1
­
@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_2/MatMul_grad/MatMul9^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul*
T0
Њ
Bgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
э
-gradients_1/main/qr1/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ>*
transpose_b(*
transpose_a( 
м
/gradients_1/main/qr1/dense/MatMul_grad/MatMul_1MatMulmain/qr1/concat@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	>
А
7gradients_1/main/qr1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr1/dense/MatMul_grad/MatMul0^gradients_1/main/qr1/dense/MatMul_grad/MatMul_1^group_deps_1
Ј
?gradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/MatMul_grad/MatMul8^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ>
І
Agradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr1/dense/MatMul_grad/MatMul_18^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>
э
-gradients_1/main/qr2/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencymain/qr2/dense/kernel/read*
transpose_b(*'
_output_shapes
:џџџџџџџџџ>*
T0*
transpose_a( 
м
/gradients_1/main/qr2/dense/MatMul_grad/MatMul_1MatMulmain/qr2/concat@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	>
А
7gradients_1/main/qr2/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr2/dense/MatMul_grad/MatMul0^gradients_1/main/qr2/dense/MatMul_grad/MatMul_1^group_deps_1
Ј
?gradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/MatMul_grad/MatMul8^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ>
І
Agradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr2/dense/MatMul_grad/MatMul_18^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>*
T0
§
2gradients_1/main/qc_var/dense_1/MatMul_grad/MatMulMatMulEgradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense_1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_b(*
transpose_a( 
ю
4gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul_1MatMulmain/qc_var/dense/ReluEgradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
T0*
transpose_b( 
П
<gradients_1/main/qc_var/dense_1/MatMul_grad/tuple/group_depsNoOp3^gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul5^gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul_1^group_deps_1
Н
Dgradients_1/main/qc_var/dense_1/MatMul_grad/tuple/control_dependencyIdentity2gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul=^gradients_1/main/qc_var/dense_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Л
Fgradients_1/main/qc_var/dense_1/MatMul_grad/tuple/control_dependency_1Identity4gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul_1=^gradients_1/main/qc_var/dense_1/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
*G
_class=
;9loc:@gradients_1/main/qc_var/dense_1/MatMul_grad/MatMul_1
Х
.gradients_1/main/qc/dense_1/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencymain/qc/dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
Э
0gradients_1/main/qc_var/dense/Relu_grad/ReluGradReluGradDgradients_1/main/qc_var/dense_1/MatMul_grad/tuple/control_dependencymain/qc_var/dense/Relu*
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
Agradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/Relu_grad/ReluGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*
T0*A
_class7
53loc:@gradients_1/main/qc/dense_1/Relu_grad/ReluGrad
А
Cgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Д
6gradients_1/main/qc_var/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0gradients_1/main/qc_var/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
О
;gradients_1/main/qc_var/dense/BiasAdd_grad/tuple/group_depsNoOp7^gradients_1/main/qc_var/dense/BiasAdd_grad/BiasAddGrad1^gradients_1/main/qc_var/dense/Relu_grad/ReluGrad^group_deps_1
З
Cgradients_1/main/qc_var/dense/BiasAdd_grad/tuple/control_dependencyIdentity0gradients_1/main/qc_var/dense/Relu_grad/ReluGrad<^gradients_1/main/qc_var/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:џџџџџџџџџ*C
_class9
75loc:@gradients_1/main/qc_var/dense/Relu_grad/ReluGrad
И
Egradients_1/main/qc_var/dense/BiasAdd_grad/tuple/control_dependency_1Identity6gradients_1/main/qc_var/dense/BiasAdd_grad/BiasAddGrad<^gradients_1/main/qc_var/dense/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@gradients_1/main/qc_var/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
ё
.gradients_1/main/qc/dense_1/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
т
0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1MatMulmain/qc/dense/ReluAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
*
T0*
transpose_b( 
Г
8gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_1/MatMul_grad/MatMul1^gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1^group_deps_1
­
@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/MatMul_grad/MatMul9^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
Ћ
Bgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*C
_class9
75loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1*
T0
і
0gradients_1/main/qc_var/dense/MatMul_grad/MatMulMatMulCgradients_1/main/qc_var/dense/BiasAdd_grad/tuple/control_dependencymain/qc_var/dense/kernel/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ>
х
2gradients_1/main/qc_var/dense/MatMul_grad/MatMul_1MatMulmain/qc_var/concatCgradients_1/main/qc_var/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	>*
transpose_b( *
T0
Й
:gradients_1/main/qc_var/dense/MatMul_grad/tuple/group_depsNoOp1^gradients_1/main/qc_var/dense/MatMul_grad/MatMul3^gradients_1/main/qc_var/dense/MatMul_grad/MatMul_1^group_deps_1
Д
Bgradients_1/main/qc_var/dense/MatMul_grad/tuple/control_dependencyIdentity0gradients_1/main/qc_var/dense/MatMul_grad/MatMul;^gradients_1/main/qc_var/dense/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients_1/main/qc_var/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ>*
T0
В
Dgradients_1/main/qc_var/dense/MatMul_grad/tuple/control_dependency_1Identity2gradients_1/main/qc_var/dense/MatMul_grad/MatMul_1;^gradients_1/main/qc_var/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>*
T0*E
_class;
97loc:@gradients_1/main/qc_var/dense/MatMul_grad/MatMul_1
С
,gradients_1/main/qc/dense/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencymain/qc/dense/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
Ќ
2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients_1/main/qc/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:*
data_formatNHWC
В
7gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad-^gradients_1/main/qc/dense/Relu_grad/ReluGrad^group_deps_1
Ї
?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/Relu_grad/ReluGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/main/qc/dense/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ
Ј
Agradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ъ
,gradients_1/main/qc/dense/MatMul_grad/MatMulMatMul?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*'
_output_shapes
:џџџџџџџџџ>*
T0*
transpose_a( *
transpose_b(
й
.gradients_1/main/qc/dense/MatMul_grad/MatMul_1MatMulmain/qc/concat?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>*
T0*
transpose_b( *
transpose_a(
­
6gradients_1/main/qc/dense/MatMul_grad/tuple/group_depsNoOp-^gradients_1/main/qc/dense/MatMul_grad/MatMul/^gradients_1/main/qc/dense/MatMul_grad/MatMul_1^group_deps_1
Є
>gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/MatMul_grad/MatMul7^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ>*?
_class5
31loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul*
T0
Ђ
@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Identity.gradients_1/main/qc/dense/MatMul_grad/MatMul_17^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	>*A
_class7
53loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul_1
r
Reshape_32/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0


Reshape_32ReshapeAgradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Reshape_32/shape*
_output_shapes	
:|*
Tshape0*
T0
r
Reshape_33/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:


Reshape_33ReshapeBgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
T0*
Tshape0*
_output_shapes	
:
r
Reshape_34/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
Ё

Reshape_34ReshapeCgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_34/shape*
Tshape0*
T0*
_output_shapes

:
r
Reshape_35/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
Ё

Reshape_35ReshapeDgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_35/shape*
T0*
_output_shapes	
:*
Tshape0
r
Reshape_36/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
 

Reshape_36ReshapeCgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_36/shape*
_output_shapes	
:*
Tshape0*
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
T0*
_output_shapes
:*
Tshape0
r
Reshape_38/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_38ReshapeAgradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Reshape_38/shape*
T0*
Tshape0*
_output_shapes	
:|
r
Reshape_39/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_39ReshapeBgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_39/shape*
Tshape0*
_output_shapes	
:*
T0
r
Reshape_40/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ё

Reshape_40ReshapeCgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_40/shape*
Tshape0*
_output_shapes

:*
T0
r
Reshape_41/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
Ё

Reshape_41ReshapeDgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_41/shape*
_output_shapes	
:*
Tshape0*
T0
r
Reshape_42/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
 

Reshape_42ReshapeCgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_42/shape*
T0*
Tshape0*
_output_shapes	
:
r
Reshape_43/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
 

Reshape_43ReshapeDgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_43/shape*
Tshape0*
_output_shapes
:*
T0
r
Reshape_44/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0


Reshape_44Reshape@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Reshape_44/shape*
T0*
_output_shapes	
:|*
Tshape0
r
Reshape_45/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0


Reshape_45ReshapeAgradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_45/shape*
T0*
_output_shapes	
:*
Tshape0
r
Reshape_46/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
 

Reshape_46ReshapeBgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_46/shape*
T0*
_output_shapes

:*
Tshape0
r
Reshape_47/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
 

Reshape_47ReshapeCgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_47/shape*
_output_shapes	
:*
Tshape0*
T0
r
Reshape_48/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0


Reshape_48ReshapeBgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_48/shape*
Tshape0*
_output_shapes	
:*
T0
r
Reshape_49/shapeConst^group_deps_1*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:


Reshape_49ReshapeCgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_49/shape*
T0*
_output_shapes
:*
Tshape0
r
Reshape_50/shapeConst^group_deps_1*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
Ё

Reshape_50ReshapeDgradients_1/main/qc_var/dense/MatMul_grad/tuple/control_dependency_1Reshape_50/shape*
T0*
Tshape0*
_output_shapes	
:|
r
Reshape_51/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
Ђ

Reshape_51ReshapeEgradients_1/main/qc_var/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_51/shape*
_output_shapes	
:*
T0*
Tshape0
r
Reshape_52/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Є

Reshape_52ReshapeFgradients_1/main/qc_var/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_52/shape*
T0*
_output_shapes

:*
Tshape0
r
Reshape_53/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
Є

Reshape_53ReshapeGgradients_1/main/qc_var/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_53/shape*
_output_shapes	
:*
Tshape0*
T0
r
Reshape_54/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
Ѓ

Reshape_54ReshapeFgradients_1/main/qc_var/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_54/shape*
T0*
Tshape0*
_output_shapes	
:
r
Reshape_55/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
Ѓ

Reshape_55ReshapeGgradients_1/main/qc_var/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_55/shape*
Tshape0*
_output_shapes
:*
T0
^
concat_2/axisConst^group_deps_1*
value	B : *
_output_shapes
: *
dtype0
џ
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
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53
Reshape_54
Reshape_55concat_2/axis*

Tidx0*
N*
T0*
_output_shapes

:
l
PyFunc_2PyFuncconcat_2*
_output_shapes

:*
token
pyfunc_2*
Tout
2*
Tin
2
Р
Const_11Const^group_deps_1*
dtype0*u
valuelBj"` >                  >                  >                  >                 *
_output_shapes
:
b
split_2/split_dimConst^group_deps_1*
_output_shapes
: *
value	B : *
dtype0

split_2SplitVPyFunc_2Const_11split_2/split_dim*

Tlen0*О
_output_shapesЋ
Ј:|::::::|::::::|::::::|:::::*
T0*
	num_split
p
Reshape_56/shapeConst^group_deps_1*
valueB">      *
_output_shapes
:*
dtype0
h

Reshape_56Reshapesplit_2Reshape_56/shape*
_output_shapes
:	>*
Tshape0*
T0
j
Reshape_57/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_57Reshape	split_2:1Reshape_57/shape*
_output_shapes	
:*
T0*
Tshape0
p
Reshape_58/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_58Reshape	split_2:2Reshape_58/shape*
T0* 
_output_shapes
:
*
Tshape0
j
Reshape_59/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_59Reshape	split_2:3Reshape_59/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_60/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
j

Reshape_60Reshape	split_2:4Reshape_60/shape*
_output_shapes
:	*
Tshape0*
T0
i
Reshape_61/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_61Reshape	split_2:5Reshape_61/shape*
_output_shapes
:*
T0*
Tshape0
p
Reshape_62/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB">      
j

Reshape_62Reshape	split_2:6Reshape_62/shape*
Tshape0*
_output_shapes
:	>*
T0
j
Reshape_63/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_63Reshape	split_2:7Reshape_63/shape*
_output_shapes	
:*
T0*
Tshape0
p
Reshape_64/shapeConst^group_deps_1*
_output_shapes
:*
valueB"      *
dtype0
k

Reshape_64Reshape	split_2:8Reshape_64/shape* 
_output_shapes
:
*
Tshape0*
T0
j
Reshape_65/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_65Reshape	split_2:9Reshape_65/shape*
Tshape0*
T0*
_output_shapes	
:
p
Reshape_66/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_66Reshape
split_2:10Reshape_66/shape*
Tshape0*
T0*
_output_shapes
:	
i
Reshape_67/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_67Reshape
split_2:11Reshape_67/shape*
_output_shapes
:*
T0*
Tshape0
p
Reshape_68/shapeConst^group_deps_1*
valueB">      *
_output_shapes
:*
dtype0
k

Reshape_68Reshape
split_2:12Reshape_68/shape*
Tshape0*
T0*
_output_shapes
:	>
j
Reshape_69/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
g

Reshape_69Reshape
split_2:13Reshape_69/shape*
Tshape0*
_output_shapes	
:*
T0
p
Reshape_70/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
l

Reshape_70Reshape
split_2:14Reshape_70/shape*
T0* 
_output_shapes
:
*
Tshape0
j
Reshape_71/shapeConst^group_deps_1*
dtype0*
valueB:*
_output_shapes
:
g

Reshape_71Reshape
split_2:15Reshape_71/shape*
Tshape0*
T0*
_output_shapes	
:
p
Reshape_72/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_72Reshape
split_2:16Reshape_72/shape*
T0*
_output_shapes
:	*
Tshape0
i
Reshape_73/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
f

Reshape_73Reshape
split_2:17Reshape_73/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_74/shapeConst^group_deps_1*
dtype0*
valueB">      *
_output_shapes
:
k

Reshape_74Reshape
split_2:18Reshape_74/shape*
Tshape0*
T0*
_output_shapes
:	>
j
Reshape_75/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
g

Reshape_75Reshape
split_2:19Reshape_75/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_76/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
l

Reshape_76Reshape
split_2:20Reshape_76/shape* 
_output_shapes
:
*
T0*
Tshape0
j
Reshape_77/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
g

Reshape_77Reshape
split_2:21Reshape_77/shape*
T0*
_output_shapes	
:*
Tshape0
p
Reshape_78/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_78Reshape
split_2:22Reshape_78/shape*
T0*
Tshape0*
_output_shapes
:	
i
Reshape_79/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_79Reshape
split_2:23Reshape_79/shape*
Tshape0*
T0*
_output_shapes
:

beta1_power_1/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
dtype0

beta1_power_1
VariableV2*%
_class
loc:@main/qc/dense/bias*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
Л
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
validate_shape(*
_output_shapes
: *
T0*%
_class
loc:@main/qc/dense/bias*
use_locking(
u
beta1_power_1/readIdentitybeta1_power_1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0

beta2_power_1/initial_valueConst*
valueB
 *wО?*
dtype0*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: 

beta2_power_1
VariableV2*
shape: *
	container *
shared_name *
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
dtype0
Л
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias
u
beta2_power_1/readIdentitybeta2_power_1*
T0*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias
З
<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@main/qr1/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
Ё
2main/qr1/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *(
_class
loc:@main/qr1/dense/kernel

,main/qr1/dense/kernel/Adam/Initializer/zerosFill<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr1/dense/kernel/Adam/Initializer/zeros/Const*
T0*
_output_shapes
:	>*

index_type0*(
_class
loc:@main/qr1/dense/kernel
К
main/qr1/dense/kernel/Adam
VariableV2*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
dtype0*
shared_name *
shape:	>*
	container 
ђ
!main/qr1/dense/kernel/Adam/AssignAssignmain/qr1/dense/kernel/Adam,main/qr1/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
validate_shape(*
T0

main/qr1/dense/kernel/Adam/readIdentitymain/qr1/dense/kernel/Adam*
_output_shapes
:	>*
T0*(
_class
loc:@main/qr1/dense/kernel
Й
>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB">      *(
_class
loc:@main/qr1/dense/kernel*
dtype0
Ѓ
4main/qr1/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *(
_class
loc:@main/qr1/dense/kernel*
dtype0

.main/qr1/dense/kernel/Adam_1/Initializer/zerosFill>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr1/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	>*
T0*(
_class
loc:@main/qr1/dense/kernel*

index_type0
М
main/qr1/dense/kernel/Adam_1
VariableV2*
shape:	>*
shared_name *
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
	container *
dtype0
ј
#main/qr1/dense/kernel/Adam_1/AssignAssignmain/qr1/dense/kernel/Adam_1.main/qr1/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel

!main/qr1/dense/kernel/Adam_1/readIdentitymain/qr1/dense/kernel/Adam_1*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel
Ё
*main/qr1/dense/bias/Adam/Initializer/zerosConst*
valueB*    *&
_class
loc:@main/qr1/dense/bias*
dtype0*
_output_shapes	
:
Ў
main/qr1/dense/bias/Adam
VariableV2*&
_class
loc:@main/qr1/dense/bias*
shape:*
_output_shapes	
:*
dtype0*
	container *
shared_name 
ц
main/qr1/dense/bias/Adam/AssignAssignmain/qr1/dense/bias/Adam*main/qr1/dense/bias/Adam/Initializer/zeros*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0

main/qr1/dense/bias/Adam/readIdentitymain/qr1/dense/bias/Adam*&
_class
loc:@main/qr1/dense/bias*
T0*
_output_shapes	
:
Ѓ
,main/qr1/dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *&
_class
loc:@main/qr1/dense/bias*
dtype0*
_output_shapes	
:
А
main/qr1/dense/bias/Adam_1
VariableV2*&
_class
loc:@main/qr1/dense/bias*
	container *
dtype0*
shared_name *
_output_shapes	
:*
shape:
ь
!main/qr1/dense/bias/Adam_1/AssignAssignmain/qr1/dense/bias/Adam_1,main/qr1/dense/bias/Adam_1/Initializer/zeros*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:

main/qr1/dense/bias/Adam_1/readIdentitymain/qr1/dense/bias/Adam_1*
T0*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias
Л
>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
:*
dtype0
Ѕ
4main/qr1/dense_1/kernel/Adam/Initializer/zeros/ConstConst**
_class 
loc:@main/qr1/dense_1/kernel*
valueB
 *    *
_output_shapes
: *
dtype0

.main/qr1/dense_1/kernel/Adam/Initializer/zerosFill>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr1/dense_1/kernel/Adam/Initializer/zeros/Const*

index_type0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
T0
Р
main/qr1/dense_1/kernel/Adam
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
shape:

ћ
#main/qr1/dense_1/kernel/Adam/AssignAssignmain/qr1/dense_1/kernel/Adam.main/qr1/dense_1/kernel/Adam/Initializer/zeros* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
use_locking(*
validate_shape(
Ђ
!main/qr1/dense_1/kernel/Adam/readIdentitymain/qr1/dense_1/kernel/Adam**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:

Н
@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
:
Ї
6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0

0main/qr1/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*
T0*

index_type0**
_class 
loc:@main/qr1/dense_1/kernel
Т
main/qr1/dense_1/kernel/Adam_1
VariableV2*
shared_name *
	container **
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
dtype0*
shape:


%main/qr1/dense_1/kernel/Adam_1/AssignAssignmain/qr1/dense_1/kernel/Adam_10main/qr1/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel
І
#main/qr1/dense_1/kernel/Adam_1/readIdentitymain/qr1/dense_1/kernel/Adam_1*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel
Ѕ
,main/qr1/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
valueB*    
В
main/qr1/dense_1/bias/Adam
VariableV2*
shared_name *
shape:*
	container *(
_class
loc:@main/qr1/dense_1/bias*
dtype0*
_output_shapes	
:
ю
!main/qr1/dense_1/bias/Adam/AssignAssignmain/qr1/dense_1/bias/Adam,main/qr1/dense_1/bias/Adam/Initializer/zeros*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias

main/qr1/dense_1/bias/Adam/readIdentitymain/qr1/dense_1/bias/Adam*
_output_shapes	
:*
T0*(
_class
loc:@main/qr1/dense_1/bias
Ї
.main/qr1/dense_1/bias/Adam_1/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_1/bias*
dtype0*
valueB*    *
_output_shapes	
:
Д
main/qr1/dense_1/bias/Adam_1
VariableV2*(
_class
loc:@main/qr1/dense_1/bias*
shared_name *
dtype0*
	container *
shape:*
_output_shapes	
:
є
#main/qr1/dense_1/bias/Adam_1/AssignAssignmain/qr1/dense_1/bias/Adam_1.main/qr1/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
T0*
use_locking(*
validate_shape(

!main/qr1/dense_1/bias/Adam_1/readIdentitymain/qr1/dense_1/bias/Adam_1*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
T0
Б
.main/qr1/dense_2/kernel/Adam/Initializer/zerosConst**
_class 
loc:@main/qr1/dense_2/kernel*
dtype0*
valueB	*    *
_output_shapes
:	
О
main/qr1/dense_2/kernel/Adam
VariableV2*
dtype0*
shape:	*
	container **
_class 
loc:@main/qr1/dense_2/kernel*
shared_name *
_output_shapes
:	
њ
#main/qr1/dense_2/kernel/Adam/AssignAssignmain/qr1/dense_2/kernel/Adam.main/qr1/dense_2/kernel/Adam/Initializer/zeros*
_output_shapes
:	*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
T0
Ё
!main/qr1/dense_2/kernel/Adam/readIdentitymain/qr1/dense_2/kernel/Adam*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	
Г
0main/qr1/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel*
valueB	*    *
dtype0
Р
main/qr1/dense_2/kernel/Adam_1
VariableV2*
shared_name **
_class 
loc:@main/qr1/dense_2/kernel*
	container *
dtype0*
_output_shapes
:	*
shape:	

%main/qr1/dense_2/kernel/Adam_1/AssignAssignmain/qr1/dense_2/kernel/Adam_10main/qr1/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
_output_shapes
:	
Ѕ
#main/qr1/dense_2/kernel/Adam_1/readIdentitymain/qr1/dense_2/kernel/Adam_1**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
T0
Ѓ
,main/qr1/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias
А
main/qr1/dense_2/bias/Adam
VariableV2*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
shape:*
shared_name *
	container *
_output_shapes
:
э
!main/qr1/dense_2/bias/Adam/AssignAssignmain/qr1/dense_2/bias/Adam,main/qr1/dense_2/bias/Adam/Initializer/zeros*
validate_shape(*
T0*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(

main/qr1/dense_2/bias/Adam/readIdentitymain/qr1/dense_2/bias/Adam*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
T0
Ѕ
.main/qr1/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:
В
main/qr1/dense_2/bias/Adam_1
VariableV2*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
shared_name *
shape:*
_output_shapes
:*
	container 
ѓ
#main/qr1/dense_2/bias/Adam_1/AssignAssignmain/qr1/dense_2/bias/Adam_1.main/qr1/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(

!main/qr1/dense_2/bias/Adam_1/readIdentitymain/qr1/dense_2/bias/Adam_1*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
T0
З
<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@main/qr2/dense/kernel*
valueB">      *
dtype0*
_output_shapes
:
Ё
2main/qr2/dense/kernel/Adam/Initializer/zeros/ConstConst*(
_class
loc:@main/qr2/dense/kernel*
dtype0*
_output_shapes
: *
valueB
 *    

,main/qr2/dense/kernel/Adam/Initializer/zerosFill<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr2/dense/kernel/Adam/Initializer/zeros/Const*

index_type0*
_output_shapes
:	>*
T0*(
_class
loc:@main/qr2/dense/kernel
К
main/qr2/dense/kernel/Adam
VariableV2*(
_class
loc:@main/qr2/dense/kernel*
shared_name *
_output_shapes
:	>*
dtype0*
	container *
shape:	>
ђ
!main/qr2/dense/kernel/Adam/AssignAssignmain/qr2/dense/kernel/Adam,main/qr2/dense/kernel/Adam/Initializer/zeros*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>

main/qr2/dense/kernel/Adam/readIdentitymain/qr2/dense/kernel/Adam*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0
Й
>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB">      *
dtype0*
_output_shapes
:*(
_class
loc:@main/qr2/dense/kernel
Ѓ
4main/qr2/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0*(
_class
loc:@main/qr2/dense/kernel

.main/qr2/dense/kernel/Adam_1/Initializer/zerosFill>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr2/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	>*

index_type0*(
_class
loc:@main/qr2/dense/kernel
М
main/qr2/dense/kernel/Adam_1
VariableV2*
shared_name *
	container *
shape:	>*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
dtype0
ј
#main/qr2/dense/kernel/Adam_1/AssignAssignmain/qr2/dense/kernel/Adam_1.main/qr2/dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel

!main/qr2/dense/kernel/Adam_1/readIdentitymain/qr2/dense/kernel/Adam_1*
T0*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>
Ё
*main/qr2/dense/bias/Adam/Initializer/zerosConst*&
_class
loc:@main/qr2/dense/bias*
valueB*    *
_output_shapes	
:*
dtype0
Ў
main/qr2/dense/bias/Adam
VariableV2*
shape:*
shared_name *
	container *&
_class
loc:@main/qr2/dense/bias*
dtype0*
_output_shapes	
:
ц
main/qr2/dense/bias/Adam/AssignAssignmain/qr2/dense/bias/Adam*main/qr2/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias

main/qr2/dense/bias/Adam/readIdentitymain/qr2/dense/bias/Adam*
T0*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:
Ѓ
,main/qr2/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*&
_class
loc:@main/qr2/dense/bias*
valueB*    *
_output_shapes	
:
А
main/qr2/dense/bias/Adam_1
VariableV2*
_output_shapes	
:*
	container *
dtype0*
shared_name *
shape:*&
_class
loc:@main/qr2/dense/bias
ь
!main/qr2/dense/bias/Adam_1/AssignAssignmain/qr2/dense/bias/Adam_1,main/qr2/dense/bias/Adam_1/Initializer/zeros*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*&
_class
loc:@main/qr2/dense/bias

main/qr2/dense/bias/Adam_1/readIdentitymain/qr2/dense/bias/Adam_1*&
_class
loc:@main/qr2/dense/bias*
T0*
_output_shapes	
:
Л
>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0**
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
:*
valueB"      
Ѕ
4main/qr2/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: **
_class 
loc:@main/qr2/dense_1/kernel

.main/qr2/dense_1/kernel/Adam/Initializer/zerosFill>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr2/dense_1/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
*

index_type0*
T0**
_class 
loc:@main/qr2/dense_1/kernel
Р
main/qr2/dense_1/kernel/Adam
VariableV2*
	container *
dtype0*
shared_name **
_class 
loc:@main/qr2/dense_1/kernel*
shape:
* 
_output_shapes
:

ћ
#main/qr2/dense_1/kernel/Adam/AssignAssignmain/qr2/dense_1/kernel/Adam.main/qr2/dense_1/kernel/Adam/Initializer/zeros*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(* 
_output_shapes
:

Ђ
!main/qr2/dense_1/kernel/Adam/readIdentitymain/qr2/dense_1/kernel/Adam*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:

Н
@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      **
_class 
loc:@main/qr2/dense_1/kernel*
dtype0
Ї
6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: **
_class 
loc:@main/qr2/dense_1/kernel*
dtype0

0main/qr2/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/Const*

index_type0**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

Т
main/qr2/dense_1/kernel/Adam_1
VariableV2*
dtype0*
	container **
_class 
loc:@main/qr2/dense_1/kernel*
shared_name * 
_output_shapes
:
*
shape:


%main/qr2/dense_1/kernel/Adam_1/AssignAssignmain/qr2/dense_1/kernel/Adam_10main/qr2/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*
T0*
validate_shape(**
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
,main/qr2/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*
dtype0*(
_class
loc:@main/qr2/dense_1/bias*
valueB*    
В
main/qr2/dense_1/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shared_name *(
_class
loc:@main/qr2/dense_1/bias*
shape:
ю
!main/qr2/dense_1/bias/Adam/AssignAssignmain/qr2/dense_1/bias/Adam,main/qr2/dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
use_locking(

main/qr2/dense_1/bias/Adam/readIdentitymain/qr2/dense_1/bias/Adam*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:
Ї
.main/qr2/dense_1/bias/Adam_1/Initializer/zerosConst*(
_class
loc:@main/qr2/dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Д
main/qr2/dense_1/bias/Adam_1
VariableV2*
dtype0*
	container *
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
shared_name *
shape:
є
#main/qr2/dense_1/bias/Adam_1/AssignAssignmain/qr2/dense_1/bias/Adam_1.main/qr2/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*(
_class
loc:@main/qr2/dense_1/bias

!main/qr2/dense_1/bias/Adam_1/readIdentitymain/qr2/dense_1/bias/Adam_1*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:
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
VariableV2*
	container **
_class 
loc:@main/qr2/dense_2/kernel*
shape:	*
dtype0*
_output_shapes
:	*
shared_name 
њ
#main/qr2/dense_2/kernel/Adam/AssignAssignmain/qr2/dense_2/kernel/Adam.main/qr2/dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
T0
Ё
!main/qr2/dense_2/kernel/Adam/readIdentitymain/qr2/dense_2/kernel/Adam*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
T0
Г
0main/qr2/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
dtype0*
valueB	*    
Р
main/qr2/dense_2/kernel/Adam_1
VariableV2*
	container **
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
dtype0*
shared_name *
shape:	

%main/qr2/dense_2/kernel/Adam_1/AssignAssignmain/qr2/dense_2/kernel/Adam_10main/qr2/dense_2/kernel/Adam_1/Initializer/zeros*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
Ѕ
#main/qr2/dense_2/kernel/Adam_1/readIdentitymain/qr2/dense_2/kernel/Adam_1*
_output_shapes
:	*
T0**
_class 
loc:@main/qr2/dense_2/kernel
Ѓ
,main/qr2/dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias
А
main/qr2/dense_2/bias/Adam
VariableV2*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
dtype0*
shape:*
	container *
shared_name 
э
!main/qr2/dense_2/bias/Adam/AssignAssignmain/qr2/dense_2/bias/Adam,main/qr2/dense_2/bias/Adam/Initializer/zeros*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:*
use_locking(

main/qr2/dense_2/bias/Adam/readIdentitymain/qr2/dense_2/bias/Adam*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
Ѕ
.main/qr2/dense_2/bias/Adam_1/Initializer/zerosConst*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
dtype0*
valueB*    
В
main/qr2/dense_2/bias/Adam_1
VariableV2*
shared_name *
dtype0*(
_class
loc:@main/qr2/dense_2/bias*
shape:*
	container *
_output_shapes
:
ѓ
#main/qr2/dense_2/bias/Adam_1/AssignAssignmain/qr2/dense_2/bias/Adam_1.main/qr2/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
T0*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(*
validate_shape(

!main/qr2/dense_2/bias/Adam_1/readIdentitymain/qr2/dense_2/bias/Adam_1*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:
Е
;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:*
dtype0*
valueB">      

1main/qc/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
: *
valueB
 *    

+main/qc/dense/kernel/Adam/Initializer/zerosFill;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/qc/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	>*

index_type0*
T0*'
_class
loc:@main/qc/dense/kernel
И
main/qc/dense/kernel/Adam
VariableV2*
	container *
shape:	>*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
dtype0*
shared_name 
ю
 main/qc/dense/kernel/Adam/AssignAssignmain/qc/dense/kernel/Adam+main/qc/dense/kernel/Adam/Initializer/zeros*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
T0*
use_locking(

main/qc/dense/kernel/Adam/readIdentitymain/qc/dense/kernel/Adam*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
T0
З
=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*'
_class
loc:@main/qc/dense/kernel*
valueB">      *
dtype0
Ё
3main/qc/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel

-main/qc/dense/kernel/Adam_1/Initializer/zerosFill=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/qc/dense/kernel/Adam_1/Initializer/zeros/Const*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*

index_type0*
T0
К
main/qc/dense/kernel/Adam_1
VariableV2*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
	container *
shared_name *
dtype0*
shape:	>
є
"main/qc/dense/kernel/Adam_1/AssignAssignmain/qc/dense/kernel/Adam_1-main/qc/dense/kernel/Adam_1/Initializer/zeros*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>

 main/qc/dense/kernel/Adam_1/readIdentitymain/qc/dense/kernel/Adam_1*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>

)main/qc/dense/bias/Adam/Initializer/zerosConst*
valueB*    *%
_class
loc:@main/qc/dense/bias*
dtype0*
_output_shapes	
:
Ќ
main/qc/dense/bias/Adam
VariableV2*
	container *
_output_shapes	
:*
shape:*%
_class
loc:@main/qc/dense/bias*
shared_name *
dtype0
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
:*
T0*%
_class
loc:@main/qc/dense/bias
Ё
+main/qc/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *%
_class
loc:@main/qc/dense/bias*
dtype0
Ў
main/qc/dense/bias/Adam_1
VariableV2*
shared_name *
shape:*
	container *
dtype0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:
ш
 main/qc/dense/bias/Adam_1/AssignAssignmain/qc/dense/bias/Adam_1+main/qc/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
validate_shape(

main/qc/dense/bias/Adam_1/readIdentitymain/qc/dense/bias/Adam_1*
_output_shapes	
:*
T0*%
_class
loc:@main/qc/dense/bias
Й
=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
:*
valueB"      *
dtype0
Ѓ
3main/qc/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *)
_class
loc:@main/qc/dense_1/kernel

-main/qc/dense_1/kernel/Adam/Initializer/zerosFill=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/qc/dense_1/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
*

index_type0*
T0*)
_class
loc:@main/qc/dense_1/kernel
О
main/qc/dense_1/kernel/Adam
VariableV2* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
shared_name *
shape:
*
dtype0*
	container 
ї
"main/qc/dense_1/kernel/Adam/AssignAssignmain/qc/dense_1/kernel/Adam-main/qc/dense_1/kernel/Adam/Initializer/zeros*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel

 main/qc/dense_1/kernel/Adam/readIdentitymain/qc/dense_1/kernel/Adam*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:

Л
?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*)
_class
loc:@main/qc/dense_1/kernel*
valueB"      *
dtype0
Ѕ
5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@main/qc/dense_1/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 

/main/qc/dense_1/kernel/Adam_1/Initializer/zerosFill?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/Const*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*

index_type0*
T0
Р
main/qc/dense_1/kernel/Adam_1
VariableV2*
shared_name *
shape:
* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
dtype0*
	container 
§
$main/qc/dense_1/kernel/Adam_1/AssignAssignmain/qc/dense_1/kernel/Adam_1/main/qc/dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
T0* 
_output_shapes
:

Ѓ
"main/qc/dense_1/kernel/Adam_1/readIdentitymain/qc/dense_1/kernel/Adam_1* 
_output_shapes
:
*
T0*)
_class
loc:@main/qc/dense_1/kernel
Ѓ
+main/qc/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
dtype0*
valueB*    
А
main/qc/dense_1/bias/Adam
VariableV2*
	container *
dtype0*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
shape:*
shared_name 
ъ
 main/qc/dense_1/bias/Adam/AssignAssignmain/qc/dense_1/bias/Adam+main/qc/dense_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias

main/qc/dense_1/bias/Adam/readIdentitymain/qc/dense_1/bias/Adam*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
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
shape:*'
_class
loc:@main/qc/dense_1/bias*
	container *
shared_name *
dtype0*
_output_shapes	
:
№
"main/qc/dense_1/bias/Adam_1/AssignAssignmain/qc/dense_1/bias/Adam_1-main/qc/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias

 main/qc/dense_1/bias/Adam_1/readIdentitymain/qc/dense_1/bias/Adam_1*'
_class
loc:@main/qc/dense_1/bias*
T0*
_output_shapes	
:
Џ
-main/qc/dense_2/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
valueB	*    
М
main/qc/dense_2/kernel/Adam
VariableV2*)
_class
loc:@main/qc/dense_2/kernel*
shared_name *
	container *
_output_shapes
:	*
shape:	*
dtype0
і
"main/qc/dense_2/kernel/Adam/AssignAssignmain/qc/dense_2/kernel/Adam-main/qc/dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel

 main/qc/dense_2/kernel/Adam/readIdentitymain/qc/dense_2/kernel/Adam*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	
Б
/main/qc/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
dtype0*
valueB	*    
О
main/qc/dense_2/kernel/Adam_1
VariableV2*
	container *
shape:	*
dtype0*
shared_name *)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	
ќ
$main/qc/dense_2/kernel/Adam_1/AssignAssignmain/qc/dense_2/kernel/Adam_1/main/qc/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	
Ђ
"main/qc/dense_2/kernel/Adam_1/readIdentitymain/qc/dense_2/kernel/Adam_1*
_output_shapes
:	*
T0*)
_class
loc:@main/qc/dense_2/kernel
Ё
+main/qc/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
valueB*    *
dtype0
Ў
main/qc/dense_2/bias/Adam
VariableV2*
_output_shapes
:*
	container *
shape:*
dtype0*
shared_name *'
_class
loc:@main/qc/dense_2/bias
щ
 main/qc/dense_2/bias/Adam/AssignAssignmain/qc/dense_2/bias/Adam+main/qc/dense_2/bias/Adam/Initializer/zeros*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0

main/qc/dense_2/bias/Adam/readIdentitymain/qc/dense_2/bias/Adam*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0
Ѓ
-main/qc/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*'
_class
loc:@main/qc/dense_2/bias*
valueB*    *
_output_shapes
:
А
main/qc/dense_2/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@main/qc/dense_2/bias*
dtype0*
_output_shapes
:*
	container *
shape:
я
"main/qc/dense_2/bias/Adam_1/AssignAssignmain/qc/dense_2/bias/Adam_1-main/qc/dense_2/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(

 main/qc/dense_2/bias/Adam_1/readIdentitymain/qc/dense_2/bias/Adam_1*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0
Н
?main/qc_var/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB">      *+
_class!
loc:@main/qc_var/dense/kernel
Ї
5main/qc_var/dense/kernel/Adam/Initializer/zeros/ConstConst*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    

/main/qc_var/dense/kernel/Adam/Initializer/zerosFill?main/qc_var/dense/kernel/Adam/Initializer/zeros/shape_as_tensor5main/qc_var/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	>*

index_type0*+
_class!
loc:@main/qc_var/dense/kernel*
T0
Р
main/qc_var/dense/kernel/Adam
VariableV2*
	container *
shared_name *
shape:	>*
dtype0*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:	>
ў
$main/qc_var/dense/kernel/Adam/AssignAssignmain/qc_var/dense/kernel/Adam/main/qc_var/dense/kernel/Adam/Initializer/zeros*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
_output_shapes
:	>*
use_locking(*
validate_shape(
Є
"main/qc_var/dense/kernel/Adam/readIdentitymain/qc_var/dense/kernel/Adam*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
_output_shapes
:	>
П
Amain/qc_var/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB">      *
_output_shapes
:*+
_class!
loc:@main/qc_var/dense/kernel
Љ
7main/qc_var/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
: 

1main/qc_var/dense/kernel/Adam_1/Initializer/zerosFillAmain/qc_var/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor7main/qc_var/dense/kernel/Adam_1/Initializer/zeros/Const*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
_output_shapes
:	>*

index_type0
Т
main/qc_var/dense/kernel/Adam_1
VariableV2*+
_class!
loc:@main/qc_var/dense/kernel*
	container *
shared_name *
shape:	>*
dtype0*
_output_shapes
:	>

&main/qc_var/dense/kernel/Adam_1/AssignAssignmain/qc_var/dense/kernel/Adam_11main/qc_var/dense/kernel/Adam_1/Initializer/zeros*
T0*+
_class!
loc:@main/qc_var/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	>
Ј
$main/qc_var/dense/kernel/Adam_1/readIdentitymain/qc_var/dense/kernel/Adam_1*
_output_shapes
:	>*
T0*+
_class!
loc:@main/qc_var/dense/kernel
Ї
-main/qc_var/dense/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Д
main/qc_var/dense/bias/Adam
VariableV2*
shared_name *
_output_shapes	
:*
	container *)
_class
loc:@main/qc_var/dense/bias*
shape:*
dtype0
ђ
"main/qc_var/dense/bias/Adam/AssignAssignmain/qc_var/dense/bias/Adam-main/qc_var/dense/bias/Adam/Initializer/zeros*
_output_shapes	
:*)
_class
loc:@main/qc_var/dense/bias*
T0*
validate_shape(*
use_locking(

 main/qc_var/dense/bias/Adam/readIdentitymain/qc_var/dense/bias/Adam*
_output_shapes	
:*)
_class
loc:@main/qc_var/dense/bias*
T0
Љ
/main/qc_var/dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Ж
main/qc_var/dense/bias/Adam_1
VariableV2*
_output_shapes	
:*)
_class
loc:@main/qc_var/dense/bias*
shape:*
shared_name *
	container *
dtype0
ј
$main/qc_var/dense/bias/Adam_1/AssignAssignmain/qc_var/dense/bias/Adam_1/main/qc_var/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*)
_class
loc:@main/qc_var/dense/bias*
T0

"main/qc_var/dense/bias/Adam_1/readIdentitymain/qc_var/dense/bias/Adam_1*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:*
T0
С
Amain/qc_var/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ћ
7main/qc_var/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *-
_class#
!loc:@main/qc_var/dense_1/kernel
Ё
1main/qc_var/dense_1/kernel/Adam/Initializer/zerosFillAmain/qc_var/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor7main/qc_var/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ц
main/qc_var/dense_1/kernel/Adam
VariableV2* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel*
shared_name *
	container *
dtype0*
shape:


&main/qc_var/dense_1/kernel/Adam/AssignAssignmain/qc_var/dense_1/kernel/Adam1main/qc_var/dense_1/kernel/Adam/Initializer/zeros*
use_locking(* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel*
validate_shape(*
T0
Ћ
$main/qc_var/dense_1/kernel/Adam/readIdentitymain/qc_var/dense_1/kernel/Adam*
T0* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel
У
Cmain/qc_var/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main/qc_var/dense_1/kernel*
valueB"      *
_output_shapes
:
­
9main/qc_var/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *-
_class#
!loc:@main/qc_var/dense_1/kernel*
valueB
 *    *
dtype0
Ї
3main/qc_var/dense_1/kernel/Adam_1/Initializer/zerosFillCmain/qc_var/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor9main/qc_var/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:

Ш
!main/qc_var/dense_1/kernel/Adam_1
VariableV2*
shared_name *
	container *-
_class#
!loc:@main/qc_var/dense_1/kernel*
dtype0*
shape:
* 
_output_shapes
:


(main/qc_var/dense_1/kernel/Adam_1/AssignAssign!main/qc_var/dense_1/kernel/Adam_13main/qc_var/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0*
validate_shape(*
use_locking(
Џ
&main/qc_var/dense_1/kernel/Adam_1/readIdentity!main/qc_var/dense_1/kernel/Adam_1* 
_output_shapes
:
*
T0*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ћ
/main/qc_var/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
valueB*    
И
main/qc_var/dense_1/bias/Adam
VariableV2*
	container *
shape:*
shared_name *
dtype0*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias
њ
$main/qc_var/dense_1/bias/Adam/AssignAssignmain/qc_var/dense_1/bias/Adam/main/qc_var/dense_1/bias/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias
 
"main/qc_var/dense_1/bias/Adam/readIdentitymain/qc_var/dense_1/bias/Adam*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
T0
­
1main/qc_var/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:
К
main/qc_var/dense_1/bias/Adam_1
VariableV2*
shape:*
shared_name *
	container *+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
dtype0

&main/qc_var/dense_1/bias/Adam_1/AssignAssignmain/qc_var/dense_1/bias/Adam_11main/qc_var/dense_1/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
use_locking(
Є
$main/qc_var/dense_1/bias/Adam_1/readIdentitymain/qc_var/dense_1/bias/Adam_1*
_output_shapes	
:*
T0*+
_class!
loc:@main/qc_var/dense_1/bias
З
1main/qc_var/dense_2/kernel/Adam/Initializer/zerosConst*
valueB	*    *-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
:	*
dtype0
Ф
main/qc_var/dense_2/kernel/Adam
VariableV2*
	container *
_output_shapes
:	*
shared_name *
shape:	*
dtype0*-
_class#
!loc:@main/qc_var/dense_2/kernel

&main/qc_var/dense_2/kernel/Adam/AssignAssignmain/qc_var/dense_2/kernel/Adam1main/qc_var/dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0
Њ
$main/qc_var/dense_2/kernel/Adam/readIdentitymain/qc_var/dense_2/kernel/Adam*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0
Й
3main/qc_var/dense_2/kernel/Adam_1/Initializer/zerosConst*-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
:	*
valueB	*    *
dtype0
Ц
!main/qc_var/dense_2/kernel/Adam_1
VariableV2*-
_class#
!loc:@main/qc_var/dense_2/kernel*
	container *
shared_name *
_output_shapes
:	*
shape:	*
dtype0

(main/qc_var/dense_2/kernel/Adam_1/AssignAssign!main/qc_var/dense_2/kernel/Adam_13main/qc_var/dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel
Ў
&main/qc_var/dense_2/kernel/Adam_1/readIdentity!main/qc_var/dense_2/kernel/Adam_1*-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
:	*
T0
Љ
/main/qc_var/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *+
_class!
loc:@main/qc_var/dense_2/bias
Ж
main/qc_var/dense_2/bias/Adam
VariableV2*
shape:*
dtype0*+
_class!
loc:@main/qc_var/dense_2/bias*
	container *
_output_shapes
:*
shared_name 
љ
$main/qc_var/dense_2/bias/Adam/AssignAssignmain/qc_var/dense_2/bias/Adam/main/qc_var/dense_2/bias/Adam/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*+
_class!
loc:@main/qc_var/dense_2/bias*
validate_shape(

"main/qc_var/dense_2/bias/Adam/readIdentitymain/qc_var/dense_2/bias/Adam*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
_output_shapes
:
Ћ
1main/qc_var/dense_2/bias/Adam_1/Initializer/zerosConst*+
_class!
loc:@main/qc_var/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
И
main/qc_var/dense_2/bias/Adam_1
VariableV2*
shared_name *
	container *+
_class!
loc:@main/qc_var/dense_2/bias*
shape:*
dtype0*
_output_shapes
:
џ
&main/qc_var/dense_2/bias/Adam_1/AssignAssignmain/qc_var/dense_2/bias/Adam_11main/qc_var/dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
T0
Ѓ
$main/qc_var/dense_2/bias/Adam_1/readIdentitymain/qc_var/dense_2/bias/Adam_1*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
T0
i
train_q/learning_rateConst^group_deps_1*
dtype0*
valueB
 *o:*
_output_shapes
: 
a
train_q/beta1Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *fff?
a
train_q/beta2Const^group_deps_1*
valueB
 *wО?*
dtype0*
_output_shapes
: 
c
train_q/epsilonConst^group_deps_1*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2

.train_q/update_main/qr1/dense/kernel/ApplyAdam	ApplyAdammain/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_56*
_output_shapes
:	>*
use_locking( *
use_nesterov( *
T0*(
_class
loc:@main/qr1/dense/kernel
ѓ
,train_q/update_main/qr1/dense/bias/ApplyAdam	ApplyAdammain/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_57*
T0*
use_locking( *&
_class
loc:@main/qr1/dense/bias*
use_nesterov( *
_output_shapes	
:

0train_q/update_main/qr1/dense_1/kernel/ApplyAdam	ApplyAdammain/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_58*
use_locking( **
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:
*
use_nesterov( 
§
.train_q/update_main/qr1/dense_1/bias/ApplyAdam	ApplyAdammain/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_59*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( 

0train_q/update_main/qr1/dense_2/kernel/ApplyAdam	ApplyAdammain/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_60*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking( *
_output_shapes
:	*
use_nesterov( 
ќ
.train_q/update_main/qr1/dense_2/bias/ApplyAdam	ApplyAdammain/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_61*
use_locking( *
_output_shapes
:*
use_nesterov( *(
_class
loc:@main/qr1/dense_2/bias*
T0

.train_q/update_main/qr2/dense/kernel/ApplyAdam	ApplyAdammain/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_62*
use_locking( *
_output_shapes
:	>*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_nesterov( 
ѓ
,train_q/update_main/qr2/dense/bias/ApplyAdam	ApplyAdammain/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_63*
use_locking( *
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
use_nesterov( *
T0

0train_q/update_main/qr2/dense_1/kernel/ApplyAdam	ApplyAdammain/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_64*
use_nesterov( *
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking( 
§
.train_q/update_main/qr2/dense_1/bias/ApplyAdam	ApplyAdammain/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_65*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
use_nesterov( *
T0*
use_locking( 

0train_q/update_main/qr2/dense_2/kernel/ApplyAdam	ApplyAdammain/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_66*
_output_shapes
:	*
use_locking( *
T0**
_class 
loc:@main/qr2/dense_2/kernel*
use_nesterov( 
ќ
.train_q/update_main/qr2/dense_2/bias/ApplyAdam	ApplyAdammain/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_67*
use_nesterov( *(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
use_locking( *
T0
ќ
-train_q/update_main/qc/dense/kernel/ApplyAdam	ApplyAdammain/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_68*
use_locking( *
_output_shapes
:	>*
T0*'
_class
loc:@main/qc/dense/kernel*
use_nesterov( 
ю
+train_q/update_main/qc/dense/bias/ApplyAdam	ApplyAdammain/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_69*
use_locking( *
use_nesterov( *
T0*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias

/train_q/update_main/qc/dense_1/kernel/ApplyAdam	ApplyAdammain/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_70*
use_locking( * 
_output_shapes
:
*
use_nesterov( *)
_class
loc:@main/qc/dense_1/kernel*
T0
ј
-train_q/update_main/qc/dense_1/bias/ApplyAdam	ApplyAdammain/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_71*
_output_shapes	
:*
use_locking( *'
_class
loc:@main/qc/dense_1/bias*
T0*
use_nesterov( 

/train_q/update_main/qc/dense_2/kernel/ApplyAdam	ApplyAdammain/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_72*
use_locking( *
use_nesterov( *)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	
ї
-train_q/update_main/qc/dense_2/bias/ApplyAdam	ApplyAdammain/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_73*'
_class
loc:@main/qc/dense_2/bias*
use_locking( *
use_nesterov( *
_output_shapes
:*
T0

1train_q/update_main/qc_var/dense/kernel/ApplyAdam	ApplyAdammain/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_74*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
use_nesterov( *
T0*
use_locking( 

/train_q/update_main/qc_var/dense/bias/ApplyAdam	ApplyAdammain/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_75*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:*
use_locking( *
T0*
use_nesterov( 

3train_q/update_main/qc_var/dense_1/kernel/ApplyAdam	ApplyAdammain/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_76*-
_class#
!loc:@main/qc_var/dense_1/kernel*
use_locking( *
use_nesterov( *
T0* 
_output_shapes
:


1train_q/update_main/qc_var/dense_1/bias/ApplyAdam	ApplyAdammain/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_77*
use_locking( *
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
T0*
use_nesterov( 

3train_q/update_main/qc_var/dense_2/kernel/ApplyAdam	ApplyAdammain/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_78*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking( *
use_nesterov( *
_output_shapes
:	*
T0

1train_q/update_main/qc_var/dense_2/bias/ApplyAdam	ApplyAdammain/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_79*
T0*
use_locking( *
_output_shapes
:*
use_nesterov( *+
_class!
loc:@main/qc_var/dense_2/bias
Љ

train_q/mulMulbeta1_power_1/readtrain_q/beta1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam0^train_q/update_main/qc_var/dense/bias/ApplyAdam2^train_q/update_main/qc_var/dense/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_1/bias/ApplyAdam4^train_q/update_main/qc_var/dense_1/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_2/bias/ApplyAdam4^train_q/update_main/qc_var/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0*%
_class
loc:@main/qc/dense/bias
Ѕ
train_q/AssignAssignbeta1_power_1train_q/mul*
T0*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking( *
validate_shape(
Ћ

train_q/mul_1Mulbeta2_power_1/readtrain_q/beta2,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam0^train_q/update_main/qc_var/dense/bias/ApplyAdam2^train_q/update_main/qc_var/dense/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_1/bias/ApplyAdam4^train_q/update_main/qc_var/dense_1/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_2/bias/ApplyAdam4^train_q/update_main/qc_var/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: 
Љ
train_q/Assign_1Assignbeta2_power_1train_q/mul_1*
validate_shape(*
_output_shapes
: *
T0*%
_class
loc:@main/qc/dense/bias*
use_locking( 
ю	
train_qNoOp^group_deps_1^train_q/Assign^train_q/Assign_1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam0^train_q/update_main/qc_var/dense/bias/ApplyAdam2^train_q/update_main/qc_var/dense/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_1/bias/ApplyAdam4^train_q/update_main/qc_var/dense_1/kernel/ApplyAdam2^train_q/update_main/qc_var/dense_2/bias/ApplyAdam4^train_q/update_main/qc_var/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam
|
Reshape_80/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
w

Reshape_80Reshapemain/qr1/dense/kernel/readReshape_80/shape*
_output_shapes	
:|*
Tshape0*
T0
|
Reshape_81/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_81Reshapemain/qr1/dense/bias/readReshape_81/shape*
Tshape0*
_output_shapes	
:*
T0
|
Reshape_82/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z

Reshape_82Reshapemain/qr1/dense_1/kernel/readReshape_82/shape*
_output_shapes

:*
Tshape0*
T0
|
Reshape_83/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
w

Reshape_83Reshapemain/qr1/dense_1/bias/readReshape_83/shape*
_output_shapes	
:*
Tshape0*
T0
|
Reshape_84/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
y

Reshape_84Reshapemain/qr1/dense_2/kernel/readReshape_84/shape*
T0*
Tshape0*
_output_shapes	
:
|
Reshape_85/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_85Reshapemain/qr1/dense_2/bias/readReshape_85/shape*
Tshape0*
_output_shapes
:*
T0
|
Reshape_86/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
w

Reshape_86Reshapemain/qr2/dense/kernel/readReshape_86/shape*
_output_shapes	
:|*
Tshape0*
T0
|
Reshape_87/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_87Reshapemain/qr2/dense/bias/readReshape_87/shape*
Tshape0*
T0*
_output_shapes	
:
|
Reshape_88/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z

Reshape_88Reshapemain/qr2/dense_1/kernel/readReshape_88/shape*
T0*
_output_shapes

:*
Tshape0
|
Reshape_89/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
w

Reshape_89Reshapemain/qr2/dense_1/bias/readReshape_89/shape*
Tshape0*
_output_shapes	
:*
T0
|
Reshape_90/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
y

Reshape_90Reshapemain/qr2/dense_2/kernel/readReshape_90/shape*
T0*
Tshape0*
_output_shapes	
:
|
Reshape_91/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_91Reshapemain/qr2/dense_2/bias/readReshape_91/shape*
Tshape0*
T0*
_output_shapes
:
|
Reshape_92/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
v

Reshape_92Reshapemain/qc/dense/kernel/readReshape_92/shape*
T0*
_output_shapes	
:|*
Tshape0
|
Reshape_93/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
t

Reshape_93Reshapemain/qc/dense/bias/readReshape_93/shape*
Tshape0*
_output_shapes	
:*
T0
|
Reshape_94/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y

Reshape_94Reshapemain/qc/dense_1/kernel/readReshape_94/shape*
T0*
Tshape0*
_output_shapes

:
|
Reshape_95/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_95Reshapemain/qc/dense_1/bias/readReshape_95/shape*
Tshape0*
T0*
_output_shapes	
:
|
Reshape_96/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
x

Reshape_96Reshapemain/qc/dense_2/kernel/readReshape_96/shape*
Tshape0*
T0*
_output_shapes	
:
|
Reshape_97/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_97Reshapemain/qc/dense_2/bias/readReshape_97/shape*
T0*
_output_shapes
:*
Tshape0
|
Reshape_98/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z

Reshape_98Reshapemain/qc_var/dense/kernel/readReshape_98/shape*
T0*
Tshape0*
_output_shapes	
:|
|
Reshape_99/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x

Reshape_99Reshapemain/qc_var/dense/bias/readReshape_99/shape*
Tshape0*
_output_shapes	
:*
T0
}
Reshape_100/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_100Reshapemain/qc_var/dense_1/kernel/readReshape_100/shape*
_output_shapes

:*
T0*
Tshape0
}
Reshape_101/shapeConst^group_deps_1^train_q*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
|
Reshape_101Reshapemain/qc_var/dense_1/bias/readReshape_101/shape*
Tshape0*
T0*
_output_shapes	
:
}
Reshape_102/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
~
Reshape_102Reshapemain/qc_var/dense_2/kernel/readReshape_102/shape*
T0*
Tshape0*
_output_shapes	
:
}
Reshape_103/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{
Reshape_103Reshapemain/qc_var/dense_2/bias/readReshape_103/shape*
Tshape0*
_output_shapes
:*
T0
h
concat_3/axisConst^group_deps_1^train_q*
value	B : *
_output_shapes
: *
dtype0

concat_3ConcatV2
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85
Reshape_86
Reshape_87
Reshape_88
Reshape_89
Reshape_90
Reshape_91
Reshape_92
Reshape_93
Reshape_94
Reshape_95
Reshape_96
Reshape_97
Reshape_98
Reshape_99Reshape_100Reshape_101Reshape_102Reshape_103concat_3/axis*

Tidx0*
_output_shapes

:*
N*
T0
h
PyFunc_3PyFuncconcat_3*
_output_shapes
:*
token
pyfunc_3*
Tout
2*
Tin
2
Ъ
Const_12Const^group_deps_1^train_q*
dtype0*
_output_shapes
:*u
valuelBj"` >                  >                  >                  >                 
l
split_3/split_dimConst^group_deps_1^train_q*
_output_shapes
: *
value	B : *
dtype0
д
split_3SplitVPyFunc_3Const_12split_3/split_dim*
T0*t
_output_shapesb
`::::::::::::::::::::::::*
	num_split*

Tlen0
{
Reshape_104/shapeConst^group_deps_1^train_q*
valueB">      *
_output_shapes
:*
dtype0
j
Reshape_104Reshapesplit_3Reshape_104/shape*
T0*
Tshape0*
_output_shapes
:	>
u
Reshape_105/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_105Reshape	split_3:1Reshape_105/shape*
Tshape0*
T0*
_output_shapes	
:
{
Reshape_106/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_106Reshape	split_3:2Reshape_106/shape*
Tshape0*
T0* 
_output_shapes
:

u
Reshape_107/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_107Reshape	split_3:3Reshape_107/shape*
T0*
Tshape0*
_output_shapes	
:
{
Reshape_108/shapeConst^group_deps_1^train_q*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_108Reshape	split_3:4Reshape_108/shape*
Tshape0*
T0*
_output_shapes
:	
t
Reshape_109/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_109Reshape	split_3:5Reshape_109/shape*
_output_shapes
:*
Tshape0*
T0
{
Reshape_110/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB">      *
dtype0
l
Reshape_110Reshape	split_3:6Reshape_110/shape*
T0*
_output_shapes
:	>*
Tshape0
u
Reshape_111/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_111Reshape	split_3:7Reshape_111/shape*
Tshape0*
_output_shapes	
:*
T0
{
Reshape_112/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_112Reshape	split_3:8Reshape_112/shape*
T0* 
_output_shapes
:
*
Tshape0
u
Reshape_113/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_113Reshape	split_3:9Reshape_113/shape*
_output_shapes	
:*
T0*
Tshape0
{
Reshape_114/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_114Reshape
split_3:10Reshape_114/shape*
_output_shapes
:	*
T0*
Tshape0
t
Reshape_115/shapeConst^group_deps_1^train_q*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_115Reshape
split_3:11Reshape_115/shape*
Tshape0*
T0*
_output_shapes
:
{
Reshape_116/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_116Reshape
split_3:12Reshape_116/shape*
Tshape0*
_output_shapes
:	>*
T0
u
Reshape_117/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_117Reshape
split_3:13Reshape_117/shape*
T0*
_output_shapes	
:*
Tshape0
{
Reshape_118/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_118Reshape
split_3:14Reshape_118/shape*
Tshape0*
T0* 
_output_shapes
:

u
Reshape_119/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_119Reshape
split_3:15Reshape_119/shape*
_output_shapes	
:*
T0*
Tshape0
{
Reshape_120/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_120Reshape
split_3:16Reshape_120/shape*
Tshape0*
T0*
_output_shapes
:	
t
Reshape_121/shapeConst^group_deps_1^train_q*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_121Reshape
split_3:17Reshape_121/shape*
Tshape0*
_output_shapes
:*
T0
{
Reshape_122/shapeConst^group_deps_1^train_q*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_122Reshape
split_3:18Reshape_122/shape*
Tshape0*
T0*
_output_shapes
:	>
u
Reshape_123/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_123Reshape
split_3:19Reshape_123/shape*
T0*
_output_shapes	
:*
Tshape0
{
Reshape_124/shapeConst^group_deps_1^train_q*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_124Reshape
split_3:20Reshape_124/shape*
T0*
Tshape0* 
_output_shapes
:

u
Reshape_125/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_125Reshape
split_3:21Reshape_125/shape*
_output_shapes	
:*
T0*
Tshape0
{
Reshape_126/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_126Reshape
split_3:22Reshape_126/shape*
T0*
_output_shapes
:	*
Tshape0
t
Reshape_127/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_127Reshape
split_3:23Reshape_127/shape*
T0*
_output_shapes
:*
Tshape0
Г
Assign_8Assignmain/qr1/dense/kernelReshape_104*
_output_shapes
:	>*
use_locking(*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel
Ћ
Assign_9Assignmain/qr1/dense/biasReshape_105*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
T0
Й
	Assign_10Assignmain/qr1/dense_1/kernelReshape_106**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:

А
	Assign_11Assignmain/qr1/dense_1/biasReshape_107*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
И
	Assign_12Assignmain/qr1/dense_2/kernelReshape_108**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
T0*
use_locking(
Џ
	Assign_13Assignmain/qr1/dense_2/biasReshape_109*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
Д
	Assign_14Assignmain/qr2/dense/kernelReshape_110*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>*
use_locking(*
validate_shape(
Ќ
	Assign_15Assignmain/qr2/dense/biasReshape_111*
T0*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
Й
	Assign_16Assignmain/qr2/dense_1/kernelReshape_112*
T0*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:

А
	Assign_17Assignmain/qr2/dense_1/biasReshape_113*
validate_shape(*
_output_shapes	
:*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(
И
	Assign_18Assignmain/qr2/dense_2/kernelReshape_114*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_2/kernel
Џ
	Assign_19Assignmain/qr2/dense_2/biasReshape_115*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
В
	Assign_20Assignmain/qc/dense/kernelReshape_116*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>
Њ
	Assign_21Assignmain/qc/dense/biasReshape_117*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
T0
З
	Assign_22Assignmain/qc/dense_1/kernelReshape_118*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0*)
_class
loc:@main/qc/dense_1/kernel
Ў
	Assign_23Assignmain/qc/dense_1/biasReshape_119*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/qc/dense_1/bias
Ж
	Assign_24Assignmain/qc/dense_2/kernelReshape_120*
validate_shape(*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0
­
	Assign_25Assignmain/qc/dense_2/biasReshape_121*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0*
use_locking(*
validate_shape(
К
	Assign_26Assignmain/qc_var/dense/kernelReshape_122*
use_locking(*
_output_shapes
:	>*
T0*
validate_shape(*+
_class!
loc:@main/qc_var/dense/kernel
В
	Assign_27Assignmain/qc_var/dense/biasReshape_123*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*)
_class
loc:@main/qc_var/dense/bias
П
	Assign_28Assignmain/qc_var/dense_1/kernelReshape_124*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ж
	Assign_29Assignmain/qc_var/dense_1/biasReshape_125*+
_class!
loc:@main/qc_var/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
О
	Assign_30Assignmain/qc_var/dense_2/kernelReshape_126*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel
Е
	Assign_31Assignmain/qc_var/dense_2/biasReshape_127*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
Ы
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
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31	^Assign_8	^Assign_9^group_deps_1^train_q
<
group_deps_3NoOp^group_deps_1^group_deps_2^train_q
c
gradients_2/ShapeConst^group_deps_3*
valueB *
dtype0*
_output_shapes
: 
i
gradients_2/grad_ys_0Const^group_deps_3*
_output_shapes
: *
valueB
 *  ?*
dtype0
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
_output_shapes
: *
T0*

index_type0
]
gradients_2/mul_20_grad/MulMulgradients_2/Fillsub_12*
_output_shapes
: *
T0
^
gradients_2/mul_20_grad/Mul_1Mulgradients_2/FillNeg_1*
_output_shapes
: *
T0
}
(gradients_2/mul_20_grad/tuple/group_depsNoOp^gradients_2/mul_20_grad/Mul^gradients_2/mul_20_grad/Mul_1^group_deps_3
е
0gradients_2/mul_20_grad/tuple/control_dependencyIdentitygradients_2/mul_20_grad/Mul)^gradients_2/mul_20_grad/tuple/group_deps*.
_class$
" loc:@gradients_2/mul_20_grad/Mul*
_output_shapes
: *
T0
л
2gradients_2/mul_20_grad/tuple/control_dependency_1Identitygradients_2/mul_20_grad/Mul_1)^gradients_2/mul_20_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_2/mul_20_grad/Mul_1*
_output_shapes
: 
t
gradients_2/Neg_1_grad/NegNeg0gradients_2/mul_20_grad/tuple/control_dependency*
_output_shapes
: *
T0

&gradients_2/Softplus_grad/SoftplusGradSoftplusGradgradients_2/Neg_1_grad/Negentreg/soft_alpha/read*
T0*
_output_shapes
: 
s
Reshape_128/shapeConst^group_deps_3*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_128Reshape&gradients_2/Softplus_grad/SoftplusGradReshape_128/shape*
_output_shapes
:*
Tshape0*
T0
d
concat_4/concat_dimConst^group_deps_3*
_output_shapes
: *
dtype0*
value	B : 
F
concat_4IdentityReshape_128*
_output_shapes
:*
T0
j
PyFunc_4PyFuncconcat_4*
Tout
2*
Tin
2*
token
pyfunc_4*
_output_shapes
:
a
Const_13Const^group_deps_3*
_output_shapes
:*
valueB:*
dtype0
b
split_4/split_dimConst^group_deps_3*
dtype0*
value	B : *
_output_shapes
: 
z
split_4SplitVPyFunc_4Const_13split_4/split_dim*
_output_shapes
:*

Tlen0*
T0*
	num_split
c
Reshape_129/shapeConst^group_deps_3*
valueB *
dtype0*
_output_shapes
: 
a
Reshape_129Reshapesplit_4Reshape_129/shape*
T0*
Tshape0*
_output_shapes
: 

beta1_power_2/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*$
_class
loc:@entreg/soft_alpha

beta1_power_2
VariableV2*
shared_name *
shape: *
	container *
dtype0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
К
beta1_power_2/AssignAssignbeta1_power_2beta1_power_2/initial_value*$
_class
loc:@entreg/soft_alpha*
use_locking(*
T0*
validate_shape(*
_output_shapes
: 
t
beta1_power_2/readIdentitybeta1_power_2*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 

beta2_power_2/initial_valueConst*
dtype0*
valueB
 *wО?*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha

beta2_power_2
VariableV2*
shape: *
dtype0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
	container *
shared_name 
К
beta2_power_2/AssignAssignbeta2_power_2beta2_power_2/initial_value*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: *
T0*
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
 *    *
_output_shapes
: *
dtype0*$
_class
loc:@entreg/soft_alpha
 
entreg/soft_alpha/Adam
VariableV2*
shared_name *
	container *
_output_shapes
: *
dtype0*
shape: *$
_class
loc:@entreg/soft_alpha
й
entreg/soft_alpha/Adam/AssignAssignentreg/soft_alpha/Adam(entreg/soft_alpha/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0

entreg/soft_alpha/Adam/readIdentityentreg/soft_alpha/Adam*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 

*entreg/soft_alpha/Adam_1/Initializer/zerosConst*
dtype0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
valueB
 *    
Ђ
entreg/soft_alpha/Adam_1
VariableV2*
_output_shapes
: *
dtype0*
	container *
shape: *$
_class
loc:@entreg/soft_alpha*
shared_name 
п
entreg/soft_alpha/Adam_1/AssignAssignentreg/soft_alpha/Adam_1*entreg/soft_alpha/Adam_1/Initializer/zeros*$
_class
loc:@entreg/soft_alpha*
T0*
use_locking(*
validate_shape(*
_output_shapes
: 

entreg/soft_alpha/Adam_1/readIdentityentreg/soft_alpha/Adam_1*
T0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
f
Adam/learning_rateConst^group_deps_3*
valueB
 *o:*
_output_shapes
: *
dtype0
^

Adam/beta1Const^group_deps_3*
valueB
 *fff?*
dtype0*
_output_shapes
: 
^

Adam/beta2Const^group_deps_3*
valueB
 *wО?*
_output_shapes
: *
dtype0
`
Adam/epsilonConst^group_deps_3*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2
ж
'Adam/update_entreg/soft_alpha/ApplyAdam	ApplyAdamentreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1beta1_power_2/readbeta2_power_2/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonReshape_129*
use_locking( *$
_class
loc:@entreg/soft_alpha*
use_nesterov( *
T0*
_output_shapes
: 
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
: *$
_class
loc:@entreg/soft_alpha*
use_locking( *
validate_shape(*
T0
Ђ

Adam/mul_1Mulbeta2_power_2/read
Adam/beta2(^Adam/update_entreg/soft_alpha/ApplyAdam*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0
Ђ
Adam/Assign_1Assignbeta2_power_2
Adam/mul_1*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking( *
validate_shape(
c
AdamNoOp^Adam/Assign^Adam/Assign_1(^Adam/update_entreg/soft_alpha/ApplyAdam^group_deps_3
z
Reshape_130/shapeConst^Adam^group_deps_3*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
t
Reshape_130Reshapeentreg/soft_alpha/readReshape_130/shape*
_output_shapes
:*
T0*
Tshape0
k
concat_5/concat_dimConst^Adam^group_deps_3*
_output_shapes
: *
dtype0*
value	B : 
F
concat_5IdentityReshape_130*
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
Const_14Const^Adam^group_deps_3*
dtype0*
_output_shapes
:*
valueB:
i
split_5/split_dimConst^Adam^group_deps_3*
dtype0*
value	B : *
_output_shapes
: 
x
split_5SplitVPyFunc_5Const_14split_5/split_dim*
	num_split*
_output_shapes
:*
T0*

Tlen0
j
Reshape_131/shapeConst^Adam^group_deps_3*
_output_shapes
: *
dtype0*
valueB 
a
Reshape_131Reshapesplit_5Reshape_131/shape*
_output_shapes
: *
T0*
Tshape0
Ѓ
	Assign_32Assignentreg/soft_alphaReshape_131*$
_class
loc:@entreg/soft_alpha*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
6
group_deps_4NoOp^Adam
^Assign_32^group_deps_3
9
group_deps_5NoOp^Adam^group_deps_3^group_deps_4
f
gradients_3/ShapeShapemul_22^group_deps_5*
T0*
out_type0*
_output_shapes
:
i
gradients_3/grad_ys_0Const^group_deps_5*
dtype0*
_output_shapes
: *
valueB
 *  ?

gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0
o
gradients_3/mul_22_grad/ShapeConst^group_deps_5*
_output_shapes
: *
dtype0*
valueB 
t
gradients_3/mul_22_grad/Shape_1Shapesub_14^group_deps_5*
T0*
out_type0*
_output_shapes
:
У
-gradients_3/mul_22_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/mul_22_grad/Shapegradients_3/mul_22_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
j
gradients_3/mul_22_grad/MulMulgradients_3/Fillsub_14*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_3/mul_22_grad/SumSumgradients_3/mul_22_grad/Mul-gradients_3/mul_22_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

gradients_3/mul_22_grad/ReshapeReshapegradients_3/mul_22_grad/Sumgradients_3/mul_22_grad/Shape*
T0*
_output_shapes
: *
Tshape0
p
gradients_3/mul_22_grad/Mul_1Mul
Softplus_1gradients_3/Fill*#
_output_shapes
:џџџџџџџџџ*
T0
Д
gradients_3/mul_22_grad/Sum_1Sumgradients_3/mul_22_grad/Mul_1/gradients_3/mul_22_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Ј
!gradients_3/mul_22_grad/Reshape_1Reshapegradients_3/mul_22_grad/Sum_1gradients_3/mul_22_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:џџџџџџџџџ

(gradients_3/mul_22_grad/tuple/group_depsNoOp ^gradients_3/mul_22_grad/Reshape"^gradients_3/mul_22_grad/Reshape_1^group_deps_5
н
0gradients_3/mul_22_grad/tuple/control_dependencyIdentitygradients_3/mul_22_grad/Reshape)^gradients_3/mul_22_grad/tuple/group_deps*2
_class(
&$loc:@gradients_3/mul_22_grad/Reshape*
T0*
_output_shapes
: 
№
2gradients_3/mul_22_grad/tuple/control_dependency_1Identity!gradients_3/mul_22_grad/Reshape_1)^gradients_3/mul_22_grad/tuple/group_deps*4
_class*
(&loc:@gradients_3/mul_22_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
(gradients_3/Softplus_1_grad/SoftplusGradSoftplusGrad0gradients_3/mul_22_grad/tuple/control_dependencycostpen/soft_beta/read*
_output_shapes
: *
T0
s
Reshape_132/shapeConst^group_deps_5*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_132Reshape(gradients_3/Softplus_1_grad/SoftplusGradReshape_132/shape*
Tshape0*
T0*
_output_shapes
:
d
concat_6/concat_dimConst^group_deps_5*
value	B : *
_output_shapes
: *
dtype0
F
concat_6IdentityReshape_132*
_output_shapes
:*
T0
j
PyFunc_6PyFuncconcat_6*
token
pyfunc_6*
Tout
2*
_output_shapes
:*
Tin
2
a
Const_15Const^group_deps_5*
dtype0*
valueB:*
_output_shapes
:
b
split_6/split_dimConst^group_deps_5*
_output_shapes
: *
value	B : *
dtype0
z
split_6SplitVPyFunc_6Const_15split_6/split_dim*
T0*
_output_shapes
:*
	num_split*

Tlen0
c
Reshape_133/shapeConst^group_deps_5*
dtype0*
_output_shapes
: *
valueB 
a
Reshape_133Reshapesplit_6Reshape_133/shape*
Tshape0*
_output_shapes
: *
T0

beta1_power_3/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
dtype0*$
_class
loc:@costpen/soft_beta

beta1_power_3
VariableV2*$
_class
loc:@costpen/soft_beta*
dtype0*
_output_shapes
: *
shared_name *
shape: *
	container 
К
beta1_power_3/AssignAssignbeta1_power_3beta1_power_3/initial_value*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta
t
beta1_power_3/readIdentitybeta1_power_3*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0

beta2_power_3/initial_valueConst*
dtype0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
valueB
 *wО?

beta2_power_3
VariableV2*
shared_name *$
_class
loc:@costpen/soft_beta*
	container *
shape: *
_output_shapes
: *
dtype0
К
beta2_power_3/AssignAssignbeta2_power_3beta2_power_3/initial_value*$
_class
loc:@costpen/soft_beta*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
t
beta2_power_3/readIdentitybeta2_power_3*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta

(costpen/soft_beta/Adam/Initializer/zerosConst*
valueB
 *    *
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
dtype0
 
costpen/soft_beta/Adam
VariableV2*
	container *
dtype0*$
_class
loc:@costpen/soft_beta*
shape: *
_output_shapes
: *
shared_name 
й
costpen/soft_beta/Adam/AssignAssigncostpen/soft_beta/Adam(costpen/soft_beta/Adam/Initializer/zeros*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: *
validate_shape(*
use_locking(

costpen/soft_beta/Adam/readIdentitycostpen/soft_beta/Adam*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 

*costpen/soft_beta/Adam_1/Initializer/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
Ђ
costpen/soft_beta/Adam_1
VariableV2*$
_class
loc:@costpen/soft_beta*
shared_name *
_output_shapes
: *
shape: *
dtype0*
	container 
п
costpen/soft_beta/Adam_1/AssignAssigncostpen/soft_beta/Adam_1*costpen/soft_beta/Adam_1/Initializer/zeros*
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta*
use_locking(*
_output_shapes
: 

costpen/soft_beta/Adam_1/readIdentitycostpen/soft_beta/Adam_1*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 
h
Adam_1/learning_rateConst^group_deps_5*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL=
`
Adam_1/beta1Const^group_deps_5*
_output_shapes
: *
dtype0*
valueB
 *fff?
`
Adam_1/beta2Const^group_deps_5*
valueB
 *wО?*
_output_shapes
: *
dtype0
b
Adam_1/epsilonConst^group_deps_5*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
р
)Adam_1/update_costpen/soft_beta/ApplyAdam	ApplyAdamcostpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1beta1_power_3/readbeta2_power_3/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_133*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking( *
T0*
use_nesterov( 
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
use_locking( *
_output_shapes
: *
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0
Ј
Adam_1/mul_1Mulbeta2_power_3/readAdam_1/beta2*^Adam_1/update_costpen/soft_beta/ApplyAdam*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0
І
Adam_1/Assign_1Assignbeta2_power_3Adam_1/mul_1*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*$
_class
loc:@costpen/soft_beta
k
Adam_1NoOp^Adam_1/Assign^Adam_1/Assign_1*^Adam_1/update_costpen/soft_beta/ApplyAdam^group_deps_5
|
Reshape_134/shapeConst^Adam_1^group_deps_5*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
t
Reshape_134Reshapecostpen/soft_beta/readReshape_134/shape*
_output_shapes
:*
Tshape0*
T0
m
concat_7/concat_dimConst^Adam_1^group_deps_5*
_output_shapes
: *
value	B : *
dtype0
F
concat_7IdentityReshape_134*
T0*
_output_shapes
:
h
PyFunc_7PyFuncconcat_7*
Tout
2*
Tin
2*
_output_shapes
:*
token
pyfunc_7
j
Const_16Const^Adam_1^group_deps_5*
valueB:*
_output_shapes
:*
dtype0
k
split_7/split_dimConst^Adam_1^group_deps_5*
_output_shapes
: *
value	B : *
dtype0
x
split_7SplitVPyFunc_7Const_16split_7/split_dim*
_output_shapes
:*
	num_split*

Tlen0*
T0
l
Reshape_135/shapeConst^Adam_1^group_deps_5*
valueB *
_output_shapes
: *
dtype0
a
Reshape_135Reshapesplit_7Reshape_135/shape*
T0*
_output_shapes
: *
Tshape0
Ѓ
	Assign_33Assigncostpen/soft_betaReshape_135*$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
8
group_deps_6NoOp^Adam_1
^Assign_33^group_deps_5
;
group_deps_7NoOp^Adam_1^group_deps_5^group_deps_6
M
mul_23/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
_
mul_23Mulmul_23/xtarget/qr1/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_24/xConst*
valueB
 *
зЃ;*
dtype0*
_output_shapes
: 
]
mul_24Mulmul_24/xmain/qr1/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_11Addmul_23mul_24*
T0*
_output_shapes
:	>
Г
	Assign_34Assigntarget/qr1/dense/kerneladd_11*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel*
use_locking(*
T0*
validate_shape(
M
mul_25/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
Y
mul_25Mulmul_25/xtarget/qr1/dense/bias/read*
T0*
_output_shapes	
:
M
mul_26/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
W
mul_26Mulmul_26/xmain/qr1/dense/bias/read*
T0*
_output_shapes	
:
C
add_12Addmul_25mul_26*
T0*
_output_shapes	
:
Ћ
	Assign_35Assigntarget/qr1/dense/biasadd_12*
_output_shapes	
:*(
_class
loc:@target/qr1/dense/bias*
validate_shape(*
use_locking(*
T0
M
mul_27/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
b
mul_27Mulmul_27/xtarget/qr1/dense_1/kernel/read* 
_output_shapes
:
*
T0
M
mul_28/xConst*
valueB
 *
зЃ;*
dtype0*
_output_shapes
: 
`
mul_28Mulmul_28/xmain/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:

H
add_13Addmul_27mul_28* 
_output_shapes
:
*
T0
И
	Assign_36Assigntarget/qr1/dense_1/kerneladd_13*
use_locking(*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*
validate_shape(* 
_output_shapes
:

M
mul_29/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
[
mul_29Mulmul_29/xtarget/qr1/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_30/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
Y
mul_30Mulmul_30/xmain/qr1/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_14Addmul_29mul_30*
T0*
_output_shapes	
:
Џ
	Assign_37Assigntarget/qr1/dense_1/biasadd_14**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
M
mul_31/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
a
mul_31Mulmul_31/xtarget/qr1/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_32/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
_
mul_32Mulmul_32/xmain/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	
G
add_15Addmul_31mul_32*
_output_shapes
:	*
T0
З
	Assign_38Assigntarget/qr1/dense_2/kerneladd_15*
validate_shape(*
T0*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(
M
mul_33/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
Z
mul_33Mulmul_33/xtarget/qr1/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_34/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ;
X
mul_34Mulmul_34/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_16Addmul_33mul_34*
_output_shapes
:*
T0
Ў
	Assign_39Assigntarget/qr1/dense_2/biasadd_16*
validate_shape(**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
M
mul_35/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
_
mul_35Mulmul_35/xtarget/qr2/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_36/xConst*
_output_shapes
: *
dtype0*
valueB
 *
зЃ;
]
mul_36Mulmul_36/xmain/qr2/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_17Addmul_35mul_36*
_output_shapes
:	>*
T0
Г
	Assign_40Assigntarget/qr2/dense/kerneladd_17*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(**
_class 
loc:@target/qr2/dense/kernel
M
mul_37/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
Y
mul_37Mulmul_37/xtarget/qr2/dense/bias/read*
_output_shapes	
:*
T0
M
mul_38/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
W
mul_38Mulmul_38/xmain/qr2/dense/bias/read*
T0*
_output_shapes	
:
C
add_18Addmul_37mul_38*
_output_shapes	
:*
T0
Ћ
	Assign_41Assigntarget/qr2/dense/biasadd_18*
_output_shapes	
:*(
_class
loc:@target/qr2/dense/bias*
T0*
use_locking(*
validate_shape(
M
mul_39/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
b
mul_39Mulmul_39/xtarget/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_40/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
`
mul_40Mulmul_40/xmain/qr2/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_19Addmul_39mul_40* 
_output_shapes
:
*
T0
И
	Assign_42Assigntarget/qr2/dense_1/kerneladd_19*
T0*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
M
mul_41/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
[
mul_41Mulmul_41/xtarget/qr2/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_42/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
Y
mul_42Mulmul_42/xmain/qr2/dense_1/bias/read*
T0*
_output_shapes	
:
C
add_20Addmul_41mul_42*
_output_shapes	
:*
T0
Џ
	Assign_43Assigntarget/qr2/dense_1/biasadd_20*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(**
_class 
loc:@target/qr2/dense_1/bias
M
mul_43/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
a
mul_43Mulmul_43/xtarget/qr2/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_44/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
_
mul_44Mulmul_44/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_21Addmul_43mul_44*
_output_shapes
:	*
T0
З
	Assign_44Assigntarget/qr2/dense_2/kerneladd_21*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel*
validate_shape(*
T0*
use_locking(
M
mul_45/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
Z
mul_45Mulmul_45/xtarget/qr2/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_46/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
X
mul_46Mulmul_46/xmain/qr2/dense_2/bias/read*
_output_shapes
:*
T0
B
add_22Addmul_45mul_46*
T0*
_output_shapes
:
Ў
	Assign_45Assigntarget/qr2/dense_2/biasadd_22*
use_locking(*
T0*
_output_shapes
:*
validate_shape(**
_class 
loc:@target/qr2/dense_2/bias
M
mul_47/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
^
mul_47Mulmul_47/xtarget/qc/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_48/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
\
mul_48Mulmul_48/xmain/qc/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_23Addmul_47mul_48*
T0*
_output_shapes
:	>
Б
	Assign_46Assigntarget/qc/dense/kerneladd_23*
T0*
use_locking(*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>
M
mul_49/xConst*
valueB
 *RИ~?*
_output_shapes
: *
dtype0
X
mul_49Mulmul_49/xtarget/qc/dense/bias/read*
_output_shapes	
:*
T0
M
mul_50/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
V
mul_50Mulmul_50/xmain/qc/dense/bias/read*
T0*
_output_shapes	
:
C
add_24Addmul_49mul_50*
T0*
_output_shapes	
:
Љ
	Assign_47Assigntarget/qc/dense/biasadd_24*
T0*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
M
mul_51/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
a
mul_51Mulmul_51/xtarget/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
M
mul_52/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
_
mul_52Mulmul_52/xmain/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_25Addmul_51mul_52*
T0* 
_output_shapes
:

Ж
	Assign_48Assigntarget/qc/dense_1/kerneladd_25*+
_class!
loc:@target/qc/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(
M
mul_53/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
Z
mul_53Mulmul_53/xtarget/qc/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_54/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
X
mul_54Mulmul_54/xmain/qc/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_26Addmul_53mul_54*
_output_shapes	
:*
T0
­
	Assign_49Assigntarget/qc/dense_1/biasadd_26*)
_class
loc:@target/qc/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
M
mul_55/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
`
mul_55Mulmul_55/xtarget/qc/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_56/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
^
mul_56Mulmul_56/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	
G
add_27Addmul_55mul_56*
_output_shapes
:	*
T0
Е
	Assign_50Assigntarget/qc/dense_2/kerneladd_27*
validate_shape(*
_output_shapes
:	*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(
M
mul_57/xConst*
_output_shapes
: *
dtype0*
valueB
 *RИ~?
Y
mul_57Mulmul_57/xtarget/qc/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_58/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
W
mul_58Mulmul_58/xmain/qc/dense_2/bias/read*
T0*
_output_shapes
:
B
add_28Addmul_57mul_58*
_output_shapes
:*
T0
Ќ
	Assign_51Assigntarget/qc/dense_2/biasadd_28*
validate_shape(*
T0*
use_locking(*
_output_shapes
:*)
_class
loc:@target/qc/dense_2/bias
M
mul_59/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
b
mul_59Mulmul_59/xtarget/qc_var/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_60/xConst*
dtype0*
valueB
 *
зЃ;*
_output_shapes
: 
`
mul_60Mulmul_60/xmain/qc_var/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_29Addmul_59mul_60*
T0*
_output_shapes
:	>
Й
	Assign_52Assigntarget/qc_var/dense/kerneladd_29*
_output_shapes
:	>*-
_class#
!loc:@target/qc_var/dense/kernel*
use_locking(*
validate_shape(*
T0
M
mul_61/xConst*
_output_shapes
: *
valueB
 *RИ~?*
dtype0
\
mul_61Mulmul_61/xtarget/qc_var/dense/bias/read*
_output_shapes	
:*
T0
M
mul_62/xConst*
valueB
 *
зЃ;*
_output_shapes
: *
dtype0
Z
mul_62Mulmul_62/xmain/qc_var/dense/bias/read*
_output_shapes	
:*
T0
C
add_30Addmul_61mul_62*
T0*
_output_shapes	
:
Б
	Assign_53Assigntarget/qc_var/dense/biasadd_30*
_output_shapes	
:*
use_locking(*+
_class!
loc:@target/qc_var/dense/bias*
T0*
validate_shape(
M
mul_63/xConst*
dtype0*
_output_shapes
: *
valueB
 *RИ~?
e
mul_63Mulmul_63/x!target/qc_var/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_64/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
c
mul_64Mulmul_64/xmain/qc_var/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_31Addmul_63mul_64* 
_output_shapes
:
*
T0
О
	Assign_54Assigntarget/qc_var/dense_1/kerneladd_31*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:

M
mul_65/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
^
mul_65Mulmul_65/xtarget/qc_var/dense_1/bias/read*
T0*
_output_shapes	
:
M
mul_66/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
\
mul_66Mulmul_66/xmain/qc_var/dense_1/bias/read*
T0*
_output_shapes	
:
C
add_32Addmul_65mul_66*
_output_shapes	
:*
T0
Е
	Assign_55Assigntarget/qc_var/dense_1/biasadd_32*
T0*
use_locking(*-
_class#
!loc:@target/qc_var/dense_1/bias*
_output_shapes	
:*
validate_shape(
M
mul_67/xConst*
valueB
 *RИ~?*
dtype0*
_output_shapes
: 
d
mul_67Mulmul_67/x!target/qc_var/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_68/xConst*
dtype0*
_output_shapes
: *
valueB
 *
зЃ;
b
mul_68Mulmul_68/xmain/qc_var/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_33Addmul_67mul_68*
T0*
_output_shapes
:	
Н
	Assign_56Assigntarget/qc_var/dense_2/kerneladd_33*
_output_shapes
:	*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
validate_shape(*
T0*
use_locking(
M
mul_69/xConst*
dtype0*
valueB
 *RИ~?*
_output_shapes
: 
]
mul_69Mulmul_69/xtarget/qc_var/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_70/xConst*
_output_shapes
: *
valueB
 *
зЃ;*
dtype0
[
mul_70Mulmul_70/xmain/qc_var/dense_2/bias/read*
_output_shapes
:*
T0
B
add_34Addmul_69mul_70*
T0*
_output_shapes
:
Д
	Assign_57Assigntarget/qc_var/dense_2/biasadd_34*
use_locking(*-
_class#
!loc:@target/qc_var/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
Д
group_deps_8NoOp
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
^Assign_45
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
^Assign_57
A
group_deps_9NoOp^group_deps_1^group_deps_3^group_deps_8
3
group_deps_10NoOp^group_deps_5^group_deps_9
4
group_deps_11NoOp^group_deps_10^group_deps_7
M
mul_71/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_
mul_71Mulmul_71/xtarget/qr1/dense/kernel/read*
_output_shapes
:	>*
T0
M
mul_72/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
]
mul_72Mulmul_72/xmain/qr1/dense/kernel/read*
T0*
_output_shapes
:	>
G
add_35Addmul_71mul_72*
_output_shapes
:	>*
T0
Г
	Assign_58Assigntarget/qr1/dense/kerneladd_35*
T0*
use_locking(**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
_output_shapes
:	>
M
mul_73/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
mul_73Mulmul_73/xtarget/qr1/dense/bias/read*
T0*
_output_shapes	
:
M
mul_74/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
W
mul_74Mulmul_74/xmain/qr1/dense/bias/read*
T0*
_output_shapes	
:
C
add_36Addmul_73mul_74*
_output_shapes	
:*
T0
Ћ
	Assign_59Assigntarget/qr1/dense/biasadd_36*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
M
mul_75/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
b
mul_75Mulmul_75/xtarget/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:

M
mul_76/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
`
mul_76Mulmul_76/xmain/qr1/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_37Addmul_75mul_76* 
_output_shapes
:
*
T0
И
	Assign_60Assigntarget/qr1/dense_1/kerneladd_37* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(*,
_class"
 loc:@target/qr1/dense_1/kernel
M
mul_77/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
[
mul_77Mulmul_77/xtarget/qr1/dense_1/bias/read*
_output_shapes	
:*
T0
M
mul_78/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
mul_78Mulmul_78/xmain/qr1/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_38Addmul_77mul_78*
_output_shapes	
:*
T0
Џ
	Assign_61Assigntarget/qr1/dense_1/biasadd_38*
use_locking(**
_class 
loc:@target/qr1/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
M
mul_79/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
mul_79Mulmul_79/xtarget/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	
M
mul_80/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
mul_80Mulmul_80/xmain/qr1/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_39Addmul_79mul_80*
_output_shapes
:	*
T0
З
	Assign_62Assigntarget/qr1/dense_2/kerneladd_39*
validate_shape(*
T0*
_output_shapes
:	*
use_locking(*,
_class"
 loc:@target/qr1/dense_2/kernel
M
mul_81/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
Z
mul_81Mulmul_81/xtarget/qr1/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_82/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
X
mul_82Mulmul_82/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_40Addmul_81mul_82*
T0*
_output_shapes
:
Ў
	Assign_63Assigntarget/qr1/dense_2/biasadd_40*
validate_shape(*
use_locking(*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
T0
M
mul_83/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
mul_83Mulmul_83/xtarget/qr2/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_84/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
]
mul_84Mulmul_84/xmain/qr2/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_41Addmul_83mul_84*
T0*
_output_shapes
:	>
Г
	Assign_64Assigntarget/qr2/dense/kerneladd_41*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(*
_output_shapes
:	>*
T0
M
mul_85/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
Y
mul_85Mulmul_85/xtarget/qr2/dense/bias/read*
T0*
_output_shapes	
:
M
mul_86/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
W
mul_86Mulmul_86/xmain/qr2/dense/bias/read*
_output_shapes	
:*
T0
C
add_42Addmul_85mul_86*
_output_shapes	
:*
T0
Ћ
	Assign_65Assigntarget/qr2/dense/biasadd_42*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
M
mul_87/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
mul_87Mulmul_87/xtarget/qr2/dense_1/kernel/read* 
_output_shapes
:
*
T0
M
mul_88/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
`
mul_88Mulmul_88/xmain/qr2/dense_1/kernel/read* 
_output_shapes
:
*
T0
H
add_43Addmul_87mul_88*
T0* 
_output_shapes
:

И
	Assign_66Assigntarget/qr2/dense_1/kerneladd_43*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:

M
mul_89/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
[
mul_89Mulmul_89/xtarget/qr2/dense_1/bias/read*
_output_shapes	
:*
T0
M
mul_90/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
mul_90Mulmul_90/xmain/qr2/dense_1/bias/read*
_output_shapes	
:*
T0
C
add_44Addmul_89mul_90*
T0*
_output_shapes	
:
Џ
	Assign_67Assigntarget/qr2/dense_1/biasadd_44**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
M
mul_91/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
a
mul_91Mulmul_91/xtarget/qr2/dense_2/kernel/read*
_output_shapes
:	*
T0
M
mul_92/xConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
_
mul_92Mulmul_92/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	*
T0
G
add_45Addmul_91mul_92*
T0*
_output_shapes
:	
З
	Assign_68Assigntarget/qr2/dense_2/kerneladd_45*
use_locking(*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0*
validate_shape(
M
mul_93/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
mul_93Mulmul_93/xtarget/qr2/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_94/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
X
mul_94Mulmul_94/xmain/qr2/dense_2/bias/read*
T0*
_output_shapes
:
B
add_46Addmul_93mul_94*
_output_shapes
:*
T0
Ў
	Assign_69Assigntarget/qr2/dense_2/biasadd_46*
validate_shape(*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
T0*
use_locking(
M
mul_95/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
^
mul_95Mulmul_95/xtarget/qc/dense/kernel/read*
T0*
_output_shapes
:	>
M
mul_96/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
\
mul_96Mulmul_96/xmain/qc/dense/kernel/read*
_output_shapes
:	>*
T0
G
add_47Addmul_95mul_96*
_output_shapes
:	>*
T0
Б
	Assign_70Assigntarget/qc/dense/kerneladd_47*
validate_shape(*
use_locking(*
_output_shapes
:	>*)
_class
loc:@target/qc/dense/kernel*
T0
M
mul_97/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
X
mul_97Mulmul_97/xtarget/qc/dense/bias/read*
T0*
_output_shapes	
:
M
mul_98/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
V
mul_98Mulmul_98/xmain/qc/dense/bias/read*
_output_shapes	
:*
T0
C
add_48Addmul_97mul_98*
T0*
_output_shapes	
:
Љ
	Assign_71Assigntarget/qc/dense/biasadd_48*
use_locking(*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
T0*
_output_shapes	
:
M
mul_99/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
a
mul_99Mulmul_99/xtarget/qc/dense_1/kernel/read* 
_output_shapes
:
*
T0
N
	mul_100/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
a
mul_100Mul	mul_100/xmain/qc/dense_1/kernel/read*
T0* 
_output_shapes
:

I
add_49Addmul_99mul_100* 
_output_shapes
:
*
T0
Ж
	Assign_72Assigntarget/qc/dense_1/kerneladd_49*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel
N
	mul_101/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
\
mul_101Mul	mul_101/xtarget/qc/dense_1/bias/read*
T0*
_output_shapes	
:
N
	mul_102/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Z
mul_102Mul	mul_102/xmain/qc/dense_1/bias/read*
_output_shapes	
:*
T0
E
add_50Addmul_101mul_102*
_output_shapes	
:*
T0
­
	Assign_73Assigntarget/qc/dense_1/biasadd_50*)
_class
loc:@target/qc/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
N
	mul_103/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
b
mul_103Mul	mul_103/xtarget/qc/dense_2/kernel/read*
_output_shapes
:	*
T0
N
	mul_104/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
`
mul_104Mul	mul_104/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	
I
add_51Addmul_103mul_104*
T0*
_output_shapes
:	
Е
	Assign_74Assigntarget/qc/dense_2/kerneladd_51*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
N
	mul_105/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
[
mul_105Mul	mul_105/xtarget/qc/dense_2/bias/read*
_output_shapes
:*
T0
N
	mul_106/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Y
mul_106Mul	mul_106/xmain/qc/dense_2/bias/read*
_output_shapes
:*
T0
D
add_52Addmul_105mul_106*
_output_shapes
:*
T0
Ќ
	Assign_75Assigntarget/qc/dense_2/biasadd_52*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*)
_class
loc:@target/qc/dense_2/bias
N
	mul_107/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
mul_107Mul	mul_107/xtarget/qc_var/dense/kernel/read*
T0*
_output_shapes
:	>
N
	mul_108/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
b
mul_108Mul	mul_108/xmain/qc_var/dense/kernel/read*
T0*
_output_shapes
:	>
I
add_53Addmul_107mul_108*
T0*
_output_shapes
:	>
Й
	Assign_76Assigntarget/qc_var/dense/kerneladd_53*
T0*
use_locking(*
_output_shapes
:	>*
validate_shape(*-
_class#
!loc:@target/qc_var/dense/kernel
N
	mul_109/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
mul_109Mul	mul_109/xtarget/qc_var/dense/bias/read*
_output_shapes	
:*
T0
N
	mul_110/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
\
mul_110Mul	mul_110/xmain/qc_var/dense/bias/read*
T0*
_output_shapes	
:
E
add_54Addmul_109mul_110*
_output_shapes	
:*
T0
Б
	Assign_77Assigntarget/qc_var/dense/biasadd_54*+
_class!
loc:@target/qc_var/dense/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
N
	mul_111/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
g
mul_111Mul	mul_111/x!target/qc_var/dense_1/kernel/read*
T0* 
_output_shapes
:

N
	mul_112/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
e
mul_112Mul	mul_112/xmain/qc_var/dense_1/kernel/read*
T0* 
_output_shapes
:

J
add_55Addmul_111mul_112*
T0* 
_output_shapes
:

О
	Assign_78Assigntarget/qc_var/dense_1/kerneladd_55* 
_output_shapes
:
*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel
N
	mul_113/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
`
mul_113Mul	mul_113/xtarget/qc_var/dense_1/bias/read*
_output_shapes	
:*
T0
N
	mul_114/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
^
mul_114Mul	mul_114/xmain/qc_var/dense_1/bias/read*
_output_shapes	
:*
T0
E
add_56Addmul_113mul_114*
_output_shapes	
:*
T0
Е
	Assign_79Assigntarget/qc_var/dense_1/biasadd_56*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@target/qc_var/dense_1/bias
N
	mul_115/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
f
mul_115Mul	mul_115/x!target/qc_var/dense_2/kernel/read*
_output_shapes
:	*
T0
N
	mul_116/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
mul_116Mul	mul_116/xmain/qc_var/dense_2/kernel/read*
_output_shapes
:	*
T0
I
add_57Addmul_115mul_116*
T0*
_output_shapes
:	
Н
	Assign_80Assigntarget/qc_var/dense_2/kerneladd_57*
validate_shape(*
_output_shapes
:	*
T0*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
use_locking(
N
	mul_117/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
mul_117Mul	mul_117/xtarget/qc_var/dense_2/bias/read*
T0*
_output_shapes
:
N
	mul_118/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
]
mul_118Mul	mul_118/xmain/qc_var/dense_2/bias/read*
T0*
_output_shapes
:
D
add_58Addmul_117mul_118*
T0*
_output_shapes
:
Д
	Assign_81Assigntarget/qc_var/dense_2/biasadd_58*
T0*-
_class#
!loc:@target/qc_var/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
Е
group_deps_12NoOp
^Assign_58
^Assign_59
^Assign_60
^Assign_61
^Assign_62
^Assign_63
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
^Assign_81
і#
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta1_power_2/Assign^beta1_power_3/Assign^beta2_power/Assign^beta2_power_1/Assign^beta2_power_2/Assign^beta2_power_3/Assign^costpen/soft_beta/Adam/Assign ^costpen/soft_beta/Adam_1/Assign^costpen/soft_beta/Assign^entreg/soft_alpha/Adam/Assign ^entreg/soft_alpha/Adam_1/Assign^entreg/soft_alpha/Assign^main/pi/dense/bias/Adam/Assign!^main/pi/dense/bias/Adam_1/Assign^main/pi/dense/bias/Assign!^main/pi/dense/kernel/Adam/Assign#^main/pi/dense/kernel/Adam_1/Assign^main/pi/dense/kernel/Assign!^main/pi/dense_1/bias/Adam/Assign#^main/pi/dense_1/bias/Adam_1/Assign^main/pi/dense_1/bias/Assign#^main/pi/dense_1/kernel/Adam/Assign%^main/pi/dense_1/kernel/Adam_1/Assign^main/pi/dense_1/kernel/Assign!^main/pi/dense_2/bias/Adam/Assign#^main/pi/dense_2/bias/Adam_1/Assign^main/pi/dense_2/bias/Assign#^main/pi/dense_2/kernel/Adam/Assign%^main/pi/dense_2/kernel/Adam_1/Assign^main/pi/dense_2/kernel/Assign!^main/pi/dense_3/bias/Adam/Assign#^main/pi/dense_3/bias/Adam_1/Assign^main/pi/dense_3/bias/Assign#^main/pi/dense_3/kernel/Adam/Assign%^main/pi/dense_3/kernel/Adam_1/Assign^main/pi/dense_3/kernel/Assign^main/qc/dense/bias/Adam/Assign!^main/qc/dense/bias/Adam_1/Assign^main/qc/dense/bias/Assign!^main/qc/dense/kernel/Adam/Assign#^main/qc/dense/kernel/Adam_1/Assign^main/qc/dense/kernel/Assign!^main/qc/dense_1/bias/Adam/Assign#^main/qc/dense_1/bias/Adam_1/Assign^main/qc/dense_1/bias/Assign#^main/qc/dense_1/kernel/Adam/Assign%^main/qc/dense_1/kernel/Adam_1/Assign^main/qc/dense_1/kernel/Assign!^main/qc/dense_2/bias/Adam/Assign#^main/qc/dense_2/bias/Adam_1/Assign^main/qc/dense_2/bias/Assign#^main/qc/dense_2/kernel/Adam/Assign%^main/qc/dense_2/kernel/Adam_1/Assign^main/qc/dense_2/kernel/Assign#^main/qc_var/dense/bias/Adam/Assign%^main/qc_var/dense/bias/Adam_1/Assign^main/qc_var/dense/bias/Assign%^main/qc_var/dense/kernel/Adam/Assign'^main/qc_var/dense/kernel/Adam_1/Assign ^main/qc_var/dense/kernel/Assign%^main/qc_var/dense_1/bias/Adam/Assign'^main/qc_var/dense_1/bias/Adam_1/Assign ^main/qc_var/dense_1/bias/Assign'^main/qc_var/dense_1/kernel/Adam/Assign)^main/qc_var/dense_1/kernel/Adam_1/Assign"^main/qc_var/dense_1/kernel/Assign%^main/qc_var/dense_2/bias/Adam/Assign'^main/qc_var/dense_2/bias/Adam_1/Assign ^main/qc_var/dense_2/bias/Assign'^main/qc_var/dense_2/kernel/Adam/Assign)^main/qc_var/dense_2/kernel/Adam_1/Assign"^main/qc_var/dense_2/kernel/Assign ^main/qr1/dense/bias/Adam/Assign"^main/qr1/dense/bias/Adam_1/Assign^main/qr1/dense/bias/Assign"^main/qr1/dense/kernel/Adam/Assign$^main/qr1/dense/kernel/Adam_1/Assign^main/qr1/dense/kernel/Assign"^main/qr1/dense_1/bias/Adam/Assign$^main/qr1/dense_1/bias/Adam_1/Assign^main/qr1/dense_1/bias/Assign$^main/qr1/dense_1/kernel/Adam/Assign&^main/qr1/dense_1/kernel/Adam_1/Assign^main/qr1/dense_1/kernel/Assign"^main/qr1/dense_2/bias/Adam/Assign$^main/qr1/dense_2/bias/Adam_1/Assign^main/qr1/dense_2/bias/Assign$^main/qr1/dense_2/kernel/Adam/Assign&^main/qr1/dense_2/kernel/Adam_1/Assign^main/qr1/dense_2/kernel/Assign ^main/qr2/dense/bias/Adam/Assign"^main/qr2/dense/bias/Adam_1/Assign^main/qr2/dense/bias/Assign"^main/qr2/dense/kernel/Adam/Assign$^main/qr2/dense/kernel/Adam_1/Assign^main/qr2/dense/kernel/Assign"^main/qr2/dense_1/bias/Adam/Assign$^main/qr2/dense_1/bias/Adam_1/Assign^main/qr2/dense_1/bias/Assign$^main/qr2/dense_1/kernel/Adam/Assign&^main/qr2/dense_1/kernel/Adam_1/Assign^main/qr2/dense_1/kernel/Assign"^main/qr2/dense_2/bias/Adam/Assign$^main/qr2/dense_2/bias/Adam_1/Assign^main/qr2/dense_2/bias/Assign$^main/qr2/dense_2/kernel/Adam/Assign&^main/qr2/dense_2/kernel/Adam_1/Assign^main/qr2/dense_2/kernel/Assign^target/qc/dense/bias/Assign^target/qc/dense/kernel/Assign^target/qc/dense_1/bias/Assign ^target/qc/dense_1/kernel/Assign^target/qc/dense_2/bias/Assign ^target/qc/dense_2/kernel/Assign ^target/qc_var/dense/bias/Assign"^target/qc_var/dense/kernel/Assign"^target/qc_var/dense_1/bias/Assign$^target/qc_var/dense_1/kernel/Assign"^target/qc_var/dense_2/bias/Assign$^target/qc_var/dense_2/kernel/Assign^target/qr1/dense/bias/Assign^target/qr1/dense/kernel/Assign^target/qr1/dense_1/bias/Assign!^target/qr1/dense_1/kernel/Assign^target/qr1/dense_2/bias/Assign!^target/qr1/dense_2/kernel/Assign^target/qr2/dense/bias/Assign^target/qr2/dense/kernel/Assign^target/qr2/dense_1/bias/Assign!^target/qr2/dense_1/kernel/Assign^target/qr2/dense_2/bias/Assign!^target/qr2/dense_2/kernel/Assign
d
Reshape_136/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
x
Reshape_136Reshapemain/pi/dense/kernel/readReshape_136/shape*
T0*
_output_shapes	
:x*
Tshape0
d
Reshape_137/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
v
Reshape_137Reshapemain/pi/dense/bias/readReshape_137/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_138/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
{
Reshape_138Reshapemain/pi/dense_1/kernel/readReshape_138/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_139/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_139Reshapemain/pi/dense_1/bias/readReshape_139/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_140/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
z
Reshape_140Reshapemain/pi/dense_2/kernel/readReshape_140/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_141/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
w
Reshape_141Reshapemain/pi/dense_2/bias/readReshape_141/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_142/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
z
Reshape_142Reshapemain/pi/dense_3/kernel/readReshape_142/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_143/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
w
Reshape_143Reshapemain/pi/dense_3/bias/readReshape_143/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_144/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_144Reshapemain/qr1/dense/kernel/readReshape_144/shape*
T0*
Tshape0*
_output_shapes	
:|
d
Reshape_145/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
w
Reshape_145Reshapemain/qr1/dense/bias/readReshape_145/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_146/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_146Reshapemain/qr1/dense_1/kernel/readReshape_146/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_147/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_147Reshapemain/qr1/dense_1/bias/readReshape_147/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_148/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
{
Reshape_148Reshapemain/qr1/dense_2/kernel/readReshape_148/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_149/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
x
Reshape_149Reshapemain/qr1/dense_2/bias/readReshape_149/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_150/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
y
Reshape_150Reshapemain/qr2/dense/kernel/readReshape_150/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_151/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
w
Reshape_151Reshapemain/qr2/dense/bias/readReshape_151/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_152/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_152Reshapemain/qr2/dense_1/kernel/readReshape_152/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_153/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
y
Reshape_153Reshapemain/qr2/dense_1/bias/readReshape_153/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_154/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
{
Reshape_154Reshapemain/qr2/dense_2/kernel/readReshape_154/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_155/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
x
Reshape_155Reshapemain/qr2/dense_2/bias/readReshape_155/shape*
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
x
Reshape_156Reshapemain/qc/dense/kernel/readReshape_156/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_157/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
v
Reshape_157Reshapemain/qc/dense/bias/readReshape_157/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_158/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
{
Reshape_158Reshapemain/qc/dense_1/kernel/readReshape_158/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_159/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
x
Reshape_159Reshapemain/qc/dense_1/bias/readReshape_159/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_160/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z
Reshape_160Reshapemain/qc/dense_2/kernel/readReshape_160/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_161/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
w
Reshape_161Reshapemain/qc/dense_2/bias/readReshape_161/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_162/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_162Reshapemain/qc_var/dense/kernel/readReshape_162/shape*
_output_shapes	
:|*
Tshape0*
T0
d
Reshape_163/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z
Reshape_163Reshapemain/qc_var/dense/bias/readReshape_163/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_164/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_164Reshapemain/qc_var/dense_1/kernel/readReshape_164/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_165/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
|
Reshape_165Reshapemain/qc_var/dense_1/bias/readReshape_165/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_166/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
~
Reshape_166Reshapemain/qc_var/dense_2/kernel/readReshape_166/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_167/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{
Reshape_167Reshapemain/qc_var/dense_2/bias/readReshape_167/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_168/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
{
Reshape_168Reshapetarget/qr1/dense/kernel/readReshape_168/shape*
T0*
_output_shapes	
:|*
Tshape0
d
Reshape_169/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
y
Reshape_169Reshapetarget/qr1/dense/bias/readReshape_169/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_170/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_170Reshapetarget/qr1/dense_1/kernel/readReshape_170/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_171/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{
Reshape_171Reshapetarget/qr1/dense_1/bias/readReshape_171/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_172/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
}
Reshape_172Reshapetarget/qr1/dense_2/kernel/readReshape_172/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_173/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
z
Reshape_173Reshapetarget/qr1/dense_2/bias/readReshape_173/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_174/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
{
Reshape_174Reshapetarget/qr2/dense/kernel/readReshape_174/shape*
Tshape0*
_output_shapes	
:|*
T0
d
Reshape_175/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
y
Reshape_175Reshapetarget/qr2/dense/bias/readReshape_175/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_176/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_176Reshapetarget/qr2/dense_1/kernel/readReshape_176/shape*
_output_shapes

:*
Tshape0*
T0
d
Reshape_177/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{
Reshape_177Reshapetarget/qr2/dense_1/bias/readReshape_177/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_178/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
}
Reshape_178Reshapetarget/qr2/dense_2/kernel/readReshape_178/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_179/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z
Reshape_179Reshapetarget/qr2/dense_2/bias/readReshape_179/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_180/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
z
Reshape_180Reshapetarget/qc/dense/kernel/readReshape_180/shape*
Tshape0*
_output_shapes	
:|*
T0
d
Reshape_181/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_181Reshapetarget/qc/dense/bias/readReshape_181/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_182/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_182Reshapetarget/qc/dense_1/kernel/readReshape_182/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_183/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
z
Reshape_183Reshapetarget/qc/dense_1/bias/readReshape_183/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_184/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
|
Reshape_184Reshapetarget/qc/dense_2/kernel/readReshape_184/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_185/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_185Reshapetarget/qc/dense_2/bias/readReshape_185/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_186/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_186Reshapetarget/qc_var/dense/kernel/readReshape_186/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_187/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
|
Reshape_187Reshapetarget/qc_var/dense/bias/readReshape_187/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_188/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_188Reshape!target/qc_var/dense_1/kernel/readReshape_188/shape*
_output_shapes

:*
T0*
Tshape0
d
Reshape_189/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
~
Reshape_189Reshapetarget/qc_var/dense_1/bias/readReshape_189/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_190/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_190Reshape!target/qc_var/dense_2/kernel/readReshape_190/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_191/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
}
Reshape_191Reshapetarget/qc_var/dense_2/bias/readReshape_191/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_192/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
t
Reshape_192Reshapeentreg/soft_alpha/readReshape_192/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_193/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
t
Reshape_193Reshapecostpen/soft_beta/readReshape_193/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_194/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
n
Reshape_194Reshapebeta1_power/readReshape_194/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_195/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
n
Reshape_195Reshapebeta2_power/readReshape_195/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_196/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
}
Reshape_196Reshapemain/pi/dense/kernel/Adam/readReshape_196/shape*
Tshape0*
_output_shapes	
:x*
T0
d
Reshape_197/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_197Reshape main/pi/dense/kernel/Adam_1/readReshape_197/shape*
Tshape0*
_output_shapes	
:x*
T0
d
Reshape_198/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
{
Reshape_198Reshapemain/pi/dense/bias/Adam/readReshape_198/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_199/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
}
Reshape_199Reshapemain/pi/dense/bias/Adam_1/readReshape_199/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_200/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_200Reshape main/pi/dense_1/kernel/Adam/readReshape_200/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_201/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_201Reshape"main/pi/dense_1/kernel/Adam_1/readReshape_201/shape*
_output_shapes

:*
Tshape0*
T0
d
Reshape_202/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
}
Reshape_202Reshapemain/pi/dense_1/bias/Adam/readReshape_202/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_203/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_203Reshape main/pi/dense_1/bias/Adam_1/readReshape_203/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_204/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_204Reshape main/pi/dense_2/kernel/Adam/readReshape_204/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_205/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_205Reshape"main/pi/dense_2/kernel/Adam_1/readReshape_205/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_206/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
|
Reshape_206Reshapemain/pi/dense_2/bias/Adam/readReshape_206/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_207/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_207Reshape main/pi/dense_2/bias/Adam_1/readReshape_207/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_208/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_208Reshape main/pi/dense_3/kernel/Adam/readReshape_208/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_209/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_209Reshape"main/pi/dense_3/kernel/Adam_1/readReshape_209/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_210/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
|
Reshape_210Reshapemain/pi/dense_3/bias/Adam/readReshape_210/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_211/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
~
Reshape_211Reshape main/pi/dense_3/bias/Adam_1/readReshape_211/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_212/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
p
Reshape_212Reshapebeta1_power_1/readReshape_212/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_213/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
p
Reshape_213Reshapebeta2_power_1/readReshape_213/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_214/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
~
Reshape_214Reshapemain/qr1/dense/kernel/Adam/readReshape_214/shape*
T0*
Tshape0*
_output_shapes	
:|
d
Reshape_215/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_215Reshape!main/qr1/dense/kernel/Adam_1/readReshape_215/shape*
T0*
_output_shapes	
:|*
Tshape0
d
Reshape_216/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
|
Reshape_216Reshapemain/qr1/dense/bias/Adam/readReshape_216/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_217/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_217Reshapemain/qr1/dense/bias/Adam_1/readReshape_217/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_218/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_218Reshape!main/qr1/dense_1/kernel/Adam/readReshape_218/shape*
Tshape0*
T0*
_output_shapes

:
d
Reshape_219/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_219Reshape#main/qr1/dense_1/kernel/Adam_1/readReshape_219/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_220/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_220Reshapemain/qr1/dense_1/bias/Adam/readReshape_220/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_221/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_221Reshape!main/qr1/dense_1/bias/Adam_1/readReshape_221/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_222/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_222Reshape!main/qr1/dense_2/kernel/Adam/readReshape_222/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_223/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_223Reshape#main/qr1/dense_2/kernel/Adam_1/readReshape_223/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_224/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
}
Reshape_224Reshapemain/qr1/dense_2/bias/Adam/readReshape_224/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_225/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_225Reshape!main/qr1/dense_2/bias/Adam_1/readReshape_225/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_226/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
~
Reshape_226Reshapemain/qr2/dense/kernel/Adam/readReshape_226/shape*
_output_shapes	
:|*
T0*
Tshape0
d
Reshape_227/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_227Reshape!main/qr2/dense/kernel/Adam_1/readReshape_227/shape*
T0*
Tshape0*
_output_shapes	
:|
d
Reshape_228/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
|
Reshape_228Reshapemain/qr2/dense/bias/Adam/readReshape_228/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_229/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
~
Reshape_229Reshapemain/qr2/dense/bias/Adam_1/readReshape_229/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_230/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_230Reshape!main/qr2/dense_1/kernel/Adam/readReshape_230/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_231/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_231Reshape#main/qr2/dense_1/kernel/Adam_1/readReshape_231/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_232/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
~
Reshape_232Reshapemain/qr2/dense_1/bias/Adam/readReshape_232/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_233/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_233Reshape!main/qr2/dense_1/bias/Adam_1/readReshape_233/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_234/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_234Reshape!main/qr2/dense_2/kernel/Adam/readReshape_234/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_235/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_235Reshape#main/qr2/dense_2/kernel/Adam_1/readReshape_235/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_236/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
}
Reshape_236Reshapemain/qr2/dense_2/bias/Adam/readReshape_236/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_237/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_237Reshape!main/qr2/dense_2/bias/Adam_1/readReshape_237/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_238/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_238Reshapemain/qc/dense/kernel/Adam/readReshape_238/shape*
T0*
Tshape0*
_output_shapes	
:|
d
Reshape_239/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_239Reshape main/qc/dense/kernel/Adam_1/readReshape_239/shape*
Tshape0*
T0*
_output_shapes	
:|
d
Reshape_240/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
{
Reshape_240Reshapemain/qc/dense/bias/Adam/readReshape_240/shape*
Tshape0*
T0*
_output_shapes	
:
d
Reshape_241/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
}
Reshape_241Reshapemain/qc/dense/bias/Adam_1/readReshape_241/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_242/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_242Reshape main/qc/dense_1/kernel/Adam/readReshape_242/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_243/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_243Reshape"main/qc/dense_1/kernel/Adam_1/readReshape_243/shape*
Tshape0*
_output_shapes

:*
T0
d
Reshape_244/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
}
Reshape_244Reshapemain/qc/dense_1/bias/Adam/readReshape_244/shape*
_output_shapes	
:*
Tshape0*
T0
d
Reshape_245/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_245Reshape main/qc/dense_1/bias/Adam_1/readReshape_245/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_246/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_246Reshape main/qc/dense_2/kernel/Adam/readReshape_246/shape*
Tshape0*
_output_shapes	
:*
T0
d
Reshape_247/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_247Reshape"main/qc/dense_2/kernel/Adam_1/readReshape_247/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_248/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
|
Reshape_248Reshapemain/qc/dense_2/bias/Adam/readReshape_248/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_249/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
~
Reshape_249Reshape main/qc/dense_2/bias/Adam_1/readReshape_249/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_250/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_250Reshape"main/qc_var/dense/kernel/Adam/readReshape_250/shape*
T0*
_output_shapes	
:|*
Tshape0
d
Reshape_251/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_251Reshape$main/qc_var/dense/kernel/Adam_1/readReshape_251/shape*
T0*
_output_shapes	
:|*
Tshape0
d
Reshape_252/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_252Reshape main/qc_var/dense/bias/Adam/readReshape_252/shape*
_output_shapes	
:*
T0*
Tshape0
d
Reshape_253/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_253Reshape"main/qc_var/dense/bias/Adam_1/readReshape_253/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_254/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_254Reshape$main/qc_var/dense_1/kernel/Adam/readReshape_254/shape*
T0*
_output_shapes

:*
Tshape0
d
Reshape_255/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

Reshape_255Reshape&main/qc_var/dense_1/kernel/Adam_1/readReshape_255/shape*
_output_shapes

:*
T0*
Tshape0
d
Reshape_256/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_256Reshape"main/qc_var/dense_1/bias/Adam/readReshape_256/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_257/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Reshape_257Reshape$main/qc_var/dense_1/bias/Adam_1/readReshape_257/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_258/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_258Reshape$main/qc_var/dense_2/kernel/Adam/readReshape_258/shape*
T0*
Tshape0*
_output_shapes	
:
d
Reshape_259/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Reshape_259Reshape&main/qc_var/dense_2/kernel/Adam_1/readReshape_259/shape*
T0*
_output_shapes	
:*
Tshape0
d
Reshape_260/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Reshape_260Reshape"main/qc_var/dense_2/bias/Adam/readReshape_260/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_261/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

Reshape_261Reshape$main/qc_var/dense_2/bias/Adam_1/readReshape_261/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_262/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
p
Reshape_262Reshapebeta1_power_2/readReshape_262/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_263/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
p
Reshape_263Reshapebeta2_power_2/readReshape_263/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_264/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
y
Reshape_264Reshapeentreg/soft_alpha/Adam/readReshape_264/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_265/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
{
Reshape_265Reshapeentreg/soft_alpha/Adam_1/readReshape_265/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_266/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
p
Reshape_266Reshapebeta1_power_3/readReshape_266/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_267/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
p
Reshape_267Reshapebeta2_power_3/readReshape_267/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_268/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
y
Reshape_268Reshapecostpen/soft_beta/Adam/readReshape_268/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_269/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
{
Reshape_269Reshapecostpen/soft_beta/Adam_1/readReshape_269/shape*
T0*
_output_shapes
:*
Tshape0
O
concat_8/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ў
concat_8ConcatV2Reshape_136Reshape_137Reshape_138Reshape_139Reshape_140Reshape_141Reshape_142Reshape_143Reshape_144Reshape_145Reshape_146Reshape_147Reshape_148Reshape_149Reshape_150Reshape_151Reshape_152Reshape_153Reshape_154Reshape_155Reshape_156Reshape_157Reshape_158Reshape_159Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199Reshape_200Reshape_201Reshape_202Reshape_203Reshape_204Reshape_205Reshape_206Reshape_207Reshape_208Reshape_209Reshape_210Reshape_211Reshape_212Reshape_213Reshape_214Reshape_215Reshape_216Reshape_217Reshape_218Reshape_219Reshape_220Reshape_221Reshape_222Reshape_223Reshape_224Reshape_225Reshape_226Reshape_227Reshape_228Reshape_229Reshape_230Reshape_231Reshape_232Reshape_233Reshape_234Reshape_235Reshape_236Reshape_237Reshape_238Reshape_239Reshape_240Reshape_241Reshape_242Reshape_243Reshape_244Reshape_245Reshape_246Reshape_247Reshape_248Reshape_249Reshape_250Reshape_251Reshape_252Reshape_253Reshape_254Reshape_255Reshape_256Reshape_257Reshape_258Reshape_259Reshape_260Reshape_261Reshape_262Reshape_263Reshape_264Reshape_265Reshape_266Reshape_267Reshape_268Reshape_269concat_8/axis*

Tidx0*
_output_shapes

:ЊЌ_*
N*
T0
h
PyFunc_8PyFuncconcat_8*
token
pyfunc_8*
Tin
2*
Tout
2*
_output_shapes
:
я
Const_17Const*
_output_shapes	
:*Б
valueЇBЄ" <                        >                  >                  >                  >                  >                  >                  >                  >                              <   <                                                   >   >                                 >   >                                 >   >                                 >   >                                                        *
dtype0
S
split_8/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 

split_8SplitVPyFunc_8Const_17split_8/split_dim*
T0*
	num_split*

Tlen0*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
b
Reshape_270/shapeConst*
_output_shapes
:*
dtype0*
valueB"<      
j
Reshape_270Reshapesplit_8Reshape_270/shape*
Tshape0*
_output_shapes
:	<*
T0
\
Reshape_271/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_271Reshape	split_8:1Reshape_271/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_272/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_272Reshape	split_8:2Reshape_272/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_273/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_273Reshape	split_8:3Reshape_273/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_274/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
l
Reshape_274Reshape	split_8:4Reshape_274/shape*
T0*
_output_shapes
:	*
Tshape0
[
Reshape_275/shapeConst*
dtype0*
valueB:*
_output_shapes
:
g
Reshape_275Reshape	split_8:5Reshape_275/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_276/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_276Reshape	split_8:6Reshape_276/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_277/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_277Reshape	split_8:7Reshape_277/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_278/shapeConst*
dtype0*
_output_shapes
:*
valueB">      
l
Reshape_278Reshape	split_8:8Reshape_278/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_279/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_279Reshape	split_8:9Reshape_279/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_280/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_280Reshape
split_8:10Reshape_280/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_281/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_281Reshape
split_8:11Reshape_281/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_282/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_282Reshape
split_8:12Reshape_282/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_283/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_283Reshape
split_8:13Reshape_283/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_284/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_284Reshape
split_8:14Reshape_284/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_285/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_285Reshape
split_8:15Reshape_285/shape*
Tshape0*
T0*
_output_shapes	
:
b
Reshape_286/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_286Reshape
split_8:16Reshape_286/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_287/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_287Reshape
split_8:17Reshape_287/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_288/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_288Reshape
split_8:18Reshape_288/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_289/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_289Reshape
split_8:19Reshape_289/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_290/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_290Reshape
split_8:20Reshape_290/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_291/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_291Reshape
split_8:21Reshape_291/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_292/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_292Reshape
split_8:22Reshape_292/shape* 
_output_shapes
:
*
T0*
Tshape0
\
Reshape_293/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_293Reshape
split_8:23Reshape_293/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_294/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_294Reshape
split_8:24Reshape_294/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_295/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_295Reshape
split_8:25Reshape_295/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_296/shapeConst*
dtype0*
valueB">      *
_output_shapes
:
m
Reshape_296Reshape
split_8:26Reshape_296/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_297/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_297Reshape
split_8:27Reshape_297/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_298/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_298Reshape
split_8:28Reshape_298/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_299/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_299Reshape
split_8:29Reshape_299/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_300/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_300Reshape
split_8:30Reshape_300/shape*
Tshape0*
T0*
_output_shapes
:	
[
Reshape_301/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_301Reshape
split_8:31Reshape_301/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_302/shapeConst*
dtype0*
valueB">      *
_output_shapes
:
m
Reshape_302Reshape
split_8:32Reshape_302/shape*
_output_shapes
:	>*
T0*
Tshape0
\
Reshape_303/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_303Reshape
split_8:33Reshape_303/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_304/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_304Reshape
split_8:34Reshape_304/shape*
T0*
Tshape0* 
_output_shapes
:

\
Reshape_305/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_305Reshape
split_8:35Reshape_305/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_306/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_306Reshape
split_8:36Reshape_306/shape*
T0*
_output_shapes
:	*
Tshape0
[
Reshape_307/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_307Reshape
split_8:37Reshape_307/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_308/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_308Reshape
split_8:38Reshape_308/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_309/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_309Reshape
split_8:39Reshape_309/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_310/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_310Reshape
split_8:40Reshape_310/shape*
T0*
Tshape0* 
_output_shapes
:

\
Reshape_311/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_311Reshape
split_8:41Reshape_311/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_312/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_312Reshape
split_8:42Reshape_312/shape*
T0*
_output_shapes
:	*
Tshape0
[
Reshape_313/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_313Reshape
split_8:43Reshape_313/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_314/shapeConst*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_314Reshape
split_8:44Reshape_314/shape*
T0*
_output_shapes
:	>*
Tshape0
\
Reshape_315/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_315Reshape
split_8:45Reshape_315/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_316/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_316Reshape
split_8:46Reshape_316/shape* 
_output_shapes
:
*
Tshape0*
T0
\
Reshape_317/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_317Reshape
split_8:47Reshape_317/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_318/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_318Reshape
split_8:48Reshape_318/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_319/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_319Reshape
split_8:49Reshape_319/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_320/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_320Reshape
split_8:50Reshape_320/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_321/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_321Reshape
split_8:51Reshape_321/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_322/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_322Reshape
split_8:52Reshape_322/shape*
Tshape0* 
_output_shapes
:
*
T0
\
Reshape_323/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_323Reshape
split_8:53Reshape_323/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_324/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_324Reshape
split_8:54Reshape_324/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_325/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_325Reshape
split_8:55Reshape_325/shape*
_output_shapes
:*
T0*
Tshape0
T
Reshape_326/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_326Reshape
split_8:56Reshape_326/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_327/shapeConst*
_output_shapes
: *
dtype0*
valueB 
d
Reshape_327Reshape
split_8:57Reshape_327/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_328/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_328Reshape
split_8:58Reshape_328/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_329/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_329Reshape
split_8:59Reshape_329/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_330/shapeConst*
dtype0*
_output_shapes
:*
valueB"<      
m
Reshape_330Reshape
split_8:60Reshape_330/shape*
Tshape0*
_output_shapes
:	<*
T0
b
Reshape_331/shapeConst*
valueB"<      *
dtype0*
_output_shapes
:
m
Reshape_331Reshape
split_8:61Reshape_331/shape*
T0*
Tshape0*
_output_shapes
:	<
\
Reshape_332/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_332Reshape
split_8:62Reshape_332/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_333/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_333Reshape
split_8:63Reshape_333/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_334/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_334Reshape
split_8:64Reshape_334/shape*
T0*
Tshape0* 
_output_shapes
:

b
Reshape_335/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_335Reshape
split_8:65Reshape_335/shape* 
_output_shapes
:
*
T0*
Tshape0
\
Reshape_336/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_336Reshape
split_8:66Reshape_336/shape*
_output_shapes	
:*
Tshape0*
T0
\
Reshape_337/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_337Reshape
split_8:67Reshape_337/shape*
Tshape0*
_output_shapes	
:*
T0
b
Reshape_338/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_338Reshape
split_8:68Reshape_338/shape*
_output_shapes
:	*
Tshape0*
T0
b
Reshape_339/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_339Reshape
split_8:69Reshape_339/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_340/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_340Reshape
split_8:70Reshape_340/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_341/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_341Reshape
split_8:71Reshape_341/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_342/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_342Reshape
split_8:72Reshape_342/shape*
_output_shapes
:	*
Tshape0*
T0
b
Reshape_343/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_343Reshape
split_8:73Reshape_343/shape*
Tshape0*
_output_shapes
:	*
T0
[
Reshape_344/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_344Reshape
split_8:74Reshape_344/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_345/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_345Reshape
split_8:75Reshape_345/shape*
Tshape0*
_output_shapes
:*
T0
T
Reshape_346/shapeConst*
_output_shapes
: *
dtype0*
valueB 
d
Reshape_346Reshape
split_8:76Reshape_346/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_347/shapeConst*
dtype0*
valueB *
_output_shapes
: 
d
Reshape_347Reshape
split_8:77Reshape_347/shape*
_output_shapes
: *
Tshape0*
T0
b
Reshape_348/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
m
Reshape_348Reshape
split_8:78Reshape_348/shape*
T0*
_output_shapes
:	>*
Tshape0
b
Reshape_349/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
m
Reshape_349Reshape
split_8:79Reshape_349/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_350/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_350Reshape
split_8:80Reshape_350/shape*
_output_shapes	
:*
T0*
Tshape0
\
Reshape_351/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_351Reshape
split_8:81Reshape_351/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_352/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_352Reshape
split_8:82Reshape_352/shape* 
_output_shapes
:
*
Tshape0*
T0
b
Reshape_353/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_353Reshape
split_8:83Reshape_353/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_354/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_354Reshape
split_8:84Reshape_354/shape*
Tshape0*
_output_shapes	
:*
T0
\
Reshape_355/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_355Reshape
split_8:85Reshape_355/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_356/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_356Reshape
split_8:86Reshape_356/shape*
T0*
_output_shapes
:	*
Tshape0
b
Reshape_357/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_357Reshape
split_8:87Reshape_357/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_358/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_358Reshape
split_8:88Reshape_358/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_359/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_359Reshape
split_8:89Reshape_359/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_360/shapeConst*
dtype0*
_output_shapes
:*
valueB">      
m
Reshape_360Reshape
split_8:90Reshape_360/shape*
Tshape0*
T0*
_output_shapes
:	>
b
Reshape_361/shapeConst*
dtype0*
valueB">      *
_output_shapes
:
m
Reshape_361Reshape
split_8:91Reshape_361/shape*
T0*
Tshape0*
_output_shapes
:	>
\
Reshape_362/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_362Reshape
split_8:92Reshape_362/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_363/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_363Reshape
split_8:93Reshape_363/shape*
T0*
_output_shapes	
:*
Tshape0
b
Reshape_364/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_364Reshape
split_8:94Reshape_364/shape*
Tshape0*
T0* 
_output_shapes
:

b
Reshape_365/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_365Reshape
split_8:95Reshape_365/shape*
T0* 
_output_shapes
:
*
Tshape0
\
Reshape_366/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_366Reshape
split_8:96Reshape_366/shape*
_output_shapes	
:*
Tshape0*
T0
\
Reshape_367/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_367Reshape
split_8:97Reshape_367/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_368/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_368Reshape
split_8:98Reshape_368/shape*
Tshape0*
T0*
_output_shapes
:	
b
Reshape_369/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
m
Reshape_369Reshape
split_8:99Reshape_369/shape*
Tshape0*
_output_shapes
:	*
T0
[
Reshape_370/shapeConst*
_output_shapes
:*
dtype0*
valueB:
i
Reshape_370Reshapesplit_8:100Reshape_370/shape*
_output_shapes
:*
Tshape0*
T0
[
Reshape_371/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_371Reshapesplit_8:101Reshape_371/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_372/shapeConst*
valueB">      *
_output_shapes
:*
dtype0
n
Reshape_372Reshapesplit_8:102Reshape_372/shape*
Tshape0*
_output_shapes
:	>*
T0
b
Reshape_373/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
n
Reshape_373Reshapesplit_8:103Reshape_373/shape*
_output_shapes
:	>*
Tshape0*
T0
\
Reshape_374/shapeConst*
dtype0*
valueB:*
_output_shapes
:
j
Reshape_374Reshapesplit_8:104Reshape_374/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_375/shapeConst*
_output_shapes
:*
dtype0*
valueB:
j
Reshape_375Reshapesplit_8:105Reshape_375/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_376/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
o
Reshape_376Reshapesplit_8:106Reshape_376/shape*
T0* 
_output_shapes
:
*
Tshape0
b
Reshape_377/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
o
Reshape_377Reshapesplit_8:107Reshape_377/shape*
Tshape0*
T0* 
_output_shapes
:

\
Reshape_378/shapeConst*
_output_shapes
:*
valueB:*
dtype0
j
Reshape_378Reshapesplit_8:108Reshape_378/shape*
T0*
_output_shapes	
:*
Tshape0
\
Reshape_379/shapeConst*
dtype0*
_output_shapes
:*
valueB:
j
Reshape_379Reshapesplit_8:109Reshape_379/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_380/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_380Reshapesplit_8:110Reshape_380/shape*
T0*
_output_shapes
:	*
Tshape0
b
Reshape_381/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_381Reshapesplit_8:111Reshape_381/shape*
_output_shapes
:	*
Tshape0*
T0
[
Reshape_382/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_382Reshapesplit_8:112Reshape_382/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_383/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_383Reshapesplit_8:113Reshape_383/shape*
Tshape0*
T0*
_output_shapes
:
b
Reshape_384/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
n
Reshape_384Reshapesplit_8:114Reshape_384/shape*
Tshape0*
T0*
_output_shapes
:	>
b
Reshape_385/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
n
Reshape_385Reshapesplit_8:115Reshape_385/shape*
Tshape0*
T0*
_output_shapes
:	>
\
Reshape_386/shapeConst*
_output_shapes
:*
dtype0*
valueB:
j
Reshape_386Reshapesplit_8:116Reshape_386/shape*
Tshape0*
T0*
_output_shapes	
:
\
Reshape_387/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
Reshape_387Reshapesplit_8:117Reshape_387/shape*
_output_shapes	
:*
Tshape0*
T0
b
Reshape_388/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
o
Reshape_388Reshapesplit_8:118Reshape_388/shape* 
_output_shapes
:
*
T0*
Tshape0
b
Reshape_389/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
o
Reshape_389Reshapesplit_8:119Reshape_389/shape*
Tshape0* 
_output_shapes
:
*
T0
\
Reshape_390/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
Reshape_390Reshapesplit_8:120Reshape_390/shape*
_output_shapes	
:*
T0*
Tshape0
\
Reshape_391/shapeConst*
valueB:*
_output_shapes
:*
dtype0
j
Reshape_391Reshapesplit_8:121Reshape_391/shape*
Tshape0*
T0*
_output_shapes	
:
b
Reshape_392/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_392Reshapesplit_8:122Reshape_392/shape*
_output_shapes
:	*
T0*
Tshape0
b
Reshape_393/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_393Reshapesplit_8:123Reshape_393/shape*
Tshape0*
_output_shapes
:	*
T0
[
Reshape_394/shapeConst*
valueB:*
_output_shapes
:*
dtype0
i
Reshape_394Reshapesplit_8:124Reshape_394/shape*
_output_shapes
:*
Tshape0*
T0
[
Reshape_395/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_395Reshapesplit_8:125Reshape_395/shape*
_output_shapes
:*
Tshape0*
T0
T
Reshape_396/shapeConst*
_output_shapes
: *
valueB *
dtype0
e
Reshape_396Reshapesplit_8:126Reshape_396/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_397/shapeConst*
_output_shapes
: *
dtype0*
valueB 
e
Reshape_397Reshapesplit_8:127Reshape_397/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_398/shapeConst*
_output_shapes
: *
dtype0*
valueB 
e
Reshape_398Reshapesplit_8:128Reshape_398/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_399/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_399Reshapesplit_8:129Reshape_399/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_400/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_400Reshapesplit_8:130Reshape_400/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_401/shapeConst*
valueB *
_output_shapes
: *
dtype0
e
Reshape_401Reshapesplit_8:131Reshape_401/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_402/shapeConst*
dtype0*
valueB *
_output_shapes
: 
e
Reshape_402Reshapesplit_8:132Reshape_402/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_403/shapeConst*
valueB *
dtype0*
_output_shapes
: 
e
Reshape_403Reshapesplit_8:133Reshape_403/shape*
_output_shapes
: *
Tshape0*
T0
В
	Assign_82Assignmain/pi/dense/kernelReshape_270*
T0*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	<
Њ
	Assign_83Assignmain/pi/dense/biasReshape_271*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(*
T0
З
	Assign_84Assignmain/pi/dense_1/kernelReshape_272*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0
Ў
	Assign_85Assignmain/pi/dense_1/biasReshape_273*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ж
	Assign_86Assignmain/pi/dense_2/kernelReshape_274*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	
­
	Assign_87Assignmain/pi/dense_2/biasReshape_275*
_output_shapes
:*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_2/bias*
use_locking(
Ж
	Assign_88Assignmain/pi/dense_3/kernelReshape_276*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
­
	Assign_89Assignmain/pi/dense_3/biasReshape_277*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
T0*
use_locking(
Д
	Assign_90Assignmain/qr1/dense/kernelReshape_278*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(
Ќ
	Assign_91Assignmain/qr1/dense/biasReshape_279*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:
Й
	Assign_92Assignmain/qr1/dense_1/kernelReshape_280*
use_locking(*
T0* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(
А
	Assign_93Assignmain/qr1/dense_1/biasReshape_281*
_output_shapes	
:*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
T0
И
	Assign_94Assignmain/qr1/dense_2/kernelReshape_282*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel
Џ
	Assign_95Assignmain/qr1/dense_2/biasReshape_283*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
Д
	Assign_96Assignmain/qr2/dense/kernelReshape_284*
T0*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
use_locking(*
validate_shape(
Ќ
	Assign_97Assignmain/qr2/dense/biasReshape_285*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(*&
_class
loc:@main/qr2/dense/bias
Й
	Assign_98Assignmain/qr2/dense_1/kernelReshape_286**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
*
validate_shape(
А
	Assign_99Assignmain/qr2/dense_1/biasReshape_287*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
T0
Й

Assign_100Assignmain/qr2/dense_2/kernelReshape_288**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
А

Assign_101Assignmain/qr2/dense_2/biasReshape_289*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
use_locking(*
_output_shapes
:
Г

Assign_102Assignmain/qc/dense/kernelReshape_290*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel
Ћ

Assign_103Assignmain/qc/dense/biasReshape_291*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
И

Assign_104Assignmain/qc/dense_1/kernelReshape_292* 
_output_shapes
:
*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/qc/dense_1/kernel
Џ

Assign_105Assignmain/qc/dense_1/biasReshape_293*'
_class
loc:@main/qc/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
З

Assign_106Assignmain/qc/dense_2/kernelReshape_294*
validate_shape(*
_output_shapes
:	*
T0*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(
Ў

Assign_107Assignmain/qc/dense_2/biasReshape_295*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
_output_shapes
:
Л

Assign_108Assignmain/qc_var/dense/kernelReshape_296*
validate_shape(*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
use_locking(*
_output_shapes
:	>
Г

Assign_109Assignmain/qc_var/dense/biasReshape_297*
_output_shapes	
:*
use_locking(*
T0*)
_class
loc:@main/qc_var/dense/bias*
validate_shape(
Р

Assign_110Assignmain/qc_var/dense_1/kernelReshape_298*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*-
_class#
!loc:@main/qc_var/dense_1/kernel
З

Assign_111Assignmain/qc_var/dense_1/biasReshape_299*
T0*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
validate_shape(
П

Assign_112Assignmain/qc_var/dense_2/kernelReshape_300*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Ж

Assign_113Assignmain/qc_var/dense_2/biasReshape_301*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
Й

Assign_114Assigntarget/qr1/dense/kernelReshape_302**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>*
use_locking(*
validate_shape(*
T0
Б

Assign_115Assigntarget/qr1/dense/biasReshape_303*
T0*
_output_shapes	
:*(
_class
loc:@target/qr1/dense/bias*
validate_shape(*
use_locking(
О

Assign_116Assigntarget/qr1/dense_1/kernelReshape_304*
validate_shape(* 
_output_shapes
:
*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*
use_locking(
Е

Assign_117Assigntarget/qr1/dense_1/biasReshape_305*
validate_shape(*
use_locking(*
T0**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:
Н

Assign_118Assigntarget/qr1/dense_2/kernelReshape_306*
use_locking(*
validate_shape(*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	
Д

Assign_119Assigntarget/qr1/dense_2/biasReshape_307**
_class 
loc:@target/qr1/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(
Й

Assign_120Assigntarget/qr2/dense/kernelReshape_308*
use_locking(*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>
Б

Assign_121Assigntarget/qr2/dense/biasReshape_309*(
_class
loc:@target/qr2/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
О

Assign_122Assigntarget/qr2/dense_1/kernelReshape_310*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel
Е

Assign_123Assigntarget/qr2/dense_1/biasReshape_311*
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias*
validate_shape(*
use_locking(*
T0
Н

Assign_124Assigntarget/qr2/dense_2/kernelReshape_312*
use_locking(*
_output_shapes
:	*
T0*
validate_shape(*,
_class"
 loc:@target/qr2/dense_2/kernel
Д

Assign_125Assigntarget/qr2/dense_2/biasReshape_313*
use_locking(**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
З

Assign_126Assigntarget/qc/dense/kernelReshape_314*
use_locking(*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>*
T0
Џ

Assign_127Assigntarget/qc/dense/biasReshape_315*
T0*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
М

Assign_128Assigntarget/qc/dense_1/kernelReshape_316*
use_locking(*
validate_shape(* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel*
T0
Г

Assign_129Assigntarget/qc/dense_1/biasReshape_317*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:*
use_locking(
Л

Assign_130Assigntarget/qc/dense_2/kernelReshape_318*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0
В

Assign_131Assigntarget/qc/dense_2/biasReshape_319*)
_class
loc:@target/qc/dense_2/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:
П

Assign_132Assigntarget/qc_var/dense/kernelReshape_320*
use_locking(*-
_class#
!loc:@target/qc_var/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0
З

Assign_133Assigntarget/qc_var/dense/biasReshape_321*
use_locking(*
_output_shapes	
:*+
_class!
loc:@target/qc_var/dense/bias*
T0*
validate_shape(
Ф

Assign_134Assigntarget/qc_var/dense_1/kernelReshape_322* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@target/qc_var/dense_1/kernel
Л

Assign_135Assigntarget/qc_var/dense_1/biasReshape_323*-
_class#
!loc:@target/qc_var/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
У

Assign_136Assigntarget/qc_var/dense_2/kernelReshape_324*
_output_shapes
:	*
validate_shape(*
T0*
use_locking(*/
_class%
#!loc:@target/qc_var/dense_2/kernel
К

Assign_137Assigntarget/qc_var/dense_2/biasReshape_325*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*-
_class#
!loc:@target/qc_var/dense_2/bias
Є

Assign_138Assignentreg/soft_alphaReshape_326*
use_locking(*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
Є

Assign_139Assigncostpen/soft_betaReshape_327*
_output_shapes
: *
T0*
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta


Assign_140Assignbeta1_powerReshape_328*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
T0*
validate_shape(*
use_locking(


Assign_141Assignbeta2_powerReshape_329*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
_output_shapes
: 
И

Assign_142Assignmain/pi/dense/kernel/AdamReshape_330*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<
К

Assign_143Assignmain/pi/dense/kernel/Adam_1Reshape_331*'
_class
loc:@main/pi/dense/kernel*
T0*
use_locking(*
_output_shapes
:	<*
validate_shape(
А

Assign_144Assignmain/pi/dense/bias/AdamReshape_332*
_output_shapes	
:*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0
В

Assign_145Assignmain/pi/dense/bias/Adam_1Reshape_333*
use_locking(*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:
Н

Assign_146Assignmain/pi/dense_1/kernel/AdamReshape_334* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel
П

Assign_147Assignmain/pi/dense_1/kernel/Adam_1Reshape_335*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(*
use_locking(
Д

Assign_148Assignmain/pi/dense_1/bias/AdamReshape_336*
T0*
_output_shapes	
:*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(
Ж

Assign_149Assignmain/pi/dense_1/bias/Adam_1Reshape_337*'
_class
loc:@main/pi/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
М

Assign_150Assignmain/pi/dense_2/kernel/AdamReshape_338*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel
О

Assign_151Assignmain/pi/dense_2/kernel/Adam_1Reshape_339*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel
Г

Assign_152Assignmain/pi/dense_2/bias/AdamReshape_340*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
validate_shape(*
T0
Е

Assign_153Assignmain/pi/dense_2/bias/Adam_1Reshape_341*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias
М

Assign_154Assignmain/pi/dense_3/kernel/AdamReshape_342*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
validate_shape(*
T0
О

Assign_155Assignmain/pi/dense_3/kernel/Adam_1Reshape_343*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
Г

Assign_156Assignmain/pi/dense_3/bias/AdamReshape_344*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
Е

Assign_157Assignmain/pi/dense_3/bias/Adam_1Reshape_345*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
T0*
use_locking(*
validate_shape(
Ё

Assign_158Assignbeta1_power_1Reshape_346*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
Ё

Assign_159Assignbeta2_power_1Reshape_347*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0*
validate_shape(
К

Assign_160Assignmain/qr1/dense/kernel/AdamReshape_348*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel
М

Assign_161Assignmain/qr1/dense/kernel/Adam_1Reshape_349*
_output_shapes
:	>*
validate_shape(*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
T0
В

Assign_162Assignmain/qr1/dense/bias/AdamReshape_350*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*&
_class
loc:@main/qr1/dense/bias
Д

Assign_163Assignmain/qr1/dense/bias/Adam_1Reshape_351*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias
П

Assign_164Assignmain/qr1/dense_1/kernel/AdamReshape_352* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel
С

Assign_165Assignmain/qr1/dense_1/kernel/Adam_1Reshape_353**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ж

Assign_166Assignmain/qr1/dense_1/bias/AdamReshape_354*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_1/bias
И

Assign_167Assignmain/qr1/dense_1/bias/Adam_1Reshape_355*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
use_locking(
О

Assign_168Assignmain/qr1/dense_2/kernel/AdamReshape_356*
_output_shapes
:	*
validate_shape(*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel
Р

Assign_169Assignmain/qr1/dense_2/kernel/Adam_1Reshape_357*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
validate_shape(
Е

Assign_170Assignmain/qr1/dense_2/bias/AdamReshape_358*
T0*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(
З

Assign_171Assignmain/qr1/dense_2/bias/Adam_1Reshape_359*
T0*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias
К

Assign_172Assignmain/qr2/dense/kernel/AdamReshape_360*
validate_shape(*
_output_shapes
:	>*
use_locking(*
T0*(
_class
loc:@main/qr2/dense/kernel
М

Assign_173Assignmain/qr2/dense/kernel/Adam_1Reshape_361*
T0*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(
В

Assign_174Assignmain/qr2/dense/bias/AdamReshape_362*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(
Д

Assign_175Assignmain/qr2/dense/bias/Adam_1Reshape_363*
use_locking(*
_output_shapes	
:*
validate_shape(*&
_class
loc:@main/qr2/dense/bias*
T0
П

Assign_176Assignmain/qr2/dense_1/kernel/AdamReshape_364**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(
С

Assign_177Assignmain/qr2/dense_1/kernel/Adam_1Reshape_365**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(
Ж

Assign_178Assignmain/qr2/dense_1/bias/AdamReshape_366*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:
И

Assign_179Assignmain/qr2/dense_1/bias/Adam_1Reshape_367*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
_output_shapes	
:*
T0
О

Assign_180Assignmain/qr2/dense_2/kernel/AdamReshape_368*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
Р

Assign_181Assignmain/qr2/dense_2/kernel/Adam_1Reshape_369*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
use_locking(
Е

Assign_182Assignmain/qr2/dense_2/bias/AdamReshape_370*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*(
_class
loc:@main/qr2/dense_2/bias
З

Assign_183Assignmain/qr2/dense_2/bias/Adam_1Reshape_371*
_output_shapes
:*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0
И

Assign_184Assignmain/qc/dense/kernel/AdamReshape_372*
validate_shape(*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(
К

Assign_185Assignmain/qc/dense/kernel/Adam_1Reshape_373*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(*
_output_shapes
:	>*
validate_shape(
А

Assign_186Assignmain/qc/dense/bias/AdamReshape_374*
_output_shapes	
:*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0
В

Assign_187Assignmain/qc/dense/bias/Adam_1Reshape_375*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Н

Assign_188Assignmain/qc/dense_1/kernel/AdamReshape_376* 
_output_shapes
:
*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(*
T0
П

Assign_189Assignmain/qc/dense_1/kernel/Adam_1Reshape_377*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
use_locking(
Д

Assign_190Assignmain/qc/dense_1/bias/AdamReshape_378*
T0*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:
Ж

Assign_191Assignmain/qc/dense_1/bias/Adam_1Reshape_379*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0*'
_class
loc:@main/qc/dense_1/bias
М

Assign_192Assignmain/qc/dense_2/kernel/AdamReshape_380*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel
О

Assign_193Assignmain/qc/dense_2/kernel/Adam_1Reshape_381*
_output_shapes
:	*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/qc/dense_2/kernel
Г

Assign_194Assignmain/qc/dense_2/bias/AdamReshape_382*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0
Е

Assign_195Assignmain/qc/dense_2/bias/Adam_1Reshape_383*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
T0*
validate_shape(
Р

Assign_196Assignmain/qc_var/dense/kernel/AdamReshape_384*
use_locking(*
validate_shape(*
_output_shapes
:	>*
T0*+
_class!
loc:@main/qc_var/dense/kernel
Т

Assign_197Assignmain/qc_var/dense/kernel/Adam_1Reshape_385*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	>
И

Assign_198Assignmain/qc_var/dense/bias/AdamReshape_386*
use_locking(*
_output_shapes	
:*
validate_shape(*)
_class
loc:@main/qc_var/dense/bias*
T0
К

Assign_199Assignmain/qc_var/dense/bias/Adam_1Reshape_387*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*)
_class
loc:@main/qc_var/dense/bias
Х

Assign_200Assignmain/qc_var/dense_1/kernel/AdamReshape_388*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(
Ч

Assign_201Assign!main/qc_var/dense_1/kernel/Adam_1Reshape_389*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:
*-
_class#
!loc:@main/qc_var/dense_1/kernel
М

Assign_202Assignmain/qc_var/dense_1/bias/AdamReshape_390*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias
О

Assign_203Assignmain/qc_var/dense_1/bias/Adam_1Reshape_391*
validate_shape(*
T0*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
use_locking(
Ф

Assign_204Assignmain/qc_var/dense_2/kernel/AdamReshape_392*
_output_shapes
:	*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(*
T0
Ц

Assign_205Assign!main/qc_var/dense_2/kernel/Adam_1Reshape_393*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel
Л

Assign_206Assignmain/qc_var/dense_2/bias/AdamReshape_394*+
_class!
loc:@main/qc_var/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
Н

Assign_207Assignmain/qc_var/dense_2/bias/Adam_1Reshape_395*
_output_shapes
:*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
use_locking(*
validate_shape(
 

Assign_208Assignbeta1_power_2Reshape_396*
_output_shapes
: *
use_locking(*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
T0
 

Assign_209Assignbeta2_power_2Reshape_397*
validate_shape(*
use_locking(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
Љ

Assign_210Assignentreg/soft_alpha/AdamReshape_398*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: 
Ћ

Assign_211Assignentreg/soft_alpha/Adam_1Reshape_399*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(*
use_locking(
 

Assign_212Assignbeta1_power_3Reshape_400*
validate_shape(*
T0*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
 

Assign_213Assignbeta2_power_3Reshape_401*
use_locking(*
T0*
_output_shapes
: *
validate_shape(*$
_class
loc:@costpen/soft_beta
Љ

Assign_214Assigncostpen/soft_beta/AdamReshape_402*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(*
use_locking(
Ћ

Assign_215Assigncostpen/soft_beta/Adam_1Reshape_403*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0*
use_locking(*
validate_shape(
б
group_deps_13NoOp^Assign_100^Assign_101^Assign_102^Assign_103^Assign_104^Assign_105^Assign_106^Assign_107^Assign_108^Assign_109^Assign_110^Assign_111^Assign_112^Assign_113^Assign_114^Assign_115^Assign_116^Assign_117^Assign_118^Assign_119^Assign_120^Assign_121^Assign_122^Assign_123^Assign_124^Assign_125^Assign_126^Assign_127^Assign_128^Assign_129^Assign_130^Assign_131^Assign_132^Assign_133^Assign_134^Assign_135^Assign_136^Assign_137^Assign_138^Assign_139^Assign_140^Assign_141^Assign_142^Assign_143^Assign_144^Assign_145^Assign_146^Assign_147^Assign_148^Assign_149^Assign_150^Assign_151^Assign_152^Assign_153^Assign_154^Assign_155^Assign_156^Assign_157^Assign_158^Assign_159^Assign_160^Assign_161^Assign_162^Assign_163^Assign_164^Assign_165^Assign_166^Assign_167^Assign_168^Assign_169^Assign_170^Assign_171^Assign_172^Assign_173^Assign_174^Assign_175^Assign_176^Assign_177^Assign_178^Assign_179^Assign_180^Assign_181^Assign_182^Assign_183^Assign_184^Assign_185^Assign_186^Assign_187^Assign_188^Assign_189^Assign_190^Assign_191^Assign_192^Assign_193^Assign_194^Assign_195^Assign_196^Assign_197^Assign_198^Assign_199^Assign_200^Assign_201^Assign_202^Assign_203^Assign_204^Assign_205^Assign_206^Assign_207^Assign_208^Assign_209^Assign_210^Assign_211^Assign_212^Assign_213^Assign_214^Assign_215
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
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_4cc5ad077cf14b4cab9633fe98a3340b/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0*
_output_shapes	
:
є
save/SaveV2/shape_and_slicesConst*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
З
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1main/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1main/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1main/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1main/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1main/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qc_var/dense/biastarget/qc_var/dense/kerneltarget/qc_var/dense_1/biastarget/qc_var/dense_1/kerneltarget/qc_var/dense_2/biastarget/qc_var/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
Ё
save/RestoreV2/tensor_namesConst*
dtype0*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes	
:
ї
save/RestoreV2/shape_and_slicesConst*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:
А
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Ѓ
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*%
_class
loc:@main/pi/dense/bias
Љ
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0*
validate_shape(
Ј
save/Assign_2Assignbeta1_power_2save/RestoreV2:2*
use_locking(*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: *
T0
Ј
save/Assign_3Assignbeta1_power_3save/RestoreV2:3*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta
Ї
save/Assign_4Assignbeta2_powersave/RestoreV2:4*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
Љ
save/Assign_5Assignbeta2_power_1save/RestoreV2:5*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
T0*
validate_shape(
Ј
save/Assign_6Assignbeta2_power_2save/RestoreV2:6*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
T0
Ј
save/Assign_7Assignbeta2_power_3save/RestoreV2:7*$
_class
loc:@costpen/soft_beta*
use_locking(*
validate_shape(*
_output_shapes
: *
T0
Ќ
save/Assign_8Assigncostpen/soft_betasave/RestoreV2:8*$
_class
loc:@costpen/soft_beta*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
Б
save/Assign_9Assigncostpen/soft_beta/Adamsave/RestoreV2:9*
_output_shapes
: *
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta*
T0
Е
save/Assign_10Assigncostpen/soft_beta/Adam_1save/RestoreV2:10*
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 
Ў
save/Assign_11Assignentreg/soft_alphasave/RestoreV2:11*
_output_shapes
: *
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha*
validate_shape(
Г
save/Assign_12Assignentreg/soft_alpha/Adamsave/RestoreV2:12*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: 
Е
save/Assign_13Assignentreg/soft_alpha/Adam_1save/RestoreV2:13*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
use_locking(*
_output_shapes
: *
T0
Е
save/Assign_14Assignmain/pi/dense/biassave/RestoreV2:14*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes	
:*
use_locking(
К
save/Assign_15Assignmain/pi/dense/bias/Adamsave/RestoreV2:15*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
М
save/Assign_16Assignmain/pi/dense/bias/Adam_1save/RestoreV2:16*
_output_shapes	
:*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0*
use_locking(
Н
save/Assign_17Assignmain/pi/dense/kernelsave/RestoreV2:17*
T0*
validate_shape(*
_output_shapes
:	<*
use_locking(*'
_class
loc:@main/pi/dense/kernel
Т
save/Assign_18Assignmain/pi/dense/kernel/Adamsave/RestoreV2:18*
T0*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
_output_shapes
:	<
Ф
save/Assign_19Assignmain/pi/dense/kernel/Adam_1save/RestoreV2:19*
validate_shape(*
_output_shapes
:	<*
T0*'
_class
loc:@main/pi/dense/kernel*
use_locking(
Й
save/Assign_20Assignmain/pi/dense_1/biassave/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
О
save/Assign_21Assignmain/pi/dense_1/bias/Adamsave/RestoreV2:21*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias
Р
save/Assign_22Assignmain/pi/dense_1/bias/Adam_1save/RestoreV2:22*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
Т
save/Assign_23Assignmain/pi/dense_1/kernelsave/RestoreV2:23* 
_output_shapes
:
*
T0*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(
Ч
save/Assign_24Assignmain/pi/dense_1/kernel/Adamsave/RestoreV2:24* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(
Щ
save/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save/RestoreV2:25*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(
И
save/Assign_26Assignmain/pi/dense_2/biassave/RestoreV2:26*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*'
_class
loc:@main/pi/dense_2/bias
Н
save/Assign_27Assignmain/pi/dense_2/bias/Adamsave/RestoreV2:27*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
T0
П
save/Assign_28Assignmain/pi/dense_2/bias/Adam_1save/RestoreV2:28*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0
С
save/Assign_29Assignmain/pi/dense_2/kernelsave/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	*
use_locking(
Ц
save/Assign_30Assignmain/pi/dense_2/kernel/Adamsave/RestoreV2:30*
_output_shapes
:	*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(
Ш
save/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save/RestoreV2:31*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(
И
save/Assign_32Assignmain/pi/dense_3/biassave/RestoreV2:32*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias
Н
save/Assign_33Assignmain/pi/dense_3/bias/Adamsave/RestoreV2:33*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_3/bias
П
save/Assign_34Assignmain/pi/dense_3/bias/Adam_1save/RestoreV2:34*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias
С
save/Assign_35Assignmain/pi/dense_3/kernelsave/RestoreV2:35*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	
Ц
save/Assign_36Assignmain/pi/dense_3/kernel/Adamsave/RestoreV2:36*
T0*)
_class
loc:@main/pi/dense_3/kernel*
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
save/Assign_38Assignmain/qc/dense/biassave/RestoreV2:38*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
_output_shapes	
:
К
save/Assign_39Assignmain/qc/dense/bias/Adamsave/RestoreV2:39*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(
М
save/Assign_40Assignmain/qc/dense/bias/Adam_1save/RestoreV2:40*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*%
_class
loc:@main/qc/dense/bias
Н
save/Assign_41Assignmain/qc/dense/kernelsave/RestoreV2:41*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>*
validate_shape(
Т
save/Assign_42Assignmain/qc/dense/kernel/Adamsave/RestoreV2:42*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
use_locking(*
T0*
validate_shape(
Ф
save/Assign_43Assignmain/qc/dense/kernel/Adam_1save/RestoreV2:43*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	>
Й
save/Assign_44Assignmain/qc/dense_1/biassave/RestoreV2:44*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias
О
save/Assign_45Assignmain/qc/dense_1/bias/Adamsave/RestoreV2:45*
T0*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Р
save/Assign_46Assignmain/qc/dense_1/bias/Adam_1save/RestoreV2:46*
T0*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
_output_shapes	
:
Т
save/Assign_47Assignmain/qc/dense_1/kernelsave/RestoreV2:47*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
*
T0
Ч
save/Assign_48Assignmain/qc/dense_1/kernel/Adamsave/RestoreV2:48* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel
Щ
save/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save/RestoreV2:49*
validate_shape(* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
T0
И
save/Assign_50Assignmain/qc/dense_2/biassave/RestoreV2:50*
validate_shape(*
T0*
use_locking(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias
Н
save/Assign_51Assignmain/qc/dense_2/bias/Adamsave/RestoreV2:51*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
П
save/Assign_52Assignmain/qc/dense_2/bias/Adam_1save/RestoreV2:52*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
С
save/Assign_53Assignmain/qc/dense_2/kernelsave/RestoreV2:53*
T0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
validate_shape(
Ц
save/Assign_54Assignmain/qc/dense_2/kernel/Adamsave/RestoreV2:54*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0*
validate_shape(
Ш
save/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save/RestoreV2:55*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
use_locking(
Н
save/Assign_56Assignmain/qc_var/dense/biassave/RestoreV2:56*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Т
save/Assign_57Assignmain/qc_var/dense/bias/Adamsave/RestoreV2:57*)
_class
loc:@main/qc_var/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Ф
save/Assign_58Assignmain/qc_var/dense/bias/Adam_1save/RestoreV2:58*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Х
save/Assign_59Assignmain/qc_var/dense/kernelsave/RestoreV2:59*
_output_shapes
:	>*
validate_shape(*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
use_locking(
Ъ
save/Assign_60Assignmain/qc_var/dense/kernel/Adamsave/RestoreV2:60*
T0*
validate_shape(*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
use_locking(
Ь
save/Assign_61Assignmain/qc_var/dense/kernel/Adam_1save/RestoreV2:61*+
_class!
loc:@main/qc_var/dense/kernel*
use_locking(*
_output_shapes
:	>*
T0*
validate_shape(
С
save/Assign_62Assignmain/qc_var/dense_1/biassave/RestoreV2:62*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ц
save/Assign_63Assignmain/qc_var/dense_1/bias/Adamsave/RestoreV2:63*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias
Ш
save/Assign_64Assignmain/qc_var/dense_1/bias/Adam_1save/RestoreV2:64*
T0*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Ъ
save/Assign_65Assignmain/qc_var/dense_1/kernelsave/RestoreV2:65*
use_locking(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:

Я
save/Assign_66Assignmain/qc_var/dense_1/kernel/Adamsave/RestoreV2:66*
use_locking(* 
_output_shapes
:
*
T0*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel
б
save/Assign_67Assign!main/qc_var/dense_1/kernel/Adam_1save/RestoreV2:67*
validate_shape(* 
_output_shapes
:
*
use_locking(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0
Р
save/Assign_68Assignmain/qc_var/dense_2/biassave/RestoreV2:68*
_output_shapes
:*
use_locking(*
validate_shape(*+
_class!
loc:@main/qc_var/dense_2/bias*
T0
Х
save/Assign_69Assignmain/qc_var/dense_2/bias/Adamsave/RestoreV2:69*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*+
_class!
loc:@main/qc_var/dense_2/bias
Ч
save/Assign_70Assignmain/qc_var/dense_2/bias/Adam_1save/RestoreV2:70*+
_class!
loc:@main/qc_var/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
Щ
save/Assign_71Assignmain/qc_var/dense_2/kernelsave/RestoreV2:71*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(*-
_class#
!loc:@main/qc_var/dense_2/kernel
Ю
save/Assign_72Assignmain/qc_var/dense_2/kernel/Adamsave/RestoreV2:72*
use_locking(*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0*
_output_shapes
:	
а
save/Assign_73Assign!main/qc_var/dense_2/kernel/Adam_1save/RestoreV2:73*
validate_shape(*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(*
_output_shapes
:	
З
save/Assign_74Assignmain/qr1/dense/biassave/RestoreV2:74*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias
М
save/Assign_75Assignmain/qr1/dense/bias/Adamsave/RestoreV2:75*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
T0*
_output_shapes	
:
О
save/Assign_76Assignmain/qr1/dense/bias/Adam_1save/RestoreV2:76*
use_locking(*
validate_shape(*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias*
T0
П
save/Assign_77Assignmain/qr1/dense/kernelsave/RestoreV2:77*
_output_shapes
:	>*
T0*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(
Ф
save/Assign_78Assignmain/qr1/dense/kernel/Adamsave/RestoreV2:78*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>*
T0
Ц
save/Assign_79Assignmain/qr1/dense/kernel/Adam_1save/RestoreV2:79*
use_locking(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0*
validate_shape(
Л
save/Assign_80Assignmain/qr1/dense_1/biassave/RestoreV2:80*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_1/bias
Р
save/Assign_81Assignmain/qr1/dense_1/bias/Adamsave/RestoreV2:81*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Т
save/Assign_82Assignmain/qr1/dense_1/bias/Adam_1save/RestoreV2:82*(
_class
loc:@main/qr1/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(
Ф
save/Assign_83Assignmain/qr1/dense_1/kernelsave/RestoreV2:83**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:

Щ
save/Assign_84Assignmain/qr1/dense_1/kernel/Adamsave/RestoreV2:84* 
_output_shapes
:
*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
validate_shape(
Ы
save/Assign_85Assignmain/qr1/dense_1/kernel/Adam_1save/RestoreV2:85* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel
К
save/Assign_86Assignmain/qr1/dense_2/biassave/RestoreV2:86*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
use_locking(
П
save/Assign_87Assignmain/qr1/dense_2/bias/Adamsave/RestoreV2:87*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0
С
save/Assign_88Assignmain/qr1/dense_2/bias/Adam_1save/RestoreV2:88*
T0*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:
У
save/Assign_89Assignmain/qr1/dense_2/kernelsave/RestoreV2:89*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
T0
Ш
save/Assign_90Assignmain/qr1/dense_2/kernel/Adamsave/RestoreV2:90**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0
Ъ
save/Assign_91Assignmain/qr1/dense_2/kernel/Adam_1save/RestoreV2:91*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
З
save/Assign_92Assignmain/qr2/dense/biassave/RestoreV2:92*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias
М
save/Assign_93Assignmain/qr2/dense/bias/Adamsave/RestoreV2:93*
_output_shapes	
:*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias*
T0
О
save/Assign_94Assignmain/qr2/dense/bias/Adam_1save/RestoreV2:94*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
П
save/Assign_95Assignmain/qr2/dense/kernelsave/RestoreV2:95*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	>
Ф
save/Assign_96Assignmain/qr2/dense/kernel/Adamsave/RestoreV2:96*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>*
T0
Ц
save/Assign_97Assignmain/qr2/dense/kernel/Adam_1save/RestoreV2:97*
use_locking(*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(
Л
save/Assign_98Assignmain/qr2/dense_1/biassave/RestoreV2:98*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
_output_shapes	
:
Р
save/Assign_99Assignmain/qr2/dense_1/bias/Adamsave/RestoreV2:99*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ф
save/Assign_100Assignmain/qr2/dense_1/bias/Adam_1save/RestoreV2:100*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(
Ц
save/Assign_101Assignmain/qr2/dense_1/kernelsave/RestoreV2:101*
T0*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:

Ы
save/Assign_102Assignmain/qr2/dense_1/kernel/Adamsave/RestoreV2:102*
use_locking(*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0
Э
save/Assign_103Assignmain/qr2/dense_1/kernel/Adam_1save/RestoreV2:103*
validate_shape(* 
_output_shapes
:
*
T0*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel
М
save/Assign_104Assignmain/qr2/dense_2/biassave/RestoreV2:104*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
С
save/Assign_105Assignmain/qr2/dense_2/bias/Adamsave/RestoreV2:105*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
validate_shape(
У
save/Assign_106Assignmain/qr2/dense_2/bias/Adam_1save/RestoreV2:106*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias
Х
save/Assign_107Assignmain/qr2/dense_2/kernelsave/RestoreV2:107*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_2/kernel
Ъ
save/Assign_108Assignmain/qr2/dense_2/kernel/Adamsave/RestoreV2:108*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel
Ь
save/Assign_109Assignmain/qr2/dense_2/kernel/Adam_1save/RestoreV2:109*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
Л
save/Assign_110Assigntarget/qc/dense/biassave/RestoreV2:110*
validate_shape(*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:*
use_locking(*
T0
У
save/Assign_111Assigntarget/qc/dense/kernelsave/RestoreV2:111*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(
П
save/Assign_112Assigntarget/qc/dense_1/biassave/RestoreV2:112*
_output_shapes	
:*
T0*
use_locking(*)
_class
loc:@target/qc/dense_1/bias*
validate_shape(
Ш
save/Assign_113Assigntarget/qc/dense_1/kernelsave/RestoreV2:113*
validate_shape(* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel*
T0*
use_locking(
О
save/Assign_114Assigntarget/qc/dense_2/biassave/RestoreV2:114*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ч
save/Assign_115Assigntarget/qc/dense_2/kernelsave/RestoreV2:115*
_output_shapes
:	*
use_locking(*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(
У
save/Assign_116Assigntarget/qc_var/dense/biassave/RestoreV2:116*
_output_shapes	
:*+
_class!
loc:@target/qc_var/dense/bias*
validate_shape(*
use_locking(*
T0
Ы
save/Assign_117Assigntarget/qc_var/dense/kernelsave/RestoreV2:117*
use_locking(*
_output_shapes
:	>*
T0*
validate_shape(*-
_class#
!loc:@target/qc_var/dense/kernel
Ч
save/Assign_118Assigntarget/qc_var/dense_1/biassave/RestoreV2:118*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:*-
_class#
!loc:@target/qc_var/dense_1/bias
а
save/Assign_119Assigntarget/qc_var/dense_1/kernelsave/RestoreV2:119*
use_locking(*
validate_shape(* 
_output_shapes
:
*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel
Ц
save/Assign_120Assigntarget/qc_var/dense_2/biassave/RestoreV2:120*
validate_shape(*-
_class#
!loc:@target/qc_var/dense_2/bias*
T0*
use_locking(*
_output_shapes
:
Я
save/Assign_121Assigntarget/qc_var/dense_2/kernelsave/RestoreV2:121*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	*/
_class%
#!loc:@target/qc_var/dense_2/kernel
Н
save/Assign_122Assigntarget/qr1/dense/biassave/RestoreV2:122*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
Х
save/Assign_123Assigntarget/qr1/dense/kernelsave/RestoreV2:123*
_output_shapes
:	>*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense/kernel*
T0
С
save/Assign_124Assigntarget/qr1/dense_1/biassave/RestoreV2:124*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:**
_class 
loc:@target/qr1/dense_1/bias
Ъ
save/Assign_125Assigntarget/qr1/dense_1/kernelsave/RestoreV2:125*
validate_shape(* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
use_locking(*
T0
Р
save/Assign_126Assigntarget/qr1/dense_2/biassave/RestoreV2:126*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(*
validate_shape(*
T0
Щ
save/Assign_127Assigntarget/qr1/dense_2/kernelsave/RestoreV2:127*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	*
use_locking(
Н
save/Assign_128Assigntarget/qr2/dense/biassave/RestoreV2:128*
use_locking(*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:*
validate_shape(*
T0
Х
save/Assign_129Assigntarget/qr2/dense/kernelsave/RestoreV2:129*
T0**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>*
use_locking(*
validate_shape(
С
save/Assign_130Assigntarget/qr2/dense_1/biassave/RestoreV2:130*
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias*
validate_shape(*
use_locking(*
T0
Ъ
save/Assign_131Assigntarget/qr2/dense_1/kernelsave/RestoreV2:131*
validate_shape(* 
_output_shapes
:
*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0
Р
save/Assign_132Assigntarget/qr2/dense_2/biassave/RestoreV2:132*
validate_shape(**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
Щ
save/Assign_133Assigntarget/qr2/dense_2/kernelsave/RestoreV2:133*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
:	*
T0

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_ff977d64b9ab4fef940bd24b9ad557e1/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
 
save_1/SaveV2/tensor_namesConst*
dtype0*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes	
:
і
save_1/SaveV2/shape_and_slicesConst*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:
П
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1main/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1main/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1main/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1main/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1main/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qc_var/dense/biastarget/qc_var/dense/kerneltarget/qc_var/dense_1/biastarget/qc_var/dense_1/kerneltarget/qc_var/dense_2/biastarget/qc_var/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*
T0*

axis *
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
Ѓ
save_1/RestoreV2/tensor_namesConst*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0*
_output_shapes	
:
љ
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:
И
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2
Ї
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias
­
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
use_locking(*
T0
Ќ
save_1/Assign_2Assignbeta1_power_2save_1/RestoreV2:2*
T0*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(
Ќ
save_1/Assign_3Assignbeta1_power_3save_1/RestoreV2:3*
T0*$
_class
loc:@costpen/soft_beta*
use_locking(*
_output_shapes
: *
validate_shape(
Ћ
save_1/Assign_4Assignbeta2_powersave_1/RestoreV2:4*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
validate_shape(*
use_locking(*
T0
­
save_1/Assign_5Assignbeta2_power_1save_1/RestoreV2:5*
use_locking(*
validate_shape(*
_output_shapes
: *
T0*%
_class
loc:@main/qc/dense/bias
Ќ
save_1/Assign_6Assignbeta2_power_2save_1/RestoreV2:6*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha
Ќ
save_1/Assign_7Assignbeta2_power_3save_1/RestoreV2:7*
T0*$
_class
loc:@costpen/soft_beta*
use_locking(*
_output_shapes
: *
validate_shape(
А
save_1/Assign_8Assigncostpen/soft_betasave_1/RestoreV2:8*
use_locking(*
_output_shapes
: *
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta
Е
save_1/Assign_9Assigncostpen/soft_beta/Adamsave_1/RestoreV2:9*
validate_shape(*
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta*
use_locking(
Й
save_1/Assign_10Assigncostpen/soft_beta/Adam_1save_1/RestoreV2:10*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
В
save_1/Assign_11Assignentreg/soft_alphasave_1/RestoreV2:11*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: 
З
save_1/Assign_12Assignentreg/soft_alpha/Adamsave_1/RestoreV2:12*
T0*
validate_shape(*
use_locking(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
Й
save_1/Assign_13Assignentreg/soft_alpha/Adam_1save_1/RestoreV2:13*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
T0*
use_locking(*
_output_shapes
: 
Й
save_1/Assign_14Assignmain/pi/dense/biassave_1/RestoreV2:14*%
_class
loc:@main/pi/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
О
save_1/Assign_15Assignmain/pi/dense/bias/Adamsave_1/RestoreV2:15*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes	
:
Р
save_1/Assign_16Assignmain/pi/dense/bias/Adam_1save_1/RestoreV2:16*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
С
save_1/Assign_17Assignmain/pi/dense/kernelsave_1/RestoreV2:17*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
T0*
validate_shape(
Ц
save_1/Assign_18Assignmain/pi/dense/kernel/Adamsave_1/RestoreV2:18*
validate_shape(*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
T0*
use_locking(
Ш
save_1/Assign_19Assignmain/pi/dense/kernel/Adam_1save_1/RestoreV2:19*
_output_shapes
:	<*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/pi/dense/kernel
Н
save_1/Assign_20Assignmain/pi/dense_1/biassave_1/RestoreV2:20*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias
Т
save_1/Assign_21Assignmain/pi/dense_1/bias/Adamsave_1/RestoreV2:21*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0
Ф
save_1/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_1/RestoreV2:22*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
T0*
_output_shapes	
:*
use_locking(
Ц
save_1/Assign_23Assignmain/pi/dense_1/kernelsave_1/RestoreV2:23*
T0*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Ы
save_1/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_1/RestoreV2:24*
T0*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
use_locking(
Э
save_1/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_1/RestoreV2:25*
use_locking(*
T0* 
_output_shapes
:
*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel
М
save_1/Assign_26Assignmain/pi/dense_2/biassave_1/RestoreV2:26*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*'
_class
loc:@main/pi/dense_2/bias
С
save_1/Assign_27Assignmain/pi/dense_2/bias/Adamsave_1/RestoreV2:27*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(
У
save_1/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_1/RestoreV2:28*
T0*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:
Х
save_1/Assign_29Assignmain/pi/dense_2/kernelsave_1/RestoreV2:29*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	
Ъ
save_1/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_1/RestoreV2:30*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel
Ь
save_1/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_1/RestoreV2:31*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(*
_output_shapes
:	
М
save_1/Assign_32Assignmain/pi/dense_3/biassave_1/RestoreV2:32*
validate_shape(*
T0*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
С
save_1/Assign_33Assignmain/pi/dense_3/bias/Adamsave_1/RestoreV2:33*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
T0*
_output_shapes
:*
validate_shape(
У
save_1/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_1/RestoreV2:34*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
Х
save_1/Assign_35Assignmain/pi/dense_3/kernelsave_1/RestoreV2:35*
T0*
_output_shapes
:	*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(
Ъ
save_1/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_1/RestoreV2:36*
_output_shapes
:	*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
T0
Ь
save_1/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_1/RestoreV2:37*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	
Й
save_1/Assign_38Assignmain/qc/dense/biassave_1/RestoreV2:38*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
use_locking(
О
save_1/Assign_39Assignmain/qc/dense/bias/Adamsave_1/RestoreV2:39*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*%
_class
loc:@main/qc/dense/bias
Р
save_1/Assign_40Assignmain/qc/dense/bias/Adam_1save_1/RestoreV2:40*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
С
save_1/Assign_41Assignmain/qc/dense/kernelsave_1/RestoreV2:41*
_output_shapes
:	>*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(*
validate_shape(
Ц
save_1/Assign_42Assignmain/qc/dense/kernel/Adamsave_1/RestoreV2:42*
validate_shape(*
T0*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
_output_shapes
:	>
Ш
save_1/Assign_43Assignmain/qc/dense/kernel/Adam_1save_1/RestoreV2:43*
_output_shapes
:	>*
T0*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
use_locking(
Н
save_1/Assign_44Assignmain/qc/dense_1/biassave_1/RestoreV2:44*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
_output_shapes	
:*
T0
Т
save_1/Assign_45Assignmain/qc/dense_1/bias/Adamsave_1/RestoreV2:45*
use_locking(*
validate_shape(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0
Ф
save_1/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_1/RestoreV2:46*
use_locking(*
T0*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
_output_shapes	
:
Ц
save_1/Assign_47Assignmain/qc/dense_1/kernelsave_1/RestoreV2:47* 
_output_shapes
:
*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
T0
Ы
save_1/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_1/RestoreV2:48*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
Э
save_1/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_1/RestoreV2:49* 
_output_shapes
:
*
validate_shape(*
T0*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(
М
save_1/Assign_50Assignmain/qc/dense_2/biassave_1/RestoreV2:50*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
T0*
validate_shape(
С
save_1/Assign_51Assignmain/qc/dense_2/bias/Adamsave_1/RestoreV2:51*
use_locking(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0*
validate_shape(
У
save_1/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_1/RestoreV2:52*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias
Х
save_1/Assign_53Assignmain/qc/dense_2/kernelsave_1/RestoreV2:53*
use_locking(*
T0*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
validate_shape(
Ъ
save_1/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_1/RestoreV2:54*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
Ь
save_1/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_1/RestoreV2:55*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel
С
save_1/Assign_56Assignmain/qc_var/dense/biassave_1/RestoreV2:56*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*)
_class
loc:@main/qc_var/dense/bias
Ц
save_1/Assign_57Assignmain/qc_var/dense/bias/Adamsave_1/RestoreV2:57*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(*)
_class
loc:@main/qc_var/dense/bias
Ш
save_1/Assign_58Assignmain/qc_var/dense/bias/Adam_1save_1/RestoreV2:58*
validate_shape(*
T0*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:*
use_locking(
Щ
save_1/Assign_59Assignmain/qc_var/dense/kernelsave_1/RestoreV2:59*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
use_locking(*
validate_shape(
Ю
save_1/Assign_60Assignmain/qc_var/dense/kernel/Adamsave_1/RestoreV2:60*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:	>
а
save_1/Assign_61Assignmain/qc_var/dense/kernel/Adam_1save_1/RestoreV2:61*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
_output_shapes
:	>*
use_locking(*
validate_shape(
Х
save_1/Assign_62Assignmain/qc_var/dense_1/biassave_1/RestoreV2:62*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
use_locking(*
validate_shape(*
T0
Ъ
save_1/Assign_63Assignmain/qc_var/dense_1/bias/Adamsave_1/RestoreV2:63*
validate_shape(*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
use_locking(*
T0
Ь
save_1/Assign_64Assignmain/qc_var/dense_1/bias/Adam_1save_1/RestoreV2:64*+
_class!
loc:@main/qc_var/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ю
save_1/Assign_65Assignmain/qc_var/dense_1/kernelsave_1/RestoreV2:65*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

г
save_1/Assign_66Assignmain/qc_var/dense_1/kernel/Adamsave_1/RestoreV2:66*
use_locking(*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:
*
T0
е
save_1/Assign_67Assign!main/qc_var/dense_1/kernel/Adam_1save_1/RestoreV2:67*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ф
save_1/Assign_68Assignmain/qc_var/dense_2/biassave_1/RestoreV2:68*
T0*
validate_shape(*
use_locking(*
_output_shapes
:*+
_class!
loc:@main/qc_var/dense_2/bias
Щ
save_1/Assign_69Assignmain/qc_var/dense_2/bias/Adamsave_1/RestoreV2:69*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
Ы
save_1/Assign_70Assignmain/qc_var/dense_2/bias/Adam_1save_1/RestoreV2:70*
T0*+
_class!
loc:@main/qc_var/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
Э
save_1/Assign_71Assignmain/qc_var/dense_2/kernelsave_1/RestoreV2:71*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
в
save_1/Assign_72Assignmain/qc_var/dense_2/kernel/Adamsave_1/RestoreV2:72*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
д
save_1/Assign_73Assign!main/qc_var/dense_2/kernel/Adam_1save_1/RestoreV2:73*
_output_shapes
:	*
use_locking(*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel*
validate_shape(
Л
save_1/Assign_74Assignmain/qr1/dense/biassave_1/RestoreV2:74*
_output_shapes	
:*
T0*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
validate_shape(
Р
save_1/Assign_75Assignmain/qr1/dense/bias/Adamsave_1/RestoreV2:75*
use_locking(*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
T0*
_output_shapes	
:
Т
save_1/Assign_76Assignmain/qr1/dense/bias/Adam_1save_1/RestoreV2:76*
_output_shapes	
:*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
T0
У
save_1/Assign_77Assignmain/qr1/dense/kernelsave_1/RestoreV2:77*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
T0
Ш
save_1/Assign_78Assignmain/qr1/dense/kernel/Adamsave_1/RestoreV2:78*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
use_locking(*
T0*
validate_shape(
Ъ
save_1/Assign_79Assignmain/qr1/dense/kernel/Adam_1save_1/RestoreV2:79*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0
П
save_1/Assign_80Assignmain/qr1/dense_1/biassave_1/RestoreV2:80*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
T0*
_output_shapes	
:*
validate_shape(
Ф
save_1/Assign_81Assignmain/qr1/dense_1/bias/Adamsave_1/RestoreV2:81*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
T0*
validate_shape(
Ц
save_1/Assign_82Assignmain/qr1/dense_1/bias/Adam_1save_1/RestoreV2:82*
T0*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:
Ш
save_1/Assign_83Assignmain/qr1/dense_1/kernelsave_1/RestoreV2:83*
T0*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:

Э
save_1/Assign_84Assignmain/qr1/dense_1/kernel/Adamsave_1/RestoreV2:84*
use_locking(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
validate_shape(
Я
save_1/Assign_85Assignmain/qr1/dense_1/kernel/Adam_1save_1/RestoreV2:85*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
О
save_1/Assign_86Assignmain/qr1/dense_2/biassave_1/RestoreV2:86*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
T0*
validate_shape(
У
save_1/Assign_87Assignmain/qr1/dense_2/bias/Adamsave_1/RestoreV2:87*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:
Х
save_1/Assign_88Assignmain/qr1/dense_2/bias/Adam_1save_1/RestoreV2:88*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Ч
save_1/Assign_89Assignmain/qr1/dense_2/kernelsave_1/RestoreV2:89*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Ь
save_1/Assign_90Assignmain/qr1/dense_2/kernel/Adamsave_1/RestoreV2:90**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
Ю
save_1/Assign_91Assignmain/qr1/dense_2/kernel/Adam_1save_1/RestoreV2:91*
use_locking(*
_output_shapes
:	*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel
Л
save_1/Assign_92Assignmain/qr2/dense/biassave_1/RestoreV2:92*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Р
save_1/Assign_93Assignmain/qr2/dense/bias/Adamsave_1/RestoreV2:93*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias
Т
save_1/Assign_94Assignmain/qr2/dense/bias/Adam_1save_1/RestoreV2:94*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
У
save_1/Assign_95Assignmain/qr2/dense/kernelsave_1/RestoreV2:95*
validate_shape(*
_output_shapes
:	>*
use_locking(*
T0*(
_class
loc:@main/qr2/dense/kernel
Ш
save_1/Assign_96Assignmain/qr2/dense/kernel/Adamsave_1/RestoreV2:96*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(
Ъ
save_1/Assign_97Assignmain/qr2/dense/kernel/Adam_1save_1/RestoreV2:97*
_output_shapes
:	>*
T0*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel
П
save_1/Assign_98Assignmain/qr2/dense_1/biassave_1/RestoreV2:98*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
_output_shapes	
:*
T0
Ф
save_1/Assign_99Assignmain/qr2/dense_1/bias/Adamsave_1/RestoreV2:99*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias
Ш
save_1/Assign_100Assignmain/qr2/dense_1/bias/Adam_1save_1/RestoreV2:100*
T0*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
use_locking(
Ъ
save_1/Assign_101Assignmain/qr2/dense_1/kernelsave_1/RestoreV2:101* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel
Я
save_1/Assign_102Assignmain/qr2/dense_1/kernel/Adamsave_1/RestoreV2:102*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
validate_shape(
б
save_1/Assign_103Assignmain/qr2/dense_1/kernel/Adam_1save_1/RestoreV2:103*
T0*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Р
save_1/Assign_104Assignmain/qr2/dense_2/biassave_1/RestoreV2:104*
use_locking(*
T0*
validate_shape(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias
Х
save_1/Assign_105Assignmain/qr2/dense_2/bias/Adamsave_1/RestoreV2:105*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
Ч
save_1/Assign_106Assignmain/qr2/dense_2/bias/Adam_1save_1/RestoreV2:106*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
Щ
save_1/Assign_107Assignmain/qr2/dense_2/kernelsave_1/RestoreV2:107*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	*
T0
Ю
save_1/Assign_108Assignmain/qr2/dense_2/kernel/Adamsave_1/RestoreV2:108**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	
а
save_1/Assign_109Assignmain/qr2/dense_2/kernel/Adam_1save_1/RestoreV2:109*
_output_shapes
:	*
use_locking(*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_2/kernel
П
save_1/Assign_110Assigntarget/qc/dense/biassave_1/RestoreV2:110*
T0*
_output_shapes	
:*
validate_shape(*'
_class
loc:@target/qc/dense/bias*
use_locking(
Ч
save_1/Assign_111Assigntarget/qc/dense/kernelsave_1/RestoreV2:111*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(*)
_class
loc:@target/qc/dense/kernel
У
save_1/Assign_112Assigntarget/qc/dense_1/biassave_1/RestoreV2:112*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*)
_class
loc:@target/qc/dense_1/bias
Ь
save_1/Assign_113Assigntarget/qc/dense_1/kernelsave_1/RestoreV2:113*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel
Т
save_1/Assign_114Assigntarget/qc/dense_2/biassave_1/RestoreV2:114*
use_locking(*
_output_shapes
:*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias*
T0
Ы
save_1/Assign_115Assigntarget/qc/dense_2/kernelsave_1/RestoreV2:115*
_output_shapes
:	*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
validate_shape(
Ч
save_1/Assign_116Assigntarget/qc_var/dense/biassave_1/RestoreV2:116*
use_locking(*+
_class!
loc:@target/qc_var/dense/bias*
T0*
_output_shapes	
:*
validate_shape(
Я
save_1/Assign_117Assigntarget/qc_var/dense/kernelsave_1/RestoreV2:117*
T0*-
_class#
!loc:@target/qc_var/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(
Ы
save_1/Assign_118Assigntarget/qc_var/dense_1/biassave_1/RestoreV2:118*
validate_shape(*-
_class#
!loc:@target/qc_var/dense_1/bias*
use_locking(*
_output_shapes	
:*
T0
д
save_1/Assign_119Assigntarget/qc_var/dense_1/kernelsave_1/RestoreV2:119*/
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:
*
use_locking(*
T0*
validate_shape(
Ъ
save_1/Assign_120Assigntarget/qc_var/dense_2/biassave_1/RestoreV2:120*
use_locking(*
_output_shapes
:*
T0*-
_class#
!loc:@target/qc_var/dense_2/bias*
validate_shape(
г
save_1/Assign_121Assigntarget/qc_var/dense_2/kernelsave_1/RestoreV2:121*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*/
_class%
#!loc:@target/qc_var/dense_2/kernel
С
save_1/Assign_122Assigntarget/qr1/dense/biassave_1/RestoreV2:122*
validate_shape(*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:*
T0*
use_locking(
Щ
save_1/Assign_123Assigntarget/qr1/dense/kernelsave_1/RestoreV2:123**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(*
use_locking(
Х
save_1/Assign_124Assigntarget/qr1/dense_1/biassave_1/RestoreV2:124*
validate_shape(*
use_locking(**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
T0
Ю
save_1/Assign_125Assigntarget/qr1/dense_1/kernelsave_1/RestoreV2:125*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel
Ф
save_1/Assign_126Assigntarget/qr1/dense_2/biassave_1/RestoreV2:126*
_output_shapes
:*
T0**
_class 
loc:@target/qr1/dense_2/bias*
validate_shape(*
use_locking(
Э
save_1/Assign_127Assigntarget/qr1/dense_2/kernelsave_1/RestoreV2:127*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(
С
save_1/Assign_128Assigntarget/qr2/dense/biassave_1/RestoreV2:128*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Щ
save_1/Assign_129Assigntarget/qr2/dense/kernelsave_1/RestoreV2:129**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(*
T0
Х
save_1/Assign_130Assigntarget/qr2/dense_1/biassave_1/RestoreV2:130*
_output_shapes	
:**
_class 
loc:@target/qr2/dense_1/bias*
validate_shape(*
T0*
use_locking(
Ю
save_1/Assign_131Assigntarget/qr2/dense_1/kernelsave_1/RestoreV2:131*
use_locking(* 
_output_shapes
:
*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
validate_shape(
Ф
save_1/Assign_132Assigntarget/qr2/dense_2/biassave_1/RestoreV2:132*
use_locking(**
_class 
loc:@target/qr2/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
Э
save_1/Assign_133Assigntarget/qr2/dense_2/kernelsave_1/RestoreV2:133*
_output_shapes
:	*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
T0
Є
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_13^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
dtype0*
shape: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_7d8faec2970343f1af77e26c00c5cc5e/part*
_output_shapes
: *
dtype0
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_2/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
 
save_2/SaveV2/tensor_namesConst*
dtype0*
_output_shapes	
:*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
і
save_2/SaveV2/shape_and_slicesConst*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:
П
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1main/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1main/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1main/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1main/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1main/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qc_var/dense/biastarget/qc_var/dense/kerneltarget/qc_var/dense_1/biastarget/qc_var/dense_1/kerneltarget/qc_var/dense_2/biastarget/qc_var/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
Ѓ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
_output_shapes
:*

axis *
N*
T0

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
Ѓ
save_2/RestoreV2/tensor_namesConst*
dtype0*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes	
:
љ
!save_2/RestoreV2/shape_and_slicesConst*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:*
dtype0
И
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Ї
save_2/AssignAssignbeta1_powersave_2/RestoreV2*%
_class
loc:@main/pi/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
­
save_2/Assign_1Assignbeta1_power_1save_2/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias
Ќ
save_2/Assign_2Assignbeta1_power_2save_2/RestoreV2:2*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
validate_shape(*
use_locking(
Ќ
save_2/Assign_3Assignbeta1_power_3save_2/RestoreV2:3*
T0*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
use_locking(
Ћ
save_2/Assign_4Assignbeta2_powersave_2/RestoreV2:4*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(
­
save_2/Assign_5Assignbeta2_power_1save_2/RestoreV2:5*
use_locking(*
T0*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
validate_shape(
Ќ
save_2/Assign_6Assignbeta2_power_2save_2/RestoreV2:6*
T0*
validate_shape(*
_output_shapes
: *
use_locking(*$
_class
loc:@entreg/soft_alpha
Ќ
save_2/Assign_7Assignbeta2_power_3save_2/RestoreV2:7*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0*
use_locking(*
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
save_2/Assign_9Assigncostpen/soft_beta/Adamsave_2/RestoreV2:9*
_output_shapes
: *
use_locking(*
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
save_2/Assign_11Assignentreg/soft_alphasave_2/RestoreV2:11*
_output_shapes
: *
validate_shape(*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha
З
save_2/Assign_12Assignentreg/soft_alpha/Adamsave_2/RestoreV2:12*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
validate_shape(
Й
save_2/Assign_13Assignentreg/soft_alpha/Adam_1save_2/RestoreV2:13*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
Й
save_2/Assign_14Assignmain/pi/dense/biassave_2/RestoreV2:14*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*%
_class
loc:@main/pi/dense/bias
О
save_2/Assign_15Assignmain/pi/dense/bias/Adamsave_2/RestoreV2:15*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
Р
save_2/Assign_16Assignmain/pi/dense/bias/Adam_1save_2/RestoreV2:16*
_output_shapes	
:*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias*
validate_shape(
С
save_2/Assign_17Assignmain/pi/dense/kernelsave_2/RestoreV2:17*
_output_shapes
:	<*
validate_shape(*
T0*
use_locking(*'
_class
loc:@main/pi/dense/kernel
Ц
save_2/Assign_18Assignmain/pi/dense/kernel/Adamsave_2/RestoreV2:18*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
_output_shapes
:	<*
use_locking(*
T0
Ш
save_2/Assign_19Assignmain/pi/dense/kernel/Adam_1save_2/RestoreV2:19*
validate_shape(*
use_locking(*
_output_shapes
:	<*
T0*'
_class
loc:@main/pi/dense/kernel
Н
save_2/Assign_20Assignmain/pi/dense_1/biassave_2/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Т
save_2/Assign_21Assignmain/pi/dense_1/bias/Adamsave_2/RestoreV2:21*
use_locking(*
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
validate_shape(
Ф
save_2/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_2/RestoreV2:22*
_output_shapes	
:*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
validate_shape(
Ц
save_2/Assign_23Assignmain/pi/dense_1/kernelsave_2/RestoreV2:23*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:

Ы
save_2/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_2/RestoreV2:24* 
_output_shapes
:
*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
T0
Э
save_2/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_2/RestoreV2:25*
T0* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(
М
save_2/Assign_26Assignmain/pi/dense_2/biassave_2/RestoreV2:26*
validate_shape(*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
T0
С
save_2/Assign_27Assignmain/pi/dense_2/bias/Adamsave_2/RestoreV2:27*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
У
save_2/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_2/RestoreV2:28*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
T0
Х
save_2/Assign_29Assignmain/pi/dense_2/kernelsave_2/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(
Ъ
save_2/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_2/RestoreV2:30*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
use_locking(*
validate_shape(
Ь
save_2/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_2/RestoreV2:31*
_output_shapes
:	*
T0*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(
М
save_2/Assign_32Assignmain/pi/dense_3/biassave_2/RestoreV2:32*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
use_locking(*
validate_shape(
С
save_2/Assign_33Assignmain/pi/dense_3/bias/Adamsave_2/RestoreV2:33*
T0*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
use_locking(
У
save_2/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_2/RestoreV2:34*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
Х
save_2/Assign_35Assignmain/pi/dense_3/kernelsave_2/RestoreV2:35*
T0*
use_locking(*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(
Ъ
save_2/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_2/RestoreV2:36*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
T0*
use_locking(
Ь
save_2/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_2/RestoreV2:37*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	*
use_locking(*
T0
Й
save_2/Assign_38Assignmain/qc/dense/biassave_2/RestoreV2:38*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
О
save_2/Assign_39Assignmain/qc/dense/bias/Adamsave_2/RestoreV2:39*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias
Р
save_2/Assign_40Assignmain/qc/dense/bias/Adam_1save_2/RestoreV2:40*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
T0*
validate_shape(*
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
save_2/Assign_42Assignmain/qc/dense/kernel/Adamsave_2/RestoreV2:42*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(
Ш
save_2/Assign_43Assignmain/qc/dense/kernel/Adam_1save_2/RestoreV2:43*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
T0*
use_locking(
Н
save_2/Assign_44Assignmain/qc/dense_1/biassave_2/RestoreV2:44*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
T0
Т
save_2/Assign_45Assignmain/qc/dense_1/bias/Adamsave_2/RestoreV2:45*
use_locking(*
_output_shapes	
:*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
T0
Ф
save_2/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_2/RestoreV2:46*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:*
T0
Ц
save_2/Assign_47Assignmain/qc/dense_1/kernelsave_2/RestoreV2:47*
validate_shape(*
T0* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel
Ы
save_2/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_2/RestoreV2:48*
use_locking(* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel*
T0*
validate_shape(
Э
save_2/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_2/RestoreV2:49*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
*)
_class
loc:@main/qc/dense_1/kernel
М
save_2/Assign_50Assignmain/qc/dense_2/biassave_2/RestoreV2:50*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
С
save_2/Assign_51Assignmain/qc/dense_2/bias/Adamsave_2/RestoreV2:51*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
У
save_2/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_2/RestoreV2:52*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias
Х
save_2/Assign_53Assignmain/qc/dense_2/kernelsave_2/RestoreV2:53*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
Ъ
save_2/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_2/RestoreV2:54*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
Ь
save_2/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_2/RestoreV2:55*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(
С
save_2/Assign_56Assignmain/qc_var/dense/biassave_2/RestoreV2:56*
_output_shapes	
:*
validate_shape(*)
_class
loc:@main/qc_var/dense/bias*
use_locking(*
T0
Ц
save_2/Assign_57Assignmain/qc_var/dense/bias/Adamsave_2/RestoreV2:57*
_output_shapes	
:*
use_locking(*)
_class
loc:@main/qc_var/dense/bias*
validate_shape(*
T0
Ш
save_2/Assign_58Assignmain/qc_var/dense/bias/Adam_1save_2/RestoreV2:58*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Щ
save_2/Assign_59Assignmain/qc_var/dense/kernelsave_2/RestoreV2:59*
T0*+
_class!
loc:@main/qc_var/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(
Ю
save_2/Assign_60Assignmain/qc_var/dense/kernel/Adamsave_2/RestoreV2:60*
T0*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:	>*
validate_shape(*
use_locking(
а
save_2/Assign_61Assignmain/qc_var/dense/kernel/Adam_1save_2/RestoreV2:61*
validate_shape(*
_output_shapes
:	>*
use_locking(*
T0*+
_class!
loc:@main/qc_var/dense/kernel
Х
save_2/Assign_62Assignmain/qc_var/dense_1/biassave_2/RestoreV2:62*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*+
_class!
loc:@main/qc_var/dense_1/bias
Ъ
save_2/Assign_63Assignmain/qc_var/dense_1/bias/Adamsave_2/RestoreV2:63*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ь
save_2/Assign_64Assignmain/qc_var/dense_1/bias/Adam_1save_2/RestoreV2:64*
use_locking(*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
validate_shape(*
T0
Ю
save_2/Assign_65Assignmain/qc_var/dense_1/kernelsave_2/RestoreV2:65*
use_locking(*
T0* 
_output_shapes
:
*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel
г
save_2/Assign_66Assignmain/qc_var/dense_1/kernel/Adamsave_2/RestoreV2:66*
T0*-
_class#
!loc:@main/qc_var/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
use_locking(
е
save_2/Assign_67Assign!main/qc_var/dense_1/kernel/Adam_1save_2/RestoreV2:67*
validate_shape(* 
_output_shapes
:
*
use_locking(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0
Ф
save_2/Assign_68Assignmain/qc_var/dense_2/biassave_2/RestoreV2:68*
use_locking(*
validate_shape(*
_output_shapes
:*+
_class!
loc:@main/qc_var/dense_2/bias*
T0
Щ
save_2/Assign_69Assignmain/qc_var/dense_2/bias/Adamsave_2/RestoreV2:69*
use_locking(*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
Ы
save_2/Assign_70Assignmain/qc_var/dense_2/bias/Adam_1save_2/RestoreV2:70*
validate_shape(*
_output_shapes
:*+
_class!
loc:@main/qc_var/dense_2/bias*
use_locking(*
T0
Э
save_2/Assign_71Assignmain/qc_var/dense_2/kernelsave_2/RestoreV2:71*
use_locking(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(
в
save_2/Assign_72Assignmain/qc_var/dense_2/kernel/Adamsave_2/RestoreV2:72*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel
д
save_2/Assign_73Assign!main/qc_var/dense_2/kernel/Adam_1save_2/RestoreV2:73*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel
Л
save_2/Assign_74Assignmain/qr1/dense/biassave_2/RestoreV2:74*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
_output_shapes	
:*
T0
Р
save_2/Assign_75Assignmain/qr1/dense/bias/Adamsave_2/RestoreV2:75*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*&
_class
loc:@main/qr1/dense/bias
Т
save_2/Assign_76Assignmain/qr1/dense/bias/Adam_1save_2/RestoreV2:76*
T0*
use_locking(*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:
У
save_2/Assign_77Assignmain/qr1/dense/kernelsave_2/RestoreV2:77*
T0*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
_output_shapes
:	>*
validate_shape(
Ш
save_2/Assign_78Assignmain/qr1/dense/kernel/Adamsave_2/RestoreV2:78*
validate_shape(*
use_locking(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
T0
Ъ
save_2/Assign_79Assignmain/qr1/dense/kernel/Adam_1save_2/RestoreV2:79*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(
П
save_2/Assign_80Assignmain/qr1/dense_1/biassave_2/RestoreV2:80*
T0*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
_output_shapes	
:
Ф
save_2/Assign_81Assignmain/qr1/dense_1/bias/Adamsave_2/RestoreV2:81*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
_output_shapes	
:
Ц
save_2/Assign_82Assignmain/qr1/dense_1/bias/Adam_1save_2/RestoreV2:82*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0
Ш
save_2/Assign_83Assignmain/qr1/dense_1/kernelsave_2/RestoreV2:83* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(*
validate_shape(*
T0
Э
save_2/Assign_84Assignmain/qr1/dense_1/kernel/Adamsave_2/RestoreV2:84*
T0*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(
Я
save_2/Assign_85Assignmain/qr1/dense_1/kernel/Adam_1save_2/RestoreV2:85*
T0*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(
О
save_2/Assign_86Assignmain/qr1/dense_2/biassave_2/RestoreV2:86*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias
У
save_2/Assign_87Assignmain/qr1/dense_2/bias/Adamsave_2/RestoreV2:87*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
Х
save_2/Assign_88Assignmain/qr1/dense_2/bias/Adam_1save_2/RestoreV2:88*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias
Ч
save_2/Assign_89Assignmain/qr1/dense_2/kernelsave_2/RestoreV2:89**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(
Ь
save_2/Assign_90Assignmain/qr1/dense_2/kernel/Adamsave_2/RestoreV2:90*
_output_shapes
:	*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
use_locking(
Ю
save_2/Assign_91Assignmain/qr1/dense_2/kernel/Adam_1save_2/RestoreV2:91*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	**
_class 
loc:@main/qr1/dense_2/kernel
Л
save_2/Assign_92Assignmain/qr2/dense/biassave_2/RestoreV2:92*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0*
_output_shapes	
:
Р
save_2/Assign_93Assignmain/qr2/dense/bias/Adamsave_2/RestoreV2:93*
T0*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:*
validate_shape(
Т
save_2/Assign_94Assignmain/qr2/dense/bias/Adam_1save_2/RestoreV2:94*
_output_shapes	
:*
T0*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(
У
save_2/Assign_95Assignmain/qr2/dense/kernelsave_2/RestoreV2:95*
validate_shape(*
use_locking(*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0
Ш
save_2/Assign_96Assignmain/qr2/dense/kernel/Adamsave_2/RestoreV2:96*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	>
Ъ
save_2/Assign_97Assignmain/qr2/dense/kernel/Adam_1save_2/RestoreV2:97*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>
П
save_2/Assign_98Assignmain/qr2/dense_1/biassave_2/RestoreV2:98*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Ф
save_2/Assign_99Assignmain/qr2/dense_1/bias/Adamsave_2/RestoreV2:99*
_output_shapes	
:*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0
Ш
save_2/Assign_100Assignmain/qr2/dense_1/bias/Adam_1save_2/RestoreV2:100*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
T0*
validate_shape(
Ъ
save_2/Assign_101Assignmain/qr2/dense_1/kernelsave_2/RestoreV2:101*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0
Я
save_2/Assign_102Assignmain/qr2/dense_1/kernel/Adamsave_2/RestoreV2:102* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
use_locking(*
validate_shape(
б
save_2/Assign_103Assignmain/qr2/dense_1/kernel/Adam_1save_2/RestoreV2:103*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_1/kernel
Р
save_2/Assign_104Assignmain/qr2/dense_2/biassave_2/RestoreV2:104*
use_locking(*
T0*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias
Х
save_2/Assign_105Assignmain/qr2/dense_2/bias/Adamsave_2/RestoreV2:105*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0
Ч
save_2/Assign_106Assignmain/qr2/dense_2/bias/Adam_1save_2/RestoreV2:106*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
Щ
save_2/Assign_107Assignmain/qr2/dense_2/kernelsave_2/RestoreV2:107**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0
Ю
save_2/Assign_108Assignmain/qr2/dense_2/kernel/Adamsave_2/RestoreV2:108**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	
а
save_2/Assign_109Assignmain/qr2/dense_2/kernel/Adam_1save_2/RestoreV2:109*
use_locking(*
validate_shape(*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
T0
П
save_2/Assign_110Assigntarget/qc/dense/biassave_2/RestoreV2:110*
_output_shapes	
:*'
_class
loc:@target/qc/dense/bias*
use_locking(*
T0*
validate_shape(
Ч
save_2/Assign_111Assigntarget/qc/dense/kernelsave_2/RestoreV2:111*
_output_shapes
:	>*
validate_shape(*
use_locking(*
T0*)
_class
loc:@target/qc/dense/kernel
У
save_2/Assign_112Assigntarget/qc/dense_1/biassave_2/RestoreV2:112*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:*)
_class
loc:@target/qc/dense_1/bias
Ь
save_2/Assign_113Assigntarget/qc/dense_1/kernelsave_2/RestoreV2:113* 
_output_shapes
:
*
T0*+
_class!
loc:@target/qc/dense_1/kernel*
use_locking(*
validate_shape(
Т
save_2/Assign_114Assigntarget/qc/dense_2/biassave_2/RestoreV2:114*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*)
_class
loc:@target/qc/dense_2/bias
Ы
save_2/Assign_115Assigntarget/qc/dense_2/kernelsave_2/RestoreV2:115*
_output_shapes
:	*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
validate_shape(*
T0
Ч
save_2/Assign_116Assigntarget/qc_var/dense/biassave_2/RestoreV2:116*+
_class!
loc:@target/qc_var/dense/bias*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(
Я
save_2/Assign_117Assigntarget/qc_var/dense/kernelsave_2/RestoreV2:117*
T0*
_output_shapes
:	>*-
_class#
!loc:@target/qc_var/dense/kernel*
use_locking(*
validate_shape(
Ы
save_2/Assign_118Assigntarget/qc_var/dense_1/biassave_2/RestoreV2:118*
_output_shapes	
:*-
_class#
!loc:@target/qc_var/dense_1/bias*
T0*
validate_shape(*
use_locking(
д
save_2/Assign_119Assigntarget/qc_var/dense_1/kernelsave_2/RestoreV2:119*
use_locking(*/
_class%
#!loc:@target/qc_var/dense_1/kernel*
T0* 
_output_shapes
:
*
validate_shape(
Ъ
save_2/Assign_120Assigntarget/qc_var/dense_2/biassave_2/RestoreV2:120*
T0*
use_locking(*
_output_shapes
:*-
_class#
!loc:@target/qc_var/dense_2/bias*
validate_shape(
г
save_2/Assign_121Assigntarget/qc_var/dense_2/kernelsave_2/RestoreV2:121*
T0*
use_locking(*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
_output_shapes
:	*
validate_shape(
С
save_2/Assign_122Assigntarget/qr1/dense/biassave_2/RestoreV2:122*(
_class
loc:@target/qr1/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Щ
save_2/Assign_123Assigntarget/qr1/dense/kernelsave_2/RestoreV2:123*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel*
T0*
validate_shape(*
use_locking(
Х
save_2/Assign_124Assigntarget/qr1/dense_1/biassave_2/RestoreV2:124**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ю
save_2/Assign_125Assigntarget/qr1/dense_1/kernelsave_2/RestoreV2:125*
validate_shape(*
use_locking(* 
_output_shapes
:
*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0
Ф
save_2/Assign_126Assigntarget/qr1/dense_2/biassave_2/RestoreV2:126*
_output_shapes
:*
T0**
_class 
loc:@target/qr1/dense_2/bias*
validate_shape(*
use_locking(
Э
save_2/Assign_127Assigntarget/qr1/dense_2/kernelsave_2/RestoreV2:127*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(*
T0*
_output_shapes
:	*
use_locking(
С
save_2/Assign_128Assigntarget/qr2/dense/biassave_2/RestoreV2:128*
T0*
use_locking(*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:*
validate_shape(
Щ
save_2/Assign_129Assigntarget/qr2/dense/kernelsave_2/RestoreV2:129**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
T0*
_output_shapes
:	>*
validate_shape(
Х
save_2/Assign_130Assigntarget/qr2/dense_1/biassave_2/RestoreV2:130*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(**
_class 
loc:@target/qr2/dense_1/bias
Ю
save_2/Assign_131Assigntarget/qr2/dense_1/kernelsave_2/RestoreV2:131* 
_output_shapes
:
*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
use_locking(*
validate_shape(
Ф
save_2/Assign_132Assigntarget/qr2/dense_2/biassave_2/RestoreV2:132*
T0**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(
Э
save_2/Assign_133Assigntarget/qr2/dense_2/kernelsave_2/RestoreV2:133*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
Є
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_100^save_2/Assign_101^save_2/Assign_102^save_2/Assign_103^save_2/Assign_104^save_2/Assign_105^save_2/Assign_106^save_2/Assign_107^save_2/Assign_108^save_2/Assign_109^save_2/Assign_11^save_2/Assign_110^save_2/Assign_111^save_2/Assign_112^save_2/Assign_113^save_2/Assign_114^save_2/Assign_115^save_2/Assign_116^save_2/Assign_117^save_2/Assign_118^save_2/Assign_119^save_2/Assign_12^save_2/Assign_120^save_2/Assign_121^save_2/Assign_122^save_2/Assign_123^save_2/Assign_124^save_2/Assign_125^save_2/Assign_126^save_2/Assign_127^save_2/Assign_128^save_2/Assign_129^save_2/Assign_13^save_2/Assign_130^save_2/Assign_131^save_2/Assign_132^save_2/Assign_133^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_4^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49^save_2/Assign_5^save_2/Assign_50^save_2/Assign_51^save_2/Assign_52^save_2/Assign_53^save_2/Assign_54^save_2/Assign_55^save_2/Assign_56^save_2/Assign_57^save_2/Assign_58^save_2/Assign_59^save_2/Assign_6^save_2/Assign_60^save_2/Assign_61^save_2/Assign_62^save_2/Assign_63^save_2/Assign_64^save_2/Assign_65^save_2/Assign_66^save_2/Assign_67^save_2/Assign_68^save_2/Assign_69^save_2/Assign_7^save_2/Assign_70^save_2/Assign_71^save_2/Assign_72^save_2/Assign_73^save_2/Assign_74^save_2/Assign_75^save_2/Assign_76^save_2/Assign_77^save_2/Assign_78^save_2/Assign_79^save_2/Assign_8^save_2/Assign_80^save_2/Assign_81^save_2/Assign_82^save_2/Assign_83^save_2/Assign_84^save_2/Assign_85^save_2/Assign_86^save_2/Assign_87^save_2/Assign_88^save_2/Assign_89^save_2/Assign_9^save_2/Assign_90^save_2/Assign_91^save_2/Assign_92^save_2/Assign_93^save_2/Assign_94^save_2/Assign_95^save_2/Assign_96^save_2/Assign_97^save_2/Assign_98^save_2/Assign_99
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
shape: *
_output_shapes
: 

save_3/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9def7e452cfc4ba391bb853fbf6ab905/part
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_3/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
 
save_3/SaveV2/tensor_namesConst*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes	
:*
dtype0
і
save_3/SaveV2/shape_and_slicesConst*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:*
dtype0
П
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1main/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1main/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1main/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1main/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1main/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qc_var/dense/biastarget/qc_var/dense/kerneltarget/qc_var/dense_1/biastarget/qc_var/dense_1/kerneltarget/qc_var/dense_2/biastarget/qc_var/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*
dtypes
2

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_3/ShardedFilename
Ѓ
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*
N*

axis *
_output_shapes
:*
T0

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
_output_shapes
: *
T0
Ѓ
save_3/RestoreV2/tensor_namesConst*
_output_shapes	
:*
dtype0*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
љ
!save_3/RestoreV2/shape_and_slicesConst*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:
И
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Ї
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
use_locking(*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
validate_shape(
­
save_3/Assign_1Assignbeta1_power_1save_3/RestoreV2:1*
use_locking(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0
Ќ
save_3/Assign_2Assignbeta1_power_2save_3/RestoreV2:2*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: 
Ќ
save_3/Assign_3Assignbeta1_power_3save_3/RestoreV2:3*
T0*$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(*
_output_shapes
: 
Ћ
save_3/Assign_4Assignbeta2_powersave_3/RestoreV2:4*
validate_shape(*
use_locking(*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias
­
save_3/Assign_5Assignbeta2_power_1save_3/RestoreV2:5*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
Ќ
save_3/Assign_6Assignbeta2_power_2save_3/RestoreV2:6*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: 
Ќ
save_3/Assign_7Assignbeta2_power_3save_3/RestoreV2:7*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(*
T0
А
save_3/Assign_8Assigncostpen/soft_betasave_3/RestoreV2:8*
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking(
Е
save_3/Assign_9Assigncostpen/soft_beta/Adamsave_3/RestoreV2:9*
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0
Й
save_3/Assign_10Assigncostpen/soft_beta/Adam_1save_3/RestoreV2:10*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
В
save_3/Assign_11Assignentreg/soft_alphasave_3/RestoreV2:11*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
З
save_3/Assign_12Assignentreg/soft_alpha/Adamsave_3/RestoreV2:12*$
_class
loc:@entreg/soft_alpha*
use_locking(*
T0*
_output_shapes
: *
validate_shape(
Й
save_3/Assign_13Assignentreg/soft_alpha/Adam_1save_3/RestoreV2:13*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: *
validate_shape(
Й
save_3/Assign_14Assignmain/pi/dense/biassave_3/RestoreV2:14*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
О
save_3/Assign_15Assignmain/pi/dense/bias/Adamsave_3/RestoreV2:15*
_output_shapes	
:*
use_locking(*%
_class
loc:@main/pi/dense/bias*
T0*
validate_shape(
Р
save_3/Assign_16Assignmain/pi/dense/bias/Adam_1save_3/RestoreV2:16*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/pi/dense/bias
С
save_3/Assign_17Assignmain/pi/dense/kernelsave_3/RestoreV2:17*
T0*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
validate_shape(
Ц
save_3/Assign_18Assignmain/pi/dense/kernel/Adamsave_3/RestoreV2:18*
_output_shapes
:	<*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
T0
Ш
save_3/Assign_19Assignmain/pi/dense/kernel/Adam_1save_3/RestoreV2:19*
T0*
use_locking(*
_output_shapes
:	<*'
_class
loc:@main/pi/dense/kernel*
validate_shape(
Н
save_3/Assign_20Assignmain/pi/dense_1/biassave_3/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:
Т
save_3/Assign_21Assignmain/pi/dense_1/bias/Adamsave_3/RestoreV2:21*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:*
validate_shape(*
T0
Ф
save_3/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_3/RestoreV2:22*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Ц
save_3/Assign_23Assignmain/pi/dense_1/kernelsave_3/RestoreV2:23*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:

Ы
save_3/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_3/RestoreV2:24*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
validate_shape(*
T0*
use_locking(
Э
save_3/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_3/RestoreV2:25*
T0* 
_output_shapes
:
*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(
М
save_3/Assign_26Assignmain/pi/dense_2/biassave_3/RestoreV2:26*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
С
save_3/Assign_27Assignmain/pi/dense_2/bias/Adamsave_3/RestoreV2:27*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
У
save_3/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_3/RestoreV2:28*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:
Х
save_3/Assign_29Assignmain/pi/dense_2/kernelsave_3/RestoreV2:29*
_output_shapes
:	*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0
Ъ
save_3/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_3/RestoreV2:30*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	*
T0*
validate_shape(
Ь
save_3/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_3/RestoreV2:31*
use_locking(*
_output_shapes
:	*
T0*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(
М
save_3/Assign_32Assignmain/pi/dense_3/biassave_3/RestoreV2:32*
T0*
use_locking(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
С
save_3/Assign_33Assignmain/pi/dense_3/bias/Adamsave_3/RestoreV2:33*
T0*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
validate_shape(
У
save_3/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_3/RestoreV2:34*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*'
_class
loc:@main/pi/dense_3/bias
Х
save_3/Assign_35Assignmain/pi/dense_3/kernelsave_3/RestoreV2:35*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(*
T0
Ъ
save_3/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_3/RestoreV2:36*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
validate_shape(*
T0
Ь
save_3/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_3/RestoreV2:37*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
T0*
_output_shapes
:	
Й
save_3/Assign_38Assignmain/qc/dense/biassave_3/RestoreV2:38*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
validate_shape(
О
save_3/Assign_39Assignmain/qc/dense/bias/Adamsave_3/RestoreV2:39*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Р
save_3/Assign_40Assignmain/qc/dense/bias/Adam_1save_3/RestoreV2:40*%
_class
loc:@main/qc/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
С
save_3/Assign_41Assignmain/qc/dense/kernelsave_3/RestoreV2:41*
T0*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>
Ц
save_3/Assign_42Assignmain/qc/dense/kernel/Adamsave_3/RestoreV2:42*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>*
T0*
use_locking(
Ш
save_3/Assign_43Assignmain/qc/dense/kernel/Adam_1save_3/RestoreV2:43*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
validate_shape(*
T0*
use_locking(
Н
save_3/Assign_44Assignmain/qc/dense_1/biassave_3/RestoreV2:44*
_output_shapes	
:*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
T0
Т
save_3/Assign_45Assignmain/qc/dense_1/bias/Adamsave_3/RestoreV2:45*
_output_shapes	
:*
T0*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
validate_shape(
Ф
save_3/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_3/RestoreV2:46*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0*
validate_shape(
Ц
save_3/Assign_47Assignmain/qc/dense_1/kernelsave_3/RestoreV2:47*
use_locking(*
validate_shape(*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:

Ы
save_3/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_3/RestoreV2:48*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:

Э
save_3/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_3/RestoreV2:49*)
_class
loc:@main/qc/dense_1/kernel*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:

М
save_3/Assign_50Assignmain/qc/dense_2/biassave_3/RestoreV2:50*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
С
save_3/Assign_51Assignmain/qc/dense_2/bias/Adamsave_3/RestoreV2:51*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
У
save_3/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_3/RestoreV2:52*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
Х
save_3/Assign_53Assignmain/qc/dense_2/kernelsave_3/RestoreV2:53*
_output_shapes
:	*
T0*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
validate_shape(
Ъ
save_3/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_3/RestoreV2:54*
use_locking(*
T0*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
validate_shape(
Ь
save_3/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_3/RestoreV2:55*)
_class
loc:@main/qc/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	
С
save_3/Assign_56Assignmain/qc_var/dense/biassave_3/RestoreV2:56*
T0*)
_class
loc:@main/qc_var/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(
Ц
save_3/Assign_57Assignmain/qc_var/dense/bias/Adamsave_3/RestoreV2:57*)
_class
loc:@main/qc_var/dense/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ш
save_3/Assign_58Assignmain/qc_var/dense/bias/Adam_1save_3/RestoreV2:58*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/qc_var/dense/bias*
_output_shapes	
:
Щ
save_3/Assign_59Assignmain/qc_var/dense/kernelsave_3/RestoreV2:59*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
validate_shape(*
use_locking(*
T0
Ю
save_3/Assign_60Assignmain/qc_var/dense/kernel/Adamsave_3/RestoreV2:60*
validate_shape(*
use_locking(*
_output_shapes
:	>*+
_class!
loc:@main/qc_var/dense/kernel*
T0
а
save_3/Assign_61Assignmain/qc_var/dense/kernel/Adam_1save_3/RestoreV2:61*+
_class!
loc:@main/qc_var/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	>*
use_locking(
Х
save_3/Assign_62Assignmain/qc_var/dense_1/biassave_3/RestoreV2:62*+
_class!
loc:@main/qc_var/dense_1/bias*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(
Ъ
save_3/Assign_63Assignmain/qc_var/dense_1/bias/Adamsave_3/RestoreV2:63*
validate_shape(*
T0*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
use_locking(
Ь
save_3/Assign_64Assignmain/qc_var/dense_1/bias/Adam_1save_3/RestoreV2:64*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias
Ю
save_3/Assign_65Assignmain/qc_var/dense_1/kernelsave_3/RestoreV2:65*
validate_shape(*
use_locking(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0* 
_output_shapes
:

г
save_3/Assign_66Assignmain/qc_var/dense_1/kernel/Adamsave_3/RestoreV2:66*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:

е
save_3/Assign_67Assign!main/qc_var/dense_1/kernel/Adam_1save_3/RestoreV2:67* 
_output_shapes
:
*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel
Ф
save_3/Assign_68Assignmain/qc_var/dense_2/biassave_3/RestoreV2:68*
validate_shape(*
T0*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
use_locking(
Щ
save_3/Assign_69Assignmain/qc_var/dense_2/bias/Adamsave_3/RestoreV2:69*
_output_shapes
:*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
validate_shape(*
use_locking(
Ы
save_3/Assign_70Assignmain/qc_var/dense_2/bias/Adam_1save_3/RestoreV2:70*+
_class!
loc:@main/qc_var/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
Э
save_3/Assign_71Assignmain/qc_var/dense_2/kernelsave_3/RestoreV2:71*
validate_shape(*
T0*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(
в
save_3/Assign_72Assignmain/qc_var/dense_2/kernel/Adamsave_3/RestoreV2:72*
validate_shape(*
_output_shapes
:	*
T0*-
_class#
!loc:@main/qc_var/dense_2/kernel*
use_locking(
д
save_3/Assign_73Assign!main/qc_var/dense_2/kernel/Adam_1save_3/RestoreV2:73*
validate_shape(*
T0*
use_locking(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
_output_shapes
:	
Л
save_3/Assign_74Assignmain/qr1/dense/biassave_3/RestoreV2:74*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*&
_class
loc:@main/qr1/dense/bias
Р
save_3/Assign_75Assignmain/qr1/dense/bias/Adamsave_3/RestoreV2:75*
validate_shape(*
use_locking(*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias*
T0
Т
save_3/Assign_76Assignmain/qr1/dense/bias/Adam_1save_3/RestoreV2:76*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
У
save_3/Assign_77Assignmain/qr1/dense/kernelsave_3/RestoreV2:77*
use_locking(*
T0*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
_output_shapes
:	>
Ш
save_3/Assign_78Assignmain/qr1/dense/kernel/Adamsave_3/RestoreV2:78*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>*
use_locking(*
validate_shape(
Ъ
save_3/Assign_79Assignmain/qr1/dense/kernel/Adam_1save_3/RestoreV2:79*
validate_shape(*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(*
T0
П
save_3/Assign_80Assignmain/qr1/dense_1/biassave_3/RestoreV2:80*
use_locking(*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
T0
Ф
save_3/Assign_81Assignmain/qr1/dense_1/bias/Adamsave_3/RestoreV2:81*
validate_shape(*
use_locking(*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
T0
Ц
save_3/Assign_82Assignmain/qr1/dense_1/bias/Adam_1save_3/RestoreV2:82*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:*
T0
Ш
save_3/Assign_83Assignmain/qr1/dense_1/kernelsave_3/RestoreV2:83*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
*
T0*
validate_shape(
Э
save_3/Assign_84Assignmain/qr1/dense_1/kernel/Adamsave_3/RestoreV2:84**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(
Я
save_3/Assign_85Assignmain/qr1/dense_1/kernel/Adam_1save_3/RestoreV2:85* 
_output_shapes
:
*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
T0
О
save_3/Assign_86Assignmain/qr1/dense_2/biassave_3/RestoreV2:86*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0
У
save_3/Assign_87Assignmain/qr1/dense_2/bias/Adamsave_3/RestoreV2:87*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
Х
save_3/Assign_88Assignmain/qr1/dense_2/bias/Adam_1save_3/RestoreV2:88*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias
Ч
save_3/Assign_89Assignmain/qr1/dense_2/kernelsave_3/RestoreV2:89**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(
Ь
save_3/Assign_90Assignmain/qr1/dense_2/kernel/Adamsave_3/RestoreV2:90*
_output_shapes
:	*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(
Ю
save_3/Assign_91Assignmain/qr1/dense_2/kernel/Adam_1save_3/RestoreV2:91**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	*
T0*
use_locking(*
validate_shape(
Л
save_3/Assign_92Assignmain/qr2/dense/biassave_3/RestoreV2:92*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias
Р
save_3/Assign_93Assignmain/qr2/dense/bias/Adamsave_3/RestoreV2:93*
T0*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
_output_shapes	
:
Т
save_3/Assign_94Assignmain/qr2/dense/bias/Adam_1save_3/RestoreV2:94*&
_class
loc:@main/qr2/dense/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
У
save_3/Assign_95Assignmain/qr2/dense/kernelsave_3/RestoreV2:95*
T0*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
_output_shapes
:	>*
use_locking(
Ш
save_3/Assign_96Assignmain/qr2/dense/kernel/Adamsave_3/RestoreV2:96*
validate_shape(*
use_locking(*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
T0
Ъ
save_3/Assign_97Assignmain/qr2/dense/kernel/Adam_1save_3/RestoreV2:97*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel
П
save_3/Assign_98Assignmain/qr2/dense_1/biassave_3/RestoreV2:98*
use_locking(*
_output_shapes	
:*
validate_shape(*(
_class
loc:@main/qr2/dense_1/bias*
T0
Ф
save_3/Assign_99Assignmain/qr2/dense_1/bias/Adamsave_3/RestoreV2:99*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:*
use_locking(
Ш
save_3/Assign_100Assignmain/qr2/dense_1/bias/Adam_1save_3/RestoreV2:100*
_output_shapes	
:*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
T0*
validate_shape(
Ъ
save_3/Assign_101Assignmain/qr2/dense_1/kernelsave_3/RestoreV2:101* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
use_locking(*
validate_shape(
Я
save_3/Assign_102Assignmain/qr2/dense_1/kernel/Adamsave_3/RestoreV2:102* 
_output_shapes
:
*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(
б
save_3/Assign_103Assignmain/qr2/dense_1/kernel/Adam_1save_3/RestoreV2:103* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(*
T0
Р
save_3/Assign_104Assignmain/qr2/dense_2/biassave_3/RestoreV2:104*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
T0*
use_locking(
Х
save_3/Assign_105Assignmain/qr2/dense_2/bias/Adamsave_3/RestoreV2:105*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0
Ч
save_3/Assign_106Assignmain/qr2/dense_2/bias/Adam_1save_3/RestoreV2:106*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_2/bias
Щ
save_3/Assign_107Assignmain/qr2/dense_2/kernelsave_3/RestoreV2:107*
_output_shapes
:	*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
T0
Ю
save_3/Assign_108Assignmain/qr2/dense_2/kernel/Adamsave_3/RestoreV2:108*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
а
save_3/Assign_109Assignmain/qr2/dense_2/kernel/Adam_1save_3/RestoreV2:109*
use_locking(*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	
П
save_3/Assign_110Assigntarget/qc/dense/biassave_3/RestoreV2:110*
T0*
use_locking(*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:*
validate_shape(
Ч
save_3/Assign_111Assigntarget/qc/dense/kernelsave_3/RestoreV2:111*
T0*
_output_shapes
:	>*
use_locking(*
validate_shape(*)
_class
loc:@target/qc/dense/kernel
У
save_3/Assign_112Assigntarget/qc/dense_1/biassave_3/RestoreV2:112*
validate_shape(*
use_locking(*)
_class
loc:@target/qc/dense_1/bias*
T0*
_output_shapes	
:
Ь
save_3/Assign_113Assigntarget/qc/dense_1/kernelsave_3/RestoreV2:113*
T0*
use_locking(* 
_output_shapes
:
*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(
Т
save_3/Assign_114Assigntarget/qc/dense_2/biassave_3/RestoreV2:114*
_output_shapes
:*
T0*)
_class
loc:@target/qc/dense_2/bias*
use_locking(*
validate_shape(
Ы
save_3/Assign_115Assigntarget/qc/dense_2/kernelsave_3/RestoreV2:115*
_output_shapes
:	*+
_class!
loc:@target/qc/dense_2/kernel*
T0*
use_locking(*
validate_shape(
Ч
save_3/Assign_116Assigntarget/qc_var/dense/biassave_3/RestoreV2:116*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:
Я
save_3/Assign_117Assigntarget/qc_var/dense/kernelsave_3/RestoreV2:117*
validate_shape(*
T0*-
_class#
!loc:@target/qc_var/dense/kernel*
_output_shapes
:	>*
use_locking(
Ы
save_3/Assign_118Assigntarget/qc_var/dense_1/biassave_3/RestoreV2:118*
_output_shapes	
:*
validate_shape(*
use_locking(*-
_class#
!loc:@target/qc_var/dense_1/bias*
T0
д
save_3/Assign_119Assigntarget/qc_var/dense_1/kernelsave_3/RestoreV2:119*
validate_shape(*
T0*/
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:
*
use_locking(
Ъ
save_3/Assign_120Assigntarget/qc_var/dense_2/biassave_3/RestoreV2:120*-
_class#
!loc:@target/qc_var/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0
г
save_3/Assign_121Assigntarget/qc_var/dense_2/kernelsave_3/RestoreV2:121*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	*/
_class%
#!loc:@target/qc_var/dense_2/kernel
С
save_3/Assign_122Assigntarget/qr1/dense/biassave_3/RestoreV2:122*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(*(
_class
loc:@target/qr1/dense/bias
Щ
save_3/Assign_123Assigntarget/qr1/dense/kernelsave_3/RestoreV2:123*
T0*
_output_shapes
:	>**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
use_locking(
Х
save_3/Assign_124Assigntarget/qr1/dense_1/biassave_3/RestoreV2:124*
T0**
_class 
loc:@target/qr1/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
Ю
save_3/Assign_125Assigntarget/qr1/dense_1/kernelsave_3/RestoreV2:125*
use_locking(*
validate_shape(*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel* 
_output_shapes
:

Ф
save_3/Assign_126Assigntarget/qr1/dense_2/biassave_3/RestoreV2:126*
use_locking(**
_class 
loc:@target/qr1/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
Э
save_3/Assign_127Assigntarget/qr1/dense_2/kernelsave_3/RestoreV2:127*
validate_shape(*
use_locking(*
_output_shapes
:	*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0
С
save_3/Assign_128Assigntarget/qr2/dense/biassave_3/RestoreV2:128*(
_class
loc:@target/qr2/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Щ
save_3/Assign_129Assigntarget/qr2/dense/kernelsave_3/RestoreV2:129*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>*
T0*
validate_shape(
Х
save_3/Assign_130Assigntarget/qr2/dense_1/biassave_3/RestoreV2:130**
_class 
loc:@target/qr2/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ю
save_3/Assign_131Assigntarget/qr2/dense_1/kernelsave_3/RestoreV2:131* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel
Ф
save_3/Assign_132Assigntarget/qr2/dense_2/biassave_3/RestoreV2:132*
_output_shapes
:*
T0*
use_locking(**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(
Э
save_3/Assign_133Assigntarget/qr2/dense_2/kernelsave_3/RestoreV2:133*
validate_shape(*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
_output_shapes
:	
Є
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_100^save_3/Assign_101^save_3/Assign_102^save_3/Assign_103^save_3/Assign_104^save_3/Assign_105^save_3/Assign_106^save_3/Assign_107^save_3/Assign_108^save_3/Assign_109^save_3/Assign_11^save_3/Assign_110^save_3/Assign_111^save_3/Assign_112^save_3/Assign_113^save_3/Assign_114^save_3/Assign_115^save_3/Assign_116^save_3/Assign_117^save_3/Assign_118^save_3/Assign_119^save_3/Assign_12^save_3/Assign_120^save_3/Assign_121^save_3/Assign_122^save_3/Assign_123^save_3/Assign_124^save_3/Assign_125^save_3/Assign_126^save_3/Assign_127^save_3/Assign_128^save_3/Assign_129^save_3/Assign_13^save_3/Assign_130^save_3/Assign_131^save_3/Assign_132^save_3/Assign_133^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_3^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_4^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_5^save_3/Assign_50^save_3/Assign_51^save_3/Assign_52^save_3/Assign_53^save_3/Assign_54^save_3/Assign_55^save_3/Assign_56^save_3/Assign_57^save_3/Assign_58^save_3/Assign_59^save_3/Assign_6^save_3/Assign_60^save_3/Assign_61^save_3/Assign_62^save_3/Assign_63^save_3/Assign_64^save_3/Assign_65^save_3/Assign_66^save_3/Assign_67^save_3/Assign_68^save_3/Assign_69^save_3/Assign_7^save_3/Assign_70^save_3/Assign_71^save_3/Assign_72^save_3/Assign_73^save_3/Assign_74^save_3/Assign_75^save_3/Assign_76^save_3/Assign_77^save_3/Assign_78^save_3/Assign_79^save_3/Assign_8^save_3/Assign_80^save_3/Assign_81^save_3/Assign_82^save_3/Assign_83^save_3/Assign_84^save_3/Assign_85^save_3/Assign_86^save_3/Assign_87^save_3/Assign_88^save_3/Assign_89^save_3/Assign_9^save_3/Assign_90^save_3/Assign_91^save_3/Assign_92^save_3/Assign_93^save_3/Assign_94^save_3/Assign_95^save_3/Assign_96^save_3/Assign_97^save_3/Assign_98^save_3/Assign_99
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
dtype0*
shape: *
_output_shapes
: 

save_4/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_c4d2ac060b1143d2b74675e87d9fd2df/part*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_4/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
 
save_4/SaveV2/tensor_namesConst*
_output_shapes	
:*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0
і
save_4/SaveV2/shape_and_slicesConst*
_output_shapes	
:*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
П
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qc_var/dense/biasmain/qc_var/dense/bias/Adammain/qc_var/dense/bias/Adam_1main/qc_var/dense/kernelmain/qc_var/dense/kernel/Adammain/qc_var/dense/kernel/Adam_1main/qc_var/dense_1/biasmain/qc_var/dense_1/bias/Adammain/qc_var/dense_1/bias/Adam_1main/qc_var/dense_1/kernelmain/qc_var/dense_1/kernel/Adam!main/qc_var/dense_1/kernel/Adam_1main/qc_var/dense_2/biasmain/qc_var/dense_2/bias/Adammain/qc_var/dense_2/bias/Adam_1main/qc_var/dense_2/kernelmain/qc_var/dense_2/kernel/Adam!main/qc_var/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qc_var/dense/biastarget/qc_var/dense/kerneltarget/qc_var/dense_1/biastarget/qc_var/dense_1/kerneltarget/qc_var/dense_2/biastarget/qc_var/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*
dtypes
2

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
Ѓ
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*

axis *
N*
T0*
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
Ѓ
save_4/RestoreV2/tensor_namesConst*
_output_shapes	
:*
dtype0*а
valueЦBУBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qc_var/dense/biasBmain/qc_var/dense/bias/AdamBmain/qc_var/dense/bias/Adam_1Bmain/qc_var/dense/kernelBmain/qc_var/dense/kernel/AdamBmain/qc_var/dense/kernel/Adam_1Bmain/qc_var/dense_1/biasBmain/qc_var/dense_1/bias/AdamBmain/qc_var/dense_1/bias/Adam_1Bmain/qc_var/dense_1/kernelBmain/qc_var/dense_1/kernel/AdamB!main/qc_var/dense_1/kernel/Adam_1Bmain/qc_var/dense_2/biasBmain/qc_var/dense_2/bias/AdamBmain/qc_var/dense_2/bias/Adam_1Bmain/qc_var/dense_2/kernelBmain/qc_var/dense_2/kernel/AdamB!main/qc_var/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qc_var/dense/biasBtarget/qc_var/dense/kernelBtarget/qc_var/dense_1/biasBtarget/qc_var/dense_1/kernelBtarget/qc_var/dense_2/biasBtarget/qc_var/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
љ
!save_4/RestoreV2/shape_and_slicesConst*
dtype0*Ђ
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:
И
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2
Ї
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
T0
­
save_4/Assign_1Assignbeta1_power_1save_4/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@main/qc/dense/bias
Ќ
save_4/Assign_2Assignbeta1_power_2save_4/RestoreV2:2*
use_locking(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0*
validate_shape(
Ќ
save_4/Assign_3Assignbeta1_power_3save_4/RestoreV2:3*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: *
use_locking(*
validate_shape(
Ћ
save_4/Assign_4Assignbeta2_powersave_4/RestoreV2:4*
_output_shapes
: *
T0*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias
­
save_4/Assign_5Assignbeta2_power_1save_4/RestoreV2:5*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
T0
Ќ
save_4/Assign_6Assignbeta2_power_2save_4/RestoreV2:6*
use_locking(*
T0*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
Ќ
save_4/Assign_7Assignbeta2_power_3save_4/RestoreV2:7*
use_locking(*
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
А
save_4/Assign_8Assigncostpen/soft_betasave_4/RestoreV2:8*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta*
validate_shape(*
T0
Е
save_4/Assign_9Assigncostpen/soft_beta/Adamsave_4/RestoreV2:9*
T0*
use_locking(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(
Й
save_4/Assign_10Assigncostpen/soft_beta/Adam_1save_4/RestoreV2:10*
use_locking(*
T0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(
В
save_4/Assign_11Assignentreg/soft_alphasave_4/RestoreV2:11*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha
З
save_4/Assign_12Assignentreg/soft_alpha/Adamsave_4/RestoreV2:12*$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
Й
save_4/Assign_13Assignentreg/soft_alpha/Adam_1save_4/RestoreV2:13*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
validate_shape(
Й
save_4/Assign_14Assignmain/pi/dense/biassave_4/RestoreV2:14*
T0*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
О
save_4/Assign_15Assignmain/pi/dense/bias/Adamsave_4/RestoreV2:15*%
_class
loc:@main/pi/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Р
save_4/Assign_16Assignmain/pi/dense/bias/Adam_1save_4/RestoreV2:16*
use_locking(*
_output_shapes	
:*
T0*%
_class
loc:@main/pi/dense/bias*
validate_shape(
С
save_4/Assign_17Assignmain/pi/dense/kernelsave_4/RestoreV2:17*
T0*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
_output_shapes
:	<*
use_locking(
Ц
save_4/Assign_18Assignmain/pi/dense/kernel/Adamsave_4/RestoreV2:18*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	<*
T0
Ш
save_4/Assign_19Assignmain/pi/dense/kernel/Adam_1save_4/RestoreV2:19*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<*
use_locking(*
validate_shape(
Н
save_4/Assign_20Assignmain/pi/dense_1/biassave_4/RestoreV2:20*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
T0*
_output_shapes	
:
Т
save_4/Assign_21Assignmain/pi/dense_1/bias/Adamsave_4/RestoreV2:21*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_1/bias
Ф
save_4/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_4/RestoreV2:22*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ц
save_4/Assign_23Assignmain/pi/dense_1/kernelsave_4/RestoreV2:23*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

Ы
save_4/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_4/RestoreV2:24*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
*
use_locking(
Э
save_4/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_4/RestoreV2:25*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:

М
save_4/Assign_26Assignmain/pi/dense_2/biassave_4/RestoreV2:26*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
use_locking(
С
save_4/Assign_27Assignmain/pi/dense_2/bias/Adamsave_4/RestoreV2:27*
T0*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
У
save_4/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_4/RestoreV2:28*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias
Х
save_4/Assign_29Assignmain/pi/dense_2/kernelsave_4/RestoreV2:29*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	*
use_locking(
Ъ
save_4/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_4/RestoreV2:30*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	
Ь
save_4/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_4/RestoreV2:31*
_output_shapes
:	*)
_class
loc:@main/pi/dense_2/kernel*
T0*
use_locking(*
validate_shape(
М
save_4/Assign_32Assignmain/pi/dense_3/biassave_4/RestoreV2:32*
T0*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
С
save_4/Assign_33Assignmain/pi/dense_3/bias/Adamsave_4/RestoreV2:33*
use_locking(*
_output_shapes
:*
T0*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
У
save_4/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_4/RestoreV2:34*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
T0*
use_locking(
Х
save_4/Assign_35Assignmain/pi/dense_3/kernelsave_4/RestoreV2:35*
_output_shapes
:	*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
T0*
validate_shape(
Ъ
save_4/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_4/RestoreV2:36*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
Ь
save_4/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_4/RestoreV2:37*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel
Й
save_4/Assign_38Assignmain/qc/dense/biassave_4/RestoreV2:38*%
_class
loc:@main/qc/dense/bias*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
О
save_4/Assign_39Assignmain/qc/dense/bias/Adamsave_4/RestoreV2:39*
T0*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
validate_shape(
Р
save_4/Assign_40Assignmain/qc/dense/bias/Adam_1save_4/RestoreV2:40*
use_locking(*
_output_shapes	
:*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0
С
save_4/Assign_41Assignmain/qc/dense/kernelsave_4/RestoreV2:41*
T0*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>*
use_locking(
Ц
save_4/Assign_42Assignmain/qc/dense/kernel/Adamsave_4/RestoreV2:42*
T0*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
use_locking(
Ш
save_4/Assign_43Assignmain/qc/dense/kernel/Adam_1save_4/RestoreV2:43*
T0*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>*
validate_shape(*
use_locking(
Н
save_4/Assign_44Assignmain/qc/dense_1/biassave_4/RestoreV2:44*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
T0*
_output_shapes	
:*
validate_shape(
Т
save_4/Assign_45Assignmain/qc/dense_1/bias/Adamsave_4/RestoreV2:45*
validate_shape(*
use_locking(*
_output_shapes	
:*'
_class
loc:@main/qc/dense_1/bias*
T0
Ф
save_4/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_4/RestoreV2:46*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
Ц
save_4/Assign_47Assignmain/qc/dense_1/kernelsave_4/RestoreV2:47* 
_output_shapes
:
*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel
Ы
save_4/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_4/RestoreV2:48*
T0*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(* 
_output_shapes
:

Э
save_4/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_4/RestoreV2:49*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

М
save_4/Assign_50Assignmain/qc/dense_2/biassave_4/RestoreV2:50*
_output_shapes
:*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
T0
С
save_4/Assign_51Assignmain/qc/dense_2/bias/Adamsave_4/RestoreV2:51*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0*
use_locking(
У
save_4/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_4/RestoreV2:52*
T0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
validate_shape(
Х
save_4/Assign_53Assignmain/qc/dense_2/kernelsave_4/RestoreV2:53*
T0*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	*
use_locking(*
validate_shape(
Ъ
save_4/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_4/RestoreV2:54*
validate_shape(*
_output_shapes
:	*
T0*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel
Ь
save_4/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_4/RestoreV2:55*
_output_shapes
:	*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
T0*
validate_shape(
С
save_4/Assign_56Assignmain/qc_var/dense/biassave_4/RestoreV2:56*
validate_shape(*
_output_shapes	
:*
use_locking(*)
_class
loc:@main/qc_var/dense/bias*
T0
Ц
save_4/Assign_57Assignmain/qc_var/dense/bias/Adamsave_4/RestoreV2:57*
use_locking(*
_output_shapes	
:*
T0*)
_class
loc:@main/qc_var/dense/bias*
validate_shape(
Ш
save_4/Assign_58Assignmain/qc_var/dense/bias/Adam_1save_4/RestoreV2:58*
_output_shapes	
:*
use_locking(*)
_class
loc:@main/qc_var/dense/bias*
validate_shape(*
T0
Щ
save_4/Assign_59Assignmain/qc_var/dense/kernelsave_4/RestoreV2:59*
use_locking(*
validate_shape(*
T0*+
_class!
loc:@main/qc_var/dense/kernel*
_output_shapes
:	>
Ю
save_4/Assign_60Assignmain/qc_var/dense/kernel/Adamsave_4/RestoreV2:60*
T0*
validate_shape(*
_output_shapes
:	>*
use_locking(*+
_class!
loc:@main/qc_var/dense/kernel
а
save_4/Assign_61Assignmain/qc_var/dense/kernel/Adam_1save_4/RestoreV2:61*
_output_shapes
:	>*
T0*
use_locking(*
validate_shape(*+
_class!
loc:@main/qc_var/dense/kernel
Х
save_4/Assign_62Assignmain/qc_var/dense_1/biassave_4/RestoreV2:62*
use_locking(*
_output_shapes	
:*
validate_shape(*+
_class!
loc:@main/qc_var/dense_1/bias*
T0
Ъ
save_4/Assign_63Assignmain/qc_var/dense_1/bias/Adamsave_4/RestoreV2:63*
_output_shapes	
:*+
_class!
loc:@main/qc_var/dense_1/bias*
T0*
validate_shape(*
use_locking(
Ь
save_4/Assign_64Assignmain/qc_var/dense_1/bias/Adam_1save_4/RestoreV2:64*
T0*
_output_shapes	
:*
validate_shape(*+
_class!
loc:@main/qc_var/dense_1/bias*
use_locking(
Ю
save_4/Assign_65Assignmain/qc_var/dense_1/kernelsave_4/RestoreV2:65* 
_output_shapes
:
*
use_locking(*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
T0
г
save_4/Assign_66Assignmain/qc_var/dense_1/kernel/Adamsave_4/RestoreV2:66* 
_output_shapes
:
*
validate_shape(*-
_class#
!loc:@main/qc_var/dense_1/kernel*
use_locking(*
T0
е
save_4/Assign_67Assign!main/qc_var/dense_1/kernel/Adam_1save_4/RestoreV2:67*-
_class#
!loc:@main/qc_var/dense_1/kernel*
use_locking(* 
_output_shapes
:
*
validate_shape(*
T0
Ф
save_4/Assign_68Assignmain/qc_var/dense_2/biassave_4/RestoreV2:68*
validate_shape(*
_output_shapes
:*
use_locking(*+
_class!
loc:@main/qc_var/dense_2/bias*
T0
Щ
save_4/Assign_69Assignmain/qc_var/dense_2/bias/Adamsave_4/RestoreV2:69*
use_locking(*
_output_shapes
:*
T0*+
_class!
loc:@main/qc_var/dense_2/bias*
validate_shape(
Ы
save_4/Assign_70Assignmain/qc_var/dense_2/bias/Adam_1save_4/RestoreV2:70*
use_locking(*+
_class!
loc:@main/qc_var/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
Э
save_4/Assign_71Assignmain/qc_var/dense_2/kernelsave_4/RestoreV2:71*
use_locking(*-
_class#
!loc:@main/qc_var/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	
в
save_4/Assign_72Assignmain/qc_var/dense_2/kernel/Adamsave_4/RestoreV2:72*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel
д
save_4/Assign_73Assign!main/qc_var/dense_2/kernel/Adam_1save_4/RestoreV2:73*
use_locking(*
_output_shapes
:	*-
_class#
!loc:@main/qc_var/dense_2/kernel*
validate_shape(*
T0
Л
save_4/Assign_74Assignmain/qr1/dense/biassave_4/RestoreV2:74*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
Р
save_4/Assign_75Assignmain/qr1/dense/bias/Adamsave_4/RestoreV2:75*
_output_shapes	
:*
T0*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
validate_shape(
Т
save_4/Assign_76Assignmain/qr1/dense/bias/Adam_1save_4/RestoreV2:76*
T0*
_output_shapes	
:*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
validate_shape(
У
save_4/Assign_77Assignmain/qr1/dense/kernelsave_4/RestoreV2:77*
use_locking(*
_output_shapes
:	>*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel*
T0
Ш
save_4/Assign_78Assignmain/qr1/dense/kernel/Adamsave_4/RestoreV2:78*
_output_shapes
:	>*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr1/dense/kernel
Ъ
save_4/Assign_79Assignmain/qr1/dense/kernel/Adam_1save_4/RestoreV2:79*
validate_shape(*
T0*
_output_shapes
:	>*(
_class
loc:@main/qr1/dense/kernel*
use_locking(
П
save_4/Assign_80Assignmain/qr1/dense_1/biassave_4/RestoreV2:80*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:
Ф
save_4/Assign_81Assignmain/qr1/dense_1/bias/Adamsave_4/RestoreV2:81*
validate_shape(*
_output_shapes	
:*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
T0
Ц
save_4/Assign_82Assignmain/qr1/dense_1/bias/Adam_1save_4/RestoreV2:82*
_output_shapes	
:*(
_class
loc:@main/qr1/dense_1/bias*
T0*
validate_shape(*
use_locking(
Ш
save_4/Assign_83Assignmain/qr1/dense_1/kernelsave_4/RestoreV2:83*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
**
_class 
loc:@main/qr1/dense_1/kernel
Э
save_4/Assign_84Assignmain/qr1/dense_1/kernel/Adamsave_4/RestoreV2:84*
T0*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:

Я
save_4/Assign_85Assignmain/qr1/dense_1/kernel/Adam_1save_4/RestoreV2:85**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
*
T0
О
save_4/Assign_86Assignmain/qr1/dense_2/biassave_4/RestoreV2:86*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
У
save_4/Assign_87Assignmain/qr1/dense_2/bias/Adamsave_4/RestoreV2:87*
use_locking(*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
T0*
validate_shape(
Х
save_4/Assign_88Assignmain/qr1/dense_2/bias/Adam_1save_4/RestoreV2:88*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0
Ч
save_4/Assign_89Assignmain/qr1/dense_2/kernelsave_4/RestoreV2:89*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	
Ь
save_4/Assign_90Assignmain/qr1/dense_2/kernel/Adamsave_4/RestoreV2:90**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	*
validate_shape(*
use_locking(
Ю
save_4/Assign_91Assignmain/qr1/dense_2/kernel/Adam_1save_4/RestoreV2:91*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel
Л
save_4/Assign_92Assignmain/qr2/dense/biassave_4/RestoreV2:92*
use_locking(*
_output_shapes	
:*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0
Р
save_4/Assign_93Assignmain/qr2/dense/bias/Adamsave_4/RestoreV2:93*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias
Т
save_4/Assign_94Assignmain/qr2/dense/bias/Adam_1save_4/RestoreV2:94*
_output_shapes	
:*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0
У
save_4/Assign_95Assignmain/qr2/dense/kernelsave_4/RestoreV2:95*
validate_shape(*
_output_shapes
:	>*
T0*
use_locking(*(
_class
loc:@main/qr2/dense/kernel
Ш
save_4/Assign_96Assignmain/qr2/dense/kernel/Adamsave_4/RestoreV2:96*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>
Ъ
save_4/Assign_97Assignmain/qr2/dense/kernel/Adam_1save_4/RestoreV2:97*
_output_shapes
:	>*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
T0*
use_locking(
П
save_4/Assign_98Assignmain/qr2/dense_1/biassave_4/RestoreV2:98*
_output_shapes	
:*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(
Ф
save_4/Assign_99Assignmain/qr2/dense_1/bias/Adamsave_4/RestoreV2:99*
validate_shape(*
_output_shapes	
:*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(
Ш
save_4/Assign_100Assignmain/qr2/dense_1/bias/Adam_1save_4/RestoreV2:100*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:*
use_locking(*
validate_shape(
Ъ
save_4/Assign_101Assignmain/qr2/dense_1/kernelsave_4/RestoreV2:101**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
*
use_locking(
Я
save_4/Assign_102Assignmain/qr2/dense_1/kernel/Adamsave_4/RestoreV2:102*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:

б
save_4/Assign_103Assignmain/qr2/dense_1/kernel/Adam_1save_4/RestoreV2:103*
use_locking(* 
_output_shapes
:
**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
validate_shape(
Р
save_4/Assign_104Assignmain/qr2/dense_2/biassave_4/RestoreV2:104*
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(
Х
save_4/Assign_105Assignmain/qr2/dense_2/bias/Adamsave_4/RestoreV2:105*
_output_shapes
:*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
T0
Ч
save_4/Assign_106Assignmain/qr2/dense_2/bias/Adam_1save_4/RestoreV2:106*
use_locking(*
validate_shape(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
T0
Щ
save_4/Assign_107Assignmain/qr2/dense_2/kernelsave_4/RestoreV2:107*
T0*
validate_shape(*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(
Ю
save_4/Assign_108Assignmain/qr2/dense_2/kernel/Adamsave_4/RestoreV2:108*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
validate_shape(*
use_locking(
а
save_4/Assign_109Assignmain/qr2/dense_2/kernel/Adam_1save_4/RestoreV2:109*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	**
_class 
loc:@main/qr2/dense_2/kernel
П
save_4/Assign_110Assigntarget/qc/dense/biassave_4/RestoreV2:110*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:
Ч
save_4/Assign_111Assigntarget/qc/dense/kernelsave_4/RestoreV2:111*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>*
validate_shape(*
use_locking(
У
save_4/Assign_112Assigntarget/qc/dense_1/biassave_4/RestoreV2:112*
validate_shape(*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:*
T0*
use_locking(
Ь
save_4/Assign_113Assigntarget/qc/dense_1/kernelsave_4/RestoreV2:113*
validate_shape(*+
_class!
loc:@target/qc/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

Т
save_4/Assign_114Assigntarget/qc/dense_2/biassave_4/RestoreV2:114*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias
Ы
save_4/Assign_115Assigntarget/qc/dense_2/kernelsave_4/RestoreV2:115*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
_output_shapes
:	*
validate_shape(
Ч
save_4/Assign_116Assigntarget/qc_var/dense/biassave_4/RestoreV2:116*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@target/qc_var/dense/bias*
_output_shapes	
:
Я
save_4/Assign_117Assigntarget/qc_var/dense/kernelsave_4/RestoreV2:117*
_output_shapes
:	>*
use_locking(*
validate_shape(*-
_class#
!loc:@target/qc_var/dense/kernel*
T0
Ы
save_4/Assign_118Assigntarget/qc_var/dense_1/biassave_4/RestoreV2:118*-
_class#
!loc:@target/qc_var/dense_1/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
д
save_4/Assign_119Assigntarget/qc_var/dense_1/kernelsave_4/RestoreV2:119*
T0*
use_locking(*/
_class%
#!loc:@target/qc_var/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Ъ
save_4/Assign_120Assigntarget/qc_var/dense_2/biassave_4/RestoreV2:120*
T0*-
_class#
!loc:@target/qc_var/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
г
save_4/Assign_121Assigntarget/qc_var/dense_2/kernelsave_4/RestoreV2:121*
T0*
validate_shape(*
_output_shapes
:	*/
_class%
#!loc:@target/qc_var/dense_2/kernel*
use_locking(
С
save_4/Assign_122Assigntarget/qr1/dense/biassave_4/RestoreV2:122*
T0*(
_class
loc:@target/qr1/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:
Щ
save_4/Assign_123Assigntarget/qr1/dense/kernelsave_4/RestoreV2:123*
use_locking(**
_class 
loc:@target/qr1/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	>
Х
save_4/Assign_124Assigntarget/qr1/dense_1/biassave_4/RestoreV2:124*
T0**
_class 
loc:@target/qr1/dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ю
save_4/Assign_125Assigntarget/qr1/dense_1/kernelsave_4/RestoreV2:125*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*
use_locking(*
validate_shape(* 
_output_shapes
:

Ф
save_4/Assign_126Assigntarget/qr1/dense_2/biassave_4/RestoreV2:126**
_class 
loc:@target/qr1/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Э
save_4/Assign_127Assigntarget/qr1/dense_2/kernelsave_4/RestoreV2:127*
T0*
use_locking(*
_output_shapes
:	*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel
С
save_4/Assign_128Assigntarget/qr2/dense/biassave_4/RestoreV2:128*
validate_shape(*
use_locking(*
_output_shapes	
:*(
_class
loc:@target/qr2/dense/bias*
T0
Щ
save_4/Assign_129Assigntarget/qr2/dense/kernelsave_4/RestoreV2:129*
_output_shapes
:	>*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
T0*
validate_shape(
Х
save_4/Assign_130Assigntarget/qr2/dense_1/biassave_4/RestoreV2:130**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Ю
save_4/Assign_131Assigntarget/qr2/dense_1/kernelsave_4/RestoreV2:131*
use_locking(*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
*
validate_shape(
Ф
save_4/Assign_132Assigntarget/qr2/dense_2/biassave_4/RestoreV2:132*
T0*
_output_shapes
:*
validate_shape(*
use_locking(**
_class 
loc:@target/qr2/dense_2/bias
Э
save_4/Assign_133Assigntarget/qr2/dense_2/kernelsave_4/RestoreV2:133*
_output_shapes
:	*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
validate_shape(*
use_locking(
Є
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_100^save_4/Assign_101^save_4/Assign_102^save_4/Assign_103^save_4/Assign_104^save_4/Assign_105^save_4/Assign_106^save_4/Assign_107^save_4/Assign_108^save_4/Assign_109^save_4/Assign_11^save_4/Assign_110^save_4/Assign_111^save_4/Assign_112^save_4/Assign_113^save_4/Assign_114^save_4/Assign_115^save_4/Assign_116^save_4/Assign_117^save_4/Assign_118^save_4/Assign_119^save_4/Assign_12^save_4/Assign_120^save_4/Assign_121^save_4/Assign_122^save_4/Assign_123^save_4/Assign_124^save_4/Assign_125^save_4/Assign_126^save_4/Assign_127^save_4/Assign_128^save_4/Assign_129^save_4/Assign_13^save_4/Assign_130^save_4/Assign_131^save_4/Assign_132^save_4/Assign_133^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_28^save_4/Assign_29^save_4/Assign_3^save_4/Assign_30^save_4/Assign_31^save_4/Assign_32^save_4/Assign_33^save_4/Assign_34^save_4/Assign_35^save_4/Assign_36^save_4/Assign_37^save_4/Assign_38^save_4/Assign_39^save_4/Assign_4^save_4/Assign_40^save_4/Assign_41^save_4/Assign_42^save_4/Assign_43^save_4/Assign_44^save_4/Assign_45^save_4/Assign_46^save_4/Assign_47^save_4/Assign_48^save_4/Assign_49^save_4/Assign_5^save_4/Assign_50^save_4/Assign_51^save_4/Assign_52^save_4/Assign_53^save_4/Assign_54^save_4/Assign_55^save_4/Assign_56^save_4/Assign_57^save_4/Assign_58^save_4/Assign_59^save_4/Assign_6^save_4/Assign_60^save_4/Assign_61^save_4/Assign_62^save_4/Assign_63^save_4/Assign_64^save_4/Assign_65^save_4/Assign_66^save_4/Assign_67^save_4/Assign_68^save_4/Assign_69^save_4/Assign_7^save_4/Assign_70^save_4/Assign_71^save_4/Assign_72^save_4/Assign_73^save_4/Assign_74^save_4/Assign_75^save_4/Assign_76^save_4/Assign_77^save_4/Assign_78^save_4/Assign_79^save_4/Assign_8^save_4/Assign_80^save_4/Assign_81^save_4/Assign_82^save_4/Assign_83^save_4/Assign_84^save_4/Assign_85^save_4/Assign_86^save_4/Assign_87^save_4/Assign_88^save_4/Assign_89^save_4/Assign_9^save_4/Assign_90^save_4/Assign_91^save_4/Assign_92^save_4/Assign_93^save_4/Assign_94^save_4/Assign_95^save_4/Assign_96^save_4/Assign_97^save_4/Assign_98^save_4/Assign_99
1
save_4/restore_allNoOp^save_4/restore_shard "B
save_4/Const:0save_4/Identity:0save_4/restore_all (5 @F8"
	variables
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

main/qc_var/dense/kernel:0main/qc_var/dense/kernel/Assignmain/qc_var/dense/kernel/read:025main/qc_var/dense/kernel/Initializer/random_uniform:08

main/qc_var/dense/bias:0main/qc_var/dense/bias/Assignmain/qc_var/dense/bias/read:02*main/qc_var/dense/bias/Initializer/zeros:08

main/qc_var/dense_1/kernel:0!main/qc_var/dense_1/kernel/Assign!main/qc_var/dense_1/kernel/read:027main/qc_var/dense_1/kernel/Initializer/random_uniform:08

main/qc_var/dense_1/bias:0main/qc_var/dense_1/bias/Assignmain/qc_var/dense_1/bias/read:02,main/qc_var/dense_1/bias/Initializer/zeros:08

main/qc_var/dense_2/kernel:0!main/qc_var/dense_2/kernel/Assign!main/qc_var/dense_2/kernel/read:027main/qc_var/dense_2/kernel/Initializer/random_uniform:08

main/qc_var/dense_2/bias:0main/qc_var/dense_2/bias/Assignmain/qc_var/dense_2/bias/read:02,main/qc_var/dense_2/bias/Initializer/zeros:08
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

target/qc_var/dense/kernel:0!target/qc_var/dense/kernel/Assign!target/qc_var/dense/kernel/read:027target/qc_var/dense/kernel/Initializer/random_uniform:08

target/qc_var/dense/bias:0target/qc_var/dense/bias/Assigntarget/qc_var/dense/bias/read:02,target/qc_var/dense/bias/Initializer/zeros:08
Ї
target/qc_var/dense_1/kernel:0#target/qc_var/dense_1/kernel/Assign#target/qc_var/dense_1/kernel/read:029target/qc_var/dense_1/kernel/Initializer/random_uniform:08

target/qc_var/dense_1/bias:0!target/qc_var/dense_1/bias/Assign!target/qc_var/dense_1/bias/read:02.target/qc_var/dense_1/bias/Initializer/zeros:08
Ї
target/qc_var/dense_2/kernel:0#target/qc_var/dense_2/kernel/Assign#target/qc_var/dense_2/kernel/read:029target/qc_var/dense_2/kernel/Initializer/random_uniform:08

target/qc_var/dense_2/bias:0!target/qc_var/dense_2/bias/Assign!target/qc_var/dense_2/bias/read:02.target/qc_var/dense_2/bias/Initializer/zeros:08
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
 
main/qc_var/dense/kernel/Adam:0$main/qc_var/dense/kernel/Adam/Assign$main/qc_var/dense/kernel/Adam/read:021main/qc_var/dense/kernel/Adam/Initializer/zeros:0
Ј
!main/qc_var/dense/kernel/Adam_1:0&main/qc_var/dense/kernel/Adam_1/Assign&main/qc_var/dense/kernel/Adam_1/read:023main/qc_var/dense/kernel/Adam_1/Initializer/zeros:0

main/qc_var/dense/bias/Adam:0"main/qc_var/dense/bias/Adam/Assign"main/qc_var/dense/bias/Adam/read:02/main/qc_var/dense/bias/Adam/Initializer/zeros:0
 
main/qc_var/dense/bias/Adam_1:0$main/qc_var/dense/bias/Adam_1/Assign$main/qc_var/dense/bias/Adam_1/read:021main/qc_var/dense/bias/Adam_1/Initializer/zeros:0
Ј
!main/qc_var/dense_1/kernel/Adam:0&main/qc_var/dense_1/kernel/Adam/Assign&main/qc_var/dense_1/kernel/Adam/read:023main/qc_var/dense_1/kernel/Adam/Initializer/zeros:0
А
#main/qc_var/dense_1/kernel/Adam_1:0(main/qc_var/dense_1/kernel/Adam_1/Assign(main/qc_var/dense_1/kernel/Adam_1/read:025main/qc_var/dense_1/kernel/Adam_1/Initializer/zeros:0
 
main/qc_var/dense_1/bias/Adam:0$main/qc_var/dense_1/bias/Adam/Assign$main/qc_var/dense_1/bias/Adam/read:021main/qc_var/dense_1/bias/Adam/Initializer/zeros:0
Ј
!main/qc_var/dense_1/bias/Adam_1:0&main/qc_var/dense_1/bias/Adam_1/Assign&main/qc_var/dense_1/bias/Adam_1/read:023main/qc_var/dense_1/bias/Adam_1/Initializer/zeros:0
Ј
!main/qc_var/dense_2/kernel/Adam:0&main/qc_var/dense_2/kernel/Adam/Assign&main/qc_var/dense_2/kernel/Adam/read:023main/qc_var/dense_2/kernel/Adam/Initializer/zeros:0
А
#main/qc_var/dense_2/kernel/Adam_1:0(main/qc_var/dense_2/kernel/Adam_1/Assign(main/qc_var/dense_2/kernel/Adam_1/read:025main/qc_var/dense_2/kernel/Adam_1/Initializer/zeros:0
 
main/qc_var/dense_2/bias/Adam:0$main/qc_var/dense_2/bias/Adam/Assign$main/qc_var/dense_2/bias/Adam/read:021main/qc_var/dense_2/bias/Adam/Initializer/zeros:0
Ј
!main/qc_var/dense_2/bias/Adam_1:0&main/qc_var/dense_2/bias/Adam_1/Assign&main/qc_var/dense_2/bias/Adam_1/read:023main/qc_var/dense_2/bias/Adam_1/Initializer/zeros:0
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
costpen/soft_beta/Adam_1:0costpen/soft_beta/Adam_1/Assigncostpen/soft_beta/Adam_1/read:02,costpen/soft_beta/Adam_1/Initializer/zeros:0"е@
trainable_variablesН@К@
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

main/qc_var/dense/kernel:0main/qc_var/dense/kernel/Assignmain/qc_var/dense/kernel/read:025main/qc_var/dense/kernel/Initializer/random_uniform:08

main/qc_var/dense/bias:0main/qc_var/dense/bias/Assignmain/qc_var/dense/bias/read:02*main/qc_var/dense/bias/Initializer/zeros:08

main/qc_var/dense_1/kernel:0!main/qc_var/dense_1/kernel/Assign!main/qc_var/dense_1/kernel/read:027main/qc_var/dense_1/kernel/Initializer/random_uniform:08

main/qc_var/dense_1/bias:0main/qc_var/dense_1/bias/Assignmain/qc_var/dense_1/bias/read:02,main/qc_var/dense_1/bias/Initializer/zeros:08

main/qc_var/dense_2/kernel:0!main/qc_var/dense_2/kernel/Assign!main/qc_var/dense_2/kernel/read:027main/qc_var/dense_2/kernel/Initializer/random_uniform:08

main/qc_var/dense_2/bias:0main/qc_var/dense_2/bias/Assignmain/qc_var/dense_2/bias/read:02,main/qc_var/dense_2/bias/Initializer/zeros:08
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

target/qc_var/dense/kernel:0!target/qc_var/dense/kernel/Assign!target/qc_var/dense/kernel/read:027target/qc_var/dense/kernel/Initializer/random_uniform:08

target/qc_var/dense/bias:0target/qc_var/dense/bias/Assigntarget/qc_var/dense/bias/read:02,target/qc_var/dense/bias/Initializer/zeros:08
Ї
target/qc_var/dense_1/kernel:0#target/qc_var/dense_1/kernel/Assign#target/qc_var/dense_1/kernel/read:029target/qc_var/dense_1/kernel/Initializer/random_uniform:08

target/qc_var/dense_1/bias:0!target/qc_var/dense_1/bias/Assign!target/qc_var/dense_1/bias/read:02.target/qc_var/dense_1/bias/Initializer/zeros:08
Ї
target/qc_var/dense_2/kernel:0#target/qc_var/dense_2/kernel/Assign#target/qc_var/dense_2/kernel/read:029target/qc_var/dense_2/kernel/Initializer/random_uniform:08

target/qc_var/dense_2/bias:0!target/qc_var/dense_2/bias/Assign!target/qc_var/dense_2/bias/read:02.target/qc_var/dense_2/bias/Initializer/zeros:08
n
entreg/soft_alpha:0entreg/soft_alpha/Assignentreg/soft_alpha/read:02!entreg/soft_alpha/initial_value:08
n
costpen/soft_beta:0costpen/soft_beta/Assigncostpen/soft_beta/read:02!costpen/soft_beta/initial_value:08"/
train_op#
!
train_pi
train_q
Adam
Adam_1*ф
serving_defaultа
+
a&
Placeholder_1:0џџџџџџџџџ
)
x$
Placeholder:0џџџџџџџџџ<'
mu!

main/mul:0џџџџџџџџџ)
pi#
main/mul_1:0џџџџџџџџџ,
qr2%
main/qr2/Squeeze:0џџџџџџџџџ*
qc$
main/qc/Squeeze:0џџџџџџџџџ,
qr1%
main/qr1/Squeeze:0џџџџџџџџџtensorflow/serving/predict