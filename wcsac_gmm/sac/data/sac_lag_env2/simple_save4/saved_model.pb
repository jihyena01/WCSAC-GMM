Ни(
Ц*й)
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
2	АР
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
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

2	Р
Н
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
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
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
list(type)(И
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Л
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
М
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
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.0-rc2-5-g6612da8'КН'
n
PlaceholderPlaceholder*
shape:€€€€€€€€€<*
dtype0*'
_output_shapes
:€€€€€€€€€<
p
Placeholder_1Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
p
Placeholder_2Placeholder*'
_output_shapes
:€€€€€€€€€<*
shape:€€€€€€€€€<*
dtype0
h
Placeholder_3Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
Placeholder_4Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
h
Placeholder_5Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
ѓ
5main/pi/dense/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@main/pi/dense/kernel*
dtype0*
_output_shapes
:*
valueB"<      
°
3main/pi/dense/kernel/Initializer/random_uniform/minConst*'
_class
loc:@main/pi/dense/kernel*
dtype0*
valueB
 *Њ*
_output_shapes
: 
°
3main/pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*
_output_shapes
: *'
_class
loc:@main/pi/dense/kernel
ю
=main/pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/pi/dense/kernel/Initializer/random_uniform/shape*'
_class
loc:@main/pi/dense/kernel*
dtype0*
seed2	*

seed *
T0*
_output_shapes
:	<А
о
3main/pi/dense/kernel/Initializer/random_uniform/subSub3main/pi/dense/kernel/Initializer/random_uniform/max3main/pi/dense/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: 
Б
3main/pi/dense/kernel/Initializer/random_uniform/mulMul=main/pi/dense/kernel/Initializer/random_uniform/RandomUniform3main/pi/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	<А*'
_class
loc:@main/pi/dense/kernel
у
/main/pi/dense/kernel/Initializer/random_uniformAdd3main/pi/dense/kernel/Initializer/random_uniform/mul3main/pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	<А*
T0*'
_class
loc:@main/pi/dense/kernel
≥
main/pi/dense/kernel
VariableV2*
shared_name *
_output_shapes
:	<А*
shape:	<А*
	container *'
_class
loc:@main/pi/dense/kernel*
dtype0
и
main/pi/dense/kernel/AssignAssignmain/pi/dense/kernel/main/pi/dense/kernel/Initializer/random_uniform*'
_class
loc:@main/pi/dense/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	<А
О
main/pi/dense/kernel/readIdentitymain/pi/dense/kernel*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<А
Ъ
$main/pi/dense/bias/Initializer/zerosConst*
valueBА*    *
_output_shapes	
:А*%
_class
loc:@main/pi/dense/bias*
dtype0
І
main/pi/dense/bias
VariableV2*
	container *%
_class
loc:@main/pi/dense/bias*
dtype0*
shape:А*
shared_name *
_output_shapes	
:А
”
main/pi/dense/bias/AssignAssignmain/pi/dense/bias$main/pi/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes	
:А*
T0*%
_class
loc:@main/pi/dense/bias
Д
main/pi/dense/bias/readIdentitymain/pi/dense/bias*
T0*
_output_shapes	
:А*%
_class
loc:@main/pi/dense/bias
Я
main/pi/dense/MatMulMatMulPlaceholdermain/pi/dense/kernel/read*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( *
transpose_b( 
Щ
main/pi/dense/BiasAddBiasAddmain/pi/dense/MatMulmain/pi/dense/bias/read*
T0*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC
d
main/pi/dense/ReluRelumain/pi/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
≥
7main/pi/dense_1/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@main/pi/dense_1/kernel*
_output_shapes
:*
valueB"      *
dtype0
•
5main/pi/dense_1/kernel/Initializer/random_uniform/minConst*)
_class
loc:@main/pi/dense_1/kernel*
valueB
 *„≥Ёљ*
_output_shapes
: *
dtype0
•
5main/pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *„≥Ё=*
_output_shapes
: *)
_class
loc:@main/pi/dense_1/kernel
Е
?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2* 
_output_shapes
:
АА*
T0*

seed *
dtype0*)
_class
loc:@main/pi/dense_1/kernel
ц
5main/pi/dense_1/kernel/Initializer/random_uniform/subSub5main/pi/dense_1/kernel/Initializer/random_uniform/max5main/pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *)
_class
loc:@main/pi/dense_1/kernel*
T0
К
5main/pi/dense_1/kernel/Initializer/random_uniform/mulMul?main/pi/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_1/kernel/Initializer/random_uniform/sub*)
_class
loc:@main/pi/dense_1/kernel*
T0* 
_output_shapes
:
АА
ь
1main/pi/dense_1/kernel/Initializer/random_uniformAdd5main/pi/dense_1/kernel/Initializer/random_uniform/mul5main/pi/dense_1/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
T0
є
main/pi/dense_1/kernel
VariableV2*
shared_name *)
_class
loc:@main/pi/dense_1/kernel*
dtype0*
shape:
АА* 
_output_shapes
:
АА*
	container 
с
main/pi/dense_1/kernel/AssignAssignmain/pi/dense_1/kernel1main/pi/dense_1/kernel/Initializer/random_uniform*
T0*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА
Х
main/pi/dense_1/kernel/readIdentitymain/pi/dense_1/kernel* 
_output_shapes
:
АА*
T0*)
_class
loc:@main/pi/dense_1/kernel
Ю
&main/pi/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*'
_class
loc:@main/pi/dense_1/bias*
valueBА*    
Ђ
main/pi/dense_1/bias
VariableV2*
shape:А*'
_class
loc:@main/pi/dense_1/bias*
shared_name *
	container *
dtype0*
_output_shapes	
:А
џ
main/pi/dense_1/bias/AssignAssignmain/pi/dense_1/bias&main/pi/dense_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes	
:А*
T0*'
_class
loc:@main/pi/dense_1/bias
К
main/pi/dense_1/bias/readIdentitymain/pi/dense_1/bias*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А*
T0
™
main/pi/dense_1/MatMulMatMulmain/pi/dense/Relumain/pi/dense_1/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
Я
main/pi/dense_1/BiasAddBiasAddmain/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
h
main/pi/dense_1/ReluRelumain/pi/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
≥
7main/pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@main/pi/dense_2/kernel*
valueB"      
•
5main/pi/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *)
_class
loc:@main/pi/dense_2/kernel*
dtype0*
valueB
 *Ц(Њ
•
5main/pi/dense_2/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@main/pi/dense_2/kernel*
dtype0*
_output_shapes
: *
valueB
 *Ц(>
Д
?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А*

seed *
seed2+*
dtype0*)
_class
loc:@main/pi/dense_2/kernel*
T0
ц
5main/pi/dense_2/kernel/Initializer/random_uniform/subSub5main/pi/dense_2/kernel/Initializer/random_uniform/max5main/pi/dense_2/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
: 
Й
5main/pi/dense_2/kernel/Initializer/random_uniform/mulMul?main/pi/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_2/kernel/Initializer/random_uniform/sub*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
T0
ы
1main/pi/dense_2/kernel/Initializer/random_uniformAdd5main/pi/dense_2/kernel/Initializer/random_uniform/mul5main/pi/dense_2/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А
Ј
main/pi/dense_2/kernel
VariableV2*
shape:	А*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
	container *
dtype0*
shared_name 
р
main/pi/dense_2/kernel/AssignAssignmain/pi/dense_2/kernel1main/pi/dense_2/kernel/Initializer/random_uniform*
_output_shapes
:	А*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(*
T0
Ф
main/pi/dense_2/kernel/readIdentitymain/pi/dense_2/kernel*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
T0
Ь
&main/pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*'
_class
loc:@main/pi/dense_2/bias*
valueB*    
©
main/pi/dense_2/bias
VariableV2*
_output_shapes
:*
shared_name *
shape:*
	container *'
_class
loc:@main/pi/dense_2/bias*
dtype0
Џ
main/pi/dense_2/bias/AssignAssignmain/pi/dense_2/bias&main/pi/dense_2/bias/Initializer/zeros*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Й
main/pi/dense_2/bias/readIdentitymain/pi/dense_2/bias*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias
Ђ
main/pi/dense_2/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_2/kernel/read*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
T0*
transpose_a( 
Ю
main/pi/dense_2/BiasAddBiasAddmain/pi/dense_2/MatMulmain/pi/dense_2/bias/read*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC*
T0
≥
7main/pi/dense_3/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:*
valueB"      *
dtype0
•
5main/pi/dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *Ц(Њ*
_output_shapes
: *)
_class
loc:@main/pi/dense_3/kernel
•
5main/pi/dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ц(>*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
: *
dtype0
Д
?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/pi/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
T0*
_output_shapes
:	А*

seed *)
_class
loc:@main/pi/dense_3/kernel*
seed2;
ц
5main/pi/dense_3/kernel/Initializer/random_uniform/subSub5main/pi/dense_3/kernel/Initializer/random_uniform/max5main/pi/dense_3/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@main/pi/dense_3/kernel
Й
5main/pi/dense_3/kernel/Initializer/random_uniform/mulMul?main/pi/dense_3/kernel/Initializer/random_uniform/RandomUniform5main/pi/dense_3/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_3/kernel
ы
1main/pi/dense_3/kernel/Initializer/random_uniformAdd5main/pi/dense_3/kernel/Initializer/random_uniform/mul5main/pi/dense_3/kernel/Initializer/random_uniform/min*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
T0
Ј
main/pi/dense_3/kernel
VariableV2*
_output_shapes
:	А*
	container *
dtype0*
shape:	А*
shared_name *)
_class
loc:@main/pi/dense_3/kernel
р
main/pi/dense_3/kernel/AssignAssignmain/pi/dense_3/kernel1main/pi/dense_3/kernel/Initializer/random_uniform*
_output_shapes
:	А*
T0*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(
Ф
main/pi/dense_3/kernel/readIdentitymain/pi/dense_3/kernel*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	А
Ь
&main/pi/dense_3/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias
©
main/pi/dense_3/bias
VariableV2*
shared_name *
_output_shapes
:*
dtype0*
shape:*
	container *'
_class
loc:@main/pi/dense_3/bias
Џ
main/pi/dense_3/bias/AssignAssignmain/pi/dense_3/bias&main/pi/dense_3/bias/Initializer/zeros*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
Й
main/pi/dense_3/bias/readIdentitymain/pi/dense_3/bias*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
T0
Ђ
main/pi/dense_3/MatMulMatMulmain/pi/dense_1/Relumain/pi/dense_3/kernel/read*
T0*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
transpose_a( 
Ю
main/pi/dense_3/BiasAddBiasAddmain/pi/dense_3/MatMulmain/pi/dense_3/bias/read*
T0*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC
d
main/pi/clip_by_value/Minimum/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
Ф
main/pi/clip_by_value/MinimumMinimummain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
\
main/pi/clip_by_value/yConst*
dtype0*
_output_shapes
: *
valueB
 *  †Ѕ
К
main/pi/clip_by_valueMaximummain/pi/clip_by_value/Minimummain/pi/clip_by_value/y*
T0*'
_output_shapes
:€€€€€€€€€
[
main/pi/ExpExpmain/pi/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
d
main/pi/ShapeShapemain/pi/dense_2/BiasAdd*
_output_shapes
:*
out_type0*
T0
_
main/pi/random_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
a
main/pi/random_normal/stddevConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
©
*main/pi/random_normal/RandomStandardNormalRandomStandardNormalmain/pi/Shape*

seed *
dtype0*
T0*'
_output_shapes
:€€€€€€€€€*
seed2P
Ь
main/pi/random_normal/mulMul*main/pi/random_normal/RandomStandardNormalmain/pi/random_normal/stddev*'
_output_shapes
:€€€€€€€€€*
T0
Е
main/pi/random_normalAddmain/pi/random_normal/mulmain/pi/random_normal/mean*'
_output_shapes
:€€€€€€€€€*
T0
h
main/pi/mulMulmain/pi/random_normalmain/pi/Exp*'
_output_shapes
:€€€€€€€€€*
T0
j
main/pi/addAddmain/pi/dense_2/BiasAddmain/pi/mul*'
_output_shapes
:€€€€€€€€€*
T0
j
main/pi/subSubmain/pi/addmain/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
main/pi/Exp_1Expmain/pi/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
T
main/pi/add_1/yConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
f
main/pi/add_1Addmain/pi/Exp_1main/pi/add_1/y*'
_output_shapes
:€€€€€€€€€*
T0
h
main/pi/truedivRealDivmain/pi/submain/pi/add_1*
T0*'
_output_shapes
:€€€€€€€€€
R
main/pi/pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
d
main/pi/powPowmain/pi/truedivmain/pi/pow/y*
T0*'
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€*
T0
b
main/pi/add_2Addmain/pi/powmain/pi/mul_1*'
_output_shapes
:€€€€€€€€€*
T0
T
main/pi/add_3/yConst*
valueB
 *О?л?*
dtype0*
_output_shapes
: 
f
main/pi/add_3Addmain/pi/add_2main/pi/add_3/y*
T0*'
_output_shapes
:€€€€€€€€€
T
main/pi/mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *   њ
f
main/pi/mul_2Mulmain/pi/mul_2/xmain/pi/add_3*'
_output_shapes
:€€€€€€€€€*
T0
_
main/pi/Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
Л
main/pi/SumSummain/pi/mul_2main/pi/Sum/reduction_indices*
	keep_dims( *#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
T
main/pi/sub_1/xConst*
valueB
 *r1?*
dtype0*
_output_shapes
: 
d
main/pi/sub_1Submain/pi/sub_1/xmain/pi/add*'
_output_shapes
:€€€€€€€€€*
T0
T
main/pi/mul_3/xConst*
_output_shapes
: *
valueB
 *   ј*
dtype0
d
main/pi/mul_3Mulmain/pi/mul_3/xmain/pi/add*
T0*'
_output_shapes
:€€€€€€€€€
]
main/pi/SoftplusSoftplusmain/pi/mul_3*
T0*'
_output_shapes
:€€€€€€€€€
g
main/pi/sub_2Submain/pi/sub_1main/pi/Softplus*
T0*'
_output_shapes
:€€€€€€€€€
T
main/pi/mul_4/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
f
main/pi/mul_4Mulmain/pi/mul_4/xmain/pi/sub_2*'
_output_shapes
:€€€€€€€€€*
T0
a
main/pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
П
main/pi/Sum_1Summain/pi/mul_4main/pi/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*#
_output_shapes
:€€€€€€€€€*
T0
^
main/pi/sub_3Submain/pi/Summain/pi/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
_
main/pi/TanhTanhmain/pi/dense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
U
main/pi/Tanh_1Tanhmain/pi/add*
T0*'
_output_shapes
:€€€€€€€€€
O

main/mul/yConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
[
main/mulMulmain/pi/Tanh
main/mul/y*
T0*'
_output_shapes
:€€€€€€€€€
Q
main/mul_1/yConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
a

main/mul_1Mulmain/pi/Tanh_1main/mul_1/y*
T0*'
_output_shapes
:€€€€€€€€€
_
main/qr1/concat/axisConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Ф
main/qr1/concatConcatV2PlaceholderPlaceholder_1main/qr1/concat/axis*
N*'
_output_shapes
:€€€€€€€€€>*

Tidx0*
T0
±
6main/qr1/dense/kernel/Initializer/random_uniform/shapeConst*
valueB">      *
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:
£
4main/qr1/dense/kernel/Initializer/random_uniform/minConst*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
valueB
 *?®Њ*
_output_shapes
: 
£
4main/qr1/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *?®>*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: 
Б
>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr1/dense/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
seed2{*

seed 
т
4main/qr1/dense/kernel/Initializer/random_uniform/subSub4main/qr1/dense/kernel/Initializer/random_uniform/max4main/qr1/dense/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: 
Е
4main/qr1/dense/kernel/Initializer/random_uniform/mulMul>main/qr1/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr1/dense/kernel/Initializer/random_uniform/sub*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
T0
ч
0main/qr1/dense/kernel/Initializer/random_uniformAdd4main/qr1/dense/kernel/Initializer/random_uniform/mul4main/qr1/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
T0
µ
main/qr1/dense/kernel
VariableV2*
dtype0*
shared_name *(
_class
loc:@main/qr1/dense/kernel*
shape:	>А*
_output_shapes
:	>А*
	container 
м
main/qr1/dense/kernel/AssignAssignmain/qr1/dense/kernel0main/qr1/dense/kernel/Initializer/random_uniform*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
T0*
_output_shapes
:	>А*
use_locking(
С
main/qr1/dense/kernel/readIdentitymain/qr1/dense/kernel*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr1/dense/kernel
Ь
%main/qr1/dense/bias/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*
valueBА*    *&
_class
loc:@main/qr1/dense/bias
©
main/qr1/dense/bias
VariableV2*
	container *
shared_name *&
_class
loc:@main/qr1/dense/bias*
dtype0*
_output_shapes	
:А*
shape:А
„
main/qr1/dense/bias/AssignAssignmain/qr1/dense/bias%main/qr1/dense/bias/Initializer/zeros*
_output_shapes	
:А*
validate_shape(*
T0*&
_class
loc:@main/qr1/dense/bias*
use_locking(
З
main/qr1/dense/bias/readIdentitymain/qr1/dense/bias*
_output_shapes	
:А*
T0*&
_class
loc:@main/qr1/dense/bias
•
main/qr1/dense/MatMulMatMulmain/qr1/concatmain/qr1/dense/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
T0
Ь
main/qr1/dense/BiasAddBiasAddmain/qr1/dense/MatMulmain/qr1/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
f
main/qr1/dense/ReluRelumain/qr1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
µ
8main/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
_output_shapes
:
І
6main/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *„≥Ёљ*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr1/dense_1/kernel
І
6main/qr1/dense_1/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
: *
valueB
 *„≥Ё=*
dtype0
Й
@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_1/kernel/Initializer/random_uniform/shape*
seed2М*

seed * 
_output_shapes
:
АА*
T0*
dtype0**
_class 
loc:@main/qr1/dense_1/kernel
ъ
6main/qr1/dense_1/kernel/Initializer/random_uniform/subSub6main/qr1/dense_1/kernel/Initializer/random_uniform/max6main/qr1/dense_1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
_output_shapes
: 
О
6main/qr1/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel*
T0
А
2main/qr1/dense_1/kernel/Initializer/random_uniformAdd6main/qr1/dense_1/kernel/Initializer/random_uniform/mul6main/qr1/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel*
T0
ї
main/qr1/dense_1/kernel
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
АА*
	container *
shape:
АА**
_class 
loc:@main/qr1/dense_1/kernel
х
main/qr1/dense_1/kernel/AssignAssignmain/qr1/dense_1/kernel2main/qr1/dense_1/kernel/Initializer/random_uniform*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:
АА*
validate_shape(
Ш
main/qr1/dense_1/kernel/readIdentitymain/qr1/dense_1/kernel**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
T0
†
'main/qr1/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *(
_class
loc:@main/qr1/dense_1/bias
≠
main/qr1/dense_1/bias
VariableV2*(
_class
loc:@main/qr1/dense_1/bias*
shared_name *
shape:А*
_output_shapes	
:А*
	container *
dtype0
я
main/qr1/dense_1/bias/AssignAssignmain/qr1/dense_1/bias'main/qr1/dense_1/bias/Initializer/zeros*
_output_shapes	
:А*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
T0
Н
main/qr1/dense_1/bias/readIdentitymain/qr1/dense_1/bias*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr1/dense_1/bias
≠
main/qr1/dense_1/MatMulMatMulmain/qr1/dense/Relumain/qr1/dense_1/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
Ґ
main/qr1/dense_1/BiasAddBiasAddmain/qr1/dense_1/MatMulmain/qr1/dense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
j
main/qr1/dense_1/ReluRelumain/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
µ
8main/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:**
_class 
loc:@main/qr1/dense_2/kernel*
dtype0
І
6main/qr1/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: **
_class 
loc:@main/qr1/dense_2/kernel*
dtype0*
valueB
 *IvЊ
І
6main/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*
dtype0*
_output_shapes
: **
_class 
loc:@main/qr1/dense_2/kernel
И
@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr1/dense_2/kernel/Initializer/random_uniform/shape*

seed *
seed2Э**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
T0*
dtype0
ъ
6main/qr1/dense_2/kernel/Initializer/random_uniform/subSub6main/qr1/dense_2/kernel/Initializer/random_uniform/max6main/qr1/dense_2/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
: 
Н
6main/qr1/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr1/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	А**
_class 
loc:@main/qr1/dense_2/kernel
€
2main/qr1/dense_2/kernel/Initializer/random_uniformAdd6main/qr1/dense_2/kernel/Initializer/random_uniform/mul6main/qr1/dense_2/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	А
є
main/qr1/dense_2/kernel
VariableV2**
_class 
loc:@main/qr1/dense_2/kernel*
shared_name *
	container *
dtype0*
_output_shapes
:	А*
shape:	А
ф
main/qr1/dense_2/kernel/AssignAssignmain/qr1/dense_2/kernel2main/qr1/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А
Ч
main/qr1/dense_2/kernel/readIdentitymain/qr1/dense_2/kernel**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
T0
Ю
'main/qr1/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *(
_class
loc:@main/qr1/dense_2/bias*
dtype0
Ђ
main/qr1/dense_2/bias
VariableV2*
	container *(
_class
loc:@main/qr1/dense_2/bias*
shared_name *
_output_shapes
:*
dtype0*
shape:
ё
main/qr1/dense_2/bias/AssignAssignmain/qr1/dense_2/bias'main/qr1/dense_2/bias/Initializer/zeros*
use_locking(*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0
М
main/qr1/dense_2/bias/readIdentitymain/qr1/dense_2/bias*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
T0
Ѓ
main/qr1/dense_2/MatMulMatMulmain/qr1/dense_1/Relumain/qr1/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
°
main/qr1/dense_2/BiasAddBiasAddmain/qr1/dense_2/MatMulmain/qr1/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
z
main/qr1/SqueezeSqueezemain/qr1/dense_2/BiasAdd*
T0*#
_output_shapes
:€€€€€€€€€*
squeeze_dims

a
main/qr1_1/concat/axisConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
Х
main/qr1_1/concatConcatV2Placeholder
main/mul_1main/qr1_1/concat/axis*
T0*
N*

Tidx0*'
_output_shapes
:€€€€€€€€€>
©
main/qr1_1/dense/MatMulMatMulmain/qr1_1/concatmain/qr1/dense/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:€€€€€€€€€А
†
main/qr1_1/dense/BiasAddBiasAddmain/qr1_1/dense/MatMulmain/qr1/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
j
main/qr1_1/dense/ReluRelumain/qr1_1/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
±
main/qr1_1/dense_1/MatMulMatMulmain/qr1_1/dense/Relumain/qr1/dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
¶
main/qr1_1/dense_1/BiasAddBiasAddmain/qr1_1/dense_1/MatMulmain/qr1/dense_1/bias/read*
T0*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC
n
main/qr1_1/dense_1/ReluRelumain/qr1_1/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
≤
main/qr1_1/dense_2/MatMulMatMulmain/qr1_1/dense_1/Relumain/qr1/dense_2/kernel/read*
T0*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
transpose_a( 
•
main/qr1_1/dense_2/BiasAddBiasAddmain/qr1_1/dense_2/MatMulmain/qr1/dense_2/bias/read*'
_output_shapes
:€€€€€€€€€*
T0*
data_formatNHWC
~
main/qr1_1/SqueezeSqueezemain/qr1_1/dense_2/BiasAdd*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
*
T0
_
main/qr2/concat/axisConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
Ф
main/qr2/concatConcatV2PlaceholderPlaceholder_1main/qr2/concat/axis*

Tidx0*'
_output_shapes
:€€€€€€€€€>*
N*
T0
±
6main/qr2/dense/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@main/qr2/dense/kernel*
dtype0*
_output_shapes
:*
valueB">      
£
4main/qr2/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *?®Њ*
_output_shapes
: *
dtype0*(
_class
loc:@main/qr2/dense/kernel
£
4main/qr2/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?®>*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
: *
dtype0
В
>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform6main/qr2/dense/kernel/Initializer/random_uniform/shape*
dtype0*
seed2ї*
T0*(
_class
loc:@main/qr2/dense/kernel*

seed *
_output_shapes
:	>А
т
4main/qr2/dense/kernel/Initializer/random_uniform/subSub4main/qr2/dense/kernel/Initializer/random_uniform/max4main/qr2/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
: 
Е
4main/qr2/dense/kernel/Initializer/random_uniform/mulMul>main/qr2/dense/kernel/Initializer/random_uniform/RandomUniform4main/qr2/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr2/dense/kernel
ч
0main/qr2/dense/kernel/Initializer/random_uniformAdd4main/qr2/dense/kernel/Initializer/random_uniform/mul4main/qr2/dense/kernel/Initializer/random_uniform/min*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>А
µ
main/qr2/dense/kernel
VariableV2*(
_class
loc:@main/qr2/dense/kernel*
shared_name *
_output_shapes
:	>А*
dtype0*
shape:	>А*
	container 
м
main/qr2/dense/kernel/AssignAssignmain/qr2/dense/kernel0main/qr2/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(
С
main/qr2/dense/kernel/readIdentitymain/qr2/dense/kernel*
T0*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>А
Ь
%main/qr2/dense/bias/Initializer/zerosConst*
valueBА*    *
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias*
dtype0
©
main/qr2/dense/bias
VariableV2*
shared_name *
dtype0*
shape:А*&
_class
loc:@main/qr2/dense/bias*
	container *
_output_shapes	
:А
„
main/qr2/dense/bias/AssignAssignmain/qr2/dense/bias%main/qr2/dense/bias/Initializer/zeros*&
_class
loc:@main/qr2/dense/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
З
main/qr2/dense/bias/readIdentitymain/qr2/dense/bias*
T0*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:А
•
main/qr2/dense/MatMulMatMulmain/qr2/concatmain/qr2/dense/kernel/read*
T0*
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
Ь
main/qr2/dense/BiasAddBiasAddmain/qr2/dense/MatMulmain/qr2/dense/bias/read*
T0*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC
f
main/qr2/dense/ReluRelumain/qr2/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
µ
8main/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      **
_class 
loc:@main/qr2/dense_1/kernel
І
6main/qr2/dense_1/kernel/Initializer/random_uniform/minConst**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
valueB
 *„≥Ёљ*
_output_shapes
: 
І
6main/qr2/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *„≥Ё=*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr2/dense_1/kernel
Й
@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_1/kernel/Initializer/random_uniform/shape*
T0*
seed2ћ*
dtype0*

seed **
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА
ъ
6main/qr2/dense_1/kernel/Initializer/random_uniform/subSub6main/qr2/dense_1/kernel/Initializer/random_uniform/max6main/qr2/dense_1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
: 
О
6main/qr2/dense_1/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_1/kernel/Initializer/random_uniform/sub*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА
А
2main/qr2/dense_1/kernel/Initializer/random_uniformAdd6main/qr2/dense_1/kernel/Initializer/random_uniform/mul6main/qr2/dense_1/kernel/Initializer/random_uniform/min**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА
ї
main/qr2/dense_1/kernel
VariableV2*
dtype0*
shared_name * 
_output_shapes
:
АА**
_class 
loc:@main/qr2/dense_1/kernel*
	container *
shape:
АА
х
main/qr2/dense_1/kernel/AssignAssignmain/qr2/dense_1/kernel2main/qr2/dense_1/kernel/Initializer/random_uniform**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА*
validate_shape(
Ш
main/qr2/dense_1/kernel/readIdentitymain/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА**
_class 
loc:@main/qr2/dense_1/kernel
†
'main/qr2/dense_1/bias/Initializer/zerosConst*(
_class
loc:@main/qr2/dense_1/bias*
dtype0*
valueBА*    *
_output_shapes	
:А
≠
main/qr2/dense_1/bias
VariableV2*
dtype0*
shape:А*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А*
	container *
shared_name 
я
main/qr2/dense_1/bias/AssignAssignmain/qr2/dense_1/bias'main/qr2/dense_1/bias/Initializer/zeros*(
_class
loc:@main/qr2/dense_1/bias*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(
Н
main/qr2/dense_1/bias/readIdentitymain/qr2/dense_1/bias*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А
≠
main/qr2/dense_1/MatMulMatMulmain/qr2/dense/Relumain/qr2/dense_1/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
T0
Ґ
main/qr2/dense_1/BiasAddBiasAddmain/qr2/dense_1/MatMulmain/qr2/dense_1/bias/read*
T0*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC
j
main/qr2/dense_1/ReluRelumain/qr2/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
µ
8main/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"      **
_class 
loc:@main/qr2/dense_2/kernel
І
6main/qr2/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0**
_class 
loc:@main/qr2/dense_2/kernel*
valueB
 *IvЊ
І
6main/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0*
valueB
 *Iv>
И
@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform8main/qr2/dense_2/kernel/Initializer/random_uniform/shape*
seed2Ё*

seed **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0*
T0*
_output_shapes
:	А
ъ
6main/qr2/dense_2/kernel/Initializer/random_uniform/subSub6main/qr2/dense_2/kernel/Initializer/random_uniform/max6main/qr2/dense_2/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
: 
Н
6main/qr2/dense_2/kernel/Initializer/random_uniform/mulMul@main/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform6main/qr2/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel
€
2main/qr2/dense_2/kernel/Initializer/random_uniformAdd6main/qr2/dense_2/kernel/Initializer/random_uniform/mul6main/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
T0
є
main/qr2/dense_2/kernel
VariableV2*
shape:	А*
shared_name *
	container *
dtype0*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel
ф
main/qr2/dense_2/kernel/AssignAssignmain/qr2/dense_2/kernel2main/qr2/dense_2/kernel/Initializer/random_uniform*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А*
use_locking(*
validate_shape(
Ч
main/qr2/dense_2/kernel/readIdentitymain/qr2/dense_2/kernel*
_output_shapes
:	А*
T0**
_class 
loc:@main/qr2/dense_2/kernel
Ю
'main/qr2/dense_2/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*(
_class
loc:@main/qr2/dense_2/bias
Ђ
main/qr2/dense_2/bias
VariableV2*
shape:*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
dtype0*
	container *
shared_name 
ё
main/qr2/dense_2/bias/AssignAssignmain/qr2/dense_2/bias'main/qr2/dense_2/bias/Initializer/zeros*
use_locking(*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
М
main/qr2/dense_2/bias/readIdentitymain/qr2/dense_2/bias*
T0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias
Ѓ
main/qr2/dense_2/MatMulMatMulmain/qr2/dense_1/Relumain/qr2/dense_2/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:€€€€€€€€€
°
main/qr2/dense_2/BiasAddBiasAddmain/qr2/dense_2/MatMulmain/qr2/dense_2/bias/read*'
_output_shapes
:€€€€€€€€€*
T0*
data_formatNHWC
z
main/qr2/SqueezeSqueezemain/qr2/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:€€€€€€€€€
a
main/qr2_1/concat/axisConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Х
main/qr2_1/concatConcatV2Placeholder
main/mul_1main/qr2_1/concat/axis*

Tidx0*
N*'
_output_shapes
:€€€€€€€€€>*
T0
©
main/qr2_1/dense/MatMulMatMulmain/qr2_1/concatmain/qr2/dense/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А
†
main/qr2_1/dense/BiasAddBiasAddmain/qr2_1/dense/MatMulmain/qr2/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
j
main/qr2_1/dense/ReluRelumain/qr2_1/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
±
main/qr2_1/dense_1/MatMulMatMulmain/qr2_1/dense/Relumain/qr2/dense_1/kernel/read*
T0*
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
¶
main/qr2_1/dense_1/BiasAddBiasAddmain/qr2_1/dense_1/MatMulmain/qr2/dense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
n
main/qr2_1/dense_1/ReluRelumain/qr2_1/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
≤
main/qr2_1/dense_2/MatMulMatMulmain/qr2_1/dense_1/Relumain/qr2/dense_2/kernel/read*'
_output_shapes
:€€€€€€€€€*
T0*
transpose_a( *
transpose_b( 
•
main/qr2_1/dense_2/BiasAddBiasAddmain/qr2_1/dense_2/MatMulmain/qr2/dense_2/bias/read*
T0*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC
~
main/qr2_1/SqueezeSqueezemain/qr2_1/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:€€€€€€€€€*
T0
^
main/qc/concat/axisConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
Т
main/qc/concatConcatV2PlaceholderPlaceholder_1main/qc/concat/axis*
T0*

Tidx0*
N*'
_output_shapes
:€€€€€€€€€>
ѓ
5main/qc/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*'
_class
loc:@main/qc/dense/kernel*
valueB">      
°
3main/qc/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *?®Њ*'
_class
loc:@main/qc/dense/kernel*
dtype0*
_output_shapes
: 
°
3main/qc/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel*
valueB
 *?®>
€
=main/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform5main/qc/dense/kernel/Initializer/random_uniform/shape*'
_class
loc:@main/qc/dense/kernel*

seed *
T0*
dtype0*
_output_shapes
:	>А*
seed2ы
о
3main/qc/dense/kernel/Initializer/random_uniform/subSub3main/qc/dense/kernel/Initializer/random_uniform/max3main/qc/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*'
_class
loc:@main/qc/dense/kernel
Б
3main/qc/dense/kernel/Initializer/random_uniform/mulMul=main/qc/dense/kernel/Initializer/random_uniform/RandomUniform3main/qc/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>А*
T0*'
_class
loc:@main/qc/dense/kernel
у
/main/qc/dense/kernel/Initializer/random_uniformAdd3main/qc/dense/kernel/Initializer/random_uniform/mul3main/qc/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel*
T0
≥
main/qc/dense/kernel
VariableV2*
	container *
_output_shapes
:	>А*
dtype0*
shared_name *
shape:	>А*'
_class
loc:@main/qc/dense/kernel
и
main/qc/dense/kernel/AssignAssignmain/qc/dense/kernel/main/qc/dense/kernel/Initializer/random_uniform*
T0*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
_output_shapes
:	>А*
validate_shape(
О
main/qc/dense/kernel/readIdentitymain/qc/dense/kernel*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel*
T0
Ъ
$main/qc/dense/bias/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*%
_class
loc:@main/qc/dense/bias*
valueBА*    
І
main/qc/dense/bias
VariableV2*
_output_shapes	
:А*
shared_name *
	container *%
_class
loc:@main/qc/dense/bias*
dtype0*
shape:А
”
main/qc/dense/bias/AssignAssignmain/qc/dense/bias$main/qc/dense/bias/Initializer/zeros*
use_locking(*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А
Д
main/qc/dense/bias/readIdentitymain/qc/dense/bias*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А*
T0
Ґ
main/qc/dense/MatMulMatMulmain/qc/concatmain/qc/dense/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b( *
T0
Щ
main/qc/dense/BiasAddBiasAddmain/qc/dense/MatMulmain/qc/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
d
main/qc/dense/ReluRelumain/qc/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
≥
7main/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@main/qc/dense_1/kernel
•
5main/qc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *„≥Ёљ
•
5main/qc/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *„≥Ё=*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
: 
Ж
?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_1/kernel/Initializer/random_uniform/shape*

seed *
dtype0*)
_class
loc:@main/qc/dense_1/kernel*
seed2М*
T0* 
_output_shapes
:
АА
ц
5main/qc/dense_1/kernel/Initializer/random_uniform/subSub5main/qc/dense_1/kernel/Initializer/random_uniform/max5main/qc/dense_1/kernel/Initializer/random_uniform/min*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
: *
T0
К
5main/qc/dense_1/kernel/Initializer/random_uniform/mulMul?main/qc/dense_1/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel*
T0
ь
1main/qc/dense_1/kernel/Initializer/random_uniformAdd5main/qc/dense_1/kernel/Initializer/random_uniform/mul5main/qc/dense_1/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА
є
main/qc/dense_1/kernel
VariableV2*)
_class
loc:@main/qc/dense_1/kernel*
	container *
shape:
АА* 
_output_shapes
:
АА*
dtype0*
shared_name 
с
main/qc/dense_1/kernel/AssignAssignmain/qc/dense_1/kernel1main/qc/dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
АА*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel
Х
main/qc/dense_1/kernel/readIdentitymain/qc/dense_1/kernel* 
_output_shapes
:
АА*
T0*)
_class
loc:@main/qc/dense_1/kernel
Ю
&main/qc/dense_1/bias/Initializer/zerosConst*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
dtype0*
valueBА*    
Ђ
main/qc/dense_1/bias
VariableV2*
dtype0*
shape:А*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
	container *
shared_name 
џ
main/qc/dense_1/bias/AssignAssignmain/qc/dense_1/bias&main/qc/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
T0
К
main/qc/dense_1/bias/readIdentitymain/qc/dense_1/bias*
_output_shapes	
:А*
T0*'
_class
loc:@main/qc/dense_1/bias
™
main/qc/dense_1/MatMulMatMulmain/qc/dense/Relumain/qc/dense_1/kernel/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:€€€€€€€€€А
Я
main/qc/dense_1/BiasAddBiasAddmain/qc/dense_1/MatMulmain/qc/dense_1/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
h
main/qc/dense_1/ReluRelumain/qc/dense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
≥
7main/qc/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:*
dtype0
•
5main/qc/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *IvЊ*)
_class
loc:@main/qc/dense_2/kernel
•
5main/qc/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Iv>*)
_class
loc:@main/qc/dense_2/kernel
Е
?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform7main/qc/dense_2/kernel/Initializer/random_uniform/shape*
T0*
seed2Э*
dtype0*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*

seed 
ц
5main/qc/dense_2/kernel/Initializer/random_uniform/subSub5main/qc/dense_2/kernel/Initializer/random_uniform/max5main/qc/dense_2/kernel/Initializer/random_uniform/min*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
: 
Й
5main/qc/dense_2/kernel/Initializer/random_uniform/mulMul?main/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform5main/qc/dense_2/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А
ы
1main/qc/dense_2/kernel/Initializer/random_uniformAdd5main/qc/dense_2/kernel/Initializer/random_uniform/mul5main/qc/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	А*
T0*)
_class
loc:@main/qc/dense_2/kernel
Ј
main/qc/dense_2/kernel
VariableV2*
shared_name *
_output_shapes
:	А*
shape:	А*
	container *
dtype0*)
_class
loc:@main/qc/dense_2/kernel
р
main/qc/dense_2/kernel/AssignAssignmain/qc/dense_2/kernel1main/qc/dense_2/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
_output_shapes
:	А*
T0*)
_class
loc:@main/qc/dense_2/kernel
Ф
main/qc/dense_2/kernel/readIdentitymain/qc/dense_2/kernel*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
T0
Ь
&main/qc/dense_2/bias/Initializer/zerosConst*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
valueB*    *
dtype0
©
main/qc/dense_2/bias
VariableV2*'
_class
loc:@main/qc/dense_2/bias*
shared_name *
dtype0*
shape:*
_output_shapes
:*
	container 
Џ
main/qc/dense_2/bias/AssignAssignmain/qc/dense_2/bias&main/qc/dense_2/bias/Initializer/zeros*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
T0*
_output_shapes
:
Й
main/qc/dense_2/bias/readIdentitymain/qc/dense_2/bias*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:
Ђ
main/qc/dense_2/MatMulMatMulmain/qc/dense_1/Relumain/qc/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( *
T0
Ю
main/qc/dense_2/BiasAddBiasAddmain/qc/dense_2/MatMulmain/qc/dense_2/bias/read*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC*
T0
x
main/qc/SqueezeSqueezemain/qc/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:€€€€€€€€€*
T0
`
main/qc_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
У
main/qc_1/concatConcatV2Placeholder
main/mul_1main/qc_1/concat/axis*
N*'
_output_shapes
:€€€€€€€€€>*

Tidx0*
T0
¶
main/qc_1/dense/MatMulMatMulmain/qc_1/concatmain/qc/dense/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_b( *
transpose_a( *
T0
Э
main/qc_1/dense/BiasAddBiasAddmain/qc_1/dense/MatMulmain/qc/dense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
h
main/qc_1/dense/ReluRelumain/qc_1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
main/qc_1/dense_1/MatMulMatMulmain/qc_1/dense/Relumain/qc/dense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
£
main/qc_1/dense_1/BiasAddBiasAddmain/qc_1/dense_1/MatMulmain/qc/dense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
l
main/qc_1/dense_1/ReluRelumain/qc_1/dense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
ѓ
main/qc_1/dense_2/MatMulMatMulmain/qc_1/dense_1/Relumain/qc/dense_2/kernel/read*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
transpose_a( *
T0
Ґ
main/qc_1/dense_2/BiasAddBiasAddmain/qc_1/dense_2/MatMulmain/qc/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
|
main/qc_1/SqueezeSqueezemain/qc_1/dense_2/BiasAdd*
squeeze_dims
*#
_output_shapes
:€€€€€€€€€*
T0
£
main_1/pi/dense/MatMulMatMulPlaceholder_2main/pi/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
Э
main_1/pi/dense/BiasAddBiasAddmain_1/pi/dense/MatMulmain/pi/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
h
main_1/pi/dense/ReluRelumain_1/pi/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
main_1/pi/dense_1/MatMulMatMulmain_1/pi/dense/Relumain/pi/dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( *
transpose_b( 
£
main_1/pi/dense_1/BiasAddBiasAddmain_1/pi/dense_1/MatMulmain/pi/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
l
main_1/pi/dense_1/ReluRelumain_1/pi/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
ѓ
main_1/pi/dense_2/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( *
T0
Ґ
main_1/pi/dense_2/BiasAddBiasAddmain_1/pi/dense_2/MatMulmain/pi/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
main_1/pi/dense_3/MatMulMatMulmain_1/pi/dense_1/Relumain/pi/dense_3/kernel/read*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
T0*
transpose_b( 
Ґ
main_1/pi/dense_3/BiasAddBiasAddmain_1/pi/dense_3/MatMulmain/pi/dense_3/bias/read*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC*
T0
f
!main_1/pi/clip_by_value/Minimum/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
Ъ
main_1/pi/clip_by_value/MinimumMinimummain_1/pi/dense_3/BiasAdd!main_1/pi/clip_by_value/Minimum/y*'
_output_shapes
:€€€€€€€€€*
T0
^
main_1/pi/clip_by_value/yConst*
valueB
 *  †Ѕ*
dtype0*
_output_shapes
: 
Р
main_1/pi/clip_by_valueMaximummain_1/pi/clip_by_value/Minimummain_1/pi/clip_by_value/y*'
_output_shapes
:€€€€€€€€€*
T0
_
main_1/pi/ExpExpmain_1/pi/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
h
main_1/pi/ShapeShapemain_1/pi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
a
main_1/pi/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
c
main_1/pi/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Ѓ
,main_1/pi/random_normal/RandomStandardNormalRandomStandardNormalmain_1/pi/Shape*

seed *
T0*
seed2»*
dtype0*'
_output_shapes
:€€€€€€€€€
Ґ
main_1/pi/random_normal/mulMul,main_1/pi/random_normal/RandomStandardNormalmain_1/pi/random_normal/stddev*'
_output_shapes
:€€€€€€€€€*
T0
Л
main_1/pi/random_normalAddmain_1/pi/random_normal/mulmain_1/pi/random_normal/mean*'
_output_shapes
:€€€€€€€€€*
T0
n
main_1/pi/mulMulmain_1/pi/random_normalmain_1/pi/Exp*'
_output_shapes
:€€€€€€€€€*
T0
p
main_1/pi/addAddmain_1/pi/dense_2/BiasAddmain_1/pi/mul*'
_output_shapes
:€€€€€€€€€*
T0
p
main_1/pi/subSubmain_1/pi/addmain_1/pi/dense_2/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
a
main_1/pi/Exp_1Expmain_1/pi/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
V
main_1/pi/add_1/yConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
l
main_1/pi/add_1Addmain_1/pi/Exp_1main_1/pi/add_1/y*'
_output_shapes
:€€€€€€€€€*
T0
n
main_1/pi/truedivRealDivmain_1/pi/submain_1/pi/add_1*
T0*'
_output_shapes
:€€€€€€€€€
T
main_1/pi/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
j
main_1/pi/powPowmain_1/pi/truedivmain_1/pi/pow/y*
T0*'
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€*
T0
h
main_1/pi/add_2Addmain_1/pi/powmain_1/pi/mul_1*
T0*'
_output_shapes
:€€€€€€€€€
V
main_1/pi/add_3/yConst*
dtype0*
valueB
 *О?л?*
_output_shapes
: 
l
main_1/pi/add_3Addmain_1/pi/add_2main_1/pi/add_3/y*'
_output_shapes
:€€€€€€€€€*
T0
V
main_1/pi/mul_2/xConst*
_output_shapes
: *
valueB
 *   њ*
dtype0
l
main_1/pi/mul_2Mulmain_1/pi/mul_2/xmain_1/pi/add_3*'
_output_shapes
:€€€€€€€€€*
T0
a
main_1/pi/Sum/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
С
main_1/pi/SumSummain_1/pi/mul_2main_1/pi/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:€€€€€€€€€
V
main_1/pi/sub_1/xConst*
valueB
 *r1?*
dtype0*
_output_shapes
: 
j
main_1/pi/sub_1Submain_1/pi/sub_1/xmain_1/pi/add*
T0*'
_output_shapes
:€€€€€€€€€
V
main_1/pi/mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ј
j
main_1/pi/mul_3Mulmain_1/pi/mul_3/xmain_1/pi/add*'
_output_shapes
:€€€€€€€€€*
T0
a
main_1/pi/SoftplusSoftplusmain_1/pi/mul_3*
T0*'
_output_shapes
:€€€€€€€€€
m
main_1/pi/sub_2Submain_1/pi/sub_1main_1/pi/Softplus*'
_output_shapes
:€€€€€€€€€*
T0
V
main_1/pi/mul_4/xConst*
dtype0*
valueB
 *   @*
_output_shapes
: 
l
main_1/pi/mul_4Mulmain_1/pi/mul_4/xmain_1/pi/sub_2*
T0*'
_output_shapes
:€€€€€€€€€
c
!main_1/pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
Х
main_1/pi/Sum_1Summain_1/pi/mul_4!main_1/pi/Sum_1/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:€€€€€€€€€
d
main_1/pi/sub_3Submain_1/pi/Summain_1/pi/Sum_1*#
_output_shapes
:€€€€€€€€€*
T0
c
main_1/pi/TanhTanhmain_1/pi/dense_2/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
Y
main_1/pi/Tanh_1Tanhmain_1/pi/add*'
_output_shapes
:€€€€€€€€€*
T0
Q
main_1/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
a

main_1/mulMulmain_1/pi/Tanhmain_1/mul/y*'
_output_shapes
:€€€€€€€€€*
T0
S
main_1/mul_1/yConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
g
main_1/mul_1Mulmain_1/pi/Tanh_1main_1/mul_1/y*
T0*'
_output_shapes
:€€€€€€€€€
a
target/qr1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
Ъ
target/qr1/concatConcatV2Placeholder_2Placeholder_1target/qr1/concat/axis*
T0*'
_output_shapes
:€€€€€€€€€>*
N*

Tidx0
µ
8target/qr1/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:**
_class 
loc:@target/qr1/dense/kernel*
valueB">      
І
6target/qr1/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0**
_class 
loc:@target/qr1/dense/kernel*
valueB
 *?®Њ
І
6target/qr1/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *?®>*
_output_shapes
: *
dtype0**
_class 
loc:@target/qr1/dense/kernel
И
@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr1/dense/kernel/Initializer/random_uniform/shape*

seed *
_output_shapes
:	>А*
dtype0*
seed2у**
_class 
loc:@target/qr1/dense/kernel*
T0
ъ
6target/qr1/dense/kernel/Initializer/random_uniform/subSub6target/qr1/dense/kernel/Initializer/random_uniform/max6target/qr1/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: **
_class 
loc:@target/qr1/dense/kernel
Н
6target/qr1/dense/kernel/Initializer/random_uniform/mulMul@target/qr1/dense/kernel/Initializer/random_uniform/RandomUniform6target/qr1/dense/kernel/Initializer/random_uniform/sub**
_class 
loc:@target/qr1/dense/kernel*
T0*
_output_shapes
:	>А
€
2target/qr1/dense/kernel/Initializer/random_uniformAdd6target/qr1/dense/kernel/Initializer/random_uniform/mul6target/qr1/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	>А**
_class 
loc:@target/qr1/dense/kernel
є
target/qr1/dense/kernel
VariableV2**
_class 
loc:@target/qr1/dense/kernel*
	container *
_output_shapes
:	>А*
dtype0*
shape:	>А*
shared_name 
ф
target/qr1/dense/kernel/AssignAssigntarget/qr1/dense/kernel2target/qr1/dense/kernel/Initializer/random_uniform*
validate_shape(**
_class 
loc:@target/qr1/dense/kernel*
use_locking(*
T0*
_output_shapes
:	>А
Ч
target/qr1/dense/kernel/readIdentitytarget/qr1/dense/kernel*
_output_shapes
:	>А*
T0**
_class 
loc:@target/qr1/dense/kernel
†
'target/qr1/dense/bias/Initializer/zerosConst*
dtype0*
valueBА*    *(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:А
≠
target/qr1/dense/bias
VariableV2*
dtype0*
_output_shapes	
:А*
	container *
shared_name *
shape:А*(
_class
loc:@target/qr1/dense/bias
я
target/qr1/dense/bias/AssignAssigntarget/qr1/dense/bias'target/qr1/dense/bias/Initializer/zeros*
_output_shapes	
:А*(
_class
loc:@target/qr1/dense/bias*
use_locking(*
T0*
validate_shape(
Н
target/qr1/dense/bias/readIdentitytarget/qr1/dense/bias*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:А*
T0
Ђ
target/qr1/dense/MatMulMatMultarget/qr1/concattarget/qr1/dense/kernel/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:€€€€€€€€€А
Ґ
target/qr1/dense/BiasAddBiasAddtarget/qr1/dense/MatMultarget/qr1/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
j
target/qr1/dense/ReluRelutarget/qr1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
є
:target/qr1/dense_1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@target/qr1/dense_1/kernel*
dtype0*
valueB"      *
_output_shapes
:
Ђ
8target/qr1/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *„≥Ёљ*,
_class"
 loc:@target/qr1/dense_1/kernel
Ђ
8target/qr1/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *„≥Ё=*,
_class"
 loc:@target/qr1/dense_1/kernel
П
Btarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_1/kernel/Initializer/random_uniform/shape*,
_class"
 loc:@target/qr1/dense_1/kernel*

seed *
seed2Д* 
_output_shapes
:
АА*
T0*
dtype0
В
8target/qr1/dense_1/kernel/Initializer/random_uniform/subSub8target/qr1/dense_1/kernel/Initializer/random_uniform/max8target/qr1/dense_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel*
_output_shapes
: 
Ц
8target/qr1/dense_1/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_1/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel* 
_output_shapes
:
АА
И
4target/qr1/dense_1/kernel/Initializer/random_uniformAdd8target/qr1/dense_1/kernel/Initializer/random_uniform/mul8target/qr1/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel
њ
target/qr1/dense_1/kernel
VariableV2*
shape:
АА* 
_output_shapes
:
АА*,
_class"
 loc:@target/qr1/dense_1/kernel*
shared_name *
dtype0*
	container 
э
 target/qr1/dense_1/kernel/AssignAssigntarget/qr1/dense_1/kernel4target/qr1/dense_1/kernel/Initializer/random_uniform*,
_class"
 loc:@target/qr1/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0
Ю
target/qr1/dense_1/kernel/readIdentitytarget/qr1/dense_1/kernel*
T0* 
_output_shapes
:
АА*,
_class"
 loc:@target/qr1/dense_1/kernel
§
)target/qr1/dense_1/bias/Initializer/zerosConst*
_output_shapes	
:А**
_class 
loc:@target/qr1/dense_1/bias*
dtype0*
valueBА*    
±
target/qr1/dense_1/bias
VariableV2*
shared_name *
dtype0*
shape:А*
	container *
_output_shapes	
:А**
_class 
loc:@target/qr1/dense_1/bias
з
target/qr1/dense_1/bias/AssignAssigntarget/qr1/dense_1/bias)target/qr1/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0**
_class 
loc:@target/qr1/dense_1/bias
У
target/qr1/dense_1/bias/readIdentitytarget/qr1/dense_1/bias*
T0**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:А
≥
target/qr1/dense_1/MatMulMatMultarget/qr1/dense/Relutarget/qr1/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:€€€€€€€€€А
®
target/qr1/dense_1/BiasAddBiasAddtarget/qr1/dense_1/MatMultarget/qr1/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
n
target/qr1/dense_1/ReluRelutarget/qr1/dense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
є
:target/qr1/dense_2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:*
valueB"      *
dtype0
Ђ
8target/qr1/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *IvЊ*
dtype0*
_output_shapes
: *,
_class"
 loc:@target/qr1/dense_2/kernel
Ђ
8target/qr1/dense_2/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@target/qr1/dense_2/kernel*
valueB
 *Iv>*
_output_shapes
: *
dtype0
О
Btarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr1/dense_2/kernel/Initializer/random_uniform/shape*
T0*
_output_shapes
:	А*
dtype0*
seed2Х*

seed *,
_class"
 loc:@target/qr1/dense_2/kernel
В
8target/qr1/dense_2/kernel/Initializer/random_uniform/subSub8target/qr1/dense_2/kernel/Initializer/random_uniform/max8target/qr1/dense_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
: *
T0
Х
8target/qr1/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr1/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr1/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	А*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0
З
4target/qr1/dense_2/kernel/Initializer/random_uniformAdd8target/qr1/dense_2/kernel/Initializer/random_uniform/mul8target/qr1/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	А*,
_class"
 loc:@target/qr1/dense_2/kernel*
T0
љ
target/qr1/dense_2/kernel
VariableV2*
shape:	А*
shared_name *
dtype0*
	container *
_output_shapes
:	А*,
_class"
 loc:@target/qr1/dense_2/kernel
ь
 target/qr1/dense_2/kernel/AssignAssigntarget/qr1/dense_2/kernel4target/qr1/dense_2/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	А*,
_class"
 loc:@target/qr1/dense_2/kernel
Э
target/qr1/dense_2/kernel/readIdentitytarget/qr1/dense_2/kernel*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	А*
T0
Ґ
)target/qr1/dense_2/bias/Initializer/zerosConst**
_class 
loc:@target/qr1/dense_2/bias*
_output_shapes
:*
valueB*    *
dtype0
ѓ
target/qr1/dense_2/bias
VariableV2*
shape:**
_class 
loc:@target/qr1/dense_2/bias*
shared_name *
_output_shapes
:*
dtype0*
	container 
ж
target/qr1/dense_2/bias/AssignAssigntarget/qr1/dense_2/bias)target/qr1/dense_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(*
T0
Т
target/qr1/dense_2/bias/readIdentitytarget/qr1/dense_2/bias**
_class 
loc:@target/qr1/dense_2/bias*
_output_shapes
:*
T0
і
target/qr1/dense_2/MatMulMatMultarget/qr1/dense_1/Relutarget/qr1/dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
І
target/qr1/dense_2/BiasAddBiasAddtarget/qr1/dense_2/MatMultarget/qr1/dense_2/bias/read*'
_output_shapes
:€€€€€€€€€*
data_formatNHWC*
T0
~
target/qr1/SqueezeSqueezetarget/qr1/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:€€€€€€€€€
c
target/qr1_1/concat/axisConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Э
target/qr1_1/concatConcatV2Placeholder_2main_1/mul_1target/qr1_1/concat/axis*'
_output_shapes
:€€€€€€€€€>*
N*

Tidx0*
T0
ѓ
target/qr1_1/dense/MatMulMatMultarget/qr1_1/concattarget/qr1/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
¶
target/qr1_1/dense/BiasAddBiasAddtarget/qr1_1/dense/MatMultarget/qr1/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
n
target/qr1_1/dense/ReluRelutarget/qr1_1/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Ј
target/qr1_1/dense_1/MatMulMatMultarget/qr1_1/dense/Relutarget/qr1/dense_1/kernel/read*
transpose_a( *
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
T0
ђ
target/qr1_1/dense_1/BiasAddBiasAddtarget/qr1_1/dense_1/MatMultarget/qr1/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
r
target/qr1_1/dense_1/ReluRelutarget/qr1_1/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Є
target/qr1_1/dense_2/MatMulMatMultarget/qr1_1/dense_1/Relutarget/qr1/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
Ђ
target/qr1_1/dense_2/BiasAddBiasAddtarget/qr1_1/dense_2/MatMultarget/qr1/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
В
target/qr1_1/SqueezeSqueezetarget/qr1_1/dense_2/BiasAdd*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
*
T0
a
target/qr2/concat/axisConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Ъ
target/qr2/concatConcatV2Placeholder_2Placeholder_1target/qr2/concat/axis*
N*
T0*'
_output_shapes
:€€€€€€€€€>*

Tidx0
µ
8target/qr2/dense/kernel/Initializer/random_uniform/shapeConst*
valueB">      *
_output_shapes
:*
dtype0**
_class 
loc:@target/qr2/dense/kernel
І
6target/qr2/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0**
_class 
loc:@target/qr2/dense/kernel*
valueB
 *?®Њ
І
6target/qr2/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: **
_class 
loc:@target/qr2/dense/kernel*
valueB
 *?®>
И
@target/qr2/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8target/qr2/dense/kernel/Initializer/random_uniform/shape*
dtype0*

seed *
T0*
_output_shapes
:	>А*
seed2≥**
_class 
loc:@target/qr2/dense/kernel
ъ
6target/qr2/dense/kernel/Initializer/random_uniform/subSub6target/qr2/dense/kernel/Initializer/random_uniform/max6target/qr2/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0**
_class 
loc:@target/qr2/dense/kernel
Н
6target/qr2/dense/kernel/Initializer/random_uniform/mulMul@target/qr2/dense/kernel/Initializer/random_uniform/RandomUniform6target/qr2/dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	>А**
_class 
loc:@target/qr2/dense/kernel*
T0
€
2target/qr2/dense/kernel/Initializer/random_uniformAdd6target/qr2/dense/kernel/Initializer/random_uniform/mul6target/qr2/dense/kernel/Initializer/random_uniform/min**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>А*
T0
є
target/qr2/dense/kernel
VariableV2*
dtype0*
_output_shapes
:	>А*
	container *
shared_name *
shape:	>А**
_class 
loc:@target/qr2/dense/kernel
ф
target/qr2/dense/kernel/AssignAssigntarget/qr2/dense/kernel2target/qr2/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>А*
use_locking(*
T0*
validate_shape(**
_class 
loc:@target/qr2/dense/kernel
Ч
target/qr2/dense/kernel/readIdentitytarget/qr2/dense/kernel*
T0**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>А
†
'target/qr2/dense/bias/Initializer/zerosConst*
dtype0*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:А*
valueBА*    
≠
target/qr2/dense/bias
VariableV2*
shared_name *
shape:А*
dtype0*
_output_shapes	
:А*(
_class
loc:@target/qr2/dense/bias*
	container 
я
target/qr2/dense/bias/AssignAssigntarget/qr2/dense/bias'target/qr2/dense/bias/Initializer/zeros*
validate_shape(*
T0*(
_class
loc:@target/qr2/dense/bias*
use_locking(*
_output_shapes	
:А
Н
target/qr2/dense/bias/readIdentitytarget/qr2/dense/bias*(
_class
loc:@target/qr2/dense/bias*
T0*
_output_shapes	
:А
Ђ
target/qr2/dense/MatMulMatMultarget/qr2/concattarget/qr2/dense/kernel/read*
transpose_b( *
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
T0
Ґ
target/qr2/dense/BiasAddBiasAddtarget/qr2/dense/MatMultarget/qr2/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
j
target/qr2/dense/ReluRelutarget/qr2/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
є
:target/qr2/dense_1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@target/qr2/dense_1/kernel*
dtype0*
_output_shapes
:*
valueB"      
Ђ
8target/qr2/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *„≥Ёљ*
dtype0*
_output_shapes
: *,
_class"
 loc:@target/qr2/dense_1/kernel
Ђ
8target/qr2/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *„≥Ё=*,
_class"
 loc:@target/qr2/dense_1/kernel*
_output_shapes
: *
dtype0
П
Btarget/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА*
seed2ƒ*

seed 
В
8target/qr2/dense_1/kernel/Initializer/random_uniform/subSub8target/qr2/dense_1/kernel/Initializer/random_uniform/max8target/qr2/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr2/dense_1/kernel*
_output_shapes
: *
T0
Ц
8target/qr2/dense_1/kernel/Initializer/random_uniform/mulMulBtarget/qr2/dense_1/kernel/Initializer/random_uniform/RandomUniform8target/qr2/dense_1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
АА
И
4target/qr2/dense_1/kernel/Initializer/random_uniformAdd8target/qr2/dense_1/kernel/Initializer/random_uniform/mul8target/qr2/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
АА*
T0
њ
target/qr2/dense_1/kernel
VariableV2*
shared_name *,
_class"
 loc:@target/qr2/dense_1/kernel*
shape:
АА* 
_output_shapes
:
АА*
dtype0*
	container 
э
 target/qr2/dense_1/kernel/AssignAssigntarget/qr2/dense_1/kernel4target/qr2/dense_1/kernel/Initializer/random_uniform*,
_class"
 loc:@target/qr2/dense_1/kernel*
use_locking(*
validate_shape(* 
_output_shapes
:
АА*
T0
Ю
target/qr2/dense_1/kernel/readIdentitytarget/qr2/dense_1/kernel*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
АА*
T0
§
)target/qr2/dense_1/bias/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    **
_class 
loc:@target/qr2/dense_1/bias*
dtype0
±
target/qr2/dense_1/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:А*
_output_shapes	
:А**
_class 
loc:@target/qr2/dense_1/bias
з
target/qr2/dense_1/bias/AssignAssigntarget/qr2/dense_1/bias)target/qr2/dense_1/bias/Initializer/zeros*
T0**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(*
_output_shapes	
:А*
validate_shape(
У
target/qr2/dense_1/bias/readIdentitytarget/qr2/dense_1/bias*
T0*
_output_shapes	
:А**
_class 
loc:@target/qr2/dense_1/bias
≥
target/qr2/dense_1/MatMulMatMultarget/qr2/dense/Relutarget/qr2/dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( *
transpose_b( 
®
target/qr2/dense_1/BiasAddBiasAddtarget/qr2/dense_1/MatMultarget/qr2/dense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
n
target/qr2/dense_1/ReluRelutarget/qr2/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
є
:target/qr2/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*,
_class"
 loc:@target/qr2/dense_2/kernel*
dtype0*
valueB"      
Ђ
8target/qr2/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *,
_class"
 loc:@target/qr2/dense_2/kernel*
valueB
 *IvЊ*
dtype0
Ђ
8target/qr2/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *Iv>*,
_class"
 loc:@target/qr2/dense_2/kernel*
dtype0
О
Btarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:target/qr2/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А*
T0*
seed2’*
dtype0*

seed *,
_class"
 loc:@target/qr2/dense_2/kernel
В
8target/qr2/dense_2/kernel/Initializer/random_uniform/subSub8target/qr2/dense_2/kernel/Initializer/random_uniform/max8target/qr2/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *,
_class"
 loc:@target/qr2/dense_2/kernel*
T0
Х
8target/qr2/dense_2/kernel/Initializer/random_uniform/mulMulBtarget/qr2/dense_2/kernel/Initializer/random_uniform/RandomUniform8target/qr2/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	А*,
_class"
 loc:@target/qr2/dense_2/kernel
З
4target/qr2/dense_2/kernel/Initializer/random_uniformAdd8target/qr2/dense_2/kernel/Initializer/random_uniform/mul8target/qr2/dense_2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0*
_output_shapes
:	А
љ
target/qr2/dense_2/kernel
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	А*,
_class"
 loc:@target/qr2/dense_2/kernel*
shape:	А
ь
 target/qr2/dense_2/kernel/AssignAssigntarget/qr2/dense_2/kernel4target/qr2/dense_2/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes
:	А*
T0*
validate_shape(*,
_class"
 loc:@target/qr2/dense_2/kernel
Э
target/qr2/dense_2/kernel/readIdentitytarget/qr2/dense_2/kernel*
_output_shapes
:	А*,
_class"
 loc:@target/qr2/dense_2/kernel*
T0
Ґ
)target/qr2/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    **
_class 
loc:@target/qr2/dense_2/bias
ѓ
target/qr2/dense_2/bias
VariableV2*
shared_name *
shape:*
dtype0*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
	container 
ж
target/qr2/dense_2/bias/AssignAssigntarget/qr2/dense_2/bias)target/qr2/dense_2/bias/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(
Т
target/qr2/dense_2/bias/readIdentitytarget/qr2/dense_2/bias*
T0*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias
і
target/qr2/dense_2/MatMulMatMultarget/qr2/dense_1/Relutarget/qr2/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
І
target/qr2/dense_2/BiasAddBiasAddtarget/qr2/dense_2/MatMultarget/qr2/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
~
target/qr2/SqueezeSqueezetarget/qr2/dense_2/BiasAdd*
T0*#
_output_shapes
:€€€€€€€€€*
squeeze_dims

c
target/qr2_1/concat/axisConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Э
target/qr2_1/concatConcatV2Placeholder_2main_1/mul_1target/qr2_1/concat/axis*'
_output_shapes
:€€€€€€€€€>*

Tidx0*
T0*
N
ѓ
target/qr2_1/dense/MatMulMatMultarget/qr2_1/concattarget/qr2/dense/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
¶
target/qr2_1/dense/BiasAddBiasAddtarget/qr2_1/dense/MatMultarget/qr2/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
n
target/qr2_1/dense/ReluRelutarget/qr2_1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
Ј
target/qr2_1/dense_1/MatMulMatMultarget/qr2_1/dense/Relutarget/qr2/dense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:€€€€€€€€€А
ђ
target/qr2_1/dense_1/BiasAddBiasAddtarget/qr2_1/dense_1/MatMultarget/qr2/dense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:€€€€€€€€€А
r
target/qr2_1/dense_1/ReluRelutarget/qr2_1/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Є
target/qr2_1/dense_2/MatMulMatMultarget/qr2_1/dense_1/Relutarget/qr2/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
Ђ
target/qr2_1/dense_2/BiasAddBiasAddtarget/qr2_1/dense_2/MatMultarget/qr2/dense_2/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
В
target/qr2_1/SqueezeSqueezetarget/qr2_1/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:€€€€€€€€€
`
target/qc/concat/axisConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ш
target/qc/concatConcatV2Placeholder_2Placeholder_1target/qc/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€>
≥
7target/qc/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB">      *)
_class
loc:@target/qc/dense/kernel
•
5target/qc/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *?®Њ*
dtype0*)
_class
loc:@target/qc/dense/kernel
•
5target/qc/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *?®>*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
: 
Е
?target/qc/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform7target/qc/dense/kernel/Initializer/random_uniform/shape*
dtype0*

seed *
seed2у*
_output_shapes
:	>А*)
_class
loc:@target/qc/dense/kernel*
T0
ц
5target/qc/dense/kernel/Initializer/random_uniform/subSub5target/qc/dense/kernel/Initializer/random_uniform/max5target/qc/dense/kernel/Initializer/random_uniform/min*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
: *
T0
Й
5target/qc/dense/kernel/Initializer/random_uniform/mulMul?target/qc/dense/kernel/Initializer/random_uniform/RandomUniform5target/qc/dense/kernel/Initializer/random_uniform/sub*)
_class
loc:@target/qc/dense/kernel*
T0*
_output_shapes
:	>А
ы
1target/qc/dense/kernel/Initializer/random_uniformAdd5target/qc/dense/kernel/Initializer/random_uniform/mul5target/qc/dense/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>А
Ј
target/qc/dense/kernel
VariableV2*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>А*
shared_name *
	container *
shape:	>А*
dtype0
р
target/qc/dense/kernel/AssignAssigntarget/qc/dense/kernel1target/qc/dense/kernel/Initializer/random_uniform*
_output_shapes
:	>А*)
_class
loc:@target/qc/dense/kernel*
T0*
use_locking(*
validate_shape(
Ф
target/qc/dense/kernel/readIdentitytarget/qc/dense/kernel*
_output_shapes
:	>А*
T0*)
_class
loc:@target/qc/dense/kernel
Ю
&target/qc/dense/bias/Initializer/zerosConst*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias*
valueBА*    *
dtype0
Ђ
target/qc/dense/bias
VariableV2*
shared_name *
shape:А*
_output_shapes	
:А*
	container *'
_class
loc:@target/qc/dense/bias*
dtype0
џ
target/qc/dense/bias/AssignAssigntarget/qc/dense/bias&target/qc/dense/bias/Initializer/zeros*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:А*
use_locking(*
T0*
validate_shape(
К
target/qc/dense/bias/readIdentitytarget/qc/dense/bias*
T0*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias
®
target/qc/dense/MatMulMatMultarget/qc/concattarget/qc/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
Я
target/qc/dense/BiasAddBiasAddtarget/qc/dense/MatMultarget/qc/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
h
target/qc/dense/ReluRelutarget/qc/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Ј
9target/qc/dense_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
©
7target/qc/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *+
_class!
loc:@target/qc/dense_1/kernel*
dtype0*
valueB
 *„≥Ёљ
©
7target/qc/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *„≥Ё=*
dtype0*
_output_shapes
: *+
_class!
loc:@target/qc/dense_1/kernel
М
Atarget/qc/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_1/kernel/Initializer/random_uniform/shape*

seed * 
_output_shapes
:
АА*+
_class!
loc:@target/qc/dense_1/kernel*
T0*
seed2Д*
dtype0
ю
7target/qc/dense_1/kernel/Initializer/random_uniform/subSub7target/qc/dense_1/kernel/Initializer/random_uniform/max7target/qc/dense_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@target/qc/dense_1/kernel*
_output_shapes
: 
Т
7target/qc/dense_1/kernel/Initializer/random_uniform/mulMulAtarget/qc/dense_1/kernel/Initializer/random_uniform/RandomUniform7target/qc/dense_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:
АА
Д
3target/qc/dense_1/kernel/Initializer/random_uniformAdd7target/qc/dense_1/kernel/Initializer/random_uniform/mul7target/qc/dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
T0*+
_class!
loc:@target/qc/dense_1/kernel
љ
target/qc/dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
shared_name *
dtype0*+
_class!
loc:@target/qc/dense_1/kernel*
shape:
АА
щ
target/qc/dense_1/kernel/AssignAssigntarget/qc/dense_1/kernel3target/qc/dense_1/kernel/Initializer/random_uniform*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АА
Ы
target/qc/dense_1/kernel/readIdentitytarget/qc/dense_1/kernel*+
_class!
loc:@target/qc/dense_1/kernel*
T0* 
_output_shapes
:
АА
Ґ
(target/qc/dense_1/bias/Initializer/zerosConst*)
_class
loc:@target/qc/dense_1/bias*
valueBА*    *
_output_shapes	
:А*
dtype0
ѓ
target/qc/dense_1/bias
VariableV2*
dtype0*
shared_name *
	container *)
_class
loc:@target/qc/dense_1/bias*
shape:А*
_output_shapes	
:А
г
target/qc/dense_1/bias/AssignAssigntarget/qc/dense_1/bias(target/qc/dense_1/bias/Initializer/zeros*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_1/bias*
use_locking(*
_output_shapes	
:А
Р
target/qc/dense_1/bias/readIdentitytarget/qc/dense_1/bias*
T0*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:А
∞
target/qc/dense_1/MatMulMatMultarget/qc/dense/Relutarget/qc/dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
T0*
transpose_b( 
•
target/qc/dense_1/BiasAddBiasAddtarget/qc/dense_1/MatMultarget/qc/dense_1/bias/read*
T0*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC
l
target/qc/dense_1/ReluRelutarget/qc/dense_1/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
Ј
9target/qc/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:*
dtype0
©
7target/qc/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *IvЊ*
_output_shapes
: *+
_class!
loc:@target/qc/dense_2/kernel*
dtype0
©
7target/qc/dense_2/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@target/qc/dense_2/kernel*
dtype0*
_output_shapes
: *
valueB
 *Iv>
Л
Atarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform9target/qc/dense_2/kernel/Initializer/random_uniform/shape*+
_class!
loc:@target/qc/dense_2/kernel*
T0*

seed *
dtype0*
seed2Х*
_output_shapes
:	А
ю
7target/qc/dense_2/kernel/Initializer/random_uniform/subSub7target/qc/dense_2/kernel/Initializer/random_uniform/max7target/qc/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*+
_class!
loc:@target/qc/dense_2/kernel
С
7target/qc/dense_2/kernel/Initializer/random_uniform/mulMulAtarget/qc/dense_2/kernel/Initializer/random_uniform/RandomUniform7target/qc/dense_2/kernel/Initializer/random_uniform/sub*+
_class!
loc:@target/qc/dense_2/kernel*
_output_shapes
:	А*
T0
Г
3target/qc/dense_2/kernel/Initializer/random_uniformAdd7target/qc/dense_2/kernel/Initializer/random_uniform/mul7target/qc/dense_2/kernel/Initializer/random_uniform/min*+
_class!
loc:@target/qc/dense_2/kernel*
T0*
_output_shapes
:	А
ї
target/qc/dense_2/kernel
VariableV2*
	container *
shape:	А*+
_class!
loc:@target/qc/dense_2/kernel*
dtype0*
_output_shapes
:	А*
shared_name 
ш
target/qc/dense_2/kernel/AssignAssigntarget/qc/dense_2/kernel3target/qc/dense_2/kernel/Initializer/random_uniform*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	А
Ъ
target/qc/dense_2/kernel/readIdentitytarget/qc/dense_2/kernel*
_output_shapes
:	А*
T0*+
_class!
loc:@target/qc/dense_2/kernel
†
(target/qc/dense_2/bias/Initializer/zerosConst*
dtype0*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:*
valueB*    
≠
target/qc/dense_2/bias
VariableV2*
shared_name *
dtype0*
	container *)
_class
loc:@target/qc/dense_2/bias*
shape:*
_output_shapes
:
в
target/qc/dense_2/bias/AssignAssigntarget/qc/dense_2/bias(target/qc/dense_2/bias/Initializer/zeros*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias
П
target/qc/dense_2/bias/readIdentitytarget/qc/dense_2/bias*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:*
T0
±
target/qc/dense_2/MatMulMatMultarget/qc/dense_1/Relutarget/qc/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
T0*
transpose_b( 
§
target/qc/dense_2/BiasAddBiasAddtarget/qc/dense_2/MatMultarget/qc/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
|
target/qc/SqueezeSqueezetarget/qc/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:€€€€€€€€€
b
target/qc_1/concat/axisConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
Ы
target/qc_1/concatConcatV2Placeholder_2main_1/mul_1target/qc_1/concat/axis*
N*

Tidx0*'
_output_shapes
:€€€€€€€€€>*
T0
ђ
target/qc_1/dense/MatMulMatMultarget/qc_1/concattarget/qc/dense/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А
£
target/qc_1/dense/BiasAddBiasAddtarget/qc_1/dense/MatMultarget/qc/dense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
l
target/qc_1/dense/ReluRelutarget/qc_1/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
і
target/qc_1/dense_1/MatMulMatMultarget/qc_1/dense/Relutarget/qc/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b( *(
_output_shapes
:€€€€€€€€€А
©
target/qc_1/dense_1/BiasAddBiasAddtarget/qc_1/dense_1/MatMultarget/qc/dense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
p
target/qc_1/dense_1/ReluRelutarget/qc_1/dense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
µ
target/qc_1/dense_2/MatMulMatMultarget/qc_1/dense_1/Relutarget/qc/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
®
target/qc_1/dense_2/BiasAddBiasAddtarget/qc_1/dense_2/MatMultarget/qc/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
А
target/qc_1/SqueezeSqueezetarget/qc_1/dense_2/BiasAdd*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
*
T0
J
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
entreg/soft_alpha/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
u
entreg/soft_alpha
VariableV2*
shared_name *
shape: *
dtype0*
	container *
_output_shapes
: 
∆
entreg/soft_alpha/AssignAssignentreg/soft_alphaentreg/soft_alpha/initial_value*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: *
use_locking(
|
entreg/soft_alpha/readIdentityentreg/soft_alpha*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
M
SoftplusSoftplusentreg/soft_alpha/read*
T0*
_output_shapes
: 
5
LogLogSoftplus*
T0*
_output_shapes
: 
L
Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
d
costpen/soft_beta/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
u
costpen/soft_beta
VariableV2*
shared_name *
_output_shapes
: *
dtype0*
shape: *
	container 
∆
costpen/soft_beta/AssignAssigncostpen/soft_betacostpen/soft_beta/initial_value*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(*
T0
|
costpen/soft_beta/readIdentitycostpen/soft_beta*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0
O

Softplus_1Softpluscostpen/soft_beta/read*
T0*
_output_shapes
: 
9
Log_1Log
Softplus_1*
T0*
_output_shapes
: 
h
MinimumMinimummain/qr1_1/Squeezemain/qr2_1/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
n
	Minimum_1Minimumtarget/qr1_1/Squeezetarget/qr2_1/Squeeze*
T0*#
_output_shapes
:€€€€€€€€€
J
sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
N
subSubsub/xPlaceholder_4*#
_output_shapes
:€€€€€€€€€*
T0
J
mul/xConst*
dtype0*
valueB
 *§p}?*
_output_shapes
: 
D
mulMulmul/xsub*
T0*#
_output_shapes
:€€€€€€€€€
U
mul_1MulSoftplusmain_1/pi/sub_3*#
_output_shapes
:€€€€€€€€€*
T0
L
sub_1Sub	Minimum_1mul_1*#
_output_shapes
:€€€€€€€€€*
T0
F
mul_2Mulmulsub_1*#
_output_shapes
:€€€€€€€€€*
T0
N
addAddPlaceholder_3mul_2*
T0*#
_output_shapes
:€€€€€€€€€
O
StopGradientStopGradientadd*
T0*#
_output_shapes
:€€€€€€€€€
L
sub_2/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
R
sub_2Subsub_2/xPlaceholder_4*#
_output_shapes
:€€€€€€€€€*
T0
L
mul_3/xConst*
_output_shapes
: *
valueB
 *§p}?*
dtype0
J
mul_3Mulmul_3/xsub_2*
T0*#
_output_shapes
:€€€€€€€€€
V
mul_4Mulmul_3target/qc_1/Squeeze*
T0*#
_output_shapes
:€€€€€€€€€
P
add_1AddPlaceholder_5mul_4*#
_output_shapes
:€€€€€€€€€*
T0
S
StopGradient_1StopGradientadd_1*#
_output_shapes
:€€€€€€€€€*
T0
L
sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *;ю@
T
sub_3Subsub_3/xmain/qc/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
Z
MeanMeansub_3Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   A
<
mul_5Mulmul_5/xMean*
_output_shapes
: *
T0
S
mul_6MulSoftplusmain/pi/sub_3*#
_output_shapes
:€€€€€€€€€*
T0
J
sub_4Submul_6Minimum*#
_output_shapes
:€€€€€€€€€*
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
:€€€€€€€€€
H
add_2Addsub_4mul_7*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_3Const*
valueB: *
_output_shapes
:*
dtype0
\
Mean_1Meanadd_2Const_3*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
Z
sub_6SubStopGradientmain/qr1/Squeeze*
T0*#
_output_shapes
:€€€€€€€€€
J
pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
F
powPowsub_6pow/y*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_4Const*
_output_shapes
:*
valueB: *
dtype0
Z
Mean_2MeanpowConst_4*
	keep_dims( *
_output_shapes
: *
T0*

Tidx0
L
mul_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
>
mul_8Mulmul_8/xMean_2*
T0*
_output_shapes
: 
Z
sub_7SubStopGradientmain/qr2/Squeeze*
T0*#
_output_shapes
:€€€€€€€€€
L
pow_1/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
J
pow_1Powsub_7pow_1/y*#
_output_shapes
:€€€€€€€€€*
T0
Q
Const_5Const*
valueB: *
_output_shapes
:*
dtype0
\
Mean_3Meanpow_1Const_5*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
L
mul_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
>
mul_9Mulmul_9/xMean_3*
T0*
_output_shapes
: 
[
sub_8SubStopGradient_1main/qc/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
L
pow_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
J
pow_2Powsub_8pow_2/y*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_6Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_4Meanpow_2Const_6*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
M
mul_10/xConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
@
mul_10Mulmul_10/xMean_4*
_output_shapes
: *
T0
;
add_3Addmul_8mul_9*
_output_shapes
: *
T0
<
add_4Addadd_3mul_10*
_output_shapes
: *
T0
Q
Const_7Const*
valueB: *
dtype0*
_output_shapes
:
d
Mean_5Meanmain/pi/sub_3Const_7*
_output_shapes
: *

Tidx0*
	keep_dims( *
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
sub_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ј
;
sub_9Subsub_9/xNeg*
_output_shapes
: *
T0
<
mul_11MulNeg_1sub_9*
T0*
_output_shapes
: 
M
sub_10/xConst*
valueB
 *;ю@*
_output_shapes
: *
dtype0
V
sub_10Subsub_10/xmain/qc/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
O
mul_12Mul
Softplus_1sub_10*#
_output_shapes
:€€€€€€€€€*
T0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  А?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Р
gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
`
gradients/Mean_1_grad/ShapeShapeadd_2*
out_type0*
_output_shapes
:*
T0
Ю
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
b
gradients/Mean_1_grad/Shape_1Shapeadd_2*
T0*
out_type0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
e
gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ь
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
†
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
a
gradients/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0
И
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
Ж
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
В
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*
Truncate( *

SrcT0*
_output_shapes
: *

DstT0
О
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
_
gradients/add_2_grad/ShapeShapesub_4*
T0*
out_type0*
_output_shapes
:
a
gradients/add_2_grad/Shape_1Shapemul_7*
out_type0*
_output_shapes
:*
T0
Ї
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
™
gradients/add_2_grad/SumSumgradients/Mean_1_grad/truediv*gradients/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
Щ
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Ѓ
gradients/add_2_grad/Sum_1Sumgradients/Mean_1_grad/truediv,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Я
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*#
_output_shapes
:€€€€€€€€€*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ё
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/add_2_grad/Reshape
д
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
_
gradients/sub_4_grad/ShapeShapemul_6*
out_type0*
_output_shapes
:*
T0
c
gradients/sub_4_grad/Shape_1ShapeMinimum*
T0*
_output_shapes
:*
out_type0
Ї
*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ї
gradients/sub_4_grad/SumSum-gradients/add_2_grad/tuple/control_dependency*gradients/sub_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Щ
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Њ
gradients/sub_4_grad/Sum_1Sum-gradients/add_2_grad/tuple/control_dependency,gradients/sub_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
^
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
T0*
_output_shapes
:
Э
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
ё
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
д
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
]
gradients/mul_7_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
m
gradients/mul_7_grad/Shape_1Shapemain/qc_1/Squeeze*
_output_shapes
:*
T0*
out_type0
Ї
*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
С
gradients/mul_7_grad/MulMul/gradients/add_2_grad/tuple/control_dependency_1main/qc_1/Squeeze*#
_output_shapes
:€€€€€€€€€*
T0
•
gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
М
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
Tshape0*
_output_shapes
: *
T0
З
gradients/mul_7_grad/Mul_1Mulsub_5/gradients/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:€€€€€€€€€
Ђ
gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/Mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
Я
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
—
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/mul_7_grad/Reshape
д
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1*
T0
]
gradients/mul_6_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
i
gradients/mul_6_grad/Shape_1Shapemain/pi/sub_3*
out_type0*
_output_shapes
:*
T0
Ї
*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Л
gradients/mul_6_grad/MulMul-gradients/sub_4_grad/tuple/control_dependencymain/pi/sub_3*#
_output_shapes
:€€€€€€€€€*
T0
•
gradients/mul_6_grad/SumSumgradients/mul_6_grad/Mul*gradients/mul_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
М
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
_output_shapes
: *
T0*
Tshape0
И
gradients/mul_6_grad/Mul_1MulSoftplus-gradients/sub_4_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
Ђ
gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/Mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Я
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
—
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
_output_shapes
: */
_class%
#!loc:@gradients/mul_6_grad/Reshape*
T0
д
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1*
T0
n
gradients/Minimum_grad/ShapeShapemain/qr1_1/Squeeze*
out_type0*
T0*
_output_shapes
:
p
gradients/Minimum_grad/Shape_1Shapemain/qr2_1/Squeeze*
T0*
_output_shapes
:*
out_type0
Н
gradients/Minimum_grad/Shape_2Shape/gradients/sub_4_grad/tuple/control_dependency_1*
out_type0*
_output_shapes
:*
T0
g
"gradients/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
®
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*#
_output_shapes
:€€€€€€€€€*
T0*

index_type0
Г
 gradients/Minimum_grad/LessEqual	LessEqualmain/qr1_1/Squeezemain/qr2_1/Squeeze*
T0*#
_output_shapes
:€€€€€€€€€
ј
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
∆
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual/gradients/sub_4_grad/tuple/control_dependency_1gradients/Minimum_grad/zeros*
T0*#
_output_shapes
:€€€€€€€€€
»
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros/gradients/sub_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:€€€€€€€€€
Ѓ
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Я
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
і
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
•
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
ж
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*
T0
м
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1

&gradients/main/qc_1/Squeeze_grad/ShapeShapemain/qc_1/dense_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
ћ
(gradients/main/qc_1/Squeeze_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1&gradients/main/qc_1/Squeeze_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
m
"gradients/main/pi/sub_3_grad/ShapeShapemain/pi/Sum*
out_type0*
T0*
_output_shapes
:
q
$gradients/main/pi/sub_3_grad/Shape_1Shapemain/pi/Sum_1*
out_type0*
T0*
_output_shapes
:
“
2gradients/main/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_3_grad/Shape$gradients/main/pi/sub_3_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ћ
 gradients/main/pi/sub_3_grad/SumSum/gradients/mul_6_grad/tuple/control_dependency_12gradients/main/pi/sub_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
±
$gradients/main/pi/sub_3_grad/ReshapeReshape gradients/main/pi/sub_3_grad/Sum"gradients/main/pi/sub_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
–
"gradients/main/pi/sub_3_grad/Sum_1Sum/gradients/mul_6_grad/tuple/control_dependency_14gradients/main/pi/sub_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
n
 gradients/main/pi/sub_3_grad/NegNeg"gradients/main/pi/sub_3_grad/Sum_1*
T0*
_output_shapes
:
µ
&gradients/main/pi/sub_3_grad/Reshape_1Reshape gradients/main/pi/sub_3_grad/Neg$gradients/main/pi/sub_3_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
Е
-gradients/main/pi/sub_3_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_3_grad/Reshape'^gradients/main/pi/sub_3_grad/Reshape_1
ю
5gradients/main/pi/sub_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_3_grad/Reshape.^gradients/main/pi/sub_3_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*7
_class-
+)loc:@gradients/main/pi/sub_3_grad/Reshape
Д
7gradients/main/pi/sub_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_3_grad/Reshape_1.^gradients/main/pi/sub_3_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/sub_3_grad/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
Б
'gradients/main/qr1_1/Squeeze_grad/ShapeShapemain/qr1_1/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
ќ
)gradients/main/qr1_1/Squeeze_grad/ReshapeReshape/gradients/Minimum_grad/tuple/control_dependency'gradients/main/qr1_1/Squeeze_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Б
'gradients/main/qr2_1/Squeeze_grad/ShapeShapemain/qr2_1/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
–
)gradients/main/qr2_1/Squeeze_grad/ReshapeReshape1gradients/Minimum_grad/tuple/control_dependency_1'gradients/main/qr2_1/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
©
4gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/main/qc_1/Squeeze_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
£
9gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp)^gradients/main/qc_1/Squeeze_grad/Reshape5^gradients/main/qc_1/dense_2/BiasAdd_grad/BiasAddGrad
Ґ
Agradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/main/qc_1/Squeeze_grad/Reshape:^gradients/main/qc_1/dense_2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qc_1/Squeeze_grad/Reshape*'
_output_shapes
:€€€€€€€€€*
T0
ѓ
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
Ц
gradients/main/pi/Sum_grad/SizeConst*
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
value	B :
ї
gradients/main/pi/Sum_grad/addAddmain/pi/Sum/reduction_indicesgradients/main/pi/Sum_grad/Size*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: *
T0
Ѕ
gradients/main/pi/Sum_grad/modFloorModgradients/main/pi/Sum_grad/addgradients/main/pi/Sum_grad/Size*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: *
T0
Ъ
"gradients/main/pi/Sum_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
Э
&gradients/main/pi/Sum_grad/range/startConst*
dtype0*
value	B : *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: 
Э
&gradients/main/pi/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
value	B :
ч
 gradients/main/pi/Sum_grad/rangeRange&gradients/main/pi/Sum_grad/range/startgradients/main/pi/Sum_grad/Size&gradients/main/pi/Sum_grad/range/delta*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0
Ь
%gradients/main/pi/Sum_grad/Fill/valueConst*
_output_shapes
: *
dtype0*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
value	B :
Џ
gradients/main/pi/Sum_grad/FillFill"gradients/main/pi/Sum_grad/Shape_1%gradients/main/pi/Sum_grad/Fill/value*
_output_shapes
: *3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
T0*

index_type0
°
(gradients/main/pi/Sum_grad/DynamicStitchDynamicStitch gradients/main/pi/Sum_grad/rangegradients/main/pi/Sum_grad/mod gradients/main/pi/Sum_grad/Shapegradients/main/pi/Sum_grad/Fill*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
:*
T0*
N
Ы
$gradients/main/pi/Sum_grad/Maximum/yConst*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
„
"gradients/main/pi/Sum_grad/MaximumMaximum(gradients/main/pi/Sum_grad/DynamicStitch$gradients/main/pi/Sum_grad/Maximum/y*
T0*
_output_shapes
:*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape
ѕ
#gradients/main/pi/Sum_grad/floordivFloorDiv gradients/main/pi/Sum_grad/Shape"gradients/main/pi/Sum_grad/Maximum*3
_class)
'%loc:@gradients/main/pi/Sum_grad/Shape*
T0*
_output_shapes
:
„
"gradients/main/pi/Sum_grad/ReshapeReshape5gradients/main/pi/sub_3_grad/tuple/control_dependency(gradients/main/pi/Sum_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
і
gradients/main/pi/Sum_grad/TileTile"gradients/main/pi/Sum_grad/Reshape#gradients/main/pi/Sum_grad/floordiv*
T0*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
o
"gradients/main/pi/Sum_1_grad/ShapeShapemain/pi/mul_4*
out_type0*
T0*
_output_shapes
:
Ъ
!gradients/main/pi/Sum_1_grad/SizeConst*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
value	B :*
_output_shapes
: *
dtype0
√
 gradients/main/pi/Sum_1_grad/addAddmain/pi/Sum_1/reduction_indices!gradients/main/pi/Sum_1_grad/Size*
_output_shapes
: *
T0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
…
 gradients/main/pi/Sum_1_grad/modFloorMod gradients/main/pi/Sum_1_grad/add!gradients/main/pi/Sum_1_grad/Size*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: *
T0
Ю
$gradients/main/pi/Sum_1_grad/Shape_1Const*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
valueB *
_output_shapes
: *
dtype0
°
(gradients/main/pi/Sum_1_grad/range/startConst*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
dtype0*
value	B : 
°
(gradients/main/pi/Sum_1_grad/range/deltaConst*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
dtype0*
value	B :
Б
"gradients/main/pi/Sum_1_grad/rangeRange(gradients/main/pi/Sum_1_grad/range/start!gradients/main/pi/Sum_1_grad/Size(gradients/main/pi/Sum_1_grad/range/delta*

Tidx0*
_output_shapes
:*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
†
'gradients/main/pi/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
: 
в
!gradients/main/pi/Sum_1_grad/FillFill$gradients/main/pi/Sum_1_grad/Shape_1'gradients/main/pi/Sum_1_grad/Fill/value*
_output_shapes
: *5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*

index_type0
≠
*gradients/main/pi/Sum_1_grad/DynamicStitchDynamicStitch"gradients/main/pi/Sum_1_grad/range gradients/main/pi/Sum_1_grad/mod"gradients/main/pi/Sum_1_grad/Shape!gradients/main/pi/Sum_1_grad/Fill*
N*
T0*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:
Я
&gradients/main/pi/Sum_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape
я
$gradients/main/pi/Sum_1_grad/MaximumMaximum*gradients/main/pi/Sum_1_grad/DynamicStitch&gradients/main/pi/Sum_1_grad/Maximum/y*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
T0*
_output_shapes
:
„
%gradients/main/pi/Sum_1_grad/floordivFloorDiv"gradients/main/pi/Sum_1_grad/Shape$gradients/main/pi/Sum_1_grad/Maximum*5
_class+
)'loc:@gradients/main/pi/Sum_1_grad/Shape*
_output_shapes
:*
T0
Ё
$gradients/main/pi/Sum_1_grad/ReshapeReshape7gradients/main/pi/sub_3_grad/tuple/control_dependency_1*gradients/main/pi/Sum_1_grad/DynamicStitch*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tshape0
Ї
!gradients/main/pi/Sum_1_grad/TileTile$gradients/main/pi/Sum_1_grad/Reshape%gradients/main/pi/Sum_1_grad/floordiv*'
_output_shapes
:€€€€€€€€€*
T0*

Tmultiples0
Ђ
5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr1_1/Squeeze_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
¶
:gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr1_1/Squeeze_grad/Reshape6^gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad
¶
Bgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr1_1/Squeeze_grad/Reshape;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/main/qr1_1/Squeeze_grad/Reshape*'
_output_shapes
:€€€€€€€€€
≥
Dgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/main/qr1_1/dense_2/BiasAdd_grad/BiasAddGrad
Ђ
5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients/main/qr2_1/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
¶
:gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients/main/qr2_1/Squeeze_grad/Reshape6^gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad
¶
Bgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients/main/qr2_1/Squeeze_grad/Reshape;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*<
_class2
0.loc:@gradients/main/qr2_1/Squeeze_grad/Reshape
≥
Dgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/main/qr2_1/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
с
.gradients/main/qc_1/dense_2/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
е
0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qc_1/dense_1/ReluAgradients/main/qc_1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	А*
transpose_a(*
T0
§
8gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients/main/qc_1/dense_2/MatMul_grad/MatMul1^gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1
≠
@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_2/MatMul_grad/MatMul9^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
™
Bgradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_2/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main/qc_1/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	А
e
"gradients/main/pi/mul_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
q
$gradients/main/pi/mul_2_grad/Shape_1Shapemain/pi/add_3*
T0*
out_type0*
_output_shapes
:
“
2gradients/main/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_2_grad/Shape$gradients/main/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Й
 gradients/main/pi/mul_2_grad/MulMulgradients/main/pi/Sum_grad/Tilemain/pi/add_3*'
_output_shapes
:€€€€€€€€€*
T0
љ
 gradients/main/pi/mul_2_grad/SumSum gradients/main/pi/mul_2_grad/Mul2gradients/main/pi/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
§
$gradients/main/pi/mul_2_grad/ReshapeReshape gradients/main/pi/mul_2_grad/Sum"gradients/main/pi/mul_2_grad/Shape*
Tshape0*
_output_shapes
: *
T0
Н
"gradients/main/pi/mul_2_grad/Mul_1Mulmain/pi/mul_2/xgradients/main/pi/Sum_grad/Tile*
T0*'
_output_shapes
:€€€€€€€€€
√
"gradients/main/pi/mul_2_grad/Sum_1Sum"gradients/main/pi/mul_2_grad/Mul_14gradients/main/pi/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ї
&gradients/main/pi/mul_2_grad/Reshape_1Reshape"gradients/main/pi/mul_2_grad/Sum_1$gradients/main/pi/mul_2_grad/Shape_1*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
Е
-gradients/main/pi/mul_2_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_2_grad/Reshape'^gradients/main/pi/mul_2_grad/Reshape_1
с
5gradients/main/pi/mul_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_2_grad/Reshape.^gradients/main/pi/mul_2_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/mul_2_grad/Reshape*
_output_shapes
: 
И
7gradients/main/pi/mul_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_2_grad/Reshape_1.^gradients/main/pi/mul_2_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_2_grad/Reshape_1*
T0*'
_output_shapes
:€€€€€€€€€
e
"gradients/main/pi/mul_4_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
q
$gradients/main/pi/mul_4_grad/Shape_1Shapemain/pi/sub_2*
T0*
out_type0*
_output_shapes
:
“
2gradients/main/pi/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_4_grad/Shape$gradients/main/pi/mul_4_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Л
 gradients/main/pi/mul_4_grad/MulMul!gradients/main/pi/Sum_1_grad/Tilemain/pi/sub_2*
T0*'
_output_shapes
:€€€€€€€€€
љ
 gradients/main/pi/mul_4_grad/SumSum gradients/main/pi/mul_4_grad/Mul2gradients/main/pi/mul_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
§
$gradients/main/pi/mul_4_grad/ReshapeReshape gradients/main/pi/mul_4_grad/Sum"gradients/main/pi/mul_4_grad/Shape*
T0*
_output_shapes
: *
Tshape0
П
"gradients/main/pi/mul_4_grad/Mul_1Mulmain/pi/mul_4/x!gradients/main/pi/Sum_1_grad/Tile*'
_output_shapes
:€€€€€€€€€*
T0
√
"gradients/main/pi/mul_4_grad/Sum_1Sum"gradients/main/pi/mul_4_grad/Mul_14gradients/main/pi/mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ї
&gradients/main/pi/mul_4_grad/Reshape_1Reshape"gradients/main/pi/mul_4_grad/Sum_1$gradients/main/pi/mul_4_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Е
-gradients/main/pi/mul_4_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_4_grad/Reshape'^gradients/main/pi/mul_4_grad/Reshape_1
с
5gradients/main/pi/mul_4_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_4_grad/Reshape.^gradients/main/pi/mul_4_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients/main/pi/mul_4_grad/Reshape
И
7gradients/main/pi/mul_4_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_4_grad/Reshape_1.^gradients/main/pi/mul_4_grad/tuple/group_deps*9
_class/
-+loc:@gradients/main/pi/mul_4_grad/Reshape_1*
T0*'
_output_shapes
:€€€€€€€€€
ф
/gradients/main/qr1_1/dense_2/MatMul_grad/MatMulMatMulBgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_2/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
transpose_a( 
и
1gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr1_1/dense_1/ReluBgradients/main/qr1_1/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	А
І
9gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1
±
Agradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul*
T0
Ѓ
Cgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/main/qr1_1/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А
ф
/gradients/main/qr2_1/dense_2/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
transpose_a( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_b(
и
1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense_1/ReluBgradients/main/qr2_1/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	А*
transpose_a(*
transpose_b( *
T0
І
9gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul2^gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1
±
Agradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_2/MatMul_grad/MatMul:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:€€€€€€€€€А
Ѓ
Cgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1:^gradients/main/qr2_1/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	А*D
_class:
86loc:@gradients/main/qr2_1/dense_2/MatMul_grad/MatMul_1
«
.gradients/main/qc_1/dense_1/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_2/MatMul_grad/tuple/control_dependencymain/qc_1/dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
o
"gradients/main/pi/add_3_grad/ShapeShapemain/pi/add_2*
T0*
_output_shapes
:*
out_type0
g
$gradients/main/pi/add_3_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
“
2gradients/main/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_3_grad/Shape$gradients/main/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
‘
 gradients/main/pi/add_3_grad/SumSum7gradients/main/pi/mul_2_grad/tuple/control_dependency_12gradients/main/pi/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
µ
$gradients/main/pi/add_3_grad/ReshapeReshape gradients/main/pi/add_3_grad/Sum"gradients/main/pi/add_3_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
Ў
"gradients/main/pi/add_3_grad/Sum_1Sum7gradients/main/pi/mul_2_grad/tuple/control_dependency_14gradients/main/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
™
&gradients/main/pi/add_3_grad/Reshape_1Reshape"gradients/main/pi/add_3_grad/Sum_1$gradients/main/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Е
-gradients/main/pi/add_3_grad/tuple/group_depsNoOp%^gradients/main/pi/add_3_grad/Reshape'^gradients/main/pi/add_3_grad/Reshape_1
В
5gradients/main/pi/add_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_3_grad/Reshape.^gradients/main/pi/add_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*7
_class-
+)loc:@gradients/main/pi/add_3_grad/Reshape*
T0
ч
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
$gradients/main/pi/sub_2_grad/Shape_1Shapemain/pi/Softplus*
_output_shapes
:*
out_type0*
T0
“
2gradients/main/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_2_grad/Shape$gradients/main/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
‘
 gradients/main/pi/sub_2_grad/SumSum7gradients/main/pi/mul_4_grad/tuple/control_dependency_12gradients/main/pi/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
µ
$gradients/main/pi/sub_2_grad/ReshapeReshape gradients/main/pi/sub_2_grad/Sum"gradients/main/pi/sub_2_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
Ў
"gradients/main/pi/sub_2_grad/Sum_1Sum7gradients/main/pi/mul_4_grad/tuple/control_dependency_14gradients/main/pi/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
n
 gradients/main/pi/sub_2_grad/NegNeg"gradients/main/pi/sub_2_grad/Sum_1*
_output_shapes
:*
T0
є
&gradients/main/pi/sub_2_grad/Reshape_1Reshape gradients/main/pi/sub_2_grad/Neg$gradients/main/pi/sub_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
Е
-gradients/main/pi/sub_2_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_2_grad/Reshape'^gradients/main/pi/sub_2_grad/Reshape_1
В
5gradients/main/pi/sub_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_2_grad/Reshape.^gradients/main/pi/sub_2_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/sub_2_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
И
7gradients/main/pi/sub_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_2_grad/Reshape_1.^gradients/main/pi/sub_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*9
_class/
-+loc:@gradients/main/pi/sub_2_grad/Reshape_1*
T0
 
/gradients/main/qr1_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1_1/dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
 
/gradients/main/qr2_1/dense_1/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_2/MatMul_grad/tuple/control_dependencymain/qr2_1/dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
∞
4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А*
data_formatNHWC
©
9gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad/^gradients/main/qc_1/dense_1/Relu_grad/ReluGrad
ѓ
Agradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_1/Relu_grad/ReluGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*A
_class7
53loc:@gradients/main/qc_1/dense_1/Relu_grad/ReluGrad
∞
Cgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad:^gradients/main/qc_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*G
_class=
;9loc:@gradients/main/qc_1/dense_1/BiasAdd_grad/BiasAddGrad
m
"gradients/main/pi/add_2_grad/ShapeShapemain/pi/pow*
out_type0*
_output_shapes
:*
T0
q
$gradients/main/pi/add_2_grad/Shape_1Shapemain/pi/mul_1*
out_type0*
T0*
_output_shapes
:
“
2gradients/main/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_2_grad/Shape$gradients/main/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
“
 gradients/main/pi/add_2_grad/SumSum5gradients/main/pi/add_3_grad/tuple/control_dependency2gradients/main/pi/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
µ
$gradients/main/pi/add_2_grad/ReshapeReshape gradients/main/pi/add_2_grad/Sum"gradients/main/pi/add_2_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
÷
"gradients/main/pi/add_2_grad/Sum_1Sum5gradients/main/pi/add_3_grad/tuple/control_dependency4gradients/main/pi/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
ї
&gradients/main/pi/add_2_grad/Reshape_1Reshape"gradients/main/pi/add_2_grad/Sum_1$gradients/main/pi/add_2_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
Е
-gradients/main/pi/add_2_grad/tuple/group_depsNoOp%^gradients/main/pi/add_2_grad/Reshape'^gradients/main/pi/add_2_grad/Reshape_1
В
5gradients/main/pi/add_2_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_2_grad/Reshape.^gradients/main/pi/add_2_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€*7
_class-
+)loc:@gradients/main/pi/add_2_grad/Reshape
И
7gradients/main/pi/add_2_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_2_grad/Reshape_1.^gradients/main/pi/add_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*9
_class/
-+loc:@gradients/main/pi/add_2_grad/Reshape_1*
T0
e
"gradients/main/pi/sub_1_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
$gradients/main/pi/sub_1_grad/Shape_1Shapemain/pi/add*
T0*
_output_shapes
:*
out_type0
“
2gradients/main/pi/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/sub_1_grad/Shape$gradients/main/pi/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
“
 gradients/main/pi/sub_1_grad/SumSum5gradients/main/pi/sub_2_grad/tuple/control_dependency2gradients/main/pi/sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
§
$gradients/main/pi/sub_1_grad/ReshapeReshape gradients/main/pi/sub_1_grad/Sum"gradients/main/pi/sub_1_grad/Shape*
Tshape0*
_output_shapes
: *
T0
÷
"gradients/main/pi/sub_1_grad/Sum_1Sum5gradients/main/pi/sub_2_grad/tuple/control_dependency4gradients/main/pi/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
n
 gradients/main/pi/sub_1_grad/NegNeg"gradients/main/pi/sub_1_grad/Sum_1*
T0*
_output_shapes
:
є
&gradients/main/pi/sub_1_grad/Reshape_1Reshape gradients/main/pi/sub_1_grad/Neg$gradients/main/pi/sub_1_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Е
-gradients/main/pi/sub_1_grad/tuple/group_depsNoOp%^gradients/main/pi/sub_1_grad/Reshape'^gradients/main/pi/sub_1_grad/Reshape_1
с
5gradients/main/pi/sub_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/sub_1_grad/Reshape.^gradients/main/pi/sub_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/sub_1_grad/Reshape*
_output_shapes
: 
И
7gradients/main/pi/sub_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/sub_1_grad/Reshape_1.^gradients/main/pi/sub_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*9
_class/
-+loc:@gradients/main/pi/sub_1_grad/Reshape_1*
T0
ґ
,gradients/main/pi/Softplus_grad/SoftplusGradSoftplusGrad7gradients/main/pi/sub_2_grad/tuple/control_dependency_1main/pi/mul_3*
T0*'
_output_shapes
:€€€€€€€€€
≤
5gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
ђ
:gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad
≥
Bgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad;^gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr1_1/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:€€€€€€€€€А
і
Dgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*H
_class>
<:loc:@gradients/main/qr1_1/dense_1/BiasAdd_grad/BiasAddGrad
≤
5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А*
data_formatNHWC
ђ
:gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad
≥
Bgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr2_1/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:€€€€€€€€€А
і
Dgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*H
_class>
<:loc:@gradients/main/qr2_1/dense_1/BiasAdd_grad/BiasAddGrad
с
.gradients/main/qc_1/dense_1/MatMul_grad/MatMulMatMulAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:€€€€€€€€€А
д
0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qc_1/dense/ReluAgradients/main/qc_1/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
АА*
T0*
transpose_b( 
§
8gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_depsNoOp/^gradients/main/qc_1/dense_1/MatMul_grad/MatMul1^gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1
≠
@gradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity.gradients/main/qc_1/dense_1/MatMul_grad/MatMul9^gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*A
_class7
53loc:@gradients/main/qc_1/dense_1/MatMul_grad/MatMul*
T0
Ђ
Bgradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients/main/qc_1/dense_1/MatMul_grad/MatMul_19^gradients/main/qc_1/dense_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main/qc_1/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
o
 gradients/main/pi/pow_grad/ShapeShapemain/pi/truediv*
T0*
_output_shapes
:*
out_type0
e
"gradients/main/pi/pow_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
ћ
0gradients/main/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/pow_grad/Shape"gradients/main/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Э
gradients/main/pi/pow_grad/mulMul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow/y*
T0*'
_output_shapes
:€€€€€€€€€
e
 gradients/main/pi/pow_grad/sub/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
w
gradients/main/pi/pow_grad/subSubmain/pi/pow/y gradients/main/pi/pow_grad/sub/y*
T0*
_output_shapes
: 
И
gradients/main/pi/pow_grad/PowPowmain/pi/truedivgradients/main/pi/pow_grad/sub*'
_output_shapes
:€€€€€€€€€*
T0
Щ
 gradients/main/pi/pow_grad/mul_1Mulgradients/main/pi/pow_grad/mulgradients/main/pi/pow_grad/Pow*'
_output_shapes
:€€€€€€€€€*
T0
є
gradients/main/pi/pow_grad/SumSum gradients/main/pi/pow_grad/mul_10gradients/main/pi/pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ѓ
"gradients/main/pi/pow_grad/ReshapeReshapegradients/main/pi/pow_grad/Sum gradients/main/pi/pow_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
i
$gradients/main/pi/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ц
"gradients/main/pi/pow_grad/GreaterGreatermain/pi/truediv$gradients/main/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:€€€€€€€€€
y
*gradients/main/pi/pow_grad/ones_like/ShapeShapemain/pi/truediv*
_output_shapes
:*
out_type0*
T0
o
*gradients/main/pi/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
»
$gradients/main/pi/pow_grad/ones_likeFill*gradients/main/pi/pow_grad/ones_like/Shape*gradients/main/pi/pow_grad/ones_like/Const*'
_output_shapes
:€€€€€€€€€*

index_type0*
T0
Є
!gradients/main/pi/pow_grad/SelectSelect"gradients/main/pi/pow_grad/Greatermain/pi/truediv$gradients/main/pi/pow_grad/ones_like*
T0*'
_output_shapes
:€€€€€€€€€
z
gradients/main/pi/pow_grad/LogLog!gradients/main/pi/pow_grad/Select*
T0*'
_output_shapes
:€€€€€€€€€
u
%gradients/main/pi/pow_grad/zeros_like	ZerosLikemain/pi/truediv*
T0*'
_output_shapes
:€€€€€€€€€
 
#gradients/main/pi/pow_grad/Select_1Select"gradients/main/pi/pow_grad/Greatergradients/main/pi/pow_grad/Log%gradients/main/pi/pow_grad/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0
Э
 gradients/main/pi/pow_grad/mul_2Mul5gradients/main/pi/add_2_grad/tuple/control_dependencymain/pi/pow*'
_output_shapes
:€€€€€€€€€*
T0
†
 gradients/main/pi/pow_grad/mul_3Mul gradients/main/pi/pow_grad/mul_2#gradients/main/pi/pow_grad/Select_1*
T0*'
_output_shapes
:€€€€€€€€€
љ
 gradients/main/pi/pow_grad/Sum_1Sum gradients/main/pi/pow_grad/mul_32gradients/main/pi/pow_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
§
$gradients/main/pi/pow_grad/Reshape_1Reshape gradients/main/pi/pow_grad/Sum_1"gradients/main/pi/pow_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0

+gradients/main/pi/pow_grad/tuple/group_depsNoOp#^gradients/main/pi/pow_grad/Reshape%^gradients/main/pi/pow_grad/Reshape_1
ъ
3gradients/main/pi/pow_grad/tuple/control_dependencyIdentity"gradients/main/pi/pow_grad/Reshape,^gradients/main/pi/pow_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/main/pi/pow_grad/Reshape*'
_output_shapes
:€€€€€€€€€
п
5gradients/main/pi/pow_grad/tuple/control_dependency_1Identity$gradients/main/pi/pow_grad/Reshape_1,^gradients/main/pi/pow_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/pow_grad/Reshape_1*
T0*
_output_shapes
: 
e
"gradients/main/pi/mul_1_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
y
$gradients/main/pi/mul_1_grad/Shape_1Shapemain/pi/clip_by_value*
T0*
out_type0*
_output_shapes
:
“
2gradients/main/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_1_grad/Shape$gradients/main/pi/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
©
 gradients/main/pi/mul_1_grad/MulMul7gradients/main/pi/add_2_grad/tuple/control_dependency_1main/pi/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
љ
 gradients/main/pi/mul_1_grad/SumSum gradients/main/pi/mul_1_grad/Mul2gradients/main/pi/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
§
$gradients/main/pi/mul_1_grad/ReshapeReshape gradients/main/pi/mul_1_grad/Sum"gradients/main/pi/mul_1_grad/Shape*
Tshape0*
_output_shapes
: *
T0
•
"gradients/main/pi/mul_1_grad/Mul_1Mulmain/pi/mul_1/x7gradients/main/pi/add_2_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
√
"gradients/main/pi/mul_1_grad/Sum_1Sum"gradients/main/pi/mul_1_grad/Mul_14gradients/main/pi/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ї
&gradients/main/pi/mul_1_grad/Reshape_1Reshape"gradients/main/pi/mul_1_grad/Sum_1$gradients/main/pi/mul_1_grad/Shape_1*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
Е
-gradients/main/pi/mul_1_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_1_grad/Reshape'^gradients/main/pi/mul_1_grad/Reshape_1
с
5gradients/main/pi/mul_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_1_grad/Reshape.^gradients/main/pi/mul_1_grad/tuple/group_deps*
_output_shapes
: *7
_class-
+)loc:@gradients/main/pi/mul_1_grad/Reshape*
T0
И
7gradients/main/pi/mul_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_1_grad/Reshape_1.^gradients/main/pi/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
e
"gradients/main/pi/mul_3_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
o
$gradients/main/pi/mul_3_grad/Shape_1Shapemain/pi/add*
T0*
out_type0*
_output_shapes
:
“
2gradients/main/pi/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/mul_3_grad/Shape$gradients/main/pi/mul_3_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ф
 gradients/main/pi/mul_3_grad/MulMul,gradients/main/pi/Softplus_grad/SoftplusGradmain/pi/add*'
_output_shapes
:€€€€€€€€€*
T0
љ
 gradients/main/pi/mul_3_grad/SumSum gradients/main/pi/mul_3_grad/Mul2gradients/main/pi/mul_3_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
§
$gradients/main/pi/mul_3_grad/ReshapeReshape gradients/main/pi/mul_3_grad/Sum"gradients/main/pi/mul_3_grad/Shape*
_output_shapes
: *
T0*
Tshape0
Ъ
"gradients/main/pi/mul_3_grad/Mul_1Mulmain/pi/mul_3/x,gradients/main/pi/Softplus_grad/SoftplusGrad*
T0*'
_output_shapes
:€€€€€€€€€
√
"gradients/main/pi/mul_3_grad/Sum_1Sum"gradients/main/pi/mul_3_grad/Mul_14gradients/main/pi/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ї
&gradients/main/pi/mul_3_grad/Reshape_1Reshape"gradients/main/pi/mul_3_grad/Sum_1$gradients/main/pi/mul_3_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
Е
-gradients/main/pi/mul_3_grad/tuple/group_depsNoOp%^gradients/main/pi/mul_3_grad/Reshape'^gradients/main/pi/mul_3_grad/Reshape_1
с
5gradients/main/pi/mul_3_grad/tuple/control_dependencyIdentity$gradients/main/pi/mul_3_grad/Reshape.^gradients/main/pi/mul_3_grad/tuple/group_deps*7
_class-
+)loc:@gradients/main/pi/mul_3_grad/Reshape*
_output_shapes
: *
T0
И
7gradients/main/pi/mul_3_grad/tuple/control_dependency_1Identity&gradients/main/pi/mul_3_grad/Reshape_1.^gradients/main/pi/mul_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*9
_class/
-+loc:@gradients/main/pi/mul_3_grad/Reshape_1*
T0
ф
/gradients/main/qr1_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
transpose_a( 
з
1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1_1/dense/ReluBgradients/main/qr1_1/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(* 
_output_shapes
:
АА*
T0
І
9gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul2^gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1
±
Agradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr1_1/dense_1/MatMul_grad/MatMul:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul
ѓ
Cgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1:^gradients/main/qr1_1/dense_1/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
АА*D
_class:
86loc:@gradients/main/qr1_1/dense_1/MatMul_grad/MatMul_1
ф
/gradients/main/qr2_1/dense_1/MatMul_grad/MatMulMatMulBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(*
T0
з
1gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2_1/dense/ReluBgradients/main/qr2_1/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
АА
І
9gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients/main/qr2_1/dense_1/MatMul_grad/MatMul2^gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1
±
Agradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients/main/qr2_1/dense_1/MatMul_grad/MatMul:^gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients/main/qr2_1/dense_1/MatMul_grad/MatMul
ѓ
Cgradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1:^gradients/main/qr2_1/dense_1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/main/qr2_1/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
√
,gradients/main/qc_1/dense/Relu_grad/ReluGradReluGrad@gradients/main/qc_1/dense_1/MatMul_grad/tuple/control_dependencymain/qc_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
o
$gradients/main/pi/truediv_grad/ShapeShapemain/pi/sub*
out_type0*
T0*
_output_shapes
:
s
&gradients/main/pi/truediv_grad/Shape_1Shapemain/pi/add_1*
T0*
out_type0*
_output_shapes
:
Ў
4gradients/main/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/main/pi/truediv_grad/Shape&gradients/main/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
І
&gradients/main/pi/truediv_grad/RealDivRealDiv3gradients/main/pi/pow_grad/tuple/control_dependencymain/pi/add_1*'
_output_shapes
:€€€€€€€€€*
T0
«
"gradients/main/pi/truediv_grad/SumSum&gradients/main/pi/truediv_grad/RealDiv4gradients/main/pi/truediv_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ї
&gradients/main/pi/truediv_grad/ReshapeReshape"gradients/main/pi/truediv_grad/Sum$gradients/main/pi/truediv_grad/Shape*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
h
"gradients/main/pi/truediv_grad/NegNegmain/pi/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ш
(gradients/main/pi/truediv_grad/RealDiv_1RealDiv"gradients/main/pi/truediv_grad/Negmain/pi/add_1*'
_output_shapes
:€€€€€€€€€*
T0
Ю
(gradients/main/pi/truediv_grad/RealDiv_2RealDiv(gradients/main/pi/truediv_grad/RealDiv_1main/pi/add_1*
T0*'
_output_shapes
:€€€€€€€€€
Ї
"gradients/main/pi/truediv_grad/mulMul3gradients/main/pi/pow_grad/tuple/control_dependency(gradients/main/pi/truediv_grad/RealDiv_2*'
_output_shapes
:€€€€€€€€€*
T0
«
$gradients/main/pi/truediv_grad/Sum_1Sum"gradients/main/pi/truediv_grad/mul6gradients/main/pi/truediv_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Ѕ
(gradients/main/pi/truediv_grad/Reshape_1Reshape$gradients/main/pi/truediv_grad/Sum_1&gradients/main/pi/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Л
/gradients/main/pi/truediv_grad/tuple/group_depsNoOp'^gradients/main/pi/truediv_grad/Reshape)^gradients/main/pi/truediv_grad/Reshape_1
К
7gradients/main/pi/truediv_grad/tuple/control_dependencyIdentity&gradients/main/pi/truediv_grad/Reshape0^gradients/main/pi/truediv_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*9
_class/
-+loc:@gradients/main/pi/truediv_grad/Reshape
Р
9gradients/main/pi/truediv_grad/tuple/control_dependency_1Identity(gradients/main/pi/truediv_grad/Reshape_10^gradients/main/pi/truediv_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/pi/truediv_grad/Reshape_1*
T0*'
_output_shapes
:€€€€€€€€€
∆
-gradients/main/qr1_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr1_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1_1/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
∆
-gradients/main/qr2_1/dense/Relu_grad/ReluGradReluGradAgradients/main/qr2_1/dense_1/MatMul_grad/tuple/control_dependencymain/qr2_1/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
ђ
2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/qc_1/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
£
7gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad-^gradients/main/qc_1/dense/Relu_grad/ReluGrad
І
?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/qc_1/dense/Relu_grad/ReluGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*?
_class5
31loc:@gradients/main/qc_1/dense/Relu_grad/ReluGrad
®
Agradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad8^gradients/main/qc_1/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*E
_class;
97loc:@gradients/main/qc_1/dense/BiasAdd_grad/BiasAddGrad
k
 gradients/main/pi/sub_grad/ShapeShapemain/pi/add*
T0*
out_type0*
_output_shapes
:
y
"gradients/main/pi/sub_grad/Shape_1Shapemain/pi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
ћ
0gradients/main/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/sub_grad/Shape"gradients/main/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
–
gradients/main/pi/sub_grad/SumSum7gradients/main/pi/truediv_grad/tuple/control_dependency0gradients/main/pi/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
ѓ
"gradients/main/pi/sub_grad/ReshapeReshapegradients/main/pi/sub_grad/Sum gradients/main/pi/sub_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
‘
 gradients/main/pi/sub_grad/Sum_1Sum7gradients/main/pi/truediv_grad/tuple/control_dependency2gradients/main/pi/sub_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
j
gradients/main/pi/sub_grad/NegNeg gradients/main/pi/sub_grad/Sum_1*
T0*
_output_shapes
:
≥
$gradients/main/pi/sub_grad/Reshape_1Reshapegradients/main/pi/sub_grad/Neg"gradients/main/pi/sub_grad/Shape_1*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0

+gradients/main/pi/sub_grad/tuple/group_depsNoOp#^gradients/main/pi/sub_grad/Reshape%^gradients/main/pi/sub_grad/Reshape_1
ъ
3gradients/main/pi/sub_grad/tuple/control_dependencyIdentity"gradients/main/pi/sub_grad/Reshape,^gradients/main/pi/sub_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/main/pi/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
А
5gradients/main/pi/sub_grad/tuple/control_dependency_1Identity$gradients/main/pi/sub_grad/Reshape_1,^gradients/main/pi/sub_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
o
"gradients/main/pi/add_1_grad/ShapeShapemain/pi/Exp_1*
out_type0*
_output_shapes
:*
T0
g
$gradients/main/pi/add_1_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
“
2gradients/main/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/main/pi/add_1_grad/Shape$gradients/main/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
÷
 gradients/main/pi/add_1_grad/SumSum9gradients/main/pi/truediv_grad/tuple/control_dependency_12gradients/main/pi/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
µ
$gradients/main/pi/add_1_grad/ReshapeReshape gradients/main/pi/add_1_grad/Sum"gradients/main/pi/add_1_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Џ
"gradients/main/pi/add_1_grad/Sum_1Sum9gradients/main/pi/truediv_grad/tuple/control_dependency_14gradients/main/pi/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
™
&gradients/main/pi/add_1_grad/Reshape_1Reshape"gradients/main/pi/add_1_grad/Sum_1$gradients/main/pi/add_1_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
Е
-gradients/main/pi/add_1_grad/tuple/group_depsNoOp%^gradients/main/pi/add_1_grad/Reshape'^gradients/main/pi/add_1_grad/Reshape_1
В
5gradients/main/pi/add_1_grad/tuple/control_dependencyIdentity$gradients/main/pi/add_1_grad/Reshape.^gradients/main/pi/add_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/main/pi/add_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€
ч
7gradients/main/pi/add_1_grad/tuple/control_dependency_1Identity&gradients/main/pi/add_1_grad/Reshape_1.^gradients/main/pi/add_1_grad/tuple/group_deps*
_output_shapes
: *
T0*9
_class/
-+loc:@gradients/main/pi/add_1_grad/Reshape_1
Ѓ
3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr1_1/dense/Relu_grad/ReluGrad*
_output_shapes	
:А*
data_formatNHWC*
T0
¶
8gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad.^gradients/main/qr1_1/dense/Relu_grad/ReluGrad
Ђ
@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/main/qr1_1/dense/Relu_grad/ReluGrad9^gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*@
_class6
42loc:@gradients/main/qr1_1/dense/Relu_grad/ReluGrad
ђ
Bgradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr1_1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/main/qr1_1/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Ѓ
3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/main/qr2_1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:А*
T0
¶
8gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad.^gradients/main/qr2_1/dense/Relu_grad/ReluGrad
Ђ
@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/Relu_grad/ReluGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients/main/qr2_1/dense/Relu_grad/ReluGrad*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
Bgradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad9^gradients/main/qr2_1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/main/qr2_1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А*
T0
к
,gradients/main/qc_1/dense/MatMul_grad/MatMulMatMul?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*
transpose_b(*'
_output_shapes
:€€€€€€€€€>*
T0*
transpose_a( 
џ
.gradients/main/qc_1/dense/MatMul_grad/MatMul_1MatMulmain/qc_1/concat?gradients/main/qc_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	>А*
T0*
transpose_a(
Ю
6gradients/main/qc_1/dense/MatMul_grad/tuple/group_depsNoOp-^gradients/main/qc_1/dense/MatMul_grad/MatMul/^gradients/main/qc_1/dense/MatMul_grad/MatMul_1
§
>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/qc_1/dense/MatMul_grad/MatMul7^gradients/main/qc_1/dense/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/qc_1/dense/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€>*
T0
Ґ
@gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/qc_1/dense/MatMul_grad/MatMul_17^gradients/main/qc_1/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>А*A
_class7
53loc:@gradients/main/qc_1/dense/MatMul_grad/MatMul_1*
T0
Я
 gradients/main/pi/Exp_1_grad/mulMul5gradients/main/pi/add_1_grad/tuple/control_dependencymain/pi/Exp_1*
T0*'
_output_shapes
:€€€€€€€€€
н
-gradients/main/qr1_1/dense/MatMul_grad/MatMulMatMul@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€>
ё
/gradients/main/qr1_1/dense/MatMul_grad/MatMul_1MatMulmain/qr1_1/concat@gradients/main/qr1_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	>А
°
7gradients/main/qr1_1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients/main/qr1_1/dense/MatMul_grad/MatMul0^gradients/main/qr1_1/dense/MatMul_grad/MatMul_1
®
?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients/main/qr1_1/dense/MatMul_grad/MatMul8^gradients/main/qr1_1/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€>*@
_class6
42loc:@gradients/main/qr1_1/dense/MatMul_grad/MatMul
¶
Agradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients/main/qr1_1/dense/MatMul_grad/MatMul_18^gradients/main/qr1_1/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/main/qr1_1/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>А*
T0
н
-gradients/main/qr2_1/dense/MatMul_grad/MatMulMatMul@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependencymain/qr2/dense/kernel/read*'
_output_shapes
:€€€€€€€€€>*
transpose_a( *
T0*
transpose_b(
ё
/gradients/main/qr2_1/dense/MatMul_grad/MatMul_1MatMulmain/qr2_1/concat@gradients/main/qr2_1/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>А*
transpose_b( *
T0*
transpose_a(
°
7gradients/main/qr2_1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients/main/qr2_1/dense/MatMul_grad/MatMul0^gradients/main/qr2_1/dense/MatMul_grad/MatMul_1
®
?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients/main/qr2_1/dense/MatMul_grad/MatMul8^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€>*
T0*@
_class6
42loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul
¶
Agradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients/main/qr2_1/dense/MatMul_grad/MatMul_18^gradients/main/qr2_1/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	>А*B
_class8
64loc:@gradients/main/qr2_1/dense/MatMul_grad/MatMul_1*
T0
f
$gradients/main/qc_1/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
Н
#gradients/main/qc_1/concat_grad/modFloorModmain/qc_1/concat/axis$gradients/main/qc_1/concat_grad/Rank*
T0*
_output_shapes
: 
p
%gradients/main/qc_1/concat_grad/ShapeShapePlaceholder*
_output_shapes
:*
T0*
out_type0
Н
&gradients/main/qc_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
out_type0* 
_output_shapes
::*
T0*
N
ё
,gradients/main/qc_1/concat_grad/ConcatOffsetConcatOffset#gradients/main/qc_1/concat_grad/mod&gradients/main/qc_1/concat_grad/ShapeN(gradients/main/qc_1/concat_grad/ShapeN:1* 
_output_shapes
::*
N
Г
%gradients/main/qc_1/concat_grad/SliceSlice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency,gradients/main/qc_1/concat_grad/ConcatOffset&gradients/main/qc_1/concat_grad/ShapeN*'
_output_shapes
:€€€€€€€€€<*
Index0*
T0
Й
'gradients/main/qc_1/concat_grad/Slice_1Slice>gradients/main/qc_1/dense/MatMul_grad/tuple/control_dependency.gradients/main/qc_1/concat_grad/ConcatOffset:1(gradients/main/qc_1/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
К
0gradients/main/qc_1/concat_grad/tuple/group_depsNoOp&^gradients/main/qc_1/concat_grad/Slice(^gradients/main/qc_1/concat_grad/Slice_1
К
8gradients/main/qc_1/concat_grad/tuple/control_dependencyIdentity%gradients/main/qc_1/concat_grad/Slice1^gradients/main/qc_1/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€<*8
_class.
,*loc:@gradients/main/qc_1/concat_grad/Slice*
T0
Р
:gradients/main/qc_1/concat_grad/tuple/control_dependency_1Identity'gradients/main/qc_1/concat_grad/Slice_11^gradients/main/qc_1/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*:
_class0
.,loc:@gradients/main/qc_1/concat_grad/Slice_1*
T0
g
%gradients/main/qr1_1/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
Р
$gradients/main/qr1_1/concat_grad/modFloorModmain/qr1_1/concat/axis%gradients/main/qr1_1/concat_grad/Rank*
T0*
_output_shapes
: 
q
&gradients/main/qr1_1/concat_grad/ShapeShapePlaceholder*
_output_shapes
:*
T0*
out_type0
О
'gradients/main/qr1_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1*
N*
T0* 
_output_shapes
::*
out_type0
в
-gradients/main/qr1_1/concat_grad/ConcatOffsetConcatOffset$gradients/main/qr1_1/concat_grad/mod'gradients/main/qr1_1/concat_grad/ShapeN)gradients/main/qr1_1/concat_grad/ShapeN:1* 
_output_shapes
::*
N
З
&gradients/main/qr1_1/concat_grad/SliceSlice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency-gradients/main/qr1_1/concat_grad/ConcatOffset'gradients/main/qr1_1/concat_grad/ShapeN*'
_output_shapes
:€€€€€€€€€<*
T0*
Index0
Н
(gradients/main/qr1_1/concat_grad/Slice_1Slice?gradients/main/qr1_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr1_1/concat_grad/ConcatOffset:1)gradients/main/qr1_1/concat_grad/ShapeN:1*
T0*
Index0*'
_output_shapes
:€€€€€€€€€
Н
1gradients/main/qr1_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr1_1/concat_grad/Slice)^gradients/main/qr1_1/concat_grad/Slice_1
О
9gradients/main/qr1_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr1_1/concat_grad/Slice2^gradients/main/qr1_1/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€<*9
_class/
-+loc:@gradients/main/qr1_1/concat_grad/Slice*
T0
Ф
;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr1_1/concat_grad/Slice_12^gradients/main/qr1_1/concat_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qr1_1/concat_grad/Slice_1*
T0*'
_output_shapes
:€€€€€€€€€
g
%gradients/main/qr2_1/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
Р
$gradients/main/qr2_1/concat_grad/modFloorModmain/qr2_1/concat/axis%gradients/main/qr2_1/concat_grad/Rank*
T0*
_output_shapes
: 
q
&gradients/main/qr2_1/concat_grad/ShapeShapePlaceholder*
out_type0*
_output_shapes
:*
T0
О
'gradients/main/qr2_1/concat_grad/ShapeNShapeNPlaceholder
main/mul_1* 
_output_shapes
::*
T0*
N*
out_type0
в
-gradients/main/qr2_1/concat_grad/ConcatOffsetConcatOffset$gradients/main/qr2_1/concat_grad/mod'gradients/main/qr2_1/concat_grad/ShapeN)gradients/main/qr2_1/concat_grad/ShapeN:1*
N* 
_output_shapes
::
З
&gradients/main/qr2_1/concat_grad/SliceSlice?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency-gradients/main/qr2_1/concat_grad/ConcatOffset'gradients/main/qr2_1/concat_grad/ShapeN*
T0*
Index0*'
_output_shapes
:€€€€€€€€€<
Н
(gradients/main/qr2_1/concat_grad/Slice_1Slice?gradients/main/qr2_1/dense/MatMul_grad/tuple/control_dependency/gradients/main/qr2_1/concat_grad/ConcatOffset:1)gradients/main/qr2_1/concat_grad/ShapeN:1*'
_output_shapes
:€€€€€€€€€*
T0*
Index0
Н
1gradients/main/qr2_1/concat_grad/tuple/group_depsNoOp'^gradients/main/qr2_1/concat_grad/Slice)^gradients/main/qr2_1/concat_grad/Slice_1
О
9gradients/main/qr2_1/concat_grad/tuple/control_dependencyIdentity&gradients/main/qr2_1/concat_grad/Slice2^gradients/main/qr2_1/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€<*
T0*9
_class/
-+loc:@gradients/main/qr2_1/concat_grad/Slice
Ф
;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1Identity(gradients/main/qr2_1/concat_grad/Slice_12^gradients/main/qr2_1/concat_grad/tuple/group_deps*;
_class1
/-loc:@gradients/main/qr2_1/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€*
T0
√
gradients/AddNAddN:gradients/main/qc_1/concat_grad/tuple/control_dependency_1;gradients/main/qr1_1/concat_grad/tuple/control_dependency_1;gradients/main/qr2_1/concat_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
N*
T0*:
_class0
.,loc:@gradients/main/qc_1/concat_grad/Slice_1
m
gradients/main/mul_1_grad/ShapeShapemain/pi/Tanh_1*
T0*
out_type0*
_output_shapes
:
d
!gradients/main/mul_1_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
…
/gradients/main/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/main/mul_1_grad/Shape!gradients/main/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
t
gradients/main/mul_1_grad/MulMulgradients/AddNmain/mul_1/y*'
_output_shapes
:€€€€€€€€€*
T0
і
gradients/main/mul_1_grad/SumSumgradients/main/mul_1_grad/Mul/gradients/main/mul_1_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
ђ
!gradients/main/mul_1_grad/ReshapeReshapegradients/main/mul_1_grad/Sumgradients/main/mul_1_grad/Shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
x
gradients/main/mul_1_grad/Mul_1Mulmain/pi/Tanh_1gradients/AddN*'
_output_shapes
:€€€€€€€€€*
T0
Ї
gradients/main/mul_1_grad/Sum_1Sumgradients/main/mul_1_grad/Mul_11gradients/main/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
°
#gradients/main/mul_1_grad/Reshape_1Reshapegradients/main/mul_1_grad/Sum_1!gradients/main/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
|
*gradients/main/mul_1_grad/tuple/group_depsNoOp"^gradients/main/mul_1_grad/Reshape$^gradients/main/mul_1_grad/Reshape_1
ц
2gradients/main/mul_1_grad/tuple/control_dependencyIdentity!gradients/main/mul_1_grad/Reshape+^gradients/main/mul_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*4
_class*
(&loc:@gradients/main/mul_1_grad/Reshape*
T0
л
4gradients/main/mul_1_grad/tuple/control_dependency_1Identity#gradients/main/mul_1_grad/Reshape_1+^gradients/main/mul_1_grad/tuple/group_deps*
T0*
_output_shapes
: *6
_class,
*(loc:@gradients/main/mul_1_grad/Reshape_1
®
&gradients/main/pi/Tanh_1_grad/TanhGradTanhGradmain/pi/Tanh_12gradients/main/mul_1_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€*
T0
Ё
gradients/AddN_1AddN7gradients/main/pi/sub_1_grad/tuple/control_dependency_17gradients/main/pi/mul_3_grad/tuple/control_dependency_13gradients/main/pi/sub_grad/tuple/control_dependency&gradients/main/pi/Tanh_1_grad/TanhGrad*
T0*
N*'
_output_shapes
:€€€€€€€€€*9
_class/
-+loc:@gradients/main/pi/sub_1_grad/Reshape_1
w
 gradients/main/pi/add_grad/ShapeShapemain/pi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
m
"gradients/main/pi/add_grad/Shape_1Shapemain/pi/mul*
out_type0*
T0*
_output_shapes
:
ћ
0gradients/main/pi/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/add_grad/Shape"gradients/main/pi/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
©
gradients/main/pi/add_grad/SumSumgradients/AddN_10gradients/main/pi/add_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
ѓ
"gradients/main/pi/add_grad/ReshapeReshapegradients/main/pi/add_grad/Sum gradients/main/pi/add_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
≠
 gradients/main/pi/add_grad/Sum_1Sumgradients/AddN_12gradients/main/pi/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
µ
$gradients/main/pi/add_grad/Reshape_1Reshape gradients/main/pi/add_grad/Sum_1"gradients/main/pi/add_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

+gradients/main/pi/add_grad/tuple/group_depsNoOp#^gradients/main/pi/add_grad/Reshape%^gradients/main/pi/add_grad/Reshape_1
ъ
3gradients/main/pi/add_grad/tuple/control_dependencyIdentity"gradients/main/pi/add_grad/Reshape,^gradients/main/pi/add_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*5
_class+
)'loc:@gradients/main/pi/add_grad/Reshape*
T0
А
5gradients/main/pi/add_grad/tuple/control_dependency_1Identity$gradients/main/pi/add_grad/Reshape_1,^gradients/main/pi/add_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€*7
_class-
+)loc:@gradients/main/pi/add_grad/Reshape_1
ш
gradients/AddN_2AddN5gradients/main/pi/sub_grad/tuple/control_dependency_13gradients/main/pi/add_grad/tuple/control_dependency*
T0*
N*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
П
2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
_output_shapes
:*
T0*
data_formatNHWC
З
7gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_23^gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad
В
?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_28^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*7
_class-
+)loc:@gradients/main/pi/sub_grad/Reshape_1
І
Agradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
u
 gradients/main/pi/mul_grad/ShapeShapemain/pi/random_normal*
T0*
out_type0*
_output_shapes
:
m
"gradients/main/pi/mul_grad/Shape_1Shapemain/pi/Exp*
out_type0*
T0*
_output_shapes
:
ћ
0gradients/main/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/main/pi/mul_grad/Shape"gradients/main/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ы
gradients/main/pi/mul_grad/MulMul5gradients/main/pi/add_grad/tuple/control_dependency_1main/pi/Exp*'
_output_shapes
:€€€€€€€€€*
T0
Ј
gradients/main/pi/mul_grad/SumSumgradients/main/pi/mul_grad/Mul0gradients/main/pi/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
ѓ
"gradients/main/pi/mul_grad/ReshapeReshapegradients/main/pi/mul_grad/Sum gradients/main/pi/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
І
 gradients/main/pi/mul_grad/Mul_1Mulmain/pi/random_normal5gradients/main/pi/add_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
љ
 gradients/main/pi/mul_grad/Sum_1Sum gradients/main/pi/mul_grad/Mul_12gradients/main/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
µ
$gradients/main/pi/mul_grad/Reshape_1Reshape gradients/main/pi/mul_grad/Sum_1"gradients/main/pi/mul_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0

+gradients/main/pi/mul_grad/tuple/group_depsNoOp#^gradients/main/pi/mul_grad/Reshape%^gradients/main/pi/mul_grad/Reshape_1
ъ
3gradients/main/pi/mul_grad/tuple/control_dependencyIdentity"gradients/main/pi/mul_grad/Reshape,^gradients/main/pi/mul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/main/pi/mul_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
А
5gradients/main/pi/mul_grad/tuple/control_dependency_1Identity$gradients/main/pi/mul_grad/Reshape_1,^gradients/main/pi/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€*7
_class-
+)loc:@gradients/main/pi/mul_grad/Reshape_1
н
,gradients/main/pi/dense_2/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependencymain/pi/dense_2/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0*
transpose_a( 
я
.gradients/main/pi/dense_2/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	А
Ю
6gradients/main/pi/dense_2/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_2/MatMul_grad/MatMul/^gradients/main/pi/dense_2/MatMul_grad/MatMul_1
•
>gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_2/MatMul_grad/MatMul7^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*?
_class5
31loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul*
T0
Ґ
@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_2/MatMul_grad/MatMul_17^gradients/main/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	А
Ы
gradients/main/pi/Exp_grad/mulMul5gradients/main/pi/mul_grad/tuple/control_dependency_1main/pi/Exp*'
_output_shapes
:€€€€€€€€€*
T0
Й
gradients/AddN_3AddN7gradients/main/pi/mul_1_grad/tuple/control_dependency_1 gradients/main/pi/Exp_1_grad/mulgradients/main/pi/Exp_grad/mul*
T0*9
_class/
-+loc:@gradients/main/pi/mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€*
N
З
*gradients/main/pi/clip_by_value_grad/ShapeShapemain/pi/clip_by_value/Minimum*
out_type0*
T0*
_output_shapes
:
o
,gradients/main/pi/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
|
,gradients/main/pi/clip_by_value_grad/Shape_2Shapegradients/AddN_3*
out_type0*
_output_shapes
:*
T0
u
0gradients/main/pi/clip_by_value_grad/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
÷
*gradients/main/pi/clip_by_value_grad/zerosFill,gradients/main/pi/clip_by_value_grad/Shape_20gradients/main/pi/clip_by_value_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€*

index_type0*
T0
Ђ
1gradients/main/pi/clip_by_value_grad/GreaterEqualGreaterEqualmain/pi/clip_by_value/Minimummain/pi/clip_by_value/y*'
_output_shapes
:€€€€€€€€€*
T0
к
:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/main/pi/clip_by_value_grad/Shape,gradients/main/pi/clip_by_value_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ў
+gradients/main/pi/clip_by_value_grad/SelectSelect1gradients/main/pi/clip_by_value_grad/GreaterEqualgradients/AddN_3*gradients/main/pi/clip_by_value_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€
Џ
-gradients/main/pi/clip_by_value_grad/Select_1Select1gradients/main/pi/clip_by_value_grad/GreaterEqual*gradients/main/pi/clip_by_value_grad/zerosgradients/AddN_3*'
_output_shapes
:€€€€€€€€€*
T0
Ў
(gradients/main/pi/clip_by_value_grad/SumSum+gradients/main/pi/clip_by_value_grad/Select:gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Ќ
,gradients/main/pi/clip_by_value_grad/ReshapeReshape(gradients/main/pi/clip_by_value_grad/Sum*gradients/main/pi/clip_by_value_grad/Shape*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
ё
*gradients/main/pi/clip_by_value_grad/Sum_1Sum-gradients/main/pi/clip_by_value_grad/Select_1<gradients/main/pi/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
¬
.gradients/main/pi/clip_by_value_grad/Reshape_1Reshape*gradients/main/pi/clip_by_value_grad/Sum_1,gradients/main/pi/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
Э
5gradients/main/pi/clip_by_value_grad/tuple/group_depsNoOp-^gradients/main/pi/clip_by_value_grad/Reshape/^gradients/main/pi/clip_by_value_grad/Reshape_1
Ґ
=gradients/main/pi/clip_by_value_grad/tuple/control_dependencyIdentity,gradients/main/pi/clip_by_value_grad/Reshape6^gradients/main/pi/clip_by_value_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€*?
_class5
31loc:@gradients/main/pi/clip_by_value_grad/Reshape
Ч
?gradients/main/pi/clip_by_value_grad/tuple/control_dependency_1Identity.gradients/main/pi/clip_by_value_grad/Reshape_16^gradients/main/pi/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *A
_class7
53loc:@gradients/main/pi/clip_by_value_grad/Reshape_1*
T0
Й
2gradients/main/pi/clip_by_value/Minimum_grad/ShapeShapemain/pi/dense_3/BiasAdd*
out_type0*
_output_shapes
:*
T0
w
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
±
4gradients/main/pi/clip_by_value/Minimum_grad/Shape_2Shape=gradients/main/pi/clip_by_value_grad/tuple/control_dependency*
out_type0*
_output_shapes
:*
T0
}
8gradients/main/pi/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
о
2gradients/main/pi/clip_by_value/Minimum_grad/zerosFill4gradients/main/pi/clip_by_value/Minimum_grad/Shape_28gradients/main/pi/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€*
T0*

index_type0
ѓ
6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual	LessEqualmain/pi/dense_3/BiasAddmain/pi/clip_by_value/Minimum/y*
T0*'
_output_shapes
:€€€€€€€€€
В
Bgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients/main/pi/clip_by_value/Minimum_grad/Shape4gradients/main/pi/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ъ
3gradients/main/pi/clip_by_value/Minimum_grad/SelectSelect6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual=gradients/main/pi/clip_by_value_grad/tuple/control_dependency2gradients/main/pi/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:€€€€€€€€€*
T0
Ь
5gradients/main/pi/clip_by_value/Minimum_grad/Select_1Select6gradients/main/pi/clip_by_value/Minimum_grad/LessEqual2gradients/main/pi/clip_by_value/Minimum_grad/zeros=gradients/main/pi/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
р
0gradients/main/pi/clip_by_value/Minimum_grad/SumSum3gradients/main/pi/clip_by_value/Minimum_grad/SelectBgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
е
4gradients/main/pi/clip_by_value/Minimum_grad/ReshapeReshape0gradients/main/pi/clip_by_value/Minimum_grad/Sum2gradients/main/pi/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
ц
2gradients/main/pi/clip_by_value/Minimum_grad/Sum_1Sum5gradients/main/pi/clip_by_value/Minimum_grad/Select_1Dgradients/main/pi/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Џ
6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1Reshape2gradients/main/pi/clip_by_value/Minimum_grad/Sum_14gradients/main/pi/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
µ
=gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_depsNoOp5^gradients/main/pi/clip_by_value/Minimum_grad/Reshape7^gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1
¬
Egradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity4gradients/main/pi/clip_by_value/Minimum_grad/Reshape>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*G
_class=
;9loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
Ј
Ggradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity6gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1>^gradients/main/pi/clip_by_value/Minimum_grad/tuple/group_deps*I
_class?
=;loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape_1*
T0*
_output_shapes
: 
ƒ
2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGradBiasAddGradEgradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency*
_output_shapes
:*
data_formatNHWC*
T0
Љ
7gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_depsNoOpF^gradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency3^gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad
«
?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependencyIdentityEgradients/main/pi/clip_by_value/Minimum_grad/tuple/control_dependency8^gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main/pi/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:€€€€€€€€€
І
Agradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_3/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*E
_class;
97loc:@gradients/main/pi/dense_3/BiasAdd_grad/BiasAddGrad
н
,gradients/main/pi/dense_3/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependencymain/pi/dense_3/kernel/read*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(*
T0
я
.gradients/main/pi/dense_3/MatMul_grad/MatMul_1MatMulmain/pi/dense_1/Relu?gradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	А
Ю
6gradients/main/pi/dense_3/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_3/MatMul_grad/MatMul/^gradients/main/pi/dense_3/MatMul_grad/MatMul_1
•
>gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_3/MatMul_grad/MatMul7^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
Ґ
@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_3/MatMul_grad/MatMul_17^gradients/main/pi/dense_3/MatMul_grad/tuple/group_deps*
_output_shapes
:	А*
T0*A
_class7
53loc:@gradients/main/pi/dense_3/MatMul_grad/MatMul_1
Х
gradients/AddN_4AddN>gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency>gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency*
N*(
_output_shapes
:€€€€€€€€€А*
T0*?
_class5
31loc:@gradients/main/pi/dense_2/MatMul_grad/MatMul
У
,gradients/main/pi/dense_1/Relu_grad/ReluGradReluGradgradients/AddN_4main/pi/dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
2gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/main/pi/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
£
7gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp3^gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad-^gradients/main/pi/dense_1/Relu_grad/ReluGrad
І
?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/Relu_grad/ReluGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*?
_class5
31loc:@gradients/main/pi/dense_1/Relu_grad/ReluGrad*
T0
®
Agradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad8^gradients/main/pi/dense_1/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/main/pi/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
н
,gradients/main/pi/dense_1/MatMul_grad/MatMulMatMul?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependencymain/pi/dense_1/kernel/read*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
T0
ё
.gradients/main/pi/dense_1/MatMul_grad/MatMul_1MatMulmain/pi/dense/Relu?gradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
Ю
6gradients/main/pi/dense_1/MatMul_grad/tuple/group_depsNoOp-^gradients/main/pi/dense_1/MatMul_grad/MatMul/^gradients/main/pi/dense_1/MatMul_grad/MatMul_1
•
>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity,gradients/main/pi/dense_1/MatMul_grad/MatMul7^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*?
_class5
31loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul
£
@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity.gradients/main/pi/dense_1/MatMul_grad/MatMul_17^gradients/main/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/main/pi/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
љ
*gradients/main/pi/dense/Relu_grad/ReluGradReluGrad>gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependencymain/pi/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
®
0gradients/main/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/main/pi/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А*
data_formatNHWC
Э
5gradients/main/pi/dense/BiasAdd_grad/tuple/group_depsNoOp1^gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad+^gradients/main/pi/dense/Relu_grad/ReluGrad
Я
=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/Relu_grad/ReluGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/main/pi/dense/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А
†
?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad6^gradients/main/pi/dense/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@gradients/main/pi/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
ж
*gradients/main/pi/dense/MatMul_grad/MatMulMatMul=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependencymain/pi/dense/kernel/read*'
_output_shapes
:€€€€€€€€€<*
transpose_b(*
transpose_a( *
T0
“
,gradients/main/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder=gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	<А*
T0*
transpose_b( 
Ш
4gradients/main/pi/dense/MatMul_grad/tuple/group_depsNoOp+^gradients/main/pi/dense/MatMul_grad/MatMul-^gradients/main/pi/dense/MatMul_grad/MatMul_1
Ь
<gradients/main/pi/dense/MatMul_grad/tuple/control_dependencyIdentity*gradients/main/pi/dense/MatMul_grad/MatMul5^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*=
_class3
1/loc:@gradients/main/pi/dense/MatMul_grad/MatMul*
T0*'
_output_shapes
:€€€€€€€€€<
Ъ
>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Identity,gradients/main/pi/dense/MatMul_grad/MatMul_15^gradients/main/pi/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	<А*
T0*?
_class5
31loc:@gradients/main/pi/dense/MatMul_grad/MatMul_1
`
Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Х
ReshapeReshape>gradients/main/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:Аx*
Tshape0*
T0
b
Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ъ
	Reshape_1Reshape?gradients/main/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_2/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Ь
	Reshape_2Reshape@gradients/main/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes

:АА*
T0*
Tshape0
b
Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ь
	Reshape_3ReshapeAgradients/main/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
Ы
	Reshape_4Reshape@gradients/main/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_5/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Ы
	Reshape_5ReshapeAgradients/main/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
Ы
	Reshape_6Reshape@gradients/main/pi/dense_3/MatMul_grad/tuple/control_dependency_1Reshape_6/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_7/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ы
	Reshape_7ReshapeAgradients/main/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Reshape_7/shape*
Tshape0*
T0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7concat/axis*
_output_shapes

:ДД*

Tidx0*
N*
T0
h
PyFuncPyFuncconcat*
token
pyfunc_0*
Tin
2*
_output_shapes

:ДД*
Tout
2
p
Const_8Const*5
value,B*"  <                       *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
§
splitSplitVPyFuncConst_8split/split_dim*

Tlen0*
T0*K
_output_shapes9
7:Аx:А:АА:А:А::А:*
	num_split
`
Reshape_8/shapeConst*
_output_shapes
:*
valueB"<      *
dtype0
d
	Reshape_8ReshapesplitReshape_8/shape*
T0*
_output_shapes
:	<А*
Tshape0
Z
Reshape_9/shapeConst*
_output_shapes
:*
dtype0*
valueB:А
b
	Reshape_9Reshapesplit:1Reshape_9/shape*
_output_shapes	
:А*
T0*
Tshape0
a
Reshape_10/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
i

Reshape_10Reshapesplit:2Reshape_10/shape*
Tshape0*
T0* 
_output_shapes
:
АА
[
Reshape_11/shapeConst*
dtype0*
_output_shapes
:*
valueB:А
d

Reshape_11Reshapesplit:3Reshape_11/shape*
T0*
Tshape0*
_output_shapes	
:А
a
Reshape_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
h

Reshape_12Reshapesplit:4Reshape_12/shape*
_output_shapes
:	А*
Tshape0*
T0
Z
Reshape_13/shapeConst*
valueB:*
_output_shapes
:*
dtype0
c

Reshape_13Reshapesplit:5Reshape_13/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_14/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
h

Reshape_14Reshapesplit:6Reshape_14/shape*
Tshape0*
_output_shapes
:	А*
T0
Z
Reshape_15/shapeConst*
_output_shapes
:*
valueB:*
dtype0
c

Reshape_15Reshapesplit:7Reshape_15/shape*
T0*
Tshape0*
_output_shapes
:
Е
beta1_power/initial_valueConst*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
dtype0*
valueB
 *fff?
Ц
beta1_power
VariableV2*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias*
	container *
dtype0*
shared_name *
shape: 
µ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
T0
q
beta1_power/readIdentitybeta1_power*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias
Е
beta2_power/initial_valueConst*
dtype0*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
valueB
 *wЊ?
Ц
beta2_power
VariableV2*%
_class
loc:@main/pi/dense/bias*
shared_name *
shape: *
_output_shapes
: *
dtype0*
	container 
µ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
q
beta2_power/readIdentitybeta2_power*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
T0
µ
;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*'
_class
loc:@main/pi/dense/kernel*
dtype0*
valueB"<      *
_output_shapes
:
Я
1main/pi/dense/kernel/Adam/Initializer/zeros/ConstConst*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
: *
valueB
 *    *
dtype0
И
+main/pi/dense/kernel/Adam/Initializer/zerosFill;main/pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/pi/dense/kernel/Adam/Initializer/zeros/Const*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<А*

index_type0
Є
main/pi/dense/kernel/Adam
VariableV2*
dtype0*'
_class
loc:@main/pi/dense/kernel*
	container *
shared_name *
shape:	<А*
_output_shapes
:	<А
о
 main/pi/dense/kernel/Adam/AssignAssignmain/pi/dense/kernel/Adam+main/pi/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	<А*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense/kernel
Ш
main/pi/dense/kernel/Adam/readIdentitymain/pi/dense/kernel/Adam*
_output_shapes
:	<А*
T0*'
_class
loc:@main/pi/dense/kernel
Ј
=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"<      *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:*
dtype0
°
3main/pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *'
_class
loc:@main/pi/dense/kernel*
dtype0*
valueB
 *    
О
-main/pi/dense/kernel/Adam_1/Initializer/zerosFill=main/pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/pi/dense/kernel/Adam_1/Initializer/zeros/Const*

index_type0*
T0*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А
Ї
main/pi/dense/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	<А*
shared_name *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А
ф
"main/pi/dense/kernel/Adam_1/AssignAssignmain/pi/dense/kernel/Adam_1-main/pi/dense/kernel/Adam_1/Initializer/zeros*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А*
validate_shape(*
T0*
use_locking(
Ь
 main/pi/dense/kernel/Adam_1/readIdentitymain/pi/dense/kernel/Adam_1*
_output_shapes
:	<А*
T0*'
_class
loc:@main/pi/dense/kernel
Я
)main/pi/dense/bias/Adam/Initializer/zerosConst*
dtype0*%
_class
loc:@main/pi/dense/bias*
valueBА*    *
_output_shapes	
:А
ђ
main/pi/dense/bias/Adam
VariableV2*
shared_name *
_output_shapes	
:А*
shape:А*%
_class
loc:@main/pi/dense/bias*
dtype0*
	container 
в
main/pi/dense/bias/Adam/AssignAssignmain/pi/dense/bias/Adam)main/pi/dense/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes	
:А*%
_class
loc:@main/pi/dense/bias*
T0
О
main/pi/dense/bias/Adam/readIdentitymain/pi/dense/bias/Adam*
_output_shapes	
:А*
T0*%
_class
loc:@main/pi/dense/bias
°
+main/pi/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*%
_class
loc:@main/pi/dense/bias*
valueBА*    *
_output_shapes	
:А
Ѓ
main/pi/dense/bias/Adam_1
VariableV2*
shape:А*
	container *
dtype0*
shared_name *
_output_shapes	
:А*%
_class
loc:@main/pi/dense/bias
и
 main/pi/dense/bias/Adam_1/AssignAssignmain/pi/dense/bias/Adam_1+main/pi/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:А*%
_class
loc:@main/pi/dense/bias
Т
main/pi/dense/bias/Adam_1/readIdentitymain/pi/dense/bias/Adam_1*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:А
є
=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*)
_class
loc:@main/pi/dense_1/kernel*
valueB"      *
dtype0
£
3main/pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *)
_class
loc:@main/pi/dense_1/kernel*
dtype0
С
-main/pi/dense_1/kernel/Adam/Initializer/zerosFill=main/pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/pi/dense_1/kernel/Adam/Initializer/zeros/Const*)
_class
loc:@main/pi/dense_1/kernel*
T0*

index_type0* 
_output_shapes
:
АА
Њ
main/pi/dense_1/kernel/Adam
VariableV2*
shared_name *
shape:
АА*
	container * 
_output_shapes
:
АА*
dtype0*)
_class
loc:@main/pi/dense_1/kernel
ч
"main/pi/dense_1/kernel/Adam/AssignAssignmain/pi/dense_1/kernel/Adam-main/pi/dense_1/kernel/Adam/Initializer/zeros* 
_output_shapes
:
АА*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0*
use_locking(
Я
 main/pi/dense_1/kernel/Adam/readIdentitymain/pi/dense_1/kernel/Adam*
T0* 
_output_shapes
:
АА*)
_class
loc:@main/pi/dense_1/kernel
ї
?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"      *)
_class
loc:@main/pi/dense_1/kernel*
dtype0
•
5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *)
_class
loc:@main/pi/dense_1/kernel
Ч
/main/pi/dense_1/kernel/Adam_1/Initializer/zerosFill?main/pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
АА*

index_type0*)
_class
loc:@main/pi/dense_1/kernel
ј
main/pi/dense_1/kernel/Adam_1
VariableV2*
shape:
АА*
shared_name *)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
dtype0*
	container 
э
$main/pi/dense_1/kernel/Adam_1/AssignAssignmain/pi/dense_1/kernel/Adam_1/main/pi/dense_1/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
АА*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
T0*
validate_shape(
£
"main/pi/dense_1/kernel/Adam_1/readIdentitymain/pi/dense_1/kernel/Adam_1*
T0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА
£
+main/pi/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
valueBА*    *'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А
∞
main/pi/dense_1/bias/Adam
VariableV2*
	container *'
_class
loc:@main/pi/dense_1/bias*
shared_name *
_output_shapes	
:А*
shape:А*
dtype0
к
 main/pi/dense_1/bias/Adam/AssignAssignmain/pi/dense_1/bias/Adam+main/pi/dense_1/bias/Adam/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
T0
Ф
main/pi/dense_1/bias/Adam/readIdentitymain/pi/dense_1/bias/Adam*
_output_shapes	
:А*
T0*'
_class
loc:@main/pi/dense_1/bias
•
-main/pi/dense_1/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *
dtype0*'
_class
loc:@main/pi/dense_1/bias
≤
main/pi/dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *'
_class
loc:@main/pi/dense_1/bias*
shape:А*
_output_shapes	
:А
р
"main/pi/dense_1/bias/Adam_1/AssignAssignmain/pi/dense_1/bias/Adam_1-main/pi/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias
Ш
 main/pi/dense_1/bias/Adam_1/readIdentitymain/pi/dense_1/bias/Adam_1*
T0*
_output_shapes	
:А*'
_class
loc:@main/pi/dense_1/bias
ѓ
-main/pi/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	А*
valueB	А*    *)
_class
loc:@main/pi/dense_2/kernel*
dtype0
Љ
main/pi/dense_2/kernel/Adam
VariableV2*
	container *)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
dtype0*
shared_name *
shape:	А
ц
"main/pi/dense_2/kernel/Adam/AssignAssignmain/pi/dense_2/kernel/Adam-main/pi/dense_2/kernel/Adam/Initializer/zeros*
T0*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
use_locking(*
validate_shape(
Ю
 main/pi/dense_2/kernel/Adam/readIdentitymain/pi/dense_2/kernel/Adam*)
_class
loc:@main/pi/dense_2/kernel*
T0*
_output_shapes
:	А
±
/main/pi/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB	А*    *
dtype0*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel
Њ
main/pi/dense_2/kernel/Adam_1
VariableV2*
	container *
shared_name *)
_class
loc:@main/pi/dense_2/kernel*
shape:	А*
_output_shapes
:	А*
dtype0
ь
$main/pi/dense_2/kernel/Adam_1/AssignAssignmain/pi/dense_2/kernel/Adam_1/main/pi/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel
Ґ
"main/pi/dense_2/kernel/Adam_1/readIdentitymain/pi/dense_2/kernel/Adam_1*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
T0
°
+main/pi/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
dtype0*
valueB*    
Ѓ
main/pi/dense_2/bias/Adam
VariableV2*
shared_name *'
_class
loc:@main/pi/dense_2/bias*
shape:*
dtype0*
_output_shapes
:*
	container 
й
 main/pi/dense_2/bias/Adam/AssignAssignmain/pi/dense_2/bias/Adam+main/pi/dense_2/bias/Adam/Initializer/zeros*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(*
use_locking(*
T0
У
main/pi/dense_2/bias/Adam/readIdentitymain/pi/dense_2/bias/Adam*
_output_shapes
:*
T0*'
_class
loc:@main/pi/dense_2/bias
£
-main/pi/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *'
_class
loc:@main/pi/dense_2/bias*
dtype0
∞
main/pi/dense_2/bias/Adam_1
VariableV2*
	container *
shared_name *
shape:*
_output_shapes
:*
dtype0*'
_class
loc:@main/pi/dense_2/bias
п
"main/pi/dense_2/bias/Adam_1/AssignAssignmain/pi/dense_2/bias/Adam_1-main/pi/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0*
validate_shape(*
use_locking(
Ч
 main/pi/dense_2/bias/Adam_1/readIdentitymain/pi/dense_2/bias/Adam_1*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
T0
ѓ
-main/pi/dense_3/kernel/Adam/Initializer/zerosConst*
valueB	А*    *
dtype0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А
Љ
main/pi/dense_3/kernel/Adam
VariableV2*
dtype0*)
_class
loc:@main/pi/dense_3/kernel*
shared_name *
shape:	А*
_output_shapes
:	А*
	container 
ц
"main/pi/dense_3/kernel/Adam/AssignAssignmain/pi/dense_3/kernel/Adam-main/pi/dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
T0
Ю
 main/pi/dense_3/kernel/Adam/readIdentitymain/pi/dense_3/kernel/Adam*
_output_shapes
:	А*
T0*)
_class
loc:@main/pi/dense_3/kernel
±
/main/pi/dense_3/kernel/Adam_1/Initializer/zerosConst*
dtype0*
valueB	А*    *)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А
Њ
main/pi/dense_3/kernel/Adam_1
VariableV2*)
_class
loc:@main/pi/dense_3/kernel*
dtype0*
shape:	А*
_output_shapes
:	А*
	container *
shared_name 
ь
$main/pi/dense_3/kernel/Adam_1/AssignAssignmain/pi/dense_3/kernel/Adam_1/main/pi/dense_3/kernel/Adam_1/Initializer/zeros*
T0*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
validate_shape(*
use_locking(
Ґ
"main/pi/dense_3/kernel/Adam_1/readIdentitymain/pi/dense_3/kernel/Adam_1*
_output_shapes
:	А*
T0*)
_class
loc:@main/pi/dense_3/kernel
°
+main/pi/dense_3/bias/Adam/Initializer/zerosConst*
dtype0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
valueB*    
Ѓ
main/pi/dense_3/bias/Adam
VariableV2*
shared_name *'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
	container *
shape:*
dtype0
й
 main/pi/dense_3/bias/Adam/AssignAssignmain/pi/dense_3/bias/Adam+main/pi/dense_3/bias/Adam/Initializer/zeros*
_output_shapes
:*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_3/bias*
use_locking(
У
main/pi/dense_3/bias/Adam/readIdentitymain/pi/dense_3/bias/Adam*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
£
-main/pi/dense_3/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@main/pi/dense_3/bias*
dtype0*
valueB*    *
_output_shapes
:
∞
main/pi/dense_3/bias/Adam_1
VariableV2*
	container *
shared_name *'
_class
loc:@main/pi/dense_3/bias*
dtype0*
shape:*
_output_shapes
:
п
"main/pi/dense_3/bias/Adam_1/AssignAssignmain/pi/dense_3/bias/Adam_1-main/pi/dense_3/bias/Adam_1/Initializer/zeros*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
Ч
 main/pi/dense_3/bias/Adam_1/readIdentitymain/pi/dense_3/bias/Adam_1*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:
[
train_pi/learning_rateConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
S
train_pi/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
S
train_pi/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *wЊ?
U
train_pi/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
ь
.train_pi/update_main/pi/dense/kernel/ApplyAdam	ApplyAdammain/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_8*
T0*
use_locking( *'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А*
use_nesterov( 
о
,train_pi/update_main/pi/dense/bias/ApplyAdam	ApplyAdammain/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon	Reshape_9*
use_locking( *%
_class
loc:@main/pi/dense/bias*
use_nesterov( *
_output_shapes	
:А*
T0
И
0train_pi/update_main/pi/dense_1/kernel/ApplyAdam	ApplyAdammain/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_10*)
_class
loc:@main/pi/dense_1/kernel*
use_locking( *
T0*
use_nesterov( * 
_output_shapes
:
АА
щ
.train_pi/update_main/pi/dense_1/bias/ApplyAdam	ApplyAdammain/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_11*
use_locking( *
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А*
use_nesterov( 
З
0train_pi/update_main/pi/dense_2/kernel/ApplyAdam	ApplyAdammain/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_12*)
_class
loc:@main/pi/dense_2/kernel*
use_nesterov( *
_output_shapes
:	А*
T0*
use_locking( 
ш
.train_pi/update_main/pi/dense_2/bias/ApplyAdam	ApplyAdammain/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_13*
_output_shapes
:*
use_nesterov( *'
_class
loc:@main/pi/dense_2/bias*
use_locking( *
T0
З
0train_pi/update_main/pi/dense_3/kernel/ApplyAdam	ApplyAdammain/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_14*)
_class
loc:@main/pi/dense_3/kernel*
use_locking( *
_output_shapes
:	А*
use_nesterov( *
T0
ш
.train_pi/update_main/pi/dense_3/bias/ApplyAdam	ApplyAdammain/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1beta1_power/readbeta2_power/readtrain_pi/learning_ratetrain_pi/beta1train_pi/beta2train_pi/epsilon
Reshape_15*'
_class
loc:@main/pi/dense_3/bias*
use_locking( *
T0*
_output_shapes
:*
use_nesterov( 
Й
train_pi/mulMulbeta1_power/readtrain_pi/beta1-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias
•
train_pi/AssignAssignbeta1_powertrain_pi/mul*%
_class
loc:@main/pi/dense/bias*
use_locking( *
validate_shape(*
T0*
_output_shapes
: 
Л
train_pi/mul_1Mulbeta2_power/readtrain_pi/beta2-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam*
T0*
_output_shapes
: *%
_class
loc:@main/pi/dense/bias
©
train_pi/Assign_1Assignbeta2_powertrain_pi/mul_1*%
_class
loc:@main/pi/dense/bias*
use_locking( *
validate_shape(*
T0*
_output_shapes
: 
¬
train_piNoOp^train_pi/Assign^train_pi/Assign_1-^train_pi/update_main/pi/dense/bias/ApplyAdam/^train_pi/update_main/pi/dense/kernel/ApplyAdam/^train_pi/update_main/pi/dense_1/bias/ApplyAdam1^train_pi/update_main/pi/dense_1/kernel/ApplyAdam/^train_pi/update_main/pi/dense_2/bias/ApplyAdam1^train_pi/update_main/pi/dense_2/kernel/ApplyAdam/^train_pi/update_main/pi/dense_3/bias/ApplyAdam1^train_pi/update_main/pi/dense_3/kernel/ApplyAdam
n
Reshape_16/shapeConst	^train_pi*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
v

Reshape_16Reshapemain/pi/dense/kernel/readReshape_16/shape*
Tshape0*
T0*
_output_shapes	
:Аx
n
Reshape_17/shapeConst	^train_pi*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
t

Reshape_17Reshapemain/pi/dense/bias/readReshape_17/shape*
T0*
Tshape0*
_output_shapes	
:А
n
Reshape_18/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y

Reshape_18Reshapemain/pi/dense_1/kernel/readReshape_18/shape*
T0*
Tshape0*
_output_shapes

:АА
n
Reshape_19/shapeConst	^train_pi*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
v

Reshape_19Reshapemain/pi/dense_1/bias/readReshape_19/shape*
T0*
Tshape0*
_output_shapes	
:А
n
Reshape_20/shapeConst	^train_pi*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
x

Reshape_20Reshapemain/pi/dense_2/kernel/readReshape_20/shape*
_output_shapes	
:А*
T0*
Tshape0
n
Reshape_21/shapeConst	^train_pi*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
u

Reshape_21Reshapemain/pi/dense_2/bias/readReshape_21/shape*
Tshape0*
_output_shapes
:*
T0
n
Reshape_22/shapeConst	^train_pi*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x

Reshape_22Reshapemain/pi/dense_3/kernel/readReshape_22/shape*
_output_shapes	
:А*
Tshape0*
T0
n
Reshape_23/shapeConst	^train_pi*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
u

Reshape_23Reshapemain/pi/dense_3/bias/readReshape_23/shape*
_output_shapes
:*
Tshape0*
T0
Z
concat_1/axisConst	^train_pi*
dtype0*
_output_shapes
: *
value	B : 
њ
concat_1ConcatV2
Reshape_16
Reshape_17
Reshape_18
Reshape_19
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_1/axis*
T0*

Tidx0*
N*
_output_shapes

:ДД
h
PyFunc_1PyFuncconcat_1*
_output_shapes
:*
Tin
2*
token
pyfunc_1*
Tout
2
{
Const_9Const	^train_pi*
dtype0*
_output_shapes
:*5
value,B*"  <                       
^
split_1/split_dimConst	^train_pi*
dtype0*
value	B : *
_output_shapes
: 
У
split_1SplitVPyFunc_1Const_9split_1/split_dim*

Tlen0*
	num_split*4
_output_shapes"
 ::::::::*
T0
l
Reshape_24/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB"<      
h

Reshape_24Reshapesplit_1Reshape_24/shape*
T0*
Tshape0*
_output_shapes
:	<А
f
Reshape_25/shapeConst	^train_pi*
dtype0*
valueB:А*
_output_shapes
:
f

Reshape_25Reshape	split_1:1Reshape_25/shape*
Tshape0*
T0*
_output_shapes	
:А
l
Reshape_26/shapeConst	^train_pi*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_26Reshape	split_1:2Reshape_26/shape*
T0* 
_output_shapes
:
АА*
Tshape0
f
Reshape_27/shapeConst	^train_pi*
valueB:А*
dtype0*
_output_shapes
:
f

Reshape_27Reshape	split_1:3Reshape_27/shape*
Tshape0*
T0*
_output_shapes	
:А
l
Reshape_28/shapeConst	^train_pi*
dtype0*
valueB"      *
_output_shapes
:
j

Reshape_28Reshape	split_1:4Reshape_28/shape*
T0*
_output_shapes
:	А*
Tshape0
e
Reshape_29/shapeConst	^train_pi*
dtype0*
valueB:*
_output_shapes
:
e

Reshape_29Reshape	split_1:5Reshape_29/shape*
_output_shapes
:*
T0*
Tshape0
l
Reshape_30/shapeConst	^train_pi*
dtype0*
valueB"      *
_output_shapes
:
j

Reshape_30Reshape	split_1:6Reshape_30/shape*
T0*
Tshape0*
_output_shapes
:	А
e
Reshape_31/shapeConst	^train_pi*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_31Reshape	split_1:7Reshape_31/shape*
_output_shapes
:*
Tshape0*
T0
Ѓ
AssignAssignmain/pi/dense/kernel
Reshape_24*
use_locking(*
_output_shapes
:	<А*'
_class
loc:@main/pi/dense/kernel*
T0*
validate_shape(
®
Assign_1Assignmain/pi/dense/bias
Reshape_25*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
use_locking(*
_output_shapes	
:А*
T0
µ
Assign_2Assignmain/pi/dense_1/kernel
Reshape_26*
T0*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(
ђ
Assign_3Assignmain/pi/dense_1/bias
Reshape_27*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
T0*
_output_shapes	
:А
і
Assign_4Assignmain/pi/dense_2/kernel
Reshape_28*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(
Ђ
Assign_5Assignmain/pi/dense_2/bias
Reshape_29*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
T0*
validate_shape(
і
Assign_6Assignmain/pi/dense_3/kernel
Reshape_30*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
use_locking(*
T0
Ђ
Assign_7Assignmain/pi/dense_3/bias
Reshape_31*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
s

group_depsNoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^train_pi
,
group_deps_1NoOp^group_deps	^train_pi
c
gradients_1/ShapeConst^group_deps_1*
valueB *
_output_shapes
: *
dtype0
i
gradients_1/grad_ys_0Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *  А?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Q
'gradients_1/add_4_grad/tuple/group_depsNoOp^gradients_1/Fill^group_deps_1
љ
/gradients_1/add_4_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/add_4_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
њ
1gradients_1/add_4_grad/tuple/control_dependency_1Identitygradients_1/Fill(^gradients_1/add_4_grad/tuple/group_deps*#
_class
loc:@gradients_1/Fill*
T0*
_output_shapes
: 
p
'gradients_1/add_3_grad/tuple/group_depsNoOp0^gradients_1/add_4_grad/tuple/control_dependency^group_deps_1
№
/gradients_1/add_3_grad/tuple/control_dependencyIdentity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*
_output_shapes
: *#
_class
loc:@gradients_1/Fill*
T0
ё
1gradients_1/add_3_grad/tuple/control_dependency_1Identity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*
T0*
_output_shapes
: *#
_class
loc:@gradients_1/Fill
~
gradients_1/mul_10_grad/MulMul1gradients_1/add_4_grad/tuple/control_dependency_1Mean_4*
_output_shapes
: *
T0
В
gradients_1/mul_10_grad/Mul_1Mul1gradients_1/add_4_grad/tuple/control_dependency_1mul_10/x*
_output_shapes
: *
T0
}
(gradients_1/mul_10_grad/tuple/group_depsNoOp^gradients_1/mul_10_grad/Mul^gradients_1/mul_10_grad/Mul_1^group_deps_1
’
0gradients_1/mul_10_grad/tuple/control_dependencyIdentitygradients_1/mul_10_grad/Mul)^gradients_1/mul_10_grad/tuple/group_deps*
_output_shapes
: *.
_class$
" loc:@gradients_1/mul_10_grad/Mul*
T0
џ
2gradients_1/mul_10_grad/tuple/control_dependency_1Identitygradients_1/mul_10_grad/Mul_1)^gradients_1/mul_10_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_1/mul_10_grad/Mul_1
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
—
/gradients_1/mul_8_grad/tuple/control_dependencyIdentitygradients_1/mul_8_grad/Mul(^gradients_1/mul_8_grad/tuple/group_deps*-
_class#
!loc:@gradients_1/mul_8_grad/Mul*
T0*
_output_shapes
: 
„
1gradients_1/mul_8_grad/tuple/control_dependency_1Identitygradients_1/mul_8_grad/Mul_1(^gradients_1/mul_8_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/mul_8_grad/Mul_1*
T0*
_output_shapes
: 
}
gradients_1/mul_9_grad/MulMul1gradients_1/add_3_grad/tuple/control_dependency_1Mean_3*
T0*
_output_shapes
: 
А
gradients_1/mul_9_grad/Mul_1Mul1gradients_1/add_3_grad/tuple/control_dependency_1mul_9/x*
_output_shapes
: *
T0
z
'gradients_1/mul_9_grad/tuple/group_depsNoOp^gradients_1/mul_9_grad/Mul^gradients_1/mul_9_grad/Mul_1^group_deps_1
—
/gradients_1/mul_9_grad/tuple/control_dependencyIdentitygradients_1/mul_9_grad/Mul(^gradients_1/mul_9_grad/tuple/group_deps*-
_class#
!loc:@gradients_1/mul_9_grad/Mul*
T0*
_output_shapes
: 
„
1gradients_1/mul_9_grad/tuple/control_dependency_1Identitygradients_1/mul_9_grad/Mul_1(^gradients_1/mul_9_grad/tuple/group_deps*
_output_shapes
: */
_class%
#!loc:@gradients_1/mul_9_grad/Mul_1*
T0
~
%gradients_1/Mean_4_grad/Reshape/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
Є
gradients_1/Mean_4_grad/ReshapeReshape2gradients_1/mul_10_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
q
gradients_1/Mean_4_grad/ShapeShapepow_2^group_deps_1*
out_type0*
_output_shapes
:*
T0
§
gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*

Tmultiples0*#
_output_shapes
:€€€€€€€€€*
T0
s
gradients_1/Mean_4_grad/Shape_1Shapepow_2^group_deps_1*
out_type0*
_output_shapes
:*
T0
q
gradients_1/Mean_4_grad/Shape_2Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
v
gradients_1/Mean_4_grad/ConstConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB: 
Ґ
gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
x
gradients_1/Mean_4_grad/Const_1Const^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
¶
gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
r
!gradients_1/Mean_4_grad/Maximum/yConst^group_deps_1*
dtype0*
_output_shapes
: *
value	B :
О
gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
_output_shapes
: *
T0
М
 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0*
_output_shapes
: 
Ж
gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
Ф
gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
~
%gradients_1/Mean_2_grad/Reshape/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
Ј
gradients_1/Mean_2_grad/ReshapeReshape1gradients_1/mul_8_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
o
gradients_1/Mean_2_grad/ShapeShapepow^group_deps_1*
T0*
_output_shapes
:*
out_type0
§
gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
q
gradients_1/Mean_2_grad/Shape_1Shapepow^group_deps_1*
out_type0*
_output_shapes
:*
T0
q
gradients_1/Mean_2_grad/Shape_2Const^group_deps_1*
valueB *
dtype0*
_output_shapes
: 
v
gradients_1/Mean_2_grad/ConstConst^group_deps_1*
valueB: *
_output_shapes
:*
dtype0
Ґ
gradients_1/Mean_2_grad/ProdProdgradients_1/Mean_2_grad/Shape_1gradients_1/Mean_2_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
x
gradients_1/Mean_2_grad/Const_1Const^group_deps_1*
dtype0*
_output_shapes
:*
valueB: 
¶
gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const_1*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
r
!gradients_1/Mean_2_grad/Maximum/yConst^group_deps_1*
value	B :*
dtype0*
_output_shapes
: 
О
gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
_output_shapes
: *
T0
М
 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
_output_shapes
: *
T0
Ж
gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Ф
gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
~
%gradients_1/Mean_3_grad/Reshape/shapeConst^group_deps_1*
dtype0*
valueB:*
_output_shapes
:
Ј
gradients_1/Mean_3_grad/ReshapeReshape1gradients_1/mul_9_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
q
gradients_1/Mean_3_grad/ShapeShapepow_1^group_deps_1*
_output_shapes
:*
T0*
out_type0
§
gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:€€€€€€€€€
s
gradients_1/Mean_3_grad/Shape_1Shapepow_1^group_deps_1*
T0*
out_type0*
_output_shapes
:
q
gradients_1/Mean_3_grad/Shape_2Const^group_deps_1*
_output_shapes
: *
valueB *
dtype0
v
gradients_1/Mean_3_grad/ConstConst^group_deps_1*
_output_shapes
:*
valueB: *
dtype0
Ґ
gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_1gradients_1/Mean_3_grad/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
x
gradients_1/Mean_3_grad/Const_1Const^group_deps_1*
valueB: *
_output_shapes
:*
dtype0
¶
gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const_1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
r
!gradients_1/Mean_3_grad/Maximum/yConst^group_deps_1*
dtype0*
_output_shapes
: *
value	B :
О
gradients_1/Mean_3_grad/MaximumMaximumgradients_1/Mean_3_grad/Prod_1!gradients_1/Mean_3_grad/Maximum/y*
_output_shapes
: *
T0
М
 gradients_1/Mean_3_grad/floordivFloorDivgradients_1/Mean_3_grad/Prodgradients_1/Mean_3_grad/Maximum*
_output_shapes
: *
T0
Ж
gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*
Truncate( *

SrcT0*

DstT0*
_output_shapes
: 
Ф
gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
p
gradients_1/pow_2_grad/ShapeShapesub_8^group_deps_1*
T0*
_output_shapes
:*
out_type0
p
gradients_1/pow_2_grad/Shape_1Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB 
ј
,gradients_1/pow_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_2_grad/Shapegradients_1/pow_2_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
y
gradients_1/pow_2_grad/mulMulgradients_1/Mean_4_grad/truedivpow_2/y*#
_output_shapes
:€€€€€€€€€*
T0
p
gradients_1/pow_2_grad/sub/yConst^group_deps_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
i
gradients_1/pow_2_grad/subSubpow_2/ygradients_1/pow_2_grad/sub/y*
T0*
_output_shapes
: 
r
gradients_1/pow_2_grad/PowPowsub_8gradients_1/pow_2_grad/sub*#
_output_shapes
:€€€€€€€€€*
T0
Й
gradients_1/pow_2_grad/mul_1Mulgradients_1/pow_2_grad/mulgradients_1/pow_2_grad/Pow*
T0*#
_output_shapes
:€€€€€€€€€
≠
gradients_1/pow_2_grad/SumSumgradients_1/pow_2_grad/mul_1,gradients_1/pow_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Я
gradients_1/pow_2_grad/ReshapeReshapegradients_1/pow_2_grad/Sumgradients_1/pow_2_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
t
 gradients_1/pow_2_grad/Greater/yConst^group_deps_1*
dtype0*
valueB
 *    *
_output_shapes
: 
А
gradients_1/pow_2_grad/GreaterGreatersub_8 gradients_1/pow_2_grad/Greater/y*
T0*#
_output_shapes
:€€€€€€€€€
z
&gradients_1/pow_2_grad/ones_like/ShapeShapesub_8^group_deps_1*
_output_shapes
:*
out_type0*
T0
z
&gradients_1/pow_2_grad/ones_like/ConstConst^group_deps_1*
valueB
 *  А?*
_output_shapes
: *
dtype0
Є
 gradients_1/pow_2_grad/ones_likeFill&gradients_1/pow_2_grad/ones_like/Shape&gradients_1/pow_2_grad/ones_like/Const*

index_type0*#
_output_shapes
:€€€€€€€€€*
T0
Ю
gradients_1/pow_2_grad/SelectSelectgradients_1/pow_2_grad/Greatersub_8 gradients_1/pow_2_grad/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
n
gradients_1/pow_2_grad/LogLoggradients_1/pow_2_grad/Select*
T0*#
_output_shapes
:€€€€€€€€€
r
!gradients_1/pow_2_grad/zeros_like	ZerosLikesub_8^group_deps_1*
T0*#
_output_shapes
:€€€€€€€€€
ґ
gradients_1/pow_2_grad/Select_1Selectgradients_1/pow_2_grad/Greatergradients_1/pow_2_grad/Log!gradients_1/pow_2_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
y
gradients_1/pow_2_grad/mul_2Mulgradients_1/Mean_4_grad/truedivpow_2*
T0*#
_output_shapes
:€€€€€€€€€
Р
gradients_1/pow_2_grad/mul_3Mulgradients_1/pow_2_grad/mul_2gradients_1/pow_2_grad/Select_1*
T0*#
_output_shapes
:€€€€€€€€€
±
gradients_1/pow_2_grad/Sum_1Sumgradients_1/pow_2_grad/mul_3.gradients_1/pow_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
Ш
 gradients_1/pow_2_grad/Reshape_1Reshapegradients_1/pow_2_grad/Sum_1gradients_1/pow_2_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
В
'gradients_1/pow_2_grad/tuple/group_depsNoOp^gradients_1/pow_2_grad/Reshape!^gradients_1/pow_2_grad/Reshape_1^group_deps_1
ж
/gradients_1/pow_2_grad/tuple/control_dependencyIdentitygradients_1/pow_2_grad/Reshape(^gradients_1/pow_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/pow_2_grad/Reshape*#
_output_shapes
:€€€€€€€€€*
T0
я
1gradients_1/pow_2_grad/tuple/control_dependency_1Identity gradients_1/pow_2_grad/Reshape_1(^gradients_1/pow_2_grad/tuple/group_deps*
_output_shapes
: *
T0*3
_class)
'%loc:@gradients_1/pow_2_grad/Reshape_1
n
gradients_1/pow_grad/ShapeShapesub_6^group_deps_1*
out_type0*
_output_shapes
:*
T0
n
gradients_1/pow_grad/Shape_1Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB 
Ї
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
u
gradients_1/pow_grad/mulMulgradients_1/Mean_2_grad/truedivpow/y*#
_output_shapes
:€€€€€€€€€*
T0
n
gradients_1/pow_grad/sub/yConst^group_deps_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
n
gradients_1/pow_grad/PowPowsub_6gradients_1/pow_grad/sub*
T0*#
_output_shapes
:€€€€€€€€€
Г
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:€€€€€€€€€*
T0
І
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Щ
gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
r
gradients_1/pow_grad/Greater/yConst^group_deps_1*
dtype0*
_output_shapes
: *
valueB
 *    
|
gradients_1/pow_grad/GreaterGreatersub_6gradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:€€€€€€€€€
x
$gradients_1/pow_grad/ones_like/ShapeShapesub_6^group_deps_1*
_output_shapes
:*
T0*
out_type0
x
$gradients_1/pow_grad/ones_like/ConstConst^group_deps_1*
dtype0*
valueB
 *  А?*
_output_shapes
: 
≤
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:€€€€€€€€€*
T0
Ш
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_6gradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:€€€€€€€€€*
T0
p
gradients_1/pow_grad/zeros_like	ZerosLikesub_6^group_deps_1*#
_output_shapes
:€€€€€€€€€*
T0
Ѓ
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_2_grad/truedivpow*#
_output_shapes
:€€€€€€€€€*
T0
К
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*#
_output_shapes
:€€€€€€€€€*
T0
Ђ
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Т
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1^group_deps_1
ё
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*
T0
„
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
_output_shapes
: *
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1
p
gradients_1/pow_1_grad/ShapeShapesub_7^group_deps_1*
out_type0*
_output_shapes
:*
T0
p
gradients_1/pow_1_grad/Shape_1Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB 
ј
,gradients_1/pow_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_1_grad/Shapegradients_1/pow_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
y
gradients_1/pow_1_grad/mulMulgradients_1/Mean_3_grad/truedivpow_1/y*#
_output_shapes
:€€€€€€€€€*
T0
p
gradients_1/pow_1_grad/sub/yConst^group_deps_1*
dtype0*
valueB
 *  А?*
_output_shapes
: 
i
gradients_1/pow_1_grad/subSubpow_1/ygradients_1/pow_1_grad/sub/y*
T0*
_output_shapes
: 
r
gradients_1/pow_1_grad/PowPowsub_7gradients_1/pow_1_grad/sub*#
_output_shapes
:€€€€€€€€€*
T0
Й
gradients_1/pow_1_grad/mul_1Mulgradients_1/pow_1_grad/mulgradients_1/pow_1_grad/Pow*
T0*#
_output_shapes
:€€€€€€€€€
≠
gradients_1/pow_1_grad/SumSumgradients_1/pow_1_grad/mul_1,gradients_1/pow_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
Я
gradients_1/pow_1_grad/ReshapeReshapegradients_1/pow_1_grad/Sumgradients_1/pow_1_grad/Shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
t
 gradients_1/pow_1_grad/Greater/yConst^group_deps_1*
_output_shapes
: *
valueB
 *    *
dtype0
А
gradients_1/pow_1_grad/GreaterGreatersub_7 gradients_1/pow_1_grad/Greater/y*#
_output_shapes
:€€€€€€€€€*
T0
z
&gradients_1/pow_1_grad/ones_like/ShapeShapesub_7^group_deps_1*
T0*
out_type0*
_output_shapes
:
z
&gradients_1/pow_1_grad/ones_like/ConstConst^group_deps_1*
_output_shapes
: *
valueB
 *  А?*
dtype0
Є
 gradients_1/pow_1_grad/ones_likeFill&gradients_1/pow_1_grad/ones_like/Shape&gradients_1/pow_1_grad/ones_like/Const*

index_type0*#
_output_shapes
:€€€€€€€€€*
T0
Ю
gradients_1/pow_1_grad/SelectSelectgradients_1/pow_1_grad/Greatersub_7 gradients_1/pow_1_grad/ones_like*#
_output_shapes
:€€€€€€€€€*
T0
n
gradients_1/pow_1_grad/LogLoggradients_1/pow_1_grad/Select*#
_output_shapes
:€€€€€€€€€*
T0
r
!gradients_1/pow_1_grad/zeros_like	ZerosLikesub_7^group_deps_1*#
_output_shapes
:€€€€€€€€€*
T0
ґ
gradients_1/pow_1_grad/Select_1Selectgradients_1/pow_1_grad/Greatergradients_1/pow_1_grad/Log!gradients_1/pow_1_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
y
gradients_1/pow_1_grad/mul_2Mulgradients_1/Mean_3_grad/truedivpow_1*
T0*#
_output_shapes
:€€€€€€€€€
Р
gradients_1/pow_1_grad/mul_3Mulgradients_1/pow_1_grad/mul_2gradients_1/pow_1_grad/Select_1*
T0*#
_output_shapes
:€€€€€€€€€
±
gradients_1/pow_1_grad/Sum_1Sumgradients_1/pow_1_grad/mul_3.gradients_1/pow_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ш
 gradients_1/pow_1_grad/Reshape_1Reshapegradients_1/pow_1_grad/Sum_1gradients_1/pow_1_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
В
'gradients_1/pow_1_grad/tuple/group_depsNoOp^gradients_1/pow_1_grad/Reshape!^gradients_1/pow_1_grad/Reshape_1^group_deps_1
ж
/gradients_1/pow_1_grad/tuple/control_dependencyIdentitygradients_1/pow_1_grad/Reshape(^gradients_1/pow_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/pow_1_grad/Reshape*#
_output_shapes
:€€€€€€€€€*
T0
я
1gradients_1/pow_1_grad/tuple/control_dependency_1Identity gradients_1/pow_1_grad/Reshape_1(^gradients_1/pow_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/pow_1_grad/Reshape_1*
_output_shapes
: *
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
ј
,gradients_1/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_8_grad/Shapegradients_1/sub_8_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ј
gradients_1/sub_8_grad/SumSum/gradients_1/pow_2_grad/tuple/control_dependency,gradients_1/sub_8_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Я
gradients_1/sub_8_grad/ReshapeReshapegradients_1/sub_8_grad/Sumgradients_1/sub_8_grad/Shape*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
ƒ
gradients_1/sub_8_grad/Sum_1Sum/gradients_1/pow_2_grad/tuple/control_dependency.gradients_1/sub_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
b
gradients_1/sub_8_grad/NegNeggradients_1/sub_8_grad/Sum_1*
_output_shapes
:*
T0
£
 gradients_1/sub_8_grad/Reshape_1Reshapegradients_1/sub_8_grad/Neggradients_1/sub_8_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
В
'gradients_1/sub_8_grad/tuple/group_depsNoOp^gradients_1/sub_8_grad/Reshape!^gradients_1/sub_8_grad/Reshape_1^group_deps_1
ж
/gradients_1/sub_8_grad/tuple/control_dependencyIdentitygradients_1/sub_8_grad/Reshape(^gradients_1/sub_8_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*1
_class'
%#loc:@gradients_1/sub_8_grad/Reshape
м
1gradients_1/sub_8_grad/tuple/control_dependency_1Identity gradients_1/sub_8_grad/Reshape_1(^gradients_1/sub_8_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*3
_class)
'%loc:@gradients_1/sub_8_grad/Reshape_1
w
gradients_1/sub_6_grad/ShapeShapeStopGradient^group_deps_1*
out_type0*
T0*
_output_shapes
:
}
gradients_1/sub_6_grad/Shape_1Shapemain/qr1/Squeeze^group_deps_1*
_output_shapes
:*
T0*
out_type0
ј
,gradients_1/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_6_grad/Shapegradients_1/sub_6_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Њ
gradients_1/sub_6_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_6_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
Я
gradients_1/sub_6_grad/ReshapeReshapegradients_1/sub_6_grad/Sumgradients_1/sub_6_grad/Shape*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
¬
gradients_1/sub_6_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency.gradients_1/sub_6_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
b
gradients_1/sub_6_grad/NegNeggradients_1/sub_6_grad/Sum_1*
T0*
_output_shapes
:
£
 gradients_1/sub_6_grad/Reshape_1Reshapegradients_1/sub_6_grad/Neggradients_1/sub_6_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
В
'gradients_1/sub_6_grad/tuple/group_depsNoOp^gradients_1/sub_6_grad/Reshape!^gradients_1/sub_6_grad/Reshape_1^group_deps_1
ж
/gradients_1/sub_6_grad/tuple/control_dependencyIdentitygradients_1/sub_6_grad/Reshape(^gradients_1/sub_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_6_grad/Reshape*
T0*#
_output_shapes
:€€€€€€€€€
м
1gradients_1/sub_6_grad/tuple/control_dependency_1Identity gradients_1/sub_6_grad/Reshape_1(^gradients_1/sub_6_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*3
_class)
'%loc:@gradients_1/sub_6_grad/Reshape_1
w
gradients_1/sub_7_grad/ShapeShapeStopGradient^group_deps_1*
_output_shapes
:*
out_type0*
T0
}
gradients_1/sub_7_grad/Shape_1Shapemain/qr2/Squeeze^group_deps_1*
_output_shapes
:*
T0*
out_type0
ј
,gradients_1/sub_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_7_grad/Shapegradients_1/sub_7_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ј
gradients_1/sub_7_grad/SumSum/gradients_1/pow_1_grad/tuple/control_dependency,gradients_1/sub_7_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Я
gradients_1/sub_7_grad/ReshapeReshapegradients_1/sub_7_grad/Sumgradients_1/sub_7_grad/Shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
ƒ
gradients_1/sub_7_grad/Sum_1Sum/gradients_1/pow_1_grad/tuple/control_dependency.gradients_1/sub_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
b
gradients_1/sub_7_grad/NegNeggradients_1/sub_7_grad/Sum_1*
T0*
_output_shapes
:
£
 gradients_1/sub_7_grad/Reshape_1Reshapegradients_1/sub_7_grad/Neggradients_1/sub_7_grad/Shape_1*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
В
'gradients_1/sub_7_grad/tuple/group_depsNoOp^gradients_1/sub_7_grad/Reshape!^gradients_1/sub_7_grad/Reshape_1^group_deps_1
ж
/gradients_1/sub_7_grad/tuple/control_dependencyIdentitygradients_1/sub_7_grad/Reshape(^gradients_1/sub_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_7_grad/Reshape*#
_output_shapes
:€€€€€€€€€
м
1gradients_1/sub_7_grad/tuple/control_dependency_1Identity gradients_1/sub_7_grad/Reshape_1(^gradients_1/sub_7_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/sub_7_grad/Reshape_1*
T0*#
_output_shapes
:€€€€€€€€€
М
&gradients_1/main/qc/Squeeze_grad/ShapeShapemain/qc/dense_2/BiasAdd^group_deps_1*
_output_shapes
:*
out_type0*
T0
ќ
(gradients_1/main/qc/Squeeze_grad/ReshapeReshape1gradients_1/sub_8_grad/tuple/control_dependency_1&gradients_1/main/qc/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€
О
'gradients_1/main/qr1/Squeeze_grad/ShapeShapemain/qr1/dense_2/BiasAdd^group_deps_1*
T0*
out_type0*
_output_shapes
:
–
)gradients_1/main/qr1/Squeeze_grad/ReshapeReshape1gradients_1/sub_6_grad/tuple/control_dependency_1'gradients_1/main/qr1/Squeeze_grad/Shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
О
'gradients_1/main/qr2/Squeeze_grad/ShapeShapemain/qr2/dense_2/BiasAdd^group_deps_1*
T0*
out_type0*
_output_shapes
:
–
)gradients_1/main/qr2/Squeeze_grad/ReshapeReshape1gradients_1/sub_7_grad/tuple/control_dependency_1'gradients_1/main/qr2/Squeeze_grad/Shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
©
4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/main/qc/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
≤
9gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_depsNoOp)^gradients_1/main/qc/Squeeze_grad/Reshape5^gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
Ґ
Agradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/main/qc/Squeeze_grad/Reshape:^gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/main/qc/Squeeze_grad/Reshape*'
_output_shapes
:€€€€€€€€€*
T0
ѓ
Cgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*G
_class=
;9loc:@gradients_1/main/qc/dense_2/BiasAdd_grad/BiasAddGrad*
T0
Ђ
5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/main/qr1/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
µ
:gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients_1/main/qr1/Squeeze_grad/Reshape6^gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
¶
Bgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/main/qr1/Squeeze_grad/Reshape;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients_1/main/qr1/Squeeze_grad/Reshape*'
_output_shapes
:€€€€€€€€€
≥
Dgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*H
_class>
<:loc:@gradients_1/main/qr1/dense_2/BiasAdd_grad/BiasAddGrad
Ђ
5gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/main/qr2/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
µ
:gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_depsNoOp*^gradients_1/main/qr2/Squeeze_grad/Reshape6^gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad^group_deps_1
¶
Bgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/main/qr2/Squeeze_grad/Reshape;^gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_deps*<
_class2
0.loc:@gradients_1/main/qr2/Squeeze_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
≥
Dgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients_1/main/qr2/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
с
.gradients_1/main/qc/dense_2/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependencymain/qc/dense_2/kernel/read*
transpose_a( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_b(
г
0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1MatMulmain/qc/dense_1/ReluAgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	А*
transpose_b( 
≥
8gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_2/MatMul_grad/MatMul1^gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1^group_deps_1
≠
@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_2/MatMul_grad/MatMul9^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
™
Bgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_2/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_2/MatMul_grad/tuple/group_deps*C
_class9
75loc:@gradients_1/main/qc/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А
ф
/gradients_1/main/qr1/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_2/kernel/read*
transpose_b(*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
T0
ж
1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1MatMulmain/qr1/dense_1/ReluBgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes
:	А*
transpose_b( 
ґ
9gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1^group_deps_1
±
Agradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
Ѓ
Cgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	А*
T0*D
_class:
86loc:@gradients_1/main/qr1/dense_2/MatMul_grad/MatMul_1
ф
/gradients_1/main/qr2/dense_2/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_2/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:€€€€€€€€€А
ж
1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1MatMulmain/qr2/dense_1/ReluBgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
_output_shapes
:	А*
transpose_a(
ґ
9gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1^group_deps_1
±
Agradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_2/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
Ѓ
Cgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients_1/main/qr2/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	А
≈
.gradients_1/main/qc/dense_1/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependencymain/qc/dense_1/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
»
/gradients_1/main/qr1/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependencymain/qr1/dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
»
/gradients_1/main/qr2/dense_1/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependencymain/qr2/dense_1/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
∞
4gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.gradients_1/main/qc/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А*
data_formatNHWC
Є
9gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad/^gradients_1/main/qc/dense_1/Relu_grad/ReluGrad^group_deps_1
ѓ
Agradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/Relu_grad/ReluGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*A
_class7
53loc:@gradients_1/main/qc/dense_1/Relu_grad/ReluGrad
∞
Cgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad:^gradients_1/main/qc/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*G
_class=
;9loc:@gradients_1/main/qc/dense_1/BiasAdd_grad/BiasAddGrad
≤
5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
ї
:gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad0^gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad^group_deps_1
≥
Bgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad;^gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients_1/main/qr1/dense_1/Relu_grad/ReluGrad*
T0
і
Dgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/main/qr1/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
≤
5gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
ї
:gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_depsNoOp6^gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad0^gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad^group_deps_1
≥
Bgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad;^gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients_1/main/qr2/dense_1/Relu_grad/ReluGrad*
T0*(
_output_shapes
:€€€€€€€€€А
і
Dgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity5gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad;^gradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*H
_class>
<:loc:@gradients_1/main/qr2/dense_1/BiasAdd_grad/BiasAddGrad*
T0
с
.gradients_1/main/qc/dense_1/MatMul_grad/MatMulMatMulAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependencymain/qc/dense_1/kernel/read*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€А*
transpose_b(
в
0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1MatMulmain/qc/dense/ReluAgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( * 
_output_shapes
:
АА*
transpose_a(
≥
8gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_depsNoOp/^gradients_1/main/qc/dense_1/MatMul_grad/MatMul1^gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1^group_deps_1
≠
@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/main/qc/dense_1/MatMul_grad/MatMul9^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*A
_class7
53loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul*
T0
Ђ
Bgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/main/qc/dense_1/MatMul_grad/MatMul_19^gradients_1/main/qc/dense_1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
АА*C
_class9
75loc:@gradients_1/main/qc/dense_1/MatMul_grad/MatMul_1*
T0
ф
/gradients_1/main/qr1/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr1/dense_1/kernel/read*
transpose_b(*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( 
е
1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1MatMulmain/qr1/dense/ReluBgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( * 
_output_shapes
:
АА*
T0
ґ
9gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1^group_deps_1
±
Agradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr1/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*B
_class8
64loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul
ѓ
Cgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr1/dense_1/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients_1/main/qr1/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
ф
/gradients_1/main/qr2/dense_1/MatMul_grad/MatMulMatMulBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependencymain/qr2/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:€€€€€€€€€А
е
1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1MatMulmain/qr2/dense/ReluBgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
АА*
T0*
transpose_b( 
ґ
9gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_depsNoOp0^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul2^gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1^group_deps_1
±
Agradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencyIdentity/gradients_1/main/qr2/dense_1/MatMul_grad/MatMul:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*B
_class8
64loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul
ѓ
Cgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Identity1gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1:^gradients_1/main/qr2/dense_1/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients_1/main/qr2/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
Ѕ
,gradients_1/main/qc/dense/Relu_grad/ReluGradReluGrad@gradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependencymain/qc/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
-gradients_1/main/qr1/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependencymain/qr1/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
ƒ
-gradients_1/main/qr2/dense/Relu_grad/ReluGradReluGradAgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependencymain/qr2/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
ђ
2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients_1/main/qc/dense/Relu_grad/ReluGrad*
_output_shapes	
:А*
data_formatNHWC*
T0
≤
7gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad-^gradients_1/main/qc/dense/Relu_grad/ReluGrad^group_deps_1
І
?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/Relu_grad/ReluGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*?
_class5
31loc:@gradients_1/main/qc/dense/Relu_grad/ReluGrad*
T0
®
Agradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Identity2gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad8^gradients_1/main/qc/dense/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients_1/main/qc/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А*
T0
Ѓ
3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr1/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
µ
8gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr1/dense/Relu_grad/ReluGrad^group_deps_1
Ђ
@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/Relu_grad/ReluGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients_1/main/qr1/dense/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А
ђ
Bgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr1/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients_1/main/qr1/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Ѓ
3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients_1/main/qr2/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
µ
8gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_depsNoOp4^gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad.^gradients_1/main/qr2/dense/Relu_grad/ReluGrad^group_deps_1
Ђ
@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/Relu_grad/ReluGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients_1/main/qr2/dense/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А*
T0
ђ
Bgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Identity3gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad9^gradients_1/main/qr2/dense/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients_1/main/qr2/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
к
,gradients_1/main/qc/dense/MatMul_grad/MatMulMatMul?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependencymain/qc/dense/kernel/read*
T0*'
_output_shapes
:€€€€€€€€€>*
transpose_a( *
transpose_b(
ў
.gradients_1/main/qc/dense/MatMul_grad/MatMul_1MatMulmain/qc/concat?gradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>А*
T0*
transpose_a(*
transpose_b( 
≠
6gradients_1/main/qc/dense/MatMul_grad/tuple/group_depsNoOp-^gradients_1/main/qc/dense/MatMul_grad/MatMul/^gradients_1/main/qc/dense/MatMul_grad/MatMul_1^group_deps_1
§
>gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependencyIdentity,gradients_1/main/qc/dense/MatMul_grad/MatMul7^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul*
T0*'
_output_shapes
:€€€€€€€€€>
Ґ
@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Identity.gradients_1/main/qc/dense/MatMul_grad/MatMul_17^gradients_1/main/qc/dense/MatMul_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/main/qc/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	>А
н
-gradients_1/main/qr1/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependencymain/qr1/dense/kernel/read*'
_output_shapes
:€€€€€€€€€>*
T0*
transpose_a( *
transpose_b(
№
/gradients_1/main/qr1/dense/MatMul_grad/MatMul_1MatMulmain/qr1/concat@gradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	>А
∞
7gradients_1/main/qr1/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr1/dense/MatMul_grad/MatMul0^gradients_1/main/qr1/dense/MatMul_grad/MatMul_1^group_deps_1
®
?gradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr1/dense/MatMul_grad/MatMul8^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€>*@
_class6
42loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul*
T0
¶
Agradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr1/dense/MatMul_grad/MatMul_18^gradients_1/main/qr1/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	>А*B
_class8
64loc:@gradients_1/main/qr1/dense/MatMul_grad/MatMul_1
н
-gradients_1/main/qr2/dense/MatMul_grad/MatMulMatMul@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependencymain/qr2/dense/kernel/read*
transpose_a( *
T0*'
_output_shapes
:€€€€€€€€€>*
transpose_b(
№
/gradients_1/main/qr2/dense/MatMul_grad/MatMul_1MatMulmain/qr2/concat@gradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	>А*
T0*
transpose_a(*
transpose_b( 
∞
7gradients_1/main/qr2/dense/MatMul_grad/tuple/group_depsNoOp.^gradients_1/main/qr2/dense/MatMul_grad/MatMul0^gradients_1/main/qr2/dense/MatMul_grad/MatMul_1^group_deps_1
®
?gradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependencyIdentity-gradients_1/main/qr2/dense/MatMul_grad/MatMul8^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€>
¶
Agradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Identity/gradients_1/main/qr2/dense/MatMul_grad/MatMul_18^gradients_1/main/qr2/dense/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/main/qr2/dense/MatMul_grad/MatMul_1*
_output_shapes
:	>А
r
Reshape_32/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
Ю

Reshape_32ReshapeAgradients_1/main/qr1/dense/MatMul_grad/tuple/control_dependency_1Reshape_32/shape*
T0*
Tshape0*
_output_shapes	
:А|
r
Reshape_33/shapeConst^group_deps_1*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
Я

Reshape_33ReshapeBgradients_1/main/qr1/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_33/shape*
T0*
Tshape0*
_output_shapes	
:А
r
Reshape_34/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
°

Reshape_34ReshapeCgradients_1/main/qr1/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_34/shape*
_output_shapes

:АА*
Tshape0*
T0
r
Reshape_35/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
°

Reshape_35ReshapeDgradients_1/main/qr1/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_35/shape*
T0*
_output_shapes	
:А*
Tshape0
r
Reshape_36/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
†

Reshape_36ReshapeCgradients_1/main/qr1/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_36/shape*
T0*
_output_shapes	
:А*
Tshape0
r
Reshape_37/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
†

Reshape_37ReshapeDgradients_1/main/qr1/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_37/shape*
T0*
Tshape0*
_output_shapes
:
r
Reshape_38/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ю

Reshape_38ReshapeAgradients_1/main/qr2/dense/MatMul_grad/tuple/control_dependency_1Reshape_38/shape*
_output_shapes	
:А|*
Tshape0*
T0
r
Reshape_39/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Я

Reshape_39ReshapeBgradients_1/main/qr2/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_39/shape*
Tshape0*
_output_shapes	
:А*
T0
r
Reshape_40/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
°

Reshape_40ReshapeCgradients_1/main/qr2/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_40/shape*
_output_shapes

:АА*
Tshape0*
T0
r
Reshape_41/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
°

Reshape_41ReshapeDgradients_1/main/qr2/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_41/shape*
T0*
_output_shapes	
:А*
Tshape0
r
Reshape_42/shapeConst^group_deps_1*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
†

Reshape_42ReshapeCgradients_1/main/qr2/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_42/shape*
_output_shapes	
:А*
T0*
Tshape0
r
Reshape_43/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
†

Reshape_43ReshapeDgradients_1/main/qr2/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_43/shape*
Tshape0*
T0*
_output_shapes
:
r
Reshape_44/shapeConst^group_deps_1*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
Э

Reshape_44Reshape@gradients_1/main/qc/dense/MatMul_grad/tuple/control_dependency_1Reshape_44/shape*
_output_shapes	
:А|*
Tshape0*
T0
r
Reshape_45/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ю

Reshape_45ReshapeAgradients_1/main/qc/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_45/shape*
T0*
_output_shapes	
:А*
Tshape0
r
Reshape_46/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
†

Reshape_46ReshapeBgradients_1/main/qc/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_46/shape*
T0*
_output_shapes

:АА*
Tshape0
r
Reshape_47/shapeConst^group_deps_1*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
†

Reshape_47ReshapeCgradients_1/main/qc/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_47/shape*
_output_shapes	
:А*
Tshape0*
T0
r
Reshape_48/shapeConst^group_deps_1*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Я

Reshape_48ReshapeBgradients_1/main/qc/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_48/shape*
T0*
Tshape0*
_output_shapes	
:А
r
Reshape_49/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
Я

Reshape_49ReshapeCgradients_1/main/qc/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_49/shape*
T0*
_output_shapes
:*
Tshape0
^
concat_2/axisConst^group_deps_1*
_output_shapes
: *
value	B : *
dtype0
Ј
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
Reshape_49concat_2/axis*

Tidx0*
N*
T0*
_output_shapes

:ГЖ
l
PyFunc_2PyFuncconcat_2*
_output_shapes

:ГЖ*
Tout
2*
Tin
2*
token
pyfunc_2
®
Const_10Const^group_deps_1*
dtype0*]
valueTBR"H >                  >                  >                 *
_output_shapes
:
b
split_2/split_dimConst^group_deps_1*
dtype0*
value	B : *
_output_shapes
: 
ф
split_2SplitVPyFunc_2Const_10split_2/split_dim*
	num_split*У
_output_shapesА
~:А|:А:АА:А:А::А|:А:АА:А:А::А|:А:АА:А:А:*
T0*

Tlen0
p
Reshape_50/shapeConst^group_deps_1*
_output_shapes
:*
valueB">      *
dtype0
h

Reshape_50Reshapesplit_2Reshape_50/shape*
Tshape0*
_output_shapes
:	>А*
T0
j
Reshape_51/shapeConst^group_deps_1*
valueB:А*
dtype0*
_output_shapes
:
f

Reshape_51Reshape	split_2:1Reshape_51/shape*
_output_shapes	
:А*
Tshape0*
T0
p
Reshape_52/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_52Reshape	split_2:2Reshape_52/shape*
T0* 
_output_shapes
:
АА*
Tshape0
j
Reshape_53/shapeConst^group_deps_1*
valueB:А*
dtype0*
_output_shapes
:
f

Reshape_53Reshape	split_2:3Reshape_53/shape*
T0*
_output_shapes	
:А*
Tshape0
p
Reshape_54/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB"      
j

Reshape_54Reshape	split_2:4Reshape_54/shape*
Tshape0*
T0*
_output_shapes
:	А
i
Reshape_55/shapeConst^group_deps_1*
_output_shapes
:*
dtype0*
valueB:
e

Reshape_55Reshape	split_2:5Reshape_55/shape*
Tshape0*
T0*
_output_shapes
:
p
Reshape_56/shapeConst^group_deps_1*
_output_shapes
:*
valueB">      *
dtype0
j

Reshape_56Reshape	split_2:6Reshape_56/shape*
Tshape0*
_output_shapes
:	>А*
T0
j
Reshape_57/shapeConst^group_deps_1*
valueB:А*
_output_shapes
:*
dtype0
f

Reshape_57Reshape	split_2:7Reshape_57/shape*
Tshape0*
T0*
_output_shapes	
:А
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
АА
j
Reshape_59/shapeConst^group_deps_1*
dtype0*
_output_shapes
:*
valueB:А
f

Reshape_59Reshape	split_2:9Reshape_59/shape*
_output_shapes	
:А*
T0*
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
Tshape0*
T0*
_output_shapes
:	А
i
Reshape_61/shapeConst^group_deps_1*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_61Reshape
split_2:11Reshape_61/shape*
_output_shapes
:*
Tshape0*
T0
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
:	>А*
T0
j
Reshape_63/shapeConst^group_deps_1*
_output_shapes
:*
valueB:А*
dtype0
g

Reshape_63Reshape
split_2:13Reshape_63/shape*
_output_shapes	
:А*
T0*
Tshape0
p
Reshape_64/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
l

Reshape_64Reshape
split_2:14Reshape_64/shape* 
_output_shapes
:
АА*
T0*
Tshape0
j
Reshape_65/shapeConst^group_deps_1*
valueB:А*
dtype0*
_output_shapes
:
g

Reshape_65Reshape
split_2:15Reshape_65/shape*
_output_shapes	
:А*
Tshape0*
T0
p
Reshape_66/shapeConst^group_deps_1*
valueB"      *
_output_shapes
:*
dtype0
k

Reshape_66Reshape
split_2:16Reshape_66/shape*
_output_shapes
:	А*
Tshape0*
T0
i
Reshape_67/shapeConst^group_deps_1*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_67Reshape
split_2:17Reshape_67/shape*
Tshape0*
_output_shapes
:*
T0
З
beta1_power_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*%
_class
loc:@main/qc/dense/bias
Ш
beta1_power_1
VariableV2*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
dtype0*
	container *
shape: *
shared_name 
ї
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*%
_class
loc:@main/qc/dense/bias
u
beta1_power_1/readIdentitybeta1_power_1*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: 
З
beta2_power_1/initial_valueConst*
valueB
 *wЊ?*%
_class
loc:@main/qc/dense/bias*
dtype0*
_output_shapes
: 
Ш
beta2_power_1
VariableV2*
shared_name *%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
dtype0*
	container *
shape: 
ї
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
u
beta2_power_1/readIdentitybeta2_power_1*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0
Ј
<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:*
valueB">      
°
2main/qr1/dense/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *(
_class
loc:@main/qr1/dense/kernel*
dtype0
М
,main/qr1/dense/kernel/Adam/Initializer/zerosFill<main/qr1/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr1/dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel
Ї
main/qr1/dense/kernel/Adam
VariableV2*
shared_name *
_output_shapes
:	>А*
	container *
dtype0*
shape:	>А*(
_class
loc:@main/qr1/dense/kernel
т
!main/qr1/dense/kernel/Adam/AssignAssignmain/qr1/dense/kernel/Adam,main/qr1/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
T0*
use_locking(
Ы
main/qr1/dense/kernel/Adam/readIdentitymain/qr1/dense/kernel/Adam*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
T0
є
>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@main/qr1/dense/kernel*
valueB">      *
dtype0*
_output_shapes
:
£
4main/qr1/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
: *
valueB
 *    
Т
.main/qr1/dense/kernel/Adam_1/Initializer/zerosFill>main/qr1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr1/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А
Љ
main/qr1/dense/kernel/Adam_1
VariableV2*
shared_name *
_output_shapes
:	>А*
dtype0*
	container *
shape:	>А*(
_class
loc:@main/qr1/dense/kernel
ш
#main/qr1/dense/kernel/Adam_1/AssignAssignmain/qr1/dense/kernel/Adam_1.main/qr1/dense/kernel/Adam_1/Initializer/zeros*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
T0*
use_locking(*
validate_shape(
Я
!main/qr1/dense/kernel/Adam_1/readIdentitymain/qr1/dense/kernel/Adam_1*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr1/dense/kernel
°
*main/qr1/dense/bias/Adam/Initializer/zerosConst*&
_class
loc:@main/qr1/dense/bias*
valueBА*    *
_output_shapes	
:А*
dtype0
Ѓ
main/qr1/dense/bias/Adam
VariableV2*&
_class
loc:@main/qr1/dense/bias*
dtype0*
_output_shapes	
:А*
	container *
shape:А*
shared_name 
ж
main/qr1/dense/bias/Adam/AssignAssignmain/qr1/dense/bias/Adam*main/qr1/dense/bias/Adam/Initializer/zeros*
T0*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
use_locking(*
_output_shapes	
:А
С
main/qr1/dense/bias/Adam/readIdentitymain/qr1/dense/bias/Adam*
T0*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
£
,main/qr1/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias*
valueBА*    *
dtype0
∞
main/qr1/dense/bias/Adam_1
VariableV2*
shared_name *
	container *
dtype0*&
_class
loc:@main/qr1/dense/bias*
shape:А*
_output_shapes	
:А
м
!main/qr1/dense/bias/Adam_1/AssignAssignmain/qr1/dense/bias/Adam_1,main/qr1/dense/bias/Adam_1/Initializer/zeros*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
Х
main/qr1/dense/bias/Adam_1/readIdentitymain/qr1/dense/bias/Adam_1*
T0*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
ї
>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      **
_class 
loc:@main/qr1/dense_1/kernel
•
4main/qr1/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0**
_class 
loc:@main/qr1/dense_1/kernel
Х
.main/qr1/dense_1/kernel/Adam/Initializer/zerosFill>main/qr1/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr1/dense_1/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
АА*
T0*

index_type0**
_class 
loc:@main/qr1/dense_1/kernel
ј
main/qr1/dense_1/kernel/Adam
VariableV2*
shared_name *
dtype0*
	container **
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
shape:
АА
ы
#main/qr1/dense_1/kernel/Adam/AssignAssignmain/qr1/dense_1/kernel/Adam.main/qr1/dense_1/kernel/Adam/Initializer/zeros*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
АА
Ґ
!main/qr1/dense_1/kernel/Adam/readIdentitymain/qr1/dense_1/kernel/Adam*
T0**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА
љ
@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0**
_class 
loc:@main/qr1/dense_1/kernel*
valueB"      
І
6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0
Ы
0main/qr1/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr1/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0**
_class 
loc:@main/qr1/dense_1/kernel*

index_type0* 
_output_shapes
:
АА
¬
main/qr1/dense_1/kernel/Adam_1
VariableV2* 
_output_shapes
:
АА*
shared_name **
_class 
loc:@main/qr1/dense_1/kernel*
dtype0*
shape:
АА*
	container 
Б
%main/qr1/dense_1/kernel/Adam_1/AssignAssignmain/qr1/dense_1/kernel/Adam_10main/qr1/dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(*
T0
¶
#main/qr1/dense_1/kernel/Adam_1/readIdentitymain/qr1/dense_1/kernel/Adam_1*
T0* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel
•
,main/qr1/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
valueBА*    *(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:А
≤
main/qr1/dense_1/bias/Adam
VariableV2*(
_class
loc:@main/qr1/dense_1/bias*
	container *
shared_name *
dtype0*
_output_shapes	
:А*
shape:А
о
!main/qr1/dense_1/bias/Adam/AssignAssignmain/qr1/dense_1/bias/Adam,main/qr1/dense_1/bias/Adam/Initializer/zeros*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:А
Ч
main/qr1/dense_1/bias/Adam/readIdentitymain/qr1/dense_1/bias/Adam*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:А*
T0
І
.main/qr1/dense_1/bias/Adam_1/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_1/bias*
dtype0*
_output_shapes	
:А*
valueBА*    
і
main/qr1/dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
_output_shapes	
:А*
shape:А*(
_class
loc:@main/qr1/dense_1/bias
ф
#main/qr1/dense_1/bias/Adam_1/AssignAssignmain/qr1/dense_1/bias/Adam_1.main/qr1/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
T0*
use_locking(*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias
Ы
!main/qr1/dense_1/bias/Adam_1/readIdentitymain/qr1/dense_1/bias/Adam_1*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
T0
±
.main/qr1/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	А*
dtype0*
valueB	А*    **
_class 
loc:@main/qr1/dense_2/kernel
Њ
main/qr1/dense_2/kernel/Adam
VariableV2**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
	container *
shared_name *
shape:	А*
dtype0
ъ
#main/qr1/dense_2/kernel/Adam/AssignAssignmain/qr1/dense_2/kernel/Adam.main/qr1/dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_2/kernel
°
!main/qr1/dense_2/kernel/Adam/readIdentitymain/qr1/dense_2/kernel/Adam*
T0*
_output_shapes
:	А**
_class 
loc:@main/qr1/dense_2/kernel
≥
0main/qr1/dense_2/kernel/Adam_1/Initializer/zerosConst**
_class 
loc:@main/qr1/dense_2/kernel*
dtype0*
valueB	А*    *
_output_shapes
:	А
ј
main/qr1/dense_2/kernel/Adam_1
VariableV2*
dtype0*
	container *
shared_name *
shape:	А**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А
А
%main/qr1/dense_2/kernel/Adam_1/AssignAssignmain/qr1/dense_2/kernel/Adam_10main/qr1/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
T0
•
#main/qr1/dense_2/kernel/Adam_1/readIdentitymain/qr1/dense_2/kernel/Adam_1**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	А
£
,main/qr1/dense_2/bias/Adam/Initializer/zerosConst*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
dtype0*
valueB*    
∞
main/qr1/dense_2/bias/Adam
VariableV2*
	container *
shape:*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
dtype0*
shared_name 
н
!main/qr1/dense_2/bias/Adam/AssignAssignmain/qr1/dense_2/bias/Adam,main/qr1/dense_2/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:
Ц
main/qr1/dense_2/bias/Adam/readIdentitymain/qr1/dense_2/bias/Adam*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
T0
•
.main/qr1/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias
≤
main/qr1/dense_2/bias/Adam_1
VariableV2*
_output_shapes
:*
dtype0*(
_class
loc:@main/qr1/dense_2/bias*
	container *
shape:*
shared_name 
у
#main/qr1/dense_2/bias/Adam_1/AssignAssignmain/qr1/dense_2/bias/Adam_1.main/qr1/dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(
Ъ
!main/qr1/dense_2/bias/Adam_1/readIdentitymain/qr1/dense_2/bias/Adam_1*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias
Ј
<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@main/qr2/dense/kernel*
dtype0*
valueB">      *
_output_shapes
:
°
2main/qr2/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *(
_class
loc:@main/qr2/dense/kernel
М
,main/qr2/dense/kernel/Adam/Initializer/zerosFill<main/qr2/dense/kernel/Adam/Initializer/zeros/shape_as_tensor2main/qr2/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr2/dense/kernel*

index_type0
Ї
main/qr2/dense/kernel/Adam
VariableV2*
_output_shapes
:	>А*
	container *
shared_name *(
_class
loc:@main/qr2/dense/kernel*
dtype0*
shape:	>А
т
!main/qr2/dense/kernel/Adam/AssignAssignmain/qr2/dense/kernel/Adam,main/qr2/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(
Ы
main/qr2/dense/kernel/Adam/readIdentitymain/qr2/dense/kernel/Adam*(
_class
loc:@main/qr2/dense/kernel*
T0*
_output_shapes
:	>А
є
>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB">      *(
_class
loc:@main/qr2/dense/kernel
£
4main/qr2/dense/kernel/Adam_1/Initializer/zeros/ConstConst*(
_class
loc:@main/qr2/dense/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 
Т
.main/qr2/dense/kernel/Adam_1/Initializer/zerosFill>main/qr2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor4main/qr2/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*

index_type0
Љ
main/qr2/dense/kernel/Adam_1
VariableV2*
	container *
shape:	>А*
shared_name *(
_class
loc:@main/qr2/dense/kernel*
dtype0*
_output_shapes
:	>А
ш
#main/qr2/dense/kernel/Adam_1/AssignAssignmain/qr2/dense/kernel/Adam_1.main/qr2/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	>А*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
use_locking(
Я
!main/qr2/dense/kernel/Adam_1/readIdentitymain/qr2/dense/kernel/Adam_1*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel
°
*main/qr2/dense/bias/Adam/Initializer/zerosConst*
valueBА*    *
dtype0*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:А
Ѓ
main/qr2/dense/bias/Adam
VariableV2*
	container *
_output_shapes	
:А*
shared_name *
shape:А*
dtype0*&
_class
loc:@main/qr2/dense/bias
ж
main/qr2/dense/bias/Adam/AssignAssignmain/qr2/dense/bias/Adam*main/qr2/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias*
T0*
use_locking(
С
main/qr2/dense/bias/Adam/readIdentitymain/qr2/dense/bias/Adam*
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias*
T0
£
,main/qr2/dense/bias/Adam_1/Initializer/zerosConst*
valueBА*    *&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:А*
dtype0
∞
main/qr2/dense/bias/Adam_1
VariableV2*
_output_shapes	
:А*
shared_name *
dtype0*
	container *
shape:А*&
_class
loc:@main/qr2/dense/bias
м
!main/qr2/dense/bias/Adam_1/AssignAssignmain/qr2/dense/bias/Adam_1,main/qr2/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(*&
_class
loc:@main/qr2/dense/bias
Х
main/qr2/dense/bias/Adam_1/readIdentitymain/qr2/dense/bias/Adam_1*&
_class
loc:@main/qr2/dense/bias*
T0*
_output_shapes	
:А
ї
>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      **
_class 
loc:@main/qr2/dense_1/kernel*
_output_shapes
:*
dtype0
•
4main/qr2/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: **
_class 
loc:@main/qr2/dense_1/kernel
Х
.main/qr2/dense_1/kernel/Adam/Initializer/zerosFill>main/qr2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor4main/qr2/dense_1/kernel/Adam/Initializer/zeros/Const**
_class 
loc:@main/qr2/dense_1/kernel*

index_type0*
T0* 
_output_shapes
:
АА
ј
main/qr2/dense_1/kernel/Adam
VariableV2*
	container **
_class 
loc:@main/qr2/dense_1/kernel*
shape:
АА*
shared_name *
dtype0* 
_output_shapes
:
АА
ы
#main/qr2/dense_1/kernel/Adam/AssignAssignmain/qr2/dense_1/kernel/Adam.main/qr2/dense_1/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
T0
Ґ
!main/qr2/dense_1/kernel/Adam/readIdentitymain/qr2/dense_1/kernel/Adam*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА
љ
@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
valueB"      
І
6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst**
_class 
loc:@main/qr2/dense_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
0main/qr2/dense_1/kernel/Adam_1/Initializer/zerosFill@main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor6main/qr2/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА
¬
main/qr2/dense_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name * 
_output_shapes
:
АА*
	container *
shape:
АА**
_class 
loc:@main/qr2/dense_1/kernel
Б
%main/qr2/dense_1/kernel/Adam_1/AssignAssignmain/qr2/dense_1/kernel/Adam_10main/qr2/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА*
validate_shape(
¶
#main/qr2/dense_1/kernel/Adam_1/readIdentitymain/qr2/dense_1/kernel/Adam_1*
T0* 
_output_shapes
:
АА**
_class 
loc:@main/qr2/dense_1/kernel
•
,main/qr2/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *(
_class
loc:@main/qr2/dense_1/bias*
dtype0
≤
main/qr2/dense_1/bias/Adam
VariableV2*
shared_name *
_output_shapes	
:А*
dtype0*
shape:А*(
_class
loc:@main/qr2/dense_1/bias*
	container 
о
!main/qr2/dense_1/bias/Adam/AssignAssignmain/qr2/dense_1/bias/Adam,main/qr2/dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А
Ч
main/qr2/dense_1/bias/Adam/readIdentitymain/qr2/dense_1/bias/Adam*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А*
T0
І
.main/qr2/dense_1/bias/Adam_1/Initializer/zerosConst*
dtype0*(
_class
loc:@main/qr2/dense_1/bias*
valueBА*    *
_output_shapes	
:А
і
main/qr2/dense_1/bias/Adam_1
VariableV2*
shape:А*
	container *
shared_name *
dtype0*
_output_shapes	
:А*(
_class
loc:@main/qr2/dense_1/bias
ф
#main/qr2/dense_1/bias/Adam_1/AssignAssignmain/qr2/dense_1/bias/Adam_1.main/qr2/dense_1/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias
Ы
!main/qr2/dense_1/bias/Adam_1/readIdentitymain/qr2/dense_1/bias/Adam_1*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr2/dense_1/bias
±
.main/qr2/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	А*
dtype0*
valueB	А*    **
_class 
loc:@main/qr2/dense_2/kernel
Њ
main/qr2/dense_2/kernel/Adam
VariableV2*
dtype0**
_class 
loc:@main/qr2/dense_2/kernel*
	container *
_output_shapes
:	А*
shape:	А*
shared_name 
ъ
#main/qr2/dense_2/kernel/Adam/AssignAssignmain/qr2/dense_2/kernel/Adam.main/qr2/dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
_output_shapes
:	А
°
!main/qr2/dense_2/kernel/Adam/readIdentitymain/qr2/dense_2/kernel/Adam**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А*
T0
≥
0main/qr2/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	А*
valueB	А*    **
_class 
loc:@main/qr2/dense_2/kernel*
dtype0
ј
main/qr2/dense_2/kernel/Adam_1
VariableV2*
_output_shapes
:	А*
dtype0**
_class 
loc:@main/qr2/dense_2/kernel*
	container *
shared_name *
shape:	А
А
%main/qr2/dense_2/kernel/Adam_1/AssignAssignmain/qr2/dense_2/kernel/Adam_10main/qr2/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А
•
#main/qr2/dense_2/kernel/Adam_1/readIdentitymain/qr2/dense_2/kernel/Adam_1**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А*
T0
£
,main/qr2/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
valueB*    
∞
main/qr2/dense_2/bias/Adam
VariableV2*
shape:*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
	container *
dtype0*
shared_name 
н
!main/qr2/dense_2/bias/Adam/AssignAssignmain/qr2/dense_2/bias/Adam,main/qr2/dense_2/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
validate_shape(
Ц
main/qr2/dense_2/bias/Adam/readIdentitymain/qr2/dense_2/bias/Adam*
T0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias
•
.main/qr2/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
dtype0*(
_class
loc:@main/qr2/dense_2/bias*
valueB*    
≤
main/qr2/dense_2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
	container 
у
#main/qr2/dense_2/bias/Adam_1/AssignAssignmain/qr2/dense_2/bias/Adam_1.main/qr2/dense_2/bias/Adam_1/Initializer/zeros*(
_class
loc:@main/qr2/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
Ъ
!main/qr2/dense_2/bias/Adam_1/readIdentitymain/qr2/dense_2/bias/Adam_1*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:*
T0
µ
;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*'
_class
loc:@main/qc/dense/kernel*
valueB">      
Я
1main/qc/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel
И
+main/qc/dense/kernel/Adam/Initializer/zerosFill;main/qc/dense/kernel/Adam/Initializer/zeros/shape_as_tensor1main/qc/dense/kernel/Adam/Initializer/zeros/Const*'
_class
loc:@main/qc/dense/kernel*

index_type0*
T0*
_output_shapes
:	>А
Є
main/qc/dense/kernel/Adam
VariableV2*'
_class
loc:@main/qc/dense/kernel*
dtype0*
shared_name *
shape:	>А*
	container *
_output_shapes
:	>А
о
 main/qc/dense/kernel/Adam/AssignAssignmain/qc/dense/kernel/Adam+main/qc/dense/kernel/Adam/Initializer/zeros*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	>А*
T0
Ш
main/qc/dense/kernel/Adam/readIdentitymain/qc/dense/kernel/Adam*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>А
Ј
=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB">      *
dtype0*'
_class
loc:@main/qc/dense/kernel
°
3main/qc/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *'
_class
loc:@main/qc/dense/kernel*
valueB
 *    
О
-main/qc/dense/kernel/Adam_1/Initializer/zerosFill=main/qc/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor3main/qc/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel*
T0*

index_type0
Ї
main/qc/dense/kernel/Adam_1
VariableV2*'
_class
loc:@main/qc/dense/kernel*
dtype0*
_output_shapes
:	>А*
shared_name *
shape:	>А*
	container 
ф
"main/qc/dense/kernel/Adam_1/AssignAssignmain/qc/dense/kernel/Adam_1-main/qc/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel
Ь
 main/qc/dense/kernel/Adam_1/readIdentitymain/qc/dense/kernel/Adam_1*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>А*
T0
Я
)main/qc/dense/bias/Adam/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*
valueBА*    *%
_class
loc:@main/qc/dense/bias
ђ
main/qc/dense/bias/Adam
VariableV2*%
_class
loc:@main/qc/dense/bias*
	container *
shared_name *
shape:А*
dtype0*
_output_shapes	
:А
в
main/qc/dense/bias/Adam/AssignAssignmain/qc/dense/bias/Adam)main/qc/dense/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
T0
О
main/qc/dense/bias/Adam/readIdentitymain/qc/dense/bias/Adam*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
T0
°
+main/qc/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
dtype0*
valueBА*    
Ѓ
main/qc/dense/bias/Adam_1
VariableV2*%
_class
loc:@main/qc/dense/bias*
shared_name *
shape:А*
dtype0*
_output_shapes	
:А*
	container 
и
 main/qc/dense/bias/Adam_1/AssignAssignmain/qc/dense/bias/Adam_1+main/qc/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0*
_output_shapes	
:А
Т
main/qc/dense/bias/Adam_1/readIdentitymain/qc/dense/bias/Adam_1*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А
є
=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*)
_class
loc:@main/qc/dense_1/kernel*
valueB"      *
dtype0
£
3main/qc/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *)
_class
loc:@main/qc/dense_1/kernel
С
-main/qc/dense_1/kernel/Adam/Initializer/zerosFill=main/qc/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor3main/qc/dense_1/kernel/Adam/Initializer/zeros/Const*

index_type0* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel*
T0
Њ
main/qc/dense_1/kernel/Adam
VariableV2*
shape:
АА*)
_class
loc:@main/qc/dense_1/kernel*
	container * 
_output_shapes
:
АА*
dtype0*
shared_name 
ч
"main/qc/dense_1/kernel/Adam/AssignAssignmain/qc/dense_1/kernel/Adam-main/qc/dense_1/kernel/Adam/Initializer/zeros*)
_class
loc:@main/qc/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(
Я
 main/qc/dense_1/kernel/Adam/readIdentitymain/qc/dense_1/kernel/Adam* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel*
T0
ї
?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@main/qc/dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
•
5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@main/qc/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
/main/qc/dense_1/kernel/Adam_1/Initializer/zerosFill?main/qc/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor5main/qc/dense_1/kernel/Adam_1/Initializer/zeros/Const*

index_type0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
T0
ј
main/qc/dense_1/kernel/Adam_1
VariableV2*
shape:
АА*
	container *
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@main/qc/dense_1/kernel
э
$main/qc/dense_1/kernel/Adam_1/AssignAssignmain/qc/dense_1/kernel/Adam_1/main/qc/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА
£
"main/qc/dense_1/kernel/Adam_1/readIdentitymain/qc/dense_1/kernel/Adam_1*
T0* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel
£
+main/qc/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *'
_class
loc:@main/qc/dense_1/bias*
dtype0
∞
main/qc/dense_1/bias/Adam
VariableV2*
shape:А*
shared_name *
dtype0*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
	container 
к
 main/qc/dense_1/bias/Adam/AssignAssignmain/qc/dense_1/bias/Adam+main/qc/dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias*
T0*
use_locking(
Ф
main/qc/dense_1/bias/Adam/readIdentitymain/qc/dense_1/bias/Adam*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias*
T0
•
-main/qc/dense_1/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@main/qc/dense_1/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
≤
main/qc/dense_1/bias/Adam_1
VariableV2*
shape:А*'
_class
loc:@main/qc/dense_1/bias*
	container *
dtype0*
_output_shapes	
:А*
shared_name 
р
"main/qc/dense_1/bias/Adam_1/AssignAssignmain/qc/dense_1/bias/Adam_1-main/qc/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/qc/dense_1/bias
Ш
 main/qc/dense_1/bias/Adam_1/readIdentitymain/qc/dense_1/bias/Adam_1*
_output_shapes	
:А*
T0*'
_class
loc:@main/qc/dense_1/bias
ѓ
-main/qc/dense_2/kernel/Adam/Initializer/zerosConst*
valueB	А*    *
dtype0*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel
Љ
main/qc/dense_2/kernel/Adam
VariableV2*)
_class
loc:@main/qc/dense_2/kernel*
shared_name *
	container *
_output_shapes
:	А*
dtype0*
shape:	А
ц
"main/qc/dense_2/kernel/Adam/AssignAssignmain/qc/dense_2/kernel/Adam-main/qc/dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
T0
Ю
 main/qc/dense_2/kernel/Adam/readIdentitymain/qc/dense_2/kernel/Adam*
T0*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel
±
/main/qc/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
valueB	А*    *
dtype0
Њ
main/qc/dense_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	А*
_output_shapes
:	А*
	container *)
_class
loc:@main/qc/dense_2/kernel
ь
$main/qc/dense_2/kernel/Adam_1/AssignAssignmain/qc/dense_2/kernel/Adam_1/main/qc/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	А
Ґ
"main/qc/dense_2/kernel/Adam_1/readIdentitymain/qc/dense_2/kernel/Adam_1*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
T0
°
+main/qc/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:
Ѓ
main/qc/dense_2/bias/Adam
VariableV2*
dtype0*'
_class
loc:@main/qc/dense_2/bias*
	container *
shape:*
_output_shapes
:*
shared_name 
й
 main/qc/dense_2/bias/Adam/AssignAssignmain/qc/dense_2/bias/Adam+main/qc/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
_output_shapes
:
У
main/qc/dense_2/bias/Adam/readIdentitymain/qc/dense_2/bias/Adam*
_output_shapes
:*
T0*'
_class
loc:@main/qc/dense_2/bias
£
-main/qc/dense_2/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@main/qc/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
∞
main/qc/dense_2/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@main/qc/dense_2/bias*
shape:*
	container *
_output_shapes
:*
dtype0
п
"main/qc/dense_2/bias/Adam_1/AssignAssignmain/qc/dense_2/bias/Adam_1-main/qc/dense_2/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
Ч
 main/qc/dense_2/bias/Adam_1/readIdentitymain/qc/dense_2/bias/Adam_1*
T0*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias
i
train_q/learning_rateConst^group_deps_1*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
a
train_q/beta1Const^group_deps_1*
dtype0*
_output_shapes
: *
valueB
 *fff?
a
train_q/beta2Const^group_deps_1*
_output_shapes
: *
dtype0*
valueB
 *wЊ?
c
train_q/epsilonConst^group_deps_1*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
Б
.train_q/update_main/qr1/dense/kernel/ApplyAdam	ApplyAdammain/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_50*
use_locking( *(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>А*
use_nesterov( 
у
,train_q/update_main/qr1/dense/bias/ApplyAdam	ApplyAdammain/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_51*
use_nesterov( *&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
T0*
use_locking( 
М
0train_q/update_main/qr1/dense_1/kernel/ApplyAdam	ApplyAdammain/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_52* 
_output_shapes
:
АА*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
use_nesterov( *
use_locking( 
э
.train_q/update_main/qr1/dense_1/bias/ApplyAdam	ApplyAdammain/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_53*
use_nesterov( *(
_class
loc:@main/qr1/dense_1/bias*
T0*
_output_shapes	
:А*
use_locking( 
Л
0train_q/update_main/qr1/dense_2/kernel/ApplyAdam	ApplyAdammain/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_54*
use_locking( *
_output_shapes
:	А*
T0*
use_nesterov( **
_class 
loc:@main/qr1/dense_2/kernel
ь
.train_q/update_main/qr1/dense_2/bias/ApplyAdam	ApplyAdammain/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_55*
use_nesterov( *
use_locking( *
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
T0
Б
.train_q/update_main/qr2/dense/kernel/ApplyAdam	ApplyAdammain/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_56*
use_nesterov( *(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>А*
use_locking( *
T0
у
,train_q/update_main/qr2/dense/bias/ApplyAdam	ApplyAdammain/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_57*
_output_shapes	
:А*
use_locking( *&
_class
loc:@main/qr2/dense/bias*
use_nesterov( *
T0
М
0train_q/update_main/qr2/dense_1/kernel/ApplyAdam	ApplyAdammain/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_58*
use_locking( *
use_nesterov( *
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА
э
.train_q/update_main/qr2/dense_1/bias/ApplyAdam	ApplyAdammain/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_59*(
_class
loc:@main/qr2/dense_1/bias*
use_locking( *
T0*
use_nesterov( *
_output_shapes	
:А
Л
0train_q/update_main/qr2/dense_2/kernel/ApplyAdam	ApplyAdammain/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_60*
use_locking( *
T0**
_class 
loc:@main/qr2/dense_2/kernel*
use_nesterov( *
_output_shapes
:	А
ь
.train_q/update_main/qr2/dense_2/bias/ApplyAdam	ApplyAdammain/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_61*
T0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
use_locking( *
use_nesterov( 
ь
-train_q/update_main/qc/dense/kernel/ApplyAdam	ApplyAdammain/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_62*
use_locking( *
_output_shapes
:	>А*
T0*'
_class
loc:@main/qc/dense/kernel*
use_nesterov( 
о
+train_q/update_main/qc/dense/bias/ApplyAdam	ApplyAdammain/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_63*
T0*
use_locking( *%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А*
use_nesterov( 
З
/train_q/update_main/qc/dense_1/kernel/ApplyAdam	ApplyAdammain/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_64* 
_output_shapes
:
АА*
T0*
use_nesterov( *
use_locking( *)
_class
loc:@main/qc/dense_1/kernel
ш
-train_q/update_main/qc/dense_1/bias/ApplyAdam	ApplyAdammain/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_65*
use_nesterov( *
T0*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
use_locking( 
Ж
/train_q/update_main/qc/dense_2/kernel/ApplyAdam	ApplyAdammain/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_66*
use_locking( *
T0*
use_nesterov( *)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А
ч
-train_q/update_main/qc/dense_2/bias/ApplyAdam	ApplyAdammain/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readtrain_q/learning_ratetrain_q/beta1train_q/beta2train_q/epsilon
Reshape_67*'
_class
loc:@main/qc/dense_2/bias*
use_locking( *
_output_shapes
:*
use_nesterov( *
T0
п
train_q/mulMulbeta1_power_1/readtrain_q/beta1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
T0
•
train_q/AssignAssignbeta1_power_1train_q/mul*%
_class
loc:@main/qc/dense/bias*
use_locking( *
T0*
validate_shape(*
_output_shapes
: 
с
train_q/mul_1Mulbeta2_power_1/readtrain_q/beta2,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0
©
train_q/Assign_1Assignbeta2_power_1train_q/mul_1*
validate_shape(*
use_locking( *
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: 
і
train_qNoOp^group_deps_1^train_q/Assign^train_q/Assign_1,^train_q/update_main/qc/dense/bias/ApplyAdam.^train_q/update_main/qc/dense/kernel/ApplyAdam.^train_q/update_main/qc/dense_1/bias/ApplyAdam0^train_q/update_main/qc/dense_1/kernel/ApplyAdam.^train_q/update_main/qc/dense_2/bias/ApplyAdam0^train_q/update_main/qc/dense_2/kernel/ApplyAdam-^train_q/update_main/qr1/dense/bias/ApplyAdam/^train_q/update_main/qr1/dense/kernel/ApplyAdam/^train_q/update_main/qr1/dense_1/bias/ApplyAdam1^train_q/update_main/qr1/dense_1/kernel/ApplyAdam/^train_q/update_main/qr1/dense_2/bias/ApplyAdam1^train_q/update_main/qr1/dense_2/kernel/ApplyAdam-^train_q/update_main/qr2/dense/bias/ApplyAdam/^train_q/update_main/qr2/dense/kernel/ApplyAdam/^train_q/update_main/qr2/dense_1/bias/ApplyAdam1^train_q/update_main/qr2/dense_1/kernel/ApplyAdam/^train_q/update_main/qr2/dense_2/bias/ApplyAdam1^train_q/update_main/qr2/dense_2/kernel/ApplyAdam
|
Reshape_68/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
w

Reshape_68Reshapemain/qr1/dense/kernel/readReshape_68/shape*
T0*
Tshape0*
_output_shapes	
:А|
|
Reshape_69/shapeConst^group_deps_1^train_q*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
u

Reshape_69Reshapemain/qr1/dense/bias/readReshape_69/shape*
_output_shapes	
:А*
Tshape0*
T0
|
Reshape_70/shapeConst^group_deps_1^train_q*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
z

Reshape_70Reshapemain/qr1/dense_1/kernel/readReshape_70/shape*
Tshape0*
T0*
_output_shapes

:АА
|
Reshape_71/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
w

Reshape_71Reshapemain/qr1/dense_1/bias/readReshape_71/shape*
_output_shapes	
:А*
Tshape0*
T0
|
Reshape_72/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y

Reshape_72Reshapemain/qr1/dense_2/kernel/readReshape_72/shape*
Tshape0*
T0*
_output_shapes	
:А
|
Reshape_73/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
v

Reshape_73Reshapemain/qr1/dense_2/bias/readReshape_73/shape*
_output_shapes
:*
T0*
Tshape0
|
Reshape_74/shapeConst^group_deps_1^train_q*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
w

Reshape_74Reshapemain/qr2/dense/kernel/readReshape_74/shape*
_output_shapes	
:А|*
T0*
Tshape0
|
Reshape_75/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
u

Reshape_75Reshapemain/qr2/dense/bias/readReshape_75/shape*
T0*
Tshape0*
_output_shapes	
:А
|
Reshape_76/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
z

Reshape_76Reshapemain/qr2/dense_1/kernel/readReshape_76/shape*
_output_shapes

:АА*
Tshape0*
T0
|
Reshape_77/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
w

Reshape_77Reshapemain/qr2/dense_1/bias/readReshape_77/shape*
_output_shapes	
:А*
Tshape0*
T0
|
Reshape_78/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y

Reshape_78Reshapemain/qr2/dense_2/kernel/readReshape_78/shape*
_output_shapes	
:А*
Tshape0*
T0
|
Reshape_79/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
v

Reshape_79Reshapemain/qr2/dense_2/bias/readReshape_79/shape*
_output_shapes
:*
Tshape0*
T0
|
Reshape_80/shapeConst^group_deps_1^train_q*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
v

Reshape_80Reshapemain/qc/dense/kernel/readReshape_80/shape*
T0*
Tshape0*
_output_shapes	
:А|
|
Reshape_81/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
t

Reshape_81Reshapemain/qc/dense/bias/readReshape_81/shape*
T0*
Tshape0*
_output_shapes	
:А
|
Reshape_82/shapeConst^group_deps_1^train_q*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y

Reshape_82Reshapemain/qc/dense_1/kernel/readReshape_82/shape*
_output_shapes

:АА*
Tshape0*
T0
|
Reshape_83/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
v

Reshape_83Reshapemain/qc/dense_1/bias/readReshape_83/shape*
Tshape0*
_output_shapes	
:А*
T0
|
Reshape_84/shapeConst^group_deps_1^train_q*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x

Reshape_84Reshapemain/qc/dense_2/kernel/readReshape_84/shape*
Tshape0*
T0*
_output_shapes	
:А
|
Reshape_85/shapeConst^group_deps_1^train_q*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
u

Reshape_85Reshapemain/qc/dense_2/bias/readReshape_85/shape*
T0*
_output_shapes
:*
Tshape0
h
concat_3/axisConst^group_deps_1^train_q*
dtype0*
value	B : *
_output_shapes
: 
Ј
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
Reshape_85concat_3/axis*
N*

Tidx0*
T0*
_output_shapes

:ГЖ
h
PyFunc_3PyFuncconcat_3*
token
pyfunc_3*
Tout
2*
_output_shapes
:*
Tin
2
≤
Const_11Const^group_deps_1^train_q*
_output_shapes
:*
dtype0*]
valueTBR"H >                  >                  >                 
l
split_3/split_dimConst^group_deps_1^train_q*
_output_shapes
: *
dtype0*
value	B : 
Љ
split_3SplitVPyFunc_3Const_11split_3/split_dim*\
_output_shapesJ
H::::::::::::::::::*
T0*

Tlen0*
	num_split
z
Reshape_86/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB">      
h

Reshape_86Reshapesplit_3Reshape_86/shape*
Tshape0*
T0*
_output_shapes
:	>А
t
Reshape_87/shapeConst^group_deps_1^train_q*
valueB:А*
dtype0*
_output_shapes
:
f

Reshape_87Reshape	split_3:1Reshape_87/shape*
_output_shapes	
:А*
Tshape0*
T0
z
Reshape_88/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_88Reshape	split_3:2Reshape_88/shape*
Tshape0* 
_output_shapes
:
АА*
T0
t
Reshape_89/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:А
f

Reshape_89Reshape	split_3:3Reshape_89/shape*
Tshape0*
_output_shapes	
:А*
T0
z
Reshape_90/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB"      
j

Reshape_90Reshape	split_3:4Reshape_90/shape*
Tshape0*
_output_shapes
:	А*
T0
s
Reshape_91/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_91Reshape	split_3:5Reshape_91/shape*
Tshape0*
_output_shapes
:*
T0
z
Reshape_92/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB">      
j

Reshape_92Reshape	split_3:6Reshape_92/shape*
Tshape0*
T0*
_output_shapes
:	>А
t
Reshape_93/shapeConst^group_deps_1^train_q*
valueB:А*
dtype0*
_output_shapes
:
f

Reshape_93Reshape	split_3:7Reshape_93/shape*
_output_shapes	
:А*
T0*
Tshape0
z
Reshape_94/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_94Reshape	split_3:8Reshape_94/shape* 
_output_shapes
:
АА*
T0*
Tshape0
t
Reshape_95/shapeConst^group_deps_1^train_q*
valueB:А*
_output_shapes
:*
dtype0
f

Reshape_95Reshape	split_3:9Reshape_95/shape*
Tshape0*
T0*
_output_shapes	
:А
z
Reshape_96/shapeConst^group_deps_1^train_q*
_output_shapes
:*
dtype0*
valueB"      
k

Reshape_96Reshape
split_3:10Reshape_96/shape*
Tshape0*
T0*
_output_shapes
:	А
s
Reshape_97/shapeConst^group_deps_1^train_q*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_97Reshape
split_3:11Reshape_97/shape*
Tshape0*
_output_shapes
:*
T0
z
Reshape_98/shapeConst^group_deps_1^train_q*
dtype0*
valueB">      *
_output_shapes
:
k

Reshape_98Reshape
split_3:12Reshape_98/shape*
Tshape0*
T0*
_output_shapes
:	>А
t
Reshape_99/shapeConst^group_deps_1^train_q*
dtype0*
valueB:А*
_output_shapes
:
g

Reshape_99Reshape
split_3:13Reshape_99/shape*
Tshape0*
_output_shapes	
:А*
T0
{
Reshape_100/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_100Reshape
split_3:14Reshape_100/shape*
T0* 
_output_shapes
:
АА*
Tshape0
u
Reshape_101/shapeConst^group_deps_1^train_q*
dtype0*
_output_shapes
:*
valueB:А
i
Reshape_101Reshape
split_3:15Reshape_101/shape*
_output_shapes	
:А*
T0*
Tshape0
{
Reshape_102/shapeConst^group_deps_1^train_q*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_102Reshape
split_3:16Reshape_102/shape*
_output_shapes
:	А*
T0*
Tshape0
t
Reshape_103/shapeConst^group_deps_1^train_q*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_103Reshape
split_3:17Reshape_103/shape*
Tshape0*
_output_shapes
:*
T0
≤
Assign_8Assignmain/qr1/dense/kernel
Reshape_86*
_output_shapes
:	>А*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
T0*
validate_shape(
™
Assign_9Assignmain/qr1/dense/bias
Reshape_87*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
T0*
use_locking(
Є
	Assign_10Assignmain/qr1/dense_1/kernel
Reshape_88**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
АА*
T0
ѓ
	Assign_11Assignmain/qr1/dense_1/bias
Reshape_89*(
_class
loc:@main/qr1/dense_1/bias*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(
Ј
	Assign_12Assignmain/qr1/dense_2/kernel
Reshape_90*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	А*
validate_shape(
Ѓ
	Assign_13Assignmain/qr1/dense_2/bias
Reshape_91*
validate_shape(*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
T0
≥
	Assign_14Assignmain/qr2/dense/kernel
Reshape_92*
_output_shapes
:	>А*
T0*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
use_locking(
Ђ
	Assign_15Assignmain/qr2/dense/bias
Reshape_93*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias
Є
	Assign_16Assignmain/qr2/dense_1/kernel
Reshape_94**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА*
validate_shape(
ѓ
	Assign_17Assignmain/qr2/dense_1/bias
Reshape_95*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(
Ј
	Assign_18Assignmain/qr2/dense_2/kernel
Reshape_96**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
use_locking(*
T0
Ѓ
	Assign_19Assignmain/qr2/dense_2/bias
Reshape_97*
validate_shape(*
T0*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(
±
	Assign_20Assignmain/qc/dense/kernel
Reshape_98*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel
©
	Assign_21Assignmain/qc/dense/bias
Reshape_99*
validate_shape(*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0
Ј
	Assign_22Assignmain/qc/dense_1/kernelReshape_100*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
T0
Ѓ
	Assign_23Assignmain/qc/dense_1/biasReshape_101*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias
ґ
	Assign_24Assignmain/qc/dense_2/kernelReshape_102*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	А
≠
	Assign_25Assignmain/qc/dense_2/biasReshape_103*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(
Г
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
valueB *
_output_shapes
: *
dtype0
i
gradients_2/grad_ys_0Const^group_deps_3*
dtype0*
valueB
 *  А?*
_output_shapes
: 
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
_output_shapes
: *
T0*

index_type0
\
gradients_2/mul_11_grad/MulMulgradients_2/Fillsub_9*
T0*
_output_shapes
: 
^
gradients_2/mul_11_grad/Mul_1Mulgradients_2/FillNeg_1*
_output_shapes
: *
T0
}
(gradients_2/mul_11_grad/tuple/group_depsNoOp^gradients_2/mul_11_grad/Mul^gradients_2/mul_11_grad/Mul_1^group_deps_3
’
0gradients_2/mul_11_grad/tuple/control_dependencyIdentitygradients_2/mul_11_grad/Mul)^gradients_2/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_2/mul_11_grad/Mul*
_output_shapes
: 
џ
2gradients_2/mul_11_grad/tuple/control_dependency_1Identitygradients_2/mul_11_grad/Mul_1)^gradients_2/mul_11_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_2/mul_11_grad/Mul_1
t
gradients_2/Neg_1_grad/NegNeg0gradients_2/mul_11_grad/tuple/control_dependency*
T0*
_output_shapes
: 
Л
&gradients_2/Softplus_grad/SoftplusGradSoftplusGradgradients_2/Neg_1_grad/Negentreg/soft_alpha/read*
T0*
_output_shapes
: 
s
Reshape_104/shapeConst^group_deps_3*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Д
Reshape_104Reshape&gradients_2/Softplus_grad/SoftplusGradReshape_104/shape*
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
concat_4IdentityReshape_104*
_output_shapes
:*
T0
j
PyFunc_4PyFuncconcat_4*
Tin
2*
token
pyfunc_4*
Tout
2*
_output_shapes
:
a
Const_12Const^group_deps_3*
valueB:*
dtype0*
_output_shapes
:
b
split_4/split_dimConst^group_deps_3*
dtype0*
value	B : *
_output_shapes
: 
z
split_4SplitVPyFunc_4Const_12split_4/split_dim*
T0*

Tlen0*
	num_split*
_output_shapes
:
c
Reshape_105/shapeConst^group_deps_3*
_output_shapes
: *
valueB *
dtype0
a
Reshape_105Reshapesplit_4Reshape_105/shape*
T0*
Tshape0*
_output_shapes
: 
Ж
beta1_power_2/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
Ч
beta1_power_2
VariableV2*
shape: *$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
	container *
dtype0*
shared_name 
Ї
beta1_power_2/AssignAssignbeta1_power_2beta1_power_2/initial_value*
_output_shapes
: *
validate_shape(*$
_class
loc:@entreg/soft_alpha*
use_locking(*
T0
t
beta1_power_2/readIdentitybeta1_power_2*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
Ж
beta2_power_2/initial_valueConst*
valueB
 *wЊ?*
dtype0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
Ч
beta2_power_2
VariableV2*
	container *
shared_name *$
_class
loc:@entreg/soft_alpha*
dtype0*
_output_shapes
: *
shape: 
Ї
beta2_power_2/AssignAssignbeta2_power_2beta2_power_2/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha
t
beta2_power_2/readIdentitybeta2_power_2*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
У
(entreg/soft_alpha/Adam/Initializer/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0*$
_class
loc:@entreg/soft_alpha
†
entreg/soft_alpha/Adam
VariableV2*
	container *$
_class
loc:@entreg/soft_alpha*
shape: *
_output_shapes
: *
dtype0*
shared_name 
ў
entreg/soft_alpha/Adam/AssignAssignentreg/soft_alpha/Adam(entreg/soft_alpha/Adam/Initializer/zeros*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0*
use_locking(*
validate_shape(
Ж
entreg/soft_alpha/Adam/readIdentityentreg/soft_alpha/Adam*
_output_shapes
: *
T0*$
_class
loc:@entreg/soft_alpha
Х
*entreg/soft_alpha/Adam_1/Initializer/zerosConst*
valueB
 *    *$
_class
loc:@entreg/soft_alpha*
dtype0*
_output_shapes
: 
Ґ
entreg/soft_alpha/Adam_1
VariableV2*
	container *
shape: *
dtype0*$
_class
loc:@entreg/soft_alpha*
shared_name *
_output_shapes
: 
я
entreg/soft_alpha/Adam_1/AssignAssignentreg/soft_alpha/Adam_1*entreg/soft_alpha/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
_output_shapes
: 
К
entreg/soft_alpha/Adam_1/readIdentityentreg/soft_alpha/Adam_1*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0
f
Adam/learning_rateConst^group_deps_3*
_output_shapes
: *
valueB
 *oГ:*
dtype0
^

Adam/beta1Const^group_deps_3*
dtype0*
valueB
 *fff?*
_output_shapes
: 
^

Adam/beta2Const^group_deps_3*
_output_shapes
: *
dtype0*
valueB
 *wЊ?
`
Adam/epsilonConst^group_deps_3*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
÷
'Adam/update_entreg/soft_alpha/ApplyAdam	ApplyAdamentreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1beta1_power_2/readbeta2_power_2/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonReshape_105*
use_nesterov( *
_output_shapes
: *
T0*$
_class
loc:@entreg/soft_alpha*
use_locking( 
†
Adam/mulMulbeta1_power_2/read
Adam/beta1(^Adam/update_entreg/soft_alpha/ApplyAdam*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0
Ю
Adam/AssignAssignbeta1_power_2Adam/mul*
use_locking( *$
_class
loc:@entreg/soft_alpha*
validate_shape(*
T0*
_output_shapes
: 
Ґ

Adam/mul_1Mulbeta2_power_2/read
Adam/beta2(^Adam/update_entreg/soft_alpha/ApplyAdam*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: 
Ґ
Adam/Assign_1Assignbeta2_power_2
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
c
AdamNoOp^Adam/Assign^Adam/Assign_1(^Adam/update_entreg/soft_alpha/ApplyAdam^group_deps_3
z
Reshape_106/shapeConst^Adam^group_deps_3*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
t
Reshape_106Reshapeentreg/soft_alpha/readReshape_106/shape*
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
concat_5IdentityReshape_106*
T0*
_output_shapes
:
h
PyFunc_5PyFuncconcat_5*
Tin
2*
Tout
2*
token
pyfunc_5*
_output_shapes
:
h
Const_13Const^Adam^group_deps_3*
_output_shapes
:*
dtype0*
valueB:
i
split_5/split_dimConst^Adam^group_deps_3*
_output_shapes
: *
value	B : *
dtype0
x
split_5SplitVPyFunc_5Const_13split_5/split_dim*
_output_shapes
:*
	num_split*

Tlen0*
T0
j
Reshape_107/shapeConst^Adam^group_deps_3*
_output_shapes
: *
valueB *
dtype0
a
Reshape_107Reshapesplit_5Reshape_107/shape*
_output_shapes
: *
Tshape0*
T0
£
	Assign_26Assignentreg/soft_alphaReshape_107*
T0*
use_locking(*
validate_shape(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
6
group_deps_4NoOp^Adam
^Assign_26^group_deps_3
9
group_deps_5NoOp^Adam^group_deps_3^group_deps_4
f
gradients_3/ShapeShapemul_12^group_deps_5*
T0*
_output_shapes
:*
out_type0
i
gradients_3/grad_ys_0Const^group_deps_5*
valueB
 *  А?*
_output_shapes
: *
dtype0
В
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*#
_output_shapes
:€€€€€€€€€*

index_type0*
T0
o
gradients_3/mul_12_grad/ShapeConst^group_deps_5*
dtype0*
valueB *
_output_shapes
: 
t
gradients_3/mul_12_grad/Shape_1Shapesub_10^group_deps_5*
T0*
out_type0*
_output_shapes
:
√
-gradients_3/mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/mul_12_grad/Shapegradients_3/mul_12_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
j
gradients_3/mul_12_grad/MulMulgradients_3/Fillsub_10*
T0*#
_output_shapes
:€€€€€€€€€
Ѓ
gradients_3/mul_12_grad/SumSumgradients_3/mul_12_grad/Mul-gradients_3/mul_12_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Х
gradients_3/mul_12_grad/ReshapeReshapegradients_3/mul_12_grad/Sumgradients_3/mul_12_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
p
gradients_3/mul_12_grad/Mul_1Mul
Softplus_1gradients_3/Fill*
T0*#
_output_shapes
:€€€€€€€€€
і
gradients_3/mul_12_grad/Sum_1Sumgradients_3/mul_12_grad/Mul_1/gradients_3/mul_12_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
®
!gradients_3/mul_12_grad/Reshape_1Reshapegradients_3/mul_12_grad/Sum_1gradients_3/mul_12_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Е
(gradients_3/mul_12_grad/tuple/group_depsNoOp ^gradients_3/mul_12_grad/Reshape"^gradients_3/mul_12_grad/Reshape_1^group_deps_5
Ё
0gradients_3/mul_12_grad/tuple/control_dependencyIdentitygradients_3/mul_12_grad/Reshape)^gradients_3/mul_12_grad/tuple/group_deps*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_3/mul_12_grad/Reshape
р
2gradients_3/mul_12_grad/tuple/control_dependency_1Identity!gradients_3/mul_12_grad/Reshape_1)^gradients_3/mul_12_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_3/mul_12_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
£
(gradients_3/Softplus_1_grad/SoftplusGradSoftplusGrad0gradients_3/mul_12_grad/tuple/control_dependencycostpen/soft_beta/read*
_output_shapes
: *
T0
s
Reshape_108/shapeConst^group_deps_5*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ж
Reshape_108Reshape(gradients_3/Softplus_1_grad/SoftplusGradReshape_108/shape*
Tshape0*
_output_shapes
:*
T0
d
concat_6/concat_dimConst^group_deps_5*
dtype0*
value	B : *
_output_shapes
: 
F
concat_6IdentityReshape_108*
T0*
_output_shapes
:
j
PyFunc_6PyFuncconcat_6*
_output_shapes
:*
Tout
2*
Tin
2*
token
pyfunc_6
a
Const_14Const^group_deps_5*
dtype0*
_output_shapes
:*
valueB:
b
split_6/split_dimConst^group_deps_5*
value	B : *
_output_shapes
: *
dtype0
z
split_6SplitVPyFunc_6Const_14split_6/split_dim*

Tlen0*
	num_split*
T0*
_output_shapes
:
c
Reshape_109/shapeConst^group_deps_5*
dtype0*
_output_shapes
: *
valueB 
a
Reshape_109Reshapesplit_6Reshape_109/shape*
T0*
_output_shapes
: *
Tshape0
Ж
beta1_power_3/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*$
_class
loc:@costpen/soft_beta
Ч
beta1_power_3
VariableV2*
dtype0*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
shared_name *
	container *
shape: 
Ї
beta1_power_3/AssignAssignbeta1_power_3beta1_power_3/initial_value*
use_locking(*
T0*
validate_shape(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: 
t
beta1_power_3/readIdentitybeta1_power_3*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0
Ж
beta2_power_3/initial_valueConst*
dtype0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
valueB
 *wЊ?
Ч
beta2_power_3
VariableV2*
_output_shapes
: *
shape: *$
_class
loc:@costpen/soft_beta*
shared_name *
dtype0*
	container 
Ї
beta2_power_3/AssignAssignbeta2_power_3beta2_power_3/initial_value*$
_class
loc:@costpen/soft_beta*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
t
beta2_power_3/readIdentitybeta2_power_3*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
У
(costpen/soft_beta/Adam/Initializer/zerosConst*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
valueB
 *    *
dtype0
†
costpen/soft_beta/Adam
VariableV2*
dtype0*$
_class
loc:@costpen/soft_beta*
shape: *
shared_name *
	container *
_output_shapes
: 
ў
costpen/soft_beta/Adam/AssignAssigncostpen/soft_beta/Adam(costpen/soft_beta/Adam/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta
Ж
costpen/soft_beta/Adam/readIdentitycostpen/soft_beta/Adam*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
Х
*costpen/soft_beta/Adam_1/Initializer/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0*$
_class
loc:@costpen/soft_beta
Ґ
costpen/soft_beta/Adam_1
VariableV2*
	container *
_output_shapes
: *
shared_name *$
_class
loc:@costpen/soft_beta*
shape: *
dtype0
я
costpen/soft_beta/Adam_1/AssignAssigncostpen/soft_beta/Adam_1*costpen/soft_beta/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
use_locking(*
T0
К
costpen/soft_beta/Adam_1/readIdentitycostpen/soft_beta/Adam_1*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 
h
Adam_1/learning_rateConst^group_deps_5*
valueB
 *ЌћL=*
dtype0*
_output_shapes
: 
`
Adam_1/beta1Const^group_deps_5*
_output_shapes
: *
valueB
 *fff?*
dtype0
`
Adam_1/beta2Const^group_deps_5*
_output_shapes
: *
dtype0*
valueB
 *wЊ?
b
Adam_1/epsilonConst^group_deps_5*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
а
)Adam_1/update_costpen/soft_beta/ApplyAdam	ApplyAdamcostpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1beta1_power_3/readbeta2_power_3/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_109*
use_nesterov( *
use_locking( *
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta
¶

Adam_1/mulMulbeta1_power_3/readAdam_1/beta1*^Adam_1/update_costpen/soft_beta/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
Ґ
Adam_1/AssignAssignbeta1_power_3
Adam_1/mul*
validate_shape(*$
_class
loc:@costpen/soft_beta*
use_locking( *
_output_shapes
: *
T0
®
Adam_1/mul_1Mulbeta2_power_3/readAdam_1/beta2*^Adam_1/update_costpen/soft_beta/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
¶
Adam_1/Assign_1Assignbeta2_power_3Adam_1/mul_1*
use_locking( *
T0*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(
k
Adam_1NoOp^Adam_1/Assign^Adam_1/Assign_1*^Adam_1/update_costpen/soft_beta/ApplyAdam^group_deps_5
|
Reshape_110/shapeConst^Adam_1^group_deps_5*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
t
Reshape_110Reshapecostpen/soft_beta/readReshape_110/shape*
T0*
_output_shapes
:*
Tshape0
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
2*
token
pyfunc_7*
_output_shapes
:*
Tout
2
j
Const_15Const^Adam_1^group_deps_5*
_output_shapes
:*
dtype0*
valueB:
k
split_7/split_dimConst^Adam_1^group_deps_5*
value	B : *
dtype0*
_output_shapes
: 
x
split_7SplitVPyFunc_7Const_15split_7/split_dim*

Tlen0*
T0*
_output_shapes
:*
	num_split
l
Reshape_111/shapeConst^Adam_1^group_deps_5*
valueB *
_output_shapes
: *
dtype0
a
Reshape_111Reshapesplit_7Reshape_111/shape*
Tshape0*
_output_shapes
: *
T0
£
	Assign_27Assigncostpen/soft_betaReshape_111*
validate_shape(*
use_locking(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0
8
group_deps_6NoOp^Adam_1
^Assign_27^group_deps_5
;
group_deps_7NoOp^Adam_1^group_deps_5^group_deps_6
M
mul_13/xConst*
_output_shapes
: *
valueB
 *RЄ~?*
dtype0
_
mul_13Mulmul_13/xtarget/qr1/dense/kernel/read*
_output_shapes
:	>А*
T0
M
mul_14/xConst*
_output_shapes
: *
valueB
 *
„£;*
dtype0
]
mul_14Mulmul_14/xmain/qr1/dense/kernel/read*
T0*
_output_shapes
:	>А
F
add_5Addmul_13mul_14*
T0*
_output_shapes
:	>А
≤
	Assign_28Assigntarget/qr1/dense/kerneladd_5*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	>А**
_class 
loc:@target/qr1/dense/kernel
M
mul_15/xConst*
valueB
 *RЄ~?*
dtype0*
_output_shapes
: 
Y
mul_15Mulmul_15/xtarget/qr1/dense/bias/read*
T0*
_output_shapes	
:А
M
mul_16/xConst*
dtype0*
valueB
 *
„£;*
_output_shapes
: 
W
mul_16Mulmul_16/xmain/qr1/dense/bias/read*
_output_shapes	
:А*
T0
B
add_6Addmul_15mul_16*
_output_shapes	
:А*
T0
™
	Assign_29Assigntarget/qr1/dense/biasadd_6*
_output_shapes	
:А*(
_class
loc:@target/qr1/dense/bias*
T0*
use_locking(*
validate_shape(
M
mul_17/xConst*
valueB
 *RЄ~?*
dtype0*
_output_shapes
: 
b
mul_17Mulmul_17/xtarget/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
M
mul_18/xConst*
valueB
 *
„£;*
_output_shapes
: *
dtype0
`
mul_18Mulmul_18/xmain/qr1/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
G
add_7Addmul_17mul_18* 
_output_shapes
:
АА*
T0
Ј
	Assign_30Assigntarget/qr1/dense_1/kerneladd_7*
use_locking(* 
_output_shapes
:
АА*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
validate_shape(
M
mul_19/xConst*
valueB
 *RЄ~?*
dtype0*
_output_shapes
: 
[
mul_19Mulmul_19/xtarget/qr1/dense_1/bias/read*
T0*
_output_shapes	
:А
M
mul_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
Y
mul_20Mulmul_20/xmain/qr1/dense_1/bias/read*
T0*
_output_shapes	
:А
B
add_8Addmul_19mul_20*
T0*
_output_shapes	
:А
Ѓ
	Assign_31Assigntarget/qr1/dense_1/biasadd_8**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:А*
use_locking(*
T0*
validate_shape(
M
mul_21/xConst*
_output_shapes
: *
dtype0*
valueB
 *RЄ~?
a
mul_21Mulmul_21/xtarget/qr1/dense_2/kernel/read*
_output_shapes
:	А*
T0
M
mul_22/xConst*
dtype0*
valueB
 *
„£;*
_output_shapes
: 
_
mul_22Mulmul_22/xmain/qr1/dense_2/kernel/read*
_output_shapes
:	А*
T0
F
add_9Addmul_21mul_22*
T0*
_output_shapes
:	А
ґ
	Assign_32Assigntarget/qr1/dense_2/kerneladd_9*
_output_shapes
:	А*
T0*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(
M
mul_23/xConst*
_output_shapes
: *
dtype0*
valueB
 *RЄ~?
Z
mul_23Mulmul_23/xtarget/qr1/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_24/xConst*
_output_shapes
: *
valueB
 *
„£;*
dtype0
X
mul_24Mulmul_24/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_10Addmul_23mul_24*
_output_shapes
:*
T0
Ѓ
	Assign_33Assigntarget/qr1/dense_2/biasadd_10*
use_locking(**
_class 
loc:@target/qr1/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
M
mul_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *RЄ~?
_
mul_25Mulmul_25/xtarget/qr2/dense/kernel/read*
_output_shapes
:	>А*
T0
M
mul_26/xConst*
valueB
 *
„£;*
_output_shapes
: *
dtype0
]
mul_26Mulmul_26/xmain/qr2/dense/kernel/read*
_output_shapes
:	>А*
T0
G
add_11Addmul_25mul_26*
T0*
_output_shapes
:	>А
≥
	Assign_34Assigntarget/qr2/dense/kerneladd_11*
validate_shape(**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>А*
T0
M
mul_27/xConst*
valueB
 *RЄ~?*
_output_shapes
: *
dtype0
Y
mul_27Mulmul_27/xtarget/qr2/dense/bias/read*
_output_shapes	
:А*
T0
M
mul_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£;
W
mul_28Mulmul_28/xmain/qr2/dense/bias/read*
_output_shapes	
:А*
T0
C
add_12Addmul_27mul_28*
_output_shapes	
:А*
T0
Ђ
	Assign_35Assigntarget/qr2/dense/biasadd_12*
T0*
_output_shapes	
:А*
validate_shape(*(
_class
loc:@target/qr2/dense/bias*
use_locking(
M
mul_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *RЄ~?
b
mul_29Mulmul_29/xtarget/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
M
mul_30/xConst*
_output_shapes
: *
valueB
 *
„£;*
dtype0
`
mul_30Mulmul_30/xmain/qr2/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
H
add_13Addmul_29mul_30*
T0* 
_output_shapes
:
АА
Є
	Assign_36Assigntarget/qr2/dense_1/kerneladd_13*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
M
mul_31/xConst*
_output_shapes
: *
valueB
 *RЄ~?*
dtype0
[
mul_31Mulmul_31/xtarget/qr2/dense_1/bias/read*
T0*
_output_shapes	
:А
M
mul_32/xConst*
valueB
 *
„£;*
_output_shapes
: *
dtype0
Y
mul_32Mulmul_32/xmain/qr2/dense_1/bias/read*
_output_shapes	
:А*
T0
C
add_14Addmul_31mul_32*
T0*
_output_shapes	
:А
ѓ
	Assign_37Assigntarget/qr2/dense_1/biasadd_14*
use_locking(*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:А
M
mul_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *RЄ~?
a
mul_33Mulmul_33/xtarget/qr2/dense_2/kernel/read*
T0*
_output_shapes
:	А
M
mul_34/xConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
_
mul_34Mulmul_34/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	А*
T0
G
add_15Addmul_33mul_34*
_output_shapes
:	А*
T0
Ј
	Assign_38Assigntarget/qr2/dense_2/kerneladd_15*
_output_shapes
:	А*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@target/qr2/dense_2/kernel
M
mul_35/xConst*
valueB
 *RЄ~?*
_output_shapes
: *
dtype0
Z
mul_35Mulmul_35/xtarget/qr2/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_36/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£;
X
mul_36Mulmul_36/xmain/qr2/dense_2/bias/read*
_output_shapes
:*
T0
B
add_16Addmul_35mul_36*
T0*
_output_shapes
:
Ѓ
	Assign_39Assigntarget/qr2/dense_2/biasadd_16*
validate_shape(*
use_locking(*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
T0
M
mul_37/xConst*
valueB
 *RЄ~?*
dtype0*
_output_shapes
: 
^
mul_37Mulmul_37/xtarget/qc/dense/kernel/read*
_output_shapes
:	>А*
T0
M
mul_38/xConst*
valueB
 *
„£;*
dtype0*
_output_shapes
: 
\
mul_38Mulmul_38/xmain/qc/dense/kernel/read*
T0*
_output_shapes
:	>А
G
add_17Addmul_37mul_38*
T0*
_output_shapes
:	>А
±
	Assign_40Assigntarget/qc/dense/kerneladd_17*
_output_shapes
:	>А*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
use_locking(*
T0
M
mul_39/xConst*
dtype0*
valueB
 *RЄ~?*
_output_shapes
: 
X
mul_39Mulmul_39/xtarget/qc/dense/bias/read*
T0*
_output_shapes	
:А
M
mul_40/xConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
V
mul_40Mulmul_40/xmain/qc/dense/bias/read*
T0*
_output_shapes	
:А
C
add_18Addmul_39mul_40*
T0*
_output_shapes	
:А
©
	Assign_41Assigntarget/qc/dense/biasadd_18*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias*
use_locking(*
validate_shape(*
T0
M
mul_41/xConst*
dtype0*
_output_shapes
: *
valueB
 *RЄ~?
a
mul_41Mulmul_41/xtarget/qc/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
M
mul_42/xConst*
dtype0*
valueB
 *
„£;*
_output_shapes
: 
_
mul_42Mulmul_42/xmain/qc/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
H
add_19Addmul_41mul_42* 
_output_shapes
:
АА*
T0
ґ
	Assign_42Assigntarget/qc/dense_1/kerneladd_19*
T0*
use_locking(*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(
M
mul_43/xConst*
_output_shapes
: *
valueB
 *RЄ~?*
dtype0
Z
mul_43Mulmul_43/xtarget/qc/dense_1/bias/read*
_output_shapes	
:А*
T0
M
mul_44/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£;
X
mul_44Mulmul_44/xmain/qc/dense_1/bias/read*
T0*
_output_shapes	
:А
C
add_20Addmul_43mul_44*
T0*
_output_shapes	
:А
≠
	Assign_43Assigntarget/qc/dense_1/biasadd_20*
_output_shapes	
:А*
use_locking(*
T0*)
_class
loc:@target/qc/dense_1/bias*
validate_shape(
M
mul_45/xConst*
valueB
 *RЄ~?*
_output_shapes
: *
dtype0
`
mul_45Mulmul_45/xtarget/qc/dense_2/kernel/read*
_output_shapes
:	А*
T0
M
mul_46/xConst*
dtype0*
valueB
 *
„£;*
_output_shapes
: 
^
mul_46Mulmul_46/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	А
G
add_21Addmul_45mul_46*
T0*
_output_shapes
:	А
µ
	Assign_44Assigntarget/qc/dense_2/kerneladd_21*
validate_shape(*+
_class!
loc:@target/qc/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	А
M
mul_47/xConst*
_output_shapes
: *
valueB
 *RЄ~?*
dtype0
Y
mul_47Mulmul_47/xtarget/qc/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_48/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£;
W
mul_48Mulmul_48/xmain/qc/dense_2/bias/read*
T0*
_output_shapes
:
B
add_22Addmul_47mul_48*
_output_shapes
:*
T0
ђ
	Assign_45Assigntarget/qc/dense_2/biasadd_22*
T0*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
м
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
mul_49/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
mul_49Mulmul_49/xtarget/qr1/dense/kernel/read*
_output_shapes
:	>А*
T0
M
mul_50/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
]
mul_50Mulmul_50/xmain/qr1/dense/kernel/read*
_output_shapes
:	>А*
T0
G
add_23Addmul_49mul_50*
T0*
_output_shapes
:	>А
≥
	Assign_46Assigntarget/qr1/dense/kerneladd_23*
validate_shape(*
use_locking(**
_class 
loc:@target/qr1/dense/kernel*
T0*
_output_shapes
:	>А
M
mul_51/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
Y
mul_51Mulmul_51/xtarget/qr1/dense/bias/read*
_output_shapes	
:А*
T0
M
mul_52/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
W
mul_52Mulmul_52/xmain/qr1/dense/bias/read*
T0*
_output_shapes	
:А
C
add_24Addmul_51mul_52*
T0*
_output_shapes	
:А
Ђ
	Assign_47Assigntarget/qr1/dense/biasadd_24*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(*(
_class
loc:@target/qr1/dense/bias
M
mul_53/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
b
mul_53Mulmul_53/xtarget/qr1/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
M
mul_54/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
`
mul_54Mulmul_54/xmain/qr1/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
H
add_25Addmul_53mul_54*
T0* 
_output_shapes
:
АА
Є
	Assign_48Assigntarget/qr1/dense_1/kerneladd_25*
use_locking(*,
_class"
 loc:@target/qr1/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
АА
M
mul_55/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
[
mul_55Mulmul_55/xtarget/qr1/dense_1/bias/read*
_output_shapes	
:А*
T0
M
mul_56/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Y
mul_56Mulmul_56/xmain/qr1/dense_1/bias/read*
T0*
_output_shapes	
:А
C
add_26Addmul_55mul_56*
T0*
_output_shapes	
:А
ѓ
	Assign_49Assigntarget/qr1/dense_1/biasadd_26*
T0*
_output_shapes	
:А**
_class 
loc:@target/qr1/dense_1/bias*
validate_shape(*
use_locking(
M
mul_57/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
a
mul_57Mulmul_57/xtarget/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	А
M
mul_58/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
_
mul_58Mulmul_58/xmain/qr1/dense_2/kernel/read*
T0*
_output_shapes
:	А
G
add_27Addmul_57mul_58*
T0*
_output_shapes
:	А
Ј
	Assign_50Assigntarget/qr1/dense_2/kerneladd_27*
_output_shapes
:	А*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(*
use_locking(*
T0
M
mul_59/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Z
mul_59Mulmul_59/xtarget/qr1/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_60/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
X
mul_60Mulmul_60/xmain/qr1/dense_2/bias/read*
T0*
_output_shapes
:
B
add_28Addmul_59mul_60*
_output_shapes
:*
T0
Ѓ
	Assign_51Assigntarget/qr1/dense_2/biasadd_28**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
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
:	>А*
T0
M
mul_62/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
]
mul_62Mulmul_62/xmain/qr2/dense/kernel/read*
T0*
_output_shapes
:	>А
G
add_29Addmul_61mul_62*
_output_shapes
:	>А*
T0
≥
	Assign_52Assigntarget/qr2/dense/kerneladd_29**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	>А
M
mul_63/xConst*
valueB
 *    *
_output_shapes
: *
dtype0
Y
mul_63Mulmul_63/xtarget/qr2/dense/bias/read*
T0*
_output_shapes	
:А
M
mul_64/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
W
mul_64Mulmul_64/xmain/qr2/dense/bias/read*
T0*
_output_shapes	
:А
C
add_30Addmul_63mul_64*
T0*
_output_shapes	
:А
Ђ
	Assign_53Assigntarget/qr2/dense/biasadd_30*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А*(
_class
loc:@target/qr2/dense/bias
M
mul_65/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
b
mul_65Mulmul_65/xtarget/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
M
mul_66/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
`
mul_66Mulmul_66/xmain/qr2/dense_1/kernel/read*
T0* 
_output_shapes
:
АА
H
add_31Addmul_65mul_66*
T0* 
_output_shapes
:
АА
Є
	Assign_54Assigntarget/qr2/dense_1/kerneladd_31*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
АА
M
mul_67/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
[
mul_67Mulmul_67/xtarget/qr2/dense_1/bias/read*
_output_shapes	
:А*
T0
M
mul_68/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Y
mul_68Mulmul_68/xmain/qr2/dense_1/bias/read*
_output_shapes	
:А*
T0
C
add_32Addmul_67mul_68*
T0*
_output_shapes	
:А
ѓ
	Assign_55Assigntarget/qr2/dense_1/biasadd_32*
validate_shape(*
T0*
_output_shapes	
:А**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(
M
mul_69/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
a
mul_69Mulmul_69/xtarget/qr2/dense_2/kernel/read*
_output_shapes
:	А*
T0
M
mul_70/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
_
mul_70Mulmul_70/xmain/qr2/dense_2/kernel/read*
_output_shapes
:	А*
T0
G
add_33Addmul_69mul_70*
_output_shapes
:	А*
T0
Ј
	Assign_56Assigntarget/qr2/dense_2/kerneladd_33*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А
M
mul_71/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Z
mul_71Mulmul_71/xtarget/qr2/dense_2/bias/read*
_output_shapes
:*
T0
M
mul_72/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
X
mul_72Mulmul_72/xmain/qr2/dense_2/bias/read*
_output_shapes
:*
T0
B
add_34Addmul_71mul_72*
T0*
_output_shapes
:
Ѓ
	Assign_57Assigntarget/qr2/dense_2/biasadd_34**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
M
mul_73/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
^
mul_73Mulmul_73/xtarget/qc/dense/kernel/read*
T0*
_output_shapes
:	>А
M
mul_74/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
\
mul_74Mulmul_74/xmain/qc/dense/kernel/read*
T0*
_output_shapes
:	>А
G
add_35Addmul_73mul_74*
T0*
_output_shapes
:	>А
±
	Assign_58Assigntarget/qc/dense/kerneladd_35*
_output_shapes
:	>А*
use_locking(*
validate_shape(*
T0*)
_class
loc:@target/qc/dense/kernel
M
mul_75/xConst*
dtype0*
valueB
 *    *
_output_shapes
: 
X
mul_75Mulmul_75/xtarget/qc/dense/bias/read*
T0*
_output_shapes	
:А
M
mul_76/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
V
mul_76Mulmul_76/xmain/qc/dense/bias/read*
T0*
_output_shapes	
:А
C
add_36Addmul_75mul_76*
T0*
_output_shapes	
:А
©
	Assign_59Assigntarget/qc/dense/biasadd_36*
T0*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
use_locking(
M
mul_77/xConst*
_output_shapes
: *
valueB
 *    *
dtype0
a
mul_77Mulmul_77/xtarget/qc/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
M
mul_78/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
_
mul_78Mulmul_78/xmain/qc/dense_1/kernel/read* 
_output_shapes
:
АА*
T0
H
add_37Addmul_77mul_78* 
_output_shapes
:
АА*
T0
ґ
	Assign_60Assigntarget/qc/dense_1/kerneladd_37*
T0* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*+
_class!
loc:@target/qc/dense_1/kernel
M
mul_79/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Z
mul_79Mulmul_79/xtarget/qc/dense_1/bias/read*
_output_shapes	
:А*
T0
M
mul_80/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
X
mul_80Mulmul_80/xmain/qc/dense_1/bias/read*
T0*
_output_shapes	
:А
C
add_38Addmul_79mul_80*
T0*
_output_shapes	
:А
≠
	Assign_61Assigntarget/qc/dense_1/biasadd_38*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(*)
_class
loc:@target/qc/dense_1/bias
M
mul_81/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
`
mul_81Mulmul_81/xtarget/qc/dense_2/kernel/read*
_output_shapes
:	А*
T0
M
mul_82/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
^
mul_82Mulmul_82/xmain/qc/dense_2/kernel/read*
T0*
_output_shapes
:	А
G
add_39Addmul_81mul_82*
T0*
_output_shapes
:	А
µ
	Assign_62Assigntarget/qc/dense_2/kerneladd_39*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0*+
_class!
loc:@target/qc/dense_2/kernel
M
mul_83/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
Y
mul_83Mulmul_83/xtarget/qc/dense_2/bias/read*
T0*
_output_shapes
:
M
mul_84/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
W
mul_84Mulmul_84/xmain/qc/dense_2/bias/read*
T0*
_output_shapes
:
B
add_40Addmul_83mul_84*
T0*
_output_shapes
:
ђ
	Assign_63Assigntarget/qc/dense_2/biasadd_40*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
н
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
к
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta1_power_2/Assign^beta1_power_3/Assign^beta2_power/Assign^beta2_power_1/Assign^beta2_power_2/Assign^beta2_power_3/Assign^costpen/soft_beta/Adam/Assign ^costpen/soft_beta/Adam_1/Assign^costpen/soft_beta/Assign^entreg/soft_alpha/Adam/Assign ^entreg/soft_alpha/Adam_1/Assign^entreg/soft_alpha/Assign^main/pi/dense/bias/Adam/Assign!^main/pi/dense/bias/Adam_1/Assign^main/pi/dense/bias/Assign!^main/pi/dense/kernel/Adam/Assign#^main/pi/dense/kernel/Adam_1/Assign^main/pi/dense/kernel/Assign!^main/pi/dense_1/bias/Adam/Assign#^main/pi/dense_1/bias/Adam_1/Assign^main/pi/dense_1/bias/Assign#^main/pi/dense_1/kernel/Adam/Assign%^main/pi/dense_1/kernel/Adam_1/Assign^main/pi/dense_1/kernel/Assign!^main/pi/dense_2/bias/Adam/Assign#^main/pi/dense_2/bias/Adam_1/Assign^main/pi/dense_2/bias/Assign#^main/pi/dense_2/kernel/Adam/Assign%^main/pi/dense_2/kernel/Adam_1/Assign^main/pi/dense_2/kernel/Assign!^main/pi/dense_3/bias/Adam/Assign#^main/pi/dense_3/bias/Adam_1/Assign^main/pi/dense_3/bias/Assign#^main/pi/dense_3/kernel/Adam/Assign%^main/pi/dense_3/kernel/Adam_1/Assign^main/pi/dense_3/kernel/Assign^main/qc/dense/bias/Adam/Assign!^main/qc/dense/bias/Adam_1/Assign^main/qc/dense/bias/Assign!^main/qc/dense/kernel/Adam/Assign#^main/qc/dense/kernel/Adam_1/Assign^main/qc/dense/kernel/Assign!^main/qc/dense_1/bias/Adam/Assign#^main/qc/dense_1/bias/Adam_1/Assign^main/qc/dense_1/bias/Assign#^main/qc/dense_1/kernel/Adam/Assign%^main/qc/dense_1/kernel/Adam_1/Assign^main/qc/dense_1/kernel/Assign!^main/qc/dense_2/bias/Adam/Assign#^main/qc/dense_2/bias/Adam_1/Assign^main/qc/dense_2/bias/Assign#^main/qc/dense_2/kernel/Adam/Assign%^main/qc/dense_2/kernel/Adam_1/Assign^main/qc/dense_2/kernel/Assign ^main/qr1/dense/bias/Adam/Assign"^main/qr1/dense/bias/Adam_1/Assign^main/qr1/dense/bias/Assign"^main/qr1/dense/kernel/Adam/Assign$^main/qr1/dense/kernel/Adam_1/Assign^main/qr1/dense/kernel/Assign"^main/qr1/dense_1/bias/Adam/Assign$^main/qr1/dense_1/bias/Adam_1/Assign^main/qr1/dense_1/bias/Assign$^main/qr1/dense_1/kernel/Adam/Assign&^main/qr1/dense_1/kernel/Adam_1/Assign^main/qr1/dense_1/kernel/Assign"^main/qr1/dense_2/bias/Adam/Assign$^main/qr1/dense_2/bias/Adam_1/Assign^main/qr1/dense_2/bias/Assign$^main/qr1/dense_2/kernel/Adam/Assign&^main/qr1/dense_2/kernel/Adam_1/Assign^main/qr1/dense_2/kernel/Assign ^main/qr2/dense/bias/Adam/Assign"^main/qr2/dense/bias/Adam_1/Assign^main/qr2/dense/bias/Assign"^main/qr2/dense/kernel/Adam/Assign$^main/qr2/dense/kernel/Adam_1/Assign^main/qr2/dense/kernel/Assign"^main/qr2/dense_1/bias/Adam/Assign$^main/qr2/dense_1/bias/Adam_1/Assign^main/qr2/dense_1/bias/Assign$^main/qr2/dense_1/kernel/Adam/Assign&^main/qr2/dense_1/kernel/Adam_1/Assign^main/qr2/dense_1/kernel/Assign"^main/qr2/dense_2/bias/Adam/Assign$^main/qr2/dense_2/bias/Adam_1/Assign^main/qr2/dense_2/bias/Assign$^main/qr2/dense_2/kernel/Adam/Assign&^main/qr2/dense_2/kernel/Adam_1/Assign^main/qr2/dense_2/kernel/Assign^target/qc/dense/bias/Assign^target/qc/dense/kernel/Assign^target/qc/dense_1/bias/Assign ^target/qc/dense_1/kernel/Assign^target/qc/dense_2/bias/Assign ^target/qc/dense_2/kernel/Assign^target/qr1/dense/bias/Assign^target/qr1/dense/kernel/Assign^target/qr1/dense_1/bias/Assign!^target/qr1/dense_1/kernel/Assign^target/qr1/dense_2/bias/Assign!^target/qr1/dense_2/kernel/Assign^target/qr2/dense/bias/Assign^target/qr2/dense/kernel/Assign^target/qr2/dense_1/bias/Assign!^target/qr2/dense_1/kernel/Assign^target/qr2/dense_2/bias/Assign!^target/qr2/dense_2/kernel/Assign
d
Reshape_112/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x
Reshape_112Reshapemain/pi/dense/kernel/readReshape_112/shape*
T0*
_output_shapes	
:Аx*
Tshape0
d
Reshape_113/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
v
Reshape_113Reshapemain/pi/dense/bias/readReshape_113/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_114/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
{
Reshape_114Reshapemain/pi/dense_1/kernel/readReshape_114/shape*
_output_shapes

:АА*
T0*
Tshape0
d
Reshape_115/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
x
Reshape_115Reshapemain/pi/dense_1/bias/readReshape_115/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_116/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
z
Reshape_116Reshapemain/pi/dense_2/kernel/readReshape_116/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_117/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
w
Reshape_117Reshapemain/pi/dense_2/bias/readReshape_117/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_118/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z
Reshape_118Reshapemain/pi/dense_3/kernel/readReshape_118/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_119/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
w
Reshape_119Reshapemain/pi/dense_3/bias/readReshape_119/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_120/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
y
Reshape_120Reshapemain/qr1/dense/kernel/readReshape_120/shape*
T0*
_output_shapes	
:А|*
Tshape0
d
Reshape_121/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
w
Reshape_121Reshapemain/qr1/dense/bias/readReshape_121/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_122/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
|
Reshape_122Reshapemain/qr1/dense_1/kernel/readReshape_122/shape*
T0*
_output_shapes

:АА*
Tshape0
d
Reshape_123/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y
Reshape_123Reshapemain/qr1/dense_1/bias/readReshape_123/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_124/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
{
Reshape_124Reshapemain/qr1/dense_2/kernel/readReshape_124/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_125/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
x
Reshape_125Reshapemain/qr1/dense_2/bias/readReshape_125/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_126/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y
Reshape_126Reshapemain/qr2/dense/kernel/readReshape_126/shape*
Tshape0*
_output_shapes	
:А|*
T0
d
Reshape_127/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
w
Reshape_127Reshapemain/qr2/dense/bias/readReshape_127/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_128/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
|
Reshape_128Reshapemain/qr2/dense_1/kernel/readReshape_128/shape*
Tshape0*
T0*
_output_shapes

:АА
d
Reshape_129/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
y
Reshape_129Reshapemain/qr2/dense_1/bias/readReshape_129/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_130/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
{
Reshape_130Reshapemain/qr2/dense_2/kernel/readReshape_130/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_131/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
x
Reshape_131Reshapemain/qr2/dense_2/bias/readReshape_131/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_132/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
x
Reshape_132Reshapemain/qc/dense/kernel/readReshape_132/shape*
_output_shapes	
:А|*
T0*
Tshape0
d
Reshape_133/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
v
Reshape_133Reshapemain/qc/dense/bias/readReshape_133/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_134/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
{
Reshape_134Reshapemain/qc/dense_1/kernel/readReshape_134/shape*
T0*
Tshape0*
_output_shapes

:АА
d
Reshape_135/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
x
Reshape_135Reshapemain/qc/dense_1/bias/readReshape_135/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_136/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z
Reshape_136Reshapemain/qc/dense_2/kernel/readReshape_136/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_137/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
w
Reshape_137Reshapemain/qc/dense_2/bias/readReshape_137/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_138/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
{
Reshape_138Reshapetarget/qr1/dense/kernel/readReshape_138/shape*
Tshape0*
T0*
_output_shapes	
:А|
d
Reshape_139/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y
Reshape_139Reshapetarget/qr1/dense/bias/readReshape_139/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_140/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
~
Reshape_140Reshapetarget/qr1/dense_1/kernel/readReshape_140/shape*
_output_shapes

:АА*
T0*
Tshape0
d
Reshape_141/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
{
Reshape_141Reshapetarget/qr1/dense_1/bias/readReshape_141/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_142/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
}
Reshape_142Reshapetarget/qr1/dense_2/kernel/readReshape_142/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_143/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
z
Reshape_143Reshapetarget/qr1/dense_2/bias/readReshape_143/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_144/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
{
Reshape_144Reshapetarget/qr2/dense/kernel/readReshape_144/shape*
T0*
_output_shapes	
:А|*
Tshape0
d
Reshape_145/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
y
Reshape_145Reshapetarget/qr2/dense/bias/readReshape_145/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_146/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
~
Reshape_146Reshapetarget/qr2/dense_1/kernel/readReshape_146/shape*
_output_shapes

:АА*
Tshape0*
T0
d
Reshape_147/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
{
Reshape_147Reshapetarget/qr2/dense_1/bias/readReshape_147/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_148/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
}
Reshape_148Reshapetarget/qr2/dense_2/kernel/readReshape_148/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_149/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
z
Reshape_149Reshapetarget/qr2/dense_2/bias/readReshape_149/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_150/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
z
Reshape_150Reshapetarget/qc/dense/kernel/readReshape_150/shape*
Tshape0*
T0*
_output_shapes	
:А|
d
Reshape_151/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
x
Reshape_151Reshapetarget/qc/dense/bias/readReshape_151/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_152/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
}
Reshape_152Reshapetarget/qc/dense_1/kernel/readReshape_152/shape*
_output_shapes

:АА*
T0*
Tshape0
d
Reshape_153/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
z
Reshape_153Reshapetarget/qc/dense_1/bias/readReshape_153/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_154/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
|
Reshape_154Reshapetarget/qc/dense_2/kernel/readReshape_154/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_155/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
y
Reshape_155Reshapetarget/qc/dense_2/bias/readReshape_155/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_156/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
t
Reshape_156Reshapeentreg/soft_alpha/readReshape_156/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_157/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
t
Reshape_157Reshapecostpen/soft_beta/readReshape_157/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_158/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
n
Reshape_158Reshapebeta1_power/readReshape_158/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_159/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
n
Reshape_159Reshapebeta2_power/readReshape_159/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_160/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
}
Reshape_160Reshapemain/pi/dense/kernel/Adam/readReshape_160/shape*
Tshape0*
_output_shapes	
:Аx*
T0
d
Reshape_161/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€

Reshape_161Reshape main/pi/dense/kernel/Adam_1/readReshape_161/shape*
T0*
Tshape0*
_output_shapes	
:Аx
d
Reshape_162/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
{
Reshape_162Reshapemain/pi/dense/bias/Adam/readReshape_162/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_163/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
}
Reshape_163Reshapemain/pi/dense/bias/Adam_1/readReshape_163/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_164/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
А
Reshape_164Reshape main/pi/dense_1/kernel/Adam/readReshape_164/shape*
T0*
_output_shapes

:АА*
Tshape0
d
Reshape_165/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
В
Reshape_165Reshape"main/pi/dense_1/kernel/Adam_1/readReshape_165/shape*
T0*
Tshape0*
_output_shapes

:АА
d
Reshape_166/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
}
Reshape_166Reshapemain/pi/dense_1/bias/Adam/readReshape_166/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_167/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:

Reshape_167Reshape main/pi/dense_1/bias/Adam_1/readReshape_167/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_168/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:

Reshape_168Reshape main/pi/dense_2/kernel/Adam/readReshape_168/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_169/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Б
Reshape_169Reshape"main/pi/dense_2/kernel/Adam_1/readReshape_169/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_170/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
|
Reshape_170Reshapemain/pi/dense_2/bias/Adam/readReshape_170/shape*
_output_shapes
:*
Tshape0*
T0
d
Reshape_171/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
~
Reshape_171Reshape main/pi/dense_2/bias/Adam_1/readReshape_171/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_172/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:

Reshape_172Reshape main/pi/dense_3/kernel/Adam/readReshape_172/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_173/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
Б
Reshape_173Reshape"main/pi/dense_3/kernel/Adam_1/readReshape_173/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_174/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
|
Reshape_174Reshapemain/pi/dense_3/bias/Adam/readReshape_174/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_175/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
~
Reshape_175Reshape main/pi/dense_3/bias/Adam_1/readReshape_175/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_176/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p
Reshape_176Reshapebeta1_power_1/readReshape_176/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_177/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
p
Reshape_177Reshapebeta2_power_1/readReshape_177/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_178/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
~
Reshape_178Reshapemain/qr1/dense/kernel/Adam/readReshape_178/shape*
Tshape0*
T0*
_output_shapes	
:А|
d
Reshape_179/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
А
Reshape_179Reshape!main/qr1/dense/kernel/Adam_1/readReshape_179/shape*
T0*
Tshape0*
_output_shapes	
:А|
d
Reshape_180/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
|
Reshape_180Reshapemain/qr1/dense/bias/Adam/readReshape_180/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_181/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
~
Reshape_181Reshapemain/qr1/dense/bias/Adam_1/readReshape_181/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_182/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Б
Reshape_182Reshape!main/qr1/dense_1/kernel/Adam/readReshape_182/shape*
_output_shapes

:АА*
T0*
Tshape0
d
Reshape_183/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
Г
Reshape_183Reshape#main/qr1/dense_1/kernel/Adam_1/readReshape_183/shape*
Tshape0*
T0*
_output_shapes

:АА
d
Reshape_184/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
~
Reshape_184Reshapemain/qr1/dense_1/bias/Adam/readReshape_184/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_185/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
А
Reshape_185Reshape!main/qr1/dense_1/bias/Adam_1/readReshape_185/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_186/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
А
Reshape_186Reshape!main/qr1/dense_2/kernel/Adam/readReshape_186/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_187/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
В
Reshape_187Reshape#main/qr1/dense_2/kernel/Adam_1/readReshape_187/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_188/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
}
Reshape_188Reshapemain/qr1/dense_2/bias/Adam/readReshape_188/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_189/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:

Reshape_189Reshape!main/qr1/dense_2/bias/Adam_1/readReshape_189/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_190/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
~
Reshape_190Reshapemain/qr2/dense/kernel/Adam/readReshape_190/shape*
_output_shapes	
:А|*
Tshape0*
T0
d
Reshape_191/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
А
Reshape_191Reshape!main/qr2/dense/kernel/Adam_1/readReshape_191/shape*
T0*
Tshape0*
_output_shapes	
:А|
d
Reshape_192/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
|
Reshape_192Reshapemain/qr2/dense/bias/Adam/readReshape_192/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_193/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
~
Reshape_193Reshapemain/qr2/dense/bias/Adam_1/readReshape_193/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_194/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
Б
Reshape_194Reshape!main/qr2/dense_1/kernel/Adam/readReshape_194/shape*
_output_shapes

:АА*
T0*
Tshape0
d
Reshape_195/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
Г
Reshape_195Reshape#main/qr2/dense_1/kernel/Adam_1/readReshape_195/shape*
Tshape0*
_output_shapes

:АА*
T0
d
Reshape_196/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
~
Reshape_196Reshapemain/qr2/dense_1/bias/Adam/readReshape_196/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_197/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
А
Reshape_197Reshape!main/qr2/dense_1/bias/Adam_1/readReshape_197/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_198/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
А
Reshape_198Reshape!main/qr2/dense_2/kernel/Adam/readReshape_198/shape*
T0*
_output_shapes	
:А*
Tshape0
d
Reshape_199/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
В
Reshape_199Reshape#main/qr2/dense_2/kernel/Adam_1/readReshape_199/shape*
Tshape0*
T0*
_output_shapes	
:А
d
Reshape_200/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
}
Reshape_200Reshapemain/qr2/dense_2/bias/Adam/readReshape_200/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_201/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€

Reshape_201Reshape!main/qr2/dense_2/bias/Adam_1/readReshape_201/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_202/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
}
Reshape_202Reshapemain/qc/dense/kernel/Adam/readReshape_202/shape*
_output_shapes	
:А|*
T0*
Tshape0
d
Reshape_203/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€

Reshape_203Reshape main/qc/dense/kernel/Adam_1/readReshape_203/shape*
_output_shapes	
:А|*
Tshape0*
T0
d
Reshape_204/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
{
Reshape_204Reshapemain/qc/dense/bias/Adam/readReshape_204/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_205/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
}
Reshape_205Reshapemain/qc/dense/bias/Adam_1/readReshape_205/shape*
T0*
Tshape0*
_output_shapes	
:А
d
Reshape_206/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
А
Reshape_206Reshape main/qc/dense_1/kernel/Adam/readReshape_206/shape*
T0*
_output_shapes

:АА*
Tshape0
d
Reshape_207/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
В
Reshape_207Reshape"main/qc/dense_1/kernel/Adam_1/readReshape_207/shape*
Tshape0*
T0*
_output_shapes

:АА
d
Reshape_208/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
}
Reshape_208Reshapemain/qc/dense_1/bias/Adam/readReshape_208/shape*
_output_shapes	
:А*
T0*
Tshape0
d
Reshape_209/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0

Reshape_209Reshape main/qc/dense_1/bias/Adam_1/readReshape_209/shape*
Tshape0*
_output_shapes	
:А*
T0
d
Reshape_210/shapeConst*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0

Reshape_210Reshape main/qc/dense_2/kernel/Adam/readReshape_210/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_211/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Б
Reshape_211Reshape"main/qc/dense_2/kernel/Adam_1/readReshape_211/shape*
_output_shapes	
:А*
Tshape0*
T0
d
Reshape_212/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
|
Reshape_212Reshapemain/qc/dense_2/bias/Adam/readReshape_212/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_213/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
~
Reshape_213Reshape main/qc/dense_2/bias/Adam_1/readReshape_213/shape*
T0*
_output_shapes
:*
Tshape0
d
Reshape_214/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p
Reshape_214Reshapebeta1_power_2/readReshape_214/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_215/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
p
Reshape_215Reshapebeta2_power_2/readReshape_215/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_216/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
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
dtype0*
valueB:
€€€€€€€€€
{
Reshape_217Reshapeentreg/soft_alpha/Adam_1/readReshape_217/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_218/shapeConst*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
p
Reshape_218Reshapebeta1_power_3/readReshape_218/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_219/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
p
Reshape_219Reshapebeta2_power_3/readReshape_219/shape*
Tshape0*
T0*
_output_shapes
:
d
Reshape_220/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
y
Reshape_220Reshapecostpen/soft_beta/Adam/readReshape_220/shape*
Tshape0*
_output_shapes
:*
T0
d
Reshape_221/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
{
Reshape_221Reshapecostpen/soft_beta/Adam_1/readReshape_221/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
concat_8ConcatV2Reshape_112Reshape_113Reshape_114Reshape_115Reshape_116Reshape_117Reshape_118Reshape_119Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139Reshape_140Reshape_141Reshape_142Reshape_143Reshape_144Reshape_145Reshape_146Reshape_147Reshape_148Reshape_149Reshape_150Reshape_151Reshape_152Reshape_153Reshape_154Reshape_155Reshape_156Reshape_157Reshape_158Reshape_159Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199Reshape_200Reshape_201Reshape_202Reshape_203Reshape_204Reshape_205Reshape_206Reshape_207Reshape_208Reshape_209Reshape_210Reshape_211Reshape_212Reshape_213Reshape_214Reshape_215Reshape_216Reshape_217Reshape_218Reshape_219Reshape_220Reshape_221concat_8/axis*

Tidx0*
T0*
Nn*
_output_shapes

:¶§K
h
PyFunc_8PyFuncconcat_8*
_output_shapes
:*
token
pyfunc_8*
Tin
2*
Tout
2
Н
Const_16Const*–
value∆B√n"Є <                        >                  >                  >                  >                  >                  >                              <   <                                                   >   >                                 >   >                                 >   >                                                        *
_output_shapes
:n*
dtype0
S
split_8/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
ѓ
split_8SplitVPyFunc_8Const_16split_8/split_dim*

Tlen0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_splitn*
T0
b
Reshape_222/shapeConst*
dtype0*
_output_shapes
:*
valueB"<      
j
Reshape_222Reshapesplit_8Reshape_222/shape*
Tshape0*
_output_shapes
:	<А*
T0
\
Reshape_223/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
h
Reshape_223Reshape	split_8:1Reshape_223/shape*
_output_shapes	
:А*
Tshape0*
T0
b
Reshape_224/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_224Reshape	split_8:2Reshape_224/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_225/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
h
Reshape_225Reshape	split_8:3Reshape_225/shape*
T0*
_output_shapes	
:А*
Tshape0
b
Reshape_226/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
l
Reshape_226Reshape	split_8:4Reshape_226/shape*
Tshape0*
_output_shapes
:	А*
T0
[
Reshape_227/shapeConst*
valueB:*
_output_shapes
:*
dtype0
g
Reshape_227Reshape	split_8:5Reshape_227/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_228/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
l
Reshape_228Reshape	split_8:6Reshape_228/shape*
Tshape0*
T0*
_output_shapes
:	А
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
Reshape_230/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
l
Reshape_230Reshape	split_8:8Reshape_230/shape*
T0*
_output_shapes
:	>А*
Tshape0
\
Reshape_231/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
h
Reshape_231Reshape	split_8:9Reshape_231/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_232/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_232Reshape
split_8:10Reshape_232/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_233/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_233Reshape
split_8:11Reshape_233/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_234/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_234Reshape
split_8:12Reshape_234/shape*
Tshape0*
_output_shapes
:	А*
T0
[
Reshape_235/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_235Reshape
split_8:13Reshape_235/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_236/shapeConst*
valueB">      *
dtype0*
_output_shapes
:
m
Reshape_236Reshape
split_8:14Reshape_236/shape*
_output_shapes
:	>А*
T0*
Tshape0
\
Reshape_237/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_237Reshape
split_8:15Reshape_237/shape*
T0*
_output_shapes	
:А*
Tshape0
b
Reshape_238/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_238Reshape
split_8:16Reshape_238/shape*
T0* 
_output_shapes
:
АА*
Tshape0
\
Reshape_239/shapeConst*
dtype0*
_output_shapes
:*
valueB:А
i
Reshape_239Reshape
split_8:17Reshape_239/shape*
T0*
_output_shapes	
:А*
Tshape0
b
Reshape_240/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_240Reshape
split_8:18Reshape_240/shape*
_output_shapes
:	А*
Tshape0*
T0
[
Reshape_241/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_241Reshape
split_8:19Reshape_241/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_242/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_242Reshape
split_8:20Reshape_242/shape*
_output_shapes
:	>А*
T0*
Tshape0
\
Reshape_243/shapeConst*
dtype0*
valueB:А*
_output_shapes
:
i
Reshape_243Reshape
split_8:21Reshape_243/shape*
_output_shapes	
:А*
Tshape0*
T0
b
Reshape_244/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_244Reshape
split_8:22Reshape_244/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_245/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_245Reshape
split_8:23Reshape_245/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_246/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_246Reshape
split_8:24Reshape_246/shape*
Tshape0*
T0*
_output_shapes
:	А
[
Reshape_247/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_247Reshape
split_8:25Reshape_247/shape*
T0*
_output_shapes
:*
Tshape0
b
Reshape_248/shapeConst*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_248Reshape
split_8:26Reshape_248/shape*
T0*
Tshape0*
_output_shapes
:	>А
\
Reshape_249/shapeConst*
dtype0*
valueB:А*
_output_shapes
:
i
Reshape_249Reshape
split_8:27Reshape_249/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_250/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_250Reshape
split_8:28Reshape_250/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_251/shapeConst*
_output_shapes
:*
dtype0*
valueB:А
i
Reshape_251Reshape
split_8:29Reshape_251/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_252/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_252Reshape
split_8:30Reshape_252/shape*
_output_shapes
:	А*
T0*
Tshape0
[
Reshape_253/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_253Reshape
split_8:31Reshape_253/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_254/shapeConst*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_254Reshape
split_8:32Reshape_254/shape*
_output_shapes
:	>А*
Tshape0*
T0
\
Reshape_255/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_255Reshape
split_8:33Reshape_255/shape*
Tshape0*
_output_shapes	
:А*
T0
b
Reshape_256/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_256Reshape
split_8:34Reshape_256/shape*
T0* 
_output_shapes
:
АА*
Tshape0
\
Reshape_257/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_257Reshape
split_8:35Reshape_257/shape*
Tshape0*
_output_shapes	
:А*
T0
b
Reshape_258/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_258Reshape
split_8:36Reshape_258/shape*
_output_shapes
:	А*
Tshape0*
T0
[
Reshape_259/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_259Reshape
split_8:37Reshape_259/shape*
_output_shapes
:*
T0*
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
:	>А*
Tshape0*
T0
\
Reshape_261/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_261Reshape
split_8:39Reshape_261/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_262/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
n
Reshape_262Reshape
split_8:40Reshape_262/shape*
T0* 
_output_shapes
:
АА*
Tshape0
\
Reshape_263/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_263Reshape
split_8:41Reshape_263/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_264/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_264Reshape
split_8:42Reshape_264/shape*
_output_shapes
:	А*
Tshape0*
T0
[
Reshape_265/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_265Reshape
split_8:43Reshape_265/shape*
Tshape0*
T0*
_output_shapes
:
T
Reshape_266/shapeConst*
valueB *
dtype0*
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
Reshape_267/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_267Reshape
split_8:45Reshape_267/shape*
_output_shapes
: *
Tshape0*
T0
T
Reshape_268/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_268Reshape
split_8:46Reshape_268/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_269/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_269Reshape
split_8:47Reshape_269/shape*
_output_shapes
: *
Tshape0*
T0
b
Reshape_270/shapeConst*
dtype0*
valueB"<      *
_output_shapes
:
m
Reshape_270Reshape
split_8:48Reshape_270/shape*
_output_shapes
:	<А*
T0*
Tshape0
b
Reshape_271/shapeConst*
dtype0*
_output_shapes
:*
valueB"<      
m
Reshape_271Reshape
split_8:49Reshape_271/shape*
_output_shapes
:	<А*
Tshape0*
T0
\
Reshape_272/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_272Reshape
split_8:50Reshape_272/shape*
T0*
Tshape0*
_output_shapes	
:А
\
Reshape_273/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_273Reshape
split_8:51Reshape_273/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_274/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_274Reshape
split_8:52Reshape_274/shape*
T0*
Tshape0* 
_output_shapes
:
АА
b
Reshape_275/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
n
Reshape_275Reshape
split_8:53Reshape_275/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_276/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
i
Reshape_276Reshape
split_8:54Reshape_276/shape*
Tshape0*
_output_shapes	
:А*
T0
\
Reshape_277/shapeConst*
dtype0*
valueB:А*
_output_shapes
:
i
Reshape_277Reshape
split_8:55Reshape_277/shape*
_output_shapes	
:А*
Tshape0*
T0
b
Reshape_278/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_278Reshape
split_8:56Reshape_278/shape*
T0*
Tshape0*
_output_shapes
:	А
b
Reshape_279/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
m
Reshape_279Reshape
split_8:57Reshape_279/shape*
T0*
_output_shapes
:	А*
Tshape0
[
Reshape_280/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_280Reshape
split_8:58Reshape_280/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_281/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_281Reshape
split_8:59Reshape_281/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_282/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_282Reshape
split_8:60Reshape_282/shape*
_output_shapes
:	А*
T0*
Tshape0
b
Reshape_283/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_283Reshape
split_8:61Reshape_283/shape*
Tshape0*
T0*
_output_shapes
:	А
[
Reshape_284/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_284Reshape
split_8:62Reshape_284/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_285/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_285Reshape
split_8:63Reshape_285/shape*
Tshape0*
T0*
_output_shapes
:
T
Reshape_286/shapeConst*
dtype0*
valueB *
_output_shapes
: 
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
Tshape0*
_output_shapes
: *
T0
b
Reshape_288/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_288Reshape
split_8:66Reshape_288/shape*
T0*
Tshape0*
_output_shapes
:	>А
b
Reshape_289/shapeConst*
dtype0*
valueB">      *
_output_shapes
:
m
Reshape_289Reshape
split_8:67Reshape_289/shape*
T0*
_output_shapes
:	>А*
Tshape0
\
Reshape_290/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_290Reshape
split_8:68Reshape_290/shape*
_output_shapes	
:А*
Tshape0*
T0
\
Reshape_291/shapeConst*
_output_shapes
:*
dtype0*
valueB:А
i
Reshape_291Reshape
split_8:69Reshape_291/shape*
Tshape0*
T0*
_output_shapes	
:А
b
Reshape_292/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
Reshape_292Reshape
split_8:70Reshape_292/shape*
Tshape0* 
_output_shapes
:
АА*
T0
b
Reshape_293/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_293Reshape
split_8:71Reshape_293/shape*
T0*
Tshape0* 
_output_shapes
:
АА
\
Reshape_294/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_294Reshape
split_8:72Reshape_294/shape*
_output_shapes	
:А*
T0*
Tshape0
\
Reshape_295/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_295Reshape
split_8:73Reshape_295/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_296/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_296Reshape
split_8:74Reshape_296/shape*
_output_shapes
:	А*
T0*
Tshape0
b
Reshape_297/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
Reshape_297Reshape
split_8:75Reshape_297/shape*
Tshape0*
T0*
_output_shapes
:	А
[
Reshape_298/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_298Reshape
split_8:76Reshape_298/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_299/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_299Reshape
split_8:77Reshape_299/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_300/shapeConst*
dtype0*
_output_shapes
:*
valueB">      
m
Reshape_300Reshape
split_8:78Reshape_300/shape*
Tshape0*
_output_shapes
:	>А*
T0
b
Reshape_301/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_301Reshape
split_8:79Reshape_301/shape*
Tshape0*
_output_shapes
:	>А*
T0
\
Reshape_302/shapeConst*
_output_shapes
:*
dtype0*
valueB:А
i
Reshape_302Reshape
split_8:80Reshape_302/shape*
Tshape0*
_output_shapes	
:А*
T0
\
Reshape_303/shapeConst*
valueB:А*
dtype0*
_output_shapes
:
i
Reshape_303Reshape
split_8:81Reshape_303/shape*
T0*
_output_shapes	
:А*
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
Tshape0* 
_output_shapes
:
АА*
T0
b
Reshape_305/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_305Reshape
split_8:83Reshape_305/shape* 
_output_shapes
:
АА*
Tshape0*
T0
\
Reshape_306/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_306Reshape
split_8:84Reshape_306/shape*
_output_shapes	
:А*
T0*
Tshape0
\
Reshape_307/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
i
Reshape_307Reshape
split_8:85Reshape_307/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_308/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_308Reshape
split_8:86Reshape_308/shape*
_output_shapes
:	А*
Tshape0*
T0
b
Reshape_309/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_309Reshape
split_8:87Reshape_309/shape*
T0*
Tshape0*
_output_shapes
:	А
[
Reshape_310/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_310Reshape
split_8:88Reshape_310/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_311/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_311Reshape
split_8:89Reshape_311/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_312/shapeConst*
_output_shapes
:*
valueB">      *
dtype0
m
Reshape_312Reshape
split_8:90Reshape_312/shape*
_output_shapes
:	>А*
T0*
Tshape0
b
Reshape_313/shapeConst*
_output_shapes
:*
dtype0*
valueB">      
m
Reshape_313Reshape
split_8:91Reshape_313/shape*
_output_shapes
:	>А*
T0*
Tshape0
\
Reshape_314/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
i
Reshape_314Reshape
split_8:92Reshape_314/shape*
Tshape0*
_output_shapes	
:А*
T0
\
Reshape_315/shapeConst*
valueB:А*
_output_shapes
:*
dtype0
i
Reshape_315Reshape
split_8:93Reshape_315/shape*
_output_shapes	
:А*
T0*
Tshape0
b
Reshape_316/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_316Reshape
split_8:94Reshape_316/shape*
Tshape0*
T0* 
_output_shapes
:
АА
b
Reshape_317/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
n
Reshape_317Reshape
split_8:95Reshape_317/shape*
Tshape0*
T0* 
_output_shapes
:
АА
\
Reshape_318/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
i
Reshape_318Reshape
split_8:96Reshape_318/shape*
T0*
_output_shapes	
:А*
Tshape0
\
Reshape_319/shapeConst*
_output_shapes
:*
valueB:А*
dtype0
i
Reshape_319Reshape
split_8:97Reshape_319/shape*
T0*
Tshape0*
_output_shapes	
:А
b
Reshape_320/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_320Reshape
split_8:98Reshape_320/shape*
T0*
_output_shapes
:	А*
Tshape0
b
Reshape_321/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_321Reshape
split_8:99Reshape_321/shape*
Tshape0*
_output_shapes
:	А*
T0
[
Reshape_322/shapeConst*
_output_shapes
:*
valueB:*
dtype0
i
Reshape_322Reshapesplit_8:100Reshape_322/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_323/shapeConst*
dtype0*
valueB:*
_output_shapes
:
i
Reshape_323Reshapesplit_8:101Reshape_323/shape*
_output_shapes
:*
T0*
Tshape0
T
Reshape_324/shapeConst*
valueB *
_output_shapes
: *
dtype0
e
Reshape_324Reshapesplit_8:102Reshape_324/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_325/shapeConst*
valueB *
_output_shapes
: *
dtype0
e
Reshape_325Reshapesplit_8:103Reshape_325/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_326/shapeConst*
dtype0*
_output_shapes
: *
valueB 
e
Reshape_326Reshapesplit_8:104Reshape_326/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_327/shapeConst*
_output_shapes
: *
valueB *
dtype0
e
Reshape_327Reshapesplit_8:105Reshape_327/shape*
T0*
_output_shapes
: *
Tshape0
T
Reshape_328/shapeConst*
_output_shapes
: *
dtype0*
valueB 
e
Reshape_328Reshapesplit_8:106Reshape_328/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_329/shapeConst*
_output_shapes
: *
valueB *
dtype0
e
Reshape_329Reshapesplit_8:107Reshape_329/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_330/shapeConst*
dtype0*
_output_shapes
: *
valueB 
e
Reshape_330Reshapesplit_8:108Reshape_330/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_331/shapeConst*
dtype0*
valueB *
_output_shapes
: 
e
Reshape_331Reshapesplit_8:109Reshape_331/shape*
Tshape0*
_output_shapes
: *
T0
≤
	Assign_64Assignmain/pi/dense/kernelReshape_222*
_output_shapes
:	<А*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
T0*
use_locking(
™
	Assign_65Assignmain/pi/dense/biasReshape_223*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:А*
validate_shape(*
use_locking(
Ј
	Assign_66Assignmain/pi/dense_1/kernelReshape_224* 
_output_shapes
:
АА*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(
Ѓ
	Assign_67Assignmain/pi/dense_1/biasReshape_225*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias
ґ
	Assign_68Assignmain/pi/dense_2/kernelReshape_226*
validate_shape(*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
T0*
use_locking(
≠
	Assign_69Assignmain/pi/dense_2/biasReshape_227*
validate_shape(*
_output_shapes
:*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
T0
ґ
	Assign_70Assignmain/pi/dense_3/kernelReshape_228*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	А*
use_locking(
≠
	Assign_71Assignmain/pi/dense_3/biasReshape_229*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias
і
	Assign_72Assignmain/qr1/dense/kernelReshape_230*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>А*
use_locking(*
validate_shape(
ђ
	Assign_73Assignmain/qr1/dense/biasReshape_231*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
T0*
validate_shape(
є
	Assign_74Assignmain/qr1/dense_1/kernelReshape_232*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(*
T0
∞
	Assign_75Assignmain/qr1/dense_1/biasReshape_233*
T0*
use_locking(*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(
Є
	Assign_76Assignmain/qr1/dense_2/kernelReshape_234*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
use_locking(
ѓ
	Assign_77Assignmain/qr1/dense_2/biasReshape_235*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
use_locking(
і
	Assign_78Assignmain/qr2/dense/kernelReshape_236*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
use_locking(*
T0
ђ
	Assign_79Assignmain/qr2/dense/biasReshape_237*
validate_shape(*
T0*
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias*
use_locking(
є
	Assign_80Assignmain/qr2/dense_1/kernelReshape_238*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(
∞
	Assign_81Assignmain/qr2/dense_1/biasReshape_239*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:А*
T0
Є
	Assign_82Assignmain/qr2/dense_2/kernelReshape_240*
validate_shape(**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
use_locking(*
_output_shapes
:	А
ѓ
	Assign_83Assignmain/qr2/dense_2/biasReshape_241*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
T0*
use_locking(
≤
	Assign_84Assignmain/qc/dense/kernelReshape_242*
_output_shapes
:	>А*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
T0*
use_locking(
™
	Assign_85Assignmain/qc/dense/biasReshape_243*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0*
_output_shapes	
:А
Ј
	Assign_86Assignmain/qc/dense_1/kernelReshape_244*
T0* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel
Ѓ
	Assign_87Assignmain/qc/dense_1/biasReshape_245*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
ґ
	Assign_88Assignmain/qc/dense_2/kernelReshape_246*
T0*
validate_shape(*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(
≠
	Assign_89Assignmain/qc/dense_2/biasReshape_247*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias
Є
	Assign_90Assigntarget/qr1/dense/kernelReshape_248*
_output_shapes
:	>А*
validate_shape(*
T0**
_class 
loc:@target/qr1/dense/kernel*
use_locking(
∞
	Assign_91Assigntarget/qr1/dense/biasReshape_249*
T0*
_output_shapes	
:А*
use_locking(*(
_class
loc:@target/qr1/dense/bias*
validate_shape(
љ
	Assign_92Assigntarget/qr1/dense_1/kernelReshape_250*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
і
	Assign_93Assigntarget/qr1/dense_1/biasReshape_251*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense_1/bias
Љ
	Assign_94Assigntarget/qr1/dense_2/kernelReshape_252*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А
≥
	Assign_95Assigntarget/qr1/dense_2/biasReshape_253*
_output_shapes
:*
validate_shape(*
use_locking(*
T0**
_class 
loc:@target/qr1/dense_2/bias
Є
	Assign_96Assigntarget/qr2/dense/kernelReshape_254*
validate_shape(*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
T0*
_output_shapes
:	>А
∞
	Assign_97Assigntarget/qr2/dense/biasReshape_255*(
_class
loc:@target/qr2/dense/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
љ
	Assign_98Assigntarget/qr2/dense_1/kernelReshape_256*
validate_shape(*
use_locking(*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА
і
	Assign_99Assigntarget/qr2/dense_1/biasReshape_257*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0**
_class 
loc:@target/qr2/dense_1/bias
љ

Assign_100Assigntarget/qr2/dense_2/kernelReshape_258*
_output_shapes
:	А*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
validate_shape(
і

Assign_101Assigntarget/qr2/dense_2/biasReshape_259*
validate_shape(*
use_locking(*
T0*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias
Ј

Assign_102Assigntarget/qc/dense/kernelReshape_260*
use_locking(*
validate_shape(*
_output_shapes
:	>А*
T0*)
_class
loc:@target/qc/dense/kernel
ѓ

Assign_103Assigntarget/qc/dense/biasReshape_261*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias*
validate_shape(*
T0*
use_locking(
Љ

Assign_104Assigntarget/qc/dense_1/kernelReshape_262*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(*
T0* 
_output_shapes
:
АА*
use_locking(
≥

Assign_105Assigntarget/qc/dense_1/biasReshape_263*
validate_shape(*
use_locking(*
_output_shapes	
:А*)
_class
loc:@target/qc/dense_1/bias*
T0
ї

Assign_106Assigntarget/qc/dense_2/kernelReshape_264*
validate_shape(*
T0*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
_output_shapes
:	А
≤

Assign_107Assigntarget/qc/dense_2/biasReshape_265*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias*
use_locking(*
_output_shapes
:
§

Assign_108Assignentreg/soft_alphaReshape_266*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha
§

Assign_109Assigncostpen/soft_betaReshape_267*
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: 
Я

Assign_110Assignbeta1_powerReshape_268*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes
: *
use_locking(*
validate_shape(
Я

Assign_111Assignbeta2_powerReshape_269*
use_locking(*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
validate_shape(
Є

Assign_112Assignmain/pi/dense/kernel/AdamReshape_270*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А*
T0
Ї

Assign_113Assignmain/pi/dense/kernel/Adam_1Reshape_271*
validate_shape(*
_output_shapes
:	<А*
T0*'
_class
loc:@main/pi/dense/kernel*
use_locking(
∞

Assign_114Assignmain/pi/dense/bias/AdamReshape_272*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:А*
validate_shape(*
use_locking(*
T0
≤

Assign_115Assignmain/pi/dense/bias/Adam_1Reshape_273*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(
љ

Assign_116Assignmain/pi/dense_1/kernel/AdamReshape_274* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
T0
њ

Assign_117Assignmain/pi/dense_1/kernel/Adam_1Reshape_275*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(
і

Assign_118Assignmain/pi/dense_1/bias/AdamReshape_276*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
_output_shapes	
:А
ґ

Assign_119Assignmain/pi/dense_1/bias/Adam_1Reshape_277*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А
Љ

Assign_120Assignmain/pi/dense_2/kernel/AdamReshape_278*
use_locking(*
T0*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(
Њ

Assign_121Assignmain/pi/dense_2/kernel/Adam_1Reshape_279*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
use_locking(*
validate_shape(
≥

Assign_122Assignmain/pi/dense_2/bias/AdamReshape_280*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
µ

Assign_123Assignmain/pi/dense_2/bias/Adam_1Reshape_281*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0*
validate_shape(*
use_locking(
Љ

Assign_124Assignmain/pi/dense_3/kernel/AdamReshape_282*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	А
Њ

Assign_125Assignmain/pi/dense_3/kernel/Adam_1Reshape_283*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
T0
≥

Assign_126Assignmain/pi/dense_3/bias/AdamReshape_284*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
use_locking(*
T0
µ

Assign_127Assignmain/pi/dense_3/bias/Adam_1Reshape_285*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
use_locking(*
validate_shape(
°

Assign_128Assignbeta1_power_1Reshape_286*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
°

Assign_129Assignbeta2_power_1Reshape_287*
_output_shapes
: *
validate_shape(*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(
Ї

Assign_130Assignmain/qr1/dense/kernel/AdamReshape_288*
use_locking(*
validate_shape(*
_output_shapes
:	>А*
T0*(
_class
loc:@main/qr1/dense/kernel
Љ

Assign_131Assignmain/qr1/dense/kernel/Adam_1Reshape_289*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
use_locking(*
T0*
validate_shape(
≤

Assign_132Assignmain/qr1/dense/bias/AdamReshape_290*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
і

Assign_133Assignmain/qr1/dense/bias/Adam_1Reshape_291*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
њ

Assign_134Assignmain/qr1/dense_1/kernel/AdamReshape_292* 
_output_shapes
:
АА*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(
Ѕ

Assign_135Assignmain/qr1/dense_1/kernel/Adam_1Reshape_293**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*
T0
ґ

Assign_136Assignmain/qr1/dense_1/bias/AdamReshape_294*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(*
T0
Є

Assign_137Assignmain/qr1/dense_1/bias/Adam_1Reshape_295*
use_locking(*
validate_shape(*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
T0
Њ

Assign_138Assignmain/qr1/dense_2/kernel/AdamReshape_296**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	А
ј

Assign_139Assignmain/qr1/dense_2/kernel/Adam_1Reshape_297*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
_output_shapes
:	А*
use_locking(
µ

Assign_140Assignmain/qr1/dense_2/bias/AdamReshape_298*
use_locking(*
validate_shape(*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias
Ј

Assign_141Assignmain/qr1/dense_2/bias/Adam_1Reshape_299*
use_locking(*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(
Ї

Assign_142Assignmain/qr2/dense/kernel/AdamReshape_300*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>А*
T0*
use_locking(
Љ

Assign_143Assignmain/qr2/dense/kernel/Adam_1Reshape_301*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>А*
T0
≤

Assign_144Assignmain/qr2/dense/bias/AdamReshape_302*
T0*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
validate_shape(*
_output_shapes	
:А
і

Assign_145Assignmain/qr2/dense/bias/Adam_1Reshape_303*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:А*&
_class
loc:@main/qr2/dense/bias
њ

Assign_146Assignmain/qr2/dense_1/kernel/AdamReshape_304**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(*
T0*
validate_shape(
Ѕ

Assign_147Assignmain/qr2/dense_1/kernel/Adam_1Reshape_305* 
_output_shapes
:
АА*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(
ґ

Assign_148Assignmain/qr2/dense_1/bias/AdamReshape_306*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:А*
use_locking(
Є

Assign_149Assignmain/qr2/dense_1/bias/Adam_1Reshape_307*
validate_shape(*
T0*
_output_shapes	
:А*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias
Њ

Assign_150Assignmain/qr2/dense_2/kernel/AdamReshape_308*
use_locking(*
T0*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(
ј

Assign_151Assignmain/qr2/dense_2/kernel/Adam_1Reshape_309*
validate_shape(*
use_locking(*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
T0
µ

Assign_152Assignmain/qr2/dense_2/bias/AdamReshape_310*
use_locking(*
_output_shapes
:*
T0*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(
Ј

Assign_153Assignmain/qr2/dense_2/bias/Adam_1Reshape_311*(
_class
loc:@main/qr2/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
Є

Assign_154Assignmain/qc/dense/kernel/AdamReshape_312*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel*
use_locking(*
T0*
validate_shape(
Ї

Assign_155Assignmain/qc/dense/kernel/Adam_1Reshape_313*
_output_shapes
:	>А*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/qc/dense/kernel
∞

Assign_156Assignmain/qc/dense/bias/AdamReshape_314*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(
≤

Assign_157Assignmain/qc/dense/bias/Adam_1Reshape_315*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0*
_output_shapes	
:А*
validate_shape(
љ

Assign_158Assignmain/qc/dense_1/kernel/AdamReshape_316*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0
њ

Assign_159Assignmain/qc/dense_1/kernel/Adam_1Reshape_317*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
T0*
validate_shape(
і

Assign_160Assignmain/qc/dense_1/bias/AdamReshape_318*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
use_locking(*
T0*
validate_shape(
ґ

Assign_161Assignmain/qc/dense_1/bias/Adam_1Reshape_319*
_output_shapes	
:А*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
T0
Љ

Assign_162Assignmain/qc/dense_2/kernel/AdamReshape_320*
T0*
validate_shape(*
_output_shapes
:	А*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel
Њ

Assign_163Assignmain/qc/dense_2/kernel/Adam_1Reshape_321*
_output_shapes
:	А*
T0*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel
≥

Assign_164Assignmain/qc/dense_2/bias/AdamReshape_322*
T0*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
use_locking(
µ

Assign_165Assignmain/qc/dense_2/bias/Adam_1Reshape_323*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0
†

Assign_166Assignbeta1_power_2Reshape_324*
validate_shape(*
use_locking(*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: 
†

Assign_167Assignbeta2_power_2Reshape_325*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
validate_shape(*
use_locking(*
T0
©

Assign_168Assignentreg/soft_alpha/AdamReshape_326*
_output_shapes
: *
validate_shape(*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha
Ђ

Assign_169Assignentreg/soft_alpha/Adam_1Reshape_327*
T0*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(
†

Assign_170Assignbeta1_power_3Reshape_328*$
_class
loc:@costpen/soft_beta*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
†

Assign_171Assignbeta2_power_3Reshape_329*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
validate_shape(*
T0*
use_locking(
©

Assign_172Assigncostpen/soft_beta/AdamReshape_330*$
_class
loc:@costpen/soft_beta*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
Ђ

Assign_173Assigncostpen/soft_beta/Adam_1Reshape_331*
use_locking(*
T0*
_output_shapes
: *
validate_shape(*$
_class
loc:@costpen/soft_beta
З
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
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_fbc9e1811787415eaef372f45a0814db/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
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
–
save/SaveV2/tensor_namesConst*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0*
_output_shapes
:n
¬
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:n*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ѕ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *'
_class
loc:@save/ShardedFilename*
T0
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
T0*
N*
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
”
save/RestoreV2/tensor_namesConst*
_output_shapes
:n*
dtype0*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
≈
save/RestoreV2/shape_and_slicesConst*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:n
і
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*|
dtypesr
p2n*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
£
save/AssignAssignbeta1_powersave/RestoreV2*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias
©
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
validate_shape(*
use_locking(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
T0
®
save/Assign_2Assignbeta1_power_2save/RestoreV2:2*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*$
_class
loc:@entreg/soft_alpha
®
save/Assign_3Assignbeta1_power_3save/RestoreV2:3*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta
І
save/Assign_4Assignbeta2_powersave/RestoreV2:4*%
_class
loc:@main/pi/dense/bias*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
©
save/Assign_5Assignbeta2_power_1save/RestoreV2:5*
validate_shape(*
use_locking(*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: 
®
save/Assign_6Assignbeta2_power_2save/RestoreV2:6*$
_class
loc:@entreg/soft_alpha*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
®
save/Assign_7Assignbeta2_power_3save/RestoreV2:7*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*$
_class
loc:@costpen/soft_beta
ђ
save/Assign_8Assigncostpen/soft_betasave/RestoreV2:8*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0
±
save/Assign_9Assigncostpen/soft_beta/Adamsave/RestoreV2:9*
_output_shapes
: *
T0*$
_class
loc:@costpen/soft_beta*
validate_shape(*
use_locking(
µ
save/Assign_10Assigncostpen/soft_beta/Adam_1save/RestoreV2:10*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta*
validate_shape(*
T0
Ѓ
save/Assign_11Assignentreg/soft_alphasave/RestoreV2:11*
_output_shapes
: *
T0*
use_locking(*
validate_shape(*$
_class
loc:@entreg/soft_alpha
≥
save/Assign_12Assignentreg/soft_alpha/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
use_locking(*
T0
µ
save/Assign_13Assignentreg/soft_alpha/Adam_1save/RestoreV2:13*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(*
use_locking(
µ
save/Assign_14Assignmain/pi/dense/biassave/RestoreV2:14*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes	
:А
Ї
save/Assign_15Assignmain/pi/dense/bias/Adamsave/RestoreV2:15*
use_locking(*
_output_shapes	
:А*
validate_shape(*%
_class
loc:@main/pi/dense/bias*
T0
Љ
save/Assign_16Assignmain/pi/dense/bias/Adam_1save/RestoreV2:16*
_output_shapes	
:А*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias*
validate_shape(
љ
save/Assign_17Assignmain/pi/dense/kernelsave/RestoreV2:17*
validate_shape(*
T0*
_output_shapes
:	<А*
use_locking(*'
_class
loc:@main/pi/dense/kernel
¬
save/Assign_18Assignmain/pi/dense/kernel/Adamsave/RestoreV2:18*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	<А*'
_class
loc:@main/pi/dense/kernel
ƒ
save/Assign_19Assignmain/pi/dense/kernel/Adam_1save/RestoreV2:19*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А*
T0*
use_locking(
є
save/Assign_20Assignmain/pi/dense_1/biassave/RestoreV2:20*
T0*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
_output_shapes	
:А
Њ
save/Assign_21Assignmain/pi/dense_1/bias/Adamsave/RestoreV2:21*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А*
T0
ј
save/Assign_22Assignmain/pi/dense_1/bias/Adam_1save/RestoreV2:22*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
¬
save/Assign_23Assignmain/pi/dense_1/kernelsave/RestoreV2:23* 
_output_shapes
:
АА*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
use_locking(*
T0
«
save/Assign_24Assignmain/pi/dense_1/kernel/Adamsave/RestoreV2:24*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(*
T0*
validate_shape(
…
save/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save/RestoreV2:25*
use_locking(*
T0* 
_output_shapes
:
АА*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel
Є
save/Assign_26Assignmain/pi/dense_2/biassave/RestoreV2:26*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0*
use_locking(*
validate_shape(
љ
save/Assign_27Assignmain/pi/dense_2/bias/Adamsave/RestoreV2:27*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias*
T0*
_output_shapes
:
њ
save/Assign_28Assignmain/pi/dense_2/bias/Adam_1save/RestoreV2:28*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
Ѕ
save/Assign_29Assignmain/pi/dense_2/kernelsave/RestoreV2:29*
use_locking(*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А
∆
save/Assign_30Assignmain/pi/dense_2/kernel/Adamsave/RestoreV2:30*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А
»
save/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save/RestoreV2:31*
use_locking(*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
validate_shape(
Є
save/Assign_32Assignmain/pi/dense_3/biassave/RestoreV2:32*
T0*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
_output_shapes
:*
validate_shape(
љ
save/Assign_33Assignmain/pi/dense_3/bias/Adamsave/RestoreV2:33*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias
њ
save/Assign_34Assignmain/pi/dense_3/bias/Adam_1save/RestoreV2:34*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
T0*
validate_shape(
Ѕ
save/Assign_35Assignmain/pi/dense_3/kernelsave/RestoreV2:35*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А
∆
save/Assign_36Assignmain/pi/dense_3/kernel/Adamsave/RestoreV2:36*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(*
use_locking(*
T0
»
save/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save/RestoreV2:37*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
T0*
validate_shape(
µ
save/Assign_38Assignmain/qc/dense/biassave/RestoreV2:38*
_output_shapes	
:А*
validate_shape(*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias
Ї
save/Assign_39Assignmain/qc/dense/bias/Adamsave/RestoreV2:39*
use_locking(*
T0*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
validate_shape(
Љ
save/Assign_40Assignmain/qc/dense/bias/Adam_1save/RestoreV2:40*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(
љ
save/Assign_41Assignmain/qc/dense/kernelsave/RestoreV2:41*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
T0*
_output_shapes
:	>А
¬
save/Assign_42Assignmain/qc/dense/kernel/Adamsave/RestoreV2:42*
T0*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>А*
validate_shape(
ƒ
save/Assign_43Assignmain/qc/dense/kernel/Adam_1save/RestoreV2:43*
_output_shapes
:	>А*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
T0*
use_locking(
є
save/Assign_44Assignmain/qc/dense_1/biassave/RestoreV2:44*
_output_shapes	
:А*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
validate_shape(*
T0
Њ
save/Assign_45Assignmain/qc/dense_1/bias/Adamsave/RestoreV2:45*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А
ј
save/Assign_46Assignmain/qc/dense_1/bias/Adam_1save/RestoreV2:46*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А
¬
save/Assign_47Assignmain/qc/dense_1/kernelsave/RestoreV2:47*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel
«
save/Assign_48Assignmain/qc/dense_1/kernel/Adamsave/RestoreV2:48*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
T0*
validate_shape(*
use_locking(
…
save/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save/RestoreV2:49*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА*
T0*
use_locking(
Є
save/Assign_50Assignmain/qc/dense_2/biassave/RestoreV2:50*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(
љ
save/Assign_51Assignmain/qc/dense_2/bias/Adamsave/RestoreV2:51*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
:
њ
save/Assign_52Assignmain/qc/dense_2/bias/Adam_1save/RestoreV2:52*
validate_shape(*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
use_locking(
Ѕ
save/Assign_53Assignmain/qc/dense_2/kernelsave/RestoreV2:53*
_output_shapes
:	А*
T0*)
_class
loc:@main/qc/dense_2/kernel*
validate_shape(*
use_locking(
∆
save/Assign_54Assignmain/qc/dense_2/kernel/Adamsave/RestoreV2:54*
validate_shape(*
use_locking(*
_output_shapes
:	А*
T0*)
_class
loc:@main/qc/dense_2/kernel
»
save/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save/RestoreV2:55*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А*
use_locking(*
T0*
validate_shape(
Ј
save/Assign_56Assignmain/qr1/dense/biassave/RestoreV2:56*
T0*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
use_locking(
Љ
save/Assign_57Assignmain/qr1/dense/bias/Adamsave/RestoreV2:57*
use_locking(*
_output_shapes	
:А*
T0*
validate_shape(*&
_class
loc:@main/qr1/dense/bias
Њ
save/Assign_58Assignmain/qr1/dense/bias/Adam_1save/RestoreV2:58*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
validate_shape(*
T0
њ
save/Assign_59Assignmain/qr1/dense/kernelsave/RestoreV2:59*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel
ƒ
save/Assign_60Assignmain/qr1/dense/kernel/Adamsave/RestoreV2:60*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
use_locking(*
T0
∆
save/Assign_61Assignmain/qr1/dense/kernel/Adam_1save/RestoreV2:61*
validate_shape(*
_output_shapes
:	>А*
T0*
use_locking(*(
_class
loc:@main/qr1/dense/kernel
ї
save/Assign_62Assignmain/qr1/dense_1/biassave/RestoreV2:62*
validate_shape(*
use_locking(*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
T0
ј
save/Assign_63Assignmain/qr1/dense_1/bias/Adamsave/RestoreV2:63*
validate_shape(*
T0*
_output_shapes	
:А*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias
¬
save/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save/RestoreV2:64*
T0*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(
ƒ
save/Assign_65Assignmain/qr1/dense_1/kernelsave/RestoreV2:65*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
T0*
use_locking(
…
save/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave/RestoreV2:66*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
АА
Ћ
save/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save/RestoreV2:67*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel
Ї
save/Assign_68Assignmain/qr1/dense_2/biassave/RestoreV2:68*
use_locking(*
_output_shapes
:*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
T0
њ
save/Assign_69Assignmain/qr1/dense_2/bias/Adamsave/RestoreV2:69*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ѕ
save/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save/RestoreV2:70*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:
√
save/Assign_71Assignmain/qr1/dense_2/kernelsave/RestoreV2:71*
validate_shape(*
_output_shapes
:	А**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
use_locking(
»
save/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave/RestoreV2:72*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
use_locking(
 
save/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save/RestoreV2:73*
validate_shape(*
_output_shapes
:	А*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel
Ј
save/Assign_74Assignmain/qr2/dense/biassave/RestoreV2:74*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:А*
validate_shape(*
T0
Љ
save/Assign_75Assignmain/qr2/dense/bias/Adamsave/RestoreV2:75*
_output_shapes	
:А*
T0*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
use_locking(
Њ
save/Assign_76Assignmain/qr2/dense/bias/Adam_1save/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:А
њ
save/Assign_77Assignmain/qr2/dense/kernelsave/RestoreV2:77*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>А*
T0
ƒ
save/Assign_78Assignmain/qr2/dense/kernel/Adamsave/RestoreV2:78*
_output_shapes
:	>А*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense/kernel
∆
save/Assign_79Assignmain/qr2/dense/kernel/Adam_1save/RestoreV2:79*
use_locking(*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
T0*
validate_shape(
ї
save/Assign_80Assignmain/qr2/dense_1/biassave/RestoreV2:80*
_output_shapes	
:А*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias
ј
save/Assign_81Assignmain/qr2/dense_1/bias/Adamsave/RestoreV2:81*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А
¬
save/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save/RestoreV2:82*
_output_shapes	
:А*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
validate_shape(
ƒ
save/Assign_83Assignmain/qr2/dense_1/kernelsave/RestoreV2:83* 
_output_shapes
:
АА*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0
…
save/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave/RestoreV2:84*
T0* 
_output_shapes
:
АА*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(
Ћ
save/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save/RestoreV2:85**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
T0*
use_locking(*
validate_shape(
Ї
save/Assign_86Assignmain/qr2/dense_2/biassave/RestoreV2:86*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
њ
save/Assign_87Assignmain/qr2/dense_2/bias/Adamsave/RestoreV2:87*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
_output_shapes
:
Ѕ
save/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save/RestoreV2:88*
T0*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(
√
save/Assign_89Assignmain/qr2/dense_2/kernelsave/RestoreV2:89**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	А
»
save/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave/RestoreV2:90**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0
 
save/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save/RestoreV2:91*
validate_shape(*
_output_shapes
:	А*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
T0
є
save/Assign_92Assigntarget/qc/dense/biassave/RestoreV2:92*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(*
T0
Ѕ
save/Assign_93Assigntarget/qc/dense/kernelsave/RestoreV2:93*
validate_shape(*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>А*
use_locking(
љ
save/Assign_94Assigntarget/qc/dense_1/biassave/RestoreV2:94*
T0*
use_locking(*)
_class
loc:@target/qc/dense_1/bias*
validate_shape(*
_output_shapes	
:А
∆
save/Assign_95Assigntarget/qc/dense_1/kernelsave/RestoreV2:95*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*+
_class!
loc:@target/qc/dense_1/kernel
Љ
save/Assign_96Assigntarget/qc/dense_2/biassave/RestoreV2:96*
use_locking(*
_output_shapes
:*
validate_shape(*
T0*)
_class
loc:@target/qc/dense_2/bias
≈
save/Assign_97Assigntarget/qc/dense_2/kernelsave/RestoreV2:97*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	А
ї
save/Assign_98Assigntarget/qr1/dense/biassave/RestoreV2:98*(
_class
loc:@target/qr1/dense/bias*
use_locking(*
T0*
_output_shapes	
:А*
validate_shape(
√
save/Assign_99Assigntarget/qr1/dense/kernelsave/RestoreV2:99*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>А*
T0
Ѕ
save/Assign_100Assigntarget/qr1/dense_1/biassave/RestoreV2:100*
validate_shape(*
_output_shapes	
:А**
_class 
loc:@target/qr1/dense_1/bias*
T0*
use_locking(
 
save/Assign_101Assigntarget/qr1/dense_1/kernelsave/RestoreV2:101*
use_locking(*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
validate_shape(* 
_output_shapes
:
АА
ј
save/Assign_102Assigntarget/qr1/dense_2/biassave/RestoreV2:102*
T0**
_class 
loc:@target/qr1/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
…
save/Assign_103Assigntarget/qr1/dense_2/kernelsave/RestoreV2:103*
_output_shapes
:	А*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@target/qr1/dense_2/kernel
љ
save/Assign_104Assigntarget/qr2/dense/biassave/RestoreV2:104*(
_class
loc:@target/qr2/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
≈
save/Assign_105Assigntarget/qr2/dense/kernelsave/RestoreV2:105*
T0*
use_locking(*
validate_shape(**
_class 
loc:@target/qr2/dense/kernel*
_output_shapes
:	>А
Ѕ
save/Assign_106Assigntarget/qr2/dense_1/biassave/RestoreV2:106*
use_locking(*
validate_shape(*
_output_shapes	
:А**
_class 
loc:@target/qr2/dense_1/bias*
T0
 
save/Assign_107Assigntarget/qr2/dense_1/kernelsave/RestoreV2:107*,
_class"
 loc:@target/qr2/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
T0*
validate_shape(
ј
save/Assign_108Assigntarget/qr2/dense_2/biassave/RestoreV2:108*
_output_shapes
:*
T0**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
validate_shape(
…
save/Assign_109Assigntarget/qr2/dense_2/kernelsave/RestoreV2:109*
_output_shapes
:	А*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
T0
ж
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
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
Ж
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_c307e418998145b9b777d02eaf17eb52/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
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
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
“
save_1/SaveV2/tensor_namesConst*
dtype0*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes
:n
ƒ
save_1/SaveV2/shape_and_slicesConst*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:n*
dtype0
„
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename*
T0
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
_output_shapes
:*

axis *
N
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
’
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:n*
dtype0*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
«
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:n*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Љ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*|
dtypesr
p2n*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
І
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(
≠
save_1/Assign_1Assignbeta1_power_1save_1/RestoreV2:1*
use_locking(*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
T0*
_output_shapes
: 
ђ
save_1/Assign_2Assignbeta1_power_2save_1/RestoreV2:2*$
_class
loc:@entreg/soft_alpha*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
ђ
save_1/Assign_3Assignbeta1_power_3save_1/RestoreV2:3*
T0*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(
Ђ
save_1/Assign_4Assignbeta2_powersave_1/RestoreV2:4*
validate_shape(*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
use_locking(
≠
save_1/Assign_5Assignbeta2_power_1save_1/RestoreV2:5*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias
ђ
save_1/Assign_6Assignbeta2_power_2save_1/RestoreV2:6*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
ђ
save_1/Assign_7Assignbeta2_power_3save_1/RestoreV2:7*
T0*
validate_shape(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
use_locking(
∞
save_1/Assign_8Assigncostpen/soft_betasave_1/RestoreV2:8*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
µ
save_1/Assign_9Assigncostpen/soft_beta/Adamsave_1/RestoreV2:9*
use_locking(*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta*
T0
є
save_1/Assign_10Assigncostpen/soft_beta/Adam_1save_1/RestoreV2:10*
T0*
use_locking(*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: 
≤
save_1/Assign_11Assignentreg/soft_alphasave_1/RestoreV2:11*$
_class
loc:@entreg/soft_alpha*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
Ј
save_1/Assign_12Assignentreg/soft_alpha/Adamsave_1/RestoreV2:12*
use_locking(*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
T0
є
save_1/Assign_13Assignentreg/soft_alpha/Adam_1save_1/RestoreV2:13*
validate_shape(*
use_locking(*
T0*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
є
save_1/Assign_14Assignmain/pi/dense/biassave_1/RestoreV2:14*
_output_shapes	
:А*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias*
T0
Њ
save_1/Assign_15Assignmain/pi/dense/bias/Adamsave_1/RestoreV2:15*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А
ј
save_1/Assign_16Assignmain/pi/dense/bias/Adam_1save_1/RestoreV2:16*
_output_shapes	
:А*
T0*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias
Ѕ
save_1/Assign_17Assignmain/pi/dense/kernelsave_1/RestoreV2:17*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
T0*
_output_shapes
:	<А
∆
save_1/Assign_18Assignmain/pi/dense/kernel/Adamsave_1/RestoreV2:18*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	<А*'
_class
loc:@main/pi/dense/kernel
»
save_1/Assign_19Assignmain/pi/dense/kernel/Adam_1save_1/RestoreV2:19*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<А*
validate_shape(
љ
save_1/Assign_20Assignmain/pi/dense_1/biassave_1/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
_output_shapes	
:А*
validate_shape(*
T0
¬
save_1/Assign_21Assignmain/pi/dense_1/bias/Adamsave_1/RestoreV2:21*
validate_shape(*
T0*
_output_shapes	
:А*'
_class
loc:@main/pi/dense_1/bias*
use_locking(
ƒ
save_1/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_1/RestoreV2:22*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:А
∆
save_1/Assign_23Assignmain/pi/dense_1/kernelsave_1/RestoreV2:23* 
_output_shapes
:
АА*
T0*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(
Ћ
save_1/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_1/RestoreV2:24*
T0* 
_output_shapes
:
АА*)
_class
loc:@main/pi/dense_1/kernel*
use_locking(*
validate_shape(
Ќ
save_1/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_1/RestoreV2:25*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
АА*)
_class
loc:@main/pi/dense_1/kernel
Љ
save_1/Assign_26Assignmain/pi/dense_2/biassave_1/RestoreV2:26*
use_locking(*
_output_shapes
:*
T0*'
_class
loc:@main/pi/dense_2/bias*
validate_shape(
Ѕ
save_1/Assign_27Assignmain/pi/dense_2/bias/Adamsave_1/RestoreV2:27*
validate_shape(*
use_locking(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias*
T0
√
save_1/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_1/RestoreV2:28*
use_locking(*
T0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
validate_shape(
≈
save_1/Assign_29Assignmain/pi/dense_2/kernelsave_1/RestoreV2:29*
T0*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
use_locking(*
validate_shape(
 
save_1/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_1/RestoreV2:30*
use_locking(*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
T0*
validate_shape(
ћ
save_1/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_1/RestoreV2:31*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
T0*
use_locking(
Љ
save_1/Assign_32Assignmain/pi/dense_3/biassave_1/RestoreV2:32*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
Ѕ
save_1/Assign_33Assignmain/pi/dense_3/bias/Adamsave_1/RestoreV2:33*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
T0
√
save_1/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_1/RestoreV2:34*
T0*
use_locking(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(
≈
save_1/Assign_35Assignmain/pi/dense_3/kernelsave_1/RestoreV2:35*
_output_shapes
:	А*
validate_shape(*
T0*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel
 
save_1/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_1/RestoreV2:36*
T0*
_output_shapes
:	А*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(
ћ
save_1/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_1/RestoreV2:37*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
_output_shapes
:	А*
validate_shape(*
T0
є
save_1/Assign_38Assignmain/qc/dense/biassave_1/RestoreV2:38*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
Њ
save_1/Assign_39Assignmain/qc/dense/bias/Adamsave_1/RestoreV2:39*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:А
ј
save_1/Assign_40Assignmain/qc/dense/bias/Adam_1save_1/RestoreV2:40*
_output_shapes	
:А*
validate_shape(*
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias
Ѕ
save_1/Assign_41Assignmain/qc/dense/kernelsave_1/RestoreV2:41*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>А
∆
save_1/Assign_42Assignmain/qc/dense/kernel/Adamsave_1/RestoreV2:42*
T0*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>А
»
save_1/Assign_43Assignmain/qc/dense/kernel/Adam_1save_1/RestoreV2:43*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
T0*
_output_shapes
:	>А
љ
save_1/Assign_44Assignmain/qc/dense_1/biassave_1/RestoreV2:44*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
T0
¬
save_1/Assign_45Assignmain/qc/dense_1/bias/Adamsave_1/RestoreV2:45*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias*
T0*
_output_shapes	
:А
ƒ
save_1/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_1/RestoreV2:46*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias
∆
save_1/Assign_47Assignmain/qc/dense_1/kernelsave_1/RestoreV2:47* 
_output_shapes
:
АА*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(*
T0
Ћ
save_1/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_1/RestoreV2:48*
T0* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(*
validate_shape(
Ќ
save_1/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_1/RestoreV2:49*
T0*)
_class
loc:@main/qc/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
validate_shape(
Љ
save_1/Assign_50Assignmain/qc/dense_2/biassave_1/RestoreV2:50*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
use_locking(*
T0
Ѕ
save_1/Assign_51Assignmain/qc/dense_2/bias/Adamsave_1/RestoreV2:51*
use_locking(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0*
validate_shape(
√
save_1/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_1/RestoreV2:52*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:
≈
save_1/Assign_53Assignmain/qc/dense_2/kernelsave_1/RestoreV2:53*
T0*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А
 
save_1/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_1/RestoreV2:54*
T0*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
validate_shape(
ћ
save_1/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_1/RestoreV2:55*
_output_shapes
:	А*
T0*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
validate_shape(
ї
save_1/Assign_56Assignmain/qr1/dense/biassave_1/RestoreV2:56*
T0*&
_class
loc:@main/qr1/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ј
save_1/Assign_57Assignmain/qr1/dense/bias/Adamsave_1/RestoreV2:57*&
_class
loc:@main/qr1/dense/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
¬
save_1/Assign_58Assignmain/qr1/dense/bias/Adam_1save_1/RestoreV2:58*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
√
save_1/Assign_59Assignmain/qr1/dense/kernelsave_1/RestoreV2:59*
T0*
use_locking(*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
validate_shape(
»
save_1/Assign_60Assignmain/qr1/dense/kernel/Adamsave_1/RestoreV2:60*
T0*
validate_shape(*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
use_locking(
 
save_1/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_1/RestoreV2:61*
validate_shape(*(
_class
loc:@main/qr1/dense/kernel*
T0*
use_locking(*
_output_shapes
:	>А
њ
save_1/Assign_62Assignmain/qr1/dense_1/biassave_1/RestoreV2:62*
T0*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(*
use_locking(*
_output_shapes	
:А
ƒ
save_1/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_1/RestoreV2:63*
validate_shape(*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(
∆
save_1/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_1/RestoreV2:64*(
_class
loc:@main/qr1/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
»
save_1/Assign_65Assignmain/qr1/dense_1/kernelsave_1/RestoreV2:65**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0
Ќ
save_1/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_1/RestoreV2:66* 
_output_shapes
:
АА*
T0*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(
ѕ
save_1/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_1/RestoreV2:67*
use_locking(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
T0
Њ
save_1/Assign_68Assignmain/qr1/dense_2/biassave_1/RestoreV2:68*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
_output_shapes
:
√
save_1/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_1/RestoreV2:69*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
≈
save_1/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_1/RestoreV2:70*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
validate_shape(
«
save_1/Assign_71Assignmain/qr1/dense_2/kernelsave_1/RestoreV2:71**
_class 
loc:@main/qr1/dense_2/kernel*
_output_shapes
:	А*
use_locking(*
T0*
validate_shape(
ћ
save_1/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_1/RestoreV2:72**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А
ќ
save_1/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_1/RestoreV2:73*
_output_shapes
:	А*
validate_shape(*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(
ї
save_1/Assign_74Assignmain/qr2/dense/biassave_1/RestoreV2:74*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А
ј
save_1/Assign_75Assignmain/qr2/dense/bias/Adamsave_1/RestoreV2:75*
_output_shapes	
:А*
T0*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(
¬
save_1/Assign_76Assignmain/qr2/dense/bias/Adam_1save_1/RestoreV2:76*
T0*
validate_shape(*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
_output_shapes	
:А
√
save_1/Assign_77Assignmain/qr2/dense/kernelsave_1/RestoreV2:77*
T0*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
_output_shapes
:	>А*
use_locking(
»
save_1/Assign_78Assignmain/qr2/dense/kernel/Adamsave_1/RestoreV2:78*
validate_shape(*
use_locking(*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
T0
 
save_1/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_1/RestoreV2:79*
use_locking(*
_output_shapes
:	>А*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
T0
њ
save_1/Assign_80Assignmain/qr2/dense_1/biassave_1/RestoreV2:80*
_output_shapes	
:А*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(
ƒ
save_1/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_1/RestoreV2:81*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А
∆
save_1/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_1/RestoreV2:82*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias
»
save_1/Assign_83Assignmain/qr2/dense_1/kernelsave_1/RestoreV2:83*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(*
T0
Ќ
save_1/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_1/RestoreV2:84*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_1/kernel
ѕ
save_1/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_1/RestoreV2:85*
use_locking(**
_class 
loc:@main/qr2/dense_1/kernel*
T0* 
_output_shapes
:
АА*
validate_shape(
Њ
save_1/Assign_86Assignmain/qr2/dense_2/biassave_1/RestoreV2:86*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(
√
save_1/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_1/RestoreV2:87*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
T0*
use_locking(
≈
save_1/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_1/RestoreV2:88*
T0*
use_locking(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(
«
save_1/Assign_89Assignmain/qr2/dense_2/kernelsave_1/RestoreV2:89**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
use_locking(*
T0
ћ
save_1/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_1/RestoreV2:90**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0
ќ
save_1/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_1/RestoreV2:91*
_output_shapes
:	А*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
T0
љ
save_1/Assign_92Assigntarget/qc/dense/biassave_1/RestoreV2:92*
T0*'
_class
loc:@target/qc/dense/bias*
_output_shapes	
:А*
validate_shape(*
use_locking(
≈
save_1/Assign_93Assigntarget/qc/dense/kernelsave_1/RestoreV2:93*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	>А*)
_class
loc:@target/qc/dense/kernel
Ѕ
save_1/Assign_94Assigntarget/qc/dense_1/biassave_1/RestoreV2:94*
use_locking(*
_output_shapes	
:А*
validate_shape(*)
_class
loc:@target/qc/dense_1/bias*
T0
 
save_1/Assign_95Assigntarget/qc/dense_1/kernelsave_1/RestoreV2:95* 
_output_shapes
:
АА*+
_class!
loc:@target/qc/dense_1/kernel*
validate_shape(*
T0*
use_locking(
ј
save_1/Assign_96Assigntarget/qc/dense_2/biassave_1/RestoreV2:96*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
…
save_1/Assign_97Assigntarget/qc/dense_2/kernelsave_1/RestoreV2:97*
use_locking(*
T0*
_output_shapes
:	А*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(
њ
save_1/Assign_98Assigntarget/qr1/dense/biassave_1/RestoreV2:98*
use_locking(*(
_class
loc:@target/qr1/dense/bias*
T0*
validate_shape(*
_output_shapes	
:А
«
save_1/Assign_99Assigntarget/qr1/dense/kernelsave_1/RestoreV2:99*
validate_shape(**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>А*
T0*
use_locking(
≈
save_1/Assign_100Assigntarget/qr1/dense_1/biassave_1/RestoreV2:100**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
ќ
save_1/Assign_101Assigntarget/qr1/dense_1/kernelsave_1/RestoreV2:101*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*
T0*,
_class"
 loc:@target/qr1/dense_1/kernel
ƒ
save_1/Assign_102Assigntarget/qr1/dense_2/biassave_1/RestoreV2:102*
validate_shape(*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@target/qr1/dense_2/bias
Ќ
save_1/Assign_103Assigntarget/qr1/dense_2/kernelsave_1/RestoreV2:103*
_output_shapes
:	А*
validate_shape(*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
use_locking(
Ѕ
save_1/Assign_104Assigntarget/qr2/dense/biassave_1/RestoreV2:104*
use_locking(*(
_class
loc:@target/qr2/dense/bias*
validate_shape(*
_output_shapes	
:А*
T0
…
save_1/Assign_105Assigntarget/qr2/dense/kernelsave_1/RestoreV2:105*
T0*
_output_shapes
:	>А*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
validate_shape(
≈
save_1/Assign_106Assigntarget/qr2/dense_1/biassave_1/RestoreV2:106*
_output_shapes	
:А**
_class 
loc:@target/qr2/dense_1/bias*
T0*
validate_shape(*
use_locking(
ќ
save_1/Assign_107Assigntarget/qr2/dense_1/kernelsave_1/RestoreV2:107*
use_locking(*
T0*
validate_shape(* 
_output_shapes
:
АА*,
_class"
 loc:@target/qr2/dense_1/kernel
ƒ
save_1/Assign_108Assigntarget/qr2/dense_2/biassave_1/RestoreV2:108**
_class 
loc:@target/qr2/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
Ќ
save_1/Assign_109Assigntarget/qr2/dense_2/kernelsave_1/RestoreV2:109*
validate_shape(*
_output_shapes
:	А*
T0*
use_locking(*,
_class"
 loc:@target/qr2/dense_2/kernel
ƒ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
shape: *
_output_shapes
: 
Ж
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_5be83d7cbe394747b3b44211c5500b8c/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
S
save_2/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_2/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
Е
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
“
save_2/SaveV2/tensor_namesConst*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0*
_output_shapes
:n
ƒ
save_2/SaveV2/shape_and_slicesConst*
_output_shapes
:n*
dtype0*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
„
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n
Щ
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: *
T0
£
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
В
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
’
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:n*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
«
!save_2/RestoreV2/shape_and_slicesConst*
dtype0*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:n
Љ
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*|
dtypesr
p2n
І
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
validate_shape(*
_output_shapes
: *
T0*%
_class
loc:@main/pi/dense/bias*
use_locking(
≠
save_2/Assign_1Assignbeta1_power_1save_2/RestoreV2:1*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
validate_shape(*
T0*
use_locking(
ђ
save_2/Assign_2Assignbeta1_power_2save_2/RestoreV2:2*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
use_locking(*
T0
ђ
save_2/Assign_3Assignbeta1_power_3save_2/RestoreV2:3*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0*
use_locking(*
validate_shape(
Ђ
save_2/Assign_4Assignbeta2_powersave_2/RestoreV2:4*
T0*%
_class
loc:@main/pi/dense/bias*
_output_shapes
: *
use_locking(*
validate_shape(
≠
save_2/Assign_5Assignbeta2_power_1save_2/RestoreV2:5*
T0*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking(*
validate_shape(
ђ
save_2/Assign_6Assignbeta2_power_2save_2/RestoreV2:6*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha
ђ
save_2/Assign_7Assignbeta2_power_3save_2/RestoreV2:7*
validate_shape(*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0
∞
save_2/Assign_8Assigncostpen/soft_betasave_2/RestoreV2:8*$
_class
loc:@costpen/soft_beta*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
µ
save_2/Assign_9Assigncostpen/soft_beta/Adamsave_2/RestoreV2:9*$
_class
loc:@costpen/soft_beta*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
є
save_2/Assign_10Assigncostpen/soft_beta/Adam_1save_2/RestoreV2:10*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*$
_class
loc:@costpen/soft_beta
≤
save_2/Assign_11Assignentreg/soft_alphasave_2/RestoreV2:11*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: *
validate_shape(
Ј
save_2/Assign_12Assignentreg/soft_alpha/Adamsave_2/RestoreV2:12*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha
є
save_2/Assign_13Assignentreg/soft_alpha/Adam_1save_2/RestoreV2:13*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*$
_class
loc:@entreg/soft_alpha
є
save_2/Assign_14Assignmain/pi/dense/biassave_2/RestoreV2:14*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А*
use_locking(
Њ
save_2/Assign_15Assignmain/pi/dense/bias/Adamsave_2/RestoreV2:15*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias
ј
save_2/Assign_16Assignmain/pi/dense/bias/Adam_1save_2/RestoreV2:16*%
_class
loc:@main/pi/dense/bias*
_output_shapes	
:А*
use_locking(*
validate_shape(*
T0
Ѕ
save_2/Assign_17Assignmain/pi/dense/kernelsave_2/RestoreV2:17*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	<А*'
_class
loc:@main/pi/dense/kernel
∆
save_2/Assign_18Assignmain/pi/dense/kernel/Adamsave_2/RestoreV2:18*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
_output_shapes
:	<А*
T0*
validate_shape(
»
save_2/Assign_19Assignmain/pi/dense/kernel/Adam_1save_2/RestoreV2:19*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
T0*
_output_shapes
:	<А*
validate_shape(
љ
save_2/Assign_20Assignmain/pi/dense_1/biassave_2/RestoreV2:20*
validate_shape(*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
¬
save_2/Assign_21Assignmain/pi/dense_1/bias/Adamsave_2/RestoreV2:21*
T0*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А*
validate_shape(
ƒ
save_2/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_2/RestoreV2:22*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А
∆
save_2/Assign_23Assignmain/pi/dense_1/kernelsave_2/RestoreV2:23*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
T0
Ћ
save_2/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_2/RestoreV2:24* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/pi/dense_1/kernel
Ќ
save_2/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_2/RestoreV2:25*
use_locking(* 
_output_shapes
:
АА*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(*
T0
Љ
save_2/Assign_26Assignmain/pi/dense_2/biassave_2/RestoreV2:26*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias
Ѕ
save_2/Assign_27Assignmain/pi/dense_2/bias/Adamsave_2/RestoreV2:27*
use_locking(*
T0*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/pi/dense_2/bias
√
save_2/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_2/RestoreV2:28*
T0*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
≈
save_2/Assign_29Assignmain/pi/dense_2/kernelsave_2/RestoreV2:29*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
T0*
use_locking(*
validate_shape(
 
save_2/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_2/RestoreV2:30*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	А
ћ
save_2/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_2/RestoreV2:31*
T0*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
Љ
save_2/Assign_32Assignmain/pi/dense_3/biassave_2/RestoreV2:32*
validate_shape(*
T0*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
use_locking(
Ѕ
save_2/Assign_33Assignmain/pi/dense_3/bias/Adamsave_2/RestoreV2:33*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_3/bias
√
save_2/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_2/RestoreV2:34*
validate_shape(*'
_class
loc:@main/pi/dense_3/bias*
use_locking(*
T0*
_output_shapes
:
≈
save_2/Assign_35Assignmain/pi/dense_3/kernelsave_2/RestoreV2:35*)
_class
loc:@main/pi/dense_3/kernel*
T0*
validate_shape(*
_output_shapes
:	А*
use_locking(
 
save_2/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_2/RestoreV2:36*
T0*
use_locking(*
_output_shapes
:	А*
validate_shape(*)
_class
loc:@main/pi/dense_3/kernel
ћ
save_2/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_2/RestoreV2:37*
_output_shapes
:	А*
T0*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
validate_shape(
є
save_2/Assign_38Assignmain/qc/dense/biassave_2/RestoreV2:38*
use_locking(*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
validate_shape(*
T0
Њ
save_2/Assign_39Assignmain/qc/dense/bias/Adamsave_2/RestoreV2:39*
_output_shapes	
:А*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
T0
ј
save_2/Assign_40Assignmain/qc/dense/bias/Adam_1save_2/RestoreV2:40*%
_class
loc:@main/qc/dense/bias*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(
Ѕ
save_2/Assign_41Assignmain/qc/dense/kernelsave_2/RestoreV2:41*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>А
∆
save_2/Assign_42Assignmain/qc/dense/kernel/Adamsave_2/RestoreV2:42*
validate_shape(*
_output_shapes
:	>А*
use_locking(*
T0*'
_class
loc:@main/qc/dense/kernel
»
save_2/Assign_43Assignmain/qc/dense/kernel/Adam_1save_2/RestoreV2:43*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
validate_shape(*
_output_shapes
:	>А*
T0
љ
save_2/Assign_44Assignmain/qc/dense_1/biassave_2/RestoreV2:44*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(*'
_class
loc:@main/qc/dense_1/bias
¬
save_2/Assign_45Assignmain/qc/dense_1/bias/Adamsave_2/RestoreV2:45*
validate_shape(*
T0*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
_output_shapes	
:А
ƒ
save_2/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_2/RestoreV2:46*
use_locking(*
T0*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
validate_shape(
∆
save_2/Assign_47Assignmain/qc/dense_1/kernelsave_2/RestoreV2:47*
validate_shape(*
use_locking(*
T0* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel
Ћ
save_2/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_2/RestoreV2:48*
use_locking(* 
_output_shapes
:
АА*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(*
T0
Ќ
save_2/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_2/RestoreV2:49*
T0* 
_output_shapes
:
АА*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(
Љ
save_2/Assign_50Assignmain/qc/dense_2/biassave_2/RestoreV2:50*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Ѕ
save_2/Assign_51Assignmain/qc/dense_2/bias/Adamsave_2/RestoreV2:51*
T0*'
_class
loc:@main/qc/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:
√
save_2/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_2/RestoreV2:52*
validate_shape(*
_output_shapes
:*'
_class
loc:@main/qc/dense_2/bias*
T0*
use_locking(
≈
save_2/Assign_53Assignmain/qc/dense_2/kernelsave_2/RestoreV2:53*
T0*
_output_shapes
:	А*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel
 
save_2/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_2/RestoreV2:54*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(*
_output_shapes
:	А*
T0
ћ
save_2/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_2/RestoreV2:55*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А*
T0*
validate_shape(
ї
save_2/Assign_56Assignmain/qr1/dense/biassave_2/RestoreV2:56*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
ј
save_2/Assign_57Assignmain/qr1/dense/bias/Adamsave_2/RestoreV2:57*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
¬
save_2/Assign_58Assignmain/qr1/dense/bias/Adam_1save_2/RestoreV2:58*&
_class
loc:@main/qr1/dense/bias*
use_locking(*
_output_shapes	
:А*
validate_shape(*
T0
√
save_2/Assign_59Assignmain/qr1/dense/kernelsave_2/RestoreV2:59*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
T0*
use_locking(*
validate_shape(
»
save_2/Assign_60Assignmain/qr1/dense/kernel/Adamsave_2/RestoreV2:60*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А
 
save_2/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_2/RestoreV2:61*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
T0*
_output_shapes
:	>А*
use_locking(
њ
save_2/Assign_62Assignmain/qr1/dense_1/biassave_2/RestoreV2:62*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:А
ƒ
save_2/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_2/RestoreV2:63*
T0*
use_locking(*
_output_shapes	
:А*(
_class
loc:@main/qr1/dense_1/bias*
validate_shape(
∆
save_2/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_2/RestoreV2:64*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(
»
save_2/Assign_65Assignmain/qr1/dense_1/kernelsave_2/RestoreV2:65**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(*
validate_shape(*
T0* 
_output_shapes
:
АА
Ќ
save_2/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_2/RestoreV2:66*
validate_shape(*
T0*
use_locking(* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel
ѕ
save_2/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_2/RestoreV2:67*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
T0*
use_locking(
Њ
save_2/Assign_68Assignmain/qr1/dense_2/biassave_2/RestoreV2:68*
_output_shapes
:*
T0*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
validate_shape(
√
save_2/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_2/RestoreV2:69*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
≈
save_2/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_2/RestoreV2:70*
T0*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
validate_shape(
«
save_2/Assign_71Assignmain/qr1/dense_2/kernelsave_2/RestoreV2:71*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0**
_class 
loc:@main/qr1/dense_2/kernel
ћ
save_2/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_2/RestoreV2:72*
T0*
_output_shapes
:	А*
validate_shape(*
use_locking(**
_class 
loc:@main/qr1/dense_2/kernel
ќ
save_2/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_2/RestoreV2:73**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes
:	А
ї
save_2/Assign_74Assignmain/qr2/dense/biassave_2/RestoreV2:74*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А
ј
save_2/Assign_75Assignmain/qr2/dense/bias/Adamsave_2/RestoreV2:75*
_output_shapes	
:А*
use_locking(*
validate_shape(*&
_class
loc:@main/qr2/dense/bias*
T0
¬
save_2/Assign_76Assignmain/qr2/dense/bias/Adam_1save_2/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
_output_shapes	
:А*
validate_shape(*
T0
√
save_2/Assign_77Assignmain/qr2/dense/kernelsave_2/RestoreV2:77*
use_locking(*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(
»
save_2/Assign_78Assignmain/qr2/dense/kernel/Adamsave_2/RestoreV2:78*
validate_shape(*
_output_shapes
:	>А*
T0*
use_locking(*(
_class
loc:@main/qr2/dense/kernel
 
save_2/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_2/RestoreV2:79*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
_output_shapes
:	>А*
T0
њ
save_2/Assign_80Assignmain/qr2/dense_1/biassave_2/RestoreV2:80*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А*
validate_shape(
ƒ
save_2/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_2/RestoreV2:81*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(
∆
save_2/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_2/RestoreV2:82*
validate_shape(*
use_locking(*(
_class
loc:@main/qr2/dense_1/bias*
T0*
_output_shapes	
:А
»
save_2/Assign_83Assignmain/qr2/dense_1/kernelsave_2/RestoreV2:83*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
АА
Ќ
save_2/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_2/RestoreV2:84*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
АА
ѕ
save_2/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_2/RestoreV2:85* 
_output_shapes
:
АА**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
T0*
use_locking(
Њ
save_2/Assign_86Assignmain/qr2/dense_2/biassave_2/RestoreV2:86*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
T0
√
save_2/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_2/RestoreV2:87*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias
≈
save_2/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_2/RestoreV2:88*
validate_shape(*
T0*
use_locking(*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
«
save_2/Assign_89Assignmain/qr2/dense_2/kernelsave_2/RestoreV2:89**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	А
ћ
save_2/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_2/RestoreV2:90**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А
ќ
save_2/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_2/RestoreV2:91*
T0*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
use_locking(*
validate_shape(
љ
save_2/Assign_92Assigntarget/qc/dense/biassave_2/RestoreV2:92*
use_locking(*
T0*
_output_shapes	
:А*
validate_shape(*'
_class
loc:@target/qc/dense/bias
≈
save_2/Assign_93Assigntarget/qc/dense/kernelsave_2/RestoreV2:93*
_output_shapes
:	>А*
validate_shape(*)
_class
loc:@target/qc/dense/kernel*
T0*
use_locking(
Ѕ
save_2/Assign_94Assigntarget/qc/dense_1/biassave_2/RestoreV2:94*
T0*
use_locking(*
validate_shape(*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:А
 
save_2/Assign_95Assigntarget/qc/dense_1/kernelsave_2/RestoreV2:95*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@target/qc/dense_1/kernel* 
_output_shapes
:
АА
ј
save_2/Assign_96Assigntarget/qc/dense_2/biassave_2/RestoreV2:96*
use_locking(*
T0*
_output_shapes
:*)
_class
loc:@target/qc/dense_2/bias*
validate_shape(
…
save_2/Assign_97Assigntarget/qc/dense_2/kernelsave_2/RestoreV2:97*
use_locking(*+
_class!
loc:@target/qc/dense_2/kernel*
validate_shape(*
_output_shapes
:	А*
T0
њ
save_2/Assign_98Assigntarget/qr1/dense/biassave_2/RestoreV2:98*
T0*
validate_shape(*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:А*
use_locking(
«
save_2/Assign_99Assigntarget/qr1/dense/kernelsave_2/RestoreV2:99*
T0*
use_locking(**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
_output_shapes
:	>А
≈
save_2/Assign_100Assigntarget/qr1/dense_1/biassave_2/RestoreV2:100*
use_locking(*
validate_shape(*
_output_shapes	
:А**
_class 
loc:@target/qr1/dense_1/bias*
T0
ќ
save_2/Assign_101Assigntarget/qr1/dense_1/kernelsave_2/RestoreV2:101*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(
ƒ
save_2/Assign_102Assigntarget/qr1/dense_2/biassave_2/RestoreV2:102**
_class 
loc:@target/qr1/dense_2/bias*
T0*
use_locking(*
_output_shapes
:*
validate_shape(
Ќ
save_2/Assign_103Assigntarget/qr1/dense_2/kernelsave_2/RestoreV2:103*
validate_shape(*
use_locking(*
T0*,
_class"
 loc:@target/qr1/dense_2/kernel*
_output_shapes
:	А
Ѕ
save_2/Assign_104Assigntarget/qr2/dense/biassave_2/RestoreV2:104*
validate_shape(*
_output_shapes	
:А*
T0*(
_class
loc:@target/qr2/dense/bias*
use_locking(
…
save_2/Assign_105Assigntarget/qr2/dense/kernelsave_2/RestoreV2:105*
use_locking(**
_class 
loc:@target/qr2/dense/kernel*
T0*
validate_shape(*
_output_shapes
:	>А
≈
save_2/Assign_106Assigntarget/qr2/dense_1/biassave_2/RestoreV2:106*
_output_shapes	
:А*
use_locking(*
validate_shape(*
T0**
_class 
loc:@target/qr2/dense_1/bias
ќ
save_2/Assign_107Assigntarget/qr2/dense_1/kernelsave_2/RestoreV2:107*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
АА
ƒ
save_2/Assign_108Assigntarget/qr2/dense_2/biassave_2/RestoreV2:108*
validate_shape(**
_class 
loc:@target/qr2/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
Ќ
save_2/Assign_109Assigntarget/qr2/dense_2/kernelsave_2/RestoreV2:109*,
_class"
 loc:@target/qr2/dense_2/kernel*
_output_shapes
:	А*
T0*
use_locking(*
validate_shape(
ƒ
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_100^save_2/Assign_101^save_2/Assign_102^save_2/Assign_103^save_2/Assign_104^save_2/Assign_105^save_2/Assign_106^save_2/Assign_107^save_2/Assign_108^save_2/Assign_109^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38^save_2/Assign_39^save_2/Assign_4^save_2/Assign_40^save_2/Assign_41^save_2/Assign_42^save_2/Assign_43^save_2/Assign_44^save_2/Assign_45^save_2/Assign_46^save_2/Assign_47^save_2/Assign_48^save_2/Assign_49^save_2/Assign_5^save_2/Assign_50^save_2/Assign_51^save_2/Assign_52^save_2/Assign_53^save_2/Assign_54^save_2/Assign_55^save_2/Assign_56^save_2/Assign_57^save_2/Assign_58^save_2/Assign_59^save_2/Assign_6^save_2/Assign_60^save_2/Assign_61^save_2/Assign_62^save_2/Assign_63^save_2/Assign_64^save_2/Assign_65^save_2/Assign_66^save_2/Assign_67^save_2/Assign_68^save_2/Assign_69^save_2/Assign_7^save_2/Assign_70^save_2/Assign_71^save_2/Assign_72^save_2/Assign_73^save_2/Assign_74^save_2/Assign_75^save_2/Assign_76^save_2/Assign_77^save_2/Assign_78^save_2/Assign_79^save_2/Assign_8^save_2/Assign_80^save_2/Assign_81^save_2/Assign_82^save_2/Assign_83^save_2/Assign_84^save_2/Assign_85^save_2/Assign_86^save_2/Assign_87^save_2/Assign_88^save_2/Assign_89^save_2/Assign_9^save_2/Assign_90^save_2/Assign_91^save_2/Assign_92^save_2/Assign_93^save_2/Assign_94^save_2/Assign_95^save_2/Assign_96^save_2/Assign_97^save_2/Assign_98^save_2/Assign_99
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
shape: *
_output_shapes
: *
dtype0
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
shape: *
dtype0*
_output_shapes
: 
Ж
save_3/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_0f96075211214219b491c84dce3e748a/part
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
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
Е
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
“
save_3/SaveV2/tensor_namesConst*
_output_shapes
:n*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0
ƒ
save_3/SaveV2/shape_and_slicesConst*
dtype0*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:n
„
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n
Щ
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*)
_class
loc:@save_3/ShardedFilename*
T0*
_output_shapes
: 
£
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
_output_shapes
:*
N*
T0
Г
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(
В
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
T0*
_output_shapes
: 
’
save_3/RestoreV2/tensor_namesConst*
_output_shapes
:n*
dtype0*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel
«
!save_3/RestoreV2/shape_and_slicesConst*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:n
Љ
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*|
dtypesr
p2n*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
І
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
_output_shapes
: *
validate_shape(*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias
≠
save_3/Assign_1Assignbeta1_power_1save_3/RestoreV2:1*
T0*
validate_shape(*
use_locking(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias
ђ
save_3/Assign_2Assignbeta1_power_2save_3/RestoreV2:2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*$
_class
loc:@entreg/soft_alpha
ђ
save_3/Assign_3Assignbeta1_power_3save_3/RestoreV2:3*
_output_shapes
: *
validate_shape(*
T0*$
_class
loc:@costpen/soft_beta*
use_locking(
Ђ
save_3/Assign_4Assignbeta2_powersave_3/RestoreV2:4*
use_locking(*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
T0*
_output_shapes
: 
≠
save_3/Assign_5Assignbeta2_power_1save_3/RestoreV2:5*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes
: *
T0*
validate_shape(
ђ
save_3/Assign_6Assignbeta2_power_2save_3/RestoreV2:6*
use_locking(*
validate_shape(*
_output_shapes
: *
T0*$
_class
loc:@entreg/soft_alpha
ђ
save_3/Assign_7Assignbeta2_power_3save_3/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: 
∞
save_3/Assign_8Assigncostpen/soft_betasave_3/RestoreV2:8*
T0*
validate_shape(*
_output_shapes
: *
use_locking(*$
_class
loc:@costpen/soft_beta
µ
save_3/Assign_9Assigncostpen/soft_beta/Adamsave_3/RestoreV2:9*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
є
save_3/Assign_10Assigncostpen/soft_beta/Adam_1save_3/RestoreV2:10*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
T0*
use_locking(*
validate_shape(
≤
save_3/Assign_11Assignentreg/soft_alphasave_3/RestoreV2:11*
T0*
use_locking(*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: *
validate_shape(
Ј
save_3/Assign_12Assignentreg/soft_alpha/Adamsave_3/RestoreV2:12*
T0*$
_class
loc:@entreg/soft_alpha*
use_locking(*
validate_shape(*
_output_shapes
: 
є
save_3/Assign_13Assignentreg/soft_alpha/Adam_1save_3/RestoreV2:13*
use_locking(*
validate_shape(*
T0*$
_class
loc:@entreg/soft_alpha*
_output_shapes
: 
є
save_3/Assign_14Assignmain/pi/dense/biassave_3/RestoreV2:14*
_output_shapes	
:А*
T0*
use_locking(*%
_class
loc:@main/pi/dense/bias*
validate_shape(
Њ
save_3/Assign_15Assignmain/pi/dense/bias/Adamsave_3/RestoreV2:15*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias*
T0*
_output_shapes	
:А
ј
save_3/Assign_16Assignmain/pi/dense/bias/Adam_1save_3/RestoreV2:16*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
_output_shapes	
:А*
T0*
use_locking(
Ѕ
save_3/Assign_17Assignmain/pi/dense/kernelsave_3/RestoreV2:17*
_output_shapes
:	<А*
validate_shape(*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
T0
∆
save_3/Assign_18Assignmain/pi/dense/kernel/Adamsave_3/RestoreV2:18*
_output_shapes
:	<А*
validate_shape(*
T0*'
_class
loc:@main/pi/dense/kernel*
use_locking(
»
save_3/Assign_19Assignmain/pi/dense/kernel/Adam_1save_3/RestoreV2:19*'
_class
loc:@main/pi/dense/kernel*
validate_shape(*
_output_shapes
:	<А*
T0*
use_locking(
љ
save_3/Assign_20Assignmain/pi/dense_1/biassave_3/RestoreV2:20*
use_locking(*
validate_shape(*
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А
¬
save_3/Assign_21Assignmain/pi/dense_1/bias/Adamsave_3/RestoreV2:21*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/pi/dense_1/bias*
_output_shapes	
:А
ƒ
save_3/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_3/RestoreV2:22*
_output_shapes	
:А*'
_class
loc:@main/pi/dense_1/bias*
validate_shape(*
use_locking(*
T0
∆
save_3/Assign_23Assignmain/pi/dense_1/kernelsave_3/RestoreV2:23*
validate_shape(*
T0*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel* 
_output_shapes
:
АА
Ћ
save_3/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_3/RestoreV2:24*)
_class
loc:@main/pi/dense_1/kernel*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
АА
Ќ
save_3/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_3/RestoreV2:25*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*)
_class
loc:@main/pi/dense_1/kernel*
T0
Љ
save_3/Assign_26Assignmain/pi/dense_2/biassave_3/RestoreV2:26*
T0*
use_locking(*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:
Ѕ
save_3/Assign_27Assignmain/pi/dense_2/bias/Adamsave_3/RestoreV2:27*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
√
save_3/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_3/RestoreV2:28*'
_class
loc:@main/pi/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
≈
save_3/Assign_29Assignmain/pi/dense_2/kernelsave_3/RestoreV2:29*
_output_shapes
:	А*
validate_shape(*)
_class
loc:@main/pi/dense_2/kernel*
T0*
use_locking(
 
save_3/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_3/RestoreV2:30*)
_class
loc:@main/pi/dense_2/kernel*
T0*
validate_shape(*
_output_shapes
:	А*
use_locking(
ћ
save_3/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_3/RestoreV2:31*
_output_shapes
:	А*)
_class
loc:@main/pi/dense_2/kernel*
validate_shape(*
T0*
use_locking(
Љ
save_3/Assign_32Assignmain/pi/dense_3/biassave_3/RestoreV2:32*
T0*'
_class
loc:@main/pi/dense_3/bias*
_output_shapes
:*
validate_shape(*
use_locking(
Ѕ
save_3/Assign_33Assignmain/pi/dense_3/bias/Adamsave_3/RestoreV2:33*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_3/bias
√
save_3/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_3/RestoreV2:34*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
T0*
_output_shapes
:*
validate_shape(
≈
save_3/Assign_35Assignmain/pi/dense_3/kernelsave_3/RestoreV2:35*)
_class
loc:@main/pi/dense_3/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes
:	А
 
save_3/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_3/RestoreV2:36*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	А*
validate_shape(
ћ
save_3/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_3/RestoreV2:37*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
_output_shapes
:	А*
validate_shape(*
T0
є
save_3/Assign_38Assignmain/qc/dense/biassave_3/RestoreV2:38*
T0*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А*
validate_shape(*
use_locking(
Њ
save_3/Assign_39Assignmain/qc/dense/bias/Adamsave_3/RestoreV2:39*
_output_shapes	
:А*
use_locking(*
validate_shape(*%
_class
loc:@main/qc/dense/bias*
T0
ј
save_3/Assign_40Assignmain/qc/dense/bias/Adam_1save_3/RestoreV2:40*
validate_shape(*
T0*%
_class
loc:@main/qc/dense/bias*
use_locking(*
_output_shapes	
:А
Ѕ
save_3/Assign_41Assignmain/qc/dense/kernelsave_3/RestoreV2:41*
_output_shapes
:	>А*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense/kernel
∆
save_3/Assign_42Assignmain/qc/dense/kernel/Adamsave_3/RestoreV2:42*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
_output_shapes
:	>А*
T0*
use_locking(
»
save_3/Assign_43Assignmain/qc/dense/kernel/Adam_1save_3/RestoreV2:43*
_output_shapes
:	>А*
T0*
use_locking(*'
_class
loc:@main/qc/dense/kernel*
validate_shape(
љ
save_3/Assign_44Assignmain/qc/dense_1/biassave_3/RestoreV2:44*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
use_locking(*
_output_shapes	
:А
¬
save_3/Assign_45Assignmain/qc/dense_1/bias/Adamsave_3/RestoreV2:45*
_output_shapes	
:А*
validate_shape(*
use_locking(*
T0*'
_class
loc:@main/qc/dense_1/bias
ƒ
save_3/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_3/RestoreV2:46*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense_1/bias
∆
save_3/Assign_47Assignmain/qc/dense_1/kernelsave_3/RestoreV2:47*
T0*
use_locking(* 
_output_shapes
:
АА*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel
Ћ
save_3/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_3/RestoreV2:48*
use_locking(*
T0*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(
Ќ
save_3/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_3/RestoreV2:49*
T0* 
_output_shapes
:
АА*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(
Љ
save_3/Assign_50Assignmain/qc/dense_2/biassave_3/RestoreV2:50*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
Ѕ
save_3/Assign_51Assignmain/qc/dense_2/bias/Adamsave_3/RestoreV2:51*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:
√
save_3/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_3/RestoreV2:52*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*'
_class
loc:@main/qc/dense_2/bias
≈
save_3/Assign_53Assignmain/qc/dense_2/kernelsave_3/RestoreV2:53*
validate_shape(*
T0*
_output_shapes
:	А*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel
 
save_3/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_3/RestoreV2:54*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	А*
validate_shape(*
use_locking(
ћ
save_3/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_3/RestoreV2:55*
validate_shape(*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
T0*
_output_shapes
:	А
ї
save_3/Assign_56Assignmain/qr1/dense/biassave_3/RestoreV2:56*
_output_shapes	
:А*
validate_shape(*
T0*&
_class
loc:@main/qr1/dense/bias*
use_locking(
ј
save_3/Assign_57Assignmain/qr1/dense/bias/Adamsave_3/RestoreV2:57*
validate_shape(*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
_output_shapes	
:А*
T0
¬
save_3/Assign_58Assignmain/qr1/dense/bias/Adam_1save_3/RestoreV2:58*
validate_shape(*
T0*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
√
save_3/Assign_59Assignmain/qr1/dense/kernelsave_3/RestoreV2:59*
use_locking(*
T0*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
validate_shape(
»
save_3/Assign_60Assignmain/qr1/dense/kernel/Adamsave_3/RestoreV2:60*(
_class
loc:@main/qr1/dense/kernel*
_output_shapes
:	>А*
T0*
validate_shape(*
use_locking(
 
save_3/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_3/RestoreV2:61*(
_class
loc:@main/qr1/dense/kernel*
T0*
_output_shapes
:	>А*
use_locking(*
validate_shape(
њ
save_3/Assign_62Assignmain/qr1/dense_1/biassave_3/RestoreV2:62*(
_class
loc:@main/qr1/dense_1/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А
ƒ
save_3/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_3/RestoreV2:63*
validate_shape(*(
_class
loc:@main/qr1/dense_1/bias*
T0*
use_locking(*
_output_shapes	
:А
∆
save_3/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_3/RestoreV2:64*
validate_shape(*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias*
_output_shapes	
:А*
T0
»
save_3/Assign_65Assignmain/qr1/dense_1/kernelsave_3/RestoreV2:65*
T0**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
validate_shape(
Ќ
save_3/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_3/RestoreV2:66*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА
ѕ
save_3/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_3/RestoreV2:67*
T0* 
_output_shapes
:
АА**
_class 
loc:@main/qr1/dense_1/kernel*
validate_shape(*
use_locking(
Њ
save_3/Assign_68Assignmain/qr1/dense_2/biassave_3/RestoreV2:68*(
_class
loc:@main/qr1/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:*
T0
√
save_3/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_3/RestoreV2:69*(
_class
loc:@main/qr1/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
use_locking(
≈
save_3/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_3/RestoreV2:70*(
_class
loc:@main/qr1/dense_2/bias*
T0*
use_locking(*
_output_shapes
:*
validate_shape(
«
save_3/Assign_71Assignmain/qr1/dense_2/kernelsave_3/RestoreV2:71**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes
:	А*
T0
ћ
save_3/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_3/RestoreV2:72*
_output_shapes
:	А**
_class 
loc:@main/qr1/dense_2/kernel*
T0*
validate_shape(*
use_locking(
ќ
save_3/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_3/RestoreV2:73*
use_locking(*
T0**
_class 
loc:@main/qr1/dense_2/kernel*
validate_shape(*
_output_shapes
:	А
ї
save_3/Assign_74Assignmain/qr2/dense/biassave_3/RestoreV2:74*
T0*
_output_shapes	
:А*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
validate_shape(
ј
save_3/Assign_75Assignmain/qr2/dense/bias/Adamsave_3/RestoreV2:75*
T0*
_output_shapes	
:А*
validate_shape(*
use_locking(*&
_class
loc:@main/qr2/dense/bias
¬
save_3/Assign_76Assignmain/qr2/dense/bias/Adam_1save_3/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
use_locking(*
_output_shapes	
:А*
T0*
validate_shape(
√
save_3/Assign_77Assignmain/qr2/dense/kernelsave_3/RestoreV2:77*
use_locking(*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
T0
»
save_3/Assign_78Assignmain/qr2/dense/kernel/Adamsave_3/RestoreV2:78*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
_output_shapes
:	>А*
T0*
validate_shape(
 
save_3/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_3/RestoreV2:79*
use_locking(*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
validate_shape(*
T0
њ
save_3/Assign_80Assignmain/qr2/dense_1/biassave_3/RestoreV2:80*
_output_shapes	
:А*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(
ƒ
save_3/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_3/RestoreV2:81*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:А*
use_locking(
∆
save_3/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_3/RestoreV2:82*
use_locking(*
_output_shapes	
:А*(
_class
loc:@main/qr2/dense_1/bias*
T0*
validate_shape(
»
save_3/Assign_83Assignmain/qr2/dense_1/kernelsave_3/RestoreV2:83*
use_locking(*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
T0
Ќ
save_3/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_3/RestoreV2:84*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(* 
_output_shapes
:
АА
ѕ
save_3/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_3/RestoreV2:85* 
_output_shapes
:
АА*
use_locking(*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel*
T0
Њ
save_3/Assign_86Assignmain/qr2/dense_2/biassave_3/RestoreV2:86*
use_locking(*
T0*
validate_shape(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias
√
save_3/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_3/RestoreV2:87*
validate_shape(*
use_locking(*
T0*(
_class
loc:@main/qr2/dense_2/bias*
_output_shapes
:
≈
save_3/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_3/RestoreV2:88*
T0*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(
«
save_3/Assign_89Assignmain/qr2/dense_2/kernelsave_3/RestoreV2:89*
validate_shape(*
_output_shapes
:	А*
T0*
use_locking(**
_class 
loc:@main/qr2/dense_2/kernel
ћ
save_3/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_3/RestoreV2:90*
use_locking(*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
_output_shapes
:	А
ќ
save_3/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_3/RestoreV2:91*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
T0*
use_locking(*
validate_shape(
љ
save_3/Assign_92Assigntarget/qc/dense/biassave_3/RestoreV2:92*
_output_shapes	
:А*
validate_shape(*
T0*
use_locking(*'
_class
loc:@target/qc/dense/bias
≈
save_3/Assign_93Assigntarget/qc/dense/kernelsave_3/RestoreV2:93*
_output_shapes
:	>А*
use_locking(*
T0*
validate_shape(*)
_class
loc:@target/qc/dense/kernel
Ѕ
save_3/Assign_94Assigntarget/qc/dense_1/biassave_3/RestoreV2:94*
use_locking(*
validate_shape(*
T0*)
_class
loc:@target/qc/dense_1/bias*
_output_shapes	
:А
 
save_3/Assign_95Assigntarget/qc/dense_1/kernelsave_3/RestoreV2:95* 
_output_shapes
:
АА*+
_class!
loc:@target/qc/dense_1/kernel*
T0*
use_locking(*
validate_shape(
ј
save_3/Assign_96Assigntarget/qc/dense_2/biassave_3/RestoreV2:96*
_output_shapes
:*
T0*
use_locking(*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias
…
save_3/Assign_97Assigntarget/qc/dense_2/kernelsave_3/RestoreV2:97*
_output_shapes
:	А*
validate_shape(*+
_class!
loc:@target/qc/dense_2/kernel*
T0*
use_locking(
њ
save_3/Assign_98Assigntarget/qr1/dense/biassave_3/RestoreV2:98*(
_class
loc:@target/qr1/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А*
use_locking(
«
save_3/Assign_99Assigntarget/qr1/dense/kernelsave_3/RestoreV2:99**
_class 
loc:@target/qr1/dense/kernel*
_output_shapes
:	>А*
T0*
use_locking(*
validate_shape(
≈
save_3/Assign_100Assigntarget/qr1/dense_1/biassave_3/RestoreV2:100*
validate_shape(*
use_locking(**
_class 
loc:@target/qr1/dense_1/bias*
_output_shapes	
:А*
T0
ќ
save_3/Assign_101Assigntarget/qr1/dense_1/kernelsave_3/RestoreV2:101*,
_class"
 loc:@target/qr1/dense_1/kernel*
use_locking(*
validate_shape(* 
_output_shapes
:
АА*
T0
ƒ
save_3/Assign_102Assigntarget/qr1/dense_2/biassave_3/RestoreV2:102*
T0*
_output_shapes
:*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense_2/bias
Ќ
save_3/Assign_103Assigntarget/qr1/dense_2/kernelsave_3/RestoreV2:103*
validate_shape(*
_output_shapes
:	А*
T0*
use_locking(*,
_class"
 loc:@target/qr1/dense_2/kernel
Ѕ
save_3/Assign_104Assigntarget/qr2/dense/biassave_3/RestoreV2:104*
validate_shape(*
use_locking(*
_output_shapes	
:А*
T0*(
_class
loc:@target/qr2/dense/bias
…
save_3/Assign_105Assigntarget/qr2/dense/kernelsave_3/RestoreV2:105*
_output_shapes
:	>А**
_class 
loc:@target/qr2/dense/kernel*
use_locking(*
validate_shape(*
T0
≈
save_3/Assign_106Assigntarget/qr2/dense_1/biassave_3/RestoreV2:106*
validate_shape(**
_class 
loc:@target/qr2/dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
ќ
save_3/Assign_107Assigntarget/qr2/dense_1/kernelsave_3/RestoreV2:107*
validate_shape(* 
_output_shapes
:
АА*,
_class"
 loc:@target/qr2/dense_1/kernel*
T0*
use_locking(
ƒ
save_3/Assign_108Assigntarget/qr2/dense_2/biassave_3/RestoreV2:108**
_class 
loc:@target/qr2/dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:
Ќ
save_3/Assign_109Assigntarget/qr2/dense_2/kernelsave_3/RestoreV2:109*,
_class"
 loc:@target/qr2/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	А*
validate_shape(
ƒ
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_100^save_3/Assign_101^save_3/Assign_102^save_3/Assign_103^save_3/Assign_104^save_3/Assign_105^save_3/Assign_106^save_3/Assign_107^save_3/Assign_108^save_3/Assign_109^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_3^save_3/Assign_30^save_3/Assign_31^save_3/Assign_32^save_3/Assign_33^save_3/Assign_34^save_3/Assign_35^save_3/Assign_36^save_3/Assign_37^save_3/Assign_38^save_3/Assign_39^save_3/Assign_4^save_3/Assign_40^save_3/Assign_41^save_3/Assign_42^save_3/Assign_43^save_3/Assign_44^save_3/Assign_45^save_3/Assign_46^save_3/Assign_47^save_3/Assign_48^save_3/Assign_49^save_3/Assign_5^save_3/Assign_50^save_3/Assign_51^save_3/Assign_52^save_3/Assign_53^save_3/Assign_54^save_3/Assign_55^save_3/Assign_56^save_3/Assign_57^save_3/Assign_58^save_3/Assign_59^save_3/Assign_6^save_3/Assign_60^save_3/Assign_61^save_3/Assign_62^save_3/Assign_63^save_3/Assign_64^save_3/Assign_65^save_3/Assign_66^save_3/Assign_67^save_3/Assign_68^save_3/Assign_69^save_3/Assign_7^save_3/Assign_70^save_3/Assign_71^save_3/Assign_72^save_3/Assign_73^save_3/Assign_74^save_3/Assign_75^save_3/Assign_76^save_3/Assign_77^save_3/Assign_78^save_3/Assign_79^save_3/Assign_8^save_3/Assign_80^save_3/Assign_81^save_3/Assign_82^save_3/Assign_83^save_3/Assign_84^save_3/Assign_85^save_3/Assign_86^save_3/Assign_87^save_3/Assign_88^save_3/Assign_89^save_3/Assign_9^save_3/Assign_90^save_3/Assign_91^save_3/Assign_92^save_3/Assign_93^save_3/Assign_94^save_3/Assign_95^save_3/Assign_96^save_3/Assign_97^save_3/Assign_98^save_3/Assign_99
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
_output_shapes
: *
shape: *
dtype0
Ж
save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_d4b11b0af71747399e0c982560521c0e/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_4/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_4/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
Е
save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
“
save_4/SaveV2/tensor_namesConst*
dtype0*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
_output_shapes
:n
ƒ
save_4/SaveV2/shape_and_slicesConst*
_output_shapes
:n*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
„
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta1_power_2beta1_power_3beta2_powerbeta2_power_1beta2_power_2beta2_power_3costpen/soft_betacostpen/soft_beta/Adamcostpen/soft_beta/Adam_1entreg/soft_alphaentreg/soft_alpha/Adamentreg/soft_alpha/Adam_1main/pi/dense/biasmain/pi/dense/bias/Adammain/pi/dense/bias/Adam_1main/pi/dense/kernelmain/pi/dense/kernel/Adammain/pi/dense/kernel/Adam_1main/pi/dense_1/biasmain/pi/dense_1/bias/Adammain/pi/dense_1/bias/Adam_1main/pi/dense_1/kernelmain/pi/dense_1/kernel/Adammain/pi/dense_1/kernel/Adam_1main/pi/dense_2/biasmain/pi/dense_2/bias/Adammain/pi/dense_2/bias/Adam_1main/pi/dense_2/kernelmain/pi/dense_2/kernel/Adammain/pi/dense_2/kernel/Adam_1main/pi/dense_3/biasmain/pi/dense_3/bias/Adammain/pi/dense_3/bias/Adam_1main/pi/dense_3/kernelmain/pi/dense_3/kernel/Adammain/pi/dense_3/kernel/Adam_1main/qc/dense/biasmain/qc/dense/bias/Adammain/qc/dense/bias/Adam_1main/qc/dense/kernelmain/qc/dense/kernel/Adammain/qc/dense/kernel/Adam_1main/qc/dense_1/biasmain/qc/dense_1/bias/Adammain/qc/dense_1/bias/Adam_1main/qc/dense_1/kernelmain/qc/dense_1/kernel/Adammain/qc/dense_1/kernel/Adam_1main/qc/dense_2/biasmain/qc/dense_2/bias/Adammain/qc/dense_2/bias/Adam_1main/qc/dense_2/kernelmain/qc/dense_2/kernel/Adammain/qc/dense_2/kernel/Adam_1main/qr1/dense/biasmain/qr1/dense/bias/Adammain/qr1/dense/bias/Adam_1main/qr1/dense/kernelmain/qr1/dense/kernel/Adammain/qr1/dense/kernel/Adam_1main/qr1/dense_1/biasmain/qr1/dense_1/bias/Adammain/qr1/dense_1/bias/Adam_1main/qr1/dense_1/kernelmain/qr1/dense_1/kernel/Adammain/qr1/dense_1/kernel/Adam_1main/qr1/dense_2/biasmain/qr1/dense_2/bias/Adammain/qr1/dense_2/bias/Adam_1main/qr1/dense_2/kernelmain/qr1/dense_2/kernel/Adammain/qr1/dense_2/kernel/Adam_1main/qr2/dense/biasmain/qr2/dense/bias/Adammain/qr2/dense/bias/Adam_1main/qr2/dense/kernelmain/qr2/dense/kernel/Adammain/qr2/dense/kernel/Adam_1main/qr2/dense_1/biasmain/qr2/dense_1/bias/Adammain/qr2/dense_1/bias/Adam_1main/qr2/dense_1/kernelmain/qr2/dense_1/kernel/Adammain/qr2/dense_1/kernel/Adam_1main/qr2/dense_2/biasmain/qr2/dense_2/bias/Adammain/qr2/dense_2/bias/Adam_1main/qr2/dense_2/kernelmain/qr2/dense_2/kernel/Adammain/qr2/dense_2/kernel/Adam_1target/qc/dense/biastarget/qc/dense/kerneltarget/qc/dense_1/biastarget/qc/dense_1/kerneltarget/qc/dense_2/biastarget/qc/dense_2/kerneltarget/qr1/dense/biastarget/qr1/dense/kerneltarget/qr1/dense_1/biastarget/qr1/dense_1/kerneltarget/qr1/dense_2/biastarget/qr1/dense_2/kerneltarget/qr2/dense/biastarget/qr2/dense/kerneltarget/qr2/dense_1/biastarget/qr2/dense_1/kerneltarget/qr2/dense_2/biastarget/qr2/dense_2/kernel*|
dtypesr
p2n
Щ
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
£
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*
_output_shapes
:*
T0*

axis *
N
Г
save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(
В
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
’
save_4/RestoreV2/tensor_namesConst*
_output_shapes
:n*Г
valueщBцnBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta1_power_3Bbeta2_powerBbeta2_power_1Bbeta2_power_2Bbeta2_power_3Bcostpen/soft_betaBcostpen/soft_beta/AdamBcostpen/soft_beta/Adam_1Bentreg/soft_alphaBentreg/soft_alpha/AdamBentreg/soft_alpha/Adam_1Bmain/pi/dense/biasBmain/pi/dense/bias/AdamBmain/pi/dense/bias/Adam_1Bmain/pi/dense/kernelBmain/pi/dense/kernel/AdamBmain/pi/dense/kernel/Adam_1Bmain/pi/dense_1/biasBmain/pi/dense_1/bias/AdamBmain/pi/dense_1/bias/Adam_1Bmain/pi/dense_1/kernelBmain/pi/dense_1/kernel/AdamBmain/pi/dense_1/kernel/Adam_1Bmain/pi/dense_2/biasBmain/pi/dense_2/bias/AdamBmain/pi/dense_2/bias/Adam_1Bmain/pi/dense_2/kernelBmain/pi/dense_2/kernel/AdamBmain/pi/dense_2/kernel/Adam_1Bmain/pi/dense_3/biasBmain/pi/dense_3/bias/AdamBmain/pi/dense_3/bias/Adam_1Bmain/pi/dense_3/kernelBmain/pi/dense_3/kernel/AdamBmain/pi/dense_3/kernel/Adam_1Bmain/qc/dense/biasBmain/qc/dense/bias/AdamBmain/qc/dense/bias/Adam_1Bmain/qc/dense/kernelBmain/qc/dense/kernel/AdamBmain/qc/dense/kernel/Adam_1Bmain/qc/dense_1/biasBmain/qc/dense_1/bias/AdamBmain/qc/dense_1/bias/Adam_1Bmain/qc/dense_1/kernelBmain/qc/dense_1/kernel/AdamBmain/qc/dense_1/kernel/Adam_1Bmain/qc/dense_2/biasBmain/qc/dense_2/bias/AdamBmain/qc/dense_2/bias/Adam_1Bmain/qc/dense_2/kernelBmain/qc/dense_2/kernel/AdamBmain/qc/dense_2/kernel/Adam_1Bmain/qr1/dense/biasBmain/qr1/dense/bias/AdamBmain/qr1/dense/bias/Adam_1Bmain/qr1/dense/kernelBmain/qr1/dense/kernel/AdamBmain/qr1/dense/kernel/Adam_1Bmain/qr1/dense_1/biasBmain/qr1/dense_1/bias/AdamBmain/qr1/dense_1/bias/Adam_1Bmain/qr1/dense_1/kernelBmain/qr1/dense_1/kernel/AdamBmain/qr1/dense_1/kernel/Adam_1Bmain/qr1/dense_2/biasBmain/qr1/dense_2/bias/AdamBmain/qr1/dense_2/bias/Adam_1Bmain/qr1/dense_2/kernelBmain/qr1/dense_2/kernel/AdamBmain/qr1/dense_2/kernel/Adam_1Bmain/qr2/dense/biasBmain/qr2/dense/bias/AdamBmain/qr2/dense/bias/Adam_1Bmain/qr2/dense/kernelBmain/qr2/dense/kernel/AdamBmain/qr2/dense/kernel/Adam_1Bmain/qr2/dense_1/biasBmain/qr2/dense_1/bias/AdamBmain/qr2/dense_1/bias/Adam_1Bmain/qr2/dense_1/kernelBmain/qr2/dense_1/kernel/AdamBmain/qr2/dense_1/kernel/Adam_1Bmain/qr2/dense_2/biasBmain/qr2/dense_2/bias/AdamBmain/qr2/dense_2/bias/Adam_1Bmain/qr2/dense_2/kernelBmain/qr2/dense_2/kernel/AdamBmain/qr2/dense_2/kernel/Adam_1Btarget/qc/dense/biasBtarget/qc/dense/kernelBtarget/qc/dense_1/biasBtarget/qc/dense_1/kernelBtarget/qc/dense_2/biasBtarget/qc/dense_2/kernelBtarget/qr1/dense/biasBtarget/qr1/dense/kernelBtarget/qr1/dense_1/biasBtarget/qr1/dense_1/kernelBtarget/qr1/dense_2/biasBtarget/qr1/dense_2/kernelBtarget/qr2/dense/biasBtarget/qr2/dense/kernelBtarget/qr2/dense_1/biasBtarget/qr2/dense_1/kernelBtarget/qr2/dense_2/biasBtarget/qr2/dense_2/kernel*
dtype0
«
!save_4/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:n*с
valueзBдnB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Љ
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*|
dtypesr
p2n
І
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
_output_shapes
: *
T0*
use_locking(*
validate_shape(*%
_class
loc:@main/pi/dense/bias
≠
save_4/Assign_1Assignbeta1_power_1save_4/RestoreV2:1*
validate_shape(*
_output_shapes
: *%
_class
loc:@main/qc/dense/bias*
use_locking(*
T0
ђ
save_4/Assign_2Assignbeta1_power_2save_4/RestoreV2:2*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*$
_class
loc:@entreg/soft_alpha
ђ
save_4/Assign_3Assignbeta1_power_3save_4/RestoreV2:3*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*$
_class
loc:@costpen/soft_beta
Ђ
save_4/Assign_4Assignbeta2_powersave_4/RestoreV2:4*%
_class
loc:@main/pi/dense/bias*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
≠
save_4/Assign_5Assignbeta2_power_1save_4/RestoreV2:5*
_output_shapes
: *
T0*
use_locking(*%
_class
loc:@main/qc/dense/bias*
validate_shape(
ђ
save_4/Assign_6Assignbeta2_power_2save_4/RestoreV2:6*
validate_shape(*
use_locking(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0
ђ
save_4/Assign_7Assignbeta2_power_3save_4/RestoreV2:7*
validate_shape(*$
_class
loc:@costpen/soft_beta*
T0*
use_locking(*
_output_shapes
: 
∞
save_4/Assign_8Assigncostpen/soft_betasave_4/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_output_shapes
: *$
_class
loc:@costpen/soft_beta
µ
save_4/Assign_9Assigncostpen/soft_beta/Adamsave_4/RestoreV2:9*
use_locking(*$
_class
loc:@costpen/soft_beta*
validate_shape(*
_output_shapes
: *
T0
є
save_4/Assign_10Assigncostpen/soft_beta/Adam_1save_4/RestoreV2:10*
use_locking(*$
_class
loc:@costpen/soft_beta*
_output_shapes
: *
validate_shape(*
T0
≤
save_4/Assign_11Assignentreg/soft_alphasave_4/RestoreV2:11*
T0*$
_class
loc:@entreg/soft_alpha*
validate_shape(*
use_locking(*
_output_shapes
: 
Ј
save_4/Assign_12Assignentreg/soft_alpha/Adamsave_4/RestoreV2:12*
use_locking(*
_output_shapes
: *$
_class
loc:@entreg/soft_alpha*
T0*
validate_shape(
є
save_4/Assign_13Assignentreg/soft_alpha/Adam_1save_4/RestoreV2:13*
T0*
validate_shape(*$
_class
loc:@entreg/soft_alpha*
use_locking(*
_output_shapes
: 
є
save_4/Assign_14Assignmain/pi/dense/biassave_4/RestoreV2:14*%
_class
loc:@main/pi/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:А
Њ
save_4/Assign_15Assignmain/pi/dense/bias/Adamsave_4/RestoreV2:15*
T0*
validate_shape(*
_output_shapes	
:А*
use_locking(*%
_class
loc:@main/pi/dense/bias
ј
save_4/Assign_16Assignmain/pi/dense/bias/Adam_1save_4/RestoreV2:16*
_output_shapes	
:А*
validate_shape(*
use_locking(*%
_class
loc:@main/pi/dense/bias*
T0
Ѕ
save_4/Assign_17Assignmain/pi/dense/kernelsave_4/RestoreV2:17*'
_class
loc:@main/pi/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	<А
∆
save_4/Assign_18Assignmain/pi/dense/kernel/Adamsave_4/RestoreV2:18*'
_class
loc:@main/pi/dense/kernel*
_output_shapes
:	<А*
validate_shape(*
use_locking(*
T0
»
save_4/Assign_19Assignmain/pi/dense/kernel/Adam_1save_4/RestoreV2:19*
_output_shapes
:	<А*
T0*
use_locking(*'
_class
loc:@main/pi/dense/kernel*
validate_shape(
љ
save_4/Assign_20Assignmain/pi/dense_1/biassave_4/RestoreV2:20*'
_class
loc:@main/pi/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes	
:А
¬
save_4/Assign_21Assignmain/pi/dense_1/bias/Adamsave_4/RestoreV2:21*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А
ƒ
save_4/Assign_22Assignmain/pi/dense_1/bias/Adam_1save_4/RestoreV2:22*
_output_shapes	
:А*'
_class
loc:@main/pi/dense_1/bias*
use_locking(*
T0*
validate_shape(
∆
save_4/Assign_23Assignmain/pi/dense_1/kernelsave_4/RestoreV2:23* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0*)
_class
loc:@main/pi/dense_1/kernel
Ћ
save_4/Assign_24Assignmain/pi/dense_1/kernel/Adamsave_4/RestoreV2:24* 
_output_shapes
:
АА*
use_locking(*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_1/kernel
Ќ
save_4/Assign_25Assignmain/pi/dense_1/kernel/Adam_1save_4/RestoreV2:25* 
_output_shapes
:
АА*
T0*
use_locking(*)
_class
loc:@main/pi/dense_1/kernel*
validate_shape(
Љ
save_4/Assign_26Assignmain/pi/dense_2/biassave_4/RestoreV2:26*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*'
_class
loc:@main/pi/dense_2/bias
Ѕ
save_4/Assign_27Assignmain/pi/dense_2/bias/Adamsave_4/RestoreV2:27*'
_class
loc:@main/pi/dense_2/bias*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
√
save_4/Assign_28Assignmain/pi/dense_2/bias/Adam_1save_4/RestoreV2:28*
validate_shape(*
use_locking(*'
_class
loc:@main/pi/dense_2/bias*
T0*
_output_shapes
:
≈
save_4/Assign_29Assignmain/pi/dense_2/kernelsave_4/RestoreV2:29*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
T0
 
save_4/Assign_30Assignmain/pi/dense_2/kernel/Adamsave_4/RestoreV2:30*
_output_shapes
:	А*
use_locking(*
validate_shape(*
T0*)
_class
loc:@main/pi/dense_2/kernel
ћ
save_4/Assign_31Assignmain/pi/dense_2/kernel/Adam_1save_4/RestoreV2:31*)
_class
loc:@main/pi/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
use_locking(*
T0
Љ
save_4/Assign_32Assignmain/pi/dense_3/biassave_4/RestoreV2:32*
use_locking(*
_output_shapes
:*'
_class
loc:@main/pi/dense_3/bias*
T0*
validate_shape(
Ѕ
save_4/Assign_33Assignmain/pi/dense_3/bias/Adamsave_4/RestoreV2:33*
use_locking(*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
T0*
_output_shapes
:
√
save_4/Assign_34Assignmain/pi/dense_3/bias/Adam_1save_4/RestoreV2:34*'
_class
loc:@main/pi/dense_3/bias*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
≈
save_4/Assign_35Assignmain/pi/dense_3/kernelsave_4/RestoreV2:35*
validate_shape(*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
T0*
_output_shapes
:	А
 
save_4/Assign_36Assignmain/pi/dense_3/kernel/Adamsave_4/RestoreV2:36*
T0*
_output_shapes
:	А*
use_locking(*)
_class
loc:@main/pi/dense_3/kernel*
validate_shape(
ћ
save_4/Assign_37Assignmain/pi/dense_3/kernel/Adam_1save_4/RestoreV2:37*)
_class
loc:@main/pi/dense_3/kernel*
use_locking(*
T0*
_output_shapes
:	А*
validate_shape(
є
save_4/Assign_38Assignmain/qc/dense/biassave_4/RestoreV2:38*
T0*
_output_shapes	
:А*%
_class
loc:@main/qc/dense/bias*
use_locking(*
validate_shape(
Њ
save_4/Assign_39Assignmain/qc/dense/bias/Adamsave_4/RestoreV2:39*%
_class
loc:@main/qc/dense/bias*
T0*
validate_shape(*
_output_shapes	
:А*
use_locking(
ј
save_4/Assign_40Assignmain/qc/dense/bias/Adam_1save_4/RestoreV2:40*
validate_shape(*
use_locking(*%
_class
loc:@main/qc/dense/bias*
_output_shapes	
:А*
T0
Ѕ
save_4/Assign_41Assignmain/qc/dense/kernelsave_4/RestoreV2:41*
_output_shapes
:	>А*
T0*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense/kernel
∆
save_4/Assign_42Assignmain/qc/dense/kernel/Adamsave_4/RestoreV2:42*
T0*
_output_shapes
:	>А*
validate_shape(*
use_locking(*'
_class
loc:@main/qc/dense/kernel
»
save_4/Assign_43Assignmain/qc/dense/kernel/Adam_1save_4/RestoreV2:43*
_output_shapes
:	>А*
T0*
validate_shape(*'
_class
loc:@main/qc/dense/kernel*
use_locking(
љ
save_4/Assign_44Assignmain/qc/dense_1/biassave_4/RestoreV2:44*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias*
T0*
use_locking(*
validate_shape(
¬
save_4/Assign_45Assignmain/qc/dense_1/bias/Adamsave_4/RestoreV2:45*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:А*'
_class
loc:@main/qc/dense_1/bias
ƒ
save_4/Assign_46Assignmain/qc/dense_1/bias/Adam_1save_4/RestoreV2:46*
use_locking(*
validate_shape(*'
_class
loc:@main/qc/dense_1/bias*
_output_shapes	
:А*
T0
∆
save_4/Assign_47Assignmain/qc/dense_1/kernelsave_4/RestoreV2:47*
use_locking(*
validate_shape(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
T0
Ћ
save_4/Assign_48Assignmain/qc/dense_1/kernel/Adamsave_4/RestoreV2:48*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
T0
Ќ
save_4/Assign_49Assignmain/qc/dense_1/kernel/Adam_1save_4/RestoreV2:49*
use_locking(*)
_class
loc:@main/qc/dense_1/kernel*
validate_shape(* 
_output_shapes
:
АА*
T0
Љ
save_4/Assign_50Assignmain/qc/dense_2/biassave_4/RestoreV2:50*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*'
_class
loc:@main/qc/dense_2/bias
Ѕ
save_4/Assign_51Assignmain/qc/dense_2/bias/Adamsave_4/RestoreV2:51*
T0*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
√
save_4/Assign_52Assignmain/qc/dense_2/bias/Adam_1save_4/RestoreV2:52*
use_locking(*'
_class
loc:@main/qc/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
≈
save_4/Assign_53Assignmain/qc/dense_2/kernelsave_4/RestoreV2:53*
use_locking(*)
_class
loc:@main/qc/dense_2/kernel*
_output_shapes
:	А*
validate_shape(*
T0
 
save_4/Assign_54Assignmain/qc/dense_2/kernel/Adamsave_4/RestoreV2:54*
use_locking(*
T0*
validate_shape(*
_output_shapes
:	А*)
_class
loc:@main/qc/dense_2/kernel
ћ
save_4/Assign_55Assignmain/qc/dense_2/kernel/Adam_1save_4/RestoreV2:55*
T0*
_output_shapes
:	А*
validate_shape(*)
_class
loc:@main/qc/dense_2/kernel*
use_locking(
ї
save_4/Assign_56Assignmain/qr1/dense/biassave_4/RestoreV2:56*
T0*
_output_shapes	
:А*
use_locking(*&
_class
loc:@main/qr1/dense/bias*
validate_shape(
ј
save_4/Assign_57Assignmain/qr1/dense/bias/Adamsave_4/RestoreV2:57*
validate_shape(*&
_class
loc:@main/qr1/dense/bias*
T0*
use_locking(*
_output_shapes	
:А
¬
save_4/Assign_58Assignmain/qr1/dense/bias/Adam_1save_4/RestoreV2:58*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:А*&
_class
loc:@main/qr1/dense/bias
√
save_4/Assign_59Assignmain/qr1/dense/kernelsave_4/RestoreV2:59*
validate_shape(*
T0*
_output_shapes
:	>А*
use_locking(*(
_class
loc:@main/qr1/dense/kernel
»
save_4/Assign_60Assignmain/qr1/dense/kernel/Adamsave_4/RestoreV2:60*
use_locking(*
T0*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
_output_shapes
:	>А
 
save_4/Assign_61Assignmain/qr1/dense/kernel/Adam_1save_4/RestoreV2:61*
_output_shapes
:	>А*(
_class
loc:@main/qr1/dense/kernel*
validate_shape(*
use_locking(*
T0
њ
save_4/Assign_62Assignmain/qr1/dense_1/biassave_4/RestoreV2:62*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(*(
_class
loc:@main/qr1/dense_1/bias
ƒ
save_4/Assign_63Assignmain/qr1/dense_1/bias/Adamsave_4/RestoreV2:63*(
_class
loc:@main/qr1/dense_1/bias*
T0*
validate_shape(*
_output_shapes	
:А*
use_locking(
∆
save_4/Assign_64Assignmain/qr1/dense_1/bias/Adam_1save_4/RestoreV2:64*(
_class
loc:@main/qr1/dense_1/bias*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(
»
save_4/Assign_65Assignmain/qr1/dense_1/kernelsave_4/RestoreV2:65**
_class 
loc:@main/qr1/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
use_locking(*
T0
Ќ
save_4/Assign_66Assignmain/qr1/dense_1/kernel/Adamsave_4/RestoreV2:66**
_class 
loc:@main/qr1/dense_1/kernel*
T0* 
_output_shapes
:
АА*
use_locking(*
validate_shape(
ѕ
save_4/Assign_67Assignmain/qr1/dense_1/kernel/Adam_1save_4/RestoreV2:67**
_class 
loc:@main/qr1/dense_1/kernel*
use_locking(* 
_output_shapes
:
АА*
T0*
validate_shape(
Њ
save_4/Assign_68Assignmain/qr1/dense_2/biassave_4/RestoreV2:68*
_output_shapes
:*
validate_shape(*(
_class
loc:@main/qr1/dense_2/bias*
T0*
use_locking(
√
save_4/Assign_69Assignmain/qr1/dense_2/bias/Adamsave_4/RestoreV2:69*
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@main/qr1/dense_2/bias*
validate_shape(
≈
save_4/Assign_70Assignmain/qr1/dense_2/bias/Adam_1save_4/RestoreV2:70*
validate_shape(*
_output_shapes
:*
use_locking(*(
_class
loc:@main/qr1/dense_2/bias*
T0
«
save_4/Assign_71Assignmain/qr1/dense_2/kernelsave_4/RestoreV2:71*
_output_shapes
:	А*
use_locking(*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
T0
ћ
save_4/Assign_72Assignmain/qr1/dense_2/kernel/Adamsave_4/RestoreV2:72*
_output_shapes
:	А*
T0*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(
ќ
save_4/Assign_73Assignmain/qr1/dense_2/kernel/Adam_1save_4/RestoreV2:73*
_output_shapes
:	А*
validate_shape(**
_class 
loc:@main/qr1/dense_2/kernel*
use_locking(*
T0
ї
save_4/Assign_74Assignmain/qr2/dense/biassave_4/RestoreV2:74*
use_locking(*
validate_shape(*
T0*&
_class
loc:@main/qr2/dense/bias*
_output_shapes	
:А
ј
save_4/Assign_75Assignmain/qr2/dense/bias/Adamsave_4/RestoreV2:75*
use_locking(*&
_class
loc:@main/qr2/dense/bias*
T0*
validate_shape(*
_output_shapes	
:А
¬
save_4/Assign_76Assignmain/qr2/dense/bias/Adam_1save_4/RestoreV2:76*&
_class
loc:@main/qr2/dense/bias*
validate_shape(*
T0*
_output_shapes	
:А*
use_locking(
√
save_4/Assign_77Assignmain/qr2/dense/kernelsave_4/RestoreV2:77*
T0*
_output_shapes
:	>А*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
validate_shape(
»
save_4/Assign_78Assignmain/qr2/dense/kernel/Adamsave_4/RestoreV2:78*
_output_shapes
:	>А*
use_locking(*
validate_shape(*(
_class
loc:@main/qr2/dense/kernel*
T0
 
save_4/Assign_79Assignmain/qr2/dense/kernel/Adam_1save_4/RestoreV2:79*(
_class
loc:@main/qr2/dense/kernel*
use_locking(*
T0*
_output_shapes
:	>А*
validate_shape(
њ
save_4/Assign_80Assignmain/qr2/dense_1/biassave_4/RestoreV2:80*
use_locking(*
validate_shape(*
T0*(
_class
loc:@main/qr2/dense_1/bias*
_output_shapes	
:А
ƒ
save_4/Assign_81Assignmain/qr2/dense_1/bias/Adamsave_4/RestoreV2:81*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:А
∆
save_4/Assign_82Assignmain/qr2/dense_1/bias/Adam_1save_4/RestoreV2:82*
T0*(
_class
loc:@main/qr2/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes	
:А
»
save_4/Assign_83Assignmain/qr2/dense_1/kernelsave_4/RestoreV2:83*
T0**
_class 
loc:@main/qr2/dense_1/kernel* 
_output_shapes
:
АА*
validate_shape(*
use_locking(
Ќ
save_4/Assign_84Assignmain/qr2/dense_1/kernel/Adamsave_4/RestoreV2:84*
validate_shape(**
_class 
loc:@main/qr2/dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
ѕ
save_4/Assign_85Assignmain/qr2/dense_1/kernel/Adam_1save_4/RestoreV2:85* 
_output_shapes
:
АА*
T0**
_class 
loc:@main/qr2/dense_1/kernel*
validate_shape(*
use_locking(
Њ
save_4/Assign_86Assignmain/qr2/dense_2/biassave_4/RestoreV2:86*
validate_shape(*
_output_shapes
:*(
_class
loc:@main/qr2/dense_2/bias*
T0*
use_locking(
√
save_4/Assign_87Assignmain/qr2/dense_2/bias/Adamsave_4/RestoreV2:87*
validate_shape(*(
_class
loc:@main/qr2/dense_2/bias*
use_locking(*
T0*
_output_shapes
:
≈
save_4/Assign_88Assignmain/qr2/dense_2/bias/Adam_1save_4/RestoreV2:88*(
_class
loc:@main/qr2/dense_2/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:
«
save_4/Assign_89Assignmain/qr2/dense_2/kernelsave_4/RestoreV2:89*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	А
ћ
save_4/Assign_90Assignmain/qr2/dense_2/kernel/Adamsave_4/RestoreV2:90*
use_locking(*
validate_shape(*
T0**
_class 
loc:@main/qr2/dense_2/kernel*
_output_shapes
:	А
ќ
save_4/Assign_91Assignmain/qr2/dense_2/kernel/Adam_1save_4/RestoreV2:91*
T0*
use_locking(*
_output_shapes
:	А**
_class 
loc:@main/qr2/dense_2/kernel*
validate_shape(
љ
save_4/Assign_92Assigntarget/qc/dense/biassave_4/RestoreV2:92*
T0*
use_locking(*
_output_shapes	
:А*'
_class
loc:@target/qc/dense/bias*
validate_shape(
≈
save_4/Assign_93Assigntarget/qc/dense/kernelsave_4/RestoreV2:93*
validate_shape(*
use_locking(*
T0*)
_class
loc:@target/qc/dense/kernel*
_output_shapes
:	>А
Ѕ
save_4/Assign_94Assigntarget/qc/dense_1/biassave_4/RestoreV2:94*
use_locking(*
validate_shape(*
_output_shapes	
:А*
T0*)
_class
loc:@target/qc/dense_1/bias
 
save_4/Assign_95Assigntarget/qc/dense_1/kernelsave_4/RestoreV2:95*
validate_shape(* 
_output_shapes
:
АА*+
_class!
loc:@target/qc/dense_1/kernel*
use_locking(*
T0
ј
save_4/Assign_96Assigntarget/qc/dense_2/biassave_4/RestoreV2:96*
_output_shapes
:*
use_locking(*
T0*
validate_shape(*)
_class
loc:@target/qc/dense_2/bias
…
save_4/Assign_97Assigntarget/qc/dense_2/kernelsave_4/RestoreV2:97*+
_class!
loc:@target/qc/dense_2/kernel*
use_locking(*
T0*
_output_shapes
:	А*
validate_shape(
њ
save_4/Assign_98Assigntarget/qr1/dense/biassave_4/RestoreV2:98*(
_class
loc:@target/qr1/dense/bias*
_output_shapes	
:А*
T0*
validate_shape(*
use_locking(
«
save_4/Assign_99Assigntarget/qr1/dense/kernelsave_4/RestoreV2:99*
use_locking(*
T0**
_class 
loc:@target/qr1/dense/kernel*
validate_shape(*
_output_shapes
:	>А
≈
save_4/Assign_100Assigntarget/qr1/dense_1/biassave_4/RestoreV2:100*
_output_shapes	
:А*
T0*
use_locking(*
validate_shape(**
_class 
loc:@target/qr1/dense_1/bias
ќ
save_4/Assign_101Assigntarget/qr1/dense_1/kernelsave_4/RestoreV2:101*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*,
_class"
 loc:@target/qr1/dense_1/kernel*
T0
ƒ
save_4/Assign_102Assigntarget/qr1/dense_2/biassave_4/RestoreV2:102*
T0*
validate_shape(*
_output_shapes
:**
_class 
loc:@target/qr1/dense_2/bias*
use_locking(
Ќ
save_4/Assign_103Assigntarget/qr1/dense_2/kernelsave_4/RestoreV2:103*
_output_shapes
:	А*
T0*
use_locking(*,
_class"
 loc:@target/qr1/dense_2/kernel*
validate_shape(
Ѕ
save_4/Assign_104Assigntarget/qr2/dense/biassave_4/RestoreV2:104*
validate_shape(*
T0*
use_locking(*(
_class
loc:@target/qr2/dense/bias*
_output_shapes	
:А
…
save_4/Assign_105Assigntarget/qr2/dense/kernelsave_4/RestoreV2:105*
T0*
_output_shapes
:	>А*
use_locking(*
validate_shape(**
_class 
loc:@target/qr2/dense/kernel
≈
save_4/Assign_106Assigntarget/qr2/dense_1/biassave_4/RestoreV2:106*
validate_shape(**
_class 
loc:@target/qr2/dense_1/bias*
_output_shapes	
:А*
T0*
use_locking(
ќ
save_4/Assign_107Assigntarget/qr2/dense_1/kernelsave_4/RestoreV2:107*
T0*
validate_shape(*,
_class"
 loc:@target/qr2/dense_1/kernel* 
_output_shapes
:
АА*
use_locking(
ƒ
save_4/Assign_108Assigntarget/qr2/dense_2/biassave_4/RestoreV2:108*
validate_shape(*
_output_shapes
:**
_class 
loc:@target/qr2/dense_2/bias*
T0*
use_locking(
Ќ
save_4/Assign_109Assigntarget/qr2/dense_2/kernelsave_4/RestoreV2:109*
T0*,
_class"
 loc:@target/qr2/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes
:	А
ƒ
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_100^save_4/Assign_101^save_4/Assign_102^save_4/Assign_103^save_4/Assign_104^save_4/Assign_105^save_4/Assign_106^save_4/Assign_107^save_4/Assign_108^save_4/Assign_109^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_28^save_4/Assign_29^save_4/Assign_3^save_4/Assign_30^save_4/Assign_31^save_4/Assign_32^save_4/Assign_33^save_4/Assign_34^save_4/Assign_35^save_4/Assign_36^save_4/Assign_37^save_4/Assign_38^save_4/Assign_39^save_4/Assign_4^save_4/Assign_40^save_4/Assign_41^save_4/Assign_42^save_4/Assign_43^save_4/Assign_44^save_4/Assign_45^save_4/Assign_46^save_4/Assign_47^save_4/Assign_48^save_4/Assign_49^save_4/Assign_5^save_4/Assign_50^save_4/Assign_51^save_4/Assign_52^save_4/Assign_53^save_4/Assign_54^save_4/Assign_55^save_4/Assign_56^save_4/Assign_57^save_4/Assign_58^save_4/Assign_59^save_4/Assign_6^save_4/Assign_60^save_4/Assign_61^save_4/Assign_62^save_4/Assign_63^save_4/Assign_64^save_4/Assign_65^save_4/Assign_66^save_4/Assign_67^save_4/Assign_68^save_4/Assign_69^save_4/Assign_7^save_4/Assign_70^save_4/Assign_71^save_4/Assign_72^save_4/Assign_73^save_4/Assign_74^save_4/Assign_75^save_4/Assign_76^save_4/Assign_77^save_4/Assign_78^save_4/Assign_79^save_4/Assign_8^save_4/Assign_80^save_4/Assign_81^save_4/Assign_82^save_4/Assign_83^save_4/Assign_84^save_4/Assign_85^save_4/Assign_86^save_4/Assign_87^save_4/Assign_88^save_4/Assign_89^save_4/Assign_9^save_4/Assign_90^save_4/Assign_91^save_4/Assign_92^save_4/Assign_93^save_4/Assign_94^save_4/Assign_95^save_4/Assign_96^save_4/Assign_97^save_4/Assign_98^save_4/Assign_99
1
save_4/restore_allNoOp^save_4/restore_shard "B
save_4/Const:0save_4/Identity:0save_4/restore_all (5 @F8"сz
	variablesгzаz
З
main/pi/dense/kernel:0main/pi/dense/kernel/Assignmain/pi/dense/kernel/read:021main/pi/dense/kernel/Initializer/random_uniform:08
v
main/pi/dense/bias:0main/pi/dense/bias/Assignmain/pi/dense/bias/read:02&main/pi/dense/bias/Initializer/zeros:08
П
main/pi/dense_1/kernel:0main/pi/dense_1/kernel/Assignmain/pi/dense_1/kernel/read:023main/pi/dense_1/kernel/Initializer/random_uniform:08
~
main/pi/dense_1/bias:0main/pi/dense_1/bias/Assignmain/pi/dense_1/bias/read:02(main/pi/dense_1/bias/Initializer/zeros:08
П
main/pi/dense_2/kernel:0main/pi/dense_2/kernel/Assignmain/pi/dense_2/kernel/read:023main/pi/dense_2/kernel/Initializer/random_uniform:08
~
main/pi/dense_2/bias:0main/pi/dense_2/bias/Assignmain/pi/dense_2/bias/read:02(main/pi/dense_2/bias/Initializer/zeros:08
П
main/pi/dense_3/kernel:0main/pi/dense_3/kernel/Assignmain/pi/dense_3/kernel/read:023main/pi/dense_3/kernel/Initializer/random_uniform:08
~
main/pi/dense_3/bias:0main/pi/dense_3/bias/Assignmain/pi/dense_3/bias/read:02(main/pi/dense_3/bias/Initializer/zeros:08
Л
main/qr1/dense/kernel:0main/qr1/dense/kernel/Assignmain/qr1/dense/kernel/read:022main/qr1/dense/kernel/Initializer/random_uniform:08
z
main/qr1/dense/bias:0main/qr1/dense/bias/Assignmain/qr1/dense/bias/read:02'main/qr1/dense/bias/Initializer/zeros:08
У
main/qr1/dense_1/kernel:0main/qr1/dense_1/kernel/Assignmain/qr1/dense_1/kernel/read:024main/qr1/dense_1/kernel/Initializer/random_uniform:08
В
main/qr1/dense_1/bias:0main/qr1/dense_1/bias/Assignmain/qr1/dense_1/bias/read:02)main/qr1/dense_1/bias/Initializer/zeros:08
У
main/qr1/dense_2/kernel:0main/qr1/dense_2/kernel/Assignmain/qr1/dense_2/kernel/read:024main/qr1/dense_2/kernel/Initializer/random_uniform:08
В
main/qr1/dense_2/bias:0main/qr1/dense_2/bias/Assignmain/qr1/dense_2/bias/read:02)main/qr1/dense_2/bias/Initializer/zeros:08
Л
main/qr2/dense/kernel:0main/qr2/dense/kernel/Assignmain/qr2/dense/kernel/read:022main/qr2/dense/kernel/Initializer/random_uniform:08
z
main/qr2/dense/bias:0main/qr2/dense/bias/Assignmain/qr2/dense/bias/read:02'main/qr2/dense/bias/Initializer/zeros:08
У
main/qr2/dense_1/kernel:0main/qr2/dense_1/kernel/Assignmain/qr2/dense_1/kernel/read:024main/qr2/dense_1/kernel/Initializer/random_uniform:08
В
main/qr2/dense_1/bias:0main/qr2/dense_1/bias/Assignmain/qr2/dense_1/bias/read:02)main/qr2/dense_1/bias/Initializer/zeros:08
У
main/qr2/dense_2/kernel:0main/qr2/dense_2/kernel/Assignmain/qr2/dense_2/kernel/read:024main/qr2/dense_2/kernel/Initializer/random_uniform:08
В
main/qr2/dense_2/bias:0main/qr2/dense_2/bias/Assignmain/qr2/dense_2/bias/read:02)main/qr2/dense_2/bias/Initializer/zeros:08
З
main/qc/dense/kernel:0main/qc/dense/kernel/Assignmain/qc/dense/kernel/read:021main/qc/dense/kernel/Initializer/random_uniform:08
v
main/qc/dense/bias:0main/qc/dense/bias/Assignmain/qc/dense/bias/read:02&main/qc/dense/bias/Initializer/zeros:08
П
main/qc/dense_1/kernel:0main/qc/dense_1/kernel/Assignmain/qc/dense_1/kernel/read:023main/qc/dense_1/kernel/Initializer/random_uniform:08
~
main/qc/dense_1/bias:0main/qc/dense_1/bias/Assignmain/qc/dense_1/bias/read:02(main/qc/dense_1/bias/Initializer/zeros:08
П
main/qc/dense_2/kernel:0main/qc/dense_2/kernel/Assignmain/qc/dense_2/kernel/read:023main/qc/dense_2/kernel/Initializer/random_uniform:08
~
main/qc/dense_2/bias:0main/qc/dense_2/bias/Assignmain/qc/dense_2/bias/read:02(main/qc/dense_2/bias/Initializer/zeros:08
У
target/qr1/dense/kernel:0target/qr1/dense/kernel/Assigntarget/qr1/dense/kernel/read:024target/qr1/dense/kernel/Initializer/random_uniform:08
В
target/qr1/dense/bias:0target/qr1/dense/bias/Assigntarget/qr1/dense/bias/read:02)target/qr1/dense/bias/Initializer/zeros:08
Ы
target/qr1/dense_1/kernel:0 target/qr1/dense_1/kernel/Assign target/qr1/dense_1/kernel/read:026target/qr1/dense_1/kernel/Initializer/random_uniform:08
К
target/qr1/dense_1/bias:0target/qr1/dense_1/bias/Assigntarget/qr1/dense_1/bias/read:02+target/qr1/dense_1/bias/Initializer/zeros:08
Ы
target/qr1/dense_2/kernel:0 target/qr1/dense_2/kernel/Assign target/qr1/dense_2/kernel/read:026target/qr1/dense_2/kernel/Initializer/random_uniform:08
К
target/qr1/dense_2/bias:0target/qr1/dense_2/bias/Assigntarget/qr1/dense_2/bias/read:02+target/qr1/dense_2/bias/Initializer/zeros:08
У
target/qr2/dense/kernel:0target/qr2/dense/kernel/Assigntarget/qr2/dense/kernel/read:024target/qr2/dense/kernel/Initializer/random_uniform:08
В
target/qr2/dense/bias:0target/qr2/dense/bias/Assigntarget/qr2/dense/bias/read:02)target/qr2/dense/bias/Initializer/zeros:08
Ы
target/qr2/dense_1/kernel:0 target/qr2/dense_1/kernel/Assign target/qr2/dense_1/kernel/read:026target/qr2/dense_1/kernel/Initializer/random_uniform:08
К
target/qr2/dense_1/bias:0target/qr2/dense_1/bias/Assigntarget/qr2/dense_1/bias/read:02+target/qr2/dense_1/bias/Initializer/zeros:08
Ы
target/qr2/dense_2/kernel:0 target/qr2/dense_2/kernel/Assign target/qr2/dense_2/kernel/read:026target/qr2/dense_2/kernel/Initializer/random_uniform:08
К
target/qr2/dense_2/bias:0target/qr2/dense_2/bias/Assigntarget/qr2/dense_2/bias/read:02+target/qr2/dense_2/bias/Initializer/zeros:08
П
target/qc/dense/kernel:0target/qc/dense/kernel/Assigntarget/qc/dense/kernel/read:023target/qc/dense/kernel/Initializer/random_uniform:08
~
target/qc/dense/bias:0target/qc/dense/bias/Assigntarget/qc/dense/bias/read:02(target/qc/dense/bias/Initializer/zeros:08
Ч
target/qc/dense_1/kernel:0target/qc/dense_1/kernel/Assigntarget/qc/dense_1/kernel/read:025target/qc/dense_1/kernel/Initializer/random_uniform:08
Ж
target/qc/dense_1/bias:0target/qc/dense_1/bias/Assigntarget/qc/dense_1/bias/read:02*target/qc/dense_1/bias/Initializer/zeros:08
Ч
target/qc/dense_2/kernel:0target/qc/dense_2/kernel/Assigntarget/qc/dense_2/kernel/read:025target/qc/dense_2/kernel/Initializer/random_uniform:08
Ж
target/qc/dense_2/bias:0target/qc/dense_2/bias/Assigntarget/qc/dense_2/bias/read:02*target/qc/dense_2/bias/Initializer/zeros:08
n
entreg/soft_alpha:0entreg/soft_alpha/Assignentreg/soft_alpha/read:02!entreg/soft_alpha/initial_value:08
n
costpen/soft_beta:0costpen/soft_beta/Assigncostpen/soft_beta/read:02!costpen/soft_beta/initial_value:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
Р
main/pi/dense/kernel/Adam:0 main/pi/dense/kernel/Adam/Assign main/pi/dense/kernel/Adam/read:02-main/pi/dense/kernel/Adam/Initializer/zeros:0
Ш
main/pi/dense/kernel/Adam_1:0"main/pi/dense/kernel/Adam_1/Assign"main/pi/dense/kernel/Adam_1/read:02/main/pi/dense/kernel/Adam_1/Initializer/zeros:0
И
main/pi/dense/bias/Adam:0main/pi/dense/bias/Adam/Assignmain/pi/dense/bias/Adam/read:02+main/pi/dense/bias/Adam/Initializer/zeros:0
Р
main/pi/dense/bias/Adam_1:0 main/pi/dense/bias/Adam_1/Assign main/pi/dense/bias/Adam_1/read:02-main/pi/dense/bias/Adam_1/Initializer/zeros:0
Ш
main/pi/dense_1/kernel/Adam:0"main/pi/dense_1/kernel/Adam/Assign"main/pi/dense_1/kernel/Adam/read:02/main/pi/dense_1/kernel/Adam/Initializer/zeros:0
†
main/pi/dense_1/kernel/Adam_1:0$main/pi/dense_1/kernel/Adam_1/Assign$main/pi/dense_1/kernel/Adam_1/read:021main/pi/dense_1/kernel/Adam_1/Initializer/zeros:0
Р
main/pi/dense_1/bias/Adam:0 main/pi/dense_1/bias/Adam/Assign main/pi/dense_1/bias/Adam/read:02-main/pi/dense_1/bias/Adam/Initializer/zeros:0
Ш
main/pi/dense_1/bias/Adam_1:0"main/pi/dense_1/bias/Adam_1/Assign"main/pi/dense_1/bias/Adam_1/read:02/main/pi/dense_1/bias/Adam_1/Initializer/zeros:0
Ш
main/pi/dense_2/kernel/Adam:0"main/pi/dense_2/kernel/Adam/Assign"main/pi/dense_2/kernel/Adam/read:02/main/pi/dense_2/kernel/Adam/Initializer/zeros:0
†
main/pi/dense_2/kernel/Adam_1:0$main/pi/dense_2/kernel/Adam_1/Assign$main/pi/dense_2/kernel/Adam_1/read:021main/pi/dense_2/kernel/Adam_1/Initializer/zeros:0
Р
main/pi/dense_2/bias/Adam:0 main/pi/dense_2/bias/Adam/Assign main/pi/dense_2/bias/Adam/read:02-main/pi/dense_2/bias/Adam/Initializer/zeros:0
Ш
main/pi/dense_2/bias/Adam_1:0"main/pi/dense_2/bias/Adam_1/Assign"main/pi/dense_2/bias/Adam_1/read:02/main/pi/dense_2/bias/Adam_1/Initializer/zeros:0
Ш
main/pi/dense_3/kernel/Adam:0"main/pi/dense_3/kernel/Adam/Assign"main/pi/dense_3/kernel/Adam/read:02/main/pi/dense_3/kernel/Adam/Initializer/zeros:0
†
main/pi/dense_3/kernel/Adam_1:0$main/pi/dense_3/kernel/Adam_1/Assign$main/pi/dense_3/kernel/Adam_1/read:021main/pi/dense_3/kernel/Adam_1/Initializer/zeros:0
Р
main/pi/dense_3/bias/Adam:0 main/pi/dense_3/bias/Adam/Assign main/pi/dense_3/bias/Adam/read:02-main/pi/dense_3/bias/Adam/Initializer/zeros:0
Ш
main/pi/dense_3/bias/Adam_1:0"main/pi/dense_3/bias/Adam_1/Assign"main/pi/dense_3/bias/Adam_1/read:02/main/pi/dense_3/bias/Adam_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0
Ф
main/qr1/dense/kernel/Adam:0!main/qr1/dense/kernel/Adam/Assign!main/qr1/dense/kernel/Adam/read:02.main/qr1/dense/kernel/Adam/Initializer/zeros:0
Ь
main/qr1/dense/kernel/Adam_1:0#main/qr1/dense/kernel/Adam_1/Assign#main/qr1/dense/kernel/Adam_1/read:020main/qr1/dense/kernel/Adam_1/Initializer/zeros:0
М
main/qr1/dense/bias/Adam:0main/qr1/dense/bias/Adam/Assignmain/qr1/dense/bias/Adam/read:02,main/qr1/dense/bias/Adam/Initializer/zeros:0
Ф
main/qr1/dense/bias/Adam_1:0!main/qr1/dense/bias/Adam_1/Assign!main/qr1/dense/bias/Adam_1/read:02.main/qr1/dense/bias/Adam_1/Initializer/zeros:0
Ь
main/qr1/dense_1/kernel/Adam:0#main/qr1/dense_1/kernel/Adam/Assign#main/qr1/dense_1/kernel/Adam/read:020main/qr1/dense_1/kernel/Adam/Initializer/zeros:0
§
 main/qr1/dense_1/kernel/Adam_1:0%main/qr1/dense_1/kernel/Adam_1/Assign%main/qr1/dense_1/kernel/Adam_1/read:022main/qr1/dense_1/kernel/Adam_1/Initializer/zeros:0
Ф
main/qr1/dense_1/bias/Adam:0!main/qr1/dense_1/bias/Adam/Assign!main/qr1/dense_1/bias/Adam/read:02.main/qr1/dense_1/bias/Adam/Initializer/zeros:0
Ь
main/qr1/dense_1/bias/Adam_1:0#main/qr1/dense_1/bias/Adam_1/Assign#main/qr1/dense_1/bias/Adam_1/read:020main/qr1/dense_1/bias/Adam_1/Initializer/zeros:0
Ь
main/qr1/dense_2/kernel/Adam:0#main/qr1/dense_2/kernel/Adam/Assign#main/qr1/dense_2/kernel/Adam/read:020main/qr1/dense_2/kernel/Adam/Initializer/zeros:0
§
 main/qr1/dense_2/kernel/Adam_1:0%main/qr1/dense_2/kernel/Adam_1/Assign%main/qr1/dense_2/kernel/Adam_1/read:022main/qr1/dense_2/kernel/Adam_1/Initializer/zeros:0
Ф
main/qr1/dense_2/bias/Adam:0!main/qr1/dense_2/bias/Adam/Assign!main/qr1/dense_2/bias/Adam/read:02.main/qr1/dense_2/bias/Adam/Initializer/zeros:0
Ь
main/qr1/dense_2/bias/Adam_1:0#main/qr1/dense_2/bias/Adam_1/Assign#main/qr1/dense_2/bias/Adam_1/read:020main/qr1/dense_2/bias/Adam_1/Initializer/zeros:0
Ф
main/qr2/dense/kernel/Adam:0!main/qr2/dense/kernel/Adam/Assign!main/qr2/dense/kernel/Adam/read:02.main/qr2/dense/kernel/Adam/Initializer/zeros:0
Ь
main/qr2/dense/kernel/Adam_1:0#main/qr2/dense/kernel/Adam_1/Assign#main/qr2/dense/kernel/Adam_1/read:020main/qr2/dense/kernel/Adam_1/Initializer/zeros:0
М
main/qr2/dense/bias/Adam:0main/qr2/dense/bias/Adam/Assignmain/qr2/dense/bias/Adam/read:02,main/qr2/dense/bias/Adam/Initializer/zeros:0
Ф
main/qr2/dense/bias/Adam_1:0!main/qr2/dense/bias/Adam_1/Assign!main/qr2/dense/bias/Adam_1/read:02.main/qr2/dense/bias/Adam_1/Initializer/zeros:0
Ь
main/qr2/dense_1/kernel/Adam:0#main/qr2/dense_1/kernel/Adam/Assign#main/qr2/dense_1/kernel/Adam/read:020main/qr2/dense_1/kernel/Adam/Initializer/zeros:0
§
 main/qr2/dense_1/kernel/Adam_1:0%main/qr2/dense_1/kernel/Adam_1/Assign%main/qr2/dense_1/kernel/Adam_1/read:022main/qr2/dense_1/kernel/Adam_1/Initializer/zeros:0
Ф
main/qr2/dense_1/bias/Adam:0!main/qr2/dense_1/bias/Adam/Assign!main/qr2/dense_1/bias/Adam/read:02.main/qr2/dense_1/bias/Adam/Initializer/zeros:0
Ь
main/qr2/dense_1/bias/Adam_1:0#main/qr2/dense_1/bias/Adam_1/Assign#main/qr2/dense_1/bias/Adam_1/read:020main/qr2/dense_1/bias/Adam_1/Initializer/zeros:0
Ь
main/qr2/dense_2/kernel/Adam:0#main/qr2/dense_2/kernel/Adam/Assign#main/qr2/dense_2/kernel/Adam/read:020main/qr2/dense_2/kernel/Adam/Initializer/zeros:0
§
 main/qr2/dense_2/kernel/Adam_1:0%main/qr2/dense_2/kernel/Adam_1/Assign%main/qr2/dense_2/kernel/Adam_1/read:022main/qr2/dense_2/kernel/Adam_1/Initializer/zeros:0
Ф
main/qr2/dense_2/bias/Adam:0!main/qr2/dense_2/bias/Adam/Assign!main/qr2/dense_2/bias/Adam/read:02.main/qr2/dense_2/bias/Adam/Initializer/zeros:0
Ь
main/qr2/dense_2/bias/Adam_1:0#main/qr2/dense_2/bias/Adam_1/Assign#main/qr2/dense_2/bias/Adam_1/read:020main/qr2/dense_2/bias/Adam_1/Initializer/zeros:0
Р
main/qc/dense/kernel/Adam:0 main/qc/dense/kernel/Adam/Assign main/qc/dense/kernel/Adam/read:02-main/qc/dense/kernel/Adam/Initializer/zeros:0
Ш
main/qc/dense/kernel/Adam_1:0"main/qc/dense/kernel/Adam_1/Assign"main/qc/dense/kernel/Adam_1/read:02/main/qc/dense/kernel/Adam_1/Initializer/zeros:0
И
main/qc/dense/bias/Adam:0main/qc/dense/bias/Adam/Assignmain/qc/dense/bias/Adam/read:02+main/qc/dense/bias/Adam/Initializer/zeros:0
Р
main/qc/dense/bias/Adam_1:0 main/qc/dense/bias/Adam_1/Assign main/qc/dense/bias/Adam_1/read:02-main/qc/dense/bias/Adam_1/Initializer/zeros:0
Ш
main/qc/dense_1/kernel/Adam:0"main/qc/dense_1/kernel/Adam/Assign"main/qc/dense_1/kernel/Adam/read:02/main/qc/dense_1/kernel/Adam/Initializer/zeros:0
†
main/qc/dense_1/kernel/Adam_1:0$main/qc/dense_1/kernel/Adam_1/Assign$main/qc/dense_1/kernel/Adam_1/read:021main/qc/dense_1/kernel/Adam_1/Initializer/zeros:0
Р
main/qc/dense_1/bias/Adam:0 main/qc/dense_1/bias/Adam/Assign main/qc/dense_1/bias/Adam/read:02-main/qc/dense_1/bias/Adam/Initializer/zeros:0
Ш
main/qc/dense_1/bias/Adam_1:0"main/qc/dense_1/bias/Adam_1/Assign"main/qc/dense_1/bias/Adam_1/read:02/main/qc/dense_1/bias/Adam_1/Initializer/zeros:0
Ш
main/qc/dense_2/kernel/Adam:0"main/qc/dense_2/kernel/Adam/Assign"main/qc/dense_2/kernel/Adam/read:02/main/qc/dense_2/kernel/Adam/Initializer/zeros:0
†
main/qc/dense_2/kernel/Adam_1:0$main/qc/dense_2/kernel/Adam_1/Assign$main/qc/dense_2/kernel/Adam_1/read:021main/qc/dense_2/kernel/Adam_1/Initializer/zeros:0
Р
main/qc/dense_2/bias/Adam:0 main/qc/dense_2/bias/Adam/Assign main/qc/dense_2/bias/Adam/read:02-main/qc/dense_2/bias/Adam/Initializer/zeros:0
Ш
main/qc/dense_2/bias/Adam_1:0"main/qc/dense_2/bias/Adam_1/Assign"main/qc/dense_2/bias/Adam_1/read:02/main/qc/dense_2/bias/Adam_1/Initializer/zeros:0
\
beta1_power_2:0beta1_power_2/Assignbeta1_power_2/read:02beta1_power_2/initial_value:0
\
beta2_power_2:0beta2_power_2/Assignbeta2_power_2/read:02beta2_power_2/initial_value:0
Д
entreg/soft_alpha/Adam:0entreg/soft_alpha/Adam/Assignentreg/soft_alpha/Adam/read:02*entreg/soft_alpha/Adam/Initializer/zeros:0
М
entreg/soft_alpha/Adam_1:0entreg/soft_alpha/Adam_1/Assignentreg/soft_alpha/Adam_1/read:02,entreg/soft_alpha/Adam_1/Initializer/zeros:0
\
beta1_power_3:0beta1_power_3/Assignbeta1_power_3/read:02beta1_power_3/initial_value:0
\
beta2_power_3:0beta2_power_3/Assignbeta2_power_3/read:02beta2_power_3/initial_value:0
Д
costpen/soft_beta/Adam:0costpen/soft_beta/Adam/Assigncostpen/soft_beta/Adam/read:02*costpen/soft_beta/Adam/Initializer/zeros:0
М
costpen/soft_beta/Adam_1:0costpen/soft_beta/Adam_1/Assigncostpen/soft_beta/Adam_1/read:02,costpen/soft_beta/Adam_1/Initializer/zeros:0"У2
trainable_variablesы1ш1
З
main/pi/dense/kernel:0main/pi/dense/kernel/Assignmain/pi/dense/kernel/read:021main/pi/dense/kernel/Initializer/random_uniform:08
v
main/pi/dense/bias:0main/pi/dense/bias/Assignmain/pi/dense/bias/read:02&main/pi/dense/bias/Initializer/zeros:08
П
main/pi/dense_1/kernel:0main/pi/dense_1/kernel/Assignmain/pi/dense_1/kernel/read:023main/pi/dense_1/kernel/Initializer/random_uniform:08
~
main/pi/dense_1/bias:0main/pi/dense_1/bias/Assignmain/pi/dense_1/bias/read:02(main/pi/dense_1/bias/Initializer/zeros:08
П
main/pi/dense_2/kernel:0main/pi/dense_2/kernel/Assignmain/pi/dense_2/kernel/read:023main/pi/dense_2/kernel/Initializer/random_uniform:08
~
main/pi/dense_2/bias:0main/pi/dense_2/bias/Assignmain/pi/dense_2/bias/read:02(main/pi/dense_2/bias/Initializer/zeros:08
П
main/pi/dense_3/kernel:0main/pi/dense_3/kernel/Assignmain/pi/dense_3/kernel/read:023main/pi/dense_3/kernel/Initializer/random_uniform:08
~
main/pi/dense_3/bias:0main/pi/dense_3/bias/Assignmain/pi/dense_3/bias/read:02(main/pi/dense_3/bias/Initializer/zeros:08
Л
main/qr1/dense/kernel:0main/qr1/dense/kernel/Assignmain/qr1/dense/kernel/read:022main/qr1/dense/kernel/Initializer/random_uniform:08
z
main/qr1/dense/bias:0main/qr1/dense/bias/Assignmain/qr1/dense/bias/read:02'main/qr1/dense/bias/Initializer/zeros:08
У
main/qr1/dense_1/kernel:0main/qr1/dense_1/kernel/Assignmain/qr1/dense_1/kernel/read:024main/qr1/dense_1/kernel/Initializer/random_uniform:08
В
main/qr1/dense_1/bias:0main/qr1/dense_1/bias/Assignmain/qr1/dense_1/bias/read:02)main/qr1/dense_1/bias/Initializer/zeros:08
У
main/qr1/dense_2/kernel:0main/qr1/dense_2/kernel/Assignmain/qr1/dense_2/kernel/read:024main/qr1/dense_2/kernel/Initializer/random_uniform:08
В
main/qr1/dense_2/bias:0main/qr1/dense_2/bias/Assignmain/qr1/dense_2/bias/read:02)main/qr1/dense_2/bias/Initializer/zeros:08
Л
main/qr2/dense/kernel:0main/qr2/dense/kernel/Assignmain/qr2/dense/kernel/read:022main/qr2/dense/kernel/Initializer/random_uniform:08
z
main/qr2/dense/bias:0main/qr2/dense/bias/Assignmain/qr2/dense/bias/read:02'main/qr2/dense/bias/Initializer/zeros:08
У
main/qr2/dense_1/kernel:0main/qr2/dense_1/kernel/Assignmain/qr2/dense_1/kernel/read:024main/qr2/dense_1/kernel/Initializer/random_uniform:08
В
main/qr2/dense_1/bias:0main/qr2/dense_1/bias/Assignmain/qr2/dense_1/bias/read:02)main/qr2/dense_1/bias/Initializer/zeros:08
У
main/qr2/dense_2/kernel:0main/qr2/dense_2/kernel/Assignmain/qr2/dense_2/kernel/read:024main/qr2/dense_2/kernel/Initializer/random_uniform:08
В
main/qr2/dense_2/bias:0main/qr2/dense_2/bias/Assignmain/qr2/dense_2/bias/read:02)main/qr2/dense_2/bias/Initializer/zeros:08
З
main/qc/dense/kernel:0main/qc/dense/kernel/Assignmain/qc/dense/kernel/read:021main/qc/dense/kernel/Initializer/random_uniform:08
v
main/qc/dense/bias:0main/qc/dense/bias/Assignmain/qc/dense/bias/read:02&main/qc/dense/bias/Initializer/zeros:08
П
main/qc/dense_1/kernel:0main/qc/dense_1/kernel/Assignmain/qc/dense_1/kernel/read:023main/qc/dense_1/kernel/Initializer/random_uniform:08
~
main/qc/dense_1/bias:0main/qc/dense_1/bias/Assignmain/qc/dense_1/bias/read:02(main/qc/dense_1/bias/Initializer/zeros:08
П
main/qc/dense_2/kernel:0main/qc/dense_2/kernel/Assignmain/qc/dense_2/kernel/read:023main/qc/dense_2/kernel/Initializer/random_uniform:08
~
main/qc/dense_2/bias:0main/qc/dense_2/bias/Assignmain/qc/dense_2/bias/read:02(main/qc/dense_2/bias/Initializer/zeros:08
У
target/qr1/dense/kernel:0target/qr1/dense/kernel/Assigntarget/qr1/dense/kernel/read:024target/qr1/dense/kernel/Initializer/random_uniform:08
В
target/qr1/dense/bias:0target/qr1/dense/bias/Assigntarget/qr1/dense/bias/read:02)target/qr1/dense/bias/Initializer/zeros:08
Ы
target/qr1/dense_1/kernel:0 target/qr1/dense_1/kernel/Assign target/qr1/dense_1/kernel/read:026target/qr1/dense_1/kernel/Initializer/random_uniform:08
К
target/qr1/dense_1/bias:0target/qr1/dense_1/bias/Assigntarget/qr1/dense_1/bias/read:02+target/qr1/dense_1/bias/Initializer/zeros:08
Ы
target/qr1/dense_2/kernel:0 target/qr1/dense_2/kernel/Assign target/qr1/dense_2/kernel/read:026target/qr1/dense_2/kernel/Initializer/random_uniform:08
К
target/qr1/dense_2/bias:0target/qr1/dense_2/bias/Assigntarget/qr1/dense_2/bias/read:02+target/qr1/dense_2/bias/Initializer/zeros:08
У
target/qr2/dense/kernel:0target/qr2/dense/kernel/Assigntarget/qr2/dense/kernel/read:024target/qr2/dense/kernel/Initializer/random_uniform:08
В
target/qr2/dense/bias:0target/qr2/dense/bias/Assigntarget/qr2/dense/bias/read:02)target/qr2/dense/bias/Initializer/zeros:08
Ы
target/qr2/dense_1/kernel:0 target/qr2/dense_1/kernel/Assign target/qr2/dense_1/kernel/read:026target/qr2/dense_1/kernel/Initializer/random_uniform:08
К
target/qr2/dense_1/bias:0target/qr2/dense_1/bias/Assigntarget/qr2/dense_1/bias/read:02+target/qr2/dense_1/bias/Initializer/zeros:08
Ы
target/qr2/dense_2/kernel:0 target/qr2/dense_2/kernel/Assign target/qr2/dense_2/kernel/read:026target/qr2/dense_2/kernel/Initializer/random_uniform:08
К
target/qr2/dense_2/bias:0target/qr2/dense_2/bias/Assigntarget/qr2/dense_2/bias/read:02+target/qr2/dense_2/bias/Initializer/zeros:08
П
target/qc/dense/kernel:0target/qc/dense/kernel/Assigntarget/qc/dense/kernel/read:023target/qc/dense/kernel/Initializer/random_uniform:08
~
target/qc/dense/bias:0target/qc/dense/bias/Assigntarget/qc/dense/bias/read:02(target/qc/dense/bias/Initializer/zeros:08
Ч
target/qc/dense_1/kernel:0target/qc/dense_1/kernel/Assigntarget/qc/dense_1/kernel/read:025target/qc/dense_1/kernel/Initializer/random_uniform:08
Ж
target/qc/dense_1/bias:0target/qc/dense_1/bias/Assigntarget/qc/dense_1/bias/read:02*target/qc/dense_1/bias/Initializer/zeros:08
Ч
target/qc/dense_2/kernel:0target/qc/dense_2/kernel/Assigntarget/qc/dense_2/kernel/read:025target/qc/dense_2/kernel/Initializer/random_uniform:08
Ж
target/qc/dense_2/bias:0target/qc/dense_2/bias/Assigntarget/qc/dense_2/bias/read:02*target/qc/dense_2/bias/Initializer/zeros:08
n
entreg/soft_alpha:0entreg/soft_alpha/Assignentreg/soft_alpha/read:02!entreg/soft_alpha/initial_value:08
n
costpen/soft_beta:0costpen/soft_beta/Assigncostpen/soft_beta/read:02!costpen/soft_beta/initial_value:08"/
train_op#
!
train_pi
train_q
Adam
Adam_1*д
serving_default–
+
a&
Placeholder_1:0€€€€€€€€€
)
x$
Placeholder:0€€€€€€€€€<'
mu!

main/mul:0€€€€€€€€€*
qc$
main/qc/Squeeze:0€€€€€€€€€,
qr1%
main/qr1/Squeeze:0€€€€€€€€€)
pi#
main/mul_1:0€€€€€€€€€,
qr2%
main/qr2/Squeeze:0€€€€€€€€€tensorflow/serving/predict